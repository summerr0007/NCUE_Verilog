`timescale 1ns/100ps
//
// sequence detector for detecting 1011
// Mealy FSM
//
module sd_mealy(clk, rst, seq_in, det_out, state_out);
	input clk, rst, seq_in;
	output reg det_out;
	output [1:0] state_out;

	parameter  	
		s0=2'b00, 	// no valid seq
		s1=2'b01, 	// valid seq: 1 
		s2=2'b10, 	// valid seq: 10
		s3=2'b11; 	// valid seq: 101

	reg [1:0] CS, NS;
	// CS: current state
	// NS: next state

	assign state_out = CS;
	
	// sequential part of the Mealy FSM
	always @(posedge clk, posedge rst) begin
		#2
		if (rst==1) 
			CS = s0;
		else
			CS = NS;
	end 

	// combinational part of the Mealy FSM
	// determine the next state
	always @(CS, seq_in) begin
		#2
		case (CS) 
			s0:	NS = (seq_in==1) ? s1 : s0;
			s1:	NS = (seq_in==1) ? s1 : s2;
			s2:	NS = (seq_in==1) ? s3 : s0;
			s3:	NS = (seq_in==1) ? s1 : s2;
			default: NS = s0;
		endcase
	end

	// combinational part of the Mealy FSM
	// determine the detection output
	always @(CS, seq_in) begin 
		#2
		case (CS) 
			s0: det_out = 0;
			s1: det_out = 0;
			s2: det_out = 0;
			s3: det_out = (seq_in==1) ? 1 : 0;
			default: det_out = 0;
		endcase
	end 
endmodule
