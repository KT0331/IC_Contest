module compa(
input [3:0] cx,
input [3:0] px,
input [3:0] cy,
input [3:0] py,
output reg in_circle);

reg [3:0] X_A;
reg [3:0] X_B;
reg [3:0] Y_A;
reg [3:0] Y_B;

wire [3:0] X_dis;
wire [3:0] Y_dis;

assign X_dis = X_A - X_B;
assign Y_dis = Y_A - Y_B;

always @(*) begin
	if(X_dis + Y_dis < 5) begin
		in_circle = 1;
	end
	else if((X_dis == 2) && (Y_dis == 3)) begin
		in_circle = 1;
	end
	else if((X_dis == 3) && (Y_dis == 2)) begin
		in_circle = 1;
	end
	else begin
		in_circle = 0;
	end
end

always @(*) begin
	if(cx > px) begin
		X_A = cx;
		X_B = px;
	end
	else begin
		X_A = px;
		X_B = cx;
	end
end

always @(*) begin
	if(cy > py) begin
		Y_A = cy;
		Y_B = py;
	end
	else begin
		Y_A = py;
		Y_B = cy;
	end
end

endmodule
