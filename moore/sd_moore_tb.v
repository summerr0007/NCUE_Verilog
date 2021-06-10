`timescale 1ns/100ps
 
module sd_moore_tb;
	parameter Half_cycle = 10;
      
	reg clk_sim, rst_sim, seq_in_sim;
	wire det_out_sim;
	wire [2:0] state_out_sim;
  
	sd_moore m0(
	.clk(clk_sim), 
	.rst(rst_sim), 
	.seq_in(seq_in_sim), 
	.det_out(det_out_sim), 
	.state_out(state_out_sim));
  
	initial
		clk_sim = 1'b0;  
	always  
		#Half_cycle clk_sim = ~clk_sim;

	initial begin
		rst_sim = 1'b1;
		#2 rst_sim = 1'b0;
	end

	initial begin
		#5 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;		
		#20 seq_in_sim = 0;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;
		#20 seq_in_sim = 1;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;
		#20 seq_in_sim = 1;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;
		#20 seq_in_sim = 0;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;
		#20 seq_in_sim = 1;		
		#20 seq_in_sim = 1;
		#20 seq_in_sim = 0;
		#60 $finish;
	end
	
	initial begin
	   $monitor("state = s%d, seq_in = %b, det_out = %b", state_out_sim, seq_in_sim, det_out_sim);
	end

endmodule
