`include "reg4.v"
`timescale 1ns/1ns

module reg4_tb ();

    reg [3:0] D = 4'b0000;
    reg CLK = 0, RST = 0;
    wire [3:0] Q;
    //instantiate register
    reg4 DUT(.D(D), .CLK(CLK), .RST(RST), .Q(Q)); 
    //setup the clock
    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin
        
        $dumpfile("reg4_tb.vcd");
        $dumpvars(0,reg4_tb);

        //Toggle Reset
        RST <= 1'b1;
        #10
        RST <= 1'b0;

        //Increment the value in the Register
        #20
        D <= D + 1;

        #20
        D <= D + 1;

        #20
        D <= D + 1;

        #20
        D <= D + 1;

        //Hit Reset Again
        #20 
        RST <= 1'b1;
        #10
        RST <= 1'b0;

        #20
        $display("Reg4 Test Done");
        $finish;
    end

endmodule
