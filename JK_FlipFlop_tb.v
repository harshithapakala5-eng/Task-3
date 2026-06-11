module tb;

reg clk,j,k;
wire q;

jk_ff uut(clk,j,k,q);

always #5 clk = ~clk;

initial begin
    clk=0;

    j=0; k=0;
    #10 j=0; k=1;
    #10 j=1; k=0;
    #10 j=1; k=1;
    #20 $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

endmodule
