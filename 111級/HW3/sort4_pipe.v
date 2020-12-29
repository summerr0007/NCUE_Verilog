module sort4_pipe(clk, rst, x0, x1, x2, x3, y0, y1, y2, y3);
   input clk, rst;
    input [7:0] x0, x1, x2, x3;
    output [7:0] y0, y1, y2, y3;

    wire [7:0] a0,b0,c0,d0,e0,f0;
    wire [7:0] a1,b1,c1,d1,e1,f1;
    wire [7:0] a2,b2,c2,d2,e2,f2;
    wire [7:0] a3,b3,c3,d3,e3,f3;

    dff r00 (x0, clk, rst, a0);
    dff r01 (x1, clk, rst, a1);
    dff r02 (x2, clk, rst, a2);
    dff r03 (x3, clk, rst, a3);

    sort2 s00 (a0, a1, b0, b1);
    sort2 s01 (a2, a3, b2, b3);

    dff r10 (b0, clk, rst, c0);
    dff r11 (b1, clk, rst, c1);
    dff r12 (b2, clk, rst, c2);
    dff r13 (b3, clk, rst, c3);

    sort2 s10 (c0, c2, d0, d2);
    sort2 s11 (c1, c3, d1, d3);

    dff r20 (d0, clk, rst, e0);
    dff r21 (d1, clk, rst, e1);
    dff r22 (d2, clk, rst, e2);
    dff r23 (d3, clk, rst, e3);

    sort2 s20 (e1, e2, f1, f2);

    dff r30 (e0, clk, rst, y0);
    dff r31 (f1, clk, rst, y1);
    dff r32 (f2, clk, rst, y2);
    dff r33 (e3, clk, rst, y3);
endmodule