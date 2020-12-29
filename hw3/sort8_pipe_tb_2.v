module sort8_pipe_tb_2();
    reg clk, rst;
    reg[7:0] x0, x1, x2, x3,x4, x5, x6, x7;
    wire[7:0] y0, y1, y2, y3,y4, y5, y6, y7;
    sort8_pipe_2 sort8_pipe1(clk, rst, x0, x1, x2, x3,x4, x5, x6, x7, y0, y1, y2, y3,y4, y5, y6, y7);

initial begin
    while (1) begin
        clk = 1'b0; #15;
        clk = 1'b1; #15;
    end
end

initial begin
    rst = 1'b0;
    @(negedge clk);
    @(negedge clk);
    rst = 1'b1;
end

initial begin
    x0 = 8'h00; x1=8'h00; x2 = 8'h00; x3 = 8'h00; x4 = 8'h00; x5=8'h00; x6 = 8'h00; x7 = 8'h00;  @(posedge clk);
    x0 = 8'h00; x1=8'h00; x2 = 8'h00; x3 = 8'h00; x4 = 8'd68; x5=8'd94; x6 = 8'd41; x7 = 8'd50; @(posedge clk); 
    x0 = 8'd68; x1=8'd94; x2 = 8'd41; x3 = 8'd50; x4 = 8'd34; x5=8'd15; x6 = 8'd82; x7 = 8'd65; @(posedge clk); 
    x0 = 8'd34; x1=8'd15; x2 = 8'd82; x3 = 8'd65; x4 = 8'd89; x5=8'd20; x6 = 8'd33; x7 = 8'd51; @(posedge clk); 
	x0 = 8'd89; x1=8'd20; x2 = 8'd33; x3 = 8'd51; x4 = 8'd102; x5=8'd24; x6 = 8'd36; x7 = 8'd77;@(posedge clk); 
    x0 = 8'd102; x1=8'd24; x2 = 8'd36; x3 = 8'd77; x4 = 8'd50; x5=8'd69; x6 = 8'd13; x7 = 8'd30;@(posedge clk); 
	x0 = 8'd50; x1=8'd69; x2 = 8'd13; x3 = 8'd30;x4 = 8'd23; x5=8'd6; x6 = 8'd120; x7 = 8'd11; @(posedge clk); 
    x0 = 8'd23; x1=8'd6; x2 = 8'd120; x3 = 8'd11;x4 = 8'd45; x5=8'd54; x6 = 8'd22; x7 = 8'd5; @(posedge clk); 
    x0 = 8'd45; x1=8'd54; x2 = 8'd22; x3 = 8'd5; x4 = 8'd7; x5=8'd42; x6 = 8'd90; x7 = 8'd89;@(posedge clk); 
    x0 = 8'd7; x1=8'd42; x2 = 8'd90; x3 = 8'd89;x4 = 8'h00; x5=8'h00; x6 = 8'h00; x7 = 8'h00; @(posedge clk); 
    repeat(8)@(posedge clk); $finish;
end

always @(*) begin
    $display ("time: %t, x: %d %d %d %d %d %d %d %d - y: %d %d %d %d %d %d %d %d Pass", $time, x0, x1, x2, x3,x4, x5, x6, x7, y0, y1, y2, y3,y4, y5, y6, y7);
end
endmodule
