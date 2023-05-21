////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR:    KT		April 27, 2022
// VERSION:   Verilog Simulation Architecture
//
////////////////////////////////////////////////////////////////////////////////
//
// ABSTRACT:  IC contest 2022
// DESIGN VERSION: 4
// DESCRIPITON: cycle = 362884
//              area = 7512.692390
// MODIFIED: reset部分之coding style更好
// NOTE: 須注意此版本之reset signal(RST)為非同步，因為此版本使用同步reset
//       在MatchCount的DFF的RST會被布林化減掉
//
//------------------------------------------------------------------------------

module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

//cycle == 362884
reg [2:0] state ;
reg [2:0] next_state ;
reg [2:0] counter0 ;
reg [3:0] counter1 ;
reg [2:0] se0 [0:7] ; //sequence to permutation
reg [2:0] se1 [0:7] ; //sequence to load value
reg [2:0] change_point ;
reg [2:0] search_point ;
reg [2:0] value ;
reg [9:0] sum_reg ;
reg [2:0] R0 ,R1 ,R2 ,R3 ,R4 ,R5 ,R6 ,L0 ,L1 ,L2 ,L3 ,L4 ,L5 ,L6 ;

wire last ;
	assign last = ((se1[0] == 0) &&
				   (se1[1] == 1) && 
				   (se1[2] == 2) && 
				   (se1[3] == 3) && 
				   (se1[4] == 4) && 
				   (se1[5] == 5) && 
				   (se1[6] == 6) && 
				   (se1[7] == 7)) ;

wire [2:0] change_value ;
	assign change_value = (change_point == 1) ? se0[1] :
						  ((change_point == 2) ? se0[2] :
						  ((change_point == 3) ? se0[3] :
						  ((change_point == 4) ? se0[4] :
						  ((change_point == 5) ? se0[5] :
						  ((change_point == 6) ? se0[6] :
						  ((change_point == 7) ? se0[7] : 0)))))) ;

wire [2:0] search_value ;
	assign search_value = (counter0 == 1) ? se0[1] :
						  ((counter0 == 2) ? se0[2] :
						  ((counter0 == 3) ? se0[3] :
						  ((counter0 == 4) ? se0[4] :
						  ((counter0 == 5) ? se0[5] :
						  ((counter0 == 6) ? se0[6] :
						  ((counter0 == 7) ? se0[7] : se0[0])))))) ;

wire [2:0] load_value ;
	assign load_value = (counter1 == 1) ? se1[1] :
						  ((counter1 == 2) ? se1[2] :
						  ((counter1 == 3) ? se1[3] :
						  ((counter1 == 4) ? se1[4] :
						  ((counter1 == 5) ? se1[5] :
						  ((counter1 == 6) ? se1[6] :
						  ((counter1 == 7) ? se1[7] : se1[0])))))) ;

wire [9:0] sum ;
	assign sum = Cost + sum_reg ;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             comparator                                                        //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
wire comparefunc0 ;
	assign comparefunc0 = R0 > L0 ;

wire comparefunc1 ;
	assign comparefunc1 = R1 > L1 ;

wire comparefunc2 ;
	assign comparefunc2 = R2 > L2 ;

wire comparefunc3 ;
	assign comparefunc3 = R3 > L3 ;

wire comparefunc4 ;
	assign comparefunc4 = R4 > L4 ;

wire comparefunc5 ;
	assign comparefunc5 = R5 > L5 ;

wire comparefunc6 ;
	assign comparefunc6 = R6 > L6 ;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            FSM parameters                                                     //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	localparam find    		= 0 ; //1 cycles && se0 to se1
	localparam search  		= 1 ; //max 6 cycles
	localparam change  		= 2 ; //1 cycle
	localparam inverse      = 3 ; //1 cycles
	localparam idle 		= 4 ; //? cycles
	localparam out 			= 5 ; //1 cycles
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                 FSM                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//state
	always @ (posedge CLK) begin
		if(RST)
			state <= 0 ;
		else
			state <= next_state ;
	end

	//next_state
	always @ (*) begin
		case(state)
			find : begin
					next_state = search ;
			end
			search : begin
				if((counter0 < change_point - 2) && (change_point > 1))
					next_state = state ;
				else
					next_state = change ;
			end
			change : begin
				next_state = inverse ;
			end
			inverse : begin
				if(counter1 != 7)
					next_state = idle ;
				else
					next_state = find ;
			end
			idle : begin
				if(counter1 == 7)
					next_state = find ;
				else
					next_state = state ;
			end
			default : next_state = state ;
		endcase
	end

	//counter0
	always @ (posedge CLK) begin
		if (RST)
			counter0 <= 0 ;
		else begin
			case(state)
				find : begin
						counter0 <= 0 ;
				end
				search : begin
					if(counter0 == change_point - 1)
						counter0 <= 0 ;
					else
						counter0 <= counter0 + 1 ;
				end
				default : counter0 <= 0 ;
			endcase
		end
	end

	//counter1
	always @ (posedge CLK) begin
		if(RST)
			counter1 <= 0 ;
		else begin
			if(counter1 == 8)
				counter1 <= 0 ;
			else
				counter1 <= counter1 + 1 ;
		end
	end

	//W J
	always @ (*) begin
		W = counter1 ;
		J = load_value ;
	end

	//MatchCount MinCost
	always @ (posedge CLK) begin
		if(RST) begin
			MinCost <= 'd1023 ;
			MatchCount <= 0 ;
		end
		else begin
			if(counter1 == 8) begin
				if(sum_reg < MinCost) begin
					MinCost <= sum_reg ;
					MatchCount <= 1 ;
				end
				else if(sum_reg == MinCost) begin
					MinCost <= MinCost ;
					MatchCount <= MatchCount + 1 ;
				end
				else begin
					MinCost <= MinCost ;
					MatchCount <= MatchCount ;
				end
			end
			else begin
				MinCost <= MinCost ;
				MatchCount <= MatchCount ;
			end
		end
	end

	//out
	always @ (*) begin
		Valid = last && (counter1 == 8) ;
	end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            main circuit                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//change_point
	always @ (posedge CLK) begin
		if(RST) begin
			change_point <= 1 ;
		end
		else begin
			if(state == find)begin
				if(comparefunc0)
					change_point <= 1 ;
				else if(comparefunc1)
					change_point <= 2 ;
				else if(comparefunc2)
					change_point <= 3 ;
				else if(comparefunc3)
					change_point <= 4 ;
				else if(comparefunc4)
					change_point <= 5 ;
				else if(comparefunc5)
					change_point <= 6 ;
				else if(comparefunc6)
					change_point <= 7 ;
				else
					change_point <= change_point ;
			end
			else begin
				change_point <= change_point ;
			end
		end
	end

	//R L
	always @ (*) begin
			R0 = se0[0] ;
			L0 = se0[1] ;
			R1 = se0[1] ;
			L1 = se0[2] ;
			R2 = se0[2] ;
			L2 = se0[3] ;
			R3 = se0[3] ;
			L3 = se0[4] ;
			R4 = se0[4] ;
			L4 = se0[5] ;
			R5 = se0[5] ;
			L5 = se0[6] ;
			R6 = se0[6] ;
			L6 = se0[7] ;
	end
	
	//search point & value
	always @ (posedge CLK) begin
		if(RST) begin
			search_point <= 0 ;
			value <= se0[0] ;
		end
		else begin
			if(state == search) begin
				if(counter0 < (change_point - 1))begin
					case(counter0)
						0 : begin 
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 0 ;
									value <= se0[0] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						1 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 1 ;
									value <= se0[1] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						2 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 2 ;
									value <= se0[2] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						3 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 3 ;
									value <= se0[3] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						4 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 4 ;
									value <= se0[4] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						5 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 5 ;
									value <= se0[5] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						6 : begin
								if((change_value < search_value) && (search_value < value)) begin
									search_point <= 6 ;
									value <= se0[6] ;
								end
								else begin
									search_point <= search_point ;
									value <= value ;
								end
							end
						default : begin 
									search_point <= change_point ;
									value <= value ;
								end
					endcase	
				end
				else begin
					search_point <= search_point ;
					value <= value ;
				end
			end
			else begin
				if(comparefunc0) begin
					search_point <= 0 ;
					value <= se0[0] ;
				end
				else if(comparefunc1) begin
					search_point <= 1 ;
					value <= se0[1] ;
				end
				else if(comparefunc2) begin
					search_point <= 2 ;
					value <= se0[2] ;
				end
				else if(comparefunc3) begin
					search_point <= 3 ;
					value <= se0[3] ;
				end
				else if(comparefunc4) begin
					search_point <= 4 ;
					value <= se0[4] ;
				end
				else if(comparefunc5) begin
					search_point <= 5 ;
					value <= se0[5] ;
				end
				else if(comparefunc6) begin
					search_point <= 6 ;
					value <= se0[6] ;
				end
				else begin
					search_point <= change_point ;
					value <= value ;
				end
			end
		end
	end

	//se0
	always @ (posedge CLK) begin
		if(RST) begin
			se0[0] <= 7 ;
			se0[1] <= 6 ;
			se0[2] <= 5 ;
			se0[3] <= 4 ;
			se0[4] <= 3 ;
			se0[5] <= 2 ;
			se0[6] <= 1 ;
			se0[7] <= 0 ;
		end
		else begin
			if(state == change) begin
				se0[change_point] <= se0[search_point] ;
				se0[search_point] <= se0[change_point] ;
			end
			else if(state == inverse) begin
				case(change_point)
					2 : begin
							se0[0] <= se0[1] ;
							se0[1] <= se0[0] ;
							se0[2] <= se0[2] ;
							se0[3] <= se0[3] ;
							se0[4] <= se0[4] ;
							se0[5] <= se0[5] ;
							se0[6] <= se0[6] ;
							se0[7] <= se0[7] ;
						end
					3 : begin
							se0[0] <= se0[2] ;
							se0[1] <= se0[1] ;
							se0[2] <= se0[0] ;
							se0[3] <= se0[3] ;
							se0[4] <= se0[4] ;
							se0[5] <= se0[5] ;
							se0[6] <= se0[6] ;
							se0[7] <= se0[7] ;
						end
					4 : begin
							se0[0] <= se0[3] ;
							se0[1] <= se0[2] ;
							se0[2] <= se0[1] ;
							se0[3] <= se0[0] ;
							se0[4] <= se0[4] ;
							se0[5] <= se0[5] ;
							se0[6] <= se0[6] ;
							se0[7] <= se0[7] ;
						end
					5 : begin
							se0[0] <= se0[4] ;
							se0[1] <= se0[3] ;
							se0[2] <= se0[2] ;
							se0[3] <= se0[1] ;
							se0[4] <= se0[0] ;
							se0[5] <= se0[5] ;
							se0[6] <= se0[6] ;
							se0[7] <= se0[7] ;
						end
					6 : begin
							se0[0] <= se0[5] ;
							se0[1] <= se0[4] ;
							se0[2] <= se0[3] ;
							se0[3] <= se0[2] ;
							se0[4] <= se0[1] ;
							se0[5] <= se0[0] ;
							se0[6] <= se0[6] ;
							se0[7] <= se0[7] ;
						end
					7 : begin
							se0[0] <= se0[6] ;
							se0[1] <= se0[5] ;
							se0[2] <= se0[4] ;
							se0[3] <= se0[3] ;
							se0[4] <= se0[2] ;
							se0[5] <= se0[1] ;
							se0[6] <= se0[0] ;
							se0[7] <= se0[7] ;
						end
					default : begin
								se0[0] <= se0[0] ;
								se0[1] <= se0[1] ;
								se0[2] <= se0[2] ;
								se0[3] <= se0[3] ;
								se0[4] <= se0[4] ;
								se0[5] <= se0[5] ;
								se0[6] <= se0[6] ;
								se0[7] <= se0[7] ;
							end
				endcase
			end
			else begin
				se0[0] <= se0[0] ;
				se0[1] <= se0[1] ;
				se0[2] <= se0[2] ;
				se0[3] <= se0[3] ;
				se0[4] <= se0[4] ;
				se0[5] <= se0[5] ;
				se0[6] <= se0[6] ;
				se0[7] <= se0[7] ;
			end
		end
	end

	//se1
	always @ (posedge CLK) begin
		if(RST) begin
			se1[0] <= 7 ;
			se1[1] <= 6 ;
			se1[2] <= 5 ;
			se1[3] <= 4 ;
			se1[4] <= 3 ;
			se1[5] <= 2 ;
			se1[6] <= 1 ;
			se1[7] <= 0 ;
		end
		else begin
			if(state == 0) begin
				se1[0] <= se0[0] ;
				se1[1] <= se0[1] ;
				se1[2] <= se0[2] ;
				se1[3] <= se0[3] ;
				se1[4] <= se0[4] ;
				se1[5] <= se0[5] ;
				se1[6] <= se0[6] ;
				se1[7] <= se0[7] ;
			end
			else begin
				se1[0] <= se1[0] ;
				se1[1] <= se1[1] ;
				se1[2] <= se1[2] ;
				se1[3] <= se1[3] ;
				se1[4] <= se1[4] ;
				se1[5] <= se1[5] ;
				se1[6] <= se1[6] ;
				se1[7] <= se1[7] ;
			end
		end
	end

	//sum_reg
	always @ (posedge CLK) begin
		if(RST)
			sum_reg <= 0 ;
		else begin 
			if(counter1 == 8)
				sum_reg <= 0 ;
			else
				sum_reg <= sum ;
		end
	end

endmodule


