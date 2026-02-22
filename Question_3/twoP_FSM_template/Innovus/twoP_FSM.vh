/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Fri Feb 20 04:08:06 2026
/////////////////////////////////////////////////////////////


module fsmd_top ( clka, clkb, RESTART, LOAD, NOT_IN, DATA, DO, STATE, 
        ctrl_clear, ctrl_ld, ctrl_not );
  input [3:0] DATA;
  output [3:0] DO;
  output [2:0] STATE;
  input clka, clkb, RESTART, LOAD, NOT_IN;
  output ctrl_clear, ctrl_ld, ctrl_not;
  wire   \ctrl_inst/n25 , \ctrl_inst/n24 , \ctrl_inst/n23 , \ctrl_inst/n22 ,
         \ctrl_inst/n21 , \ctrl_inst/n20 , \ctrl_inst/n19 , \ctrl_inst/n18 ,
         \ctrl_inst/n17 , \ctrl_inst/n16 , \ctrl_inst/n15 , \ctrl_inst/n14 ,
         \ctrl_inst/n13 , \ctrl_inst/n12 , \ctrl_inst/n11 , \ctrl_inst/n10 ,
         \ctrl_inst/n9 , \ctrl_inst/n8 , \ctrl_inst/n7 , \ctrl_inst/n6 ,
         \ctrl_inst/n5 , \ctrl_inst/n4 , \ctrl_inst/n3 , \ctrl_inst/n2 ,
         \ctrl_inst/n1 , \ctrl_inst/N43 , \ctrl_inst/N42 , \ctrl_inst/N41 ,
         \dp_inst/n18 , \dp_inst/n17 , \dp_inst/n16 , \dp_inst/n15 ,
         \dp_inst/n14 , \dp_inst/n13 , \dp_inst/n12 , \dp_inst/n11 ,
         \dp_inst/n10 , \dp_inst/n9 , \dp_inst/n8 , \dp_inst/n7 , \dp_inst/n6 ,
         \dp_inst/n5 , \dp_inst/n4 , \dp_inst/n3 , \dp_inst/n2 , \dp_inst/n1 ;
  wire   [2:0] \ctrl_inst/next_state ;

  NOR2X1 \ctrl_inst/U30  ( .A(\ctrl_inst/n9 ), .B(\ctrl_inst/n6 ), .Y(
        \ctrl_inst/n17 ) );
  NAND2X1 \ctrl_inst/U29  ( .A(STATE[0]), .B(LOAD), .Y(\ctrl_inst/n16 ) );
  OAI21X1 \ctrl_inst/U28  ( .A(\ctrl_inst/n17 ), .B(LOAD), .C(\ctrl_inst/n16 ), 
        .Y(\ctrl_inst/n22 ) );
  NAND3X1 \ctrl_inst/U27  ( .A(\ctrl_inst/n7 ), .B(\ctrl_inst/n4 ), .C(
        STATE[1]), .Y(\ctrl_inst/n12 ) );
  NOR2X1 \ctrl_inst/U26  ( .A(RESTART), .B(STATE[1]), .Y(\ctrl_inst/n15 ) );
  OAI21X1 \ctrl_inst/U25  ( .A(STATE[0]), .B(\ctrl_inst/n8 ), .C(
        \ctrl_inst/n4 ), .Y(\ctrl_inst/n21 ) );
  NAND2X1 \ctrl_inst/U24  ( .A(\ctrl_inst/n15 ), .B(\ctrl_inst/n21 ), .Y(
        \ctrl_inst/n20 ) );
  OAI21X1 \ctrl_inst/U23  ( .A(\ctrl_inst/n5 ), .B(\ctrl_inst/n12 ), .C(
        \ctrl_inst/n20 ), .Y(\ctrl_inst/N41 ) );
  AOI21X1 \ctrl_inst/U22  ( .A(\ctrl_inst/n8 ), .B(\ctrl_inst/n9 ), .C(
        \ctrl_inst/n6 ), .Y(\ctrl_inst/n18 ) );
  NAND3X1 \ctrl_inst/U21  ( .A(STATE[0]), .B(\ctrl_inst/n4 ), .C(
        \ctrl_inst/n15 ), .Y(\ctrl_inst/n19 ) );
  OAI21X1 \ctrl_inst/U20  ( .A(\ctrl_inst/n18 ), .B(\ctrl_inst/n12 ), .C(
        \ctrl_inst/n19 ), .Y(\ctrl_inst/N42 ) );
  NAND2X1 \ctrl_inst/U19  ( .A(\ctrl_inst/n17 ), .B(\ctrl_inst/n8 ), .Y(
        \ctrl_inst/n13 ) );
  NAND3X1 \ctrl_inst/U18  ( .A(\ctrl_inst/n15 ), .B(\ctrl_inst/n16 ), .C(
        STATE[2]), .Y(\ctrl_inst/n14 ) );
  OAI21X1 \ctrl_inst/U17  ( .A(\ctrl_inst/n12 ), .B(\ctrl_inst/n13 ), .C(
        \ctrl_inst/n14 ), .Y(\ctrl_inst/N43 ) );
  NAND2X1 \ctrl_inst/U16  ( .A(\ctrl_inst/n3 ), .B(\ctrl_inst/n2 ), .Y(
        \ctrl_inst/n11 ) );
  NOR2X1 \ctrl_inst/U15  ( .A(\ctrl_inst/n1 ), .B(\ctrl_inst/n11 ), .Y(
        \ctrl_inst/n25 ) );
  NAND2X1 \ctrl_inst/U14  ( .A(\ctrl_inst/n2 ), .B(\ctrl_inst/n1 ), .Y(
        \ctrl_inst/n10 ) );
  NOR2X1 \ctrl_inst/U13  ( .A(\ctrl_inst/next_state [0]), .B(\ctrl_inst/n10 ), 
        .Y(\ctrl_inst/n24 ) );
  NOR2X1 \ctrl_inst/U12  ( .A(\ctrl_inst/n3 ), .B(\ctrl_inst/n10 ), .Y(
        \ctrl_inst/n23 ) );
  INVX2 \ctrl_inst/U11  ( .A(NOT_IN), .Y(\ctrl_inst/n9 ) );
  INVX2 \ctrl_inst/U10  ( .A(LOAD), .Y(\ctrl_inst/n8 ) );
  INVX2 \ctrl_inst/U9  ( .A(RESTART), .Y(\ctrl_inst/n7 ) );
  INVX2 \ctrl_inst/U8  ( .A(STATE[0]), .Y(\ctrl_inst/n6 ) );
  INVX2 \ctrl_inst/U7  ( .A(\ctrl_inst/n22 ), .Y(\ctrl_inst/n5 ) );
  INVX2 \ctrl_inst/U6  ( .A(STATE[2]), .Y(\ctrl_inst/n4 ) );
  INVX2 \ctrl_inst/U5  ( .A(\ctrl_inst/next_state [0]), .Y(\ctrl_inst/n3 ) );
  INVX2 \ctrl_inst/U4  ( .A(\ctrl_inst/next_state [1]), .Y(\ctrl_inst/n2 ) );
  INVX2 \ctrl_inst/U3  ( .A(\ctrl_inst/next_state [2]), .Y(\ctrl_inst/n1 ) );
  DFFNEGX1 \ctrl_inst/ctrl_ld_reg  ( .D(\ctrl_inst/n23 ), .CLK(clkb), .Q(
        ctrl_ld) );
  DFFNEGX1 \ctrl_inst/ctrl_clear_reg  ( .D(\ctrl_inst/n24 ), .CLK(clkb), .Q(
        ctrl_clear) );
  DFFNEGX1 \ctrl_inst/ctrl_not_reg  ( .D(\ctrl_inst/n25 ), .CLK(clkb), .Q(
        ctrl_not) );
  DFFNEGX1 \ctrl_inst/next_state_reg[0]  ( .D(\ctrl_inst/N41 ), .CLK(clka), 
        .Q(\ctrl_inst/next_state [0]) );
  DFFNEGX1 \ctrl_inst/state_reg[2]  ( .D(\ctrl_inst/next_state [2]), .CLK(clkb), .Q(STATE[2]) );
  DFFNEGX1 \ctrl_inst/next_state_reg[2]  ( .D(\ctrl_inst/N43 ), .CLK(clka), 
        .Q(\ctrl_inst/next_state [2]) );
  DFFNEGX1 \ctrl_inst/state_reg[1]  ( .D(\ctrl_inst/next_state [1]), .CLK(clkb), .Q(STATE[1]) );
  DFFNEGX1 \ctrl_inst/next_state_reg[1]  ( .D(\ctrl_inst/N42 ), .CLK(clka), 
        .Q(\ctrl_inst/next_state [1]) );
  DFFNEGX1 \ctrl_inst/state_reg[0]  ( .D(\ctrl_inst/next_state [0]), .CLK(clkb), .Q(STATE[0]) );
  NAND3X1 \dp_inst/U20  ( .A(\dp_inst/n5 ), .B(\dp_inst/n6 ), .C(ctrl_not), 
        .Y(\dp_inst/n14 ) );
  NAND3X1 \dp_inst/U19  ( .A(\dp_inst/n5 ), .B(\dp_inst/n6 ), .C(\dp_inst/n14 ), .Y(\dp_inst/n9 ) );
  NOR2X1 \dp_inst/U18  ( .A(\dp_inst/n6 ), .B(ctrl_clear), .Y(\dp_inst/n11 )
         );
  AOI22X1 \dp_inst/U17  ( .A(\dp_inst/n4 ), .B(\dp_inst/n3 ), .C(DATA[0]), .D(
        \dp_inst/n11 ), .Y(\dp_inst/n13 ) );
  OAI21X1 \dp_inst/U16  ( .A(\dp_inst/n9 ), .B(\dp_inst/n3 ), .C(\dp_inst/n13 ), .Y(\dp_inst/n18 ) );
  AOI22X1 \dp_inst/U15  ( .A(\dp_inst/n4 ), .B(\dp_inst/n2 ), .C(DATA[1]), .D(
        \dp_inst/n11 ), .Y(\dp_inst/n12 ) );
  OAI21X1 \dp_inst/U14  ( .A(\dp_inst/n9 ), .B(\dp_inst/n2 ), .C(\dp_inst/n12 ), .Y(\dp_inst/n17 ) );
  AOI22X1 \dp_inst/U13  ( .A(\dp_inst/n4 ), .B(\dp_inst/n1 ), .C(DATA[2]), .D(
        \dp_inst/n11 ), .Y(\dp_inst/n10 ) );
  OAI21X1 \dp_inst/U12  ( .A(\dp_inst/n9 ), .B(\dp_inst/n1 ), .C(\dp_inst/n10 ), .Y(\dp_inst/n16 ) );
  XOR2X1 \dp_inst/U11  ( .A(ctrl_not), .B(DO[3]), .Y(\dp_inst/n8 ) );
  AOI22X1 \dp_inst/U10  ( .A(ctrl_ld), .B(DATA[3]), .C(\dp_inst/n8 ), .D(
        \dp_inst/n6 ), .Y(\dp_inst/n7 ) );
  NOR2X1 \dp_inst/U9  ( .A(ctrl_clear), .B(\dp_inst/n7 ), .Y(\dp_inst/n15 ) );
  INVX2 \dp_inst/U8  ( .A(ctrl_ld), .Y(\dp_inst/n6 ) );
  INVX2 \dp_inst/U7  ( .A(ctrl_clear), .Y(\dp_inst/n5 ) );
  INVX2 \dp_inst/U6  ( .A(\dp_inst/n14 ), .Y(\dp_inst/n4 ) );
  INVX2 \dp_inst/U5  ( .A(DO[0]), .Y(\dp_inst/n3 ) );
  INVX2 \dp_inst/U4  ( .A(DO[1]), .Y(\dp_inst/n2 ) );
  INVX2 \dp_inst/U3  ( .A(DO[2]), .Y(\dp_inst/n1 ) );
  DFFNEGX1 \dp_inst/dout_reg[0]  ( .D(\dp_inst/n18 ), .CLK(clkb), .Q(DO[0]) );
  DFFNEGX1 \dp_inst/dout_reg[1]  ( .D(\dp_inst/n17 ), .CLK(clkb), .Q(DO[1]) );
  DFFNEGX1 \dp_inst/dout_reg[2]  ( .D(\dp_inst/n16 ), .CLK(clkb), .Q(DO[2]) );
  DFFNEGX1 \dp_inst/dout_reg[3]  ( .D(\dp_inst/n15 ), .CLK(clkb), .Q(DO[3]) );
endmodule

