set moduleName lzBooster_255_16384_64_s
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
set C_modelName {lzBooster<255, 16384, 64>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bestMatchStream int 32 regular {fifo 0 volatile }  }
	{ boosterStream int 32 regular {fifo 1 volatile }  }
	{ input_size int 32 regular {fifo 0}  }
	{ input_size_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bestMatchStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "boosterStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ bestMatchStream_dout sc_in sc_lv 32 signal 0 } 
	{ bestMatchStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ bestMatchStream_read sc_out sc_logic 1 signal 0 } 
	{ bestMatchStream_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ bestMatchStream_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ boosterStream_din sc_out sc_lv 32 signal 1 } 
	{ boosterStream_full_n sc_in sc_logic 1 signal 1 } 
	{ boosterStream_write sc_out sc_logic 1 signal 1 } 
	{ boosterStream_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ boosterStream_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ input_size_dout sc_in sc_lv 32 signal 2 } 
	{ input_size_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_size_read sc_out sc_logic 1 signal 2 } 
	{ input_size_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ input_size_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ input_size_c_din sc_out sc_lv 32 signal 3 } 
	{ input_size_c_full_n sc_in sc_logic 1 signal 3 } 
	{ input_size_c_write sc_out sc_logic 1 signal 3 } 
	{ input_size_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ input_size_c_fifo_cap sc_in sc_lv 3 signal 3 } 
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
 	{ "name": "bestMatchStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "dout" }} , 
 	{ "name": "bestMatchStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "empty_n" }} , 
 	{ "name": "bestMatchStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "read" }} , 
 	{ "name": "bestMatchStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "num_data_valid" }} , 
 	{ "name": "bestMatchStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bestMatchStream", "role": "fifo_cap" }} , 
 	{ "name": "boosterStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "din" }} , 
 	{ "name": "boosterStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "full_n" }} , 
 	{ "name": "boosterStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "boosterStream", "role": "write" }} , 
 	{ "name": "boosterStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "num_data_valid" }} , 
 	{ "name": "boosterStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boosterStream", "role": "fifo_cap" }} , 
 	{ "name": "input_size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "dout" }} , 
 	{ "name": "input_size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "empty_n" }} , 
 	{ "name": "input_size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "read" }} , 
 	{ "name": "input_size_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "num_data_valid" }} , 
 	{ "name": "input_size_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "fifo_cap" }} , 
 	{ "name": "input_size_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_c", "role": "din" }} , 
 	{ "name": "input_size_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c", "role": "full_n" }} , 
 	{ "name": "input_size_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c", "role": "write" }} , 
 	{ "name": "input_size_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c", "role": "num_data_valid" }} , 
 	{ "name": "input_size_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lzBooster_255_16384_64_s",
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
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Port" : "bestMatchStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Port" : "boosterStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_booster_left_bytes", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "lzBooster_255_16384_64_Pipeline_lz_booster",
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
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outValue_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz_booster", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106.local_mem_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	lzBooster_255_16384_64_s {
		bestMatchStream {Type I LastRead 4 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c {Type O LastRead -1 FirstWrite 0}}
	lzBooster_255_16384_64_Pipeline_lz_booster {
		sub {Type I LastRead 0 FirstWrite -1}
		bestMatchStream {Type I LastRead 1 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 3}
		outValue_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bestMatchStream { ap_fifo {  { bestMatchStream_dout fifo_data_in 0 32 }  { bestMatchStream_empty_n fifo_status 0 1 }  { bestMatchStream_read fifo_port_we 1 1 }  { bestMatchStream_num_data_valid fifo_status_num_data_valid 0 4 }  { bestMatchStream_fifo_cap fifo_update 0 4 } } }
	boosterStream { ap_fifo {  { boosterStream_din fifo_data_in 1 32 }  { boosterStream_full_n fifo_status 0 1 }  { boosterStream_write fifo_port_we 1 1 }  { boosterStream_num_data_valid fifo_status_num_data_valid 0 32 }  { boosterStream_fifo_cap fifo_update 0 32 } } }
	input_size { ap_fifo {  { input_size_dout fifo_data_in 0 32 }  { input_size_empty_n fifo_status 0 1 }  { input_size_read fifo_port_we 1 1 }  { input_size_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_fifo_cap fifo_update 0 3 } } }
	input_size_c { ap_fifo {  { input_size_c_din fifo_data_in 1 32 }  { input_size_c_full_n fifo_status 0 1 }  { input_size_c_write fifo_port_we 1 1 }  { input_size_c_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_c_fifo_cap fifo_update 0 3 } } }
}
