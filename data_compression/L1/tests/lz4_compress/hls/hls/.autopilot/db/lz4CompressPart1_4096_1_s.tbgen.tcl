set moduleName lz4CompressPart1_4096_1_s
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
set C_modelName {lz4CompressPart1<4096, 1>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ boosterStream int 32 regular {fifo 0 volatile }  }
	{ lit_outStream int 8 regular {fifo 1 volatile }  }
	{ lenOffset_Stream int 64 regular {fifo 1 volatile }  }
	{ input_size int 32 regular {fifo 0}  }
	{ max_lit_limit int 32 regular {pointer 1}  }
	{ input_size_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "boosterStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lit_outStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lenOffset_Stream", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_lit_limit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
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
	{ boosterStream_dout sc_in sc_lv 32 signal 0 } 
	{ boosterStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ boosterStream_read sc_out sc_logic 1 signal 0 } 
	{ boosterStream_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ boosterStream_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ lit_outStream_din sc_out sc_lv 8 signal 1 } 
	{ lit_outStream_full_n sc_in sc_logic 1 signal 1 } 
	{ lit_outStream_write sc_out sc_logic 1 signal 1 } 
	{ lit_outStream_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ lit_outStream_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ lenOffset_Stream_din sc_out sc_lv 64 signal 2 } 
	{ lenOffset_Stream_full_n sc_in sc_logic 1 signal 2 } 
	{ lenOffset_Stream_write sc_out sc_logic 1 signal 2 } 
	{ lenOffset_Stream_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ lenOffset_Stream_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ input_size_dout sc_in sc_lv 32 signal 3 } 
	{ input_size_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_size_read sc_out sc_logic 1 signal 3 } 
	{ input_size_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ input_size_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ max_lit_limit sc_out sc_lv 32 signal 4 } 
	{ max_lit_limit_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ input_size_c_din sc_out sc_lv 32 signal 5 } 
	{ input_size_c_full_n sc_in sc_logic 1 signal 5 } 
	{ input_size_c_write sc_out sc_logic 1 signal 5 } 
	{ input_size_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ input_size_c_fifo_cap sc_in sc_lv 3 signal 5 } 
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
 	{ "name": "input_size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "dout" }} , 
 	{ "name": "input_size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "empty_n" }} , 
 	{ "name": "input_size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size", "role": "read" }} , 
 	{ "name": "input_size_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "num_data_valid" }} , 
 	{ "name": "input_size_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size", "role": "fifo_cap" }} , 
 	{ "name": "max_lit_limit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "default" }} , 
 	{ "name": "max_lit_limit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_lit_limit", "role": "ap_vld" }} , 
 	{ "name": "input_size_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_c", "role": "din" }} , 
 	{ "name": "input_size_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c", "role": "full_n" }} , 
 	{ "name": "input_size_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c", "role": "write" }} , 
 	{ "name": "input_size_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c", "role": "num_data_valid" }} , 
 	{ "name": "input_size_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lz4CompressPart1_4096_1_s",
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
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "boosterStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "lit_outStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "lenOffset_Stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_lit_limit", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	lz4CompressPart1_4096_1_s {
		boosterStream {Type I LastRead 1 FirstWrite -1}
		lit_outStream {Type O LastRead -1 FirstWrite 2}
		lenOffset_Stream {Type O LastRead -1 FirstWrite 2}
		input_size {Type I LastRead 0 FirstWrite -1}
		max_lit_limit {Type O LastRead -1 FirstWrite 3}
		input_size_c {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	boosterStream { ap_fifo {  { boosterStream_dout fifo_data_in 0 32 }  { boosterStream_empty_n fifo_status 0 1 }  { boosterStream_read fifo_port_we 1 1 }  { boosterStream_num_data_valid fifo_status_num_data_valid 0 4 }  { boosterStream_fifo_cap fifo_update 0 4 } } }
	lit_outStream { ap_fifo {  { lit_outStream_din fifo_data_in 1 8 }  { lit_outStream_full_n fifo_status 0 1 }  { lit_outStream_write fifo_port_we 1 1 }  { lit_outStream_num_data_valid fifo_status_num_data_valid 0 13 }  { lit_outStream_fifo_cap fifo_update 0 13 } } }
	lenOffset_Stream { ap_fifo {  { lenOffset_Stream_din fifo_data_in 1 64 }  { lenOffset_Stream_full_n fifo_status 0 1 }  { lenOffset_Stream_write fifo_port_we 1 1 }  { lenOffset_Stream_num_data_valid fifo_status_num_data_valid 0 6 }  { lenOffset_Stream_fifo_cap fifo_update 0 6 } } }
	input_size { ap_fifo {  { input_size_dout fifo_data_in 0 32 }  { input_size_empty_n fifo_status 0 1 }  { input_size_read fifo_port_we 1 1 }  { input_size_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_fifo_cap fifo_update 0 3 } } }
	max_lit_limit { ap_vld {  { max_lit_limit out_data 1 32 }  { max_lit_limit_ap_vld out_vld 1 1 } } }
	input_size_c { ap_fifo {  { input_size_c_din fifo_data_in 1 32 }  { input_size_c_full_n fifo_status 0 1 }  { input_size_c_write fifo_port_we 1 1 }  { input_size_c_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_c_fifo_cap fifo_update 0 3 } } }
}
