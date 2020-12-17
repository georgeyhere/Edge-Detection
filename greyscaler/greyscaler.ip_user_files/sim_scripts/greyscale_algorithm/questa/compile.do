vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_16
vlib questa_lib/msim/floating_point_v7_1_9
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 questa_lib/msim/mult_gen_v12_0_16
vmap floating_point_v7_1_9 questa_lib/msim/floating_point_v7_1_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/b795/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_9 -64 -93 \
"../../../../greyscaler.srcs/sources_1/bd/greyscale_algorithm/ipshared/f7b4/hdl/floating_point_v7_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_0_0/sim/greyscale_algorithm_floating_point_0_0.vhd" \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_1_0/sim/greyscale_algorithm_floating_point_1_0.vhd" \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_2_0/sim/greyscale_algorithm_floating_point_2_0.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/greyscale_algorithm/sim/greyscale_algorithm.v" \

vlog -work xil_defaultlib \
"glbl.v"

