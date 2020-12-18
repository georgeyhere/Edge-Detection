vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/floating_point_v7_1_9
vlib riviera/xil_defaultlib

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap floating_point_v7_1_9 riviera/floating_point_v7_1_9
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/b795/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_9 -93 \
"../../../../greyscale.srcs/sources_1/bd/greyscale_algorithm/ipshared/f7b4/hdl/floating_point_v7_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_0_0/sim/greyscale_algorithm_floating_point_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_greyscale_input_0_0/sim/greyscale_algorithm_greyscale_input_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_1_0/sim/greyscale_algorithm_floating_point_1_0.vhd" \
"../../../bd/greyscale_algorithm/ip/greyscale_algorithm_floating_point_2_0/sim/greyscale_algorithm_floating_point_2_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/greyscale_algorithm/sim/greyscale_algorithm.v" \

vlog -work xil_defaultlib \
"glbl.v"

