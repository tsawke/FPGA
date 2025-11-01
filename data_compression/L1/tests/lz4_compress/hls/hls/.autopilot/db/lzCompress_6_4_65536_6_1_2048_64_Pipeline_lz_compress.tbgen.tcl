set moduleName lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 18
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 2048, 64>_Pipeline_lz_compress}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict dict { MEM_WIDTH 432 MEM_SIZE 110592 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ arrayidx55_promoted157_reload int 8 regular  }
	{ arrayidx46_3_promoted155_reload int 8 regular  }
	{ arrayidx65_promoted153_reload int 8 regular  }
	{ arrayidx61_promoted151_reload int 8 regular  }
	{ arrayidx58_promoted149_reload int 8 regular  }
	{ sub34 int 32 regular  }
	{ dict int 432 regular {array 2048 { 0 1 } 1 1 }  }
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
	{ present_window_15_out int 8 regular {pointer 1}  }
	{ present_window_14_out int 8 regular {pointer 1}  }
	{ present_window_13_out int 8 regular {pointer 1}  }
	{ present_window_12_out int 8 regular {pointer 1}  }
	{ present_window_11_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "arrayidx55_promoted157_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx46_3_promoted155_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx65_promoted153_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx61_promoted151_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "arrayidx58_promoted149_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sub34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dict", "interface" : "memory", "bitwidth" : 432, "direction" : "READWRITE"} , 
 	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_15_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_14_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_13_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_12_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream_dout sc_in sc_lv 8 signal 7 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 7 } 
	{ inStream_read sc_out sc_logic 1 signal 7 } 
	{ compressdStream_din sc_out sc_lv 32 signal 8 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 8 } 
	{ compressdStream_write sc_out sc_logic 1 signal 8 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 8 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 8 } 
	{ arrayidx55_promoted157_reload sc_in sc_lv 8 signal 0 } 
	{ arrayidx46_3_promoted155_reload sc_in sc_lv 8 signal 1 } 
	{ arrayidx65_promoted153_reload sc_in sc_lv 8 signal 2 } 
	{ arrayidx61_promoted151_reload sc_in sc_lv 8 signal 3 } 
	{ arrayidx58_promoted149_reload sc_in sc_lv 8 signal 4 } 
	{ sub34 sc_in sc_lv 32 signal 5 } 
	{ dict_address0 sc_out sc_lv 11 signal 6 } 
	{ dict_ce0 sc_out sc_logic 1 signal 6 } 
	{ dict_we0 sc_out sc_logic 1 signal 6 } 
	{ dict_d0 sc_out sc_lv 432 signal 6 } 
	{ dict_address1 sc_out sc_lv 11 signal 6 } 
	{ dict_ce1 sc_out sc_logic 1 signal 6 } 
	{ dict_q1 sc_in sc_lv 432 signal 6 } 
	{ present_window_15_out sc_out sc_lv 8 signal 9 } 
	{ present_window_15_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ present_window_14_out sc_out sc_lv 8 signal 10 } 
	{ present_window_14_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ present_window_13_out sc_out sc_lv 8 signal 11 } 
	{ present_window_13_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ present_window_12_out sc_out sc_lv 8 signal 12 } 
	{ present_window_12_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ present_window_11_out sc_out sc_lv 8 signal 13 } 
	{ present_window_11_out_ap_vld sc_out sc_logic 1 outvld 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "arrayidx55_promoted157_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx55_promoted157_reload", "role": "default" }} , 
 	{ "name": "arrayidx46_3_promoted155_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx46_3_promoted155_reload", "role": "default" }} , 
 	{ "name": "arrayidx65_promoted153_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx65_promoted153_reload", "role": "default" }} , 
 	{ "name": "arrayidx61_promoted151_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx61_promoted151_reload", "role": "default" }} , 
 	{ "name": "arrayidx58_promoted149_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx58_promoted149_reload", "role": "default" }} , 
 	{ "name": "sub34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub34", "role": "default" }} , 
 	{ "name": "dict_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dict", "role": "address0" }} , 
 	{ "name": "dict_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "ce0" }} , 
 	{ "name": "dict_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "we0" }} , 
 	{ "name": "dict_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":432, "type": "signal", "bundle":{"name": "dict", "role": "d0" }} , 
 	{ "name": "dict_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dict", "role": "address1" }} , 
 	{ "name": "dict_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dict", "role": "ce1" }} , 
 	{ "name": "dict_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":432, "type": "signal", "bundle":{"name": "dict", "role": "q1" }} , 
 	{ "name": "present_window_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_15_out", "role": "default" }} , 
 	{ "name": "present_window_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_15_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_14_out", "role": "default" }} , 
 	{ "name": "present_window_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_14_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_13_out", "role": "default" }} , 
 	{ "name": "present_window_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_13_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_12_out", "role": "default" }} , 
 	{ "name": "present_window_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_12_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_11_out", "role": "default" }} , 
 	{ "name": "present_window_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_11_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arrayidx55_promoted157_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx46_3_promoted155_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx65_promoted153_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx61_promoted151_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx58_promoted149_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub34", "Type" : "None", "Direction" : "I"},
			{"Name" : "dict", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "present_window_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_compress", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress {
		arrayidx55_promoted157_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx46_3_promoted155_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx65_promoted153_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx61_promoted151_reload {Type I LastRead 0 FirstWrite -1}
		arrayidx58_promoted149_reload {Type I LastRead 0 FirstWrite -1}
		sub34 {Type I LastRead 0 FirstWrite -1}
		dict {Type IO LastRead 1 FirstWrite 2}
		inStream {Type I LastRead 1 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 4}
		present_window_15_out {Type O LastRead -1 FirstWrite 3}
		present_window_14_out {Type O LastRead -1 FirstWrite 3}
		present_window_13_out {Type O LastRead -1 FirstWrite 3}
		present_window_12_out {Type O LastRead -1 FirstWrite 3}
		present_window_11_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arrayidx55_promoted157_reload { ap_none {  { arrayidx55_promoted157_reload in_data 0 8 } } }
	arrayidx46_3_promoted155_reload { ap_none {  { arrayidx46_3_promoted155_reload in_data 0 8 } } }
	arrayidx65_promoted153_reload { ap_none {  { arrayidx65_promoted153_reload in_data 0 8 } } }
	arrayidx61_promoted151_reload { ap_none {  { arrayidx61_promoted151_reload in_data 0 8 } } }
	arrayidx58_promoted149_reload { ap_none {  { arrayidx58_promoted149_reload in_data 0 8 } } }
	sub34 { ap_none {  { sub34 in_data 0 32 } } }
	dict { ap_memory {  { dict_address0 mem_address 1 11 }  { dict_ce0 mem_ce 1 1 }  { dict_we0 mem_we 1 1 }  { dict_d0 mem_din 1 432 }  { dict_address1 MemPortADDR2 1 11 }  { dict_ce1 MemPortCE2 1 1 }  { dict_q1 MemPortDOUT2 0 432 } } }
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	present_window_15_out { ap_vld {  { present_window_15_out out_data 1 8 }  { present_window_15_out_ap_vld out_vld 1 1 } } }
	present_window_14_out { ap_vld {  { present_window_14_out out_data 1 8 }  { present_window_14_out_ap_vld out_vld 1 1 } } }
	present_window_13_out { ap_vld {  { present_window_13_out out_data 1 8 }  { present_window_13_out_ap_vld out_vld 1 1 } } }
	present_window_12_out { ap_vld {  { present_window_12_out out_data 1 8 }  { present_window_12_out_ap_vld out_vld 1 1 } } }
	present_window_11_out { ap_vld {  { present_window_11_out out_data 1 8 }  { present_window_11_out_ap_vld out_vld 1 1 } } }
}
