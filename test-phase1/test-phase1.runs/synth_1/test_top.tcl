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
create_project -in_memory -part xc7a50tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/George/Edge-Detection/test-phase1/test-phase1.cache/wt [current_project]
set_property parent.project_path C:/Users/George/Edge-Detection/test-phase1/test-phase1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/George/Edge-Detection/test-phase1/test-phase1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/new/camera_interface_input.v
  C:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/new/camera_interface_output.v
  C:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/new/camera_interface_top.v
  C:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/new/greyscale_input.v
  C:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/new/greyscale_top.v
  C:/Users/George/Edge-Detection/test-phase1/test-phase1.srcs/sources_1/new/test_top.v
}
add_files C:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/greyscale_algorithm.bd
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_0_0/greyscale_algorithm_floating_point_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_1_0/greyscale_algorithm_floating_point_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_2_0/greyscale_algorithm_floating_point_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_3_0/greyscale_algorithm_floating_point_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_4_0/greyscale_algorithm_floating_point_4_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_5_0/greyscale_algorithm_floating_point_5_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_6_0/greyscale_algorithm_floating_point_6_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/George/Edge-Detection/greyscale-v5/greyscale-v5.srcs/sources_1/bd/greyscale_algorithm/greyscale_algorithm_ooc.xdc]

add_files C:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/bd/BRAM_1_FIFO/BRAM_1_FIFO.bd
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/bd/BRAM_1_FIFO/ip/BRAM_1_FIFO_fifo_generator_0_0/BRAM_1_FIFO_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/bd/BRAM_1_FIFO/ip/BRAM_1_FIFO_fifo_generator_0_0/BRAM_1_FIFO_fifo_generator_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/bd/BRAM_1_FIFO/ip/BRAM_1_FIFO_fifo_generator_0_0/BRAM_1_FIFO_fifo_generator_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/George/Edge-Detection/camera_interface/camera_interface.srcs/sources_1/bd/BRAM_1_FIFO/BRAM_1_FIFO_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top test_top -part xc7a50tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef test_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file test_top_utilization_synth.rpt -pb test_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
