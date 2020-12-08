module sort2(A,B,minAB,maxAB);
	input [7:0] A,B;
	output [7:0] minAB,maxAB;
	wire s;
	
	assign  s = (A<B)?1:0;
	assign  minAB = (s==1)?A:B;
	assign  maxAB = (s == 1)?B:A;
endmodule
