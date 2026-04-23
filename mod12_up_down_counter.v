
module mod12_updown (
    input clk,
    input reset_n,
    input up_down,        // 1 = up, 0 = down
    output reg [3:0] count
);

always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        count <= 4'd0;

    else if (up_down) begin
        // UP counting
        if (count == 4'd11)
            count <= 4'd0;
        else
            count <= count + 1;
    end

    else begin
        // DOWN counting
        if (count == 4'd0)
            count <= 4'd11;
        else
            count <= count - 1;
    end
end

endmodule