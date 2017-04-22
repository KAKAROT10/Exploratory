############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project root_explo
set_top Square_root
add_files Desktop/explo/Square_Root_explo.c
add_files -tb Desktop/explo/result1.golden.dat
add_files -tb Desktop/explo/square_root_test_bench2.c
open_solution "solution2"
set_part {xc7a200tfbg484-1}
create_clock -period 30 -name default
#source "./root_explo/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
