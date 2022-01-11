`timescale 1ns / 1ps

module ALU_tb();
reg[3:0] sel;
reg [3:0] a;
reg [3:0] b;
wire [3:0] y;

ALU dut(.sel(sel),.a(a),.b(b),.y(y));

initial begin
    a=4'b1111;
    b=4'b1100;
    #20 sel=4'b0000;
    #20 sel=4'b0001;
    #20 sel=4'b0010;
    #20 sel=4'b0011;    
    #20 sel=4'b0100;
    #20 sel=4'b0101;
    #20 sel=4'b0110;
    #20 sel=4'b0111;
    #20 sel=4'b1000;
    #20 sel=4'b1001;
    #20 sel=4'b1010;
    #20 sel=4'b1011;
    #20 sel=4'b1100;
    #20 sel=4'b1101;
    #20 sel=4'b1110;
    #20 sel=4'b1111;
    #20;
    $finish;
         
end

endmodule
