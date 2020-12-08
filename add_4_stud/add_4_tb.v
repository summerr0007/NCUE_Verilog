
module add_4_tb;
  reg	[3:0] a, b;
  reg	      cin;
  wire	      cout;
  wire  [3:0] sum;

  add_4 m0 (a, b, cin, cout, sum);

  initial
      $monitor("Time: %3t ns,  Inputs: a = %2d  b = %2d  cin = %b, \
	  Outputs: cout = %b  sum = %2d", $time, a, b, cin, cout, sum);
      
  initial begin
	 #10 a = 4'd0;	b = 4'd0;	cin = 1'b0;
	 #20 a = 4'd0;	b = 4'd1;	cin = 1'b0;
	 #20 a = 4'd2;	b = 4'd1;	cin = 1'b1;
	 #20 a = 4'd4;	b = 4'd5;	cin = 1'b0;
	 #20 a = 4'd6;	b = 4'd5;	cin = 1'b1;
	 #20 a = 4'd8;	b = 4'd9;	cin = 1'b0;
	 #20 a = 4'd10;	b = 4'd9;	cin = 1'b1;
	 #20 a = 4'd12;	b = 4'd13;	cin = 1'b0;
	 #20 a = 4'd14;	b = 4'd13;	cin = 1'b1;
	 #20 $finish;
	end  
endmodule
