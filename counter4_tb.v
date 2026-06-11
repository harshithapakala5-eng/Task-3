module tb;

reg clk;
wire [3:0] count;

counter4 uut(clk,count);

always #5 clk = ~clk;

initial begin
    clk = 0;
    #100 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

endmodule
