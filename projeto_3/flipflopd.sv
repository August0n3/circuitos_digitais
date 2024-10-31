module flipflopd (
    input logic clk,
    input logic rst,
    input logic d,
    output logic q
);
    
    always @(posedge clk, rst) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end
    end

endmodule