////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR:    KT		March 30, 2022
// VERSION:   Verilog Simulation Architecture
//
////////////////////////////////////////////////////////////////////////////////
//
// ABSTRACT:  IC contest 2022
// DESIGN VERSION: 2
// DESCRIPITON: cycle = 553115
//              area = 6046.138870
// MODIFIED: 將find state由3個壓縮到剩一個，但比較器由3個增加到7個
// NOTE:須注意此版本之reset signal(RST)為同步
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

//cycle == 532956
reg [2:0] state ;
reg [2:0] next_state ;
reg [2:0] counter ;
reg [2:0] se [0:7] ; //sequence
reg [2:0] change_point ;
reg [2:0] search_point ;
reg [2:0] value ;
reg [9:0] sum_reg ;
reg [2:0] R0 ,R1 ,R2 ,R3 ,R4 ,R5 ,R6 ,L0 ,L1 ,L2 ,L3 ,L4 ,L5 ,L6 ;

wire last ;
	assign last = ((se[0] == 0) &&
				   (se[1] == 1) && 
				   (se[2] == 2) && 
				   (se[3] == 3) && 
				   (se[4] == 4) && 
				   (se[5] == 5) && 
				   (se[6] == 6) && 
				   (se[7] == 7)) ;

wire [2:0] change_value ;
	assign change_value = (change_point == 1) ? se[1] :
						  ((change_point == 2) ? se[2] :
						  ((change_point == 3) ? se[3] :
						  ((change_point == 4) ? se[4] :
						  ((change_point == 5) ? se[5] :
						  ((change_point == 6) ? se[6] :
						  ((change_point == 7) ? se[7] : 0)))))) ;

wire [2:0] search_value ;
	assign search_value = (counter == 1) ? se[1] :
						  ((counter == 2) ? se[2] :
						  ((counter == 3) ? se[3] :
						  ((counter == 4) ? se[4] :
						  ((counter == 5) ? se[5] :
						  ((counter == 6) ? se[6] :
						  ((counter == 7) ? se[7] : se[0])))))) ;

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
	localparam find    		= 0 ; //1 cycles
	localparam search  		= 1 ; //max 6 cycles
	localparam change  		= 2 ; //1 cycle
	localparam inverse      = 3 ; //1 cycles
	localparam load_compute = 4 ; //8 cycles
	localparam compare		= 5 ; //1 cycle
	localparam out 			= 6 ; //1 cycles
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                 FSM                                                           //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//state
	always @ (posedge CLK) begin
		if(RST)
			state <= 4 ;
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
				if((counter < change_point - 2) && (change_point > 1))
					next_state = state ;
				else
					next_state = change ;
			end
			change : begin
				next_state = inverse ;
			end
			inverse : begin
				next_state = load_compute ;
			end
			load_compute : begin
				if(counter == 7)
					next_state = compare ;
				else
					next_state = state ;
			end
			compare : begin
				if(last)
					next_state = out ;
				else
					next_state = find ;
			end
			default : next_state = state ;
		endcase
	end

	//counter
	always @ (posedge CLK) begin
		if (RST)
			counter <= 0 ;
		else begin
			case(state)
				find : begin
						counter <= 0 ;
				end
				search : begin
					if(counter == change_point - 1)
						counter <= 0 ;
					else
						counter <= counter + 1 ;
				end
				load_compute : begin
					if(counter == 7)
						counter <= 0 ;
					else
						counter <= counter + 1 ;
				end
				default : counter <= 0 ;
			endcase
		end
	end

	//W J
	always @ (*) begin
		if(state == load_compute) begin
			W = counter ;
			J = search_value ;
		end
		else begin
			W = 0 ;
			J = 0 ;
		end
	end

	//MatchCount MinCost
	always @ (posedge CLK) begin
		if(RST) begin
			MinCost <= 'd1023 ;
			MatchCount <= 1 ;
		end
		else if(state == compare) begin
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

	//out
	always @ (*) begin
		Valid = last && (state == out) ;
	end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                            main circuit                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//change_point
	always @ (posedge CLK) begin
		if(RST) begin
			change_point <= 1 ;
		end
		else if(state == find)begin
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

	//R L
	always @ (*) begin
			R0 = se[0] ;
			L0 = se[1] ;
			R1 = se[1] ;
			L1 = se[2] ;
			R2 = se[2] ;
			L2 = se[3] ;
			R3 = se[3] ;
			L3 = se[4] ;
			R4 = se[4] ;
			L4 = se[5] ;
			R5 = se[5] ;
			L5 = se[6] ;
			R6 = se[6] ;
			L6 = se[7] ;
	end
	
	//search point & value
	always @ (posedge CLK) begin
		if(RST) begin
			search_point <= 0 ;
			value <= se[0] ;
		end
		else if(state == search) begin
			if(counter < (change_point - 1))begin
				case(counter)
					0 : begin 
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 0 ;
								value <= se[0] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					1 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 1 ;
								value <= se[1] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					2 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 2 ;
								value <= se[2] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					3 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 3 ;
								value <= se[3] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					4 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 4 ;
								value <= se[4] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					5 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 5 ;
								value <= se[5] ;
							end
							else begin
								search_point <= search_point ;
								value <= value ;
							end
						end
					6 : begin
							if((change_value < search_value) && (search_value < value)) begin
								search_point <= 6 ;
								value <= se[6] ;
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
				value <= se[0] ;
			end
			else if(comparefunc1) begin
				search_point <= 1 ;
				value <= se[1] ;
			end
			else if(comparefunc2) begin
				search_point <= 2 ;
				value <= se[2] ;
			end
			else if(comparefunc3) begin
				search_point <= 3 ;
				value <= se[3] ;
			end
			else if(comparefunc4) begin
				search_point <= 4 ;
				value <= se[4] ;
			end
			else if(comparefunc5) begin
				search_point <= 5 ;
				value <= se[5] ;
			end
			else if(comparefunc6) begin
				search_point <= 6 ;
				value <= se[6] ;
			end
			else begin
				search_point <= change_point ;
				value <= value ;
			end
		end
	end

	//se
	always @ (posedge CLK) begin
		if(RST) begin
			se[0] <= 7 ;
			se[1] <= 6 ;
			se[2] <= 5 ;
			se[3] <= 4 ;
			se[4] <= 3 ;
			se[5] <= 2 ;
			se[6] <= 1 ;
			se[7] <= 0 ;
		end
		else if(state == change) begin
			se[change_point] <= se[search_point] ;
			se[search_point] <= se[change_point] ;
		end
		else if(state == inverse) begin
			case(change_point)
				2 : begin
						se[0] <= se[1] ;
						se[1] <= se[0] ;
						se[2] <= se[2] ;
						se[3] <= se[3] ;
						se[4] <= se[4] ;
						se[5] <= se[5] ;
						se[6] <= se[6] ;
						se[7] <= se[7] ;
					end
				3 : begin
						se[0] <= se[2] ;
						se[1] <= se[1] ;
						se[2] <= se[0] ;
						se[3] <= se[3] ;
						se[4] <= se[4] ;
						se[5] <= se[5] ;
						se[6] <= se[6] ;
						se[7] <= se[7] ;
					end
				4 : begin
						se[0] <= se[3] ;
						se[1] <= se[2] ;
						se[2] <= se[1] ;
						se[3] <= se[0] ;
						se[4] <= se[4] ;
						se[5] <= se[5] ;
						se[6] <= se[6] ;
						se[7] <= se[7] ;
					end
				5 : begin
						se[0] <= se[4] ;
						se[1] <= se[3] ;
						se[2] <= se[2] ;
						se[3] <= se[1] ;
						se[4] <= se[0] ;
						se[5] <= se[5] ;
						se[6] <= se[6] ;
						se[7] <= se[7] ;
					end
				6 : begin
						se[0] <= se[5] ;
						se[1] <= se[4] ;
						se[2] <= se[3] ;
						se[3] <= se[2] ;
						se[4] <= se[1] ;
						se[5] <= se[0] ;
						se[6] <= se[6] ;
						se[7] <= se[7] ;
					end
				7 : begin
						se[0] <= se[6] ;
						se[1] <= se[5] ;
						se[2] <= se[4] ;
						se[3] <= se[3] ;
						se[4] <= se[2] ;
						se[5] <= se[1] ;
						se[6] <= se[0] ;
						se[7] <= se[7] ;
					end
				default : begin
							se[0] <= se[0] ;
							se[1] <= se[1] ;
							se[2] <= se[2] ;
							se[3] <= se[3] ;
							se[4] <= se[4] ;
							se[5] <= se[5] ;
							se[6] <= se[6] ;
							se[7] <= se[7] ;
						end
			endcase
		end
		else begin
			se[0] <= se[0] ;
			se[1] <= se[1] ;
			se[2] <= se[2] ;
			se[3] <= se[3] ;
			se[4] <= se[4] ;
			se[5] <= se[5] ;
			se[6] <= se[6] ;
			se[7] <= se[7] ;
		end
	end

	//sum_reg
	always @ (posedge CLK) begin
		if(RST)
			sum_reg <= 0 ;
		else if(state == load_compute)
			sum_reg <= sum ;
		else if(state == find)
			sum_reg <= 0 ;
		else
			sum_reg <= sum_reg ;
	end

endmodule


