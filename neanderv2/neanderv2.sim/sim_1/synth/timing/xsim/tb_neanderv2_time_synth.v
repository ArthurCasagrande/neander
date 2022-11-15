// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 12 16:37:57 2021
// Host        : DESKTOP-1FIKK86 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Arthur/Faculdade/2021.1/Sistemas_Digitais_para_Computadores_A/Projetos_Vivado/Neander/neanderv2/neanderv2.sim/sim_1/synth/timing/xsim/tb_neanderv2_time_synth.v
// Design      : neanderv2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tsbv484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM256X1S_UNIQ_BASE_
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h000000000000000B),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h000000000043F2F0),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD22
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000002),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h000000000051B19A),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD23
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000002),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000640440),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD24
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000002),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h00000000004028E8),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD25
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000003),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000001010),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD26
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000003),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD27
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000003),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

module RAM256X1S_HD28
   (O,
    A,
    D,
    WCLK,
    WE);
  output O;
  input [7:0]A;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire A6;
  wire A7;
  wire D;
  wire O;
  wire O0;
  wire O1;
  wire OA;
  wire OB;
  wire OC;
  wire OD;
  wire WCLK;
  wire WE;

  assign A0 = A[0];
  assign A1 = A[1];
  assign A2 = A[2];
  assign A3 = A[3];
  assign A4 = A[4];
  assign A5 = A[5];
  assign A6 = A[6];
  assign A7 = A[7];
  MUXF7 \F7.A 
       (.I0(OB),
        .I1(OA),
        .O(O1),
        .S(A6));
  MUXF7 \F7.B 
       (.I0(OD),
        .I1(OC),
        .O(O0),
        .S(A6));
  MUXF8 F8
       (.I0(O0),
        .I1(O1),
        .O(O),
        .S(A7));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b11)) 
    RAMS64E_A
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OA),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000003),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b10)) 
    RAMS64E_B
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OB),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b01)) 
    RAMS64E_C
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OC),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
  RAMS64E #(
    .INIT(64'h0000000000254504),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b00),
    .RAM_ADDRESS_SPACE(2'b00)) 
    RAMS64E_D
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(OD),
        .WADR6(A6),
        .WADR7(A7),
        .WE(WE));
endmodule

(* CHECK_LICENSE_TYPE = "memoria,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
module memoria
   (a,
    d,
    clk,
    we,
    spo);
  input [7:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "memoria.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  memoria_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule

(* NotValidForBitStream *)
module neanderv2
   (clock,
    reset,
    start,
    done,
    saida);
  input clock;
  input reset;
  input start;
  output done;
  output [7:0]saida;

  wire \FSM_onehot_estado[0]_i_1_n_0 ;
  wire \FSM_onehot_estado[0]_i_2_n_0 ;
  wire \FSM_onehot_estado[0]_i_3_n_0 ;
  wire \FSM_onehot_estado[0]_i_4_n_0 ;
  wire \FSM_onehot_estado[0]_i_5_n_0 ;
  wire \FSM_onehot_estado[10]_i_1_n_0 ;
  wire \FSM_onehot_estado[12]_i_1_n_0 ;
  wire \FSM_onehot_estado[14]_i_1_n_0 ;
  wire \FSM_onehot_estado[15]_i_1_n_0 ;
  wire \FSM_onehot_estado[16]_i_1_n_0 ;
  wire \FSM_onehot_estado[17]_i_1_n_0 ;
  wire \FSM_onehot_estado[18]_i_1_n_0 ;
  wire \FSM_onehot_estado[19]_i_1_n_0 ;
  wire \FSM_onehot_estado[1]_i_1_n_0 ;
  wire \FSM_onehot_estado[1]_i_2_n_0 ;
  wire \FSM_onehot_estado[20]_i_1_n_0 ;
  wire \FSM_onehot_estado[21]_i_1_n_0 ;
  wire \FSM_onehot_estado[5]_i_1_n_0 ;
  wire \FSM_onehot_estado[6]_i_1_n_0 ;
  wire \FSM_onehot_estado[7]_i_1_n_0 ;
  wire \FSM_onehot_estado[7]_i_2_n_0 ;
  wire \FSM_onehot_estado[8]_i_1_n_0 ;
  wire \FSM_onehot_estado[8]_i_2_n_0 ;
  wire \FSM_onehot_estado_reg_n_0_[0] ;
  wire \FSM_onehot_estado_reg_n_0_[10] ;
  wire \FSM_onehot_estado_reg_n_0_[12] ;
  wire \FSM_onehot_estado_reg_n_0_[14] ;
  wire \FSM_onehot_estado_reg_n_0_[15] ;
  wire \FSM_onehot_estado_reg_n_0_[16] ;
  wire \FSM_onehot_estado_reg_n_0_[17] ;
  wire \FSM_onehot_estado_reg_n_0_[18] ;
  wire \FSM_onehot_estado_reg_n_0_[19] ;
  wire \FSM_onehot_estado_reg_n_0_[1] ;
  wire \FSM_onehot_estado_reg_n_0_[20] ;
  wire \FSM_onehot_estado_reg_n_0_[21] ;
  wire \FSM_onehot_estado_reg_n_0_[2] ;
  wire \FSM_onehot_estado_reg_n_0_[4] ;
  wire \FSM_onehot_estado_reg_n_0_[5] ;
  wire \FSM_onehot_estado_reg_n_0_[6] ;
  wire \FSM_onehot_estado_reg_n_0_[7] ;
  wire \FSM_onehot_estado_reg_n_0_[8] ;
  wire Z;
  wire [7:0]a;
  wire carga_ACCv;
  wire carga_PCv;
  wire carga_RegDv;
  wire carga_RegEv;
  wire carga_RegInstv;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]d;
  wire [7:0]data0;
  wire done;
  wire done_OBUF;
  wire [7:0]p_0_out;
  wire reset;
  wire reset_IBUF;
  wire [7:0]saida;
  wire \saida[0]__2_i_2_n_0 ;
  wire \saida[0]__2_i_3_n_0 ;
  wire \saida[0]__2_i_4_n_0 ;
  wire \saida[0]__2_i_5_n_0 ;
  wire \saida[0]__2_i_6_n_0 ;
  wire \saida[0]__2_i_7_n_0 ;
  wire \saida[0]_i_2_n_0 ;
  wire \saida[0]_i_3_n_0 ;
  wire \saida[1]_i_2_n_0 ;
  wire \saida[1]_i_3_n_0 ;
  wire \saida[2]__3_i_2_n_0 ;
  wire \saida[2]_i_2_n_0 ;
  wire \saida[2]_i_3_n_0 ;
  wire \saida[3]_i_10_n_0 ;
  wire \saida[3]_i_11_n_0 ;
  wire \saida[3]_i_12_n_0 ;
  wire \saida[3]_i_13_n_0 ;
  wire \saida[3]_i_2_n_0 ;
  wire \saida[3]_i_3_n_0 ;
  wire \saida[3]_i_6_n_0 ;
  wire \saida[3]_i_7_n_0 ;
  wire \saida[3]_i_8_n_0 ;
  wire \saida[3]_i_9_n_0 ;
  wire \saida[4]__1_i_2_n_0 ;
  wire \saida[4]_i_2_n_0 ;
  wire \saida[4]_i_3_n_0 ;
  wire \saida[5]_i_2_n_0 ;
  wire \saida[5]_i_3_n_0 ;
  wire \saida[6]__1_i_2_n_0 ;
  wire \saida[6]_i_10_n_0 ;
  wire \saida[6]_i_11_n_0 ;
  wire \saida[6]_i_12_n_0 ;
  wire \saida[6]_i_17_n_0 ;
  wire \saida[6]_i_18_n_0 ;
  wire \saida[6]_i_19_n_0 ;
  wire \saida[6]_i_20_n_0 ;
  wire \saida[6]_i_21_n_0 ;
  wire \saida[6]_i_22_n_0 ;
  wire \saida[6]_i_23_n_0 ;
  wire \saida[6]_i_24_n_0 ;
  wire \saida[6]_i_3_n_0 ;
  wire \saida[6]_i_5_n_0 ;
  wire \saida[6]_i_6_n_0 ;
  wire \saida[6]_i_7_n_0 ;
  wire \saida[6]_i_8_n_0 ;
  wire \saida[6]_i_9_n_0 ;
  wire \saida[7]__0_i_3_n_0 ;
  wire \saida[7]__1_i_2_n_0 ;
  wire \saida[7]_i_2_n_0 ;
  wire \saida[7]_i_3_n_0 ;
  wire [7:0]saida_MUX_PC;
  wire [7:0]saida_MUX_mem;
  wire [7:0]saida_OBUF;
  wire [7:0]saida__0;
  wire \saida_reg[0]__1_n_0 ;
  wire \saida_reg[0]__2_n_0 ;
  wire \saida_reg[1]__1_n_0 ;
  wire \saida_reg[2]__1_n_0 ;
  wire \saida_reg[3]__1_n_0 ;
  wire \saida_reg[3]_i_4_n_0 ;
  wire \saida_reg[3]_i_4_n_1 ;
  wire \saida_reg[3]_i_4_n_2 ;
  wire \saida_reg[3]_i_4_n_3 ;
  wire \saida_reg[3]_i_4_n_4 ;
  wire \saida_reg[3]_i_4_n_5 ;
  wire \saida_reg[3]_i_4_n_6 ;
  wire \saida_reg[3]_i_4_n_7 ;
  wire \saida_reg[3]_i_5_n_0 ;
  wire \saida_reg[3]_i_5_n_1 ;
  wire \saida_reg[3]_i_5_n_2 ;
  wire \saida_reg[3]_i_5_n_3 ;
  wire \saida_reg[6]_i_15_n_1 ;
  wire \saida_reg[6]_i_15_n_2 ;
  wire \saida_reg[6]_i_15_n_3 ;
  wire \saida_reg[6]_i_15_n_4 ;
  wire \saida_reg[6]_i_15_n_5 ;
  wire \saida_reg[6]_i_15_n_6 ;
  wire \saida_reg[6]_i_15_n_7 ;
  wire \saida_reg[6]_i_16_n_1 ;
  wire \saida_reg[6]_i_16_n_2 ;
  wire \saida_reg[6]_i_16_n_3 ;
  wire [7:0]saida_reg__4;
  wire sel_MUX_PCv;
  wire [2:0]sel_ULAv;
  wire [7:0]spo;
  wire start;
  wire start_IBUF;
  wire we;
  wire [3:3]\NLW_saida_reg[6]_i_15_CO_UNCONNECTED ;
  wire [3:3]\NLW_saida_reg[6]_i_16_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_neanderv2_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'hFFF8FFF8FFFFFFF8)) 
    \FSM_onehot_estado[0]_i_1 
       (.I0(\FSM_onehot_estado[0]_i_2_n_0 ),
        .I1(\FSM_onehot_estado[0]_i_3_n_0 ),
        .I2(\FSM_onehot_estado[0]_i_4_n_0 ),
        .I3(\FSM_onehot_estado[0]_i_5_n_0 ),
        .I4(\FSM_onehot_estado_reg_n_0_[0] ),
        .I5(start_IBUF),
        .O(\FSM_onehot_estado[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_estado[0]_i_2 
       (.I0(\FSM_onehot_estado_reg_n_0_[7] ),
        .I1(\saida_reg[3]__1_n_0 ),
        .I2(\saida_reg[2]__1_n_0 ),
        .O(\FSM_onehot_estado[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0434)) 
    \FSM_onehot_estado[0]_i_3 
       (.I0(saida_OBUF[7]),
        .I1(\saida_reg[0]__1_n_0 ),
        .I2(\saida_reg[1]__1_n_0 ),
        .I3(\saida_reg[0]__2_n_0 ),
        .O(\FSM_onehot_estado[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_estado[0]_i_4 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[1]__1_n_0 ),
        .I2(\saida_reg[2]__1_n_0 ),
        .I3(\FSM_onehot_estado_reg_n_0_[4] ),
        .I4(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAA8020AA)) 
    \FSM_onehot_estado[0]_i_5 
       (.I0(\FSM_onehot_estado_reg_n_0_[14] ),
        .I1(\saida_reg[0]__1_n_0 ),
        .I2(\saida_reg[3]__1_n_0 ),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\saida_reg[2]__1_n_0 ),
        .O(\FSM_onehot_estado[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBBB0000)) 
    \FSM_onehot_estado[10]_i_1 
       (.I0(\saida_reg[2]__1_n_0 ),
        .I1(\saida_reg[3]__1_n_0 ),
        .I2(\saida_reg[0]__1_n_0 ),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\FSM_onehot_estado_reg_n_0_[7] ),
        .O(\FSM_onehot_estado[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_estado[12]_i_1 
       (.I0(sel_MUX_PCv),
        .I1(\saida_reg[3]__1_n_0 ),
        .I2(\saida_reg[2]__1_n_0 ),
        .I3(\saida_reg[0]__1_n_0 ),
        .I4(\saida_reg[1]__1_n_0 ),
        .O(\FSM_onehot_estado[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \FSM_onehot_estado[14]_i_1 
       (.I0(sel_MUX_PCv),
        .I1(\saida_reg[3]__1_n_0 ),
        .I2(\saida_reg[2]__1_n_0 ),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\saida_reg[0]__1_n_0 ),
        .O(\FSM_onehot_estado[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_estado[15]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[1]__1_n_0 ),
        .I2(\FSM_onehot_estado_reg_n_0_[14] ),
        .I3(\saida_reg[3]__1_n_0 ),
        .I4(\saida_reg[2]__1_n_0 ),
        .O(\FSM_onehot_estado[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_onehot_estado[16]_i_1 
       (.I0(\saida_reg[2]__1_n_0 ),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida_reg[3]__1_n_0 ),
        .I3(\saida_reg[0]__1_n_0 ),
        .I4(\saida_reg[1]__1_n_0 ),
        .O(\FSM_onehot_estado[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_onehot_estado[17]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[2]__1_n_0 ),
        .I2(\saida_reg[1]__1_n_0 ),
        .I3(\saida_reg[3]__1_n_0 ),
        .I4(\FSM_onehot_estado_reg_n_0_[14] ),
        .O(\FSM_onehot_estado[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_onehot_estado[18]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[1]__1_n_0 ),
        .I2(\FSM_onehot_estado_reg_n_0_[14] ),
        .I3(\saida_reg[2]__1_n_0 ),
        .I4(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \FSM_onehot_estado[19]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[2]__1_n_0 ),
        .I2(\saida_reg[1]__1_n_0 ),
        .I3(\FSM_onehot_estado_reg_n_0_[14] ),
        .I4(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_estado[1]_i_1 
       (.I0(we),
        .I1(carga_ACCv),
        .I2(carga_PCv),
        .I3(\FSM_onehot_estado_reg_n_0_[6] ),
        .I4(\FSM_onehot_estado[1]_i_2_n_0 ),
        .O(\FSM_onehot_estado[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_estado[1]_i_2 
       (.I0(\FSM_onehot_estado_reg_n_0_[0] ),
        .I1(start_IBUF),
        .I2(\FSM_onehot_estado_reg_n_0_[5] ),
        .O(\FSM_onehot_estado[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_onehot_estado[20]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[1]__1_n_0 ),
        .I2(\FSM_onehot_estado_reg_n_0_[14] ),
        .I3(\saida_reg[2]__1_n_0 ),
        .I4(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \FSM_onehot_estado[21]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\saida_reg[1]__1_n_0 ),
        .I2(\saida_reg[2]__1_n_0 ),
        .I3(\saida_reg[3]__1_n_0 ),
        .I4(\FSM_onehot_estado_reg_n_0_[4] ),
        .O(\FSM_onehot_estado[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_estado[5]_i_1 
       (.I0(\saida_reg[0]__1_n_0 ),
        .I1(\FSM_onehot_estado_reg_n_0_[4] ),
        .I2(\saida_reg[1]__1_n_0 ),
        .I3(\saida_reg[2]__1_n_0 ),
        .I4(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000440400)) 
    \FSM_onehot_estado[6]_i_1 
       (.I0(\FSM_onehot_estado[8]_i_2_n_0 ),
        .I1(\FSM_onehot_estado_reg_n_0_[4] ),
        .I2(\saida_reg[0]__2_n_0 ),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\saida_reg[0]__1_n_0 ),
        .I5(saida_OBUF[7]),
        .O(\FSM_onehot_estado[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_estado[7]_i_1 
       (.I0(\FSM_onehot_estado_reg_n_0_[4] ),
        .I1(\FSM_onehot_estado[7]_i_2_n_0 ),
        .O(\FSM_onehot_estado[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFCFF0AFFFF0)) 
    \FSM_onehot_estado[7]_i_2 
       (.I0(\saida_reg[0]__2_n_0 ),
        .I1(saida_OBUF[7]),
        .I2(\saida_reg[3]__1_n_0 ),
        .I3(\saida_reg[2]__1_n_0 ),
        .I4(\saida_reg[1]__1_n_0 ),
        .I5(\saida_reg[0]__1_n_0 ),
        .O(\FSM_onehot_estado[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040004044440044)) 
    \FSM_onehot_estado[8]_i_1 
       (.I0(\FSM_onehot_estado[8]_i_2_n_0 ),
        .I1(\FSM_onehot_estado_reg_n_0_[7] ),
        .I2(saida_OBUF[7]),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\saida_reg[0]__2_n_0 ),
        .I5(\saida_reg[0]__1_n_0 ),
        .O(\FSM_onehot_estado[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_estado[8]_i_2 
       (.I0(\saida_reg[2]__1_n_0 ),
        .I1(\saida_reg[3]__1_n_0 ),
        .O(\FSM_onehot_estado[8]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_estado_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_estado[0]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(\FSM_onehot_estado_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[10]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado_reg_n_0_[10] ),
        .Q(sel_MUX_PCv));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[12]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado_reg_n_0_[12] ),
        .Q(we));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[14]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[15]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[16]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[16] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[17]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[17] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[18]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[18] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[19]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[19] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[1]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[20]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[20] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[21]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[21] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado_reg_n_0_[1] ),
        .Q(\FSM_onehot_estado_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado_reg_n_0_[2] ),
        .Q(carga_RegInstv));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(carga_RegInstv),
        .Q(\FSM_onehot_estado_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[5]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[6]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[7]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado[8]_i_1_n_0 ),
        .Q(\FSM_onehot_estado_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "t7b:0000000100000000000000,t7a:0000000001000000000000,t6b:0000000000100000000000,t8e:0001000000000000000000,t8d:0000100000000000000000,t2:0000000000000000001000,t1:0000000000000000000100,t8c:0000010000000000000000,t8b:0000001000000000000000,t0:0000000000000000000010,t6a:0000000000001000000000,s0:0000000000000000000001,t5b:0000000000010000000000,t4c:1000000000000000000000,t4b:0000000000000001000000,t8g:0100000000000000000000,t8f:0010000000000000000000,t5a:0000000000000100000000,t4d:0000000000000010000000,t4a:0000000000000000100000,t8a:0000000010000000000000,t3:0000000000000000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_estado_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_estado_reg_n_0_[8] ),
        .Q(carga_PCv));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    done_OBUF_inst_i_1
       (.I0(\saida_reg[2]__1_n_0 ),
        .I1(\saida_reg[3]__1_n_0 ),
        .I2(\FSM_onehot_estado_reg_n_0_[4] ),
        .I3(\saida_reg[1]__1_n_0 ),
        .I4(\saida_reg[0]__1_n_0 ),
        .O(done_OBUF));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
  memoria mem
       (.a(a),
        .clk(clock_IBUF_BUFG),
        .d(d),
        .spo(spo),
        .we(we));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[0]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[0]),
        .I4(saida_OBUF[0]),
        .O(saida_MUX_mem[0]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \saida[0]__2_i_1 
       (.I0(p_0_out[4]),
        .I1(p_0_out[5]),
        .I2(p_0_out[6]),
        .I3(p_0_out[7]),
        .I4(\saida[0]__2_i_2_n_0 ),
        .I5(\saida[0]__2_i_3_n_0 ),
        .O(Z));
  LUT5 #(
    .INIT(32'h00000A0B)) 
    \saida[0]__2_i_2 
       (.I0(sel_ULAv[2]),
        .I1(\saida[2]_i_3_n_0 ),
        .I2(\saida[0]__2_i_4_n_0 ),
        .I3(\saida[3]_i_3_n_0 ),
        .I4(\saida[0]__2_i_5_n_0 ),
        .O(\saida[0]__2_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000A0B)) 
    \saida[0]__2_i_3 
       (.I0(sel_ULAv[2]),
        .I1(\saida[0]_i_3_n_0 ),
        .I2(\saida[0]__2_i_6_n_0 ),
        .I3(\saida[1]_i_3_n_0 ),
        .I4(\saida[0]__2_i_7_n_0 ),
        .O(\saida[0]__2_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC005A00F000)) 
    \saida[0]__2_i_4 
       (.I0(saida_OBUF[2]),
        .I1(\saida_reg[3]_i_4_n_5 ),
        .I2(d[2]),
        .I3(sel_ULAv[2]),
        .I4(sel_ULAv[0]),
        .I5(sel_ULAv[1]),
        .O(\saida[0]__2_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC005A00F000)) 
    \saida[0]__2_i_5 
       (.I0(saida_OBUF[3]),
        .I1(\saida_reg[3]_i_4_n_4 ),
        .I2(d[3]),
        .I3(sel_ULAv[2]),
        .I4(sel_ULAv[0]),
        .I5(sel_ULAv[1]),
        .O(\saida[0]__2_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC005A00F000)) 
    \saida[0]__2_i_6 
       (.I0(saida_OBUF[0]),
        .I1(\saida_reg[3]_i_4_n_7 ),
        .I2(d[0]),
        .I3(sel_ULAv[2]),
        .I4(sel_ULAv[0]),
        .I5(sel_ULAv[1]),
        .O(\saida[0]__2_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC005A00F000)) 
    \saida[0]__2_i_7 
       (.I0(saida_OBUF[1]),
        .I1(\saida_reg[3]_i_4_n_6 ),
        .I2(d[1]),
        .I3(sel_ULAv[2]),
        .I4(sel_ULAv[0]),
        .I5(sel_ULAv[1]),
        .O(\saida[0]__2_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[0]__3_i_1 
       (.I0(d[0]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[0]),
        .O(saida_MUX_PC[0]));
  LUT6 #(
    .INIT(64'h1D1D1D1D1D1D1DE2)) 
    \saida[0]__4_i_1 
       (.I0(saida_reg__4[0]),
        .I1(carga_PCv),
        .I2(d[0]),
        .I3(\FSM_onehot_estado_reg_n_0_[6] ),
        .I4(\FSM_onehot_estado_reg_n_0_[10] ),
        .I5(\FSM_onehot_estado_reg_n_0_[2] ),
        .O(saida__0[0]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[0]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[0]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[0]_i_2_n_0 ),
        .I5(\saida[0]_i_3_n_0 ),
        .O(p_0_out[0]));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[0]_i_2 
       (.I0(saida_OBUF[0]),
        .I1(d[0]),
        .I2(\saida_reg[3]_i_4_n_7 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[0]_i_3 
       (.I0(data0[0]),
        .I1(sel_ULAv[1]),
        .I2(d[0]),
        .I3(saida_OBUF[0]),
        .I4(sel_ULAv[0]),
        .O(\saida[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[1]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[1]),
        .I4(saida_OBUF[1]),
        .O(saida_MUX_mem[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \saida[1]__2_i_1 
       (.I0(\saida[2]__3_i_2_n_0 ),
        .I1(saida_reg__4[1]),
        .I2(carga_PCv),
        .I3(d[1]),
        .O(saida__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[1]__3_i_1 
       (.I0(d[1]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[1]),
        .O(saida_MUX_PC[1]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[1]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[1]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[1]_i_2_n_0 ),
        .I5(\saida[1]_i_3_n_0 ),
        .O(p_0_out[1]));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[1]_i_2 
       (.I0(saida_OBUF[1]),
        .I1(d[1]),
        .I2(\saida_reg[3]_i_4_n_6 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[1]_i_3 
       (.I0(data0[1]),
        .I1(sel_ULAv[1]),
        .I2(d[1]),
        .I3(saida_OBUF[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[2]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[2]),
        .I4(saida_OBUF[2]),
        .O(saida_MUX_mem[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[2]__2_i_1 
       (.I0(d[2]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[2]),
        .O(saida_MUX_PC[2]));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \saida[2]__3_i_1 
       (.I0(\saida[2]__3_i_2_n_0 ),
        .I1(d[1]),
        .I2(saida_reg__4[1]),
        .I3(saida_reg__4[2]),
        .I4(carga_PCv),
        .I5(d[2]),
        .O(saida__0[2]));
  LUT6 #(
    .INIT(64'hFEFEFE000000FE00)) 
    \saida[2]__3_i_2 
       (.I0(\FSM_onehot_estado_reg_n_0_[6] ),
        .I1(\FSM_onehot_estado_reg_n_0_[10] ),
        .I2(\FSM_onehot_estado_reg_n_0_[2] ),
        .I3(saida_reg__4[0]),
        .I4(carga_PCv),
        .I5(d[0]),
        .O(\saida[2]__3_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[2]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[2]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[2]_i_2_n_0 ),
        .I5(\saida[2]_i_3_n_0 ),
        .O(p_0_out[2]));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[2]_i_2 
       (.I0(saida_OBUF[2]),
        .I1(d[2]),
        .I2(\saida_reg[3]_i_4_n_5 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[2]_i_3 
       (.I0(data0[2]),
        .I1(sel_ULAv[1]),
        .I2(d[2]),
        .I3(saida_OBUF[2]),
        .I4(sel_ULAv[0]),
        .O(\saida[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[3]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[3]),
        .I4(saida_OBUF[3]),
        .O(saida_MUX_mem[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[3]__2_i_1 
       (.I0(d[3]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[3]),
        .O(saida_MUX_PC[3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \saida[3]__3_i_1 
       (.I0(\saida[4]__1_i_2_n_0 ),
        .I1(saida_reg__4[3]),
        .I2(carga_PCv),
        .I3(d[3]),
        .O(saida__0[3]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[3]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[3]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[3]_i_2_n_0 ),
        .I5(\saida[3]_i_3_n_0 ),
        .O(p_0_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[3]_i_10 
       (.I0(saida_OBUF[3]),
        .I1(d[3]),
        .O(\saida[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[3]_i_11 
       (.I0(saida_OBUF[2]),
        .I1(d[2]),
        .O(\saida[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[3]_i_12 
       (.I0(saida_OBUF[1]),
        .I1(d[1]),
        .O(\saida[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[3]_i_13 
       (.I0(saida_OBUF[0]),
        .I1(d[0]),
        .O(\saida[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[3]_i_2 
       (.I0(saida_OBUF[3]),
        .I1(d[3]),
        .I2(\saida_reg[3]_i_4_n_4 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[3]_i_3 
       (.I0(data0[3]),
        .I1(sel_ULAv[1]),
        .I2(d[3]),
        .I3(saida_OBUF[3]),
        .I4(sel_ULAv[0]),
        .O(\saida[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[3]_i_6 
       (.I0(d[3]),
        .I1(saida_OBUF[3]),
        .O(\saida[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[3]_i_7 
       (.I0(d[2]),
        .I1(saida_OBUF[2]),
        .O(\saida[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[3]_i_8 
       (.I0(d[1]),
        .I1(saida_OBUF[1]),
        .O(\saida[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[3]_i_9 
       (.I0(d[0]),
        .I1(saida_OBUF[0]),
        .O(\saida[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[4]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[4]),
        .I4(saida_OBUF[4]),
        .O(saida_MUX_mem[4]));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \saida[4]__1_i_1 
       (.I0(\saida[4]__1_i_2_n_0 ),
        .I1(d[3]),
        .I2(saida_reg__4[3]),
        .I3(saida_reg__4[4]),
        .I4(carga_PCv),
        .I5(d[4]),
        .O(saida__0[4]));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \saida[4]__1_i_2 
       (.I0(saida_reg__4[2]),
        .I1(d[2]),
        .I2(\saida[2]__3_i_2_n_0 ),
        .I3(d[1]),
        .I4(carga_PCv),
        .I5(saida_reg__4[1]),
        .O(\saida[4]__1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[4]__2_i_1 
       (.I0(d[4]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[4]),
        .O(saida_MUX_PC[4]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[4]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[4]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[4]_i_2_n_0 ),
        .I5(\saida[4]_i_3_n_0 ),
        .O(p_0_out[4]));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[4]_i_2 
       (.I0(saida_OBUF[4]),
        .I1(d[4]),
        .I2(\saida_reg[6]_i_15_n_7 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[4]_i_3 
       (.I0(data0[4]),
        .I1(sel_ULAv[1]),
        .I2(d[4]),
        .I3(saida_OBUF[4]),
        .I4(sel_ULAv[0]),
        .O(\saida[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[5]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[5]),
        .I4(saida_OBUF[5]),
        .O(saida_MUX_mem[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \saida[5]__1_i_1 
       (.I0(\saida[6]__1_i_2_n_0 ),
        .I1(saida_reg__4[5]),
        .I2(carga_PCv),
        .I3(d[5]),
        .O(saida__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[5]__2_i_1 
       (.I0(d[5]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[5]),
        .O(saida_MUX_PC[5]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[5]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[5]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[5]_i_2_n_0 ),
        .I5(\saida[5]_i_3_n_0 ),
        .O(p_0_out[5]));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[5]_i_2 
       (.I0(saida_OBUF[5]),
        .I1(d[5]),
        .I2(\saida_reg[6]_i_15_n_6 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[5]_i_3 
       (.I0(data0[5]),
        .I1(sel_ULAv[1]),
        .I2(d[5]),
        .I3(saida_OBUF[5]),
        .I4(sel_ULAv[0]),
        .O(\saida[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[6]__0_i_1 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[6]),
        .I4(saida_OBUF[6]),
        .O(saida_MUX_mem[6]));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \saida[6]__1_i_1 
       (.I0(\saida[6]__1_i_2_n_0 ),
        .I1(d[5]),
        .I2(saida_reg__4[5]),
        .I3(saida_reg__4[6]),
        .I4(carga_PCv),
        .I5(d[6]),
        .O(saida__0[6]));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \saida[6]__1_i_2 
       (.I0(saida_reg__4[4]),
        .I1(d[4]),
        .I2(\saida[4]__1_i_2_n_0 ),
        .I3(d[3]),
        .I4(carga_PCv),
        .I5(saida_reg__4[3]),
        .O(\saida[6]__1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[6]__2_i_1 
       (.I0(d[6]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[6]),
        .O(saida_MUX_PC[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \saida[6]_i_1 
       (.I0(\FSM_onehot_estado_reg_n_0_[18] ),
        .I1(\FSM_onehot_estado_reg_n_0_[20] ),
        .I2(\FSM_onehot_estado_reg_n_0_[16] ),
        .I3(\FSM_onehot_estado_reg_n_0_[15] ),
        .I4(\saida[6]_i_3_n_0 ),
        .O(carga_ACCv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \saida[6]_i_10 
       (.I0(\FSM_onehot_estado_reg_n_0_[4] ),
        .I1(\FSM_onehot_estado_reg_n_0_[5] ),
        .I2(\FSM_onehot_estado_reg_n_0_[6] ),
        .I3(\FSM_onehot_estado_reg_n_0_[7] ),
        .O(\saida[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \saida[6]_i_11 
       (.I0(\FSM_onehot_estado_reg_n_0_[0] ),
        .I1(\FSM_onehot_estado_reg_n_0_[1] ),
        .I2(\FSM_onehot_estado_reg_n_0_[2] ),
        .I3(carga_RegInstv),
        .O(\saida[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \saida[6]_i_12 
       (.I0(\FSM_onehot_estado_reg_n_0_[15] ),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\FSM_onehot_estado_reg_n_0_[12] ),
        .O(\saida[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \saida[6]_i_13 
       (.I0(\FSM_onehot_estado_reg_n_0_[21] ),
        .I1(\FSM_onehot_estado_reg_n_0_[16] ),
        .I2(\saida[6]_i_9_n_0 ),
        .I3(\saida[6]_i_10_n_0 ),
        .I4(\saida[6]_i_11_n_0 ),
        .I5(\saida[6]_i_12_n_0 ),
        .O(sel_ULAv[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \saida[6]_i_14 
       (.I0(\FSM_onehot_estado_reg_n_0_[12] ),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[6]_i_3_n_0 ),
        .I3(\saida[6]_i_11_n_0 ),
        .I4(\saida[6]_i_10_n_0 ),
        .I5(\saida[6]_i_9_n_0 ),
        .O(sel_ULAv[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[6]_i_17 
       (.I0(d[7]),
        .I1(saida_OBUF[7]),
        .O(\saida[6]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[6]_i_18 
       (.I0(d[6]),
        .I1(saida_OBUF[6]),
        .O(\saida[6]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[6]_i_19 
       (.I0(d[5]),
        .I1(saida_OBUF[5]),
        .O(\saida[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[6]_i_2 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[6]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[6]_i_7_n_0 ),
        .I5(\saida[6]_i_8_n_0 ),
        .O(p_0_out[6]));
  LUT2 #(
    .INIT(4'h9)) 
    \saida[6]_i_20 
       (.I0(d[4]),
        .I1(saida_OBUF[4]),
        .O(\saida[6]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[6]_i_21 
       (.I0(saida_OBUF[7]),
        .I1(d[7]),
        .O(\saida[6]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[6]_i_22 
       (.I0(saida_OBUF[6]),
        .I1(d[6]),
        .O(\saida[6]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[6]_i_23 
       (.I0(saida_OBUF[5]),
        .I1(d[5]),
        .O(\saida[6]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \saida[6]_i_24 
       (.I0(saida_OBUF[4]),
        .I1(d[4]),
        .O(\saida[6]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \saida[6]_i_3 
       (.I0(\FSM_onehot_estado_reg_n_0_[19] ),
        .I1(\FSM_onehot_estado_reg_n_0_[21] ),
        .I2(\FSM_onehot_estado_reg_n_0_[17] ),
        .O(\saida[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \saida[6]_i_4 
       (.I0(\FSM_onehot_estado_reg_n_0_[20] ),
        .I1(\FSM_onehot_estado_reg_n_0_[19] ),
        .I2(\saida[6]_i_9_n_0 ),
        .I3(\saida[6]_i_10_n_0 ),
        .I4(\saida[6]_i_11_n_0 ),
        .I5(\saida[6]_i_12_n_0 ),
        .O(sel_ULAv[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \saida[6]_i_5 
       (.I0(sel_ULAv[2]),
        .I1(sel_ULAv[0]),
        .I2(sel_ULAv[1]),
        .O(\saida[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \saida[6]_i_6 
       (.I0(sel_ULAv[1]),
        .I1(sel_ULAv[0]),
        .I2(sel_ULAv[2]),
        .O(\saida[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0066F000)) 
    \saida[6]_i_7 
       (.I0(saida_OBUF[6]),
        .I1(d[6]),
        .I2(\saida_reg[6]_i_15_n_5 ),
        .I3(sel_ULAv[1]),
        .I4(sel_ULAv[0]),
        .O(\saida[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30CCEEE2)) 
    \saida[6]_i_8 
       (.I0(data0[6]),
        .I1(sel_ULAv[1]),
        .I2(d[6]),
        .I3(saida_OBUF[6]),
        .I4(sel_ULAv[0]),
        .O(\saida[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \saida[6]_i_9 
       (.I0(sel_MUX_PCv),
        .I1(\FSM_onehot_estado_reg_n_0_[10] ),
        .I2(carga_PCv),
        .I3(\FSM_onehot_estado_reg_n_0_[8] ),
        .I4(we),
        .O(\saida[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \saida[7]__0_i_1 
       (.I0(\FSM_onehot_estado_reg_n_0_[12] ),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\FSM_onehot_estado_reg_n_0_[8] ),
        .I3(\FSM_onehot_estado_reg_n_0_[10] ),
        .I4(\FSM_onehot_estado_reg_n_0_[2] ),
        .O(carga_RegDv));
  LUT5 #(
    .INIT(32'hFF01FE00)) 
    \saida[7]__0_i_2 
       (.I0(carga_ACCv),
        .I1(\FSM_onehot_estado_reg_n_0_[14] ),
        .I2(\saida[7]__0_i_3_n_0 ),
        .I3(spo[7]),
        .I4(saida_OBUF[7]),
        .O(saida_MUX_mem[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \saida[7]__0_i_3 
       (.I0(\saida[6]_i_9_n_0 ),
        .I1(\saida[6]_i_10_n_0 ),
        .I2(\FSM_onehot_estado_reg_n_0_[0] ),
        .I3(\FSM_onehot_estado_reg_n_0_[1] ),
        .I4(\FSM_onehot_estado_reg_n_0_[2] ),
        .I5(carga_RegInstv),
        .O(\saida[7]__0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h77775FA088885FA0)) 
    \saida[7]__1_i_1 
       (.I0(\saida[7]__1_i_2_n_0 ),
        .I1(d[6]),
        .I2(saida_reg__4[6]),
        .I3(saida_reg__4[7]),
        .I4(carga_PCv),
        .I5(d[7]),
        .O(saida__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \saida[7]__1_i_2 
       (.I0(saida_reg__4[5]),
        .I1(carga_PCv),
        .I2(d[5]),
        .I3(\saida[6]__1_i_2_n_0 ),
        .O(\saida[7]__1_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \saida[7]__2_i_1 
       (.I0(\FSM_onehot_estado_reg_n_0_[1] ),
        .I1(sel_MUX_PCv),
        .I2(\FSM_onehot_estado_reg_n_0_[7] ),
        .O(carga_RegEv));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \saida[7]__2_i_2 
       (.I0(d[7]),
        .I1(sel_MUX_PCv),
        .I2(saida_reg__4[7]),
        .O(saida_MUX_PC[7]));
  LUT6 #(
    .INIT(64'hFFD5D5D5FFC0C0C0)) 
    \saida[7]_i_1 
       (.I0(sel_ULAv[2]),
        .I1(\saida[6]_i_5_n_0 ),
        .I2(d[7]),
        .I3(\saida[6]_i_6_n_0 ),
        .I4(\saida[7]_i_2_n_0 ),
        .I5(\saida[7]_i_3_n_0 ),
        .O(p_0_out[7]));
  LUT5 #(
    .INIT(32'h202C2C20)) 
    \saida[7]_i_2 
       (.I0(\saida_reg[6]_i_15_n_4 ),
        .I1(sel_ULAv[0]),
        .I2(sel_ULAv[1]),
        .I3(saida_OBUF[7]),
        .I4(d[7]),
        .O(\saida[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3ECE0EC2)) 
    \saida[7]_i_3 
       (.I0(data0[7]),
        .I1(sel_ULAv[1]),
        .I2(sel_ULAv[0]),
        .I3(saida_OBUF[7]),
        .I4(d[7]),
        .O(\saida[7]_i_3_n_0 ));
  OBUF \saida_OBUF[0]_inst 
       (.I(saida_OBUF[0]),
        .O(saida[0]));
  OBUF \saida_OBUF[1]_inst 
       (.I(saida_OBUF[1]),
        .O(saida[1]));
  OBUF \saida_OBUF[2]_inst 
       (.I(saida_OBUF[2]),
        .O(saida[2]));
  OBUF \saida_OBUF[3]_inst 
       (.I(saida_OBUF[3]),
        .O(saida[3]));
  OBUF \saida_OBUF[4]_inst 
       (.I(saida_OBUF[4]),
        .O(saida[4]));
  OBUF \saida_OBUF[5]_inst 
       (.I(saida_OBUF[5]),
        .O(saida[5]));
  OBUF \saida_OBUF[6]_inst 
       (.I(saida_OBUF[6]),
        .O(saida[6]));
  OBUF \saida_OBUF[7]_inst 
       (.I(saida_OBUF[7]),
        .O(saida[7]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[0]),
        .Q(saida_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[0]),
        .Q(d[0]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0]__1 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegInstv),
        .CLR(reset_IBUF),
        .D(d[0]),
        .Q(\saida_reg[0]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(Z),
        .Q(\saida_reg[0]__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0]__3 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[0]),
        .Q(a[0]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[0]__4 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[0]),
        .Q(saida_reg__4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[1]),
        .Q(saida_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[1]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[1]),
        .Q(d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[1]__1 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegInstv),
        .CLR(reset_IBUF),
        .D(d[1]),
        .Q(\saida_reg[1]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[1]__2 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[1]),
        .Q(saida_reg__4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[1]__3 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[1]),
        .Q(a[1]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[2]),
        .Q(saida_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[2]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[2]),
        .Q(d[2]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[2]__1 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegInstv),
        .CLR(reset_IBUF),
        .D(d[2]),
        .Q(\saida_reg[2]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[2]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[2]),
        .Q(a[2]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[2]__3 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[2]),
        .Q(saida_reg__4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[3]),
        .Q(saida_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[3]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[3]),
        .Q(d[3]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[3]__1 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegInstv),
        .CLR(reset_IBUF),
        .D(d[3]),
        .Q(\saida_reg[3]__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[3]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[3]),
        .Q(a[3]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[3]__3 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[3]),
        .Q(saida_reg__4[3]));
  CARRY4 \saida_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\saida_reg[3]_i_4_n_0 ,\saida_reg[3]_i_4_n_1 ,\saida_reg[3]_i_4_n_2 ,\saida_reg[3]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI(saida_OBUF[3:0]),
        .O({\saida_reg[3]_i_4_n_4 ,\saida_reg[3]_i_4_n_5 ,\saida_reg[3]_i_4_n_6 ,\saida_reg[3]_i_4_n_7 }),
        .S({\saida[3]_i_6_n_0 ,\saida[3]_i_7_n_0 ,\saida[3]_i_8_n_0 ,\saida[3]_i_9_n_0 }));
  CARRY4 \saida_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\saida_reg[3]_i_5_n_0 ,\saida_reg[3]_i_5_n_1 ,\saida_reg[3]_i_5_n_2 ,\saida_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(saida_OBUF[3:0]),
        .O(data0[3:0]),
        .S({\saida[3]_i_10_n_0 ,\saida[3]_i_11_n_0 ,\saida[3]_i_12_n_0 ,\saida[3]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[4]),
        .Q(saida_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[4]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[4]),
        .Q(d[4]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[4]__1 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[4]),
        .Q(saida_reg__4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[4]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[4]),
        .Q(a[4]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[5]),
        .Q(saida_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[5]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[5]),
        .Q(d[5]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[5]__1 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[5]),
        .Q(saida_reg__4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[5]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[5]),
        .Q(a[5]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[6]),
        .Q(saida_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[6]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[6]),
        .Q(d[6]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[6]__1 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[6]),
        .Q(saida_reg__4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[6]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[6]),
        .Q(a[6]));
  CARRY4 \saida_reg[6]_i_15 
       (.CI(\saida_reg[3]_i_4_n_0 ),
        .CO({\NLW_saida_reg[6]_i_15_CO_UNCONNECTED [3],\saida_reg[6]_i_15_n_1 ,\saida_reg[6]_i_15_n_2 ,\saida_reg[6]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,saida_OBUF[6:4]}),
        .O({\saida_reg[6]_i_15_n_4 ,\saida_reg[6]_i_15_n_5 ,\saida_reg[6]_i_15_n_6 ,\saida_reg[6]_i_15_n_7 }),
        .S({\saida[6]_i_17_n_0 ,\saida[6]_i_18_n_0 ,\saida[6]_i_19_n_0 ,\saida[6]_i_20_n_0 }));
  CARRY4 \saida_reg[6]_i_16 
       (.CI(\saida_reg[3]_i_5_n_0 ),
        .CO({\NLW_saida_reg[6]_i_16_CO_UNCONNECTED [3],\saida_reg[6]_i_16_n_1 ,\saida_reg[6]_i_16_n_2 ,\saida_reg[6]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,saida_OBUF[6:4]}),
        .O(data0[7:4]),
        .S({\saida[6]_i_21_n_0 ,\saida[6]_i_22_n_0 ,\saida[6]_i_23_n_0 ,\saida[6]_i_24_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(carga_ACCv),
        .CLR(reset_IBUF),
        .D(p_0_out[7]),
        .Q(saida_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[7]__0 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegDv),
        .CLR(reset_IBUF),
        .D(saida_MUX_mem[7]),
        .Q(d[7]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[7]__1 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(saida__0[7]),
        .Q(saida_reg__4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \saida_reg[7]__2 
       (.C(clock_IBUF_BUFG),
        .CE(carga_RegEv),
        .CLR(reset_IBUF),
        .D(saida_MUX_PC[7]),
        .Q(a[7]));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "memoria.mif" *) (* C_MEM_TYPE = "1" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "8" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module memoria_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [7:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [7:0]spo;
  output [7:0]dpo;
  output [7:0]qspo;
  output [7:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;

  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  memoria_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module memoria_dist_mem_gen_v8_0_12_synth
   (spo,
    clk,
    d,
    we,
    a);
  output [7:0]spo;
  input clk;
  input [7:0]d;
  input we;
  input [7:0]a;

  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;

  memoria_spram \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module memoria_spram
   (spo,
    clk,
    d,
    we,
    a);
  output [7:0]spo;
  input clk;
  input [7:0]d;
  input we;
  input [7:0]a;

  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  (* RTL_KEEP = "true" *) wire [7:0]qspo_int;
  wire [7:0]spo;
  wire we;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[0]),
        .Q(qspo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[1]),
        .Q(qspo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[2]),
        .Q(qspo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[3]),
        .Q(qspo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[4]),
        .Q(qspo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[5]),
        .Q(qspo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[6]),
        .Q(qspo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[7]),
        .Q(qspo_int[7]),
        .R(1'b0));
  (* INIT = "256'h0000000000000000000000000000000B0000000000000000000000000043F2F0" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_UNIQ_BASE_ ram_reg_0_255_0_0
       (.A(a),
        .D(d[0]),
        .O(spo[0]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h000000000000000000000000000000020000000000000000000000000051B19A" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD22 ram_reg_0_255_1_1
       (.A(a),
        .D(d[1]),
        .O(spo[1]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h0000000000000000000000000000000200000000000000000000000000640440" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD23 ram_reg_0_255_2_2
       (.A(a),
        .D(d[2]),
        .O(spo[2]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h00000000000000000000000000000002000000000000000000000000004028E8" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD24 ram_reg_0_255_3_3
       (.A(a),
        .D(d[3]),
        .O(spo[3]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h0000000000000000000000000000000300000000000000000000000000001010" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD25 ram_reg_0_255_4_4
       (.A(a),
        .D(d[4]),
        .O(spo[4]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h0000000000000000000000000000000300000000000000000000000000000000" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD26 ram_reg_0_255_5_5
       (.A(a),
        .D(d[5]),
        .O(spo[5]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h0000000000000000000000000000000300000000000000000000000000000000" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD27 ram_reg_0_255_6_6
       (.A(a),
        .D(d[6]),
        .O(spo[6]),
        .WCLK(clk),
        .WE(we));
  (* INIT = "256'h0000000000000000000000000000000300000000000000000000000000254504" *) 
  (* XILINX_REPORT_XFORM = "RAM256X1S" *) 
  RAM256X1S_HD28 ram_reg_0_255_7_7
       (.A(a),
        .D(d[7]),
        .O(spo[7]),
        .WCLK(clk),
        .WE(we));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
