module dff (data, clk, rst, q);
    input clk, rst;
    input[7:0] data;
    output[7:0] q;
    reg[7:0] q;

    always@(posedge clk or negedge rst)begin
        if (rst == 0) q[7:0] <= #2 8'b0;
        else  q[7:0] <= #2 data[7:0];
    end
endmodule
