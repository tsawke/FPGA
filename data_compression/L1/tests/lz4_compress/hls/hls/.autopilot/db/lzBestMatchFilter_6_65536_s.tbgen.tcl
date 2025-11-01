set moduleName lzBestMatchFilter_6_65536_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {lzBestMatchFilter<6, 65536>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ compressdStream int 32 regular {fifo 0 volatile }  }
	{ bestMatchStream int 32 regular {fifo 1 volatile }  }
	{ input_size int 32 regular {fifo 0}  }
	{ input_size_c1 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bestMatchStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_c1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ compressdStream_dout sc_in sc_lv 32 signal 0 } 
	{ compressdStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ compressdStream_read sc_out sc_logic 1 signal 0 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ bestMatchStream_din sc_out sc_lv 32 signal 1 } 
	{ bestMatchStream_full_n sc_in sc_logic 1 signal 1 } 
	{ bestMatchStream_write sc_out sc_logic 1 signal 1 } 
	{ bestMatchStream_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ bestMatchStream_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ input_size_dout sc_in sc_lv 32 signal 2 } 
	{ input_size_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_size_read sc_out sc_logic 1 signal 2 } 
	{ input_size_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ input_size_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ input_size_c1_din sc_out sc_lv 32 signal 3 } 
	{ input_size_c1_full_n sc_in sc_logic 1 signal 3 } 
	{ input_size_c1_write sc_out sc_logic 1 signal 3 } 
	{ input_size_c1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ input_size_c1_fifo_cap sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
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
 	{ "name": "input_size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "dout" }} , 
 	{ "name": "input_size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "empty_n" }} , 
 	{ "name": "input_size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "read" }} , 
 	{ "name": "input_size_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "num_data_valid" }} , 
 	{ "name": "input_size_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "fifo_cap" }} , 
 	{ "name": "input_size_c1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_c1", "role": "din" }} , 
 	{ "name": "input_size_c1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c1", "role": "full_n" }} , 
 	{ "name": "input_size_c1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c1", "role": "write" }} , 
 	{ "name": "input_size_c1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c1", "role": "num_data_valid" }} , 
 	{ "name": "input_size_c1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c1", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "lzBestMatchFilter_6_65536_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "compressdStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "bestMatchStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_bestMatchFilter_left_over", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state10_blk"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U57", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lzBestMatchFilter_6_65536_s {
		compressdStream {Type I LastRead 5 FirstWrite -1}
		bestMatchStream {Type O LastRead -1 FirstWrite 1}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c1 {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	compressdStream { ap_fifo {  { compressdStream_dout fifo_data_in 0 32 }  { compressdStream_empty_n fifo_status 0 1 }  { compressdStream_read fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	bestMatchStream { ap_fifo {  { bestMatchStream_din fifo_data_in 1 32 }  { bestMatchStream_full_n fifo_status 0 1 }  { bestMatchStream_write fifo_port_we 1 1 }  { bestMatchStream_num_data_valid fifo_status_num_data_valid 0 32 }  { bestMatchStream_fifo_cap fifo_update 0 32 } } }
	input_size { ap_fifo {  { input_size_dout fifo_data_in 0 32 }  { input_size_empty_n fifo_status 0 1 }  { input_size_read fifo_port_we 1 1 }  { input_size_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_fifo_cap fifo_update 0 3 } } }
	input_size_c1 { ap_fifo {  { input_size_c1_din fifo_data_in 1 32 }  { input_size_c1_full_n fifo_status 0 1 }  { input_size_c1_write fifo_port_we 1 1 }  { input_size_c1_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_c1_fifo_cap fifo_update 0 3 } } }
}
