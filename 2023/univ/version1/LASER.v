////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR:    KT		April 27, 2022
// VERSION:   Verilog Simulation Architecture
//
////////////////////////////////////////////////////////////////////////////////
//
// ABSTRACT:  IC contest 2023
// DESIGN VERSION: 1
// DESCRIPITON: cycle = 25566
//              area  = 
// MODIFIED: 將input的data儲存時採用shift register
//
//------------------------------------------------------------------------------

module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);

reg [2:0] c_state;
reg [2:0] n_state;


reg [3:0] data_X [0:39];
reg [3:0] data_Y [0:39];


reg [3:0] C2X_scan;
reg [3:0] C2Y_scan;
reg [3:0] C2X_best;
reg [3:0] C2Y_best;
reg [5:0] C2_best_uni;
reg [5:0] C1_best_uni;

reg [5:0] counter; // load 40 input
reg [1:0] complete;


reg [0:39] C1_inboolean;
reg [0:39] C2_scan_inboolean;
reg [3:0]  cx;
reg [3:0]  px [0:9];
reg [3:0]  cy;
reg [3:0]  py [0:9];

wire [39:0] uni_subspace;
wire [5:0]  uni;
wire [9:0]  in_circle;
wire        near;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            FSM parameters                                                     //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
localparam LOAD             = 0;
localparam CIRCLE1_POINT    = 1;
localparam CIRCLE2_WHERE    = 2;
localparam CIRCLE2_POINT    = 3;
localparam SUB_INTERSECTION = 4;
localparam C1_C2_SWAP		= 5;
localparam OUT              = 6;
localparam IDLE				= 7;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                 FSM                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
always @(posedge CLK) begin
	if (RST) begin
		c_state <= LOAD;
	end
	else begin
		c_state <= n_state;
	end
end

always @(*) begin
	if(c_state == LOAD) begin
		if(counter == 39) begin
			n_state = CIRCLE1_POINT;
		end
		else begin
			n_state = LOAD;
		end
	end
	else if(c_state == CIRCLE1_POINT) begin
		if(complete == 2'b11) begin
			n_state = CIRCLE2_WHERE;
		end
		else begin
			n_state = CIRCLE1_POINT;
		end
	end
	else if(c_state == CIRCLE2_WHERE) begin
		n_state = CIRCLE2_POINT;
	end
	else if(c_state == CIRCLE2_POINT) begin
		if(complete == 2'b11) begin
			n_state = SUB_INTERSECTION;
		end
		else begin
			n_state = CIRCLE2_POINT;
		end
	end
	else if(c_state == SUB_INTERSECTION) begin
		if(near) begin
			n_state = C1_C2_SWAP;
		end
		else begin
			n_state = CIRCLE2_WHERE;
		end
	end
	else if(c_state == C1_C2_SWAP) begin
		if(counter[0] == 1) begin  //(counter[0] == 1) means (counter == 41)
			if(((C2X_best == C2X) && (C2Y_best == C2Y)) ||  (C2_best_uni < C1_best_uni)) begin
				n_state = OUT;
			end
			else begin
				n_state = CIRCLE1_POINT;
			end
		end
		else begin
			n_state = CIRCLE1_POINT;
		end
	end
	else if(c_state == OUT) begin
		n_state = IDLE;
	end
	else begin
		n_state = LOAD;
	end
end

//assign near = ({C1Y ,C1X} == ({C2Y_scan ,C2X_scan} + 1))

assign near = ((C1X == C2X_scan + 1) && (C1Y == C2Y_scan)) 
				|| ((C1X == 0) && (C2X_scan == 15) && (C1Y == C2Y_scan + 1)) 
				|| ((C1X == 0) && (C1Y == 0) && (C2X_scan == 15) && (C2Y_scan == 15))
				|| ((C1X == C2X_scan) && (C1Y == C2Y_scan));

//DONE
always @(posedge CLK) begin
	if (RST) begin
		DONE <= 0;	
	end
	else begin
		if(c_state == OUT) begin
			DONE <= 1;
		end
		else begin
			DONE <= 0;
		end
	end
end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                SUB                                                            //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


genvar w;
generate
	for(w = 0; w < 10; w = w + 1) begin: compa_inst
		compa u_compa(
			.cx(cx),
			.cy(cy),
			.px(px[w]),
			.py(py[w]),
			.in_circle(in_circle[w]));
	end
endgenerate

always @(*) begin
	if(c_state == CIRCLE1_POINT) begin
		cx = C1X;
		cy = C1Y;
	end
	else if(c_state == CIRCLE2_POINT) begin
		cx = C2X_scan;
		cy = C2Y_scan;
	end
	else begin
		cx = 0;
		cy = 0;
	end
end

genvar v;
generate
 	for(v = 0; v < 10; v = v + 1) begin: compa_para_assign
 		always @(*) begin
			if(c_state == CIRCLE1_POINT) begin
				if(complete == 0) begin
					px[v] = data_X[v];
					py[v] = data_Y[v];
				end
				else if(complete == 1) begin
					px[v] = data_X[v + 10];
					py[v] = data_Y[v + 10];
				end
				else if(complete == 2) begin
					px[v] = data_X[v + 20];
					py[v] = data_Y[v + 20];
				end
				else begin
					px[v] = data_X[v + 30];
					py[v] = data_Y[v + 30];
				end
			end
			else if(c_state == CIRCLE2_POINT) begin
				if(complete == 0) begin
					px[v] = data_X[v];
					py[v] = data_Y[v];
				end
				else if(complete == 1) begin
					px[v] = data_X[v + 10];
					py[v] = data_Y[v + 10];
				end
				else if(complete == 2) begin
					px[v] = data_X[v + 20];
					py[v] = data_Y[v + 20];
				end
				else begin
					px[v] = data_X[v + 30];
					py[v] = data_Y[v + 30];
				end
			end
			else begin
				px[v] = 0;
				py[v] = 0;
			end
		end
	end
endgenerate

genvar a;
generate
	for(a = 0; a < 40; a = a + 1) begin: in_boolean
		always @(posedge CLK) begin
			if (RST) begin
				C1_inboolean[a] <= 0;
			end
			else begin
				if(c_state == CIRCLE1_POINT) begin
					case(complete)
						0 : begin
							if(a < 10) begin
								C1_inboolean[a] <= in_circle[a];
							end
							else begin
								C1_inboolean[a] <= C1_inboolean[a];
							end
						end
						1 : begin
							if((a >= 10) && (a < 20)) begin
								C1_inboolean[a] <= in_circle[a - 10];
							end
							else begin
								C1_inboolean[a] <= C1_inboolean[a];
							end
						end
						2 : begin
							if((a >= 20) && (a < 30)) begin
								C1_inboolean[a] <= in_circle[a - 20];
							end
							else begin
								C1_inboolean[a] <= C1_inboolean[a];
							end
						end
						default : begin
							if((a >= 30) && (a < 40)) begin
								C1_inboolean[a] <= in_circle[a - 30];
							end
							else begin
								C1_inboolean[a] <= C1_inboolean[a];
							end
						end
					endcase
				end
				else begin
					C1_inboolean[a] <= C1_inboolean[a];
				end
			end
		end

		always @(posedge CLK) begin
			if (RST) begin
				C2_scan_inboolean[a] <= 0;
			end
			else begin
				if(c_state == CIRCLE2_POINT) begin
					case(complete)
						0 : begin
							if(a < 10) begin
								C2_scan_inboolean[a] <= in_circle[a];
							end
							else begin
								C2_scan_inboolean[a] <= C2_scan_inboolean[a];
							end
						end
						1 : begin
							if((a >= 10) && (a < 20)) begin
								C2_scan_inboolean[a] <= in_circle[a - 10];
							end
							else begin
								C2_scan_inboolean[a] <= C2_scan_inboolean[a];
							end
						end
						2 : begin
							if((a >= 20) && (a < 30)) begin
								C2_scan_inboolean[a] <= in_circle[a - 20];
							end
							else begin
								C2_scan_inboolean[a] <= C2_scan_inboolean[a];
							end
						end
						default : begin
							if((a >= 30) && (a < 40)) begin
								C2_scan_inboolean[a] <= in_circle[a - 30];
							end
							else begin
								C2_scan_inboolean[a] <= C2_scan_inboolean[a];
							end
						end
					endcase
				end
				else begin
					C2_scan_inboolean[a] <= C2_scan_inboolean[a];
				end
			end
		end
	end
endgenerate

//C2_best_uni
always @(posedge CLK) begin
	if (RST) begin
		C2_best_uni <= 0;
	end
	else begin
		if(c_state == SUB_INTERSECTION)begin
			if(uni >= C2_best_uni) begin
				C2_best_uni <= uni;
			end
			else begin
				C2_best_uni <= C2_best_uni;
			end
		end
		else if(c_state == CIRCLE1_POINT) begin
			C2_best_uni <= 0;
		end
		else begin
			C2_best_uni <= C2_best_uni;
		end
	end
end

always @(posedge CLK) begin
	if (RST) begin
		C1_best_uni <= 0;
	end
	else begin
		if((c_state == C1_C2_SWAP) && (C2X_best == C2X) && (C2Y_best == C2Y)) begin
			C1_best_uni <= C2_best_uni;
		end
		else if(c_state == IDLE) begin
			C1_best_uni <= 0;
		end
		else begin
			C1_best_uni <= C1_best_uni;
		end
	end
end

assign uni_subspace = C1_inboolean | C2_scan_inboolean;

assign uni = uni_subspace[0] + uni_subspace[1] + uni_subspace[2] + uni_subspace[3] 
				+ uni_subspace[4] + uni_subspace[5] +uni_subspace[6] + uni_subspace[7]
				+ uni_subspace[8] + uni_subspace[9] + uni_subspace[10] + uni_subspace[11] 
				+ uni_subspace[12] + uni_subspace[13] + uni_subspace[14] +uni_subspace[15] 
				+ uni_subspace[16] + uni_subspace[17] + uni_subspace[18] + uni_subspace[19] 
				+ uni_subspace[20] + uni_subspace[21] + uni_subspace[22] + uni_subspace[23] 
				+ uni_subspace[24] + uni_subspace[25] + uni_subspace[26] + uni_subspace[27] 
				+ uni_subspace[28] + uni_subspace[29] + uni_subspace[30] + uni_subspace[31] 
				+ uni_subspace[32] + uni_subspace[33] + uni_subspace[34] + uni_subspace[35] 
				+ uni_subspace[36] + uni_subspace[37] + uni_subspace[38] + uni_subspace[39];

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            main circuit                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//data_reg
genvar n;
generate
	for(n = 0; n < 40; n = n + 1) begin: data_reg
		always @(posedge CLK) begin
			if (RST) begin
				data_X[n] <= 0;
				data_Y[n] <= 0;
			end
			else begin
				if(c_state == LOAD) begin
					if(n == 0) begin
						data_X[n] <= X;
						data_Y[n] <= Y;
					end
					else begin
						data_X[n] <= data_X[n - 1];
						data_Y[n] <= data_Y[n - 1];
					end
				end
				else begin
					data_X[n] <= data_X[n];
					data_Y[n] <= data_Y[n];
				end
			end
		end
	end
endgenerate

//C1
always @(posedge CLK) begin
	if (RST) begin
		C1X <= 0;
		C1Y <= 0;
	end
	else begin
		if(c_state == C1_C2_SWAP) begin
			if(((C2X_best == C2X) && (C2Y_best == C2Y)) || (C2_best_uni < C1_best_uni)) begin
				C1X <= C1X;
				C1Y <= C1Y;
			end
			else begin
				C1X <= C2X_best;
				C1Y <= C2Y_best;
			end
		end
		else begin
			C1X <= C1X;
			C1Y <= C1Y;
		end
	end
end

//C2
always @(posedge CLK) begin
	if (RST) begin
		C2X <= 15;
		C2Y <= 15;
	end
	else begin
		if(c_state == C1_C2_SWAP) begin
			if(((C2X_best == C2X) && (C2Y_best == C2Y)) || (C2_best_uni < C1_best_uni)) begin
				C2X <= C2X;
				C2Y <= C2Y;
			end
			else begin
				C2X <= C1X;
				C2Y <= C1Y;
			end
		end
		else begin
			C2X <= C2X;
			C2Y <= C2Y;
		end
	end
end


//C2_scan
always @(posedge CLK) begin
	if (RST) begin
		C2X_scan <= 1;
		C2Y_scan <= 0;
	end
	else begin
		if(c_state == CIRCLE2_WHERE) begin
			{C2Y_scan, C2X_scan} <= {C2Y_scan, C2X_scan} + 2;
		end
		else if(c_state == CIRCLE1_POINT) begin
			if(counter[0]) begin //(counter[0] == 1) (means counter == 41)
				{C2Y_scan, C2X_scan} <= {C1Y, C1X} + 2;
			end
			else begin
				{C2Y_scan, C2X_scan} <= {C1Y, C1X} + 1;
			end
		end
		else begin
			{C2Y_scan, C2X_scan} <= {C2Y_scan, C2X_scan};
		end
	end
end

//C2_best
always @(posedge CLK) begin
	if (RST) begin
		C2X_best <= 1;
		C2Y_best <= 0;
	end
	else begin
		if(c_state == SUB_INTERSECTION) begin
			if(uni >= C2_best_uni) begin
				C2X_best <= C2X_scan;
				C2Y_best <= C2Y_scan;
			end
			else begin
				C2X_best <= C2X_best;
				C2Y_best <= C2Y_best;
			end
		end
	end
end

//counter
always @(posedge CLK) begin
	if (RST) begin
		counter <= 0;
	end
	else begin
		if(c_state == LOAD) begin
			counter <= counter + 1;
		end
		else if(c_state == C1_C2_SWAP) begin
			if((C2X_best == C2X) && (C2Y_best == C2Y)) begin
				counter <= counter + 1;
			end
			else begin
				counter <= counter;
			end
		end
		else if(c_state == IDLE)begin
			counter <= 0;
		end
		else begin
			counter <= counter;
		end
	end
end

always @(posedge CLK) begin
	if (RST) begin
		complete <= 0;	
	end
	else begin
		if((c_state == CIRCLE1_POINT) || (c_state == CIRCLE2_POINT)) begin
			complete <= complete + 1;
		end
		else begin
			complete <= 0;
		end
	end
end

endmodule
