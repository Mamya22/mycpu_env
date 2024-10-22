module regfile(
    input  wire        clk,
    // READ PORT 1
    input  wire [ 4:0] raddr1,
    output wire [31:0] rdata1,
    // READ PORT 2
    input  wire [ 4:0] raddr2,
    output wire [31:0] rdata2,
    // WRITE PORT
    input  wire        we,       //write enable, HIGH valid
    input  wire [ 4:0] waddr,
    input  wire [31:0] wdata
);
reg [31:0] rf[31:0];

//WRITE
always @(posedge clk) begin
    if (we) rf[waddr] <= wdata;
end
initial begin
    rf[0] = 32'd0;
    rf[1] = 32'd0;
    rf[2] = 32'd0;
    rf[3] = 32'd0;
    rf[4] = 32'd0;
    rf[5] = 32'd0;
    rf[6] = 32'd0;
    rf[7] = 32'd0;
    rf[8] = 32'd0;
    rf[9] = 32'd0;
    rf[10] = 32'd0;
    rf[11] = 32'd0;
    rf[12] = 32'd0;
    rf[13] = 32'd0;
    rf[14] = 32'd0;
    rf[15] = 32'd0;
    rf[16] = 32'd0;
    rf[17] = 32'd0;
    rf[18] = 32'd0;
    rf[19] = 32'd0;
    rf[20] = 32'd0;
    rf[21] = 32'd0;
    rf[22] = 32'd0;
    rf[23] = 32'd0;
    rf[24] = 32'd0;
    rf[25] = 32'd0;
    rf[26] = 32'd0;
    rf[27] = 32'd0;
    rf[28] = 32'd0;
    rf[29] = 32'd0;
    rf[30] = 32'd0;
    rf[31] = 32'd0;
end
//READ OUT 1
assign rdata1 = (raddr1==5'b0) ? 32'b0 : rf[raddr1];

//READ OUT 2
assign rdata2 = (raddr2==5'b0) ? 32'b0 : rf[raddr2];

endmodule
