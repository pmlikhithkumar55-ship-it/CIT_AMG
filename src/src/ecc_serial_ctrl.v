/* verilator lint_off TIMESCALEMOD */
`default_nettype none

module ecc_serial_ctrl (

    input  wire       CLK,
    input  wire       RST_n,

    input  wire [7:0] data_a,
    input  wire [7:0] data_b,

    output wire [7:0] Data_out,
    output wire       Done
);

    // FSM STATES
    localparam IDLE = 2'd0,
               CALC = 2'd1,
               DONE = 2'd2;

    reg [1:0] state;

    reg [7:0] reg_A;
    reg [7:0] reg_B;

    reg [7:0] result_reg;
    reg       done_reg;

    wire [7:0] ecc_result;

    // ECC CORE INSTANCE
    ecc_core u_ecc (
        .A(reg_A),
        .B(reg_B),
        .RESULT(ecc_result)
    );

    always @(posedge CLK) begin

        if (!RST_n) begin

            state      <= IDLE;
            reg_A      <= 8'd0;
            reg_B      <= 8'd0;
            result_reg <= 8'd0;
            done_reg   <= 1'b0;

        end else begin

            done_reg <= 1'b0;

            case(state)

                IDLE: begin
                    reg_A <= data_a;
                    reg_B <= data_b;
                    state <= CALC;
                end

                CALC: begin
                    result_reg <= ecc_result;
                    done_reg   <= 1'b1;
                    state      <= DONE;
                end

                DONE: begin
                    state <= DONE;
                end

                default: state <= IDLE;

            endcase
        end
    end

    assign Data_out = result_reg;
    assign Done     = done_reg;

endmodule

/* verilator lint_on TIMESCALEMOD */
