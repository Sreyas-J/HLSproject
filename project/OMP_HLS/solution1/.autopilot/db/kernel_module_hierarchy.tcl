set ModuleHierarchy {[{
"Name" : "omp_reconstruction","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_omp_reconstruction_Pipeline_init_x_fu_3663","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "init_x","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_omp_reconstruction_Pipeline_compute_G_VITIS_LOOP_254_1_fu_4027","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "compute_G_VITIS_LOOP_254_1","ID" : "4","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "dot_product_M","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "grp_omp_reconstruction_Pipeline_compute_b_fu_4087","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "compute_b","ID" : "7","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_dot_product_M_1_fu_1256","ID" : "8","Type" : "pipeline"},]},]},
	{"Name" : "grp_acd_inversion_fu_4195","ID" : "9","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_acd_inversion_Pipeline_init_mats_fu_2762","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "init_mats","ID" : "11","Type" : "pipeline"},]},
		{"Name" : "grp_acd_inversion_Pipeline_inv_d_loop_fu_2886","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "inv_d_loop","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_acd_inversion_Pipeline_calc_T_fu_2906","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "calc_T","ID" : "15","Type" : "pipeline"},]},
		{"Name" : "grp_acd_inversion_Pipeline_calc_Ginv_fu_3060","ID" : "16","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "calc_Ginv","ID" : "17","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "decomp_loop","ID" : "18","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_135_4","ID" : "19","Type" : "no"},
		{"Name" : "VITIS_LOOP_135_4","ID" : "20","Type" : "no"},
		{"Name" : "VITIS_LOOP_135_4","ID" : "21","Type" : "no"},
		{"Name" : "VITIS_LOOP_135_4","ID" : "22","Type" : "no"},
		{"Name" : "VITIS_LOOP_135_4","ID" : "23","Type" : "no"},
		{"Name" : "VITIS_LOOP_135_4","ID" : "24","Type" : "no"},]},
		{"Name" : "inv_l_loop","ID" : "25","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_149_5","ID" : "26","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_152_6","ID" : "27","Type" : "no"},]},]},]},
	{"Name" : "grp_omp_reconstruction_Pipeline_mult_theta_fu_4273","ID" : "28","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "mult_theta","ID" : "29","Type" : "pipeline"},]},
	{"Name" : "grp_omp_reconstruction_Pipeline_map_out_fu_4350","ID" : "30","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "map_out","ID" : "31","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "load_A_row","ID" : "32","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_omp_reconstruction_Pipeline_load_A_col_fu_3670","ID" : "33","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "load_A_col","ID" : "34","Type" : "pipeline"},]},]},
	{"Name" : "main_iter","ID" : "35","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_atom_selection_fu_3726","ID" : "36","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_atom_selection_Pipeline_atom_loop_fu_1118","ID" : "37","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "atom_loop","ID" : "38","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "dot_product_M","ID" : "39","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_gram_schmidt_fu_3826","ID" : "40","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "dot_product_M","ID" : "41","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "gs_outer","ID" : "42","Type" : "no",
			"SubLoops" : [
			{"Name" : "load_q","ID" : "43","Type" : "no"},]},]},
	{"Name" : "grp_dot_product_M_fu_3927","ID" : "44","Type" : "pipeline"},],
	"SubLoops" : [
	{"Name" : "store_atom","ID" : "45","Type" : "no"},
	{"Name" : "store_Q","ID" : "46","Type" : "no"},]},]
}]}