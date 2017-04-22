############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project square_explo
set_top Square3
add_files Desktop/explo/Square3.c
add_files -tb Desktop/explo/Square3_test.c
add_files -tb Desktop/explo/result.golden.dat
open_solution "solution1"
set_part {xc7a200tfbg484-1} -tool vivado
create_clock -period 10 -name default
#source "./square_explo/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
