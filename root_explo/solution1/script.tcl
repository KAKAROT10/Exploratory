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
open_solution "solution1"
set_part {xc7a200tfbg484-1} -tool vivado
create_clock -period 15 -name default
#source "./root_explo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
