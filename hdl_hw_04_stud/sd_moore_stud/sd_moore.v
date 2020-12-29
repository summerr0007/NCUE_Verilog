`timescale 1ns/100ps
//
// sequence detector for detecting 1011
// Moore FSM
//
module sd_moore(clk, rst, seq_in, det_out, state_out);
	input clk, rst, seq_in;
	output reg det_out;
	output [2:0] state_out;

	parameter  	
		s0=3'b000, 	// no valid bit
		s1=3'b001, 	// valid seq: 1
		s2=3'b010, 	// valid seq: 10
		s3=3'b011, 	// valid seq: 101
		s4=3'b100;	// valid seq: 1011

	reg [2:0] CS, NS;
	// CS: current state
	// NS: next state
	
	assign state_out = CS;
	
	// sequential part of the Moore FSM
	always @(posedge clk, posedge rst) begin
		#2
		if (rst==1) 
			CS = s0;
		else
			CS = NS;
	end 

	// combinational part of the Moore FSM
	// determine the next state
	always @(CS, seq_in) begin
		#2
		case (CS) 
			s0:	NS = (seq_in==1) ? s1 : s0;
			s1:	NS = (seq_in==1) ? s1 : s2;
			s2:	NS = (seq_in==1) ? s3 : s0;
			s3:	NS = (seq_in==1) ? s4 : s2;
			s4:	NS = (seq_in==1) ? s1 : s2;
			default: NS = s0;
		endcase
	end

	// combinational part of the Moore FSM
	// determine the detection output
	always @(CS) begin 
		#2
		case (CS) 
			s0: det_out = 0;
			s1: det_out = 0;
			s2: det_out = 0;
			s3: det_out = 0;
			s4: det_out = 1;
			default: det_out = 0;
		endcase
	end 
endmodule
