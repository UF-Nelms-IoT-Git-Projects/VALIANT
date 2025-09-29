/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Mon Aug 16 18:19:28 2021
/////////////////////////////////////////////////////////////


module c17 ( N1, N2, N3, N6, N7, N22, N23 );
  input N1, N2, N3, N6, N7;
  output N22, N23;
  wire   n7, n8, n9, n10, n11;

  AND2X1 U7 ( .A(N1), .B(N3), .Y(n11) );
  INVX1 U8 ( .A(n11), .Y(n7) );
  AOI21X1 U9 ( .A(n8), .B(n9), .C(n10), .Y(N23) );
  INVX1 U10 ( .A(N7), .Y(n8) );
  OAI21X1 U11 ( .A(n10), .B(n9), .C(n7), .Y(N22) );
  INVX1 U12 ( .A(N2), .Y(n9) );
  AND2X1 U13 ( .A(N6), .B(N3), .Y(n10) );
endmodule

