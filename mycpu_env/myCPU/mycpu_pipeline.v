module mycpu_pipeline(
    input  wire        clk,
    input  wire        resetn,
    // inst sram interface
    output wire        inst_sram_we,
    output wire [31:0] inst_sram_addr,
    output wire [31:0] inst_sram_wdata,
    input  wire [31:0] inst_sram_rdata,
    // data sram interface
    output wire        data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata,
    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);
reg         reset;
always @(posedge clk) reset <= ~resetn;
reg         valid;
always @(posedge clk) begin
    if (reset) begin
        valid <= 1'b0;
    end
    else begin
        valid <= 1'b1;
    end
end
wire [31:0] true_rf_data_1;
wire [31:0] true_rf_data_2;
wire bubble;
wire        br;
reg [31:0] ID_EX_br_target;
//////////////////////////////////////////////////////////////////
// FETCH stage -> DECODE                                       ///
//////////////////////////////////////////////////////////////////
wire [31:0] seq_pc;
wire [31:0] nextpc;
wire [31:0] inst;
reg [31:0] pc;
assign seq_pc = pc + 3'h4;
// reg  [31:0] pc;

assign nextpc       =   bubble   ? pc        :
                        br ? ID_EX_br_target : seq_pc;

always @(posedge clk) begin
    if (reset) begin
        pc <= 32'h1bfffffc;     //trick: to make nextpc be 0x1c000000 during reset 
    end
    else begin
        pc <= nextpc;
    end
end
assign inst_sram_we    = 1'b0;
assign inst_sram_addr  = pc;
assign inst_sram_wdata = 32'b0;
assign inst            = pc == 32'h1bfffffc ? 32'd0: inst_sram_rdata;
reg [31:0] IF_ID_pc;
reg [31:0] IF_ID_inst;
always @(posedge clk) begin
    if(reset) begin
        IF_ID_pc <= 32'h1bfffffc;
        IF_ID_inst <= 32'd0;
    end
    else begin
        IF_ID_pc <=  bubble ||br ? 32'd0 : pc;
        IF_ID_inst <=  bubble || br ? 32'd0 : inst;
    end
end

//////////////////////////////////////////////////////////////////
//  DECODE stage -> EXECUTE                                    ///
//////////////////////////////////////////////////////////////////
wire [ 5:0] op_31_26;
wire [ 3:0] op_25_22;
wire [ 1:0] op_21_20;
wire [ 4:0] op_19_15;

wire [63:0] op_31_26_d;
wire [15:0] op_25_22_d;
wire [ 3:0] op_21_20_d;
wire [31:0] op_19_15_d;

assign op_31_26  = IF_ID_inst[31:26];
assign op_25_22  = IF_ID_inst[25:22];
assign op_21_20  = IF_ID_inst[21:20];
assign op_19_15  = IF_ID_inst[19:15];

decoder_6_64 u_dec0(.in(op_31_26 ), .out(op_31_26_d ));
decoder_4_16 u_dec1(.in(op_25_22 ), .out(op_25_22_d ));
decoder_2_4  u_dec2(.in(op_21_20 ), .out(op_21_20_d ));
decoder_5_32 u_dec3(.in(op_19_15 ), .out(op_19_15_d ));

wire        inst_add_w;
wire        inst_sub_w;
wire        inst_slt;
wire        inst_sltu;
wire        inst_nor;
wire        inst_and;
wire        inst_or;
wire        inst_xor;
wire        inst_slli_w;
wire        inst_srli_w;
wire        inst_srai_w;
wire        inst_addi_w;
wire        inst_ld_w;
wire        inst_st_w;
wire        inst_jirl;
wire        inst_b;
wire        inst_bl;
wire        inst_beq;
wire        inst_bne;
wire        inst_lu12i_w;

assign inst_add_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h00];
assign inst_sub_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h02];
assign inst_slt    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h04];
assign inst_sltu   = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h05];
assign inst_nor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h08];
assign inst_and    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h09];
assign inst_or     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0a];
assign inst_xor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0b];
assign inst_slli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h01];
assign inst_srli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h09];
assign inst_srai_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h11];
assign inst_addi_w = op_31_26_d[6'h00] & op_25_22_d[4'ha];
assign inst_ld_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h2];
assign inst_st_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h6];
assign inst_jirl   = op_31_26_d[6'h13];
assign inst_b      = op_31_26_d[6'h14];
assign inst_bl     = op_31_26_d[6'h15];
assign inst_beq    = op_31_26_d[6'h16];
assign inst_bne    = op_31_26_d[6'h17];
assign inst_lu12i_w= op_31_26_d[6'h05] & ~IF_ID_inst[25];

wire        need_ui5;
wire        need_si12;
wire        need_si16;
wire        need_si20;
wire        need_si26;
wire        src2_is_4;

assign need_ui5   =  inst_slli_w | inst_srli_w | inst_srai_w;
assign need_si12  =  inst_addi_w | inst_ld_w | inst_st_w;
assign need_si16  =  inst_jirl | inst_beq | inst_bne;
assign need_si20  =  inst_lu12i_w;
assign need_si26  =  inst_b | inst_bl;
assign src2_is_4  =  inst_jirl | inst_bl;

wire [ 4:0] rd;
wire [ 4:0] rj;
wire [ 4:0] rk;

assign rd   = IF_ID_inst[ 4: 0];
assign rj   = IF_ID_inst[ 9: 5];
assign rk   = IF_ID_inst[14:10];

wire [11:0] i12;
wire [19:0] i20;
wire [15:0] i16;
wire [25:0] i26;

assign i12  = IF_ID_inst[21:10];
assign i20  = IF_ID_inst[24: 5];
assign i16  = IF_ID_inst[25:10];
assign i26  = {IF_ID_inst[ 9: 0], IF_ID_inst[25:10]};
// 得到立即�??
wire [31:0] imm;
assign imm = src2_is_4 ? 32'h4                      :
             need_si20 ? {i20[19:0], 12'b0}         :
            // need_ui12 ? {20'd0, i12[11:0]}         :
             need_ui5  ? {27'd0, rk}                :
            {{20{i12[11]}}, i12[11:0]} ;
wire   src2_is_imm;
assign src2_is_imm   = inst_slli_w |
                       inst_srli_w |
                       inst_srai_w |
                       inst_addi_w |
                       inst_ld_w   |
                       inst_st_w   |
                       inst_lu12i_w|
                       inst_jirl   |
                       inst_bl     ;

wire   src1_is_pc;
assign src1_is_pc    = inst_jirl | inst_bl;
wire [ 4:0] rf_raddr1;
wire [31:0] rf_rdata1;
wire [ 4:0] rf_raddr2;
wire [31:0] rf_rdata2;
wire        rf_we   ;
wire [ 4:0] rf_waddr;
wire [31:0] rf_wdata;

wire        src_reg_is_rd;
assign src_reg_is_rd = inst_beq | inst_bne | inst_st_w;

wire       gr_we;
assign gr_we         = (~inst_st_w & ~inst_beq & ~inst_bne & ~inst_b) && IF_ID_pc;

wire        dst_is_r1;
wire [4: 0] dest;
assign dst_is_r1     = inst_bl;
assign dest          = dst_is_r1 ? 5'd1 : rd;

wire   res_from_mem;
assign res_from_mem  = inst_ld_w;

assign rf_raddr1 = rj;
assign rf_raddr2 = src_reg_is_rd ? rd :rk;
// 读寄存器
regfile u_regfile(
    .clk    (clk      ),
    .raddr1 (rf_raddr1),
    .rdata1 (rf_rdata1),
    .raddr2 (rf_raddr2),
    .rdata2 (rf_rdata2),
    .we     (rf_we    ),
    .waddr  (rf_waddr ),
    .wdata  (rf_wdata )
);
// alu 操作
wire [11:0] alu_op;
assign alu_op[ 0] = inst_add_w | inst_addi_w | inst_ld_w | inst_st_w
                    | inst_jirl | inst_bl;
assign alu_op[ 1] = inst_sub_w;
assign alu_op[ 2] = inst_slt;
assign alu_op[ 3] = inst_sltu;
assign alu_op[ 4] = inst_and;
assign alu_op[ 5] = inst_nor;
assign alu_op[ 6] = inst_or;
assign alu_op[ 7] = inst_xor;
assign alu_op[ 8] = inst_slli_w;
assign alu_op[ 9] = inst_srli_w;
assign alu_op[10] = inst_srai_w;
assign alu_op[11] = inst_lu12i_w;
// 写内存信�??
wire        mem_we;
assign mem_we        = inst_st_w;

// 跳转信号
wire [31:0] rj_value;
wire [31:0] rkd_value;
assign rj_value  = rf_rdata1;
assign rkd_value = rf_rdata2;
wire [4:0]  br_taken;
// wire        rj_eq_rd;
// assign rj_eq_rd = (rj_value == rkd_value);
assign br_taken = {inst_beq, inst_bne, inst_jirl, inst_bl, inst_b};

wire [31:0] br_offs;
wire [31:0] br_target;
wire [31:0] jirl_offs;
assign jirl_offs = {{14{i16[15]}}, i16[15:0], 2'b0};
assign br_offs = need_si26 ? {{ 4{i26[25]}}, i26[25:0], 2'b0} :
          {{14{i16[15]}}, i16[15:0], 2'b0} ;
assign br_target = (inst_beq || inst_bne || inst_bl || inst_b) ? (IF_ID_pc + br_offs) :
                                                   /*inst_jirl*/ (rj_value + jirl_offs);

reg [31:0] ID_EX_pc;
//reg [31:0] ID_EX_br_target;
reg [ 4:0] ID_EX_rd;
reg [ 4:0] ID_EX_r1;
reg [ 4:0] ID_EX_r2;
reg [ 4:0] ID_EX_br_taken;
reg [31:0] ID_EX_imm;
reg [31:0] ID_EX_rf_rdata1;
reg [31:0] ID_EX_rf_rdata2;
reg [11:0] ID_EX_alu_op;
reg        ID_EX_mem_we;
// reg        ID_EX_br_taken;
reg        ID_EX_gr_we;
reg        ID_EX_src2_is_imm;
reg        ID_EX_src1_is_pc;
reg        ID_EX_res_from_mem;

always @(posedge clk) begin
    if(reset) begin
        ID_EX_pc           <=  32'd0;
        ID_EX_rd           <=  5'd0 ;
        ID_EX_imm          <=  32'd0;
        ID_EX_rf_rdata1    <=  32'd0;
        ID_EX_rf_rdata2    <=  32'd0;
        ID_EX_alu_op       <=  12'd0;
        ID_EX_mem_we       <=  1'b0;
        ID_EX_gr_we        <=  1'b0; 
        ID_EX_src2_is_imm  <=  1'b0;
        ID_EX_src1_is_pc   <=  1'b0;
        ID_EX_res_from_mem <=  1'b0;
        ID_EX_br_target    <=  1'b0;
        ID_EX_br_taken     <=  5'd0;     
        ID_EX_r1           <=  5'd0;  
        ID_EX_r2           <=  5'd0;  
    end
    else begin
        ID_EX_pc           <= (!br) ? IF_ID_pc        : 32'd0;
        ID_EX_rd           <= (!br) ? dest            : 5'd0 ;
        ID_EX_imm          <= (!br) ? imm             : 32'd0;
        ID_EX_rf_rdata1    <= (!br) ? rf_rdata1       : 32'd0;
        ID_EX_rf_rdata2    <= (!br) ? rf_rdata2       : 32'd0;
        ID_EX_alu_op       <= (!br) ? alu_op          : 12'd0;
        ID_EX_mem_we       <= (!br) ? mem_we          : 1'b0;
        // ID_EX_br_taken     (!br) ? <= br_taken;
        ID_EX_gr_we        <= (!br) ? gr_we           : 1'b0; 
        ID_EX_src2_is_imm  <= (!br) ? src2_is_imm     : 1'b0;
        ID_EX_src1_is_pc   <= (!br) ? src1_is_pc      : 1'b0;
        ID_EX_res_from_mem <= (!br) ? res_from_mem    : 1'b0;
        ID_EX_br_target    <= (!br) ? br_target       : 1'b0;
        ID_EX_br_taken     <= (!br) ? br_taken        : 5'd0;
        ID_EX_r1           <= (!br) ? rf_raddr1       : 5'd0;  
        ID_EX_r2           <= (!br) ? rf_raddr2       : 5'd0;     
    end

end

//////////////////////////////////////////////////////////////////
//  EXECUTE stage -> MEMORY                                    ///
//////////////////////////////////////////////////////////////////

wire [31:0] alu_src1   ;
wire [31:0] alu_src2   ;
wire [31:0] alu_result ;

assign alu_src1 = ID_EX_src1_is_pc  ? ID_EX_pc[31:0] :  true_rf_data_1;
assign alu_src2 = ID_EX_src2_is_imm ? ID_EX_imm : true_rf_data_2;
alu u_alu(
    .alu_op     (ID_EX_alu_op),
    .alu_src1   (alu_src1  ),
    .alu_src2   (alu_src2  ),
    .alu_result (alu_result)
);

wire        rj_eq_rd;
assign rj_eq_rd = (true_rf_data_1 == true_rf_data_2);
//wire        br;
assign      br = ((ID_EX_br_taken[4] && rj_eq_rd) || (ID_EX_br_taken[3] && !rj_eq_rd)
                ||(ID_EX_br_taken[2]) || ID_EX_br_taken[1] || ID_EX_br_taken[0])?1'b1:1'b0;

reg [31:0] EX_MEM_alu_result;
reg [ 4:0] EX_MEM_rd;
reg [31:0] EX_MEM_pc;
reg [31:0] EX_MEM_rd_value;
reg        EX_MEM_mem_we;
reg        EX_MEM_gr_we;
reg        EX_MEM_res_from_mem;

always @(posedge clk) begin
    if(reset) begin
        EX_MEM_alu_result    <= 32'd0;
        EX_MEM_rd            <= 5'd0;
        EX_MEM_pc            <= 32'd0;
        EX_MEM_rd_value      <= 32'd0;
        EX_MEM_mem_we        <= 1'd0;
        EX_MEM_gr_we         <= 1'd0;   
        EX_MEM_res_from_mem  <= 1'd0;      
    end
    else begin
            EX_MEM_alu_result    <= alu_result        ;
            EX_MEM_rd            <= ID_EX_rd          ;
            EX_MEM_pc            <= ID_EX_pc          ;
            EX_MEM_rd_value      <= true_rf_data_2    ;
            EX_MEM_mem_we        <= ID_EX_mem_we      ;
            EX_MEM_gr_we         <= ID_EX_gr_we       ;   
            EX_MEM_res_from_mem  <= ID_EX_res_from_mem;
    end

end
//////////////////////////////////////////////////////////////////
//  MEMORY stage -> WRITE BACK                                 ///
//////////////////////////////////////////////////////////////////

assign data_sram_we    = EX_MEM_mem_we && valid  ;
assign data_sram_addr  = EX_MEM_alu_result;
assign data_sram_wdata = EX_MEM_rd_value  ;

wire [31:0] mem_result;
assign mem_result   = data_sram_rdata;

reg [31:0] MEM_WB_result;
reg [31:0] MEM_WB_pc;
reg [31:0] MEM_WB_alu_result;
reg [ 4:0] MEM_WB_rd;
reg        MEM_WB_gr_we;
reg        MEM_WB_res_from_mem;

always @(posedge clk) begin
    if(reset) begin
        MEM_WB_alu_result   <= 32'd0;
        MEM_WB_result       <= 32'd0;
        MEM_WB_gr_we        <= 1'd0;
        MEM_WB_rd           <= 5'd0;
        MEM_WB_res_from_mem <= 1'd0;
        MEM_WB_pc           <= 32'd0;       
    end
    else begin
        MEM_WB_alu_result   <= EX_MEM_alu_result  ;
        MEM_WB_result       <= mem_result         ;
        MEM_WB_gr_we        <= EX_MEM_gr_we       ;
        MEM_WB_rd           <= EX_MEM_rd          ;
        MEM_WB_res_from_mem <= EX_MEM_res_from_mem;
        MEM_WB_pc           <= EX_MEM_pc          ;        
    end

end
//////////////////////////////////////////////////////////////////
//  WRITE BACK                                                 ///
//////////////////////////////////////////////////////////////////
wire [31:0] final_result;
assign final_result = MEM_WB_res_from_mem ? MEM_WB_result : MEM_WB_alu_result;
assign rf_we = MEM_WB_gr_we;
assign rf_waddr = MEM_WB_rd;
assign rf_wdata = final_result;
reg [31:0] WB_rd;
reg [31:0] result;
reg  WB_rd_we;
always @(posedge clk) begin
    if(reset) begin
        WB_rd <=0;        
        WB_rd_we <=0;        
        result <= 32'd0;
    end
    else begin
        WB_rd <= MEM_WB_rd;        
        WB_rd_we <= MEM_WB_gr_we;    
        result <=final_result;    
    end 

end
//////////////////////////////////////////////////////////////////
//  相关                                                       ///
//////////////////////////////////////////////////////////////////
wire EX_MEM_forward_op_rj;
wire EX_MEM_forward_op_rk;

wire MEM_WB_forward_op_rj;
wire MEM_WB_forward_op_rk;

wire ID_EX_forward_op_rj;
wire ID_EX_forward_op_rk;

// wire ST_LD;

assign ID_EX_forward_op_rj  = (WB_rd == ID_EX_r1)      ? 1'b1 : 1'b0;
assign ID_EX_forward_op_rk  = (WB_rd == ID_EX_r2)      ? 1'b1 : 1'b0;
assign EX_MEM_forward_op_rj = (ID_EX_r1 == EX_MEM_rd ) ? 1'b1 : 1'b0;      
assign EX_MEM_forward_op_rk = (ID_EX_r2 == EX_MEM_rd ) ? 1'b1 : 1'b0;
assign MEM_WB_forward_op_rj = (ID_EX_r1 == MEM_WB_rd)  ? 1'b1 : 1'b0;
assign MEM_WB_forward_op_rk = (ID_EX_r2 == MEM_WB_rd)  ? 1'b1 : 1'b0;

// wire [31:0] EX_MEM_alu_result_wire;
// wire [31:0] ID_EX_rf_rdata1_wire;
// wire [31:0] ID_EX_rf_rdata2_wire;


assign true_rf_data_1 = (EX_MEM_gr_we && EX_MEM_forward_op_rj) ? EX_MEM_alu_result : 
                        ((MEM_WB_gr_we && MEM_WB_forward_op_rj) ? final_result      :
                        (WB_rd_we && ID_EX_forward_op_rj)      ? result             : ID_EX_rf_rdata1);
assign true_rf_data_2 = (EX_MEM_gr_we && EX_MEM_forward_op_rk) ? EX_MEM_alu_result : 
                        ((MEM_WB_gr_we && MEM_WB_forward_op_rk) ? final_result :
                        (WB_rd_we && ID_EX_forward_op_rk)     ? result  : ID_EX_rf_rdata2);

//////////////////////////////////////////////////////////////////
//  Bubble                                                     ///
//////////////////////////////////////////////////////////////////
//wire bubble;
assign bubble = (res_from_mem) ? 1'b1 :1'b0;
assign debug_wb_pc       = MEM_WB_pc;
assign debug_wb_rf_we   = {4{rf_we}};
assign debug_wb_rf_wnum  = MEM_WB_rd;
assign debug_wb_rf_wdata = final_result;
endmodule