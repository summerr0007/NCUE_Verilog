module sort8_tb;
	reg [7:0] x0,x1,x2,x3,x4,x5,x6,x7;
	wire [7:0] y0,y1,y2,y3,y4,y5,y6,y7;
	sort8 m0(x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7);
	initial $monitor ("Time = %3t ns, x0 = %2d, x1 = %2d, x2 = %2d, x3 = %2d, x4 = %2d, x5 = %2d, x6 = %2d, x7 = %2d, y0 = %2d, y1 = %2d, y2 = %2d, y3 = %2d, y4 = %2d, y5 = %2d, y6 = %2d, y7 = %2d",$time,x0,x1,x2,x3,x4,x5,x6,x7,y0,y1,y2,y3,y4,y5,y6,y7);
	initial begin
		#0  x0 = 8'd28; x1 = 8'd34; x2 = 8'd15; x3 = 8'd34; x4 = 8'd12; x5 = 8'd27; x6 = 8'd8; x7 = 8'd55;
		#20 x0 = 8'd10; x1 = 8'd13; x2 = 8'd56; x3 = 8'd21; x4 = 8'd30; x5 = 8'd69; x6 = 8'd18; x7 = 8'd64;
		#20 x0 = 8'd15; x1 = 8'd8; x2 = 8'd47; x3 = 8'd67; x4 = 8'd46; x5 = 8'd12; x6 = 8'd55; x7 = 8'd20;
		#20 $finish;
	end
endmodule 