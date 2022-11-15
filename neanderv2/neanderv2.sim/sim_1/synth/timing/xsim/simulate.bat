@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Tue Oct 12 16:38:06 -0300 2021
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim tb_neanderv2_time_synth -key {Post-Synthesis:sim_1:Timing:tb_neanderv2} -tclbatch tb_neanderv2.tcl -view D:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/tb_neanderv2_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
