# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a200tsbv484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.cache/wt [current_project]
set_property parent.project_path D:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/cod matriz 2x2 - dados matriz 2x2.coe}}
add_files {{d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/cod multiplicacao - dados multiplicacao.coe}}
add_files {{d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/cod xor - dados xor.coe}}
read_vhdl -library xil_defaultlib D:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.srcs/sources_1/new/neanderv2.vhd
read_ip -quiet d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.srcs/sources_1/ip/memoria/memoria.xci
set_property used_in_implementation false [get_files -all d:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.srcs/sources_1/ip/memoria/memoria_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top neanderv2 -part xc7a200tsbv484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef neanderv2.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file neanderv2_utilization_synth.rpt -pb neanderv2_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]