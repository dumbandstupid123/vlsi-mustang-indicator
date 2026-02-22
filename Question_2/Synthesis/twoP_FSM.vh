/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Feb 19 23:13:53 2026
/////////////////////////////////////////////////////////////


module twoP_FSM ( clka, clkb, RESTART, LEFT, RIGHT, BRAKE, L0, L1, L2, R0, R1, 
        R2, ERROR, state );
  output [3:0] state;
  input clka, clkb, RESTART, LEFT, RIGHT, BRAKE;
  output L0, L1, L2, R0, R1, R2, ERROR;
  wire   N70, N71, N72, N114, N115, N119, n2, n3, n6, n7, n8, n9, n10, n11,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n24, n25, n26, n28, n29,
         n30, n31, n32, n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52;
  wire   [3:0] next_state;
  assign state[3] = 1'b0;

  DFFNEGX1 \state_reg[0]  ( .D(next_state[0]), .CLK(n52), .Q(state[0]) );
  DFFNEGX1 \next_state_reg[1]  ( .D(N71), .CLK(clka), .Q(next_state[1]) );
  DFFNEGX1 \state_reg[1]  ( .D(next_state[1]), .CLK(n52), .Q(state[1]) );
  DFFNEGX1 \next_state_reg[2]  ( .D(N72), .CLK(clka), .Q(next_state[2]) );
  DFFNEGX1 \state_reg[2]  ( .D(next_state[2]), .CLK(n52), .Q(state[2]) );
  DFFNEGX1 \next_state_reg[0]  ( .D(N70), .CLK(clka), .Q(next_state[0]) );
  DFFNEGX1 ERROR_reg ( .D(N114), .CLK(n52), .Q(ERROR) );
  DFFNEGX1 R2_reg ( .D(n2), .CLK(n52), .Q(R2) );
  DFFNEGX1 R1_reg ( .D(N119), .CLK(n52), .Q(R1) );
  DFFNEGX1 R0_reg ( .D(n50), .CLK(n52), .Q(R0) );
  DFFNEGX1 L2_reg ( .D(n49), .CLK(n52), .Q(L2) );
  DFFNEGX1 L0_reg ( .D(N115), .CLK(n52), .Q(L0) );
  DFFNEGX1 L1_reg ( .D(n3), .CLK(n52), .Q(L1) );
  INVX2 U7 ( .A(n30), .Y(n2) );
  INVX2 U8 ( .A(n31), .Y(n3) );
  INVX2 U10 ( .A(n29), .Y(n6) );
  INVX2 U11 ( .A(n47), .Y(n7) );
  INVX2 U12 ( .A(next_state[2]), .Y(n8) );
  INVX2 U13 ( .A(n39), .Y(n9) );
  INVX2 U14 ( .A(next_state[1]), .Y(n10) );
  INVX2 U15 ( .A(next_state[0]), .Y(n11) );
  INVX2 U18 ( .A(n24), .Y(n14) );
  INVX2 U19 ( .A(state[0]), .Y(n15) );
  INVX2 U20 ( .A(LEFT), .Y(n16) );
  INVX2 U21 ( .A(RIGHT), .Y(n17) );
  INVX2 U22 ( .A(BRAKE), .Y(n18) );
  NOR2X1 U23 ( .A(RESTART), .B(n19), .Y(N72) );
  AOI22X1 U24 ( .A(state[2]), .B(n20), .C(RIGHT), .D(n21), .Y(n19) );
  OAI21X1 U25 ( .A(state[0]), .B(state[1]), .C(n16), .Y(n21) );
  OAI22X1 U27 ( .A(RESTART), .B(n14), .C(n48), .D(n15), .Y(N71) );
  OAI22X1 U28 ( .A(RESTART), .B(n14), .C(n48), .D(n22), .Y(N70) );
  OAI21X1 U29 ( .A(LEFT), .B(state[2]), .C(n15), .Y(n22) );
  OAI21X1 U31 ( .A(n17), .B(n16), .C(n25), .Y(n24) );
  NAND3X1 U32 ( .A(state[1]), .B(n15), .C(n26), .Y(n25) );
  NOR2X1 U39 ( .A(n10), .B(n36), .Y(n35) );
  NAND2X1 U40 ( .A(next_state[0]), .B(n8), .Y(n36) );
  AOI21X1 U41 ( .A(n37), .B(n38), .C(n18), .Y(n34) );
  OAI21X1 U42 ( .A(RIGHT), .B(n16), .C(n7), .Y(n38) );
  NOR2X1 U43 ( .A(n6), .B(n28), .Y(n37) );
  NOR2X1 U44 ( .A(n8), .B(next_state[0]), .Y(n28) );
  NAND3X1 U45 ( .A(next_state[0]), .B(n10), .C(next_state[2]), .Y(n29) );
  NOR2X1 U46 ( .A(n11), .B(n41), .Y(N114) );
  NAND2X1 U47 ( .A(next_state[1]), .B(next_state[2]), .Y(n41) );
  NOR2X1 U50 ( .A(n10), .B(n44), .Y(n43) );
  NAND2X1 U51 ( .A(next_state[2]), .B(n11), .Y(n44) );
  AOI21X1 U52 ( .A(n45), .B(n46), .C(n18), .Y(n42) );
  OAI21X1 U53 ( .A(LEFT), .B(n17), .C(n7), .Y(n46) );
  NAND3X1 U54 ( .A(n10), .B(n8), .C(n11), .Y(n47) );
  NOR2X1 U55 ( .A(n39), .B(n32), .Y(n45) );
  NOR2X1 U56 ( .A(n10), .B(next_state[2]), .Y(n32) );
  NOR2X1 U57 ( .A(n11), .B(next_state[2]), .Y(n39) );
  OR2X2 U58 ( .A(state[1]), .B(RESTART), .Y(n48) );
  OR2X2 U59 ( .A(n34), .B(n35), .Y(n49) );
  OR2X2 U60 ( .A(n28), .B(N119), .Y(n50) );
  INVX1 U61 ( .A(clkb), .Y(n51) );
  INVX2 U62 ( .A(n51), .Y(n52) );
  NOR2X1 U63 ( .A(n42), .B(n43), .Y(n30) );
  NOR2X1 U64 ( .A(n32), .B(n49), .Y(n31) );
  INVX2 U65 ( .A(state[2]), .Y(n26) );
  INVX2 U66 ( .A(state[1]), .Y(n20) );
  NAND2X1 U67 ( .A(n9), .B(n31), .Y(N115) );
  NAND2X1 U68 ( .A(n29), .B(n30), .Y(N119) );
endmodule

