// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Nov  1 14:13:56 2025
// Host        : fpga-02 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,lz4CompressEngineRun,{}" *) (* CORE_GENERATION_INFO = "bd_0_hls_inst_0,lz4CompressEngineRun,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=lz4CompressEngineRun,x_ipVersion=1.0,x_ipCoreRevision=2114329212,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "lz4CompressEngineRun,Vivado 2024.2" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(max_lit_limit_ap_vld, inStream_dout, 
  inStream_empty_n, inStream_read, lz4Out_din, lz4Out_full_n, lz4Out_write, lz4Out_eos_din, 
  lz4Out_eos_full_n, lz4Out_eos_write, lz4OutSize_din, lz4OutSize_full_n, lz4OutSize_write, 
  max_lit_limit, input_size, core_idx, ap_clk, ap_rst, ap_done, ap_idle, ap_ready, ap_start)
/* synthesis syn_black_box black_box_pad_pin="max_lit_limit_ap_vld,inStream_dout[7:0],inStream_empty_n,inStream_read,lz4Out_din[7:0],lz4Out_full_n,lz4Out_write,lz4Out_eos_din,lz4Out_eos_full_n,lz4Out_eos_write,lz4OutSize_din[31:0],lz4OutSize_full_n,lz4OutSize_write,max_lit_limit[31:0],input_size[31:0],core_idx[31:0],ap_rst,ap_done,ap_idle,ap_ready,ap_start" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output max_lit_limit_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [7:0]inStream_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream EMPTY_N" *) input inStream_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_EN" *) output inStream_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output [7:0]lz4Out_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out FULL_N" *) input lz4Out_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_EN" *) output lz4Out_write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output lz4Out_eos_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos FULL_N" *) input lz4Out_eos_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_EN" *) output lz4Out_eos_write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output [31:0]lz4OutSize_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize FULL_N" *) input lz4OutSize_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_EN" *) output lz4OutSize_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 max_lit_limit DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME max_lit_limit, LAYERED_METADATA undef" *) output [31:0]max_lit_limit;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 input_size DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_size, LAYERED_METADATA undef" *) input [31:0]input_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 core_idx DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_idx, LAYERED_METADATA undef" *) input [31:0]core_idx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "slave" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
endmodule
