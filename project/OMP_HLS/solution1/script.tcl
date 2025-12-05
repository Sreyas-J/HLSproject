############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project OMP_HLS
set_top omp_reconstruction
add_files src_omp.cpp
add_files -tb src_test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu19eg-ffvc1760-2-e}
create_clock -period 22 -name default
config_cosim -tool xsim -trace_level all
#source "./OMP_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
