module alu_tb;
    wire  [4:0] Y;
    reg [3:0] A,B,op;
    alu a(A,B,op,Y);
    initial
        $monitor("#Time: %3t ns ,Input: A = %4b(%2d) B = %4b(%2d) op= %2d , \
        Output : Y = %5b(%2b)",$time,A,A,B,B,op,Y,Y );

    initial begin
        #10 A = 4'b1110; B = 4'b1001; op = 4'd0;
        #10 op = 4'd1;
        #10 op = 4'd2;
        #10 op = 4'd3;
        #10 op = 4'd4;
        #10 op = 4'd5;
        #10 op = 4'd6;
        #10 op = 4'd7;
        #10 op = 4'd8;
        #10 op = 4'd9;
        #10 op = 4'd10;
        #10 op = 4'd11;
        #10 A = 4'b0101; B = 4'b1000; op = 4'd0;
        #10 op = 4'd1;
        #10 op = 4'd2;
        #10 op = 4'd3;
        #10 op = 4'd4;
        #10 op = 4'd5;
        #10 op = 4'd6;
        #10 op = 4'd7;
        #10 op = 4'd8;
        #10 op = 4'd9;
        #10 op = 4'd10;
        #10 op = 4'd11;
        #10 $finish;
        
    end

endmodule