`default_nettype none

module tt_um_ecc_accelerator (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    wire [7:0] a;
    wire [7:0] b;
    wire [7:0] sum;
    wire [7:0] doubled;

    assign a = ui_in;
    assign b = uio_in;

    // ECC-like arithmetic operation
    assign sum = a + b;

    // Simple scalar multiplication behavior
    assign doubled = sum << 1;

    // Final output
    assign uo_out = doubled;

    // No bidirectional IO used
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

endmodule
