/*
 * (c) Copyright 2019-2022 Xilinx, Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#ifndef _XFCOMPRESSION_LZ_COMPRESS_HPP_
#define _XFCOMPRESSION_LZ_COMPRESS_HPP_

/**
 * @file lz_compress.hpp
 * @brief Header for modules used in LZ4 and snappy compression kernels.
 *
 * This file is part of Vitis Data Compression Library.
 */

#include "compress_utils.hpp"
#include "hls_stream.h"

// === Optimization switches ===
#ifndef ENABLE_LAZY_DICT_RESET
#define ENABLE_LAZY_DICT_RESET 1
#endif

#ifndef ENABLE_CANDIDATE_PARALLEL
#define ENABLE_CANDIDATE_PARALLEL 1
#endif

#ifndef ENABLE_LZ_FILTER
#define ENABLE_LZ_FILTER 0
#endif

#include <ap_int.h>
#include <assert.h>
#include <stdint.h>

namespace xf {
namespace compression {

/**
 * Stream-in-stream-out LZ front-end (scalar):
 *   Reads 8-bit literals, outputs 32-bit {ch, match_len, match_offset}.
 *
 * @tparam MATCH_LEN             Sliding window length used for match compare (bytes)
 * @tparam MIN_MATCH             Minimum match length to be considered
 * @tparam LZ_MAX_OFFSET_LIMIT   Maximum allowed backward distance
 * @tparam MATCH_LEVEL           Number of candidates tracked in dictionary
 * @tparam MIN_OFFSET            Minimum allowed offset
 * @tparam LZ_DICT_SIZE          Hash dictionary size (entries)
 * @tparam LEFT_BYTES            Tail bytes forwarded without match attempt
 */
template <int MATCH_LEN,
          int MIN_MATCH,
          int LZ_MAX_OFFSET_LIMIT,
          int MATCH_LEVEL = 6,
          int MIN_OFFSET = 1,
          int LZ_DICT_SIZE = (1 << 12),
          int LEFT_BYTES = 64>
void lzCompress(hls::stream<ap_uint<8> >& inStream, hls::stream<ap_uint<32> >& outStream, uint32_t input_size) {
    const int c_indxBitCnts = 24; // index bits kept per candidate
    const int c_dictEleWidth = (MATCH_LEN * 8 + c_indxBitCnts);
    typedef ap_uint<MATCH_LEVEL * c_dictEleWidth> uintDictV_t;
    typedef ap_uint<c_dictEleWidth> uintDict_t;

    if (input_size == 0) return;

    // Dictionary banks (2-bank) + lazy tag epoch
    uintDictV_t dict[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict type = RAM_T2P impl = BRAM
#pragma HLS ARRAY_PARTITION variable = dict block factor = 2 dim = 1

    ap_uint<8> dict_tag[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict_tag type = RAM_T2P impl = BRAM
#pragma HLS ARRAY_PARTITION variable = dict_tag block factor = 2 dim = 1

    ap_uint<8> epoch = 1;

    // Reset pattern for dictionary candidates (index fields = -1)
    uintDictV_t resetValue = 0;
    for (int i = 0; i < MATCH_LEVEL; i++) {
#pragma HLS UNROLL
        resetValue.range((i + 1) * c_dictEleWidth - 1, i * c_dictEleWidth + MATCH_LEN * 8) =
            (ap_uint<c_indxBitCnts>) - 1;
    }

dict_flush:
#if ENABLE_LAZY_DICT_RESET
    // Lazy reset: bump epoch to invalidate all slots logically.
    epoch++;
    if (epoch == 0) {
        // Very rare wraparound: perform a real clear (2 writes/cycle thanks to banking).
        for (int i = 0; i < (LZ_DICT_SIZE / 2); i++) {
#pragma HLS PIPELINE II = 1
            dict[i] = resetValue;
            dict[i + (LZ_DICT_SIZE / 2)] = resetValue;
            dict_tag[i] = 0;
            dict_tag[i + (LZ_DICT_SIZE / 2)] = 0;
        }
        epoch = 1;
    }
#else
    // Full clear every time (2 writes/cycle thanks to banking)
    for (int i = 0; i < (LZ_DICT_SIZE / 2); i++) {
#pragma HLS PIPELINE II = 1
        dict[i] = resetValue;
        dict[i + (LZ_DICT_SIZE / 2)] = resetValue;
        dict_tag[i] = 0;
        dict_tag[i + (LZ_DICT_SIZE / 2)] = 0;
    }
#endif

    // Present window (fully partitioned)
    uint8_t present_window[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window complete

    // Prime the present window (MATCH_LEN-1 bytes)
    for (uint8_t i = 1; i < MATCH_LEN; i++) {
#pragma HLS PIPELINE off
        present_window[i] = inStream.read();
    }

lz_main:
    for (uint32_t i = MATCH_LEN - 1; i < input_size - LEFT_BYTES; i++) {
#pragma HLS PIPELINE II = 1
#pragma HLS dependence variable = dict inter false

        uint32_t currIdx = i - MATCH_LEN + 1;

        // shift present window and load next input byte
        for (int m = 0; m < MATCH_LEN - 1; m++) {
#pragma HLS UNROLL
            present_window[m] = present_window[m + 1];
        }
        present_window[MATCH_LEN - 1] = inStream.read();

        // Hash (simple rolling, keyed by first 3/4 bytes)
        uint32_t hash = 0;
        if (MIN_MATCH == 3) {
            hash = (present_window[0] << 4) ^ (present_window[1] << 3) ^ (present_window[2] << 2) ^
                   (present_window[0] << 1) ^ (present_window[1]);
        } else {
            hash = (present_window[0] << 4) ^ (present_window[1] << 3) ^ (present_window[2] << 2) ^
                   (present_window[3]);
        }
        hash &= (LZ_DICT_SIZE - 1); // ensure in-range

        // Dictionary read
        bool slot_valid = (dict_tag[hash] == epoch);
        uintDictV_t dictReadValue = slot_valid ? dict[hash] : (uintDictV_t)0;

        // Prepare write-back value (shift older candidates, insert newest at LSB chunk)
        uintDictV_t dictWriteValue = dictReadValue << c_dictEleWidth;
        for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
            dictWriteValue.range((m + 1) * 8 - 1, m * 8) = present_window[m];
        }
        dictWriteValue.range(c_dictEleWidth - 1, MATCH_LEN * 8) = currIdx;

        // Update dictionary slot + tag
        dict[hash] = dictWriteValue;
        dict_tag[hash] = epoch;

        // Match search
        uint8_t match_length = 0;
        uint32_t match_offset = 0;

        if (slot_valid) {
#if ENABLE_CANDIDATE_PARALLEL
            uint8_t best_len = 0;
            uint32_t best_offset = 0;
            for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
                uint8_t len = 0;
                bool done = 0;

                uintDict_t comp = dictReadValue.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
                uint32_t compIdx = comp.range(c_dictEleWidth - 1, MATCH_LEN * 8);

                for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                    if (!done && present_window[m] == comp.range((m + 1) * 8 - 1, m * 8)) {
                        len++;
                    } else {
                        done = 1;
                    }
                }

                bool ok = (len >= MIN_MATCH) && (currIdx > compIdx) &&
                          ((currIdx - compIdx) < LZ_MAX_OFFSET_LIMIT) &&
                          ((currIdx - compIdx - 1) >= MIN_OFFSET);

                if (!ok) {
                    len = 0;
                } else {
                    // LZ4 corner: disallow len==3 with offset>4096
                    if ((len == 3) && ((currIdx - compIdx - 1) > 4096)) {
                        len = 0;
                    }
                }

                if (len > best_len) {
                    best_len = len;
                    best_offset = currIdx - compIdx - 1;
                }
            }
            match_length = best_len;
            match_offset = best_offset;
#else
            for (int l = 0; l < MATCH_LEVEL; l++) {
                uint8_t len = 0;
                bool done = 0;

                uintDict_t comp = dictReadValue.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
                uint32_t compIdx = comp.range(c_dictEleWidth - 1, MATCH_LEN * 8);

                for (int m = 0; m < MATCH_LEN; m++) {
                    if (!done && present_window[m] == comp.range((m + 1) * 8 - 1, m * 8)) {
                        len++;
                    } else {
                        done = 1;
                    }
                }

                if ((len >= MIN_MATCH) && (currIdx > compIdx) && ((currIdx - compIdx) < LZ_MAX_OFFSET_LIMIT) &&
                    ((currIdx - compIdx - 1) >= MIN_OFFSET)) {
                    if ((len == 3) && ((currIdx - compIdx - 1) > 4096)) {
                        len = 0;
                    }
                } else {
                    len = 0;
                }

                if (len > match_length) {
                    match_length = len;
                    match_offset = currIdx - compIdx - 1;
                }
            }
#endif
        }

        // Pack output {literal, match_length, match_offset}
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = present_window[0];
        outValue.range(15, 8) = match_length;
        outValue.range(31, 16) = match_offset;
        outStream << outValue;
    }

    // Drain the remaining present_window bytes (without match)
lz_tail_window:
    for (int m = 1; m < MATCH_LEN; m++) {
#pragma HLS PIPELINE
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = present_window[m];
        outStream << outValue;
    }

    // Forward LEFT_BYTES remaining from input
lz_tail_left:
    for (int l = 0; l < LEFT_BYTES; l++) {
#pragma HLS PIPELINE
        ap_uint<32> outValue = 0;
        outValue.range(7, 0) = inStream.read();
        outStream << outValue;
    }
}

/**
 * Vector-stream LZ front-end (block-by-block with circular buffer).
 *
 * @tparam MAX_INPUT_SIZE        Max bytes per block (usually 64KB)
 * @tparam SIZE_DT               Size datatype
 * @tparam MATCH_LEN             Sliding window length used for match compare (bytes)
 * @tparam MIN_MATCH             Minimum match length to be considered
 * @tparam LZ_MAX_OFFSET_LIMIT   Maximum allowed backward distance
 * @tparam CORE_ID               Core index (for multi-core)
 * @tparam MATCH_LEVEL           Number of candidates tracked in dictionary
 * @tparam MIN_OFFSET            Minimum allowed offset
 * @tparam LZ_DICT_SIZE          Hash dictionary size (entries)
 * @tparam LEFT_BYTES            Tail bytes forwarded without match attempt
 */
template <int MAX_INPUT_SIZE = 64 * 1024,
          class SIZE_DT = uint32_t,
          int MATCH_LEN,
          int MIN_MATCH,
          int LZ_MAX_OFFSET_LIMIT,
          int CORE_ID = 0,
          int MATCH_LEVEL = 6,
          int MIN_OFFSET = 1,
          int LZ_DICT_SIZE = (1 << 12),
          int LEFT_BYTES = 64>
void lzCompress(hls::stream<IntVectorStream_dt<8, 1> >& inStream,
                hls::stream<IntVectorStream_dt<32, 1> >& outStream) {
    const uint16_t c_indxBitCnts = 24;
    const uint16_t c_fifo_depth = LEFT_BYTES + 2;
    const int c_dictEleWidth = (MATCH_LEN * 8 + c_indxBitCnts);
    typedef ap_uint<MATCH_LEVEL * c_dictEleWidth> uintDictV_t;
    typedef ap_uint<c_dictEleWidth> uintDict_t;

#ifndef AVOID_STATIC_MODE
    static bool resetDictFlag = true;
    static uint32_t relativeNumBlocks = 0;
#else
    bool resetDictFlag = true;
    uint32_t relativeNumBlocks = 0;
#endif

    // Dictionary (2-bank) + lazy tag epoch
    uintDictV_t dict[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict type = RAM_T2P impl = BRAM
#pragma HLS ARRAY_PARTITION variable = dict block factor = 2 dim = 1

    ap_uint<8> dict_tag[LZ_DICT_SIZE];
#pragma HLS BIND_STORAGE variable = dict_tag type = RAM_T2P impl = BRAM
#pragma HLS ARRAY_PARTITION variable = dict_tag block factor = 2 dim = 1

    ap_uint<8> epoch = 1;

    // Local buffers
    uint8_t present_window[MATCH_LEN];
#pragma HLS ARRAY_PARTITION variable = present_window complete

    hls::stream<uint8_t> lclBufStream("lclBufStream");
#pragma HLS STREAM variable = lclBufStream depth = c_fifo_depth
#pragma HLS BIND_STORAGE variable = lclBufStream type = fifo impl = srl

    // IO registers
    IntVectorStream_dt<8, 1> inVal;
    IntVectorStream_dt<32, 1> outValue;

    // Block loop
    while (true) {
        uint32_t iIdx = 0;

        // Reset dictionary per policy
        if (resetDictFlag) {
            uintDictV_t resetValue = 0;
            for (int i = 0; i < MATCH_LEVEL; i++) {
#pragma HLS UNROLL
                resetValue.range((i + 1) * c_dictEleWidth - 1, i * c_dictEleWidth + MATCH_LEN * 8) =
                    (ap_uint<c_indxBitCnts>) - 1;
            }
        dict_flush_vec:
#if ENABLE_LAZY_DICT_RESET
            epoch++;
            if (epoch == 0) {
                for (int i = 0; i < (LZ_DICT_SIZE / 2); i++) {
#pragma HLS PIPELINE II = 1
                    dict[i] = resetValue;
                    dict[i + (LZ_DICT_SIZE / 2)] = resetValue;
                    dict_tag[i] = 0;
                    dict_tag[i + (LZ_DICT_SIZE / 2)] = 0;
                }
                epoch = 1;
            }
#else
            for (int i = 0; i < (LZ_DICT_SIZE / 2); i++) {
#pragma HLS PIPELINE II = 1
                dict[i] = resetValue;
                dict[i + (LZ_DICT_SIZE / 2)] = resetValue;
                dict_tag[i] = 0;
                dict_tag[i + (LZ_DICT_SIZE / 2)] = 0;
            }
#endif
            resetDictFlag = false;
            relativeNumBlocks = 0;
        } else {
            relativeNumBlocks++;
        }

        // Read first token of the block
        auto nextVal = inStream.read();
        if (nextVal.strobe == 0) {
            // End of overall stream
            outValue.strobe = 0;
            outStream << outValue;
            break;
        }

        // Fill present_window
        while (iIdx < MATCH_LEN - 1) {
#pragma HLS PIPELINE II = 1
            inVal = nextVal;
            nextVal = inStream.read();
            present_window[++iIdx] = inVal.data[0];
        }

        // Prefill circular buffer with LEFT_BYTES
        for (uint16_t i = 0; i < LEFT_BYTES; ++i) {
#pragma HLS PIPELINE II = 1
            inVal = nextVal;
            nextVal = inStream.read();
            lclBufStream << inVal.data[0];
        }

        // Process block
        outValue.strobe = 1;

    lz_vec_main:
        for (; nextVal.strobe != 0; ++iIdx) {
#pragma HLS PIPELINE II = 1
#pragma HLS dependence variable = dict inter false
            uint32_t currIdx = (iIdx + (relativeNumBlocks * MAX_INPUT_SIZE)) - MATCH_LEN + 1;

            // circular buffer push/pop
            auto inByte = lclBufStream.read();
            lclBufStream << nextVal.data[0];
            nextVal = inStream.read();

            // shift present window + insert latest
            for (uint8_t m = 0; m < MATCH_LEN - 1; m++) {
#pragma HLS UNROLL
                present_window[m] = present_window[m + 1];
            }
            present_window[MATCH_LEN - 1] = inByte;

            // hash
            uint32_t hash = 0;
            if (MIN_MATCH == 3) {
                hash = (present_window[0] << 4) ^ (present_window[1] << 3) ^ (present_window[2] << 2) ^
                       (present_window[0] << 1) ^ (present_window[1]);
            } else {
                hash = (present_window[0] << 4) ^ (present_window[1] << 3) ^ (present_window[2] << 2) ^
                       (present_window[3]);
            }
            hash &= (LZ_DICT_SIZE - 1); // ensure in-range

            // dict read/update
            bool slot_valid = (dict_tag[hash] == epoch);
            uintDictV_t dictReadValue = slot_valid ? dict[hash] : (uintDictV_t)0;

            uintDictV_t dictWriteValue = dictReadValue << c_dictEleWidth;
            for (int m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                dictWriteValue.range((m + 1) * 8 - 1, m * 8) = present_window[m];
            }
            dictWriteValue.range(c_dictEleWidth - 1, MATCH_LEN * 8) = currIdx;

            dict[hash] = dictWriteValue;
            dict_tag[hash] = epoch;

            // match search
            uint8_t match_length = 0;
            uint32_t match_offset = 0;

            if (slot_valid) {
#if ENABLE_CANDIDATE_PARALLEL
                uint8_t best_len = 0;
                uint32_t best_offset = 0;
                for (int l = 0; l < MATCH_LEVEL; l++) {
#pragma HLS UNROLL
                    uint8_t len = 0;
                    bool done = 0;

                    uintDict_t comp = dictReadValue.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
                    uint32_t compIdx = comp.range(c_dictEleWidth - 1, MATCH_LEN * 8);

                    for (uint8_t m = 0; m < MATCH_LEN; m++) {
#pragma HLS UNROLL
                        if (!done && present_window[m] == comp.range((m + 1) * 8 - 1, m * 8)) {
                            len++;
                        } else {
                            done = 1;
                        }
                    }

                    bool ok = (len >= MIN_MATCH) && (currIdx > compIdx) &&
                              ((currIdx - compIdx) < LZ_MAX_OFFSET_LIMIT) &&
                              ((currIdx - compIdx - 1) >= MIN_OFFSET);

                    if (!ok) {
                        len = 0;
                    } else {
                        if ((len == 3) && ((currIdx - compIdx - 1) > 4096)) {
                            len = 0;
                        }
                    }

                    if (len > best_len) {
                        best_len = len;
                        best_offset = currIdx - compIdx - 1;
                    }
                }
                match_length = best_len;
                match_offset = best_offset;
#else
                for (int l = 0; l < MATCH_LEVEL; l++) {
                    uint8_t len = 0;
                    bool done = 0;

                    uintDict_t comp = dictReadValue.range((l + 1) * c_dictEleWidth - 1, l * c_dictEleWidth);
                    uint32_t compIdx = comp.range(c_dictEleWidth - 1, MATCH_LEN * 8);

                    for (uint8_t m = 0; m < MATCH_LEN; m++) {
                        if (!done && present_window[m] == comp.range((m + 1) * 8 - 1, m * 8)) {
                            len++;
                        } else {
                            done = 1;
                        }
                    }

                    if ((len >= MIN_MATCH) && (currIdx > compIdx) && ((currIdx - compIdx) < LZ_MAX_OFFSET_LIMIT) &&
                        ((currIdx - compIdx - 1) >= MIN_OFFSET)) {
                        if ((len == 3) && ((currIdx - compIdx - 1) > 4096)) {
                            len = 0;
                        }
                    } else {
                        len = 0;
                    }

                    if (len > match_length) {
                        match_length = len;
                        match_offset = currIdx - compIdx - 1;
                    }
                }
#endif
            }

            // pack and write out
            outValue.data[0] = 0;
            outValue.data[0].range(7, 0)   = present_window[0];
            outValue.data[0].range(15, 8)  = match_length;
            outValue.data[0].range(31, 16) = match_offset;
            outStream << outValue;
        }

        // drain tail of present_window
        for (int m = 1; m < MATCH_LEN; m++) {
#pragma HLS PIPELINE
            outValue.data[0] = 0;
            outValue.data[0].range(7, 0) = present_window[m];
            outStream << outValue;
        }

        // pass through LEFT_BYTES
        for (int l = 0; l < LEFT_BYTES; l++) {
#pragma HLS PIPELINE
            outValue.data[0] = 0;
            auto b = lclBufStream.read();
            outValue.data[0].range(7, 0) = b;
            outStream << outValue;
        }
    } // while blocks
}

} // namespace compression
} // namespace xf

#endif // _XFCOMPRESSION_LZ_COMPRESS_HPP_
