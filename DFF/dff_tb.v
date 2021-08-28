//Testbench for the d flip flop module
`timescale 1ns/1ns
`include "dff.v"

module dff_tb();

reg D = 0, RST = 0, CLK = 0;
wire Q;

//instantiate the flip-flop module
dff DUT(D, RST, CLK, Q);

//set up clock
always begin
    CLK = ~CLK;
    #10;
end

//change D and see what Q is
initial begin
    
    $dumpfile("dff_tb.vcd");
    $dumpvars(0, dff_tb);

    //make reset high - now Q is D at rising edge of clock
    #20
    RST <= 1;

    #20 
    D <= 1;

    #20
    D <= 0;

    #20 
    D <= 1;

    #40
    $display("DFF Test Complete");
    $finish;

end

endmodule
