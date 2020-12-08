module sort8(x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7);
	input [7:0] x0,x1,x2,x3,x4,x5,x6,x7;
	output [7:0] y0,y1,y2,y3,y4,y5,y6,y7;
	wire [7:0] w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
	sort4 inst0(x0,x1,x2,x3,w0,w1,w2,w3);
	sort4 inst1(x4,x5,x6,x7,w4,w5,w6,w7);
	sort4 inst2(w0,w1,w4,w5,y0,y1,w8,w9);
	sort4 inst3(w2,w3,w6,w7,w10,w11,y6,y7);
	sort4 inst4(w8,w9,w10,w11,y2,y3,y4,y5);
endmodule 