#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.1.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Nov 07 19:16:16 EET 2024
# SW Build 5164865 on Thu Sep  5 14:36:28 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim counter_tb_behav -key {Behavioral:sim_1:Functional:counter_tb} -tclbatch counter_tb.tcl -log simulate.log"
xsim counter_tb_behav -key {Behavioral:sim_1:Functional:counter_tb} -tclbatch counter_tb.tcl -log simulate.log
