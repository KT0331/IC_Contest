////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR:    KT		March 27, 2023
// VERSION:   Verilog Simulation Architecture
//
////////////////////////////////////////////////////////////////////////////////
//
// ABSTRACT:  IC contest 2018
//
//------------------------------------------------------------------------------

module LCD_CTRL(clk, reset, cmd, cmd_valid, IROM_Q, IROM_rd, IROM_A, IRAM_valid, IRAM_D, IRAM_A, busy, done);
input clk;
input reset;
input [3:0] cmd;
input cmd_valid;
input [7:0] IROM_Q;
output IROM_rd;
output [5:0] IROM_A;
output IRAM_valid;
output [7:0] IRAM_D;
output [5:0] IRAM_A;
output busy;
output done;


reg IROM_rd;
reg [5:0] IROM_A;
reg IRAM_valid;
reg [7:0] IRAM_D;
reg [5:0] IRAM_A;
reg IRAM_A_buff;
reg busy;
reg done;

reg [1:0] c_state;
reg [1:0] n_state;

reg [7:0] data [0:63];
reg [5:0] P0;
reg [5:0] point_max;
reg [5:0] point_min;

wire [9:0] result_sum;
wire [5:0] P1;
wire [5:0] P2;
wire [5:0] P3;

integer i;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                          Command Paramete                                                     //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
localparam Write = 4'b0000;
localparam Shift_Up = 4'b0001;
localparam Shift_Down = 4'b0010;
localparam Shift_Left = 4'b0011;
localparam Shift_Right = 4'b0100;
localparam Max = 4'b0101;
localparam Min = 4'b0110;
localparam Average = 4'b0111;
localparam Counterclockwise_Rotation = 4'b1000;
localparam Clockwise_Rotation = 4'b1001;
localparam Mirror_X = 4'b1010;
localparam Mirror_Y = 4'b1011;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            FSM parameters                                                     //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
localparam LOAD      = 2'd0;
localparam ACMD      = 2'd1;
localparam COMPUTING = 2'd2;
localparam OUT       = 2'd3;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                 FSM                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge reset) begin
	if (reset) begin
		c_state <= LOAD;
	end
	else begin
		c_state <= n_state;
	end
end

always @(*) begin
	case(c_state)
		LOAD : begin
			if(IROM_A == 8'd63)begin
				n_state = ACMD;
			end
			else begin
				n_state = c_state;
			end
		end
		ACMD : begin
			if(cmd_valid)begin
				if(cmd == Write) begin
					n_state = OUT;
				end
				else begin
					n_state = COMPUTING;
				end
			end
			else begin
				n_state = ACMD;
			end
		end
		COMPUTING : n_state = ACMD;
		OUT : n_state = OUT;
		default : n_state = LOAD;
	endcase
end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            output logic                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge reset) begin
	if (reset) begin
		IROM_rd <= 1'b1;
	end
	else begin
		if(c_state == LOAD) begin
			IROM_rd <= 1'b1;
		end
		else begin
			IROM_rd <= 1'b0;
		end
	end
end

always @(posedge clk or posedge reset) begin
	if (reset) begin
		IROM_A <= 6'd0;
	end
	else begin
		if((IROM_rd)  && (IROM_A != 63)) begin
			IROM_A <= IROM_A + 6'd1;
		end
		else begin
			IROM_A <= IROM_A;
		end
	end
end

always @(posedge clk or posedge reset) begin
	if (reset) begin
		IRAM_valid <= 1'b0;
	end
	else begin
		if(c_state == OUT) begin
			IRAM_valid <= 1'b1;
		end
		else begin
			IRAM_valid <= 1'b0;
		end
	end
end

always @(*) begin
	IRAM_D <= data[IRAM_A];
end

always @(posedge clk or posedge reset) begin
	if (reset) begin
		IRAM_A_buff <= 6'd0;
	end
	else begin
		if(IRAM_valid) begin
			IRAM_A_buff <= IRAM_A_buff + 1'b1;
		end
		else begin
			IRAM_A_buff <= IRAM_A_buff;
		end
	end
end

always @(posedge clk or posedge reset) begin
	if (reset) begin
		IRAM_A <= 6'd0;
	end
	else begin
		if((IRAM_valid) && (IRAM_A != 63) && IRAM_A_buff) begin
			IRAM_A <= IRAM_A + 6'd1;
		end
		else begin
			IRAM_A <= IRAM_A;
		end
	end
end

always @(posedge clk or posedge reset) begin
	if (reset) begin
		busy <= 1'b1;
	end
	else begin
		if((c_state == LOAD) && (IROM_A == 63)) begin
			busy <= 1'b0;
		end
		else if(c_state == COMPUTING) begin
			busy <= 1'b0;
		end
		else if((c_state == OUT) && (IRAM_A == 6'd63))begin
			busy <= 1'b0;
		end
		else begin
			busy <= 1'b1;
		end
	end
end

always @(posedge clk or posedge reset) begin
	if(reset) begin
		done <= 1'b0;
	end
	else begin
		if((c_state == OUT) && (IRAM_A == 63) && IRAM_A_buff) begin
			done <= 1'b1;
		end
		else begin
			done <= done;
		end
	end
end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            main circuit                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge reset) begin
	if(reset) begin
		for(i = 0 ; i < 64 ; i = i + 1) begin : data_initial
			data[i] <= 8'd0;
		end
	end
	else begin
		if(c_state == LOAD) begin
			data[IROM_A] <= IROM_Q;
		end
		else if(c_state == ACMD)begin
			for(i = 0 ; i < 64 ; i = i + 1) begin : data_ACMD
				data[i] <= data[i];
			end
		end
		else if(c_state == COMPUTING)begin
			case(cmd)
				Max : begin
					data[P0] <= data[point_max];
					data[P1] <= data[point_max];
					data[P2] <= data[point_max];
					data[P3] <= data[point_max];
				end
				Min : begin
					data[P0] <= data[point_min];
					data[P1] <= data[point_min];
					data[P2] <= data[point_min];
					data[P3] <= data[point_min];
				end
				Average : begin
					data[P0] <= result_sum[9:2];
					data[P1] <= result_sum[9:2];
					data[P2] <= result_sum[9:2];
					data[P3] <= result_sum[9:2];
				end
				Counterclockwise_Rotation : begin
					data[P0] <= data[P1];
					data[P1] <= data[P3];
					data[P2] <= data[P0];
					data[P3] <= data[P2];
				end
				Clockwise_Rotation : begin
					data[P0] <= data[P2];
					data[P1] <= data[P0];
					data[P2] <= data[P3];
					data[P3] <= data[P1];
				end
				Mirror_X : begin
					data[P0] <= data[P2];
					data[P1] <= data[P3];
					data[P2] <= data[P0];
					data[P3] <= data[P1];
				end
				Mirror_Y : begin
					data[P0] <= data[P1];
					data[P1] <= data[P0];
					data[P2] <= data[P3];
					data[P3] <= data[P2];
				end
				default : begin
					for(i = 0 ; i < 64 ; i = i + 1) begin : data_COMPUTING
						data[i] <= data[i];
					end
				end
			endcase
		end
		else begin
			for(i = 0 ; i < 64 ; i = i + 1) begin : data_other
				data[i] <= data[i];
			end
		end
	end
end

always @(posedge clk or posedge reset) begin
	if(reset) begin
		P0 <= 5'h1b;
	end
	else begin
		if(c_state == COMPUTING) begin
			case(cmd)
				Shift_Up : begin
					if(P0 > 6'h7) begin
						P0 <= P0 - 5'd8;
					end
					else begin
						P0 <= P0;
					end
				end
				Shift_Down : begin
					if(P0 < 6'h30) begin
						P0 <= P0 + 5'd8;
					end
					else begin
						P0 <= P0;
					end
				end
				Shift_Left : begin
					if(P0[2:0]  != 3'b000) begin
						P0 <= P0 - 5'd1;
					end
					else begin
						P0 <= P0;
					end
				end
				Shift_Right : begin
					if(P0[2:0]  != 3'b110) begin
						P0 <= P0 + 5'd1;
					end
					else begin
						P0 <= P0;
					end
				end
				default : begin
					P0 <= P0;
				end
			endcase
		end
		else begin
			P0 <= P0;
		end
	end
end

assign P1 = P0 + 5'd1;
assign P2 = P0 + 5'd8;
assign P3 = P0 + 5'd9;


always@(*) begin
    if ((data[P0] >= data[P1]) && (data[P0] >= data[P2]) && (data[P0] >= data[P3])) point_max = P0;
    else if ((data[P1] >= data[P0]) && (data[P1] >= data[P2]) && (data[P1] >= data[P3])) point_max = P1;
    else if ((data[P2] >= data[P0]) && (data[P2] >= data[P1]) && (data[P2] >= data[P3])) point_max = P2;
    else point_max = P3;
end
    
always@(*) begin
    if ((data[P0] <= data[P1]) &&( data[P0] <= data[P2]) && (data[P0] <= data[P3])) point_min = P0;
    else if ((data[P1] <= data[P0]) &&( data[P1] <= data[P2]) && (data[P1] <= data[P3])) point_min = P1;
    else if ((data[P2] <= data[P0]) &&( data[P2] <= data[P1]) && (data[P2] <= data[P3])) point_min = P2;
    else point_min = P3;
end

assign result_sum = data[P0] + data[P1] + data[P2] + data[P3];



endmodule
