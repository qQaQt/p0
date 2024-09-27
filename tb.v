///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFire> <Die::MPF100T> <Package::FCVG484>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 10ns / 1ns
//`timescale <time_units> / <precision>
module tb();

reg clk = 1'b0;
reg rst;
initial begin
	rst = 0;
	#160 rst = 1;
    //#150 rst = 0;
    //#180 rst = 1;
    //#230 rst = 0;
    //#460 rst = 1;
end

always begin
    #2 clk = ~clk; 
end
//<statements>

wire clk2;
wire rr;
po po(.clk(clk), .clk2(clk2), .rr(rr));
    initial begin
    $dumpvars;      
    $display("Test started..."); 
	 //#30000 finish;
end

endmodule
