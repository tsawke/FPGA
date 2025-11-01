set moduleName lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter
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
set C_modelName {lzBestMatchFilter<6, 65536>_Pipeline_lz_bestMatchFilter}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ compare_window_5 int 32 regular  }
	{ compare_window_4 int 32 regular  }
	{ compare_window_3 int 32 regular  }
	{ compare_window_2 int 32 regular  }
	{ compare_window_1 int 32 regular  }
	{ compare_window int 32 regular  }
	{ input_size_2 int 32 regular  }
	{ compressdStream int 32 regular {fifo 0 volatile }  }
	{ bestMatchStream int 32 regular {fifo 1 volatile }  }
	{ compare_window_12_out int 32 regular {pointer 1}  }
	{ compare_window_13_out int 32 regular {pointer 1}  }
	{ compare_window_14_out int 32 regular {pointer 1}  }
	{ compare_window_15_out int 32 regular {pointer 1}  }
	{ compare_window_16_out int 32 regular {pointer 1}  }
	{ compare_window_17_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "compare_window_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compare_window_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compare_window_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compare_window_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compare_window_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compare_window", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bestMatchStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compare_window_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ compressdStream_dout sc_in sc_lv 32 signal 7 } 
	{ compressdStream_empty_n sc_in sc_logic 1 signal 7 } 
	{ compressdStream_read sc_out sc_logic 1 signal 7 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ bestMatchStream_din sc_out sc_lv 32 signal 8 } 
	{ bestMatchStream_full_n sc_in sc_logic 1 signal 8 } 
	{ bestMatchStream_write sc_out sc_logic 1 signal 8 } 
	{ bestMatchStream_num_data_valid sc_in sc_lv 32 signal 8 } 
	{ bestMatchStream_fifo_cap sc_in sc_lv 32 signal 8 } 
	{ compare_window_5 sc_in sc_lv 32 signal 0 } 
	{ compare_window_4 sc_in sc_lv 32 signal 1 } 
	{ compare_window_3 sc_in sc_lv 32 signal 2 } 
	{ compare_window_2 sc_in sc_lv 32 signal 3 } 
	{ compare_window_1 sc_in sc_lv 32 signal 4 } 
	{ compare_window sc_in sc_lv 32 signal 5 } 
	{ input_size_2 sc_in sc_lv 32 signal 6 } 
	{ compare_window_12_out sc_out sc_lv 32 signal 9 } 
	{ compare_window_12_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ compare_window_13_out sc_out sc_lv 32 signal 10 } 
	{ compare_window_13_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ compare_window_14_out sc_out sc_lv 32 signal 11 } 
	{ compare_window_14_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ compare_window_15_out sc_out sc_lv 32 signal 12 } 
	{ compare_window_15_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ compare_window_16_out sc_out sc_lv 32 signal 13 } 
	{ compare_window_16_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ compare_window_17_out sc_out sc_lv 32 signal 14 } 
	{ compare_window_17_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "compressdStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "dout" }} , 
 	{ "name": "compressdStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "empty_n" }} , 
 	{ "name": "compressdStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "read" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "bestMatchStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "din" }} , 
 	{ "name": "bestMatchStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "full_n" }} , 
 	{ "name": "bestMatchStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "write" }} , 
 	{ "name": "bestMatchStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "num_data_valid" }} , 
 	{ "name": "bestMatchStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "fifo_cap" }} , 
 	{ "name": "compare_window_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_5", "role": "default" }} , 
 	{ "name": "compare_window_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_4", "role": "default" }} , 
 	{ "name": "compare_window_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_3", "role": "default" }} , 
 	{ "name": "compare_window_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_2", "role": "default" }} , 
 	{ "name": "compare_window_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_1", "role": "default" }} , 
 	{ "name": "compare_window", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window", "role": "default" }} , 
 	{ "name": "input_size_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_2", "role": "default" }} , 
 	{ "name": "compare_window_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_12_out", "role": "default" }} , 
 	{ "name": "compare_window_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_12_out", "role": "ap_vld" }} , 
 	{ "name": "compare_window_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_13_out", "role": "default" }} , 
 	{ "name": "compare_window_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_13_out", "role": "ap_vld" }} , 
 	{ "name": "compare_window_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_14_out", "role": "default" }} , 
 	{ "name": "compare_window_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_14_out", "role": "ap_vld" }} , 
 	{ "name": "compare_window_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_15_out", "role": "default" }} , 
 	{ "name": "compare_window_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_15_out", "role": "ap_vld" }} , 
 	{ "name": "compare_window_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_16_out", "role": "default" }} , 
 	{ "name": "compare_window_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_16_out", "role": "ap_vld" }} , 
 	{ "name": "compare_window_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compare_window_17_out", "role": "default" }} , 
 	{ "name": "compare_window_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "compare_window_17_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter",
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
			{"Name" : "compare_window_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "compare_window", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compare_window_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "compare_window_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_bestMatchFilter", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter {
		compare_window_5 {Type I LastRead 0 FirstWrite -1}
		compare_window_4 {Type I LastRead 0 FirstWrite -1}
		compare_window_3 {Type I LastRead 0 FirstWrite -1}
		compare_window_2 {Type I LastRead 0 FirstWrite -1}
		compare_window_1 {Type I LastRead 0 FirstWrite -1}
		compare_window {Type I LastRead 0 FirstWrite -1}
		input_size_2 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type I LastRead 1 FirstWrite -1}
		bestMatchStream {Type O LastRead -1 FirstWrite 1}
		compare_window_12_out {Type O LastRead -1 FirstWrite 1}
		compare_window_13_out {Type O LastRead -1 FirstWrite 1}
		compare_window_14_out {Type O LastRead -1 FirstWrite 1}
		compare_window_15_out {Type O LastRead -1 FirstWrite 1}
		compare_window_16_out {Type O LastRead -1 FirstWrite 1}
		compare_window_17_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	compare_window_5 { ap_none {  { compare_window_5 in_data 0 32 } } }
	compare_window_4 { ap_none {  { compare_window_4 in_data 0 32 } } }
	compare_window_3 { ap_none {  { compare_window_3 in_data 0 32 } } }
	compare_window_2 { ap_none {  { compare_window_2 in_data 0 32 } } }
	compare_window_1 { ap_none {  { compare_window_1 in_data 0 32 } } }
	compare_window { ap_none {  { compare_window in_data 0 32 } } }
	input_size_2 { ap_none {  { input_size_2 in_data 0 32 } } }
	compressdStream { ap_fifo {  { compressdStream_dout fifo_data_in 0 32 }  { compressdStream_empty_n fifo_status 0 1 }  { compressdStream_read fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	bestMatchStream { ap_fifo {  { bestMatchStream_din fifo_data_in 1 32 }  { bestMatchStream_full_n fifo_status 0 1 }  { bestMatchStream_write fifo_port_we 1 1 }  { bestMatchStream_num_data_valid fifo_status_num_data_valid 0 32 }  { bestMatchStream_fifo_cap fifo_update 0 32 } } }
	compare_window_12_out { ap_vld {  { compare_window_12_out out_data 1 32 }  { compare_window_12_out_ap_vld out_vld 1 1 } } }
	compare_window_13_out { ap_vld {  { compare_window_13_out out_data 1 32 }  { compare_window_13_out_ap_vld out_vld 1 1 } } }
	compare_window_14_out { ap_vld {  { compare_window_14_out out_data 1 32 }  { compare_window_14_out_ap_vld out_vld 1 1 } } }
	compare_window_15_out { ap_vld {  { compare_window_15_out out_data 1 32 }  { compare_window_15_out_ap_vld out_vld 1 1 } } }
	compare_window_16_out { ap_vld {  { compare_window_16_out out_data 1 32 }  { compare_window_16_out_ap_vld out_vld 1 1 } } }
	compare_window_17_out { ap_vld {  { compare_window_17_out out_data 1 32 }  { compare_window_17_out_ap_vld out_vld 1 1 } } }
}
