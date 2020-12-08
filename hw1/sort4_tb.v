module sort4_tb;
	reg [7:0] x0,x1,x2,x3;
	wire [7:0] y0,y1,y2,y3;
	sort4 m0(x0,x1,x2,x3,y0,y1,y2,y3);
	initial $monitor ("Time = %3t ns, x0 = %2d, x1 = %2d, x2 = %2d, x3 = %2d, y0 = %2d, y1 = %2d, y2 = %2d, y3 = %2d",$time,x0,x1,x2,x3,y0,y1,y2,y3);
	initial begin
		#0  x0 = 8'd34; x1 = 8'd9; x2 = 8'd12; x3 = 8'd27;
		#20 x0 = 8'd10; x1 = 8'd56; x2 = 8'd30; x3 = 8'd18;
		#20 x0 = 8'd67; x1 = 8'd46; x2 = 8'd55; x3 = 8'd20;
		#20 $finish;
	end
endmodule 