############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Curs1
set_top output1
add_files Curs1/output1.cpp
open_solution "solution1" -flow_target vivado
set_part {xq7a100tcs324-1I}
create_clock -period 10 -name default
#source "./Curs1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
