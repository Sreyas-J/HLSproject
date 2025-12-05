create_project prj -part xczu19eg-ffvc1760-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fdiv_32ns_32ns_32_6_no_dsp_1_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fsqrt_32ns_32ns_32_5_no_dsp_1_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fmul_32ns_32ns_32_2_max_dsp_0_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_0_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fcmp_32ns_32ns_1_1_no_dsp_1_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_fadd_32ns_32ns_32_2_full_dsp_1_ip.tcl"
source "/home/pradyumna/Documents/sem7/HLS/project/OMP_HLS/solution1/syn/verilog/omp_reconstruction_faddfsub_32ns_32ns_32_2_full_dsp_1_ip.tcl"
