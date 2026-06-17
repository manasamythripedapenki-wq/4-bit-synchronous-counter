module counter_tb;

reg clk;
wire [3:0] q;

counter uut(.clk(clk), .q(q));

initial begin
    clk = 0;
    #100 $finish;
end

always #5 clk = ~clk;

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, counter_tb);
end

endmodule
