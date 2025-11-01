set moduleName lz4CompressEngineRun
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
set C_modelName {lz4CompressEngineRun}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ lz4Out int 8 regular {fifo 1 volatile }  }
	{ lz4Out_eos int 1 regular {fifo 1 volatile }  }
	{ lz4OutSize int 32 regular {fifo 1 volatile }  }
	{ max_lit_limit int 32 regular {pointer 1}  }
	{ input_size int 32 regular  }
	{ core_idx int 32 unused  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lz4Out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lz4Out_eos", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lz4OutSize", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_lit_limit", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "core_idx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ inStream_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_read sc_out sc_logic 1 signal 0 } 
	{ lz4Out_din sc_out sc_lv 8 signal 1 } 
	{ lz4Out_full_n sc_in sc_logic 1 signal 1 } 
	{ lz4Out_write sc_out sc_logic 1 signal 1 } 
	{ lz4Out_eos_din sc_out sc_lv 1 signal 2 } 
	{ lz4Out_eos_full_n sc_in sc_logic 1 signal 2 } 
	{ lz4Out_eos_write sc_out sc_logic 1 signal 2 } 
	{ lz4OutSize_din sc_out sc_lv 32 signal 3 } 
	{ lz4OutSize_full_n sc_in sc_logic 1 signal 3 } 
	{ lz4OutSize_write sc_out sc_logic 1 signal 3 } 
	{ max_lit_limit sc_out sc_lv 32 signal 4 } 
	{ input_size sc_in sc_lv 32 signal 5 } 
	{ core_idx sc_in sc_lv 32 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ max_lit_limit_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "lz4Out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lz4Out", "role": "din" }} , 
 	{ "name": "lz4Out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out", "role": "full_n" }} , 
 	{ "name": "lz4Out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out", "role": "write" }} , 
 	{ "name": "lz4Out_eos_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "din" }} , 
 	{ "name": "lz4Out_eos_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "full_n" }} , 
 	{ "name": "lz4Out_eos_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4Out_eos", "role": "write" }} , 
 	{ "name": "lz4OutSize_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "din" }} , 
 	{ "name": "lz4OutSize_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "full_n" }} , 
 	{ "name": "lz4OutSize_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz4OutSize", "role": "write" }} , 
 	{ "name": "max_lit_limit", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_lit_limit", "role": "default" }} , 
 	{ "name": "input_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "default" }} , 
 	{ "name": "core_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "core_idx", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "max_lit_limit_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_lit_limit", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "13", "17", "21", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "lz4CompressEngineRun",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "lzCompress_6_4_65536_6_1_2048_64_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "lz4Compress_4096_1_U0"}],
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "lzCompress_6_4_65536_6_1_2048_64_U0", "Port" : "inStream"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "lz4Compress_4096_1_U0", "Port" : "lz4Out"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "lz4Compress_4096_1_U0", "Port" : "lz4Out_eos"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "lz4Compress_4096_1_U0", "Port" : "lz4OutSize"}]},
			{"Name" : "max_lit_limit", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "lz4Compress_4096_1_U0", "Port" : "max_lit_limit"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "core_idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0", "Parent" : "0", "Child" : ["2", "3", "5", "6", "8", "11"],
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_s",
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
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2_fu_143", "Port" : "inStream", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "6", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_fu_159", "Port" : "inStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "11", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes_fu_190", "Port" : "inStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "32", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_fu_159", "Port" : "compressdStream", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "8", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover_fu_179", "Port" : "compressdStream", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "11", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes_fu_190", "Port" : "compressdStream", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.dict_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_dict_flush_fu_138", "Parent" : "1", "Child" : ["4"],
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_Pipeline_dict_flush",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dict", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "dict_flush", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_dict_flush_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2_fu_143", "Parent" : "1",
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "present_window_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "present_window_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx55_promoted157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx46_3_promoted155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx65_promoted153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx61_promoted151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "arrayidx58_promoted149_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_82_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_fu_159", "Parent" : "1", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover_fu_179", "Parent" : "1", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover_fu_179.sparsemux_11_3_8_1_1_U27", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes_fu_190", "Parent" : "1", "Child" : ["12"],
		"CDFG" : "lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_left_bytes", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzCompress_6_4_65536_6_1_2048_64_U0.grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0", "Parent" : "0", "Child" : ["14", "16"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_lzBestMatchFilter_6_65536_U0_U",
		"Port" : [
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "compressdStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "34", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Port" : "bestMatchStream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_bestMatchFilter_left_over", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state10_blk"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135", "Parent" : "13", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBestMatchFilter_6_65536_U0.sparsemux_13_3_32_1_1_U57", "Parent" : "13"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0", "Parent" : "0", "Child" : ["18"],
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
		"StartSource" : "13",
		"StartFifo" : "start_for_lzBooster_255_16384_64_U0_U",
		"Port" : [
			{"Name" : "bestMatchStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "34", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bestMatchStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Port" : "bestMatchStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21","22"], "DependentChan" : "36", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Port" : "boosterStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21","22"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_booster_left_bytes", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106", "Parent" : "17", "Child" : ["19", "20"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106.local_mem_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lzBooster_255_16384_64_U0.grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0", "Parent" : "0", "Child" : ["22", "25", "28", "29", "30", "31"],
		"CDFG" : "lz4Compress_4096_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "17",
		"StartFifo" : "start_for_lz4Compress_4096_1_U0_U",
		"InputProcess" : [
			{"ID" : "22", "Name" : "lz4CompressPart1_4096_1_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "lz4CompressPart1_4096_1_U0"},
			{"ID" : "25", "Name" : "lz4CompressPart2_U0"}],
		"Port" : [
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "36", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lz4CompressPart1_4096_1_U0", "Port" : "boosterStream"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4Out"}]},
			{"Name" : "max_lit_limit", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lz4CompressPart1_4096_1_U0", "Port" : "max_lit_limit"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "lz4CompressPart1_4096_1_U0", "Port" : "input_size"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4Out_eos"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "lz4CompressPart2_U0", "Port" : "lz4OutSize"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart1_4096_1_U0", "Parent" : "21", "Child" : ["23"],
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
			{"Name" : "boosterStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "36", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "boosterStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "boosterStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "28", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "lit_outStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Port" : "lenOffset_Stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_lit_limit", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_size_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart1_4096_1_U0.grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138", "Parent" : "22", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart1_4096_1_U0.grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart2_U0", "Parent" : "21", "Child" : ["26"],
		"CDFG" : "lz4CompressPart2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "22",
		"StartFifo" : "start_for_lz4CompressPart2_U0_U",
		"Port" : [
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "28", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lit_outStream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lenOffset_Stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lz4Out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_eos_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Port" : "lz4Out_eos", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lz4OutSize", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4OutSize_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart2_U0.grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91", "Parent" : "25", "Child" : ["27"],
		"CDFG" : "lz4CompressPart2_Pipeline_lz4_compress",
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
			{"Name" : "input_size_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "lenOffset_Stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenOffset_Stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lit_outStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lit_outStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lz4Out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lz4Out_eos", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz4Out_eos_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressedSize_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lz4_compress", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lz4CompressPart2_U0.grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lit_outStream_U", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.lenOffset_Stream_U", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.input_size_c_U", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.lz4Compress_4096_1_U0.start_for_lz4CompressPart2_U0_U", "Parent" : "21"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compressdStream_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bestMatchStream_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boosterStream_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_size_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lzBestMatchFilter_6_65536_U0_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lzBooster_255_16384_64_U0_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_lz4Compress_4096_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lz4CompressEngineRun {
		inStream {Type I LastRead 1 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 2}
		lz4Out_eos {Type O LastRead -1 FirstWrite 2}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}
		max_lit_limit {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}
		core_idx {Type I LastRead -1 FirstWrite -1}}
	lzCompress_6_4_65536_6_1_2048_64_s {
		inStream {Type I LastRead 1 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c2 {Type O LastRead -1 FirstWrite 0}}
	lzCompress_6_4_65536_6_1_2048_64_Pipeline_dict_flush {
		dict {Type O LastRead -1 FirstWrite 0}}
	lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2 {
		inStream {Type I LastRead 1 FirstWrite -1}
		present_window_4_out {Type O LastRead -1 FirstWrite 1}
		present_window_3_out {Type O LastRead -1 FirstWrite 1}
		present_window_2_out {Type O LastRead -1 FirstWrite 1}
		present_window_1_out {Type O LastRead -1 FirstWrite 1}
		present_window_out {Type O LastRead -1 FirstWrite 1}
		arrayidx55_promoted157_out {Type O LastRead -1 FirstWrite 1}
		arrayidx46_3_promoted155_out {Type O LastRead -1 FirstWrite 1}
		arrayidx65_promoted153_out {Type O LastRead -1 FirstWrite 1}
		arrayidx61_promoted151_out {Type O LastRead -1 FirstWrite 1}
		arrayidx58_promoted149_out {Type O LastRead -1 FirstWrite 1}}
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
		present_window_11_out {Type O LastRead -1 FirstWrite 3}}
	lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover {
		select_ln80_4 {Type I LastRead 0 FirstWrite -1}
		select_ln80_3 {Type I LastRead 0 FirstWrite -1}
		select_ln80_2 {Type I LastRead 0 FirstWrite -1}
		select_ln80_1 {Type I LastRead 0 FirstWrite -1}
		select_ln80 {Type I LastRead 0 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}
	lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes {
		inStream {Type I LastRead 1 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}
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
		compare_window_17_out {Type O LastRead -1 FirstWrite 1}}
	lzBooster_255_16384_64_s {
		bestMatchStream {Type I LastRead 4 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c {Type O LastRead -1 FirstWrite 0}}
	lzBooster_255_16384_64_Pipeline_lz_booster {
		sub {Type I LastRead 0 FirstWrite -1}
		bestMatchStream {Type I LastRead 1 FirstWrite -1}
		boosterStream {Type O LastRead -1 FirstWrite 3}
		outValue_out {Type O LastRead -1 FirstWrite 2}}
	lz4Compress_4096_1_s {
		boosterStream {Type I LastRead 1 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 2}
		max_lit_limit {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}
		lz4Out_eos {Type O LastRead -1 FirstWrite 2}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}}
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
		lit_count_flag_out {Type O LastRead -1 FirstWrite 1}}
	lz4CompressPart2 {
		lit_outStream {Type I LastRead 1 FirstWrite -1}
		lenOffset_Stream {Type I LastRead 1 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 2}
		lz4Out_eos {Type O LastRead -1 FirstWrite 2}
		lz4OutSize {Type O LastRead -1 FirstWrite 3}
		input_size {Type I LastRead 0 FirstWrite -1}}
	lz4CompressPart2_Pipeline_lz4_compress {
		input_size_3 {Type I LastRead 0 FirstWrite -1}
		lenOffset_Stream {Type I LastRead 1 FirstWrite -1}
		lit_outStream {Type I LastRead 1 FirstWrite -1}
		lz4Out {Type O LastRead -1 FirstWrite 2}
		lz4Out_eos {Type O LastRead -1 FirstWrite 2}
		compressedSize_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	lz4Out { ap_fifo {  { lz4Out_din fifo_data_in 1 8 }  { lz4Out_full_n fifo_status 0 1 }  { lz4Out_write fifo_port_we 1 1 } } }
	lz4Out_eos { ap_fifo {  { lz4Out_eos_din fifo_data_in 1 1 }  { lz4Out_eos_full_n fifo_status 0 1 }  { lz4Out_eos_write fifo_port_we 1 1 } } }
	lz4OutSize { ap_fifo {  { lz4OutSize_din fifo_data_in 1 32 }  { lz4OutSize_full_n fifo_status 0 1 }  { lz4OutSize_write fifo_port_we 1 1 } } }
	max_lit_limit { ap_vld {  { max_lit_limit out_data 1 32 }  { max_lit_limit_ap_vld out_vld 1 1 } } }
	input_size { ap_none {  { input_size in_data 0 32 } } }
	core_idx { ap_none {  { core_idx in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	inStream { fifo_read 1 no_conditional }
	lz4Out { fifo_write 1 no_conditional }
	lz4Out_eos { fifo_write 1 no_conditional }
	lz4OutSize { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
