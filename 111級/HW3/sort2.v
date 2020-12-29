module sort2(A, B, min, max);
	input [7:0] A, B;
	output [7:0] min, max;
	assign #2 s = (A > B)? 1'b1 : 1'b0;
	assign #2 min = (s == 1)? B : A;
	assign #2 max = (s == 1)? A : B;
endmodule;
