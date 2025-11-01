set moduleName lzBooster_255_16384_64_Pipeline_lz_booster
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
set C_modelName {lzBooster<255, 16384, 64>_Pipeline_lz_booster}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sub int 32 regular  }
	{ bestMatchStream int 32 regular {fifo 0 volatile }  }
	{ boosterStream int 32 regular {fifo 1 volatile }  }
	{ outValue_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bestMatchStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "boosterStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bestMatchStream_dout sc_in sc_lv 32 signal 1 } 
	{ bestMatchStream_empty_n sc_in sc_logic 1 signal 1 } 
	{ bestMatchStream_read sc_out sc_logic 1 signal 1 } 
	{ bestMatchStream_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ bestMatchStream_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ boosterStream_din sc_out sc_lv 32 signal 2 } 
	{ boosterStream_full_n sc_in sc_logic 1 signal 2 } 
	{ boosterStream_write sc_out sc_logic 1 signal 2 } 
	{ boosterStream_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ boosterStream_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ sub sc_in sc_lv 32 signal 0 } 
	{ outValue_out sc_out sc_lv 32 signal 3 } 
	{ outValue_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "outValue_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outValue_out", "role": "default" }} , 
 	{ "name": "outValue_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_mem_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub { ap_none {  { sub in_data 0 32 } } }
	bestMatchStream { ap_fifo {  { bestMatchStream_dout fifo_data_in 0 32 }  { bestMatchStream_empty_n fifo_status 0 1 }  { bestMatchStream_read fifo_port_we 1 1 }  { bestMatchStream_num_data_valid fifo_status_num_data_valid 0 4 }  { bestMatchStream_fifo_cap fifo_update 0 4 } } }
	boosterStream { ap_fifo {  { boosterStream_din fifo_data_in 1 32 }  { boosterStream_full_n fifo_status 0 1 }  { boosterStream_write fifo_port_we 1 1 }  { boosterStream_num_data_valid fifo_status_num_data_valid 0 32 }  { boosterStream_fifo_cap fifo_update 0 32 } } }
	outValue_out { ap_vld {  { outValue_out out_data 1 32 }  { outValue_out_ap_vld out_vld 1 1 } } }
}
