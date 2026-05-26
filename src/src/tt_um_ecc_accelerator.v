/* verilator lint_off TIMESCALEMOD */
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

wire done_signal;

ecc_serial_ctrl ecc_ctrl (

    .CLK(clk),
    .RST_n(rst_n),

    .data_a(ui_in),
    .data_b(uio_in),

    .Data_out(uo_out),
    .Done(done_signal)
);

assign uio_out = {7'b0, done_signal};

assign uio_oe  = 8'b00000001;

wire _unused = &{ena, 1'b0};

endmodule

/* verilator lint_on TIMESCALEMOD */
