set moduleName lz4CompressPart1_4096_1_Pipeline_lz4_divide
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
set C_modelName {lz4CompressPart1<4096, 1>_Pipeline_lz4_divide}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ empty int 32 regular  }
	{ input_size_4 int 32 regular  }
	{ lenOffset_Stream int 64 regular {fifo 1 volatile }  }
	{ sub int 32 regular  }
	{ boosterStream int 32 regular {fifo 0 volatile }  }
	{ lit_outStream int 8 regular {fifo 1 volatile }  }
	{ lit_count_out int 32 regular {pointer 1}  }
	{ lit_count_flag_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lenOffset_Stream", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "boosterStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lit_outStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lit_count_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lit_count_flag_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ boosterStream_dout sc_in sc_lv 32 signal 4 } 
	{ boosterStream_empty_n sc_in sc_logic 1 signal 4 } 
	{ boosterStream_read sc_out sc_logic 1 signal 4 } 
	{ boosterStream_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ boosterStream_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ lit_outStream_din sc_out sc_lv 8 signal 5 } 
	{ lit_outStream_full_n sc_in sc_logic 1 signal 5 } 
	{ lit_outStream_write sc_out sc_logic 1 signal 5 } 
	{ lit_outStream_num_data_valid sc_in sc_lv 13 signal 5 } 
	{ lit_outStream_fifo_cap sc_in sc_lv 13 signal 5 } 
	{ lenOffset_Stream_din sc_out sc_lv 64 signal 2 } 
	{ lenOffset_Stream_full_n sc_in sc_logic 1 signal 2 } 
	{ lenOffset_Stream_write sc_out sc_logic 1 signal 2 } 
	{ lenOffset_Stream_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ lenOffset_Stream_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ empty sc_in sc_lv 32 signal 0 } 
	{ input_size_4 sc_in sc_lv 32 signal 1 } 
	{ sub sc_in sc_lv 32 signal 3 } 
	{ lit_count_out sc_out sc_lv 32 signal 6 } 
	{ lit_count_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ lit_count_flag_out sc_out sc_lv 32 signal 7 } 
	{ lit_count_flag_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "boosterStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "dout" }} , 
 	{ "name": "boosterStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "empty_n" }} , 
 	{ "name": "boosterStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "read" }} , 
 	{ "name": "boosterStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "boosterStream", "role": "num_data_valid" }} , 
 	{ "name": "boosterStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "boosterStream", "role": "fifo_cap" }} , 
 	{ "name": "lit_outStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lit_outStream", "role": "din" }} , 
 	{ "name": "lit_outStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lit_outStream", "role": "full_n" }} , 
 	{ "name": "lit_outStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lit_outStream", "role": "write" }} , 
 	{ "name": "lit_outStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "lit_outStream", "role": "num_data_valid" }} , 
 	{ "name": "lit_outStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "lit_outStream", "role": "fifo_cap" }} , 
 	{ "name": "lenOffset_Stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lenOffset_Stream", "role": "din" }} , 
 	{ "name": "lenOffset_Stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenOffset_Stream", "role": "full_n" }} , 
 	{ "name": "lenOffset_Stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenOffset_Stream", "role": "write" }} , 
 	{ "name": "lenOffset_Stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lenOffset_Stream", "role": "num_data_valid" }} , 
 	{ "name": "lenOffset_Stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "lenOffset_Stream", "role": "fifo_cap" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "input_size_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_4", "role": "default" }} , 
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "lit_count_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lit_count_out", "role": "default" }} , 
 	{ "name": "lit_count_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lit_count_out", "role": "ap_vld" }} , 
 	{ "name": "lit_count_flag_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lit_count_flag_out", "role": "default" }} , 
 	{ "name": "lit_count_flag_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "lit_count_flag_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lz4CompressPart1_4096_1_Pipeline_lz4_divide",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lit_outStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_count_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lit_count_flag_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz4_divide", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lz4CompressPart1_4096_1_Pipeline_lz4_divide {
		empty {Type I LastRead 0 FirstWrite -1}
		input_size_4 {Type I LastRead 0 FirstWrite -1}
		lenOffset_Stream {Type O LastRead -1 FirstWrite 2}
		sub {Type I LastRead 0 FirstWrite -1}
		boosterStream {Type I LastRead 1 FirstWrite -1}
		lit_outStream {Type O LastRead -1 FirstWrite 2}
		lit_count_out {Type O LastRead -1 FirstWrite 1}
		lit_count_flag_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 32 } } }
	input_size_4 { ap_none {  { input_size_4 in_data 0 32 } } }
	lenOffset_Stream { ap_fifo {  { lenOffset_Stream_din fifo_data_in 1 64 }  { lenOffset_Stream_full_n fifo_status 0 1 }  { lenOffset_Stream_write fifo_port_we 1 1 }  { lenOffset_Stream_num_data_valid fifo_status_num_data_valid 0 6 }  { lenOffset_Stream_fifo_cap fifo_update 0 6 } } }
	sub { ap_none {  { sub in_data 0 32 } } }
	boosterStream { ap_fifo {  { boosterStream_dout fifo_data_in 0 32 }  { boosterStream_empty_n fifo_status 0 1 }  { boosterStream_read fifo_port_we 1 1 }  { boosterStream_num_data_valid fifo_status_num_data_valid 0 4 }  { boosterStream_fifo_cap fifo_update 0 4 } } }
	lit_outStream { ap_fifo {  { lit_outStream_din fifo_data_in 1 8 }  { lit_outStream_full_n fifo_status 0 1 }  { lit_outStream_write fifo_port_we 1 1 }  { lit_outStream_num_data_valid fifo_status_num_data_valid 0 13 }  { lit_outStream_fifo_cap fifo_update 0 13 } } }
	lit_count_out { ap_vld {  { lit_count_out out_data 1 32 }  { lit_count_out_ap_vld out_vld 1 1 } } }
	lit_count_flag_out { ap_vld {  { lit_count_flag_out out_data 1 32 }  { lit_count_flag_out_ap_vld out_vld 1 1 } } }
}
