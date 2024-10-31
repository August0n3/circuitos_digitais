module updowncounter8b(
    input logic clk,
    input logic rst,
    input logic m,
    output logic [7:0] q
);

    logic [7:0] q_next;

    always @(posedge clk, rst) begin
        if (rst) begin
            q <= 8'b0;
        end else begin
            if (m) begin
                q_next = q + 1;
            end else if (~m) begin
                q_next = q - 1;
            end else begin
                q_next = q;
            end
            q <= q_next;
        end
    end
endmodule