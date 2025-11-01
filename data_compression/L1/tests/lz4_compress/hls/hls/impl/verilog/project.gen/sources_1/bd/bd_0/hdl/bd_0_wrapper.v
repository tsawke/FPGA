//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Nov  1 14:12:28 2025
//Host        : fpga-02 running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    core_idx,
    inStream_empty_n,
    inStream_rd_data,
    inStream_rd_en,
    input_size,
    lz4OutSize_full_n,
    lz4OutSize_wr_data,
    lz4OutSize_wr_en,
    lz4Out_eos_full_n,
    lz4Out_eos_wr_data,
    lz4Out_eos_wr_en,
    lz4Out_full_n,
    lz4Out_wr_data,
    lz4Out_wr_en,
    max_lit_limit,
    max_lit_limit_ap_vld);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input [31:0]core_idx;
  input inStream_empty_n;
  input [7:0]inStream_rd_data;
  output inStream_rd_en;
  input [31:0]input_size;
  input lz4OutSize_full_n;
  output [31:0]lz4OutSize_wr_data;
  output lz4OutSize_wr_en;
  input lz4Out_eos_full_n;
  output lz4Out_eos_wr_data;
  output lz4Out_eos_wr_en;
  input lz4Out_full_n;
  output [7:0]lz4Out_wr_data;
  output lz4Out_wr_en;
  output [31:0]max_lit_limit;
  output max_lit_limit_ap_vld;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [31:0]core_idx;
  wire inStream_empty_n;
  wire [7:0]inStream_rd_data;
  wire inStream_rd_en;
  wire [31:0]input_size;
  wire lz4OutSize_full_n;
  wire [31:0]lz4OutSize_wr_data;
  wire lz4OutSize_wr_en;
  wire lz4Out_eos_full_n;
  wire lz4Out_eos_wr_data;
  wire lz4Out_eos_wr_en;
  wire lz4Out_full_n;
  wire [7:0]lz4Out_wr_data;
  wire lz4Out_wr_en;
  wire [31:0]max_lit_limit;
  wire max_lit_limit_ap_vld;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .core_idx(core_idx),
        .inStream_empty_n(inStream_empty_n),
        .inStream_rd_data(inStream_rd_data),
        .inStream_rd_en(inStream_rd_en),
        .input_size(input_size),
        .lz4OutSize_full_n(lz4OutSize_full_n),
        .lz4OutSize_wr_data(lz4OutSize_wr_data),
        .lz4OutSize_wr_en(lz4OutSize_wr_en),
        .lz4Out_eos_full_n(lz4Out_eos_full_n),
        .lz4Out_eos_wr_data(lz4Out_eos_wr_data),
        .lz4Out_eos_wr_en(lz4Out_eos_wr_en),
        .lz4Out_full_n(lz4Out_full_n),
        .lz4Out_wr_data(lz4Out_wr_data),
        .lz4Out_wr_en(lz4Out_wr_en),
        .max_lit_limit(max_lit_limit),
        .max_lit_limit_ap_vld(max_lit_limit_ap_vld));
endmodule
