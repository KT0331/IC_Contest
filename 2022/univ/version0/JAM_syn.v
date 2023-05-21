/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed Mar 30 14:50:25 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, \sequence[0][2] , \sequence[0][1] ,
         \sequence[0][0] , \sequence[1][2] , \sequence[1][1] ,
         \sequence[1][0] , \sequence[2][2] , \sequence[2][1] ,
         \sequence[2][0] , \sequence[3][2] , \sequence[3][1] ,
         \sequence[3][0] , \sequence[4][2] , \sequence[4][1] ,
         \sequence[4][0] , \sequence[5][2] , \sequence[5][1] ,
         \sequence[5][0] , \sequence[6][2] , \sequence[6][1] ,
         \sequence[6][0] , \sequence[7][2] , \sequence[7][1] ,
         \sequence[7][0] , find_active, N219, N220, N221, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n562, n563, n564, n565, n567, n569, n571, n573,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
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
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1071;
  wire   [2:0] change_point;
  wire   [2:0] counter;
  wire   [9:0] sum_reg;
  wire   [2:0] state;
  wire   [2:0] value;
  wire   [2:0] search_point;

  DFFQX1 \sequence_reg[1][1]  ( .D(n538), .CK(CLK), .Q(\sequence[1][1] ) );
  DFFQX1 \sequence_reg[2][0]  ( .D(n543), .CK(CLK), .Q(\sequence[2][0] ) );
  DFFQX1 \sequence_reg[4][0]  ( .D(n549), .CK(CLK), .Q(\sequence[4][0] ) );
  DFFQX1 \sequence_reg[3][1]  ( .D(n544), .CK(CLK), .Q(\sequence[3][1] ) );
  DFFQX1 \sequence_reg[2][1]  ( .D(n541), .CK(CLK), .Q(\sequence[2][1] ) );
  DFFQX1 \sequence_reg[6][0]  ( .D(n555), .CK(CLK), .Q(\sequence[6][0] ) );
  DFFQX1 \sequence_reg[6][1]  ( .D(n553), .CK(CLK), .Q(\sequence[6][1] ) );
  DFFQX1 \sequence_reg[3][2]  ( .D(n545), .CK(CLK), .Q(\sequence[3][2] ) );
  DFFQX1 \sequence_reg[7][1]  ( .D(n556), .CK(CLK), .Q(\sequence[7][1] ) );
  DFFQX1 \sum_reg_reg[8]  ( .D(n515), .CK(CLK), .Q(sum_reg[8]) );
  DFFQX1 \sum_reg_reg[7]  ( .D(n516), .CK(CLK), .Q(sum_reg[7]) );
  DFFQX1 \sum_reg_reg[6]  ( .D(n517), .CK(CLK), .Q(sum_reg[6]) );
  DFFQX1 \sum_reg_reg[5]  ( .D(n518), .CK(CLK), .Q(sum_reg[5]) );
  DFFQX1 \sum_reg_reg[4]  ( .D(n519), .CK(CLK), .Q(sum_reg[4]) );
  DFFQX1 \sum_reg_reg[3]  ( .D(n520), .CK(CLK), .Q(sum_reg[3]) );
  DFFQX1 \sum_reg_reg[2]  ( .D(n521), .CK(CLK), .Q(sum_reg[2]) );
  DFFQX1 find_active_reg ( .D(n529), .CK(CLK), .Q(find_active) );
  DFFQX1 \value_reg[0]  ( .D(n524), .CK(CLK), .Q(value[0]) );
  DFFQX1 \value_reg[1]  ( .D(n525), .CK(CLK), .Q(value[1]) );
  DFFQX1 \value_reg[2]  ( .D(n526), .CK(CLK), .Q(value[2]) );
  DFFQX1 \sum_reg_reg[0]  ( .D(n523), .CK(CLK), .Q(sum_reg[0]) );
  DFFQX1 \search_point_reg[2]  ( .D(n558), .CK(CLK), .Q(search_point[2]) );
  DFFQX1 \sum_reg_reg[1]  ( .D(n522), .CK(CLK), .Q(sum_reg[1]) );
  DFFQX1 \state_reg[0]  ( .D(n533), .CK(CLK), .Q(state[0]) );
  DFFQX1 \state_reg[1]  ( .D(n532), .CK(CLK), .Q(state[1]) );
  DFFQX1 \change_point_reg[2]  ( .D(n535), .CK(CLK), .Q(change_point[2]) );
  DFFQX1 \state_reg[2]  ( .D(n534), .CK(CLK), .Q(state[2]) );
  DFFQX1 \sequence_reg[4][2]  ( .D(n548), .CK(CLK), .Q(\sequence[4][2] ) );
  DFFQX1 \sequence_reg[5][0]  ( .D(n552), .CK(CLK), .Q(\sequence[5][0] ) );
  DFFQX1 \sequence_reg[5][2]  ( .D(n551), .CK(CLK), .Q(\sequence[5][2] ) );
  DFFQX1 \sequence_reg[7][0]  ( .D(n560), .CK(CLK), .Q(\sequence[7][0] ) );
  DFFQX1 \sequence_reg[6][2]  ( .D(n554), .CK(CLK), .Q(\sequence[6][2] ) );
  DFFQX1 \sequence_reg[1][0]  ( .D(n540), .CK(CLK), .Q(\sequence[1][0] ) );
  DFFQX1 \sequence_reg[3][0]  ( .D(n546), .CK(CLK), .Q(\sequence[3][0] ) );
  DFFQX1 \sequence_reg[4][1]  ( .D(n547), .CK(CLK), .Q(\sequence[4][1] ) );
  DFFQX1 \sequence_reg[5][1]  ( .D(n550), .CK(CLK), .Q(\sequence[5][1] ) );
  DFFQX1 \sequence_reg[7][2]  ( .D(n557), .CK(CLK), .Q(\sequence[7][2] ) );
  DFFQX1 \sequence_reg[0][2]  ( .D(n559), .CK(CLK), .Q(\sequence[0][2] ) );
  DFFQX1 \sequence_reg[0][1]  ( .D(n536), .CK(CLK), .Q(\sequence[0][1] ) );
  DFFQX1 \sequence_reg[0][0]  ( .D(n537), .CK(CLK), .Q(\sequence[0][0] ) );
  DFFQX1 \sequence_reg[2][2]  ( .D(n542), .CK(CLK), .Q(\sequence[2][2] ) );
  DFFQX2 \counter_reg[2]  ( .D(N221), .CK(CLK), .Q(counter[2]) );
  DFFQX4 \counter_reg[1]  ( .D(N220), .CK(CLK), .Q(counter[1]) );
  DFFQX1 \sequence_reg[1][2]  ( .D(n539), .CK(CLK), .Q(\sequence[1][2] ) );
  DFFTRX2 \counter_reg[0]  ( .D(1'b1), .RN(N219), .CK(CLK), .Q(counter[0]), 
        .QN(n1071) );
  DFFQX1 \MinCost_reg[5]  ( .D(n504), .CK(CLK), .Q(n1080) );
  DFFQX1 \MinCost_reg[3]  ( .D(n506), .CK(CLK), .Q(n1082) );
  DFFQX1 \MinCost_reg[2]  ( .D(n507), .CK(CLK), .Q(n1083) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n512), .CK(CLK), .Q(n1074) );
  DFFQX1 \MinCost_reg[7]  ( .D(n502), .CK(CLK), .Q(n1078) );
  DFFQX1 \MinCost_reg[9]  ( .D(n500), .CK(CLK), .Q(n1076) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n511), .CK(CLK), .Q(n1073) );
  DFFQX1 \MinCost_reg[1]  ( .D(n508), .CK(CLK), .Q(n1084) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n510), .CK(CLK), .Q(n1072) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n513), .CK(CLK), .Q(n1075) );
  DFFQX2 \change_point_reg[0]  ( .D(n530), .CK(CLK), .Q(change_point[0]) );
  DFFQX2 \search_point_reg[1]  ( .D(n528), .CK(CLK), .Q(search_point[1]) );
  DFFQX1 \MinCost_reg[4]  ( .D(n505), .CK(CLK), .Q(n1081) );
  DFFQX1 \MinCost_reg[8]  ( .D(n501), .CK(CLK), .Q(n1077) );
  DFFQX1 \MinCost_reg[6]  ( .D(n503), .CK(CLK), .Q(n1079) );
  DFFQX2 \search_point_reg[0]  ( .D(n527), .CK(CLK), .Q(search_point[0]) );
  DFFQX2 \change_point_reg[1]  ( .D(n531), .CK(CLK), .Q(change_point[1]) );
  DFFQX1 \sum_reg_reg[9]  ( .D(n514), .CK(CLK), .Q(sum_reg[9]) );
  DFFQX1 \MinCost_reg[0]  ( .D(n509), .CK(CLK), .Q(n1085) );
  CLKBUFX3 U574 ( .A(n603), .Y(n1025) );
  INVX1 U575 ( .A(n816), .Y(n892) );
  INVX8 U576 ( .A(RST), .Y(n877) );
  OAI22XL U577 ( .A0(n742), .A1(n917), .B0(n741), .B1(n879), .Y(n731) );
  CLKINVX1 U578 ( .A(n1036), .Y(n628) );
  NOR2XL U579 ( .A(n976), .B(n975), .Y(n992) );
  CLKBUFX3 U580 ( .A(n605), .Y(n1029) );
  NOR2XL U581 ( .A(n992), .B(n991), .Y(n1044) );
  INVXL U582 ( .A(n751), .Y(n903) );
  INVXL U583 ( .A(n993), .Y(n910) );
  CLKINVX1 U584 ( .A(change_point[0]), .Y(n914) );
  INVXL U585 ( .A(n946), .Y(n926) );
  NOR2X1 U586 ( .A(n1046), .B(n1045), .Y(n1061) );
  NOR2X1 U587 ( .A(MatchCount[1]), .B(n1062), .Y(n1046) );
  INVX1 U588 ( .A(n835), .Y(n831) );
  OR2X1 U589 ( .A(n913), .B(change_point[0]), .Y(n922) );
  NAND2X1 U590 ( .A(n875), .B(n870), .Y(n751) );
  NAND2X1 U591 ( .A(n828), .B(n877), .Y(n830) );
  INVX1 U592 ( .A(n876), .Y(n870) );
  NOR2X1 U593 ( .A(n910), .B(RST), .Y(n654) );
  NAND4BBXL U594 ( .AN(n976), .BN(n965), .C(n973), .D(n963), .Y(n952) );
  NAND2X1 U595 ( .A(n707), .B(n864), .Y(n876) );
  NAND3X1 U596 ( .A(n878), .B(state[2]), .C(n877), .Y(n991) );
  BUFX6 U597 ( .A(n838), .Y(n562) );
  OR2X1 U598 ( .A(MinCost[8]), .B(n1002), .Y(n973) );
  INVX1 U599 ( .A(n841), .Y(n564) );
  INVX1 U600 ( .A(n864), .Y(n1050) );
  OR2X2 U601 ( .A(MinCost[2]), .B(n1008), .Y(n963) );
  INVX2 U602 ( .A(n815), .Y(n826) );
  INVX1 U603 ( .A(n1077), .Y(n571) );
  INVX1 U604 ( .A(n1079), .Y(n567) );
  INVX2 U605 ( .A(\sequence[0][2] ), .Y(n853) );
  INVX1 U606 ( .A(n1085), .Y(n569) );
  INVX1 U607 ( .A(n1081), .Y(n573) );
  INVX2 U608 ( .A(\sequence[4][2] ), .Y(n928) );
  INVX2 U609 ( .A(\sequence[6][2] ), .Y(n929) );
  INVX1 U610 ( .A(sum_reg[9]), .Y(n1013) );
  INVX2 U611 ( .A(\sequence[0][1] ), .Y(n881) );
  INVX2 U612 ( .A(\sequence[0][0] ), .Y(n1041) );
  INVX2 U613 ( .A(\sequence[1][1] ), .Y(n879) );
  INVX2 U614 ( .A(\sequence[4][1] ), .Y(n917) );
  INVX2 U615 ( .A(\sequence[3][1] ), .Y(n845) );
  INVX2 U616 ( .A(\sequence[3][0] ), .Y(n1024) );
  INVX2 U617 ( .A(\sequence[1][0] ), .Y(n1028) );
  INVX2 U618 ( .A(\sequence[3][2] ), .Y(n854) );
  INVX2 U619 ( .A(\sequence[1][2] ), .Y(n852) );
  INVX1 U620 ( .A(sum_reg[7]), .Y(n1000) );
  INVX1 U621 ( .A(sum_reg[2]), .Y(n1008) );
  INVX2 U622 ( .A(\sequence[2][0] ), .Y(n1020) );
  INVX1 U623 ( .A(search_point[1]), .Y(n597) );
  INVX2 U624 ( .A(\sequence[2][1] ), .Y(n919) );
  INVX2 U625 ( .A(\sequence[4][0] ), .Y(n1022) );
  INVX2 U626 ( .A(change_point[2]), .Y(n938) );
  INVX1 U627 ( .A(sum_reg[8]), .Y(n1002) );
  INVX1 U628 ( .A(change_point[1]), .Y(n750) );
  INVX1 U629 ( .A(sum_reg[4]), .Y(n1011) );
  INVX2 U630 ( .A(\sequence[2][2] ), .Y(n930) );
  INVX1 U631 ( .A(sum_reg[6]), .Y(n998) );
  INVX1 U632 ( .A(search_point[0]), .Y(n598) );
  INVX1 U633 ( .A(sum_reg[3]), .Y(n1006) );
  ADDHX2 U634 ( .A(sum_reg[8]), .B(n861), .CO(n862), .S(n659) );
  OAI21X1 U635 ( .A0(n589), .A1(n908), .B0(n588), .Y(n945) );
  AOI22XL U636 ( .A0(MinCost[2]), .A1(n1008), .B0(n963), .B1(n962), .Y(n964)
         );
  AND2X1 U637 ( .A(n686), .B(n908), .Y(n689) );
  INVXL U638 ( .A(n1021), .Y(n794) );
  CLKINVX1 U639 ( .A(n940), .Y(n817) );
  CLKBUFX3 U640 ( .A(n591), .Y(n648) );
  NOR2XL U641 ( .A(n644), .B(n562), .Y(n626) );
  CLKINVX1 U642 ( .A(n1029), .Y(n777) );
  NOR2X1 U643 ( .A(n821), .B(n892), .Y(n799) );
  INVXL U644 ( .A(n799), .Y(n1035) );
  BUFX2 U645 ( .A(n592), .Y(n1021) );
  NAND2XL U646 ( .A(n756), .B(n648), .Y(n592) );
  NOR4XL U647 ( .A(RST), .B(n859), .C(n858), .D(n857), .Y(n860) );
  INVXL U648 ( .A(n966), .Y(n968) );
  INVXL U649 ( .A(n959), .Y(n970) );
  NAND2XL U650 ( .A(n755), .B(n914), .Y(n612) );
  NOR2XL U651 ( .A(find_active), .B(n708), .Y(n707) );
  NAND2XL U652 ( .A(counter[2]), .B(n873), .Y(n676) );
  NOR2X1 U653 ( .A(n750), .B(n938), .Y(n755) );
  NOR2XL U654 ( .A(n755), .B(n562), .Y(n776) );
  INVXL U655 ( .A(n612), .Y(n775) );
  NOR2XL U656 ( .A(n711), .B(n710), .Y(n730) );
  OAI2BB1XL U657 ( .A0N(n994), .A1N(value[2]), .B0(n701), .Y(n702) );
  INVXL U658 ( .A(n897), .Y(n899) );
  CLKINVX1 U659 ( .A(n1044), .Y(n1062) );
  CLKBUFX3 U660 ( .A(n977), .Y(n1017) );
  NAND2XL U661 ( .A(\sequence[0][1] ), .B(n794), .Y(n767) );
  NOR3XL U662 ( .A(n891), .B(n890), .C(n889), .Y(n895) );
  NAND4XL U663 ( .A(\sequence[2][1] ), .B(\sequence[7][1] ), .C(n880), .D(n879), .Y(n891) );
  NAND4XL U664 ( .A(n888), .B(n887), .C(n886), .D(n885), .Y(n889) );
  NAND2XL U665 ( .A(n878), .B(n864), .Y(n894) );
  AOI211XL U666 ( .A0(\sequence[2][2] ), .A1(n689), .B0(n711), .C0(n688), .Y(
        n690) );
  AOI211XL U667 ( .A0(n689), .A1(\sequence[2][1] ), .B0(n675), .C0(n674), .Y(
        n927) );
  AOI211XL U668 ( .A0(\sequence[2][0] ), .A1(n689), .B0(n715), .C0(n587), .Y(
        n588) );
  INVXL U669 ( .A(n996), .Y(n1056) );
  BUFX2 U670 ( .A(n653), .Y(n1059) );
  NAND2XL U671 ( .A(n877), .B(n708), .Y(n653) );
  BUFX2 U672 ( .A(n654), .Y(n1058) );
  INVXL U673 ( .A(n780), .Y(n856) );
  NAND2XL U674 ( .A(\sequence[0][0] ), .B(n794), .Y(n795) );
  AOI211XL U675 ( .A0(\sequence[4][1] ), .A1(n777), .B0(RST), .C0(n660), .Y(
        n661) );
  AOI211XL U676 ( .A0(n855), .A1(n669), .B0(n668), .C0(n667), .Y(n671) );
  OAI22XL U677 ( .A0(n1042), .A1(n1041), .B0(n1040), .B1(n1039), .Y(n537) );
  NOR3XL U678 ( .A(RST), .B(n1038), .C(n1037), .Y(n1040) );
  OAI22XL U679 ( .A0(n1042), .A1(n881), .B0(n611), .B1(n1039), .Y(n536) );
  NOR3XL U680 ( .A(RST), .B(n610), .C(n609), .Y(n611) );
  OAI21XL U681 ( .A0(n628), .A1(n847), .B0(n608), .Y(n609) );
  OAI22XL U682 ( .A0(n1042), .A1(n853), .B0(n627), .B1(n1039), .Y(n559) );
  AOI211XL U683 ( .A0(n799), .A1(n790), .B0(n772), .C0(n771), .Y(n773) );
  OAI22XL U684 ( .A0(n646), .A1(n670), .B0(n672), .B1(n1028), .Y(n540) );
  AOI211XL U685 ( .A0(\sequence[4][0] ), .A1(n777), .B0(n641), .C0(n640), .Y(
        n646) );
  INVXL U686 ( .A(n720), .Y(n724) );
  NOR2XL U687 ( .A(n741), .B(n1028), .Y(n717) );
  NAND2XL U688 ( .A(n742), .B(\sequence[0][1] ), .Y(n718) );
  NOR2XL U689 ( .A(n713), .B(n712), .Y(n723) );
  NOR2XL U690 ( .A(n741), .B(n879), .Y(n713) );
  NAND2XL U691 ( .A(n742), .B(\sequence[1][2] ), .Y(n726) );
  INVXL U692 ( .A(n697), .Y(n700) );
  INVXL U693 ( .A(n740), .Y(n745) );
  INVXL U694 ( .A(n735), .Y(n746) );
  NOR2XL U695 ( .A(MinCost[9]), .B(n1013), .Y(n976) );
  OAI22XL U696 ( .A0(MinCost[4]), .A1(n1011), .B0(n1080), .B1(n1018), .Y(n959)
         );
  AOI211XL U697 ( .A0(\sequence[1][2] ), .A1(n643), .B0(n614), .C0(n613), .Y(
        n616) );
  AOI211XL U698 ( .A0(\sequence[6][0] ), .A1(n775), .B0(n636), .C0(n635), .Y(
        n638) );
  NAND2XL U699 ( .A(\sequence[7][0] ), .B(n817), .Y(n637) );
  NOR4XL U700 ( .A(\sequence[0][0] ), .B(\sequence[2][0] ), .C(n882), .D(n1028), .Y(n888) );
  NOR4XL U701 ( .A(\sequence[2][2] ), .B(\sequence[0][2] ), .C(
        \sequence[1][2] ), .D(n883), .Y(n886) );
  NAND3XL U702 ( .A(n878), .B(n980), .C(n683), .Y(n684) );
  INVXL U703 ( .A(n680), .Y(n681) );
  BUFX2 U704 ( .A(n586), .Y(n727) );
  NAND2XL U705 ( .A(counter[0]), .B(n720), .Y(n586) );
  INVXL U706 ( .A(n865), .Y(n916) );
  INVXL U707 ( .A(n833), .Y(n866) );
  INVXL U708 ( .A(n634), .Y(n763) );
  INVXL U709 ( .A(n840), .Y(n843) );
  INVXL U710 ( .A(n839), .Y(n756) );
  INVXL U711 ( .A(n633), .Y(n643) );
  INVXL U712 ( .A(n644), .Y(n647) );
  NOR2XL U713 ( .A(n914), .B(n750), .Y(n678) );
  OAI211XL U714 ( .A0(MinCost[0]), .A1(n1060), .B0(n954), .C0(n953), .Y(n956)
         );
  NAND2XL U715 ( .A(sum_reg[1]), .B(n961), .Y(n953) );
  NOR3XL U716 ( .A(n959), .B(n971), .C(n952), .Y(n954) );
  AOI211XL U717 ( .A0(n1036), .A1(n1033), .B0(n1032), .C0(n1031), .Y(n1034) );
  AOI211XL U718 ( .A0(n855), .A1(n628), .B0(n622), .C0(n621), .Y(n623) );
  INVXL U719 ( .A(\sequence[7][2] ), .Y(n882) );
  INVXL U720 ( .A(n669), .Y(n642) );
  INVXL U721 ( .A(n982), .Y(n1033) );
  INVXL U722 ( .A(n804), .Y(n805) );
  NAND4XL U723 ( .A(n869), .B(n868), .C(n867), .D(n866), .Y(n1047) );
  INVXL U724 ( .A(sum_reg[1]), .Y(n1004) );
  ADDHXL U725 ( .A(sum_reg[0]), .B(Cost[0]), .CO(n809), .S(n1057) );
  INVXL U726 ( .A(sum_reg[0]), .Y(n1060) );
  INVXL U727 ( .A(n936), .Y(n939) );
  NOR2XL U728 ( .A(counter[1]), .B(n900), .Y(n752) );
  ADDFXL U729 ( .A(Cost[2]), .B(sum_reg[2]), .CI(n811), .CO(n813), .S(n812) );
  ADDFXL U730 ( .A(Cost[4]), .B(sum_reg[4]), .CI(n705), .CO(n753), .S(n706) );
  INVXL U731 ( .A(n790), .Y(n651) );
  INVXL U732 ( .A(n983), .Y(n984) );
  NOR2XL U733 ( .A(n911), .B(n910), .Y(n912) );
  NOR2XL U734 ( .A(n908), .B(n910), .Y(n909) );
  AOI211XL U735 ( .A0(counter[0]), .A1(n898), .B0(counter[1]), .C0(n900), .Y(
        n748) );
  OAI211XL U736 ( .A0(n926), .A1(n1071), .B0(n922), .C0(n907), .Y(n527) );
  NAND2XL U737 ( .A(n947), .B(search_point[0]), .Y(n907) );
  OAI211XL U738 ( .A0(n998), .A1(n1017), .B0(n877), .C0(n997), .Y(n503) );
  NAND2XL U739 ( .A(MinCost[6]), .B(n1014), .Y(n997) );
  OAI211XL U740 ( .A0(n1060), .A1(n1017), .B0(n877), .C0(n1009), .Y(n509) );
  OAI211XL U741 ( .A0(n1002), .A1(n1017), .B0(n877), .C0(n1001), .Y(n501) );
  NAND2XL U742 ( .A(MinCost[8]), .B(n1014), .Y(n1001) );
  OAI211XL U743 ( .A0(n1011), .A1(n1017), .B0(n877), .C0(n1010), .Y(n505) );
  NAND2XL U744 ( .A(MinCost[4]), .B(n1014), .Y(n1010) );
  OAI211XL U745 ( .A0(n906), .A1(n914), .B0(n1056), .C0(n905), .Y(n530) );
  AOI22XL U746 ( .A0(n900), .A1(n899), .B0(n902), .B1(counter[0]), .Y(n901) );
  NAND2XL U747 ( .A(n978), .B(n1017), .Y(n513) );
  NAND2XL U748 ( .A(MinCost[9]), .B(n1014), .Y(n1012) );
  NAND2XL U749 ( .A(MinCost[2]), .B(n1014), .Y(n1007) );
  OAI211XL U750 ( .A0(n1006), .A1(n1017), .B0(n877), .C0(n1005), .Y(n506) );
  NAND2XL U751 ( .A(MinCost[5]), .B(n1014), .Y(n1015) );
  NOR2XL U752 ( .A(counter[0]), .B(n874), .Y(N219) );
  OAI2BB2XL U753 ( .B0(n1013), .B1(n1059), .A0N(n1058), .A1N(n863), .Y(n514)
         );
  AOI211XL U754 ( .A0(n846), .A1(n804), .B0(n758), .C0(n757), .Y(n759) );
  AOI211XL U755 ( .A0(n846), .A1(n798), .B0(n769), .C0(n768), .Y(n770) );
  OAI211XL U756 ( .A0(n798), .A1(n847), .B0(n877), .C0(n767), .Y(n768) );
  AOI21XL U757 ( .A0(n855), .A1(n784), .B0(n781), .Y(n782) );
  AOI211XL U758 ( .A0(n855), .A1(n798), .B0(n765), .C0(n764), .Y(n766) );
  OAI211XL U759 ( .A0(n1048), .A1(n1053), .B0(n877), .C0(n896), .Y(n534) );
  OAI211XL U760 ( .A0(n1047), .A1(n894), .B0(n893), .C0(n892), .Y(n532) );
  AOI21XL U761 ( .A0(n1048), .A1(n1047), .B0(n1053), .Y(n1051) );
  INVXL U762 ( .A(n947), .Y(n836) );
  OAI211XL U763 ( .A0(n935), .A1(n950), .B0(n934), .C0(n933), .Y(n526) );
  OAI211XL U764 ( .A0(n927), .A1(n926), .B0(n925), .C0(n924), .Y(n525) );
  OAI211XL U765 ( .A0(n951), .A1(n950), .B0(n949), .C0(n948), .Y(n524) );
  AOI22XL U766 ( .A0(n947), .A1(value[0]), .B0(n946), .B1(n945), .Y(n948) );
  OAI2BB1XL U767 ( .A0N(find_active), .A1N(n1056), .B0(n1055), .Y(n529) );
  AOI221XL U768 ( .A0(n856), .A1(n651), .B0(n855), .B1(n790), .C0(n650), .Y(
        n652) );
  OAI211XL U769 ( .A0(n853), .A1(n1023), .B0(n649), .C0(n877), .Y(n650) );
  AOI21XL U770 ( .A0(n846), .A1(n784), .B0(n783), .Y(n786) );
  AOI211XL U771 ( .A0(n799), .A1(n784), .B0(RST), .C0(n778), .Y(n779) );
  NOR3XL U772 ( .A(n850), .B(n849), .C(n848), .Y(n851) );
  AOI211XL U773 ( .A0(n799), .A1(n798), .B0(n797), .C0(n796), .Y(n801) );
  OAI211XL U774 ( .A0(n798), .A1(n982), .B0(n877), .C0(n795), .Y(n796) );
  NOR4XL U775 ( .A(RST), .B(n987), .C(n986), .D(n985), .Y(n989) );
  OAI22XL U776 ( .A0(n984), .A1(n1035), .B0(n983), .B1(n982), .Y(n985) );
  AOI211XL U777 ( .A0(n846), .A1(n669), .B0(n663), .C0(n662), .Y(n664) );
  NAND2XL U778 ( .A(counter[0]), .B(n993), .Y(n563) );
  NOR3X2 U779 ( .A(state[0]), .B(n1048), .C(n1050), .Y(n816) );
  CLKINVX1 U780 ( .A(n564), .Y(n565) );
  OAI21XL U781 ( .A0(state[2]), .A1(n1048), .B0(n877), .Y(n841) );
  NOR2X1 U782 ( .A(change_point[0]), .B(change_point[1]), .Y(n679) );
  OAI22XL U783 ( .A0(n687), .A1(n854), .B0(n727), .B1(n852), .Y(n688) );
  OAI211XL U784 ( .A0(n727), .A1(n928), .B0(n726), .C0(n725), .Y(n728) );
  NAND3X2 U785 ( .A(search_point[2]), .B(search_point[0]), .C(n597), .Y(n804)
         );
  NOR2XL U786 ( .A(n634), .B(n917), .Y(n596) );
  NOR4XL U787 ( .A(\sequence[3][2] ), .B(n884), .C(n929), .D(n928), .Y(n885)
         );
  INVX12 U788 ( .A(n563), .Y(W[0]) );
  INVX16 U789 ( .A(n567), .Y(MinCost[6]) );
  INVX16 U790 ( .A(n569), .Y(MinCost[0]) );
  INVX16 U791 ( .A(n571), .Y(MinCost[8]) );
  INVX16 U792 ( .A(n573), .Y(MinCost[4]) );
  NOR2XL U793 ( .A(n741), .B(n1041), .Y(n715) );
  NOR4XL U794 ( .A(\sequence[6][0] ), .B(\sequence[4][0] ), .C(n1030), .D(
        n1024), .Y(n887) );
  OAI22XL U795 ( .A0(n687), .A1(n1024), .B0(n727), .B1(n1028), .Y(n587) );
  NAND4XL U796 ( .A(\sequence[6][1] ), .B(\sequence[3][1] ), .C(n917), .D(n881), .Y(n890) );
  OAI21XL U797 ( .A0(n881), .A1(n866), .B0(n694), .Y(n825) );
  NOR3XL U798 ( .A(n873), .B(n872), .C(n874), .Y(N220) );
  AOI222X1 U799 ( .A0(n723), .A1(n722), .B0(n723), .B1(n721), .C0(n722), .C1(
        n721), .Y(n729) );
  OAI211XL U800 ( .A0(n720), .A1(n918), .B0(n719), .C0(n718), .Y(n721) );
  AOI211XL U801 ( .A0(\sequence[7][0] ), .A1(n724), .B0(n717), .C0(n716), .Y(
        n722) );
  AOI222X4 U802 ( .A0(n734), .A1(n733), .B0(n734), .B1(n735), .C0(n733), .C1(
        n735), .Y(n898) );
  AOI22XL U803 ( .A0(\sequence[0][0] ), .A1(n944), .B0(n943), .B1(n942), .Y(
        n949) );
  AOI22XL U804 ( .A0(\sequence[0][2] ), .A1(n944), .B0(n943), .B1(n931), .Y(
        n934) );
  AOI22XL U805 ( .A0(\sequence[0][1] ), .A1(n944), .B0(n943), .B1(n920), .Y(
        n925) );
  OAI21X1 U806 ( .A0(n921), .A1(n913), .B0(n877), .Y(n944) );
  OAI31X4 U807 ( .A0(n843), .A1(n984), .A2(n842), .B0(n565), .Y(n988) );
  OAI31X4 U808 ( .A0(n763), .A1(n762), .A2(n842), .B0(n565), .Y(n800) );
  OAI31X4 U809 ( .A0(n756), .A1(n805), .A2(n842), .B0(n565), .Y(n806) );
  OAI31X4 U810 ( .A0(n647), .A1(n651), .A2(n842), .B0(n565), .Y(n791) );
  OAI31X4 U811 ( .A0(n775), .A1(n774), .A2(n842), .B0(n565), .Y(n785) );
  OAI31X4 U812 ( .A0(n643), .A1(n642), .A2(n842), .B0(n565), .Y(n670) );
  OAI31X4 U813 ( .A0(n833), .A1(n1036), .A2(n842), .B0(n565), .Y(n1039) );
  NAND2XL U814 ( .A(change_point[0]), .B(n645), .Y(n633) );
  INVX12 U815 ( .A(n955), .Y(MatchCount[0]) );
  AOI211XL U816 ( .A0(n1075), .A1(n958), .B0(RST), .C0(n957), .Y(n978) );
  BUFX16 U817 ( .A(n1072), .Y(MatchCount[3]) );
  NAND2XL U818 ( .A(MatchCount[3]), .B(n1063), .Y(n1064) );
  INVX12 U819 ( .A(n961), .Y(MinCost[1]) );
  NAND2XL U820 ( .A(MinCost[1]), .B(n1014), .Y(n1003) );
  CLKINVX1 U821 ( .A(n1084), .Y(n961) );
  INVX12 U822 ( .A(n1066), .Y(MatchCount[2]) );
  OAI22XL U823 ( .A0(n1073), .A1(n1065), .B0(n1066), .B1(n1061), .Y(n511) );
  BUFX16 U824 ( .A(n1076), .Y(MinCost[9]) );
  OAI211XL U825 ( .A0(n1013), .A1(n1017), .B0(n877), .C0(n1012), .Y(n500) );
  BUFX16 U826 ( .A(n1078), .Y(MinCost[7]) );
  NAND2XL U827 ( .A(MinCost[7]), .B(n1014), .Y(n999) );
  OAI22XL U828 ( .A0(MinCost[6]), .A1(n998), .B0(MinCost[7]), .B1(n1000), .Y(
        n971) );
  OAI2BB2XL U829 ( .B0(n972), .B1(n971), .A0N(n1000), .A1N(MinCost[7]), .Y(
        n974) );
  BUFX16 U830 ( .A(n1074), .Y(MatchCount[1]) );
  AO22X1 U831 ( .A0(MatchCount[1]), .A1(n1045), .B0(n1046), .B1(n1043), .Y(
        n512) );
  BUFX16 U832 ( .A(n1083), .Y(MinCost[2]) );
  OAI211XL U833 ( .A0(n1008), .A1(n1017), .B0(n877), .C0(n1007), .Y(n507) );
  BUFX12 U834 ( .A(n1082), .Y(MinCost[3]) );
  NAND2XL U835 ( .A(MinCost[3]), .B(n1014), .Y(n1005) );
  NOR2XL U836 ( .A(n1082), .B(n1006), .Y(n965) );
  OAI2BB2XL U837 ( .B0(n965), .B1(n964), .A0N(n1006), .A1N(n1082), .Y(n969) );
  BUFX12 U838 ( .A(n1080), .Y(MinCost[5]) );
  OAI211XL U839 ( .A0(n1018), .A1(n1017), .B0(n877), .C0(n1015), .Y(n504) );
  OAI22XL U840 ( .A0(sum_reg[1]), .A1(n961), .B0(sum_reg[0]), .B1(n960), .Y(
        n962) );
  OAI211XL U841 ( .A0(n1018), .A1(n1080), .B0(n1011), .C0(MinCost[4]), .Y(n966) );
  AO22X1 U842 ( .A0(n1018), .A1(n1080), .B0(n998), .B1(MinCost[6]), .Y(n967)
         );
  AOI211XL U843 ( .A0(n970), .A1(n969), .B0(n968), .C0(n967), .Y(n972) );
  NOR2XL U844 ( .A(n698), .B(n692), .Y(n693) );
  NAND2XL U845 ( .A(\sequence[7][2] ), .B(n817), .Y(n615) );
  AOI211XL U846 ( .A0(\sequence[4][2] ), .A1(n777), .B0(RST), .C0(n665), .Y(
        n666) );
  AOI211XL U847 ( .A0(n846), .A1(n628), .B0(n607), .C0(n606), .Y(n608) );
  OAI211XL U848 ( .A0(n1030), .A1(n839), .B0(n638), .C0(n637), .Y(n692) );
  CLKBUFX3 U849 ( .A(n585), .Y(n741) );
  INVXL U850 ( .A(n894), .Y(n871) );
  NAND2X2 U851 ( .A(n1062), .B(n996), .Y(n1014) );
  OAI21XL U852 ( .A0(n691), .A1(n908), .B0(n690), .Y(n932) );
  INVXL U853 ( .A(n941), .Y(n937) );
  INVXL U854 ( .A(n895), .Y(n979) );
  NAND2XL U855 ( .A(MinCost[0]), .B(n1014), .Y(n1009) );
  AOI211XL U856 ( .A0(\sequence[2][2] ), .A1(n626), .B0(n625), .C0(n624), .Y(
        n627) );
  INVXL U857 ( .A(\sequence[7][0] ), .Y(n883) );
  NAND3XL U858 ( .A(n1044), .B(MatchCount[1]), .C(n1043), .Y(n1065) );
  AOI211XL U859 ( .A0(n846), .A1(n790), .B0(n789), .C0(n788), .Y(n792) );
  NOR3XL U860 ( .A(n1049), .B(n875), .C(n874), .Y(N221) );
  OAI211XL U861 ( .A0(n1004), .A1(n1017), .B0(n877), .C0(n1003), .Y(n508) );
  OAI211XL U862 ( .A0(n1000), .A1(n1017), .B0(n877), .C0(n999), .Y(n502) );
  OAI22XL U863 ( .A0(n990), .A1(n1020), .B0(n989), .B1(n988), .Y(n543) );
  CLKINVX1 U865 ( .A(counter[1]), .Y(n911) );
  NOR2X2 U866 ( .A(n1071), .B(n911), .Y(n873) );
  CLKINVX1 U867 ( .A(n676), .Y(n1049) );
  NOR2X1 U868 ( .A(counter[0]), .B(n911), .Y(n686) );
  NOR2X1 U869 ( .A(counter[1]), .B(n1071), .Y(n685) );
  NOR2X1 U870 ( .A(counter[0]), .B(counter[1]), .Y(n872) );
  AOI222XL U871 ( .A0(n686), .A1(\sequence[6][0] ), .B0(n685), .B1(
        \sequence[5][0] ), .C0(n872), .C1(\sequence[4][0] ), .Y(n589) );
  CLKINVX2 U872 ( .A(counter[2]), .Y(n908) );
  NOR2X2 U873 ( .A(counter[2]), .B(counter[1]), .Y(n720) );
  NAND2X1 U874 ( .A(n720), .B(n1071), .Y(n585) );
  NAND2X1 U875 ( .A(n873), .B(n908), .Y(n687) );
  AOI21X1 U876 ( .A0(n1049), .A1(\sequence[7][0] ), .B0(n945), .Y(n698) );
  CLKINVX1 U877 ( .A(state[2]), .Y(n980) );
  CLKINVX1 U878 ( .A(state[1]), .Y(n1048) );
  CLKINVX1 U879 ( .A(state[0]), .Y(n1053) );
  NAND2X1 U880 ( .A(n1048), .B(n1053), .Y(n708) );
  NOR2X2 U881 ( .A(n980), .B(n708), .Y(n993) );
  NAND2BX1 U882 ( .AN(n698), .B(n993), .Y(n590) );
  INVX12 U883 ( .A(n590), .Y(J[0]) );
  NOR2X1 U884 ( .A(change_point[1]), .B(change_point[2]), .Y(n645) );
  CLKINVX1 U885 ( .A(n645), .Y(n921) );
  NOR2X1 U886 ( .A(RST), .B(state[2]), .Y(n864) );
  NAND2X1 U887 ( .A(n864), .B(state[0]), .Y(n838) );
  NOR2X1 U888 ( .A(change_point[0]), .B(n921), .Y(n833) );
  NOR3X1 U889 ( .A(search_point[2]), .B(search_point[1]), .C(search_point[0]), 
        .Y(n1036) );
  NAND2X1 U890 ( .A(n877), .B(n562), .Y(n842) );
  AOI2BB1X1 U891 ( .A0N(n921), .A1N(n562), .B0(n1039), .Y(n1042) );
  NAND3X1 U892 ( .A(change_point[0]), .B(change_point[2]), .C(n750), .Y(n839)
         );
  CLKINVX1 U893 ( .A(n562), .Y(n591) );
  NAND3X1 U894 ( .A(change_point[1]), .B(change_point[0]), .C(n938), .Y(n644)
         );
  CLKINVX1 U895 ( .A(n626), .Y(n1019) );
  OAI22XL U896 ( .A0(n917), .A1(n1021), .B0(n919), .B1(n1019), .Y(n610) );
  NAND2X1 U897 ( .A(change_point[2]), .B(n679), .Y(n634) );
  NAND3X1 U898 ( .A(change_point[1]), .B(n914), .C(n938), .Y(n840) );
  OAI22XL U899 ( .A0(n633), .A1(n879), .B0(n840), .B1(n919), .Y(n595) );
  NAND2X1 U900 ( .A(change_point[0]), .B(n755), .Y(n940) );
  CLKINVX1 U901 ( .A(\sequence[7][1] ), .Y(n829) );
  CLKINVX1 U902 ( .A(\sequence[5][1] ), .Y(n880) );
  OAI22XL U903 ( .A0(n940), .A1(n829), .B0(n839), .B1(n880), .Y(n594) );
  CLKINVX1 U904 ( .A(\sequence[6][1] ), .Y(n918) );
  OAI22XL U905 ( .A0(n612), .A1(n918), .B0(n644), .B1(n845), .Y(n593) );
  NOR4X1 U906 ( .A(n596), .B(n595), .C(n594), .D(n593), .Y(n694) );
  NAND2X1 U907 ( .A(n816), .B(n825), .Y(n847) );
  CLKINVX1 U908 ( .A(search_point[2]), .Y(n837) );
  NAND3X2 U909 ( .A(search_point[0]), .B(n837), .C(n597), .Y(n669) );
  OAI22XL U910 ( .A0(n879), .A1(n669), .B0(n881), .B1(n628), .Y(n602) );
  NAND3X2 U911 ( .A(search_point[1]), .B(n837), .C(n598), .Y(n983) );
  NAND3X2 U912 ( .A(search_point[1]), .B(search_point[0]), .C(n837), .Y(n790)
         );
  OAI22XL U913 ( .A0(n919), .A1(n983), .B0(n845), .B1(n790), .Y(n601) );
  NAND3X2 U914 ( .A(search_point[2]), .B(n597), .C(n598), .Y(n798) );
  OAI22XL U915 ( .A0(n917), .A1(n798), .B0(n880), .B1(n804), .Y(n600) );
  NAND3X1 U916 ( .A(search_point[2]), .B(search_point[1]), .C(search_point[0]), 
        .Y(n815) );
  NAND3X2 U917 ( .A(search_point[1]), .B(search_point[2]), .C(n598), .Y(n784)
         );
  OAI22XL U918 ( .A0(n829), .A1(n815), .B0(n918), .B1(n784), .Y(n599) );
  NOR4X1 U919 ( .A(n602), .B(n601), .C(n600), .D(n599), .Y(n824) );
  NOR2X2 U920 ( .A(n824), .B(n892), .Y(n846) );
  NAND2X1 U921 ( .A(n817), .B(n648), .Y(n603) );
  NAND2X1 U922 ( .A(n763), .B(n648), .Y(n604) );
  CLKBUFX3 U923 ( .A(n604), .Y(n1023) );
  OAI22XL U924 ( .A0(n918), .A1(n1025), .B0(n845), .B1(n1023), .Y(n607) );
  NAND2X1 U925 ( .A(n843), .B(n648), .Y(n1027) );
  NAND2X1 U926 ( .A(n775), .B(n648), .Y(n605) );
  OAI22XL U927 ( .A0(n879), .A1(n1027), .B0(n880), .B1(n1029), .Y(n606) );
  OAI21XL U928 ( .A0(n928), .A1(n1021), .B0(n877), .Y(n625) );
  OAI22XL U929 ( .A0(n928), .A1(n634), .B0(n854), .B1(n644), .Y(n614) );
  CLKINVX1 U930 ( .A(\sequence[5][2] ), .Y(n884) );
  OAI22XL U931 ( .A0(n929), .A1(n612), .B0(n884), .B1(n839), .Y(n613) );
  OAI211X1 U932 ( .A0(n840), .A1(n930), .B0(n616), .C0(n615), .Y(n695) );
  AO21X1 U933 ( .A0(\sequence[0][2] ), .A1(n833), .B0(n695), .Y(n819) );
  NAND2X1 U934 ( .A(n816), .B(n819), .Y(n780) );
  OAI22XL U935 ( .A0(n853), .A1(n628), .B0(n852), .B1(n669), .Y(n620) );
  OAI22XL U936 ( .A0(n930), .A1(n983), .B0(n854), .B1(n790), .Y(n619) );
  OAI22XL U937 ( .A0(n884), .A1(n804), .B0(n928), .B1(n798), .Y(n618) );
  OAI22XL U938 ( .A0(n882), .A1(n815), .B0(n929), .B1(n784), .Y(n617) );
  NOR4X1 U939 ( .A(n620), .B(n619), .C(n618), .D(n617), .Y(n818) );
  NOR2X2 U940 ( .A(n818), .B(n892), .Y(n855) );
  OAI22XL U941 ( .A0(n929), .A1(n1025), .B0(n854), .B1(n1023), .Y(n622) );
  OAI22XL U942 ( .A0(n884), .A1(n1029), .B0(n852), .B1(n1027), .Y(n621) );
  OAI21XL U943 ( .A0(n628), .A1(n780), .B0(n623), .Y(n624) );
  CLKINVX1 U944 ( .A(\sequence[5][0] ), .Y(n1030) );
  OAI22XL U945 ( .A0(n1030), .A1(n1025), .B0(n1041), .B1(n1027), .Y(n641) );
  OAI22XL U946 ( .A0(n1041), .A1(n628), .B0(n1028), .B1(n669), .Y(n632) );
  OAI22XL U947 ( .A0(n1020), .A1(n983), .B0(n1024), .B1(n790), .Y(n631) );
  OAI22XL U948 ( .A0(n1030), .A1(n804), .B0(n1022), .B1(n798), .Y(n630) );
  CLKINVX1 U949 ( .A(\sequence[6][0] ), .Y(n1026) );
  OAI22XL U950 ( .A0(n1026), .A1(n784), .B0(n883), .B1(n815), .Y(n629) );
  NOR4X1 U951 ( .A(n632), .B(n631), .C(n630), .D(n629), .Y(n821) );
  OAI22XL U952 ( .A0(n1020), .A1(n840), .B0(n1028), .B1(n633), .Y(n636) );
  OAI22XL U953 ( .A0(n1022), .A1(n634), .B0(n1024), .B1(n644), .Y(n635) );
  AO21X1 U954 ( .A0(\sequence[0][0] ), .A1(n833), .B0(n692), .Y(n822) );
  NAND2X1 U955 ( .A(n816), .B(n822), .Y(n982) );
  AOI2BB2X1 U956 ( .B0(\sequence[3][0] ), .B1(n794), .A0N(n1020), .A1N(n1023), 
        .Y(n639) );
  OAI221XL U957 ( .A0(n642), .A1(n1035), .B0(n669), .B1(n982), .C0(n639), .Y(
        n640) );
  AOI221X1 U958 ( .A0(n645), .A1(n648), .B0(n647), .B1(n648), .C0(n670), .Y(
        n672) );
  AOI221X1 U959 ( .A0(n817), .A1(n648), .B0(n938), .B1(n648), .C0(n791), .Y(
        n793) );
  AOI2BB2X1 U960 ( .B0(\sequence[2][2] ), .B1(n777), .A0N(n852), .A1N(n1021), 
        .Y(n649) );
  OAI22XL U961 ( .A0(n793), .A1(n854), .B0(n652), .B1(n791), .Y(n545) );
  OAI2BB2XL U962 ( .B0(n998), .B1(n1059), .A0N(n1058), .A1N(n655), .Y(n517) );
  ADDFXL U963 ( .A(Cost[6]), .B(sum_reg[6]), .CI(n656), .CO(n658), .S(n655) );
  OAI2BB2XL U964 ( .B0(n1000), .B1(n1059), .A0N(n1058), .A1N(n657), .Y(n516)
         );
  ADDHXL U965 ( .A(n658), .B(sum_reg[7]), .CO(n861), .S(n657) );
  OAI2BB2XL U966 ( .B0(n1002), .B1(n1059), .A0N(n1058), .A1N(n659), .Y(n515)
         );
  OAI22XL U967 ( .A0(n880), .A1(n1025), .B0(n845), .B1(n1021), .Y(n663) );
  OAI22XL U968 ( .A0(n919), .A1(n1023), .B0(n881), .B1(n1027), .Y(n660) );
  OAI21XL U969 ( .A0(n669), .A1(n847), .B0(n661), .Y(n662) );
  OAI22XL U970 ( .A0(n672), .A1(n879), .B0(n664), .B1(n670), .Y(n538) );
  OAI22XL U971 ( .A0(n884), .A1(n1025), .B0(n854), .B1(n1021), .Y(n668) );
  OAI22XL U972 ( .A0(n930), .A1(n1023), .B0(n853), .B1(n1027), .Y(n665) );
  OAI21XL U973 ( .A0(n669), .A1(n780), .B0(n666), .Y(n667) );
  OAI22XL U974 ( .A0(n672), .A1(n852), .B0(n671), .B1(n670), .Y(n539) );
  OAI22XL U975 ( .A0(n687), .A1(n845), .B0(n727), .B1(n879), .Y(n675) );
  AOI222XL U976 ( .A0(n686), .A1(\sequence[6][1] ), .B0(n685), .B1(
        \sequence[5][1] ), .C0(n872), .C1(\sequence[4][1] ), .Y(n673) );
  OAI22XL U977 ( .A0(n673), .A1(n908), .B0(n741), .B1(n881), .Y(n674) );
  OAI21X1 U978 ( .A0(n676), .A1(n829), .B0(n927), .Y(n697) );
  NAND2X1 U979 ( .A(n697), .B(n993), .Y(n677) );
  INVX12 U980 ( .A(n677), .Y(J[1]) );
  NOR2X1 U981 ( .A(n679), .B(n678), .Y(n865) );
  NOR2X1 U982 ( .A(state[1]), .B(n1053), .Y(n878) );
  OAI22XL U983 ( .A0(n872), .A1(change_point[1]), .B0(change_point[2]), .B1(
        n908), .Y(n682) );
  AOI211XL U984 ( .A0(n914), .A1(counter[1]), .B0(n873), .C0(n679), .Y(n680)
         );
  OAI22XL U985 ( .A0(counter[2]), .A1(n938), .B0(n682), .B1(n681), .Y(n683) );
  NAND2X1 U986 ( .A(n877), .B(n684), .Y(n913) );
  NAND2BX1 U987 ( .AN(n684), .B(n877), .Y(n834) );
  AOI222XL U988 ( .A0(n686), .A1(\sequence[6][2] ), .B0(n685), .B1(
        \sequence[5][2] ), .C0(n872), .C1(\sequence[4][2] ), .Y(n691) );
  NOR2X1 U989 ( .A(n741), .B(n853), .Y(n711) );
  AOI21X1 U990 ( .A0(n1049), .A1(\sequence[7][2] ), .B0(n932), .Y(n994) );
  AOI222XL U991 ( .A0(n694), .A1(n693), .B0(n694), .B1(n697), .C0(n693), .C1(
        n697), .Y(n696) );
  AOI222XL U992 ( .A0(n994), .A1(n696), .B0(n994), .B1(n695), .C0(n696), .C1(
        n695), .Y(n703) );
  AO22X1 U993 ( .A0(value[1]), .A1(n700), .B0(value[0]), .B1(n698), .Y(n699)
         );
  OAI21XL U994 ( .A0(value[1]), .A1(n700), .B0(n699), .Y(n701) );
  OAI211X1 U995 ( .A0(n994), .A1(value[2]), .B0(n703), .C0(n702), .Y(n835) );
  OAI22XL U996 ( .A0(n831), .A1(search_point[1]), .B0(n835), .B1(counter[1]), 
        .Y(n704) );
  OAI22XL U997 ( .A0(n865), .A1(n913), .B0(n834), .B1(n704), .Y(n528) );
  OAI2BB2XL U998 ( .B0(n1011), .B1(n1059), .A0N(n1058), .A1N(n706), .Y(n519)
         );
  NOR2X1 U999 ( .A(counter[2]), .B(n873), .Y(n875) );
  NOR3XL U1000 ( .A(state[2]), .B(find_active), .C(n708), .Y(n709) );
  NAND2XL U1001 ( .A(n878), .B(state[2]), .Y(n958) );
  NAND2X1 U1002 ( .A(n877), .B(n958), .Y(n996) );
  OA22X1 U1003 ( .A0(n876), .A1(n875), .B0(n709), .B1(n996), .Y(n906) );
  OAI22XL U1004 ( .A0(n720), .A1(n929), .B0(n854), .B1(n727), .Y(n710) );
  OAI22XL U1005 ( .A0(n720), .A1(n829), .B0(n917), .B1(n727), .Y(n712) );
  OAI22XL U1006 ( .A0(n720), .A1(n1026), .B0(n1024), .B1(n727), .Y(n714) );
  OAI22XL U1007 ( .A0(n715), .A1(n714), .B0(n727), .B1(n1022), .Y(n716) );
  NAND2BX1 U1008 ( .AN(n727), .B(\sequence[3][1] ), .Y(n719) );
  CLKINVX2 U1009 ( .A(n741), .Y(n742) );
  NAND2XL U1010 ( .A(\sequence[7][2] ), .B(n724), .Y(n725) );
  AOI222X1 U1011 ( .A0(n730), .A1(n729), .B0(n730), .B1(n728), .C0(n729), .C1(
        n728), .Y(n897) );
  OAI22XL U1012 ( .A0(n742), .A1(n1030), .B0(n741), .B1(n1020), .Y(n736) );
  AOI221XL U1013 ( .A0(n742), .A1(n1028), .B0(n741), .B1(n1022), .C0(n736), 
        .Y(n732) );
  OAI22X1 U1014 ( .A0(n742), .A1(\sequence[5][1] ), .B0(n741), .B1(
        \sequence[2][1] ), .Y(n738) );
  AOI222XL U1015 ( .A0(n732), .A1(n738), .B0(n732), .B1(n731), .C0(n738), .C1(
        n731), .Y(n734) );
  OAI22XL U1016 ( .A0(n742), .A1(\sequence[4][2] ), .B0(n741), .B1(
        \sequence[1][2] ), .Y(n733) );
  OAI22X1 U1017 ( .A0(n742), .A1(n884), .B0(n741), .B1(n930), .Y(n735) );
  OAI221XL U1018 ( .A0(n1024), .A1(n741), .B0(n1026), .B1(n742), .C0(n736), 
        .Y(n739) );
  AOI2BB2X1 U1019 ( .B0(n742), .B1(n845), .A0N(n742), .A1N(\sequence[6][1] ), 
        .Y(n737) );
  OAI222XL U1020 ( .A0(n739), .A1(n738), .B0(n739), .B1(n737), .C0(n738), .C1(
        n737), .Y(n740) );
  OAI21XL U1021 ( .A0(n742), .A1(n929), .B0(n854), .Y(n744) );
  OAI22XL U1022 ( .A0(n742), .A1(n929), .B0(n741), .B1(n854), .Y(n743) );
  AOI222XL U1023 ( .A0(n746), .A1(n745), .B0(n746), .B1(n744), .C0(n745), .C1(
        n743), .Y(n747) );
  NOR2X1 U1024 ( .A(n898), .B(n747), .Y(n900) );
  OAI22XL U1025 ( .A0(n899), .A1(counter[1]), .B0(n897), .B1(n748), .Y(n749)
         );
  OAI22XL U1026 ( .A0(n906), .A1(n750), .B0(n751), .B1(n749), .Y(n531) );
  OAI21XL U1027 ( .A0(n752), .A1(n897), .B0(n903), .Y(n1055) );
  OAI22XL U1028 ( .A0(n872), .A1(n1055), .B0(n906), .B1(n938), .Y(n535) );
  CLKINVX1 U1029 ( .A(sum_reg[5]), .Y(n1018) );
  ADDFXL U1030 ( .A(Cost[5]), .B(sum_reg[5]), .CI(n753), .CO(n656), .S(n754)
         );
  OAI2BB2XL U1031 ( .B0(n1018), .B1(n1059), .A0N(n1058), .A1N(n754), .Y(n518)
         );
  NOR2X1 U1032 ( .A(n776), .B(n806), .Y(n808) );
  OAI21XL U1033 ( .A0(n879), .A1(n1025), .B0(n877), .Y(n758) );
  OAI22XL U1034 ( .A0(n881), .A1(n1029), .B0(n804), .B1(n847), .Y(n757) );
  OAI22XL U1035 ( .A0(n808), .A1(n880), .B0(n759), .B1(n806), .Y(n550) );
  OAI22XL U1036 ( .A0(n1041), .A1(n1029), .B0(n1028), .B1(n1025), .Y(n760) );
  AOI221XL U1037 ( .A0(n1033), .A1(n805), .B0(n799), .B1(n804), .C0(n760), .Y(
        n761) );
  OAI22XL U1038 ( .A0(n761), .A1(n806), .B0(n808), .B1(n1030), .Y(n552) );
  OA21XL U1039 ( .A0(change_point[0]), .A1(change_point[1]), .B0(
        change_point[2]), .Y(n832) );
  INVXL U1040 ( .A(n798), .Y(n762) );
  AOI2BB1X1 U1041 ( .A0N(n832), .A1N(n562), .B0(n800), .Y(n802) );
  OAI22XL U1042 ( .A0(n930), .A1(n1025), .B0(n852), .B1(n1029), .Y(n765) );
  OAI22XL U1043 ( .A0(n853), .A1(n1021), .B0(n798), .B1(n780), .Y(n764) );
  OAI22XL U1044 ( .A0(n802), .A1(n928), .B0(n766), .B1(n800), .Y(n548) );
  OAI22XL U1045 ( .A0(n919), .A1(n1025), .B0(n879), .B1(n1029), .Y(n769) );
  OAI22XL U1046 ( .A0(n802), .A1(n917), .B0(n770), .B1(n800), .Y(n547) );
  OAI22XL U1047 ( .A0(n1020), .A1(n1029), .B0(n1028), .B1(n1021), .Y(n772) );
  OAI22XL U1048 ( .A0(n1041), .A1(n1023), .B0(n790), .B1(n982), .Y(n771) );
  OAI22XL U1049 ( .A0(n773), .A1(n791), .B0(n793), .B1(n1024), .Y(n546) );
  INVXL U1050 ( .A(n784), .Y(n774) );
  NOR3X1 U1051 ( .A(n777), .B(n776), .C(n785), .Y(n787) );
  OAI22XL U1052 ( .A0(n1041), .A1(n1025), .B0(n784), .B1(n982), .Y(n778) );
  OAI22XL U1053 ( .A0(n787), .A1(n1026), .B0(n779), .B1(n785), .Y(n555) );
  OAI22XL U1054 ( .A0(n853), .A1(n1025), .B0(n784), .B1(n780), .Y(n781) );
  OAI22XL U1055 ( .A0(n787), .A1(n929), .B0(n782), .B1(n785), .Y(n554) );
  OAI22XL U1056 ( .A0(n881), .A1(n1025), .B0(n784), .B1(n847), .Y(n783) );
  OAI22XL U1057 ( .A0(n787), .A1(n918), .B0(n786), .B1(n785), .Y(n553) );
  OAI22XL U1058 ( .A0(n919), .A1(n1029), .B0(n879), .B1(n1021), .Y(n789) );
  OAI22XL U1059 ( .A0(n881), .A1(n1023), .B0(n790), .B1(n847), .Y(n788) );
  OAI22XL U1060 ( .A0(n793), .A1(n845), .B0(n792), .B1(n791), .Y(n544) );
  OAI22XL U1061 ( .A0(n1020), .A1(n1025), .B0(n1028), .B1(n1029), .Y(n797) );
  OAI22XL U1062 ( .A0(n802), .A1(n1022), .B0(n801), .B1(n800), .Y(n549) );
  OAI22XL U1063 ( .A0(n853), .A1(n1029), .B0(n852), .B1(n1025), .Y(n803) );
  AOI221XL U1064 ( .A0(n856), .A1(n805), .B0(n855), .B1(n804), .C0(n803), .Y(
        n807) );
  OAI22XL U1065 ( .A0(n808), .A1(n884), .B0(n807), .B1(n806), .Y(n551) );
  ADDFXL U1066 ( .A(Cost[1]), .B(sum_reg[1]), .CI(n809), .CO(n811), .S(n810)
         );
  OAI2BB2XL U1067 ( .B0(n1004), .B1(n1059), .A0N(n1058), .A1N(n810), .Y(n522)
         );
  OAI2BB2XL U1068 ( .B0(n1008), .B1(n1059), .A0N(n1058), .A1N(n812), .Y(n521)
         );
  ADDFXL U1069 ( .A(Cost[3]), .B(sum_reg[3]), .CI(n813), .CO(n705), .S(n814)
         );
  OAI2BB2XL U1070 ( .B0(n1006), .B1(n1059), .A0N(n1058), .A1N(n814), .Y(n520)
         );
  OAI21X1 U1071 ( .A0(n817), .A1(n826), .B0(n816), .Y(n828) );
  AOI2BB2X1 U1072 ( .B0(n826), .B1(n819), .A0N(n826), .A1N(n818), .Y(n820) );
  OAI22XL U1073 ( .A0(n830), .A1(n882), .B0(n828), .B1(n820), .Y(n557) );
  AOI2BB2X1 U1074 ( .B0(n826), .B1(n822), .A0N(n826), .A1N(n821), .Y(n823) );
  OAI22XL U1075 ( .A0(n830), .A1(n883), .B0(n828), .B1(n823), .Y(n560) );
  AOI2BB2X1 U1076 ( .B0(n826), .B1(n825), .A0N(n826), .A1N(n824), .Y(n827) );
  OAI22XL U1077 ( .A0(n830), .A1(n829), .B0(n828), .B1(n827), .Y(n556) );
  NOR2X1 U1078 ( .A(n834), .B(n831), .Y(n947) );
  NOR2X1 U1079 ( .A(n833), .B(n832), .Y(n915) );
  NOR2X1 U1080 ( .A(n835), .B(n834), .Y(n946) );
  OAI222XL U1081 ( .A0(n837), .A1(n836), .B0(n913), .B1(n915), .C0(n908), .C1(
        n926), .Y(n558) );
  AOI31XL U1082 ( .A0(n921), .A1(n840), .A2(n839), .B0(n562), .Y(n844) );
  NOR2X1 U1083 ( .A(n844), .B(n988), .Y(n990) );
  OAI22XL U1084 ( .A0(n879), .A1(n1023), .B0(n881), .B1(n1019), .Y(n850) );
  OAI22XL U1085 ( .A0(n917), .A1(n1025), .B0(n845), .B1(n1029), .Y(n849) );
  OAI2BB2XL U1086 ( .B0(n983), .B1(n847), .A0N(n983), .A1N(n846), .Y(n848) );
  OAI22XL U1087 ( .A0(n990), .A1(n919), .B0(n851), .B1(n988), .Y(n541) );
  OAI22XL U1088 ( .A0(n853), .A1(n1019), .B0(n852), .B1(n1023), .Y(n859) );
  OAI22XL U1089 ( .A0(n928), .A1(n1025), .B0(n854), .B1(n1029), .Y(n858) );
  AO22X1 U1090 ( .A0(n984), .A1(n856), .B0(n983), .B1(n855), .Y(n857) );
  OAI22XL U1091 ( .A0(n990), .A1(n930), .B0(n860), .B1(n988), .Y(n542) );
  AOI2BB2X1 U1092 ( .B0(n862), .B1(sum_reg[9]), .A0N(n862), .A1N(sum_reg[9]), 
        .Y(n863) );
  OAI2BB2XL U1093 ( .B0(n908), .B1(n915), .A0N(n908), .A1N(n915), .Y(n869) );
  OAI22XL U1094 ( .A0(counter[1]), .A1(n916), .B0(n911), .B1(n865), .Y(n868)
         );
  OAI22XL U1095 ( .A0(counter[0]), .A1(n914), .B0(n1071), .B1(change_point[0]), 
        .Y(n867) );
  AOI211X1 U1096 ( .A0(n871), .A1(n1047), .B0(n870), .C0(n1058), .Y(n874) );
  OAI31X1 U1097 ( .A0(RST), .A1(n1048), .A2(n980), .B0(n876), .Y(n1054) );
  AOI2BB2X1 U1098 ( .B0(state[1]), .B1(n1054), .A0N(n991), .A1N(n979), .Y(n893) );
  OAI31XL U1099 ( .A0(n993), .A1(n895), .A2(n1054), .B0(state[2]), .Y(n896) );
  NOR2BX1 U1100 ( .AN(n898), .B(n897), .Y(n902) );
  OAI21XL U1101 ( .A0(n902), .A1(counter[0]), .B0(n901), .Y(n904) );
  OAI21XL U1102 ( .A0(counter[1]), .A1(n904), .B0(n903), .Y(n905) );
  BUFX12 U1103 ( .A(n909), .Y(W[2]) );
  BUFX12 U1104 ( .A(n912), .Y(W[1]) );
  NOR2X1 U1105 ( .A(n914), .B(n913), .Y(n943) );
  NAND2X1 U1106 ( .A(n916), .B(n915), .Y(n941) );
  NOR2X1 U1107 ( .A(n938), .B(n916), .Y(n936) );
  OAI222XL U1108 ( .A0(n941), .A1(n919), .B0(n918), .B1(n940), .C0(n917), .C1(
        n939), .Y(n920) );
  AOI222XL U1109 ( .A0(n938), .A1(\sequence[1][1] ), .B0(\sequence[5][1] ), 
        .B1(n936), .C0(n937), .C1(\sequence[3][1] ), .Y(n923) );
  NAND2BX1 U1110 ( .AN(n922), .B(n921), .Y(n950) );
  AOI2BB2X1 U1111 ( .B0(value[1]), .B1(n947), .A0N(n923), .A1N(n950), .Y(n924)
         );
  AOI222XL U1112 ( .A0(n938), .A1(\sequence[1][2] ), .B0(\sequence[3][2] ), 
        .B1(n937), .C0(\sequence[5][2] ), .C1(n936), .Y(n935) );
  OAI222XL U1113 ( .A0(n941), .A1(n930), .B0(n940), .B1(n929), .C0(n928), .C1(
        n939), .Y(n931) );
  AOI22XL U1114 ( .A0(value[2]), .A1(n947), .B0(n946), .B1(n932), .Y(n933) );
  AOI222XL U1115 ( .A0(n938), .A1(\sequence[1][0] ), .B0(\sequence[3][0] ), 
        .B1(n937), .C0(\sequence[5][0] ), .C1(n936), .Y(n951) );
  OAI222XL U1116 ( .A0(n941), .A1(n1020), .B0(n940), .B1(n1026), .C0(n1022), 
        .C1(n939), .Y(n942) );
  CLKINVX1 U1117 ( .A(n1075), .Y(n955) );
  NOR2X1 U1118 ( .A(n956), .B(n955), .Y(n1043) );
  AOI211XL U1119 ( .A0(n956), .A1(n955), .B0(n1043), .C0(n991), .Y(n957) );
  OAI21XL U1120 ( .A0(n1084), .A1(n1004), .B0(MinCost[0]), .Y(n960) );
  AOI222XL U1121 ( .A0(n974), .A1(n973), .B0(n1002), .B1(MinCost[8]), .C0(
        n1013), .C1(MinCost[9]), .Y(n975) );
  NAND2BX1 U1122 ( .AN(n991), .B(n992), .Y(n977) );
  NOR4BBX1 U1123 ( .AN(n1053), .BN(state[1]), .C(n980), .D(n979), .Y(n981) );
  BUFX12 U1124 ( .A(n981), .Y(Valid) );
  OAI22XL U1125 ( .A0(n1041), .A1(n1019), .B0(n1028), .B1(n1023), .Y(n987) );
  OAI22XL U1126 ( .A0(n1022), .A1(n1025), .B0(n1024), .B1(n1029), .Y(n986) );
  OAI21XL U1127 ( .A0(n1043), .A1(n1062), .B0(n996), .Y(n1045) );
  NAND2BX1 U1128 ( .AN(n994), .B(n993), .Y(n995) );
  INVX12 U1129 ( .A(n995), .Y(J[2]) );
  OAI22XL U1130 ( .A0(n1022), .A1(n1021), .B0(n1020), .B1(n1019), .Y(n1038) );
  OAI22XL U1131 ( .A0(n1026), .A1(n1025), .B0(n1024), .B1(n1023), .Y(n1032) );
  OAI22XL U1132 ( .A0(n1030), .A1(n1029), .B0(n1028), .B1(n1027), .Y(n1031) );
  OAI21XL U1133 ( .A0(n1036), .A1(n1035), .B0(n1034), .Y(n1037) );
  CLKINVX1 U1134 ( .A(n1073), .Y(n1066) );
  OAI2BB2XL U1135 ( .B0(n1051), .B1(n1050), .A0N(n1049), .A1N(n1058), .Y(n1052) );
  AOI2BB2X1 U1136 ( .B0(n1054), .B1(n1053), .A0N(n1054), .A1N(n1052), .Y(n533)
         );
  OAI2BB2XL U1137 ( .B0(n1060), .B1(n1059), .A0N(n1058), .A1N(n1057), .Y(n523)
         );
  OAI21XL U1138 ( .A0(n1073), .A1(n1062), .B0(n1061), .Y(n1063) );
  OAI31XL U1139 ( .A0(n1066), .A1(MatchCount[3]), .A2(n1065), .B0(n1064), .Y(
        n510) );
endmodule

