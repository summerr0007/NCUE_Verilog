module sort4(x0,x1,x2,x3,y0,y1,y2,y3);
	input [7:0] x0,x1,x2,x3;
	output [7:0] y0,y1,y2,y3;
	wire [7:0] w0,w1,w2,w3,w4,w5;
	sort2 inst0(x0,x1,w0,w1);
	sort2 inst1(x2,x3,w2,w3);
	sort2 inst2(w0,w2,y0,w4);
	sort2 inst3(w1,w3,w5,y3);
	sort2 inst4(w4,w5,y1,y2);
endmodule 