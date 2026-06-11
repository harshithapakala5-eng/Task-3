module tb;

reg clk;
reg [3:0] d;
wire [3:0] q;

register4 uut(clk,d,q);

always #5 clk = ~clk;

initial begin
    clk=0;

    d=4'b0001;
    #10 d=4'b1010;
    #10 d=4'b1111;
    #10 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

endmodule
