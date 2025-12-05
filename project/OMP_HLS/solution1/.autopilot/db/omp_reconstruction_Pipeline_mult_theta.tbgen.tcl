set moduleName omp_reconstruction_Pipeline_mult_theta
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
set C_modelName {omp_reconstruction_Pipeline_mult_theta}
set C_modelType { void 0 }
set C_modelArgList {
	{ G_inv_load float 32 regular  }
	{ G_inv_8_load float 32 regular  }
	{ G_inv_16_load float 32 regular  }
	{ G_inv_24_load float 32 regular  }
	{ G_inv_32_load float 32 regular  }
	{ G_inv_40_load float 32 regular  }
	{ G_inv_48_load float 32 regular  }
	{ G_inv_56_load float 32 regular  }
	{ b_reload float 32 regular  }
	{ G_inv_1_load float 32 regular  }
	{ G_inv_9_load float 32 regular  }
	{ G_inv_17_load float 32 regular  }
	{ G_inv_25_load float 32 regular  }
	{ G_inv_33_load float 32 regular  }
	{ G_inv_41_load float 32 regular  }
	{ G_inv_49_load float 32 regular  }
	{ G_inv_57_load float 32 regular  }
	{ b_1_reload float 32 regular  }
	{ G_inv_2_load float 32 regular  }
	{ G_inv_10_load float 32 regular  }
	{ G_inv_18_load float 32 regular  }
	{ G_inv_26_load float 32 regular  }
	{ G_inv_34_load float 32 regular  }
	{ G_inv_42_load float 32 regular  }
	{ G_inv_50_load float 32 regular  }
	{ G_inv_58_load float 32 regular  }
	{ b_2_reload float 32 regular  }
	{ G_inv_3_load float 32 regular  }
	{ G_inv_11_load float 32 regular  }
	{ G_inv_19_load float 32 regular  }
	{ G_inv_27_load float 32 regular  }
	{ G_inv_35_load float 32 regular  }
	{ G_inv_43_load float 32 regular  }
	{ G_inv_51_load float 32 regular  }
	{ G_inv_59_load float 32 regular  }
	{ b_3_reload float 32 regular  }
	{ G_inv_4_load float 32 regular  }
	{ G_inv_12_load float 32 regular  }
	{ G_inv_20_load float 32 regular  }
	{ G_inv_28_load float 32 regular  }
	{ G_inv_36_load float 32 regular  }
	{ G_inv_44_load float 32 regular  }
	{ G_inv_52_load float 32 regular  }
	{ G_inv_60_load float 32 regular  }
	{ b_4_reload float 32 regular  }
	{ G_inv_5_load float 32 regular  }
	{ G_inv_13_load float 32 regular  }
	{ G_inv_21_load float 32 regular  }
	{ G_inv_29_load float 32 regular  }
	{ G_inv_37_load float 32 regular  }
	{ G_inv_45_load float 32 regular  }
	{ G_inv_53_load float 32 regular  }
	{ G_inv_61_load float 32 regular  }
	{ b_5_reload float 32 regular  }
	{ G_inv_6_load float 32 regular  }
	{ G_inv_14_load float 32 regular  }
	{ G_inv_22_load float 32 regular  }
	{ G_inv_30_load float 32 regular  }
	{ G_inv_38_load float 32 regular  }
	{ G_inv_46_load float 32 regular  }
	{ G_inv_54_load float 32 regular  }
	{ G_inv_62_load float 32 regular  }
	{ b_6_reload float 32 regular  }
	{ G_inv_7_load float 32 regular  }
	{ G_inv_15_load float 32 regular  }
	{ G_inv_23_load float 32 regular  }
	{ G_inv_31_load float 32 regular  }
	{ G_inv_39_load float 32 regular  }
	{ G_inv_47_load float 32 regular  }
	{ G_inv_55_load float 32 regular  }
	{ G_inv_63_load float 32 regular  }
	{ b_7_reload float 32 regular  }
	{ theta float 32 regular {array 8 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "G_inv_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_8_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_16_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_24_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_32_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_40_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_48_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_56_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_9_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_17_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_25_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_33_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_41_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_49_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_57_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_10_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_18_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_26_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_34_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_42_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_50_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_58_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_11_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_19_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_27_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_35_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_43_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_51_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_59_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_12_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_20_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_28_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_36_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_44_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_52_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_60_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_13_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_21_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_29_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_37_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_45_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_53_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_61_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_6_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_14_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_22_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_30_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_38_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_46_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_54_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_62_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_7_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_15_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_23_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_31_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_39_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_47_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_55_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "G_inv_63_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "theta", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 154
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ G_inv_load sc_in sc_lv 32 signal 0 } 
	{ G_inv_8_load sc_in sc_lv 32 signal 1 } 
	{ G_inv_16_load sc_in sc_lv 32 signal 2 } 
	{ G_inv_24_load sc_in sc_lv 32 signal 3 } 
	{ G_inv_32_load sc_in sc_lv 32 signal 4 } 
	{ G_inv_40_load sc_in sc_lv 32 signal 5 } 
	{ G_inv_48_load sc_in sc_lv 32 signal 6 } 
	{ G_inv_56_load sc_in sc_lv 32 signal 7 } 
	{ b_reload sc_in sc_lv 32 signal 8 } 
	{ G_inv_1_load sc_in sc_lv 32 signal 9 } 
	{ G_inv_9_load sc_in sc_lv 32 signal 10 } 
	{ G_inv_17_load sc_in sc_lv 32 signal 11 } 
	{ G_inv_25_load sc_in sc_lv 32 signal 12 } 
	{ G_inv_33_load sc_in sc_lv 32 signal 13 } 
	{ G_inv_41_load sc_in sc_lv 32 signal 14 } 
	{ G_inv_49_load sc_in sc_lv 32 signal 15 } 
	{ G_inv_57_load sc_in sc_lv 32 signal 16 } 
	{ b_1_reload sc_in sc_lv 32 signal 17 } 
	{ G_inv_2_load sc_in sc_lv 32 signal 18 } 
	{ G_inv_10_load sc_in sc_lv 32 signal 19 } 
	{ G_inv_18_load sc_in sc_lv 32 signal 20 } 
	{ G_inv_26_load sc_in sc_lv 32 signal 21 } 
	{ G_inv_34_load sc_in sc_lv 32 signal 22 } 
	{ G_inv_42_load sc_in sc_lv 32 signal 23 } 
	{ G_inv_50_load sc_in sc_lv 32 signal 24 } 
	{ G_inv_58_load sc_in sc_lv 32 signal 25 } 
	{ b_2_reload sc_in sc_lv 32 signal 26 } 
	{ G_inv_3_load sc_in sc_lv 32 signal 27 } 
	{ G_inv_11_load sc_in sc_lv 32 signal 28 } 
	{ G_inv_19_load sc_in sc_lv 32 signal 29 } 
	{ G_inv_27_load sc_in sc_lv 32 signal 30 } 
	{ G_inv_35_load sc_in sc_lv 32 signal 31 } 
	{ G_inv_43_load sc_in sc_lv 32 signal 32 } 
	{ G_inv_51_load sc_in sc_lv 32 signal 33 } 
	{ G_inv_59_load sc_in sc_lv 32 signal 34 } 
	{ b_3_reload sc_in sc_lv 32 signal 35 } 
	{ G_inv_4_load sc_in sc_lv 32 signal 36 } 
	{ G_inv_12_load sc_in sc_lv 32 signal 37 } 
	{ G_inv_20_load sc_in sc_lv 32 signal 38 } 
	{ G_inv_28_load sc_in sc_lv 32 signal 39 } 
	{ G_inv_36_load sc_in sc_lv 32 signal 40 } 
	{ G_inv_44_load sc_in sc_lv 32 signal 41 } 
	{ G_inv_52_load sc_in sc_lv 32 signal 42 } 
	{ G_inv_60_load sc_in sc_lv 32 signal 43 } 
	{ b_4_reload sc_in sc_lv 32 signal 44 } 
	{ G_inv_5_load sc_in sc_lv 32 signal 45 } 
	{ G_inv_13_load sc_in sc_lv 32 signal 46 } 
	{ G_inv_21_load sc_in sc_lv 32 signal 47 } 
	{ G_inv_29_load sc_in sc_lv 32 signal 48 } 
	{ G_inv_37_load sc_in sc_lv 32 signal 49 } 
	{ G_inv_45_load sc_in sc_lv 32 signal 50 } 
	{ G_inv_53_load sc_in sc_lv 32 signal 51 } 
	{ G_inv_61_load sc_in sc_lv 32 signal 52 } 
	{ b_5_reload sc_in sc_lv 32 signal 53 } 
	{ G_inv_6_load sc_in sc_lv 32 signal 54 } 
	{ G_inv_14_load sc_in sc_lv 32 signal 55 } 
	{ G_inv_22_load sc_in sc_lv 32 signal 56 } 
	{ G_inv_30_load sc_in sc_lv 32 signal 57 } 
	{ G_inv_38_load sc_in sc_lv 32 signal 58 } 
	{ G_inv_46_load sc_in sc_lv 32 signal 59 } 
	{ G_inv_54_load sc_in sc_lv 32 signal 60 } 
	{ G_inv_62_load sc_in sc_lv 32 signal 61 } 
	{ b_6_reload sc_in sc_lv 32 signal 62 } 
	{ G_inv_7_load sc_in sc_lv 32 signal 63 } 
	{ G_inv_15_load sc_in sc_lv 32 signal 64 } 
	{ G_inv_23_load sc_in sc_lv 32 signal 65 } 
	{ G_inv_31_load sc_in sc_lv 32 signal 66 } 
	{ G_inv_39_load sc_in sc_lv 32 signal 67 } 
	{ G_inv_47_load sc_in sc_lv 32 signal 68 } 
	{ G_inv_55_load sc_in sc_lv 32 signal 69 } 
	{ G_inv_63_load sc_in sc_lv 32 signal 70 } 
	{ b_7_reload sc_in sc_lv 32 signal 71 } 
	{ theta_address0 sc_out sc_lv 3 signal 72 } 
	{ theta_ce0 sc_out sc_logic 1 signal 72 } 
	{ theta_we0 sc_out sc_logic 1 signal 72 } 
	{ theta_d0 sc_out sc_lv 32 signal 72 } 
	{ grp_fu_4359_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4359_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4359_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4359_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4359_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4363_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4363_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4363_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4363_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4363_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4367_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4367_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4367_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4367_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4367_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4371_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4371_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4371_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4371_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4371_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4375_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4375_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4375_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4375_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4375_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4379_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4379_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4379_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4379_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4379_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4383_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4383_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4383_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4383_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4383_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4387_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4387_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4387_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_4387_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4387_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4551_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4551_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4551_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4551_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4555_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4555_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4555_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4555_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4559_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4559_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4559_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4559_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4563_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4563_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4563_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4563_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4567_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4567_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4567_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4567_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4571_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4571_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4571_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4571_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4575_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4575_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4575_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4575_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4579_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4579_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4579_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4579_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "G_inv_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_load", "role": "default" }} , 
 	{ "name": "G_inv_8_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_8_load", "role": "default" }} , 
 	{ "name": "G_inv_16_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_16_load", "role": "default" }} , 
 	{ "name": "G_inv_24_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_24_load", "role": "default" }} , 
 	{ "name": "G_inv_32_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_32_load", "role": "default" }} , 
 	{ "name": "G_inv_40_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_40_load", "role": "default" }} , 
 	{ "name": "G_inv_48_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_48_load", "role": "default" }} , 
 	{ "name": "G_inv_56_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_56_load", "role": "default" }} , 
 	{ "name": "b_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_reload", "role": "default" }} , 
 	{ "name": "G_inv_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_1_load", "role": "default" }} , 
 	{ "name": "G_inv_9_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_9_load", "role": "default" }} , 
 	{ "name": "G_inv_17_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_17_load", "role": "default" }} , 
 	{ "name": "G_inv_25_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_25_load", "role": "default" }} , 
 	{ "name": "G_inv_33_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_33_load", "role": "default" }} , 
 	{ "name": "G_inv_41_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_41_load", "role": "default" }} , 
 	{ "name": "G_inv_49_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_49_load", "role": "default" }} , 
 	{ "name": "G_inv_57_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_57_load", "role": "default" }} , 
 	{ "name": "b_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1_reload", "role": "default" }} , 
 	{ "name": "G_inv_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_2_load", "role": "default" }} , 
 	{ "name": "G_inv_10_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_10_load", "role": "default" }} , 
 	{ "name": "G_inv_18_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_18_load", "role": "default" }} , 
 	{ "name": "G_inv_26_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_26_load", "role": "default" }} , 
 	{ "name": "G_inv_34_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_34_load", "role": "default" }} , 
 	{ "name": "G_inv_42_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_42_load", "role": "default" }} , 
 	{ "name": "G_inv_50_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_50_load", "role": "default" }} , 
 	{ "name": "G_inv_58_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_58_load", "role": "default" }} , 
 	{ "name": "b_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2_reload", "role": "default" }} , 
 	{ "name": "G_inv_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_3_load", "role": "default" }} , 
 	{ "name": "G_inv_11_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_11_load", "role": "default" }} , 
 	{ "name": "G_inv_19_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_19_load", "role": "default" }} , 
 	{ "name": "G_inv_27_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_27_load", "role": "default" }} , 
 	{ "name": "G_inv_35_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_35_load", "role": "default" }} , 
 	{ "name": "G_inv_43_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_43_load", "role": "default" }} , 
 	{ "name": "G_inv_51_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_51_load", "role": "default" }} , 
 	{ "name": "G_inv_59_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_59_load", "role": "default" }} , 
 	{ "name": "b_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3_reload", "role": "default" }} , 
 	{ "name": "G_inv_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_4_load", "role": "default" }} , 
 	{ "name": "G_inv_12_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_12_load", "role": "default" }} , 
 	{ "name": "G_inv_20_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_20_load", "role": "default" }} , 
 	{ "name": "G_inv_28_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_28_load", "role": "default" }} , 
 	{ "name": "G_inv_36_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_36_load", "role": "default" }} , 
 	{ "name": "G_inv_44_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_44_load", "role": "default" }} , 
 	{ "name": "G_inv_52_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_52_load", "role": "default" }} , 
 	{ "name": "G_inv_60_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_60_load", "role": "default" }} , 
 	{ "name": "b_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4_reload", "role": "default" }} , 
 	{ "name": "G_inv_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_5_load", "role": "default" }} , 
 	{ "name": "G_inv_13_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_13_load", "role": "default" }} , 
 	{ "name": "G_inv_21_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_21_load", "role": "default" }} , 
 	{ "name": "G_inv_29_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_29_load", "role": "default" }} , 
 	{ "name": "G_inv_37_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_37_load", "role": "default" }} , 
 	{ "name": "G_inv_45_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_45_load", "role": "default" }} , 
 	{ "name": "G_inv_53_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_53_load", "role": "default" }} , 
 	{ "name": "G_inv_61_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_61_load", "role": "default" }} , 
 	{ "name": "b_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5_reload", "role": "default" }} , 
 	{ "name": "G_inv_6_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_6_load", "role": "default" }} , 
 	{ "name": "G_inv_14_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_14_load", "role": "default" }} , 
 	{ "name": "G_inv_22_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_22_load", "role": "default" }} , 
 	{ "name": "G_inv_30_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_30_load", "role": "default" }} , 
 	{ "name": "G_inv_38_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_38_load", "role": "default" }} , 
 	{ "name": "G_inv_46_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_46_load", "role": "default" }} , 
 	{ "name": "G_inv_54_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_54_load", "role": "default" }} , 
 	{ "name": "G_inv_62_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_62_load", "role": "default" }} , 
 	{ "name": "b_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6_reload", "role": "default" }} , 
 	{ "name": "G_inv_7_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_7_load", "role": "default" }} , 
 	{ "name": "G_inv_15_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_15_load", "role": "default" }} , 
 	{ "name": "G_inv_23_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_23_load", "role": "default" }} , 
 	{ "name": "G_inv_31_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_31_load", "role": "default" }} , 
 	{ "name": "G_inv_39_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_39_load", "role": "default" }} , 
 	{ "name": "G_inv_47_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_47_load", "role": "default" }} , 
 	{ "name": "G_inv_55_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_55_load", "role": "default" }} , 
 	{ "name": "G_inv_63_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_inv_63_load", "role": "default" }} , 
 	{ "name": "b_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7_reload", "role": "default" }} , 
 	{ "name": "theta_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "theta", "role": "address0" }} , 
 	{ "name": "theta_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "theta", "role": "ce0" }} , 
 	{ "name": "theta_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "theta", "role": "we0" }} , 
 	{ "name": "theta_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "theta", "role": "d0" }} , 
 	{ "name": "grp_fu_4359_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4359_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4359_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4359_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4359_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4359_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4359_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4359_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4359_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4359_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4363_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4363_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4363_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4363_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4363_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4363_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4363_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4363_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4363_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4363_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4367_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4367_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4367_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4367_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4367_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4367_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4367_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4367_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4367_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4367_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4371_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4371_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4371_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4371_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4371_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4371_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4371_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4371_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4371_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4371_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4375_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4375_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4375_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4375_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4375_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4375_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4375_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4375_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4375_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4375_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4379_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4379_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4379_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4379_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4379_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4379_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4379_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4379_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4379_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4379_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4383_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4383_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4383_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4383_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4383_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4383_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4383_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4383_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4383_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4383_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4387_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4387_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4387_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4387_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4387_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4387_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4387_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4387_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4387_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4387_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4551_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4551_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4551_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4551_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4551_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4551_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4551_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4551_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4555_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4555_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4555_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4555_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4555_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4555_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4555_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4555_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4559_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4559_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4559_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4559_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4559_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4559_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4559_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4559_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4563_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4563_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4563_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4563_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4563_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4563_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4563_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4563_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4567_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4567_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4567_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4567_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4567_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4567_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4567_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4567_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4571_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4571_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4571_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4571_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4571_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4571_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4571_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4571_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4575_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4575_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4575_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4575_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4575_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4575_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4575_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4575_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4579_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4579_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4579_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4579_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4579_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4579_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4579_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4579_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "omp_reconstruction_Pipeline_mult_theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "G_inv_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_16_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_24_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_32_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_40_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_48_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_56_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_17_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_25_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_33_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_41_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_49_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_57_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_18_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_26_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_34_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_42_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_50_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_58_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_19_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_27_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_35_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_43_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_51_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_59_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_20_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_28_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_36_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_44_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_52_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_60_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_21_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_29_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_37_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_45_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_53_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_61_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_22_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_30_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_38_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_46_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_54_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_62_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_23_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_31_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_39_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_47_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_55_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "G_inv_63_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "theta", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "mult_theta", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1753", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1754", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1755", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1756", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1757", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1758", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1759", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_32_1_1_U1760", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	omp_reconstruction_Pipeline_mult_theta {
		G_inv_load {Type I LastRead 0 FirstWrite -1}
		G_inv_8_load {Type I LastRead 0 FirstWrite -1}
		G_inv_16_load {Type I LastRead 0 FirstWrite -1}
		G_inv_24_load {Type I LastRead 0 FirstWrite -1}
		G_inv_32_load {Type I LastRead 0 FirstWrite -1}
		G_inv_40_load {Type I LastRead 0 FirstWrite -1}
		G_inv_48_load {Type I LastRead 0 FirstWrite -1}
		G_inv_56_load {Type I LastRead 0 FirstWrite -1}
		b_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_1_load {Type I LastRead 0 FirstWrite -1}
		G_inv_9_load {Type I LastRead 0 FirstWrite -1}
		G_inv_17_load {Type I LastRead 0 FirstWrite -1}
		G_inv_25_load {Type I LastRead 0 FirstWrite -1}
		G_inv_33_load {Type I LastRead 0 FirstWrite -1}
		G_inv_41_load {Type I LastRead 0 FirstWrite -1}
		G_inv_49_load {Type I LastRead 0 FirstWrite -1}
		G_inv_57_load {Type I LastRead 0 FirstWrite -1}
		b_1_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_2_load {Type I LastRead 0 FirstWrite -1}
		G_inv_10_load {Type I LastRead 0 FirstWrite -1}
		G_inv_18_load {Type I LastRead 0 FirstWrite -1}
		G_inv_26_load {Type I LastRead 0 FirstWrite -1}
		G_inv_34_load {Type I LastRead 0 FirstWrite -1}
		G_inv_42_load {Type I LastRead 0 FirstWrite -1}
		G_inv_50_load {Type I LastRead 0 FirstWrite -1}
		G_inv_58_load {Type I LastRead 0 FirstWrite -1}
		b_2_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_3_load {Type I LastRead 0 FirstWrite -1}
		G_inv_11_load {Type I LastRead 0 FirstWrite -1}
		G_inv_19_load {Type I LastRead 0 FirstWrite -1}
		G_inv_27_load {Type I LastRead 0 FirstWrite -1}
		G_inv_35_load {Type I LastRead 0 FirstWrite -1}
		G_inv_43_load {Type I LastRead 0 FirstWrite -1}
		G_inv_51_load {Type I LastRead 0 FirstWrite -1}
		G_inv_59_load {Type I LastRead 0 FirstWrite -1}
		b_3_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_4_load {Type I LastRead 0 FirstWrite -1}
		G_inv_12_load {Type I LastRead 0 FirstWrite -1}
		G_inv_20_load {Type I LastRead 0 FirstWrite -1}
		G_inv_28_load {Type I LastRead 0 FirstWrite -1}
		G_inv_36_load {Type I LastRead 0 FirstWrite -1}
		G_inv_44_load {Type I LastRead 0 FirstWrite -1}
		G_inv_52_load {Type I LastRead 0 FirstWrite -1}
		G_inv_60_load {Type I LastRead 0 FirstWrite -1}
		b_4_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_5_load {Type I LastRead 0 FirstWrite -1}
		G_inv_13_load {Type I LastRead 0 FirstWrite -1}
		G_inv_21_load {Type I LastRead 0 FirstWrite -1}
		G_inv_29_load {Type I LastRead 0 FirstWrite -1}
		G_inv_37_load {Type I LastRead 0 FirstWrite -1}
		G_inv_45_load {Type I LastRead 0 FirstWrite -1}
		G_inv_53_load {Type I LastRead 0 FirstWrite -1}
		G_inv_61_load {Type I LastRead 0 FirstWrite -1}
		b_5_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_6_load {Type I LastRead 0 FirstWrite -1}
		G_inv_14_load {Type I LastRead 0 FirstWrite -1}
		G_inv_22_load {Type I LastRead 0 FirstWrite -1}
		G_inv_30_load {Type I LastRead 0 FirstWrite -1}
		G_inv_38_load {Type I LastRead 0 FirstWrite -1}
		G_inv_46_load {Type I LastRead 0 FirstWrite -1}
		G_inv_54_load {Type I LastRead 0 FirstWrite -1}
		G_inv_62_load {Type I LastRead 0 FirstWrite -1}
		b_6_reload {Type I LastRead 0 FirstWrite -1}
		G_inv_7_load {Type I LastRead 0 FirstWrite -1}
		G_inv_15_load {Type I LastRead 0 FirstWrite -1}
		G_inv_23_load {Type I LastRead 0 FirstWrite -1}
		G_inv_31_load {Type I LastRead 0 FirstWrite -1}
		G_inv_39_load {Type I LastRead 0 FirstWrite -1}
		G_inv_47_load {Type I LastRead 0 FirstWrite -1}
		G_inv_55_load {Type I LastRead 0 FirstWrite -1}
		G_inv_63_load {Type I LastRead 0 FirstWrite -1}
		b_7_reload {Type I LastRead 0 FirstWrite -1}
		theta {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	G_inv_load { ap_none {  { G_inv_load in_data 0 32 } } }
	G_inv_8_load { ap_none {  { G_inv_8_load in_data 0 32 } } }
	G_inv_16_load { ap_none {  { G_inv_16_load in_data 0 32 } } }
	G_inv_24_load { ap_none {  { G_inv_24_load in_data 0 32 } } }
	G_inv_32_load { ap_none {  { G_inv_32_load in_data 0 32 } } }
	G_inv_40_load { ap_none {  { G_inv_40_load in_data 0 32 } } }
	G_inv_48_load { ap_none {  { G_inv_48_load in_data 0 32 } } }
	G_inv_56_load { ap_none {  { G_inv_56_load in_data 0 32 } } }
	b_reload { ap_none {  { b_reload in_data 0 32 } } }
	G_inv_1_load { ap_none {  { G_inv_1_load in_data 0 32 } } }
	G_inv_9_load { ap_none {  { G_inv_9_load in_data 0 32 } } }
	G_inv_17_load { ap_none {  { G_inv_17_load in_data 0 32 } } }
	G_inv_25_load { ap_none {  { G_inv_25_load in_data 0 32 } } }
	G_inv_33_load { ap_none {  { G_inv_33_load in_data 0 32 } } }
	G_inv_41_load { ap_none {  { G_inv_41_load in_data 0 32 } } }
	G_inv_49_load { ap_none {  { G_inv_49_load in_data 0 32 } } }
	G_inv_57_load { ap_none {  { G_inv_57_load in_data 0 32 } } }
	b_1_reload { ap_none {  { b_1_reload in_data 0 32 } } }
	G_inv_2_load { ap_none {  { G_inv_2_load in_data 0 32 } } }
	G_inv_10_load { ap_none {  { G_inv_10_load in_data 0 32 } } }
	G_inv_18_load { ap_none {  { G_inv_18_load in_data 0 32 } } }
	G_inv_26_load { ap_none {  { G_inv_26_load in_data 0 32 } } }
	G_inv_34_load { ap_none {  { G_inv_34_load in_data 0 32 } } }
	G_inv_42_load { ap_none {  { G_inv_42_load in_data 0 32 } } }
	G_inv_50_load { ap_none {  { G_inv_50_load in_data 0 32 } } }
	G_inv_58_load { ap_none {  { G_inv_58_load in_data 0 32 } } }
	b_2_reload { ap_none {  { b_2_reload in_data 0 32 } } }
	G_inv_3_load { ap_none {  { G_inv_3_load in_data 0 32 } } }
	G_inv_11_load { ap_none {  { G_inv_11_load in_data 0 32 } } }
	G_inv_19_load { ap_none {  { G_inv_19_load in_data 0 32 } } }
	G_inv_27_load { ap_none {  { G_inv_27_load in_data 0 32 } } }
	G_inv_35_load { ap_none {  { G_inv_35_load in_data 0 32 } } }
	G_inv_43_load { ap_none {  { G_inv_43_load in_data 0 32 } } }
	G_inv_51_load { ap_none {  { G_inv_51_load in_data 0 32 } } }
	G_inv_59_load { ap_none {  { G_inv_59_load in_data 0 32 } } }
	b_3_reload { ap_none {  { b_3_reload in_data 0 32 } } }
	G_inv_4_load { ap_none {  { G_inv_4_load in_data 0 32 } } }
	G_inv_12_load { ap_none {  { G_inv_12_load in_data 0 32 } } }
	G_inv_20_load { ap_none {  { G_inv_20_load in_data 0 32 } } }
	G_inv_28_load { ap_none {  { G_inv_28_load in_data 0 32 } } }
	G_inv_36_load { ap_none {  { G_inv_36_load in_data 0 32 } } }
	G_inv_44_load { ap_none {  { G_inv_44_load in_data 0 32 } } }
	G_inv_52_load { ap_none {  { G_inv_52_load in_data 0 32 } } }
	G_inv_60_load { ap_none {  { G_inv_60_load in_data 0 32 } } }
	b_4_reload { ap_none {  { b_4_reload in_data 0 32 } } }
	G_inv_5_load { ap_none {  { G_inv_5_load in_data 0 32 } } }
	G_inv_13_load { ap_none {  { G_inv_13_load in_data 0 32 } } }
	G_inv_21_load { ap_none {  { G_inv_21_load in_data 0 32 } } }
	G_inv_29_load { ap_none {  { G_inv_29_load in_data 0 32 } } }
	G_inv_37_load { ap_none {  { G_inv_37_load in_data 0 32 } } }
	G_inv_45_load { ap_none {  { G_inv_45_load in_data 0 32 } } }
	G_inv_53_load { ap_none {  { G_inv_53_load in_data 0 32 } } }
	G_inv_61_load { ap_none {  { G_inv_61_load in_data 0 32 } } }
	b_5_reload { ap_none {  { b_5_reload in_data 0 32 } } }
	G_inv_6_load { ap_none {  { G_inv_6_load in_data 0 32 } } }
	G_inv_14_load { ap_none {  { G_inv_14_load in_data 0 32 } } }
	G_inv_22_load { ap_none {  { G_inv_22_load in_data 0 32 } } }
	G_inv_30_load { ap_none {  { G_inv_30_load in_data 0 32 } } }
	G_inv_38_load { ap_none {  { G_inv_38_load in_data 0 32 } } }
	G_inv_46_load { ap_none {  { G_inv_46_load in_data 0 32 } } }
	G_inv_54_load { ap_none {  { G_inv_54_load in_data 0 32 } } }
	G_inv_62_load { ap_none {  { G_inv_62_load in_data 0 32 } } }
	b_6_reload { ap_none {  { b_6_reload in_data 0 32 } } }
	G_inv_7_load { ap_none {  { G_inv_7_load in_data 0 32 } } }
	G_inv_15_load { ap_none {  { G_inv_15_load in_data 0 32 } } }
	G_inv_23_load { ap_none {  { G_inv_23_load in_data 0 32 } } }
	G_inv_31_load { ap_none {  { G_inv_31_load in_data 0 32 } } }
	G_inv_39_load { ap_none {  { G_inv_39_load in_data 0 32 } } }
	G_inv_47_load { ap_none {  { G_inv_47_load in_data 0 32 } } }
	G_inv_55_load { ap_none {  { G_inv_55_load in_data 0 32 } } }
	G_inv_63_load { ap_none {  { G_inv_63_load in_data 0 32 } } }
	b_7_reload { ap_none {  { b_7_reload in_data 0 32 } } }
	theta { ap_memory {  { theta_address0 mem_address 1 3 }  { theta_ce0 mem_ce 1 1 }  { theta_we0 mem_we 1 1 }  { theta_d0 mem_din 1 32 } } }
}
