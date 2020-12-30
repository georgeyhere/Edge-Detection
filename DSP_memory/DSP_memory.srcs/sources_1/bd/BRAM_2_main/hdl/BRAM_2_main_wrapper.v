//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Wed Dec 30 13:47:56 2020
//Host        : DESKTOP-MB5IJCE running 64-bit major release  (build 9200)
//Command     : generate_target BRAM_2_main_wrapper.bd
//Design      : BRAM_2_main_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BRAM_2_main_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    clka_0);
  input [10:0]BRAM_PORTA_0_addr;
  input [15:0]BRAM_PORTA_0_din;
  input BRAM_PORTA_0_en;
  input [1:0]BRAM_PORTA_0_we;
  input [10:0]BRAM_PORTB_0_addr;
  output [15:0]BRAM_PORTB_0_dout;
  input BRAM_PORTB_0_en;
  input clka_0;

  wire [10:0]BRAM_PORTA_0_addr;
  wire [15:0]BRAM_PORTA_0_din;
  wire BRAM_PORTA_0_en;
  wire [1:0]BRAM_PORTA_0_we;
  wire [10:0]BRAM_PORTB_0_addr;
  wire [15:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;
  wire clka_0;

  BRAM_2_main BRAM_2_main_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en(BRAM_PORTB_0_en),
        .clka_0(clka_0));
endmodule
