/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Mon Aug 16 18:23:49 2021
/////////////////////////////////////////////////////////////


module s27 ( GND, VDD, RST, CLK, G0, G1, G17, G2, G3 );
  input GND, VDD, RST, CLK, G0, G1, G2, G3;
  output G17;
  wire   G5, G6, G7, DFF_0_N3, DFF_2_N3, DFF_1_N3, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18;

  DFFPOSX1 DFF_0_Q_reg ( .D(DFF_0_N3), .CLK(CLK), .Q(G5) );
  DFFPOSX1 DFF_2_Q_reg ( .D(DFF_2_N3), .CLK(CLK), .Q(G7) );
  DFFPOSX1 DFF_1_Q_reg ( .D(n11), .CLK(CLK), .Q(G6) );
  BUFX2 U10 ( .A(n14), .Y(n7) );
  AND2X1 U11 ( .A(G6), .B(n17), .Y(n16) );
  INVX1 U12 ( .A(n16), .Y(n8) );
  OR2X1 U13 ( .A(G5), .B(n10), .Y(n18) );
  INVX1 U14 ( .A(n18), .Y(n9) );
  AND2X1 U15 ( .A(G3), .B(n12), .Y(n15) );
  INVX1 U16 ( .A(n15), .Y(n10) );
  OR2X1 U17 ( .A(RST), .B(G17), .Y(DFF_1_N3) );
  INVX1 U18 ( .A(DFF_1_N3), .Y(n11) );
  OR2X1 U19 ( .A(G1), .B(G7), .Y(n13) );
  INVX1 U20 ( .A(n13), .Y(n12) );
  NOR3X1 U21 ( .A(n12), .B(RST), .C(G2), .Y(DFF_2_N3) );
  INVX1 U22 ( .A(n7), .Y(G17) );
  AOI21X1 U23 ( .A(n10), .B(n8), .C(G5), .Y(n14) );
  NOR3X1 U24 ( .A(n17), .B(RST), .C(n9), .Y(DFF_0_N3) );
  INVX1 U25 ( .A(G0), .Y(n17) );
endmodule

