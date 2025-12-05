set SynModuleInfo {
  {SRCNAME omp_reconstruction_Pipeline_init_x MODELNAME omp_reconstruction_Pipeline_init_x RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_init_x
    SUBMODULES {
      {MODELNAME omp_reconstruction_flow_control_loop_pipe_sequential_init RTLNAME omp_reconstruction_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME omp_reconstruction_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME omp_reconstruction_Pipeline_load_A_col MODELNAME omp_reconstruction_Pipeline_load_A_col RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_load_A_col}
  {SRCNAME dot_product_M MODELNAME dot_product_M RTLNAME omp_reconstruction_dot_product_M
    SUBMODULES {
      {MODELNAME omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_0 RTLNAME omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_0 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_0 RTLNAME omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_0 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME atom_selection_Pipeline_atom_loop MODELNAME atom_selection_Pipeline_atom_loop RTLNAME omp_reconstruction_atom_selection_Pipeline_atom_loop
    SUBMODULES {
      {MODELNAME omp_reconstruction_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME omp_reconstruction_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME atom_selection MODELNAME atom_selection RTLNAME omp_reconstruction_atom_selection}
  {SRCNAME gram_schmidt MODELNAME gram_schmidt RTLNAME omp_reconstruction_gram_schmidt
    SUBMODULES {
      {MODELNAME omp_reconstruction_fsqrt_32ns_32ns_32_5_no_dsp_1 RTLNAME omp_reconstruction_fsqrt_32ns_32ns_32_5_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_mux_48_6_32_1_1 RTLNAME omp_reconstruction_mux_48_6_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME omp_reconstruction_Pipeline_compute_G_VITIS_LOOP_254_1 MODELNAME omp_reconstruction_Pipeline_compute_G_VITIS_LOOP_254_1 RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_compute_G_VITIS_LOOP_254_1}
  {SRCNAME dot_product_M.1 MODELNAME dot_product_M_1 RTLNAME omp_reconstruction_dot_product_M_1
    SUBMODULES {
      {MODELNAME omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME omp_reconstruction_Pipeline_compute_b MODELNAME omp_reconstruction_Pipeline_compute_b RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_compute_b}
  {SRCNAME acd_inversion_Pipeline_init_mats MODELNAME acd_inversion_Pipeline_init_mats RTLNAME omp_reconstruction_acd_inversion_Pipeline_init_mats}
  {SRCNAME acd_inversion_Pipeline_inv_d_loop MODELNAME acd_inversion_Pipeline_inv_d_loop RTLNAME omp_reconstruction_acd_inversion_Pipeline_inv_d_loop
    SUBMODULES {
      {MODELNAME omp_reconstruction_mux_8_3_32_1_1 RTLNAME omp_reconstruction_mux_8_3_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME acd_inversion_Pipeline_calc_T MODELNAME acd_inversion_Pipeline_calc_T RTLNAME omp_reconstruction_acd_inversion_Pipeline_calc_T}
  {SRCNAME acd_inversion_Pipeline_calc_Ginv MODELNAME acd_inversion_Pipeline_calc_Ginv RTLNAME omp_reconstruction_acd_inversion_Pipeline_calc_Ginv
    SUBMODULES {
      {MODELNAME omp_reconstruction_acd_inversion_Pipeline_calc_Ginv_L_inv_02_ROM_AUTO_1R RTLNAME omp_reconstruction_acd_inversion_Pipeline_calc_Ginv_L_inv_02_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME acd_inversion MODELNAME acd_inversion RTLNAME omp_reconstruction_acd_inversion
    SUBMODULES {
      {MODELNAME omp_reconstruction_acd_inversion_L_RAM_AUTO_1R1W RTLNAME omp_reconstruction_acd_inversion_L_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME omp_reconstruction_Pipeline_mult_theta MODELNAME omp_reconstruction_Pipeline_mult_theta RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_mult_theta}
  {SRCNAME omp_reconstruction_Pipeline_map_out MODELNAME omp_reconstruction_Pipeline_map_out RTLNAME omp_reconstruction_omp_reconstruction_Pipeline_map_out}
  {SRCNAME omp_reconstruction MODELNAME omp_reconstruction RTLNAME omp_reconstruction IS_TOP 1
    SUBMODULES {
      {MODELNAME omp_reconstruction_faddfsub_32ns_32ns_32_2_full_dsp_1 RTLNAME omp_reconstruction_faddfsub_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_fdiv_32ns_32ns_32_6_no_dsp_1 RTLNAME omp_reconstruction_fdiv_32ns_32ns_32_6_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_A_local_RAM_AUTO_1R1W RTLNAME omp_reconstruction_A_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_Q_RAM_AUTO_1R1W RTLNAME omp_reconstruction_Q_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_Selected_A_RAM_AUTO_1R1W RTLNAME omp_reconstruction_Selected_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME omp_reconstruction_gmem0_m_axi RTLNAME omp_reconstruction_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME omp_reconstruction_gmem1_m_axi RTLNAME omp_reconstruction_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME omp_reconstruction_gmem2_m_axi RTLNAME omp_reconstruction_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME omp_reconstruction_control_s_axi RTLNAME omp_reconstruction_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
