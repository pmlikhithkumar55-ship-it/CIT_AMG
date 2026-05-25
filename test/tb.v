`timescale 1ns / 1ps

module tb;

    reg  [7:0] ui_in;
    reg  [7:0] uio_in;
    wire [7:0] uo_out;

    reg clk;
    reg ena;
    reg rst_n;

    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    // DUT Instance
    tt_um_ecc_accelerator dut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n)
    );

    initial begin

        // Initialize
        ui_in  = 8'b00000000;
        uio_in = 8'b00000000;
        ena    = 1'b1;
        clk    = 1'b0;
        rst_n  = 1'b0;

        #10;
        rst_n = 1'b1;

        // Test Case 1
        ui_in  = 8'd5;
        uio_in = 8'd3;

        #20;

        // Test Case 2
        ui_in  = 8'd10;
        uio_in = 8'd2;

        #20;

        // Test Case 3
        ui_in  = 8'd15;
        uio_in = 8'd5;

        #20;

        $finish;
    end

    always #5 clk = ~clk;

endmodule
