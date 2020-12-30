//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Dec 30 13:47:56 2020
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target BRAM_2_main.bd
//Design      : BRAM_2_main
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BRAM_2_main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BRAM_2_main,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "BRAM_2_main.hwdef" *) 
module BRAM_2_main
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    clka_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1, READ_WRITE_MODE WRITE_ONLY" *) input [10:0]BRAM_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN" *) input [15:0]BRAM_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN" *) input BRAM_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE" *) input [1:0]BRAM_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1, READ_WRITE_MODE READ_ONLY" *) input [10:0]BRAM_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 DOUT" *) output [15:0]BRAM_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 EN" *) input BRAM_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKA_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKA_0, CLK_DOMAIN BRAM_2_main_clka_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clka_0;

  wire [10:0]BRAM_PORTA_0_1_ADDR;
  wire [15:0]BRAM_PORTA_0_1_DIN;
  wire BRAM_PORTA_0_1_EN;
  wire [1:0]BRAM_PORTA_0_1_WE;
  wire [10:0]BRAM_PORTB_0_1_ADDR;
  wire [15:0]BRAM_PORTB_0_1_DOUT;
  wire BRAM_PORTB_0_1_EN;
  wire clka_0_1;

  assign BRAM_PORTA_0_1_ADDR = BRAM_PORTA_0_addr[10:0];
  assign BRAM_PORTA_0_1_DIN = BRAM_PORTA_0_din[15:0];
  assign BRAM_PORTA_0_1_EN = BRAM_PORTA_0_en;
  assign BRAM_PORTA_0_1_WE = BRAM_PORTA_0_we[1:0];
  assign BRAM_PORTB_0_1_ADDR = BRAM_PORTB_0_addr[10:0];
  assign BRAM_PORTB_0_1_EN = BRAM_PORTB_0_en;
  assign BRAM_PORTB_0_dout[15:0] = BRAM_PORTB_0_1_DOUT;
  assign clka_0_1 = clka_0;
  BRAM_2_main_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(BRAM_PORTA_0_1_ADDR),
        .addrb(BRAM_PORTB_0_1_ADDR),
        .clka(clka_0_1),
        .clkb(clka_0_1),
        .dina(BRAM_PORTA_0_1_DIN),
        .doutb(BRAM_PORTB_0_1_DOUT),
        .ena(BRAM_PORTA_0_1_EN),
        .enb(BRAM_PORTB_0_1_EN),
        .wea(BRAM_PORTA_0_1_WE));
endmodule
