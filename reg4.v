//module for a 4-bit register with an asynchronous reset (active high)
module reg4(
    input [3:0] D,
    input CLK, RST,
    output reg [3:0] Q
);

always @(posedge CLK or posedge RST) begin
    if(RST)
        Q <= 4'b0000;
    else
        Q <= D;
end

endmodule