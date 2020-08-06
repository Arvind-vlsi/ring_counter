`timescale 1ns / 1ps

module tb();

reg clk=0,reset=0;
wire [3:0]dout;

ring_counter j1(clk,reset,dout);

always #5 clk=~clk;

initial begin
    reset=1'b1;
    #20 reset=1'b0;
    $monitor("value of dout : %b",dout);
    #200 $stop;
 end

endmodule
