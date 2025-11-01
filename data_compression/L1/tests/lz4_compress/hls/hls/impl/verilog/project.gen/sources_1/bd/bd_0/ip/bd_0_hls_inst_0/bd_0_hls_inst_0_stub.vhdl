-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Nov  1 14:13:57 2025
-- Host        : fpga-02 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /root/FPGA/data_compression/L1/tests/lz4_compress/hls/hls/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    max_lit_limit_ap_vld : out STD_LOGIC;
    inStream_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_empty_n : in STD_LOGIC;
    inStream_read : out STD_LOGIC;
    lz4Out_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lz4Out_full_n : in STD_LOGIC;
    lz4Out_write : out STD_LOGIC;
    lz4Out_eos_din : out STD_LOGIC;
    lz4Out_eos_full_n : in STD_LOGIC;
    lz4Out_eos_write : out STD_LOGIC;
    lz4OutSize_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lz4OutSize_full_n : in STD_LOGIC;
    lz4OutSize_write : out STD_LOGIC;
    max_lit_limit : out STD_LOGIC_VECTOR ( 31 downto 0 );
    input_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    core_idx : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,lz4CompressEngineRun,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,lz4CompressEngineRun,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=lz4CompressEngineRun,x_ipVersion=1.0,x_ipCoreRevision=2114329212,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "max_lit_limit_ap_vld,inStream_dout[7:0],inStream_empty_n,inStream_read,lz4Out_din[7:0],lz4Out_full_n,lz4Out_write,lz4Out_eos_din,lz4Out_eos_full_n,lz4Out_eos_write,lz4OutSize_din[31:0],lz4OutSize_full_n,lz4OutSize_write,max_lit_limit[31:0],input_size[31:0],core_idx[31:0],ap_clk,ap_rst,ap_done,ap_idle,ap_ready,ap_start";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inStream_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_DATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of inStream_dout : signal is "master";
  attribute X_INTERFACE_INFO of inStream_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 inStream EMPTY_N";
  attribute X_INTERFACE_INFO of inStream_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 inStream RD_EN";
  attribute X_INTERFACE_INFO of lz4Out_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_DATA";
  attribute X_INTERFACE_MODE of lz4Out_din : signal is "master";
  attribute X_INTERFACE_INFO of lz4Out_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out FULL_N";
  attribute X_INTERFACE_INFO of lz4Out_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out WR_EN";
  attribute X_INTERFACE_INFO of lz4Out_eos_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_DATA";
  attribute X_INTERFACE_MODE of lz4Out_eos_din : signal is "master";
  attribute X_INTERFACE_INFO of lz4Out_eos_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos FULL_N";
  attribute X_INTERFACE_INFO of lz4Out_eos_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4Out_eos WR_EN";
  attribute X_INTERFACE_INFO of lz4OutSize_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_DATA";
  attribute X_INTERFACE_MODE of lz4OutSize_din : signal is "master";
  attribute X_INTERFACE_INFO of lz4OutSize_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize FULL_N";
  attribute X_INTERFACE_INFO of lz4OutSize_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 lz4OutSize WR_EN";
  attribute X_INTERFACE_INFO of max_lit_limit : signal is "xilinx.com:signal:data:1.0 max_lit_limit DATA";
  attribute X_INTERFACE_MODE of max_lit_limit : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of max_lit_limit : signal is "XIL_INTERFACENAME max_lit_limit, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of input_size : signal is "xilinx.com:signal:data:1.0 input_size DATA";
  attribute X_INTERFACE_MODE of input_size : signal is "slave";
  attribute X_INTERFACE_PARAMETER of input_size : signal is "XIL_INTERFACENAME input_size, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of core_idx : signal is "xilinx.com:signal:data:1.0 core_idx DATA";
  attribute X_INTERFACE_MODE of core_idx : signal is "slave";
  attribute X_INTERFACE_PARAMETER of core_idx : signal is "XIL_INTERFACENAME core_idx, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 66000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "lz4CompressEngineRun,Vivado 2024.2";
begin
end;
