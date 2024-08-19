module cinco(
    input b2,
    input b1,
    input b0,
    output y3, 
    output y2,
    output y1,
    output y0
    );

    assign y3 = b2&b1&b0;
    assign y2 = ~b2&~b1&~b0 | b2&~b1&b0 | b2&b1&~b0;
    assign y1 = b2&~b0 | ~b2&~b1&b0;
    assign y0 = 1;

endmodule