module alu(A,B,op,Y);
	input [3:0]A;
	input [3:0]B;
	input [3:0]op;
	output reg [4:0]Y;

	always@(A or B or op)begin
		case(op)
			4'd0: Y = A;
			4'd1: Y = A+1;
			4'd2: Y = A+B;
			4'd3: Y = A-B;
			4'd4: Y = A&B;
			4'd5: Y = A|B;
			4'd6: Y = A^B;
			4'd7: Y = ~A;
			4'd8: Y = A<<1;
			4'd9: Y = A>>1;
			4'd10:Y = (A>B)?A:B;
			4'd11:Y = (A>B)?B:A;
		endcase
		
	end

endmodule