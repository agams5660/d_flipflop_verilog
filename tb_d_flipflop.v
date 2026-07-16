module tb_d_flipflop;

    reg d;
    reg clk;
    wire q;

    d_flipflop dut(
        .d(d),
        .clk(clk),
        .q(q)
    );

    initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, tb_d_flipflop);

        clk = 0;
        d = 0;

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 1;
        #10 d = 0;

        #20 $finish;
    end

    always #5 clk = ~clk;

endmodule