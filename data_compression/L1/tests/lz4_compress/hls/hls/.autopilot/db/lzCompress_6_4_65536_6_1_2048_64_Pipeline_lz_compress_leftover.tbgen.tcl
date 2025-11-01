set moduleName lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover
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
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 2048, 64>_Pipeline_lz_compress_leftover}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ select_ln80_4 int 8 regular  }
	{ select_ln80_3 int 8 regular  }
	{ select_ln80_2 int 8 regular  }
	{ select_ln80_1 int 8 regular  }
	{ select_ln80 int 8 regular  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "select_ln80_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln80_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln80_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln80_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln80", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ compressdStream_din sc_out sc_lv 32 signal 5 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 5 } 
	{ compressdStream_write sc_out sc_logic 1 signal 5 } 
	{ compressdStream_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ compressdStream_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ select_ln80_4 sc_in sc_lv 8 signal 0 } 
	{ select_ln80_3 sc_in sc_lv 8 signal 1 } 
	{ select_ln80_2 sc_in sc_lv 8 signal 2 } 
	{ select_ln80_1 sc_in sc_lv 8 signal 3 } 
	{ select_ln80 sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "select_ln80_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln80_4", "role": "default" }} , 
 	{ "name": "select_ln80_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln80_3", "role": "default" }} , 
 	{ "name": "select_ln80_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln80_2", "role": "default" }} , 
 	{ "name": "select_ln80_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln80_1", "role": "default" }} , 
 	{ "name": "select_ln80", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln80", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln80_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln80_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln80_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln80_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln80", "Type" : "None", "Direction" : "I"},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_compress_leftover", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_8_1_1_U27", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover {
		select_ln80_4 {Type I LastRead 0 FirstWrite -1}
		select_ln80_3 {Type I LastRead 0 FirstWrite -1}
		select_ln80_2 {Type I LastRead 0 FirstWrite -1}
		select_ln80_1 {Type I LastRead 0 FirstWrite -1}
		select_ln80 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln80_4 { ap_none {  { select_ln80_4 in_data 0 8 } } }
	select_ln80_3 { ap_none {  { select_ln80_3 in_data 0 8 } } }
	select_ln80_2 { ap_none {  { select_ln80_2 in_data 0 8 } } }
	select_ln80_1 { ap_none {  { select_ln80_1 in_data 0 8 } } }
	select_ln80 { ap_none {  { select_ln80 in_data 0 8 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 32 }  { compressdStream_fifo_cap fifo_update 0 32 } } }
}
