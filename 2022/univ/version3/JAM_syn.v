/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed Apr 13 15:34:49 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, \se1[0][2] ,
         \se1[0][1] , \se1[0][0] , \se1[1][2] , \se1[1][1] , \se1[1][0] ,
         \se1[2][2] , \se1[2][1] , \se1[2][0] , \se1[3][2] , \se1[3][1] ,
         \se1[3][0] , \se1[4][2] , \se1[4][1] , \se1[4][0] , \se1[5][2] ,
         \se1[5][1] , \se1[5][0] , \se1[6][2] , \se1[6][1] , \se1[6][0] ,
         \se1[7][2] , \se1[7][1] , \se1[7][0] , \counter1[3] , N174, N188,
         N189, N190, N197, N198, N199, N200, N398, N399, N400, N401, N402,
         N403, N602, N603, N604, N605, N606, N607, N608, N609, N610, N611, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n51, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n97, n104, n105, n106, n107, n108, n109, n110, n115, n116, n119, n120,
         n121, n122, n123, n124, n125, n130, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n284, n302, n305, n307,
         n310, n311, n312, n315, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n366, n367, n368, n369, n374, n376, n377, n381,
         n382, n383, n384, n389, n390, n391, n392, n397, n400, n401, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n432,
         n436, n437, n438, n439, n441, n442, n443, n444, n445, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n481, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n610, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n636, n638, n640, n645, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n844, n845;
  wire   [2:0] change_point;
  wire   [2:0] counter0;
  wire   [9:0] sum_reg;
  wire   [9:0] sum;
  wire   [2:0] R0;
  wire   [2:0] L0;
  wire   [2:0] L1;
  wire   [2:0] L2;
  wire   [2:0] R4;
  wire   [2:0] R5;
  wire   [2:0] R6;
  wire   [2:0] L6;
  wire   [2:0] state;
  wire   [2:0] value;
  wire   [2:0] search_point;

  DFFQX1 \se0_reg[7][0]  ( .D(n608), .CK(CLK), .Q(L6[0]) );
  DFFQX1 \se0_reg[7][1]  ( .D(n601), .CK(CLK), .Q(L6[1]) );
  DFFQX1 \se0_reg[7][2]  ( .D(n600), .CK(CLK), .Q(L6[2]) );
  DFFQX1 \se0_reg[5][2]  ( .D(n594), .CK(CLK), .Q(R5[2]) );
  DFFQX1 \se0_reg[6][1]  ( .D(n598), .CK(CLK), .Q(R6[1]) );
  DFFQX1 \se0_reg[5][0]  ( .D(n596), .CK(CLK), .Q(R5[0]) );
  DFFQX1 \se1_reg[0][2]  ( .D(n578), .CK(CLK), .Q(\se1[0][2] ) );
  DFFQX1 \se1_reg[0][1]  ( .D(n577), .CK(CLK), .Q(\se1[0][1] ) );
  DFFQX1 \se1_reg[0][0]  ( .D(n576), .CK(CLK), .Q(\se1[0][0] ) );
  DFFQX1 \se1_reg[1][2]  ( .D(n575), .CK(CLK), .Q(\se1[1][2] ) );
  DFFQX1 \se1_reg[1][1]  ( .D(n574), .CK(CLK), .Q(\se1[1][1] ) );
  DFFQX1 \se1_reg[1][0]  ( .D(n573), .CK(CLK), .Q(\se1[1][0] ) );
  DFFQX1 \se1_reg[2][2]  ( .D(n572), .CK(CLK), .Q(\se1[2][2] ) );
  DFFQX1 \se1_reg[2][1]  ( .D(n571), .CK(CLK), .Q(\se1[2][1] ) );
  DFFQX1 \se1_reg[2][0]  ( .D(n570), .CK(CLK), .Q(\se1[2][0] ) );
  DFFQX1 \se1_reg[3][2]  ( .D(n569), .CK(CLK), .Q(\se1[3][2] ) );
  DFFQX1 \se1_reg[3][1]  ( .D(n568), .CK(CLK), .Q(\se1[3][1] ) );
  DFFQX1 \se1_reg[3][0]  ( .D(n567), .CK(CLK), .Q(\se1[3][0] ) );
  DFFQX1 \se1_reg[4][1]  ( .D(n565), .CK(CLK), .Q(\se1[4][1] ) );
  DFFQX1 \se1_reg[4][0]  ( .D(n564), .CK(CLK), .Q(\se1[4][0] ) );
  DFFQX1 \se1_reg[5][2]  ( .D(n563), .CK(CLK), .Q(\se1[5][2] ) );
  DFFQX1 \se1_reg[5][0]  ( .D(n561), .CK(CLK), .Q(\se1[5][0] ) );
  DFFQX1 \se1_reg[6][2]  ( .D(n560), .CK(CLK), .Q(\se1[6][2] ) );
  DFFQX1 \se1_reg[6][1]  ( .D(n559), .CK(CLK), .Q(\se1[6][1] ) );
  DFFQX1 \se1_reg[6][0]  ( .D(n558), .CK(CLK), .Q(\se1[6][0] ) );
  DFFQX1 \se1_reg[7][2]  ( .D(n557), .CK(CLK), .Q(\se1[7][2] ) );
  DFFQX1 \se1_reg[7][1]  ( .D(n556), .CK(CLK), .Q(\se1[7][1] ) );
  DFFQX1 \se1_reg[7][0]  ( .D(n555), .CK(CLK), .Q(\se1[7][0] ) );
  DFFQX1 \sum_reg_reg[8]  ( .D(N610), .CK(CLK), .Q(sum_reg[8]) );
  DFFQX1 \sum_reg_reg[7]  ( .D(N609), .CK(CLK), .Q(sum_reg[7]) );
  DFFQX1 \sum_reg_reg[6]  ( .D(N608), .CK(CLK), .Q(sum_reg[6]) );
  DFFQX1 \sum_reg_reg[5]  ( .D(N607), .CK(CLK), .Q(sum_reg[5]) );
  DFFQX1 \sum_reg_reg[4]  ( .D(N606), .CK(CLK), .Q(sum_reg[4]) );
  DFFQX1 \sum_reg_reg[3]  ( .D(N605), .CK(CLK), .Q(sum_reg[3]) );
  CLKINVX1 U42 ( .A(RST), .Y(n323) );
  OAI21XL U91 ( .A0(RST), .A1(n71), .B0(n70), .Y(n554) );
  OAI22XL U106 ( .A0(n381), .A1(n333), .B0(n302), .B1(n531), .Y(n557) );
  OAI22XL U231 ( .A0(n163), .A1(n460), .B0(n376), .B1(n189), .Y(n107) );
  OAI22XL U257 ( .A0(n163), .A1(n475), .B0(n384), .B1(n189), .Y(n121) );
  OAI22XL U279 ( .A0(n163), .A1(n490), .B0(n391), .B1(n189), .Y(n137) );
  OAI22XL U296 ( .A0(n190), .A1(n384), .B0(n475), .B1(n189), .Y(n152) );
  AOI2BB2X1 U303 ( .B0(R4[0]), .B1(n254), .A0N(n190), .A1N(n391), .Y(n157) );
  AOI2BB2X1 U358 ( .B0(L0[1]), .B1(n254), .A0N(n383), .A1N(n257), .Y(n214) );
  AOI2BB2X1 U363 ( .B0(L1[0]), .B1(n267), .A0N(n490), .A1N(n228), .Y(n218) );
  OAI22XL U386 ( .A0(n265), .A1(n251), .B0(n263), .B1(n250), .Y(n252) );
  OAI22XL U443 ( .A0(n335), .A1(n315), .B0(n307), .B1(n333), .Y(n602) );
  AOI221XL U454 ( .A0(state[2]), .A1(n324), .B0(n322), .B1(n321), .C0(RST), 
        .Y(n604) );
  OAI22XL U469 ( .A0(n335), .A1(n633), .B0(n334), .B1(n333), .Y(n607) );
  OAI21XL U558 ( .A0(n424), .A1(n468), .B0(n494), .Y(n425) );
  OAI21XL U570 ( .A0(n465), .A1(n439), .B0(n469), .Y(n453) );
  NOR3BX1 U574 ( .AN(n451), .B(n442), .C(n450), .Y(n487) );
  AOI2BB1X1 U582 ( .A0N(n458), .A1N(n457), .B0(RST), .Y(n491) );
  OAI21XL U584 ( .A0(n491), .A1(n460), .B0(n459), .Y(n464) );
  OAI22XL U585 ( .A0(n462), .A1(n494), .B0(n461), .B1(n492), .Y(n463) );
  OAI21XL U594 ( .A0(n491), .A1(n475), .B0(n474), .Y(n479) );
  OAI22XL U595 ( .A0(n477), .A1(n494), .B0(n476), .B1(n492), .Y(n478) );
  OAI21XL U601 ( .A0(n491), .A1(n490), .B0(n489), .Y(n497) );
  OAI22XL U602 ( .A0(n495), .A1(n494), .B0(n493), .B1(n492), .Y(n496) );
  AO22X1 U626 ( .A0(\counter1[3] ), .A1(n521), .B0(n524), .B1(n520), .Y(N200)
         );
  DFFQX1 \value_reg[0]  ( .D(N401), .CK(CLK), .Q(value[0]) );
  DFFQX1 \value_reg[2]  ( .D(N403), .CK(CLK), .Q(value[2]) );
  DFFQX1 \value_reg[1]  ( .D(N402), .CK(CLK), .Q(value[1]) );
  DFFQX1 \se0_reg[6][2]  ( .D(n597), .CK(CLK), .Q(R6[2]) );
  DFFQX1 \sum_reg_reg[1]  ( .D(N603), .CK(CLK), .Q(sum_reg[1]) );
  DFFQX1 \se0_reg[0][1]  ( .D(n580), .CK(CLK), .Q(R0[1]) );
  DFFQX1 \se0_reg[6][0]  ( .D(n599), .CK(CLK), .Q(R6[0]) );
  DFFQX1 \search_point_reg[0]  ( .D(N398), .CK(CLK), .Q(search_point[0]) );
  DFFQX1 \search_point_reg[2]  ( .D(N400), .CK(CLK), .Q(search_point[2]) );
  DFFQX1 \se0_reg[0][0]  ( .D(n581), .CK(CLK), .Q(R0[0]) );
  DFFQX1 \se0_reg[0][2]  ( .D(n579), .CK(CLK), .Q(R0[2]) );
  DFFQX1 \change_point_reg[2]  ( .D(n607), .CK(CLK), .Q(change_point[2]) );
  DFFQX1 \sum_reg_reg[0]  ( .D(N602), .CK(CLK), .Q(sum_reg[0]) );
  DFFQX1 \state_reg[0]  ( .D(n604), .CK(CLK), .Q(state[0]) );
  DFFQX1 \se0_reg[4][2]  ( .D(n591), .CK(CLK), .Q(R4[2]) );
  DFFQX1 \state_reg[1]  ( .D(n605), .CK(CLK), .Q(state[1]) );
  DFFQX1 \sum_reg_reg[2]  ( .D(N604), .CK(CLK), .Q(sum_reg[2]) );
  DFFQX1 \se1_reg[4][2]  ( .D(n566), .CK(CLK), .Q(\se1[4][2] ) );
  DFFQX1 \counter0_reg[1]  ( .D(N189), .CK(CLK), .Q(counter0[1]) );
  DFFQX1 \se0_reg[3][0]  ( .D(n590), .CK(CLK), .Q(L2[0]) );
  DFFQX1 \counter0_reg[0]  ( .D(N188), .CK(CLK), .Q(counter0[0]) );
  DFFQX1 \se0_reg[3][1]  ( .D(n589), .CK(CLK), .Q(L2[1]) );
  DFFQX1 \se0_reg[5][1]  ( .D(n595), .CK(CLK), .Q(R5[1]) );
  DFFQX1 \se0_reg[4][1]  ( .D(n592), .CK(CLK), .Q(R4[1]) );
  DFFQX1 \se0_reg[1][2]  ( .D(n582), .CK(CLK), .Q(L0[2]) );
  DFFQX1 \se0_reg[4][0]  ( .D(n593), .CK(CLK), .Q(R4[0]) );
  DFFQX1 \se0_reg[3][2]  ( .D(n588), .CK(CLK), .Q(L2[2]) );
  DFFQX1 \se0_reg[1][1]  ( .D(n583), .CK(CLK), .Q(L0[1]) );
  AOI22XL U583 ( .A0(L0[2]), .A1(n488), .B0(L1[2]), .B1(n487), .Y(n459) );
  OAI22XL U297 ( .A0(n382), .A1(n228), .B0(n383), .B1(n175), .Y(n149) );
  OAI221XL U299 ( .A0(n155), .A1(n233), .B0(n154), .B1(n232), .C0(n150), .Y(
        n151) );
  AO22X1 U390 ( .A0(n270), .A1(n256), .B0(R6[2]), .B1(n255), .Y(n597) );
  OAI22XL U247 ( .A0(n486), .A1(n257), .B0(n476), .B1(n228), .Y(n115) );
  OAI22XL U258 ( .A0(n477), .A1(n238), .B0(n382), .B1(n175), .Y(n120) );
  AOI2BB2X1 U261 ( .B0(n142), .B1(n475), .A0N(n142), .A1N(n124), .Y(n580) );
  OAI22XL U332 ( .A0(n376), .A1(n228), .B0(n374), .B1(n238), .Y(n187) );
  OAI221XL U334 ( .A0(n197), .A1(n207), .B0(n196), .B1(n206), .C0(n188), .Y(
        n192) );
  AO22X1 U338 ( .A0(n202), .A1(n192), .B0(L2[2]), .B1(n191), .Y(n588) );
  OAI22XL U269 ( .A0(n509), .A1(n257), .B0(n493), .B1(n228), .Y(n130) );
  OAI22XL U280 ( .A0(n495), .A1(n238), .B0(n392), .B1(n175), .Y(n136) );
  AOI2BB2X1 U283 ( .B0(n142), .B1(n490), .A0N(n142), .A1N(n141), .Y(n581) );
  OAI22XL U351 ( .A0(n460), .A1(n228), .B0(n374), .B1(n257), .Y(n209) );
  OAI22XL U302 ( .A0(n392), .A1(n228), .B0(n490), .B1(n189), .Y(n159) );
  OAI22XL U395 ( .A0(n265), .A1(n264), .B0(n263), .B1(n262), .Y(n266) );
  OAI22XL U310 ( .A0(n461), .A1(n257), .B0(n376), .B1(n175), .Y(n168) );
  OAI22XL U312 ( .A0(n377), .A1(n238), .B0(n460), .B1(n176), .Y(n165) );
  AOI2BB2X1 U316 ( .B0(n183), .B1(n169), .A0N(n183), .A1N(L1[2]), .Y(n585) );
  OAI22XL U211 ( .A0(n473), .A1(n257), .B0(n461), .B1(n228), .Y(n97) );
  OAI22XL U236 ( .A0(n462), .A1(n238), .B0(n377), .B1(n175), .Y(n106) );
  AOI2BB2X1 U239 ( .B0(n142), .B1(n460), .A0N(n142), .A1N(n110), .Y(n579) );
  OAI22XL U344 ( .A0(n391), .A1(n228), .B0(n390), .B1(n238), .Y(n199) );
  OAI22XL U345 ( .A0(n197), .A1(n264), .B0(n196), .B1(n262), .Y(n198) );
  OAI22XL U340 ( .A0(n384), .A1(n228), .B0(n383), .B1(n238), .Y(n194) );
  OAI22XL U341 ( .A0(n197), .A1(n233), .B0(n196), .B1(n232), .Y(n193) );
  OAI22XL U375 ( .A0(n475), .A1(n238), .B0(n384), .B1(n257), .Y(n235) );
  OAI22XL U376 ( .A0(n242), .A1(n233), .B0(n240), .B1(n232), .Y(n234) );
  OAI22XL U324 ( .A0(n493), .A1(n257), .B0(n391), .B1(n175), .Y(n181) );
  OAI22XL U325 ( .A0(n392), .A1(n238), .B0(n490), .B1(n176), .Y(n177) );
  OAI22XL U380 ( .A0(n391), .A1(n257), .B0(n490), .B1(n238), .Y(n239) );
  AOI221XL U381 ( .A0(n243), .A1(n242), .B0(n241), .B1(n240), .C0(n239), .Y(
        n245) );
  OAI22XL U370 ( .A0(n460), .A1(n238), .B0(n376), .B1(n257), .Y(n227) );
  AOI221XL U371 ( .A0(n250), .A1(n242), .B0(n251), .B1(n240), .C0(n227), .Y(
        n231) );
  OAI22XL U318 ( .A0(n382), .A1(n238), .B0(n384), .B1(n175), .Y(n172) );
  OAI22XL U319 ( .A0(n476), .A1(n257), .B0(n475), .B1(n176), .Y(n171) );
  AOI221XL U401 ( .A0(n276), .A1(n275), .B0(n338), .B1(n275), .C0(n274), .Y(
        n277) );
  NOR3BX1 U402 ( .AN(n279), .B(n278), .C(n277), .Y(n341) );
  OAI211XL U458 ( .A0(state[2]), .A1(n324), .B0(state[1]), .C0(n323), .Y(n325)
         );
  OAI21XL U226 ( .A0(state[2]), .A1(n320), .B0(n323), .Y(n279) );
  NAND2BX2 U41 ( .AN(n14), .B(n13), .Y(n70) );
  NOR2X1 U499 ( .A(RST), .B(n458), .Y(n441) );
  NAND2X1 U500 ( .A(n441), .B(n366), .Y(n436) );
  NOR2X1 U567 ( .A(n437), .B(n436), .Y(n498) );
  NOR2X1 U501 ( .A(n367), .B(n436), .Y(n420) );
  NOR2X1 U579 ( .A(n451), .B(n450), .Y(n488) );
  CLKINVX1 U557 ( .A(n452), .Y(n494) );
  NAND2BX1 U553 ( .AN(n421), .B(n420), .Y(n492) );
  NAND2BX1 U555 ( .AN(n510), .B(n432), .Y(n468) );
  NAND2X1 U590 ( .A(n469), .B(n468), .Y(n503) );
  AOI211X1 U559 ( .A0(n505), .A1(n427), .B0(n426), .C0(n425), .Y(n430) );
  NAND2X1 U255 ( .A(n282), .B(n275), .Y(n232) );
  NOR2X1 U245 ( .A(n281), .B(n247), .Y(n259) );
  NOR2X2 U232 ( .A(n249), .B(n105), .Y(n254) );
  OAI21X1 U227 ( .A0(n105), .A1(n104), .B0(n279), .Y(n143) );
  CLKINVX1 U246 ( .A(n259), .Y(n233) );
  AOI211X1 U298 ( .A0(R5[1]), .A1(n267), .B0(RST), .C0(n149), .Y(n150) );
  AOI211X1 U300 ( .A0(R4[1]), .A1(n254), .B0(n152), .C0(n151), .Y(n153) );
  NOR2X1 U225 ( .A(n272), .B(n247), .Y(n251) );
  AOI211X1 U293 ( .A0(R4[2]), .A1(n254), .B0(n147), .C0(n146), .Y(n148) );
  NOR2X1 U267 ( .A(n336), .B(n247), .Y(n241) );
  AOI221X4 U184 ( .A0(n140), .A1(n275), .B0(n275), .B1(n116), .C0(n274), .Y(
        n142) );
  CLKINVX1 U228 ( .A(n143), .Y(n163) );
  NOR2X1 U336 ( .A(n267), .B(n210), .Y(n203) );
  AOI211X1 U328 ( .A0(L1[0]), .A1(n182), .B0(n181), .C0(n180), .Y(n184) );
  OAI31X1 U400 ( .A0(n276), .A1(n338), .A2(n274), .B0(n275), .Y(n339) );
  NAND2X1 U457 ( .A(n458), .B(n323), .Y(n510) );
  NAND2X1 U560 ( .A(n429), .B(n428), .Y(n508) );
  NAND2X2 U98 ( .A(n323), .B(n91), .Y(n302) );
  NAND2X4 U208 ( .A(n276), .B(n278), .Y(n257) );
  OAI21XL U624 ( .A0(W[1]), .A1(n517), .B0(n525), .Y(n521) );
  OAI22XL U630 ( .A0(n528), .A1(n527), .B0(n526), .B1(n525), .Y(N198) );
  AOI2BB2X1 U294 ( .B0(n160), .B1(n148), .A0N(n160), .A1N(L0[2]), .Y(n582) );
  OAI31XL U628 ( .A0(RST), .A1(n526), .A2(n523), .B0(n522), .Y(N199) );
  OAI22XL U118 ( .A0(n495), .A1(n333), .B0(n302), .B1(n75), .Y(n561) );
  OAI22XL U136 ( .A0(n392), .A1(n333), .B0(n302), .B1(n81), .Y(n567) );
  OAI22XL U100 ( .A0(n397), .A1(n333), .B0(n302), .B1(n529), .Y(n555) );
  OAI22XL U154 ( .A0(n391), .A1(n333), .B0(n302), .B1(n86), .Y(n573) );
  OAI22XL U148 ( .A0(n383), .A1(n333), .B0(n302), .B1(n532), .Y(n571) );
  OAI22XL U112 ( .A0(n486), .A1(n333), .B0(n302), .B1(n73), .Y(n559) );
  OAI22XL U115 ( .A0(n473), .A1(n333), .B0(n302), .B1(n74), .Y(n560) );
  OAI22XL U133 ( .A0(n461), .A1(n333), .B0(n302), .B1(n80), .Y(n566) );
  OAI22XL U103 ( .A0(n389), .A1(n333), .B0(n302), .B1(n530), .Y(n556) );
  OAI22XL U124 ( .A0(n462), .A1(n333), .B0(n302), .B1(n77), .Y(n563) );
  OAI22XL U139 ( .A0(n382), .A1(n333), .B0(n302), .B1(n82), .Y(n568) );
  OAI21XL U356 ( .A0(n225), .A1(n222), .B0(R4[2]), .Y(n212) );
  AOI221XL U360 ( .A0(n260), .A1(n221), .B0(n259), .B1(n220), .C0(n215), .Y(
        n217) );
  AOI221XL U608 ( .A0(counter0[2]), .A1(n513), .B0(n512), .B1(n511), .C0(n514), 
        .Y(N190) );
  OAI31XL U459 ( .A0(n326), .A1(n329), .A2(n510), .B0(n325), .Y(n605) );
  OAI31XL U467 ( .A0(RST), .A1(n518), .A2(n331), .B0(n330), .Y(n606) );
  OAI221XL U127 ( .A0(n845), .A1(n78), .B0(n91), .B1(n493), .C0(n323), .Y(n564) );
  OAI221XL U121 ( .A0(n845), .A1(n76), .B0(n91), .B1(n477), .C0(n323), .Y(n562) );
  OAI221XL U142 ( .A0(n845), .A1(n83), .B0(n91), .B1(n377), .C0(n323), .Y(n569) );
  OAI221XL U145 ( .A0(n845), .A1(n84), .B0(n91), .B1(n390), .C0(n323), .Y(n570) );
  OAI221XL U151 ( .A0(n845), .A1(n85), .B0(n91), .B1(n374), .C0(n323), .Y(n572) );
  OAI221XL U157 ( .A0(n845), .A1(n87), .B0(n91), .B1(n384), .C0(n323), .Y(n574) );
  OAI221XL U160 ( .A0(n845), .A1(n88), .B0(n91), .B1(n376), .C0(n323), .Y(n575) );
  OAI221XL U163 ( .A0(n845), .A1(n89), .B0(n91), .B1(n490), .C0(n323), .Y(n576) );
  OAI221XL U166 ( .A0(n845), .A1(n90), .B0(n91), .B1(n475), .C0(n323), .Y(n577) );
  OAI221XL U169 ( .A0(n845), .A1(n92), .B0(n91), .B1(n460), .C0(n323), .Y(n578) );
  OAI221XL U109 ( .A0(n845), .A1(n72), .B0(n91), .B1(n509), .C0(n323), .Y(n558) );
  OAI221XL U130 ( .A0(n845), .A1(n79), .B0(n91), .B1(n476), .C0(n323), .Y(n565) );
  NOR2X1 U510 ( .A(n432), .B(n510), .Y(n505) );
  NAND2X2 U97 ( .A(n845), .B(n323), .Y(n333) );
  NAND2XL U446 ( .A(change_point[0]), .B(n310), .Y(n311) );
  AOI32X1 U384 ( .A0(n249), .A1(n248), .A2(n263), .B0(n247), .B1(n248), .Y(
        n270) );
  NOR2X2 U285 ( .A(n164), .B(n143), .Y(n190) );
  AOI221X1 U393 ( .A0(n260), .A1(n265), .B0(n259), .B1(n263), .C0(n258), .Y(
        n261) );
  CLKINVX1 U183 ( .A(n248), .Y(n274) );
  AOI32X1 U330 ( .A0(n186), .A1(n248), .A2(n196), .B0(n247), .B1(n248), .Y(
        n202) );
  OAI222XL U347 ( .A0(n392), .A1(n203), .B0(n392), .B1(n202), .C0(n201), .C1(
        n200), .Y(n590) );
  OAI222XL U343 ( .A0(n382), .A1(n203), .B0(n382), .B1(n202), .C0(n201), .C1(
        n195), .Y(n589) );
  OAI2BB2XL U320 ( .B0(n844), .B1(n232), .A0N(n844), .A1N(n259), .Y(n170) );
  OAI22XL U405 ( .A0(n341), .A1(n389), .B0(n284), .B1(n339), .Y(n601) );
  OAI31XL U437 ( .A0(n428), .A1(n305), .A2(n333), .B0(n302), .Y(n310) );
  NAND2X4 U210 ( .A(n226), .B(n278), .Y(n228) );
  OAI21XL U387 ( .A0(n460), .A1(n257), .B0(n252), .Y(n256) );
  OAI21XL U382 ( .A0(n246), .A1(n253), .B0(R5[0]), .Y(n244) );
  OAI21XL U373 ( .A0(n246), .A1(n253), .B0(R5[2]), .Y(n230) );
  OAI22XL U471 ( .A0(n341), .A1(n397), .B0(n340), .B1(n339), .Y(n608) );
  OAI22XL U403 ( .A0(n280), .A1(n339), .B0(n341), .B1(n381), .Y(n600) );
  NOR2X2 U388 ( .A(n254), .B(n253), .Y(n271) );
  AOI32X1 U284 ( .A0(n400), .A1(n248), .A2(n154), .B0(n247), .B1(n248), .Y(
        n160) );
  NOR2X1 U202 ( .A(n273), .B(n247), .Y(n250) );
  OAI21XL U366 ( .A0(n225), .A1(n222), .B0(R4[0]), .Y(n223) );
  AOI32X1 U308 ( .A0(n401), .A1(n248), .A2(n844), .B0(n247), .B1(n248), .Y(
        n183) );
  OAI21XL U361 ( .A0(n225), .A1(n222), .B0(R4[1]), .Y(n216) );
  OAI21XL U322 ( .A0(n185), .A1(n182), .B0(L1[1]), .Y(n173) );
  OAI22XL U352 ( .A0(n221), .A1(n207), .B0(n220), .B1(n206), .Y(n208) );
  OAI21XL U378 ( .A0(n246), .A1(n253), .B0(R5[1]), .Y(n236) );
  OAI22XL U286 ( .A0(n190), .A1(n376), .B0(n460), .B1(n189), .Y(n147) );
  CLKINVX1 U203 ( .A(n250), .Y(n206) );
  OAI222XL U397 ( .A0(n509), .A1(n271), .B0(n509), .B1(n270), .C0(n269), .C1(
        n268), .Y(n599) );
  NOR2X2 U234 ( .A(n204), .B(n105), .Y(n211) );
  OAI21XL U374 ( .A0(n246), .A1(n231), .B0(n230), .Y(n594) );
  OAI21X1 U78 ( .A0(n65), .A1(n63), .B0(n517), .Y(n66) );
  INVX3 U177 ( .A(n247), .Y(n275) );
  DFFX1 \se1_reg[5][1]  ( .D(n562), .CK(CLK), .Q(\se1[5][1] ), .QN(n76) );
  DFFTRX2 \se0_reg[2][0]  ( .D(1'b1), .RN(n587), .CK(CLK), .Q(L1[0]), .QN(n390) );
  DFFQX2 \se0_reg[2][1]  ( .D(n586), .CK(CLK), .Q(L1[1]) );
  DFFQX1 \MinCost_reg[7]  ( .D(n543), .CK(CLK), .Q(n857) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n553), .CK(CLK), .Q(n853) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n551), .CK(CLK), .Q(n851) );
  DFFQX1 \MinCost_reg[8]  ( .D(n542), .CK(CLK), .Q(n856) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n554), .CK(CLK), .Q(n854) );
  DFFQX1 \MinCost_reg[5]  ( .D(n545), .CK(CLK), .Q(n859) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n552), .CK(CLK), .Q(n852) );
  DFFQX1 \MinCost_reg[0]  ( .D(n550), .CK(CLK), .Q(n864) );
  DFFQX2 \change_point_reg[0]  ( .D(n603), .CK(CLK), .Q(change_point[0]) );
  DFFQX2 \counter0_reg[2]  ( .D(N190), .CK(CLK), .Q(counter0[2]) );
  DFFQX1 \MinCost_reg[2]  ( .D(n548), .CK(CLK), .Q(n862) );
  DFFQX1 \MinCost_reg[9]  ( .D(n541), .CK(CLK), .Q(n855) );
  DFFQX1 \MinCost_reg[3]  ( .D(n547), .CK(CLK), .Q(n861) );
  DFFQX2 \se0_reg[2][2]  ( .D(n585), .CK(CLK), .Q(L1[2]) );
  DFFQX1 \MinCost_reg[4]  ( .D(n546), .CK(CLK), .Q(n860) );
  DFFQX2 \search_point_reg[1]  ( .D(N399), .CK(CLK), .Q(search_point[1]) );
  DFFQX2 \change_point_reg[1]  ( .D(n602), .CK(CLK), .Q(change_point[1]) );
  DFFQX2 \state_reg[2]  ( .D(n606), .CK(CLK), .Q(state[2]) );
  DFFQX1 \MinCost_reg[1]  ( .D(n549), .CK(CLK), .Q(n863) );
  DFFQX1 \counter1_reg[2]  ( .D(N199), .CK(CLK), .Q(n846) );
  DFFQX1 \sum_reg_reg[9]  ( .D(N611), .CK(CLK), .Q(sum_reg[9]) );
  DFFQX1 \MinCost_reg[6]  ( .D(n544), .CK(CLK), .Q(n858) );
  DFFQX1 \se0_reg[1][0]  ( .D(n584), .CK(CLK), .Q(L0[0]) );
  NAND2X2 U230 ( .A(n119), .B(n278), .Y(n189) );
  INVX2 U289 ( .A(n257), .Y(n267) );
  OAI21XL U327 ( .A0(n844), .A1(n262), .B0(n178), .Y(n180) );
  NAND2X2 U44 ( .A(n323), .B(n540), .Y(n517) );
  INVX3 U611 ( .A(n517), .Y(n524) );
  INVX3 U207 ( .A(n105), .Y(n278) );
  INVXL U554 ( .A(n492), .Y(n426) );
  OAI221XL U292 ( .A0(n155), .A1(n207), .B0(n154), .B1(n206), .C0(n145), .Y(
        n146) );
  AOI211X1 U580 ( .A0(change_point[0]), .A1(n453), .B0(n452), .C0(n488), .Y(
        n454) );
  AOI211X1 U575 ( .A0(change_point[1]), .A1(n453), .B0(n443), .C0(n487), .Y(
        n444) );
  DFFQX1 \counter1_reg[3]  ( .D(N200), .CK(CLK), .Q(\counter1[3] ) );
  DFFQX1 \counter1_reg[0]  ( .D(N197), .CK(CLK), .Q(n848) );
  DFFQX1 \counter1_reg[1]  ( .D(N198), .CK(CLK), .Q(n847) );
  INVX1 U639 ( .A(n613), .Y(n612) );
  OAI22XL U640 ( .A0(n788), .A1(n87), .B0(n787), .B1(n82), .Y(n781) );
  OAI22XL U641 ( .A0(n788), .A1(n88), .B0(n787), .B1(n83), .Y(n776) );
  OAI22XL U642 ( .A0(n786), .A1(n85), .B0(n785), .B1(n74), .Y(n777) );
  OAI22XL U643 ( .A0(n786), .A1(n532), .B0(n785), .B1(n73), .Y(n782) );
  OR2X1 U644 ( .A(MinCost[5]), .B(n24), .Y(n659) );
  NOR3X1 U645 ( .A(n847), .B(\counter1[3] ), .C(n773), .Y(n774) );
  INVX3 U646 ( .A(n846), .Y(n773) );
  OAI22XL U647 ( .A0(n241), .A1(n155), .B0(n243), .B1(n154), .Y(n631) );
  CLKINVX1 U648 ( .A(n155), .Y(n154) );
  INVXL U649 ( .A(n327), .Y(n629) );
  CLKINVX1 U650 ( .A(n645), .Y(n610) );
  INVX16 U651 ( .A(n610), .Y(J[0]) );
  NAND2X2 U652 ( .A(n612), .B(n792), .Y(n645) );
  AOI211XL U653 ( .A0(n798), .A1(n659), .B0(n658), .C0(n802), .Y(n660) );
  NAND2XL U654 ( .A(n20), .B(MinCost[7]), .Y(n804) );
  INVXL U655 ( .A(n804), .Y(n663) );
  AOI211XL U656 ( .A0(n251), .A1(n844), .B0(RST), .C0(n165), .Y(n166) );
  NOR3X1 U657 ( .A(change_point[2]), .B(change_point[0]), .C(n315), .Y(n119)
         );
  NAND2XL U658 ( .A(n421), .B(n420), .Y(n423) );
  INVXL U659 ( .A(n251), .Y(n207) );
  INVXL U660 ( .A(n428), .Y(n369) );
  AOI211XL U661 ( .A0(L1[2]), .A1(n182), .B0(n168), .C0(n167), .Y(n169) );
  NAND2X1 U662 ( .A(n14), .B(n13), .Y(n63) );
  INVXL U663 ( .A(n202), .Y(n201) );
  AOI221X2 U664 ( .A0(n205), .A1(n275), .B0(n221), .B1(n275), .C0(n274), .Y(
        n225) );
  NAND2XL U665 ( .A(n369), .B(n429), .Y(n469) );
  INVXL U666 ( .A(n270), .Y(n269) );
  AND2X1 U667 ( .A(sum[9]), .B(n524), .Y(N611) );
  OAI22XL U668 ( .A0(n185), .A1(n184), .B0(n183), .B1(n390), .Y(n587) );
  OAI211XL U669 ( .A0(n633), .A1(n469), .B0(n430), .C0(n508), .Y(N400) );
  OAI21XL U670 ( .A0(n465), .A1(n381), .B0(n815), .Y(n707) );
  INVXL U671 ( .A(n707), .Y(n622) );
  OAI211X1 U672 ( .A0(n445), .A1(n510), .B0(n455), .C0(n444), .Y(N399) );
  OAI211X1 U673 ( .A0(n456), .A1(n510), .B0(n455), .C0(n454), .Y(N398) );
  AND2X2 U674 ( .A(sum[8]), .B(n524), .Y(N610) );
  INVX3 U675 ( .A(n222), .Y(n628) );
  INVX2 U676 ( .A(n262), .Y(n243) );
  ADDFX2 U677 ( .A(Cost[6]), .B(sum_reg[6]), .CI(n674), .CO(n673), .S(sum[6])
         );
  NOR3X1 U678 ( .A(n777), .B(n776), .C(n775), .Y(n779) );
  NOR3X1 U679 ( .A(n782), .B(n781), .C(n780), .Y(n784) );
  AOI2BB1X1 U680 ( .A0N(n788), .A1N(n86), .B0(n617), .Y(n616) );
  NAND2X1 U681 ( .A(n441), .B(n457), .Y(n450) );
  INVX1 U682 ( .A(n276), .Y(n698) );
  NAND2X1 U683 ( .A(n848), .B(n774), .Y(n789) );
  INVX1 U684 ( .A(n523), .Y(n771) );
  INVX2 U685 ( .A(change_point[2]), .Y(n633) );
  INVX3 U686 ( .A(n847), .Y(n526) );
  NAND2X1 U687 ( .A(n481), .B(n465), .Y(n821) );
  NOR2X6 U688 ( .A(n814), .B(n619), .Y(n481) );
  NAND2X2 U689 ( .A(n628), .B(n228), .Y(n253) );
  NOR2X1 U690 ( .A(n618), .B(n615), .Y(n614) );
  INVX1 U691 ( .A(n624), .Y(n682) );
  OAI2BB1X1 U692 ( .A0N(L2[1]), .A1N(n438), .B0(n679), .Y(n820) );
  NOR2X2 U693 ( .A(\counter1[3] ), .B(n526), .Y(n772) );
  INVXL U694 ( .A(change_point[0]), .Y(n627) );
  INVX1 U695 ( .A(n821), .Y(n817) );
  AOI2BB2X1 U696 ( .B0(n621), .B1(n746), .A0N(value[2]), .A1N(n622), .Y(n620)
         );
  NOR2BX1 U697 ( .AN(n622), .B(n708), .Y(n619) );
  NAND2BX1 U698 ( .AN(n630), .B(n157), .Y(n158) );
  NAND2BX1 U699 ( .AN(n622), .B(n708), .Y(n621) );
  OAI21XL U700 ( .A0(n257), .A1(n495), .B0(n631), .Y(n630) );
  XOR2X1 U701 ( .A(n671), .B(sum_reg[9]), .Y(sum[9]) );
  NAND2BX1 U702 ( .AN(n707), .B(value[2]), .Y(n623) );
  NAND2BX1 U703 ( .AN(n791), .B(n614), .Y(n613) );
  NOR2X1 U704 ( .A(n369), .B(n305), .Y(n831) );
  INVX1 U705 ( .A(n660), .Y(n661) );
  OR2X4 U706 ( .A(n210), .B(n211), .Y(n222) );
  AOI21X1 U707 ( .A0(R0[2]), .A1(n116), .B0(n746), .Y(n273) );
  NAND2X1 U708 ( .A(n366), .B(n829), .Y(n305) );
  OAI211X1 U709 ( .A0(n80), .A1(n793), .B0(n779), .C0(n778), .Y(n849) );
  NAND2X2 U710 ( .A(n275), .B(n337), .Y(n262) );
  OAI211X1 U711 ( .A0(n79), .A1(n793), .B0(n784), .C0(n783), .Y(n850) );
  NAND3X1 U712 ( .A(n163), .B(n228), .C(n189), .Y(n182) );
  OAI21X1 U713 ( .A0(n72), .A1(n785), .B0(n616), .Y(n615) );
  INVX1 U714 ( .A(n164), .Y(n176) );
  INVX3 U715 ( .A(n254), .Y(n238) );
  NOR2X1 U716 ( .A(n368), .B(n830), .Y(n829) );
  OAI211X1 U717 ( .A0(n473), .A1(n249), .B0(n702), .C0(n701), .Y(n746) );
  NAND2BX1 U718 ( .AN(n680), .B(n625), .Y(n624) );
  NAND2X1 U719 ( .A(n442), .B(n451), .Y(n832) );
  NAND2X1 U720 ( .A(n518), .B(\se1[7][0] ), .Y(n792) );
  INVX1 U721 ( .A(n422), .Y(n368) );
  NOR2BX1 U722 ( .AN(\se1[4][0] ), .B(n793), .Y(n617) );
  OA21XL U723 ( .A0(n400), .A1(n384), .B0(n626), .Y(n625) );
  INVX1 U724 ( .A(n437), .Y(n367) );
  CLKBUFX3 U725 ( .A(n729), .Y(n845) );
  AOI2BB2X1 U726 ( .B0(L1[1]), .B1(n119), .A0N(n186), .A1N(n382), .Y(n626) );
  OR2X2 U727 ( .A(n104), .B(n627), .Y(n400) );
  NAND2X1 U728 ( .A(n774), .B(n528), .Y(n793) );
  NAND3X1 U729 ( .A(n848), .B(W[2]), .C(n772), .Y(n818) );
  INVX1 U730 ( .A(n720), .Y(n715) );
  NAND2X1 U731 ( .A(n855), .B(n16), .Y(n808) );
  NAND3X1 U732 ( .A(state[1]), .B(n324), .C(n322), .Y(n632) );
  INVX1 U733 ( .A(search_point[1]), .Y(n739) );
  INVX3 U734 ( .A(n848), .Y(n528) );
  INVX1 U735 ( .A(\se1[4][2] ), .Y(n80) );
  INVX1 U736 ( .A(sum_reg[6]), .Y(n22) );
  INVX1 U737 ( .A(sum_reg[7]), .Y(n20) );
  INVX2 U738 ( .A(n481), .Y(n823) );
  NOR2X1 U739 ( .A(n64), .B(n66), .Y(n61) );
  OAI2BB1X2 U740 ( .A0N(n623), .A1N(n706), .B0(n620), .Y(n814) );
  INVX1 U741 ( .A(n232), .Y(n260) );
  NOR2X1 U742 ( .A(n368), .B(n423), .Y(n429) );
  NOR2X1 U743 ( .A(n423), .B(n422), .Y(n452) );
  INVX1 U744 ( .A(n310), .Y(n335) );
  INVX2 U745 ( .A(n850), .Y(n636) );
  INVX2 U746 ( .A(n849), .Y(n634) );
  INVX1 U747 ( .A(n241), .Y(n264) );
  OR2X1 U748 ( .A(N174), .B(n510), .Y(n514) );
  OAI21XL U749 ( .A0(n516), .A1(n390), .B0(n688), .Y(n689) );
  OAI2BB1X1 U750 ( .A0N(R0[0]), .A1N(n116), .B0(n828), .Y(n337) );
  INVX2 U751 ( .A(n211), .Y(n175) );
  INVX1 U752 ( .A(n183), .Y(n185) );
  INVX1 U753 ( .A(n160), .Y(n162) );
  INVX1 U754 ( .A(N197), .Y(n525) );
  OAI22X1 U755 ( .A0(n787), .A1(n81), .B0(n84), .B1(n786), .Y(n618) );
  AOI221X4 U756 ( .A0(n226), .A1(n275), .B0(n242), .B1(n275), .C0(n274), .Y(
        n246) );
  INVX1 U757 ( .A(n457), .Y(n769) );
  NOR2X1 U758 ( .A(W[0]), .B(n517), .Y(N197) );
  ADDFHX2 U759 ( .A(Cost[3]), .B(sum_reg[3]), .CI(n669), .CO(n675), .S(sum[3])
         );
  NOR2X1 U760 ( .A(RST), .B(n540), .Y(n13) );
  INVX1 U761 ( .A(n338), .Y(n835) );
  INVX2 U762 ( .A(n265), .Y(n263) );
  INVXL U763 ( .A(n104), .Y(n719) );
  INVX1 U764 ( .A(n91), .Y(n729) );
  AO21X1 U765 ( .A0(change_point[0]), .A1(change_point[1]), .B0(n711), .Y(n709) );
  INVX1 U766 ( .A(change_point[1]), .Y(n315) );
  INVX2 U767 ( .A(R6[0]), .Y(n509) );
  INVX2 U768 ( .A(L2[0]), .Y(n392) );
  INVX1 U769 ( .A(n858), .Y(n638) );
  INVX2 U770 ( .A(L0[0]), .Y(n391) );
  INVX1 U771 ( .A(n855), .Y(n664) );
  INVX1 U772 ( .A(n863), .Y(n640) );
  INVX2 U773 ( .A(R0[0]), .Y(n490) );
  INVX1 U774 ( .A(n852), .Y(n60) );
  INVX1 U775 ( .A(sum_reg[5]), .Y(n24) );
  INVX2 U776 ( .A(L1[1]), .Y(n383) );
  INVX2 U777 ( .A(L1[2]), .Y(n374) );
  INVX2 U778 ( .A(L2[1]), .Y(n382) );
  INVX1 U779 ( .A(sum_reg[3]), .Y(n28) );
  INVX1 U780 ( .A(sum_reg[9]), .Y(n16) );
  INVX2 U781 ( .A(L0[2]), .Y(n376) );
  INVX1 U782 ( .A(n851), .Y(n59) );
  INVX2 U783 ( .A(R0[1]), .Y(n475) );
  INVX2 U784 ( .A(R5[0]), .Y(n495) );
  INVX2 U785 ( .A(R5[2]), .Y(n462) );
  INVX1 U786 ( .A(sum_reg[1]), .Y(n51) );
  INVX2 U787 ( .A(R4[2]), .Y(n461) );
  INVX2 U788 ( .A(R6[2]), .Y(n473) );
  INVX2 U789 ( .A(L2[2]), .Y(n377) );
  INVX2 U790 ( .A(L0[1]), .Y(n384) );
  INVX2 U791 ( .A(R4[1]), .Y(n476) );
  INVX2 U792 ( .A(R6[1]), .Y(n486) );
  INVX2 U793 ( .A(R0[2]), .Y(n460) );
  NAND2BX4 U794 ( .AN(n629), .B(n323), .Y(n105) );
  NAND2BX4 U795 ( .AN(n632), .B(n323), .Y(n247) );
  AOI2BB1X1 U796 ( .A0N(n389), .A1N(n465), .B0(n820), .Y(n705) );
  INVXL U797 ( .A(n119), .Y(n401) );
  NAND2X1 U798 ( .A(change_point[2]), .B(n711), .Y(n204) );
  CLKINVX1 U799 ( .A(search_point[0]), .Y(n740) );
  NOR2X1 U800 ( .A(n721), .B(n720), .Y(n276) );
  OAI211XL U801 ( .A0(L1[1]), .A1(n382), .B0(L1[0]), .C0(n392), .Y(n761) );
  INVXL U802 ( .A(sum_reg[0]), .Y(n34) );
  OAI2BB1X1 U803 ( .A0N(n667), .A1N(n666), .B0(n665), .Y(n14) );
  NAND2BX1 U804 ( .AN(n16), .B(n664), .Y(n665) );
  NOR2BX1 U805 ( .AN(n808), .B(n662), .Y(n667) );
  NAND2XL U806 ( .A(n710), .B(n709), .Y(n723) );
  NOR2XL U807 ( .A(n710), .B(n709), .Y(n728) );
  OAI21XL U808 ( .A0(n697), .A1(n696), .B0(n695), .Y(n815) );
  OAI21XL U809 ( .A0(n516), .A1(n374), .B0(n694), .Y(n695) );
  NOR4XL U810 ( .A(\se1[0][0] ), .B(\se1[0][1] ), .C(\se1[1][2] ), .D(
        \se1[0][2] ), .Y(n732) );
  NOR4XL U811 ( .A(\se1[4][0] ), .B(\se1[4][1] ), .C(\se1[5][1] ), .D(n77), 
        .Y(n733) );
  NOR4XL U812 ( .A(\se1[3][2] ), .B(n82), .C(n81), .D(n80), .Y(n734) );
  CLKINVX1 U813 ( .A(n818), .Y(n518) );
  INVXL U814 ( .A(sum_reg[2]), .Y(n30) );
  NAND4XL U815 ( .A(n811), .B(n810), .C(n809), .D(n808), .Y(n837) );
  AOI211XL U816 ( .A0(sum_reg[2]), .A1(n796), .B0(n795), .C0(n794), .Y(n811)
         );
  AOI211XL U817 ( .A0(n241), .A1(n844), .B0(RST), .C0(n177), .Y(n178) );
  NAND2X2 U818 ( .A(n63), .B(n517), .Y(n32) );
  CLKINVX1 U819 ( .A(n221), .Y(n220) );
  INVXL U820 ( .A(n204), .Y(n205) );
  CLKINVX1 U821 ( .A(search_point[2]), .Y(n424) );
  INVXL U822 ( .A(n505), .Y(n439) );
  AOI31XL U823 ( .A0(n481), .A1(n505), .A2(n438), .B0(n498), .Y(n455) );
  NOR2X1 U824 ( .A(n186), .B(n105), .Y(n164) );
  AOI22XL U825 ( .A0(L0[1]), .A1(n488), .B0(L1[1]), .B1(n487), .Y(n474) );
  AOI22XL U826 ( .A0(L0[0]), .A1(n488), .B0(L1[0]), .B1(n487), .Y(n489) );
  INVXL U827 ( .A(\se1[6][0] ), .Y(n72) );
  INVXL U828 ( .A(\se1[5][0] ), .Y(n75) );
  INVXL U829 ( .A(\se1[4][0] ), .Y(n78) );
  INVXL U830 ( .A(\se1[4][1] ), .Y(n79) );
  INVXL U831 ( .A(\se1[3][0] ), .Y(n81) );
  INVXL U832 ( .A(\se1[2][0] ), .Y(n84) );
  INVXL U833 ( .A(\se1[1][0] ), .Y(n86) );
  INVXL U834 ( .A(\se1[0][0] ), .Y(n89) );
  INVX16 U835 ( .A(n799), .Y(MinCost[0]) );
  NOR2XL U836 ( .A(n422), .B(n830), .Y(n833) );
  OAI21XL U837 ( .A0(n844), .A1(n206), .B0(n166), .Y(n167) );
  OAI21XL U838 ( .A0(n185), .A1(n174), .B0(n173), .Y(n586) );
  NOR3XL U839 ( .A(n172), .B(n171), .C(n170), .Y(n174) );
  NAND2XL U840 ( .A(n202), .B(n203), .Y(n191) );
  AOI211XL U841 ( .A0(R0[2]), .A1(n211), .B0(RST), .C0(n187), .Y(n188) );
  AOI211XL U842 ( .A0(R0[1]), .A1(n211), .B0(n194), .C0(n193), .Y(n195) );
  AOI211XL U843 ( .A0(R0[0]), .A1(n211), .B0(n199), .C0(n198), .Y(n200) );
  NOR2BX1 U844 ( .AN(n661), .B(n797), .Y(n662) );
  AOI211XL U845 ( .A0(n822), .A1(R0[2]), .B0(counter0[2]), .C0(n693), .Y(n694)
         );
  AOI222XL U846 ( .A0(n705), .A1(value[1]), .B0(n705), .B1(n704), .C0(value[1]), .C1(n704), .Y(n706) );
  OAI22XL U847 ( .A0(n515), .A1(n391), .B0(n511), .B1(n392), .Y(n687) );
  OAI211XL U848 ( .A0(MinCost[1]), .A1(n51), .B0(n801), .C0(n800), .Y(n807) );
  NOR2BX1 U849 ( .AN(MinCost[4]), .B(sum_reg[4]), .Y(n798) );
  NOR2XL U850 ( .A(sum_reg[2]), .B(n796), .Y(n794) );
  NAND2X1 U851 ( .A(n190), .B(n189), .Y(n210) );
  INVXL U852 ( .A(n724), .Y(n725) );
  INVXL U853 ( .A(value[2]), .Y(n816) );
  INVXL U854 ( .A(value[0]), .Y(n813) );
  NOR2XL U855 ( .A(n401), .B(n390), .Y(n686) );
  CLKINVX1 U856 ( .A(n864), .Y(n799) );
  BUFX2 U857 ( .A(n741), .Y(n844) );
  NAND2X1 U858 ( .A(n848), .B(n773), .Y(n523) );
  AOI211XL U859 ( .A0(R5[2]), .A1(n267), .B0(RST), .C0(n144), .Y(n145) );
  CLKINVX1 U860 ( .A(n197), .Y(n196) );
  OAI21XL U861 ( .A0(n465), .A1(n633), .B0(n730), .Y(n427) );
  ADDFX2 U862 ( .A(Cost[1]), .B(sum_reg[1]), .CI(n668), .CO(n676), .S(sum[1])
         );
  ADDFX2 U863 ( .A(Cost[5]), .B(sum_reg[5]), .CI(n670), .CO(n674), .S(sum[5])
         );
  INVXL U864 ( .A(\se1[6][1] ), .Y(n73) );
  INVXL U865 ( .A(\se1[5][2] ), .Y(n77) );
  INVXL U866 ( .A(\se1[3][1] ), .Y(n82) );
  INVXL U867 ( .A(\se1[3][2] ), .Y(n83) );
  INVXL U868 ( .A(\se1[2][2] ), .Y(n85) );
  INVXL U869 ( .A(\se1[1][1] ), .Y(n87) );
  INVXL U870 ( .A(\se1[1][2] ), .Y(n88) );
  INVXL U871 ( .A(\se1[0][2] ), .Y(n92) );
  INVXL U872 ( .A(\counter1[3] ), .Y(n819) );
  NAND4XL U873 ( .A(\se1[5][0] ), .B(\se1[6][1] ), .C(\se1[6][2] ), .D(n72), 
        .Y(n736) );
  NAND4XL U874 ( .A(\se1[7][0] ), .B(\se1[2][1] ), .C(\se1[7][1] ), .D(
        \se1[7][2] ), .Y(n737) );
  INVX16 U875 ( .A(n640), .Y(MinCost[1]) );
  INVX16 U876 ( .A(n638), .Y(MinCost[6]) );
  NAND2XL U877 ( .A(n518), .B(\se1[7][1] ), .Y(n783) );
  NAND2XL U878 ( .A(n518), .B(\se1[7][2] ), .Y(n778) );
  INVXL U879 ( .A(n329), .Y(n330) );
  OAI211XL U880 ( .A0(n481), .A1(n515), .B0(n825), .C0(n516), .Y(n827) );
  OAI211XL U881 ( .A0(n26), .A1(n70), .B0(n323), .C0(n25), .Y(n546) );
  OAI211XL U882 ( .A0(n28), .A1(n70), .B0(n323), .C0(n27), .Y(n547) );
  OAI211XL U883 ( .A0(n16), .A1(n70), .B0(n323), .C0(n15), .Y(n541) );
  NAND2XL U884 ( .A(n524), .B(n526), .Y(n527) );
  OAI211XL U885 ( .A0(n30), .A1(n70), .B0(n323), .C0(n29), .Y(n548) );
  OAI211XL U886 ( .A0(n34), .A1(n70), .B0(n323), .C0(n33), .Y(n550) );
  OAI211XL U887 ( .A0(n24), .A1(n70), .B0(n323), .C0(n23), .Y(n545) );
  INVXL U888 ( .A(n65), .Y(n839) );
  INVXL U889 ( .A(n63), .Y(n57) );
  OAI211XL U890 ( .A0(n20), .A1(n70), .B0(n323), .C0(n19), .Y(n543) );
  OAI22XL U891 ( .A0(n162), .A1(n161), .B0(n160), .B1(n391), .Y(n584) );
  AOI211XL U892 ( .A0(L1[0]), .A1(n211), .B0(n159), .C0(n158), .Y(n161) );
  OAI211XL U893 ( .A0(n22), .A1(n70), .B0(n323), .C0(n21), .Y(n544) );
  NAND2XL U894 ( .A(MinCost[6]), .B(n32), .Y(n21) );
  OAI22XL U895 ( .A0(n162), .A1(n153), .B0(n160), .B1(n384), .Y(n583) );
  OAI211XL U896 ( .A0(n51), .A1(n70), .B0(n323), .C0(n31), .Y(n549) );
  NAND2XL U897 ( .A(MinCost[1]), .B(n32), .Y(n31) );
  OAI21XL U898 ( .A0(n225), .A1(n224), .B0(n223), .Y(n593) );
  AOI221XL U899 ( .A0(n243), .A1(n221), .B0(n241), .B1(n220), .C0(n219), .Y(
        n224) );
  OAI211XL U900 ( .A0(n391), .A1(n238), .B0(n218), .C0(n323), .Y(n219) );
  OAI21XL U901 ( .A0(n225), .A1(n217), .B0(n216), .Y(n592) );
  OAI211XL U902 ( .A0(n475), .A1(n228), .B0(n214), .C0(n323), .Y(n215) );
  OAI21XL U903 ( .A0(n246), .A1(n237), .B0(n236), .Y(n595) );
  NOR3XL U904 ( .A(RST), .B(n235), .C(n234), .Y(n237) );
  NOR2XL U905 ( .A(counter0[0]), .B(n514), .Y(N188) );
  AOI21XL U906 ( .A0(n516), .A1(n515), .B0(n514), .Y(N189) );
  AND2X1 U907 ( .A(sum[2]), .B(n524), .Y(N604) );
  OAI21XL U908 ( .A0(n225), .A1(n213), .B0(n212), .Y(n591) );
  AOI211XL U909 ( .A0(L0[2]), .A1(n254), .B0(n209), .C0(n208), .Y(n213) );
  AOI21XL U910 ( .A0(n326), .A1(n320), .B0(n324), .Y(n321) );
  AND2X1 U911 ( .A(sum[0]), .B(n524), .Y(N602) );
  OAI2BB1XL U912 ( .A0N(n369), .A1N(n829), .B0(n366), .Y(n334) );
  OAI211XL U913 ( .A0(n125), .A1(n206), .B0(n109), .C0(n108), .Y(n110) );
  AOI211XL U914 ( .A0(n251), .A1(n125), .B0(n107), .C0(n106), .Y(n108) );
  OAI211XL U915 ( .A0(n140), .A1(n264), .B0(n139), .C0(n138), .Y(n141) );
  AOI211XL U916 ( .A0(n140), .A1(n243), .B0(n137), .C0(n136), .Y(n138) );
  AOI211XL U917 ( .A0(L1[0]), .A1(n164), .B0(RST), .C0(n130), .Y(n139) );
  OAI211XL U918 ( .A0(n481), .A1(n516), .B0(n825), .C0(n515), .Y(n824) );
  OAI211XL U919 ( .A0(n140), .A1(n233), .B0(n123), .C0(n122), .Y(n124) );
  AOI211XL U920 ( .A0(n140), .A1(n260), .B0(n121), .C0(n120), .Y(n122) );
  AOI211XL U921 ( .A0(L1[1]), .A1(n164), .B0(RST), .C0(n115), .Y(n123) );
  NAND2XL U922 ( .A(n270), .B(n271), .Y(n255) );
  OAI211XL U923 ( .A0(n486), .A1(n508), .B0(n485), .C0(n484), .Y(N402) );
  AOI211XL U924 ( .A0(L2[1]), .A1(n498), .B0(n479), .C0(n478), .Y(n485) );
  AOI22XL U925 ( .A0(n505), .A1(n483), .B0(value[1]), .B1(n503), .Y(n484) );
  OAI211XL U926 ( .A0(n473), .A1(n508), .B0(n472), .C0(n471), .Y(N403) );
  AOI211XL U927 ( .A0(L2[2]), .A1(n498), .B0(n464), .C0(n463), .Y(n472) );
  AOI22XL U928 ( .A0(n505), .A1(n470), .B0(value[2]), .B1(n503), .Y(n471) );
  OAI211XL U929 ( .A0(n509), .A1(n508), .B0(n507), .C0(n506), .Y(N401) );
  AOI211XL U930 ( .A0(L2[0]), .A1(n498), .B0(n497), .C0(n496), .Y(n507) );
  AOI22XL U931 ( .A0(n505), .A1(n504), .B0(value[0]), .B1(n503), .Y(n506) );
  AND2X1 U932 ( .A(sum[3]), .B(n524), .Y(N605) );
  AND2X1 U933 ( .A(sum[4]), .B(n524), .Y(N606) );
  AND2X1 U934 ( .A(sum[5]), .B(n524), .Y(N607) );
  AND2X1 U935 ( .A(sum[6]), .B(n524), .Y(N608) );
  AND2X1 U936 ( .A(sum[7]), .B(n524), .Y(N609) );
  OAI22XL U937 ( .A0(n269), .A1(n261), .B0(n270), .B1(n486), .Y(n598) );
  OAI22XL U938 ( .A0(n271), .A1(n486), .B0(n475), .B1(n257), .Y(n258) );
  NOR2X1 U939 ( .A(n711), .B(n633), .Y(n724) );
  AOI211XL U940 ( .A0(sum_reg[0]), .A1(n799), .B0(n798), .C0(n797), .Y(n810)
         );
  NAND2XL U941 ( .A(R5[1]), .B(n226), .Y(n681) );
  NOR3X2 U942 ( .A(change_point[1]), .B(n633), .C(n721), .Y(n226) );
  NOR4X4 U943 ( .A(RST), .B(state[2]), .C(state[0]), .D(n320), .Y(n248) );
  NOR2X1 U944 ( .A(change_point[1]), .B(change_point[0]), .Y(n711) );
  INVX12 U945 ( .A(n634), .Y(J[2]) );
  INVX12 U946 ( .A(n636), .Y(J[1]) );
  NAND2XL U947 ( .A(W[2]), .B(n521), .Y(n522) );
  INVX16 U948 ( .A(n773), .Y(W[2]) );
  AOI222X1 U949 ( .A0(L1[2]), .A1(n377), .B0(L1[2]), .B1(n762), .C0(n377), 
        .C1(n762), .Y(n442) );
  OAI22XL U950 ( .A0(n377), .A1(n228), .B0(n374), .B1(n175), .Y(n144) );
  NAND3XL U951 ( .A(search_point[1]), .B(n740), .C(n424), .Y(n741) );
  NOR3X1 U952 ( .A(search_point[1]), .B(search_point[2]), .C(n740), .Y(n155)
         );
  BUFX16 U953 ( .A(n860), .Y(MinCost[4]) );
  NAND2XL U954 ( .A(MinCost[4]), .B(n32), .Y(n25) );
  AOI211XL U955 ( .A0(n119), .A1(L1[2]), .B0(n700), .C0(n699), .Y(n702) );
  AOI211XL U956 ( .A0(L1[2]), .A1(n164), .B0(RST), .C0(n97), .Y(n109) );
  BUFX16 U957 ( .A(n861), .Y(MinCost[3]) );
  NAND2XL U958 ( .A(MinCost[3]), .B(n32), .Y(n27) );
  NAND2XL U959 ( .A(MinCost[3]), .B(n28), .Y(n800) );
  NOR2XL U960 ( .A(MinCost[3]), .B(n28), .Y(n795) );
  INVX12 U961 ( .A(n664), .Y(MinCost[9]) );
  NAND2XL U962 ( .A(n855), .B(n32), .Y(n15) );
  NOR3XL U963 ( .A(RST), .B(n328), .C(n322), .Y(n329) );
  NAND2X4 U964 ( .A(n328), .B(n322), .Y(n91) );
  NOR2X1 U965 ( .A(state[0]), .B(state[1]), .Y(n328) );
  BUFX12 U966 ( .A(n847), .Y(W[1]) );
  BUFX12 U967 ( .A(n848), .Y(W[0]) );
  INVX12 U968 ( .A(n796), .Y(MinCost[2]) );
  NAND2XL U969 ( .A(MinCost[2]), .B(n32), .Y(n29) );
  AOI211XL U970 ( .A0(n822), .A1(R0[0]), .B0(counter0[2]), .C0(n687), .Y(n688)
         );
  CLKINVX1 U971 ( .A(change_point[0]), .Y(n721) );
  NAND2XL U972 ( .A(MinCost[0]), .B(n32), .Y(n33) );
  AOI211XL U973 ( .A0(MinCost[0]), .A1(n34), .B0(n807), .C0(n806), .Y(n809) );
  INVX12 U974 ( .A(n60), .Y(MatchCount[2]) );
  OAI32XL U975 ( .A0(n852), .A1(n63), .A2(n62), .B0(n61), .B1(n60), .Y(n552)
         );
  BUFX16 U976 ( .A(n859), .Y(MinCost[5]) );
  NAND2XL U977 ( .A(MinCost[5]), .B(n32), .Y(n23) );
  OAI22XL U978 ( .A0(MinCost[5]), .A1(n24), .B0(MinCost[4]), .B1(n26), .Y(n803) );
  INVX12 U979 ( .A(n836), .Y(MatchCount[0]) );
  CLKINVX1 U980 ( .A(n854), .Y(n836) );
  BUFX16 U981 ( .A(n856), .Y(MinCost[8]) );
  NAND2XL U982 ( .A(MinCost[8]), .B(n32), .Y(n17) );
  AOI211XL U983 ( .A0(MinCost[8]), .A1(n18), .B0(n803), .C0(n802), .Y(n805) );
  INVX12 U984 ( .A(n59), .Y(MatchCount[3]) );
  OAI21XL U985 ( .A0(n851), .A1(n62), .B0(n852), .Y(n56) );
  OAI211XL U986 ( .A0(n851), .A1(n852), .B0(n57), .C0(n56), .Y(n58) );
  BUFX16 U987 ( .A(n853), .Y(MatchCount[1]) );
  AO22X1 U988 ( .A0(MatchCount[1]), .A1(n66), .B0(n65), .B1(n64), .Y(n553) );
  NOR2X1 U989 ( .A(MatchCount[1]), .B(n63), .Y(n64) );
  NAND3XL U990 ( .A(MatchCount[1]), .B(n65), .C(n517), .Y(n62) );
  BUFX16 U991 ( .A(n857), .Y(MinCost[7]) );
  NAND2XL U992 ( .A(MinCost[7]), .B(n32), .Y(n19) );
  OAI222XL U993 ( .A0(n20), .A1(MinCost[7]), .B0(n18), .B1(MinCost[8]), .C0(
        n22), .C1(MinCost[6]), .Y(n797) );
  OAI211XL U994 ( .A0(MinCost[1]), .A1(n51), .B0(n864), .C0(n34), .Y(n655) );
  OAI22XL U995 ( .A0(MinCost[3]), .A1(n28), .B0(n794), .B1(n656), .Y(n657) );
  AOI21XL U996 ( .A0(n657), .A1(n800), .B0(n803), .Y(n658) );
  AO22X1 U997 ( .A0(MinCost[6]), .A1(n22), .B0(MinCost[5]), .B1(n24), .Y(n802)
         );
  OAI211XL U998 ( .A0(R4[1]), .A1(n477), .B0(R4[0]), .C0(n495), .Y(n759) );
  NAND2XL U999 ( .A(MinCost[1]), .B(n51), .Y(n801) );
  OAI211XL U1000 ( .A0(L0[1]), .A1(n383), .B0(L0[0]), .C0(n390), .Y(n755) );
  OAI211XL U1001 ( .A0(n855), .A1(n16), .B0(n805), .C0(n804), .Y(n806) );
  NAND2XL U1002 ( .A(n437), .B(n421), .Y(n830) );
  NOR4XL U1003 ( .A(\se1[2][0] ), .B(\se1[1][1] ), .C(\se1[2][2] ), .D(n86), 
        .Y(n731) );
  AOI22XL U1004 ( .A0(n717), .A1(n716), .B0(n715), .B1(n512), .Y(n718) );
  INVXL U1005 ( .A(n508), .Y(n443) );
  NAND4XL U1006 ( .A(n734), .B(n733), .C(n732), .D(n731), .Y(n735) );
  AOI211XL U1007 ( .A0(n451), .A1(n770), .B0(n831), .C0(n769), .Y(n312) );
  AOI211XL U1008 ( .A0(R0[0]), .A1(n267), .B0(RST), .C0(n266), .Y(n268) );
  INVXL U1009 ( .A(\se1[6][2] ), .Y(n74) );
  INVXL U1010 ( .A(\se1[2][1] ), .Y(n532) );
  INVXL U1011 ( .A(\se1[0][1] ), .Y(n90) );
  OAI211XL U1012 ( .A0(n18), .A1(n70), .B0(n323), .C0(n17), .Y(n542) );
  OAI211XL U1013 ( .A0(n312), .A1(n333), .B0(n323), .C0(n311), .Y(n603) );
  OAI21XL U1014 ( .A0(n61), .A1(n59), .B0(n58), .Y(n551) );
  AND2X1 U1015 ( .A(sum[1]), .B(n524), .Y(N603) );
  OAI21XL U1016 ( .A0(n246), .A1(n245), .B0(n244), .Y(n596) );
  INVXL U1018 ( .A(sum_reg[4]), .Y(n26) );
  CLKINVX1 U1019 ( .A(sum_reg[8]), .Y(n18) );
  CLKINVX1 U1020 ( .A(n862), .Y(n796) );
  AOI2BB2X1 U1021 ( .B0(n801), .B1(n655), .A0N(n862), .A1N(n30), .Y(n656) );
  AOI222XL U1022 ( .A0(MinCost[8]), .A1(n663), .B0(MinCost[8]), .B1(n18), .C0(
        n663), .C1(n18), .Y(n666) );
  ADDHX1 U1023 ( .A(sum_reg[8]), .B(n672), .CO(n671), .S(sum[8]) );
  ADDHXL U1024 ( .A(sum_reg[0]), .B(Cost[0]), .CO(n668), .S(sum[0]) );
  ADDHX1 U1025 ( .A(sum_reg[7]), .B(n673), .CO(n672), .S(sum[7]) );
  ADDFXL U1026 ( .A(Cost[4]), .B(sum_reg[4]), .CI(n675), .CO(n670), .S(sum[4])
         );
  ADDFXL U1027 ( .A(Cost[2]), .B(sum_reg[2]), .CI(n676), .CO(n669), .S(sum[2])
         );
  CLKINVX1 U1028 ( .A(counter0[1]), .Y(n710) );
  NAND2X2 U1029 ( .A(counter0[0]), .B(n710), .Y(n515) );
  INVX3 U1030 ( .A(counter0[0]), .Y(n722) );
  NOR2X1 U1031 ( .A(n722), .B(n710), .Y(n513) );
  INVX3 U1032 ( .A(n513), .Y(n511) );
  NAND2X1 U1033 ( .A(change_point[2]), .B(change_point[1]), .Y(n720) );
  NAND2X1 U1034 ( .A(n715), .B(n721), .Y(n249) );
  CLKINVX1 U1035 ( .A(counter0[2]), .Y(n512) );
  CLKINVX1 U1036 ( .A(L6[1]), .Y(n389) );
  NAND2X1 U1037 ( .A(counter0[2]), .B(n513), .Y(n465) );
  NOR2X1 U1038 ( .A(counter0[2]), .B(n511), .Y(n438) );
  NAND2X2 U1039 ( .A(counter0[1]), .B(n722), .Y(n516) );
  CLKINVX1 U1040 ( .A(R5[1]), .Y(n477) );
  NAND2X1 U1041 ( .A(n633), .B(n315), .Y(n104) );
  NAND3X1 U1042 ( .A(change_point[1]), .B(change_point[0]), .C(n633), .Y(n186)
         );
  CLKINVX1 U1043 ( .A(R4[0]), .Y(n493) );
  CLKINVX1 U1044 ( .A(L6[0]), .Y(n397) );
  CLKINVX1 U1045 ( .A(L6[2]), .Y(n381) );
  NAND2X1 U1046 ( .A(n722), .B(n710), .Y(n714) );
  OAI222XL U1047 ( .A0(n383), .A1(n516), .B0(n384), .B1(n515), .C0(n475), .C1(
        n714), .Y(n678) );
  OAI222XL U1048 ( .A0(n714), .A1(n476), .B0(n477), .B1(n515), .C0(n486), .C1(
        n516), .Y(n677) );
  OAI22XL U1049 ( .A0(counter0[2]), .A1(n678), .B0(n512), .B1(n677), .Y(n679)
         );
  OAI22XL U1050 ( .A0(n389), .A1(n698), .B0(n486), .B1(n249), .Y(n680) );
  OAI211X1 U1051 ( .A0(n476), .A1(n204), .B0(n682), .C0(n681), .Y(n834) );
  OAI2BB2XL U1052 ( .B0(n204), .B1(n493), .A0N(n226), .A1N(R5[0]), .Y(n685) );
  OAI22XL U1053 ( .A0(n698), .A1(n397), .B0(n249), .B1(n509), .Y(n684) );
  OAI22XL U1054 ( .A0(n186), .A1(n392), .B0(n400), .B1(n391), .Y(n683) );
  NOR4X1 U1055 ( .A(n686), .B(n685), .C(n684), .D(n683), .Y(n828) );
  OAI21XL U1056 ( .A0(n515), .A1(n495), .B0(counter0[2]), .Y(n691) );
  OAI22XL U1057 ( .A0(n714), .A1(n493), .B0(n516), .B1(n509), .Y(n690) );
  CLKINVX1 U1058 ( .A(n714), .Y(n822) );
  OAI21X1 U1059 ( .A0(n691), .A1(n690), .B0(n689), .Y(n812) );
  OAI21X1 U1060 ( .A0(n397), .A1(n465), .B0(n812), .Y(n703) );
  NAND2X1 U1061 ( .A(n828), .B(n703), .Y(n692) );
  AOI222X1 U1062 ( .A0(n705), .A1(n834), .B0(n705), .B1(n692), .C0(n834), .C1(
        n692), .Y(n708) );
  OAI21XL U1063 ( .A0(n515), .A1(n462), .B0(counter0[2]), .Y(n697) );
  OAI22XL U1064 ( .A0(n714), .A1(n461), .B0(n516), .B1(n473), .Y(n696) );
  OAI22XL U1065 ( .A0(n515), .A1(n376), .B0(n511), .B1(n377), .Y(n693) );
  OAI22XL U1066 ( .A0(n204), .A1(n461), .B0(n186), .B1(n377), .Y(n700) );
  OAI22XL U1067 ( .A0(n698), .A1(n381), .B0(n400), .B1(n376), .Y(n699) );
  NAND2XL U1068 ( .A(n226), .B(R5[2]), .Y(n701) );
  NOR2X1 U1069 ( .A(n703), .B(n813), .Y(n704) );
  NOR3X2 U1070 ( .A(search_point[1]), .B(n740), .C(n424), .Y(n242) );
  CLKINVX1 U1071 ( .A(n242), .Y(n240) );
  NOR2X1 U1072 ( .A(change_point[0]), .B(n104), .Y(n116) );
  CLKINVX1 U1073 ( .A(state[1]), .Y(n320) );
  CLKINVX1 U1074 ( .A(state[0]), .Y(n324) );
  NOR3XL U1075 ( .A(state[2]), .B(n320), .C(n324), .Y(n327) );
  NOR3X1 U1076 ( .A(search_point[0]), .B(n739), .C(n424), .Y(n265) );
  OAI31XL U1077 ( .A0(counter0[0]), .A1(change_point[0]), .A2(n728), .B0(n723), 
        .Y(n713) );
  OA21XL U1078 ( .A0(n713), .A1(n512), .B0(n724), .Y(n712) );
  AOI211X1 U1079 ( .A0(n512), .A1(n713), .B0(n712), .C0(n116), .Y(n432) );
  NOR3X1 U1080 ( .A(search_point[2]), .B(n739), .C(n740), .Y(n197) );
  OAI21XL U1081 ( .A0(n714), .A1(n721), .B0(change_point[1]), .Y(n717) );
  OAI21XL U1082 ( .A0(counter0[0]), .A1(n721), .B0(counter0[1]), .Y(n716) );
  AOI211XL U1083 ( .A0(counter0[2]), .A1(n720), .B0(n719), .C0(n718), .Y(n326)
         );
  NAND4X1 U1084 ( .A(\counter1[3] ), .B(n526), .C(n528), .D(n773), .Y(n540) );
  OAI22XL U1085 ( .A0(counter0[0]), .A1(change_point[0]), .B0(n722), .B1(n721), 
        .Y(n727) );
  OAI221XL U1086 ( .A0(counter0[2]), .A1(n725), .B0(n512), .B1(n724), .C0(n723), .Y(n726) );
  NOR4XL U1087 ( .A(n116), .B(n728), .C(n727), .D(n726), .Y(N174) );
  NOR3X2 U1088 ( .A(search_point[0]), .B(search_point[1]), .C(n424), .Y(n221)
         );
  CLKINVX1 U1089 ( .A(state[2]), .Y(n322) );
  OAI222XL U1090 ( .A0(counter0[2]), .A1(n823), .B0(n512), .B1(n511), .C0(n481), .C1(search_point[2]), .Y(n730) );
  OR4X2 U1091 ( .A(n540), .B(n737), .C(n736), .D(n735), .Y(n738) );
  INVX12 U1092 ( .A(n738), .Y(Valid) );
  INVXL U1093 ( .A(\se1[7][1] ), .Y(n530) );
  INVXL U1094 ( .A(\se1[7][0] ), .Y(n529) );
  INVXL U1095 ( .A(\se1[7][2] ), .Y(n531) );
  NOR3X2 U1096 ( .A(n740), .B(n739), .C(n424), .Y(n338) );
  NOR3X2 U1097 ( .A(search_point[0]), .B(search_point[1]), .C(search_point[2]), 
        .Y(n140) );
  CLKINVX1 U1098 ( .A(n140), .Y(n125) );
  OAI22XL U1099 ( .A0(n397), .A1(n835), .B0(n509), .B1(n263), .Y(n745) );
  OAI22XL U1100 ( .A0(n495), .A1(n240), .B0(n493), .B1(n220), .Y(n744) );
  OAI22XL U1101 ( .A0(n390), .A1(n844), .B0(n392), .B1(n196), .Y(n743) );
  OAI22XL U1102 ( .A0(n391), .A1(n154), .B0(n490), .B1(n125), .Y(n742) );
  NOR4X1 U1103 ( .A(n745), .B(n744), .C(n743), .D(n742), .Y(n336) );
  OAI22XL U1104 ( .A0(n473), .A1(n263), .B0(n381), .B1(n835), .Y(n750) );
  OAI22XL U1105 ( .A0(n462), .A1(n240), .B0(n461), .B1(n220), .Y(n749) );
  OAI22XL U1106 ( .A0(n374), .A1(n844), .B0(n377), .B1(n196), .Y(n748) );
  OAI22XL U1107 ( .A0(n376), .A1(n154), .B0(n460), .B1(n125), .Y(n747) );
  NOR4X1 U1108 ( .A(n750), .B(n749), .C(n748), .D(n747), .Y(n272) );
  OAI22XL U1109 ( .A0(n389), .A1(n835), .B0(n486), .B1(n263), .Y(n754) );
  OAI22XL U1110 ( .A0(n477), .A1(n240), .B0(n476), .B1(n220), .Y(n753) );
  OAI22XL U1111 ( .A0(n383), .A1(n844), .B0(n382), .B1(n196), .Y(n752) );
  OAI22XL U1112 ( .A0(n384), .A1(n154), .B0(n475), .B1(n125), .Y(n751) );
  NOR4X1 U1113 ( .A(n754), .B(n753), .C(n752), .D(n751), .Y(n281) );
  OAI21XL U1114 ( .A0(L1[1]), .A1(n384), .B0(n755), .Y(n756) );
  AOI222X1 U1115 ( .A0(L0[2]), .A1(n374), .B0(L0[2]), .B1(n756), .C0(n374), 
        .C1(n756), .Y(n451) );
  AOI2BB2X1 U1116 ( .B0(R4[1]), .B1(n382), .A0N(n461), .A1N(L2[2]), .Y(n758)
         );
  OAI22XL U1117 ( .A0(R4[0]), .A1(n392), .B0(R4[1]), .B1(n382), .Y(n757) );
  AOI22X1 U1118 ( .A0(n758), .A1(n757), .B0(L2[2]), .B1(n461), .Y(n437) );
  OAI21XL U1119 ( .A0(R5[1]), .A1(n476), .B0(n759), .Y(n760) );
  AOI222X1 U1120 ( .A0(R4[2]), .A1(n462), .B0(R4[2]), .B1(n760), .C0(n462), 
        .C1(n760), .Y(n421) );
  OAI21XL U1121 ( .A0(L2[1]), .A1(n383), .B0(n761), .Y(n762) );
  OAI22XL U1122 ( .A0(L6[1]), .A1(n486), .B0(n509), .B1(L6[0]), .Y(n763) );
  OAI21XL U1123 ( .A0(R6[1]), .A1(n389), .B0(n763), .Y(n764) );
  AOI222X1 U1124 ( .A0(L6[2]), .A1(n764), .B0(L6[2]), .B1(n473), .C0(n764), 
        .C1(n473), .Y(n428) );
  AOI2BB2X1 U1125 ( .B0(L0[1]), .B1(n475), .A0N(n376), .A1N(R0[2]), .Y(n766)
         );
  OAI22XL U1126 ( .A0(L0[0]), .A1(n490), .B0(L0[1]), .B1(n475), .Y(n765) );
  AOI22X1 U1127 ( .A0(n766), .A1(n765), .B0(R0[2]), .B1(n376), .Y(n457) );
  NOR2X1 U1128 ( .A(n769), .B(n832), .Y(n366) );
  AOI2BB2X1 U1129 ( .B0(R6[2]), .B1(n462), .A0N(n486), .A1N(R5[1]), .Y(n768)
         );
  OAI22XL U1130 ( .A0(R6[1]), .A1(n477), .B0(R6[0]), .B1(n495), .Y(n767) );
  AOI22X1 U1131 ( .A0(R5[2]), .A1(n473), .B0(n768), .B1(n767), .Y(n422) );
  OAI21XL U1132 ( .A0(n367), .A1(n421), .B0(n442), .Y(n770) );
  NAND3X1 U1133 ( .A(n772), .B(n528), .C(n773), .Y(n786) );
  NAND3X1 U1134 ( .A(n846), .B(n772), .C(n528), .Y(n785) );
  NAND3X2 U1135 ( .A(n771), .B(n526), .C(n819), .Y(n788) );
  NAND2X1 U1136 ( .A(n772), .B(n771), .Y(n787) );
  AOI31X1 U1137 ( .A0(n526), .A1(n528), .A2(n773), .B0(\counter1[3] ), .Y(n790) );
  OAI22XL U1138 ( .A0(n790), .A1(n92), .B0(n789), .B1(n77), .Y(n775) );
  OAI22XL U1139 ( .A0(n790), .A1(n90), .B0(n789), .B1(n76), .Y(n780) );
  OAI22XL U1140 ( .A0(n790), .A1(n89), .B0(n75), .B1(n789), .Y(n791) );
  NOR2X1 U1141 ( .A(n836), .B(n837), .Y(n65) );
  NOR3X1 U1142 ( .A(state[1]), .B(state[2]), .C(n324), .Y(n458) );
  AOI21XL U1143 ( .A0(state[2]), .A1(n328), .B0(n327), .Y(n331) );
  OAI22XL U1144 ( .A0(n817), .A1(n813), .B0(n812), .B1(n823), .Y(n504) );
  OAI22XL U1145 ( .A0(n817), .A1(n816), .B0(n815), .B1(n814), .Y(n470) );
  OAI21XL U1146 ( .A0(W[2]), .A1(n819), .B0(n818), .Y(n520) );
  AO22X1 U1147 ( .A0(value[1]), .A1(n821), .B0(n481), .B1(n820), .Y(n483) );
  AOI211X1 U1148 ( .A0(n822), .A1(n823), .B0(n438), .C0(n432), .Y(n825) );
  OR2X1 U1149 ( .A(n432), .B(n823), .Y(n826) );
  AOI2BB2X1 U1150 ( .B0(search_point[0]), .B1(n824), .A0N(n515), .A1N(n826), 
        .Y(n456) );
  AOI2BB2X1 U1151 ( .B0(search_point[1]), .B1(n827), .A0N(n516), .A1N(n826), 
        .Y(n445) );
  AOI2BB2X1 U1152 ( .B0(n338), .B1(n337), .A0N(n338), .A1N(n336), .Y(n340) );
  AOI221XL U1153 ( .A0(n833), .A1(n457), .B0(n832), .B1(n457), .C0(n831), .Y(
        n307) );
  AO21X1 U1154 ( .A0(R0[1]), .A1(n116), .B0(n834), .Y(n282) );
  AOI2BB2X1 U1155 ( .B0(n338), .B1(n282), .A0N(n338), .A1N(n281), .Y(n284) );
  AO22X1 U1156 ( .A0(n338), .A1(n273), .B0(n835), .B1(n272), .Y(n280) );
  OAI21XL U1157 ( .A0(n540), .A1(n837), .B0(n836), .Y(n838) );
  OAI21XL U1158 ( .A0(n540), .A1(n839), .B0(n838), .Y(n71) );
endmodule

