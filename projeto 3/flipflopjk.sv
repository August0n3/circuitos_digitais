module flipflopjk (
    input logic clk,
    input logic rst,
    input logic j,
    input logic k,
    output logic q
);
    
    always @(posedge clk, rst) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            if (j & ~k) begin
                q <= 1'b1;
            end else if (~j & k) begin
                q <= 1'b0;
            end
        end
    end
endmodule