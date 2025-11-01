// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_rst,
  core_idx,
  input_size,
  max_lit_limit,
  max_lit_limit_ap_vld,
  ap_ctrl_done,
  ap_ctrl_idle,
  ap_ctrl_ready,
  ap_ctrl_start,
  inStream_rd_data,
  inStream_empty_n,
  inStream_rd_en,
  lz4Out_wr_data,
  lz4Out_full_n,
  lz4Out_wr_en,
  lz4OutSize_wr_data,
  lz4OutSize_full_n,
  lz4OutSize_wr_en,
  lz4Out_eos_wr_data,
  lz4Out_eos_full_n,
  lz4Out_eos_wr_en
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_RESET ap_rst, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CORE_IDX DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.CORE_IDX" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CORE_IDX, LAYERED_METADATA undef" *)
  input [31:0]core_idx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INPUT_SIZE DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.INPUT_SIZE" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INPUT_SIZE, LAYERED_METADATA undef" *)
  input [31:0]input_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAX_LIT_LIMIT DATA" *)
  (* X_INTERFACE_MODE = "master DATA.MAX_LIT_LIMIT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAX_LIT_LIMIT, LAYERED_METADATA undef" *)
  output [31:0]max_lit_limit;
  (* X_INTERFACE_IGNORE = "true" *)
  output max_lit_limit_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
  (* X_INTERFACE_MODE = "slave ap_ctrl" *)
  output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
  output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
  output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
  input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_DATA" *)
  (* X_INTERFACE_MODE = "master inStream" *)
  input [7:0]inStream_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream EMPTY_N" *)
  input inStream_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_EN" *)
  output inStream_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_DATA" *)
  (* X_INTERFACE_MODE = "master lz4Out" *)
  output [7:0]lz4Out_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out FULL_N" *)
  input lz4Out_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_EN" *)
  output lz4Out_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_DATA" *)
  (* X_INTERFACE_MODE = "master lz4OutSize" *)
  output [31:0]lz4OutSize_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize FULL_N" *)
  input lz4OutSize_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_EN" *)
  output lz4OutSize_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_DATA" *)
  (* X_INTERFACE_MODE = "master lz4Out_eos" *)
  output lz4Out_eos_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos FULL_N" *)
  input lz4Out_eos_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_EN" *)
  output lz4Out_eos_wr_en;

  // stub module has no contents

endmodule
