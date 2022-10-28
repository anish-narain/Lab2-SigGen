module sigdelay #(
        parameter A_WIDTH = 9,
                  D_WIDTH = 8
) (
    input logic        clk,
    input logic        rst,
    input logic        en,
    input logic        wr_en,
    input logic        rd_en,
    input logic [D_WIDTH-1:0] din,
    input logic [A_WIDTH-1:0] incr,
    input logic [D_WIDTH-1:0] offset,
    output logic [D_WIDTH-1:0] dout

);

    logic [A_WIDTH-1:0] address;

counter addrCounter (
    .clk (clk),
    .rst (rst),
    .en (en),
    .incr (incr),
    .count (address)
);

ram2ports sigRam(
    .clk (clk),
    .wr_addr (address+offset),
    .rd_addr (address),
    .dout (dout),
    .din (din),
    .wr_en(wr_en),
    .rd_en(rd_en)
);

endmodule
