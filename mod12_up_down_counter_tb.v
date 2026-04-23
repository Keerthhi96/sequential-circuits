
module tb_mod12_updown_counter;

    logic clk;
    logic reset_n;
    logic up_down;
    logic [3:0] count;

    // DUT Instantiation
    mod12_updown dut (
        .clk(clk),
        .reset_n(reset_n),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation (10 time unit period)
    always #5 clk = ~clk;

    initial begin
        // Waveform
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_mod12_updown_counter);

        // Monitor output
        $monitor("Time=%0t | reset_n=%b | up_down=%b | count=%0d",
                  $time, reset_n, up_down, count);

        // Initial values
        clk = 0;
        reset_n = 0;
        up_down = 1;

        // Apply reset
        #10 reset_n = 1;

        // UP counting
        up_down = 1;
        repeat (15) #10;

        // DOWN counting
        up_down = 0;
        repeat (15) #10;

        // Finish simulation
        #20 $finish;
    end

endmodule