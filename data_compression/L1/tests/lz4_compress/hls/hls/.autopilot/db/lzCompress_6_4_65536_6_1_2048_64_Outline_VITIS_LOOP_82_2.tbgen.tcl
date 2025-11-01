set moduleName lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2
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
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 2048, 64>_Outline_VITIS_LOOP_82_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ present_window_4_out int 8 regular {pointer 1}  }
	{ present_window_3_out int 8 regular {pointer 1}  }
	{ present_window_2_out int 8 regular {pointer 1}  }
	{ present_window_1_out int 8 regular {pointer 1}  }
	{ present_window_out int 8 regular {pointer 1}  }
	{ arrayidx55_promoted157_out int 8 regular {pointer 1}  }
	{ arrayidx46_3_promoted155_out int 8 regular {pointer 1}  }
	{ arrayidx65_promoted153_out int 8 regular {pointer 1}  }
	{ arrayidx61_promoted151_out int 8 regular {pointer 1}  }
	{ arrayidx58_promoted149_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "present_window_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "present_window_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx55_promoted157_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx46_3_promoted155_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx65_promoted153_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx61_promoted151_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arrayidx58_promoted149_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_read sc_out sc_logic 1 signal 0 } 
	{ present_window_4_out sc_out sc_lv 8 signal 1 } 
	{ present_window_4_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ present_window_3_out sc_out sc_lv 8 signal 2 } 
	{ present_window_3_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ present_window_2_out sc_out sc_lv 8 signal 3 } 
	{ present_window_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ present_window_1_out sc_out sc_lv 8 signal 4 } 
	{ present_window_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ present_window_out sc_out sc_lv 8 signal 5 } 
	{ present_window_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ arrayidx55_promoted157_out sc_out sc_lv 8 signal 6 } 
	{ arrayidx55_promoted157_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ arrayidx46_3_promoted155_out sc_out sc_lv 8 signal 7 } 
	{ arrayidx46_3_promoted155_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ arrayidx65_promoted153_out sc_out sc_lv 8 signal 8 } 
	{ arrayidx65_promoted153_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ arrayidx61_promoted151_out sc_out sc_lv 8 signal 9 } 
	{ arrayidx61_promoted151_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ arrayidx58_promoted149_out sc_out sc_lv 8 signal 10 } 
	{ arrayidx58_promoted149_out_ap_vld sc_out sc_logic 1 outvld 10 } 
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
 	{ "name": "present_window_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_4_out", "role": "default" }} , 
 	{ "name": "present_window_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_4_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_3_out", "role": "default" }} , 
 	{ "name": "present_window_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_3_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_2_out", "role": "default" }} , 
 	{ "name": "present_window_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_2_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_1_out", "role": "default" }} , 
 	{ "name": "present_window_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_1_out", "role": "ap_vld" }} , 
 	{ "name": "present_window_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "present_window_out", "role": "default" }} , 
 	{ "name": "present_window_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "present_window_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx55_promoted157_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx55_promoted157_out", "role": "default" }} , 
 	{ "name": "arrayidx55_promoted157_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx55_promoted157_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx46_3_promoted155_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx46_3_promoted155_out", "role": "default" }} , 
 	{ "name": "arrayidx46_3_promoted155_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx46_3_promoted155_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx65_promoted153_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx65_promoted153_out", "role": "default" }} , 
 	{ "name": "arrayidx65_promoted153_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx65_promoted153_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx61_promoted151_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx61_promoted151_out", "role": "default" }} , 
 	{ "name": "arrayidx61_promoted151_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx61_promoted151_out", "role": "ap_vld" }} , 
 	{ "name": "arrayidx58_promoted149_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arrayidx58_promoted149_out", "role": "default" }} , 
 	{ "name": "arrayidx58_promoted149_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arrayidx58_promoted149_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]}]}


set ArgLastReadFirstWriteLatency {
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
		arrayidx58_promoted149_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	present_window_4_out { ap_vld {  { present_window_4_out out_data 1 8 }  { present_window_4_out_ap_vld out_vld 1 1 } } }
	present_window_3_out { ap_vld {  { present_window_3_out out_data 1 8 }  { present_window_3_out_ap_vld out_vld 1 1 } } }
	present_window_2_out { ap_vld {  { present_window_2_out out_data 1 8 }  { present_window_2_out_ap_vld out_vld 1 1 } } }
	present_window_1_out { ap_vld {  { present_window_1_out out_data 1 8 }  { present_window_1_out_ap_vld out_vld 1 1 } } }
	present_window_out { ap_vld {  { present_window_out out_data 1 8 }  { present_window_out_ap_vld out_vld 1 1 } } }
	arrayidx55_promoted157_out { ap_vld {  { arrayidx55_promoted157_out out_data 1 8 }  { arrayidx55_promoted157_out_ap_vld out_vld 1 1 } } }
	arrayidx46_3_promoted155_out { ap_vld {  { arrayidx46_3_promoted155_out out_data 1 8 }  { arrayidx46_3_promoted155_out_ap_vld out_vld 1 1 } } }
	arrayidx65_promoted153_out { ap_vld {  { arrayidx65_promoted153_out out_data 1 8 }  { arrayidx65_promoted153_out_ap_vld out_vld 1 1 } } }
	arrayidx61_promoted151_out { ap_vld {  { arrayidx61_promoted151_out out_data 1 8 }  { arrayidx61_promoted151_out_ap_vld out_vld 1 1 } } }
	arrayidx58_promoted149_out { ap_vld {  { arrayidx58_promoted149_out out_data 1 8 }  { arrayidx58_promoted149_out_ap_vld out_vld 1 1 } } }
}
