-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../Gaussian.srcs/sources_1/bd/BRAM_2_greyscale/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BRAM_2_greyscale/ip/BRAM_2_greyscale_blk_mem_gen_0_0/sim/BRAM_2_greyscale_blk_mem_gen_0_0.v" \
  "../../../bd/BRAM_2_greyscale/sim/BRAM_2_greyscale.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

