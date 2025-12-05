set moduleName acd_inversion_Pipeline_inv_d_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {acd_inversion_Pipeline_inv_d_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ D float 32 regular  }
	{ D_1 float 32 regular  }
	{ D_2 float 32 regular  }
	{ D_3 float 32 regular  }
	{ D_4 float 32 regular  }
	{ D_5 float 32 regular  }
	{ D_6 float 32 regular  }
	{ D_7 float 32 regular  }
	{ D_inv_7_out float 32 regular {pointer 1}  }
	{ D_inv_6_out float 32 regular {pointer 1}  }
	{ D_inv_5_out float 32 regular {pointer 1}  }
	{ D_inv_4_out float 32 regular {pointer 1}  }
	{ D_inv_3_out float 32 regular {pointer 1}  }
	{ D_inv_2_out float 32 regular {pointer 1}  }
	{ D_inv_1_out float 32 regular {pointer 1}  }
	{ D_inv_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "D", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D_inv_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_inv_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ D sc_in sc_lv 32 signal 0 } 
	{ D_1 sc_in sc_lv 32 signal 1 } 
	{ D_2 sc_in sc_lv 32 signal 2 } 
	{ D_3 sc_in sc_lv 32 signal 3 } 
	{ D_4 sc_in sc_lv 32 signal 4 } 
	{ D_5 sc_in sc_lv 32 signal 5 } 
	{ D_6 sc_in sc_lv 32 signal 6 } 
	{ D_7 sc_in sc_lv 32 signal 7 } 
	{ D_inv_7_out sc_out sc_lv 32 signal 8 } 
	{ D_inv_7_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ D_inv_6_out sc_out sc_lv 32 signal 9 } 
	{ D_inv_6_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ D_inv_5_out sc_out sc_lv 32 signal 10 } 
	{ D_inv_5_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ D_inv_4_out sc_out sc_lv 32 signal 11 } 
	{ D_inv_4_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ D_inv_3_out sc_out sc_lv 32 signal 12 } 
	{ D_inv_3_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ D_inv_2_out sc_out sc_lv 32 signal 13 } 
	{ D_inv_2_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ D_inv_1_out sc_out sc_lv 32 signal 14 } 
	{ D_inv_1_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ D_inv_out sc_out sc_lv 32 signal 15 } 
	{ D_inv_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ grp_fu_3300_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3300_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_3300_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_3300_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "D", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "default" }} , 
 	{ "name": "D_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "default" }} , 
 	{ "name": "D_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "default" }} , 
 	{ "name": "D_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "default" }} , 
 	{ "name": "D_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_4", "role": "default" }} , 
 	{ "name": "D_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_5", "role": "default" }} , 
 	{ "name": "D_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_6", "role": "default" }} , 
 	{ "name": "D_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_7", "role": "default" }} , 
 	{ "name": "D_inv_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_7_out", "role": "default" }} , 
 	{ "name": "D_inv_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_7_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_6_out", "role": "default" }} , 
 	{ "name": "D_inv_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_6_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_5_out", "role": "default" }} , 
 	{ "name": "D_inv_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_5_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_4_out", "role": "default" }} , 
 	{ "name": "D_inv_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_4_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_3_out", "role": "default" }} , 
 	{ "name": "D_inv_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_3_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_2_out", "role": "default" }} , 
 	{ "name": "D_inv_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_2_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_1_out", "role": "default" }} , 
 	{ "name": "D_inv_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_1_out", "role": "ap_vld" }} , 
 	{ "name": "D_inv_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_inv_out", "role": "default" }} , 
 	{ "name": "D_inv_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "D_inv_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_3300_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3300_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3300_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3300_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3300_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_3300_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3300_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3300_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "acd_inversion_Pipeline_inv_d_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "D_inv_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "D_inv_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "inv_d_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1116", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	acd_inversion_Pipeline_inv_d_loop {
		D {Type I LastRead 0 FirstWrite -1}
		D_1 {Type I LastRead 0 FirstWrite -1}
		D_2 {Type I LastRead 0 FirstWrite -1}
		D_3 {Type I LastRead 0 FirstWrite -1}
		D_4 {Type I LastRead 0 FirstWrite -1}
		D_5 {Type I LastRead 0 FirstWrite -1}
		D_6 {Type I LastRead 0 FirstWrite -1}
		D_7 {Type I LastRead 0 FirstWrite -1}
		D_inv_7_out {Type O LastRead -1 FirstWrite 4}
		D_inv_6_out {Type O LastRead -1 FirstWrite 4}
		D_inv_5_out {Type O LastRead -1 FirstWrite 4}
		D_inv_4_out {Type O LastRead -1 FirstWrite 4}
		D_inv_3_out {Type O LastRead -1 FirstWrite 4}
		D_inv_2_out {Type O LastRead -1 FirstWrite 4}
		D_inv_1_out {Type O LastRead -1 FirstWrite 4}
		D_inv_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	D { ap_none {  { D in_data 0 32 } } }
	D_1 { ap_none {  { D_1 in_data 0 32 } } }
	D_2 { ap_none {  { D_2 in_data 0 32 } } }
	D_3 { ap_none {  { D_3 in_data 0 32 } } }
	D_4 { ap_none {  { D_4 in_data 0 32 } } }
	D_5 { ap_none {  { D_5 in_data 0 32 } } }
	D_6 { ap_none {  { D_6 in_data 0 32 } } }
	D_7 { ap_none {  { D_7 in_data 0 32 } } }
	D_inv_7_out { ap_vld {  { D_inv_7_out out_data 1 32 }  { D_inv_7_out_ap_vld out_vld 1 1 } } }
	D_inv_6_out { ap_vld {  { D_inv_6_out out_data 1 32 }  { D_inv_6_out_ap_vld out_vld 1 1 } } }
	D_inv_5_out { ap_vld {  { D_inv_5_out out_data 1 32 }  { D_inv_5_out_ap_vld out_vld 1 1 } } }
	D_inv_4_out { ap_vld {  { D_inv_4_out out_data 1 32 }  { D_inv_4_out_ap_vld out_vld 1 1 } } }
	D_inv_3_out { ap_vld {  { D_inv_3_out out_data 1 32 }  { D_inv_3_out_ap_vld out_vld 1 1 } } }
	D_inv_2_out { ap_vld {  { D_inv_2_out out_data 1 32 }  { D_inv_2_out_ap_vld out_vld 1 1 } } }
	D_inv_1_out { ap_vld {  { D_inv_1_out out_data 1 32 }  { D_inv_1_out_ap_vld out_vld 1 1 } } }
	D_inv_out { ap_vld {  { D_inv_out out_data 1 32 }  { D_inv_out_ap_vld out_vld 1 1 } } }
}
