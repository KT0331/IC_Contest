/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Tue Apr 12 17:06:52 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, \se1[0][2] ,
         \se1[0][1] , \se1[0][0] , \se1[1][2] , \se1[1][1] , \se1[1][0] ,
         \se1[2][2] , \se1[2][1] , \se1[2][0] , \se1[3][2] , \se1[3][1] ,
         \se1[3][0] , \se1[4][2] , \se1[4][1] , \se1[4][0] , \se1[5][2] ,
         \se1[5][1] , \se1[5][0] , \se1[6][2] , \se1[6][1] , \se1[6][0] ,
         \se1[7][2] , \se1[7][1] , \se1[7][0] , \counter1[3] , N189, N190,
         N191, N198, N199, N200, N201, N399, N400, N401, N402, N403, N404,
         N603, N604, N605, N606, N607, N608, N609, N610, N611, N612, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n920,
         n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931,
         n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942,
         n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953,
         n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964,
         n965, n966, n967, n968, n969, n970, n971, n972, n973, n974, n975,
         n976, n977, n978, n979, n980, n981, n982, n983, n984, n985, n986,
         n987, n988, n989, n990, n991, n992, n993, n994, n995, n996, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1151, n1152;
  wire   [2:0] change_point;
  wire   [2:0] counter0;
  wire   [9:0] sum_reg;
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

  DFFQX1 \counter1_reg[3]  ( .D(N201), .CK(CLK), .Q(\counter1[3] ) );
  DFFQX1 \se0_reg[7][0]  ( .D(n609), .CK(CLK), .Q(L6[0]) );
  DFFQX1 \se0_reg[1][0]  ( .D(n585), .CK(CLK), .Q(L0[0]) );
  DFFQX1 \se0_reg[0][2]  ( .D(n580), .CK(CLK), .Q(R0[2]) );
  DFFQX1 \se0_reg[1][2]  ( .D(n583), .CK(CLK), .Q(L0[2]) );
  DFFQX1 \se0_reg[2][2]  ( .D(n586), .CK(CLK), .Q(L1[2]) );
  DFFQX1 \se0_reg[3][2]  ( .D(n589), .CK(CLK), .Q(L2[2]) );
  DFFQX1 \se0_reg[2][1]  ( .D(n587), .CK(CLK), .Q(L1[1]) );
  DFFQX1 \se0_reg[3][1]  ( .D(n590), .CK(CLK), .Q(L2[1]) );
  DFFQX1 \se0_reg[2][0]  ( .D(n588), .CK(CLK), .Q(L1[0]) );
  DFFQX1 \state_reg[1]  ( .D(n606), .CK(CLK), .Q(state[1]) );
  DFFQX1 \state_reg[2]  ( .D(n607), .CK(CLK), .Q(state[2]) );
  DFFQX1 \se0_reg[7][1]  ( .D(n602), .CK(CLK), .Q(L6[1]) );
  DFFQX1 \se0_reg[7][2]  ( .D(n601), .CK(CLK), .Q(L6[2]) );
  DFFQX1 \se0_reg[5][2]  ( .D(n595), .CK(CLK), .Q(R5[2]) );
  DFFQX1 \se0_reg[6][0]  ( .D(n600), .CK(CLK), .Q(R6[0]) );
  DFFQX1 \se0_reg[6][1]  ( .D(n599), .CK(CLK), .Q(R6[1]) );
  DFFQX1 \se0_reg[6][2]  ( .D(n598), .CK(CLK), .Q(R6[2]) );
  DFFQX1 \se0_reg[5][0]  ( .D(n597), .CK(CLK), .Q(R5[0]) );
  DFFQX1 \se0_reg[5][1]  ( .D(n596), .CK(CLK), .Q(R5[1]) );
  DFFQX1 \se0_reg[4][2]  ( .D(n592), .CK(CLK), .Q(R4[2]) );
  DFFQX1 \se0_reg[3][0]  ( .D(n591), .CK(CLK), .Q(L2[0]) );
  DFFQX1 \se1_reg[0][2]  ( .D(n579), .CK(CLK), .Q(\se1[0][2] ) );
  DFFQX1 \se1_reg[0][1]  ( .D(n578), .CK(CLK), .Q(\se1[0][1] ) );
  DFFQX1 \se1_reg[0][0]  ( .D(n577), .CK(CLK), .Q(\se1[0][0] ) );
  DFFQX1 \se1_reg[1][2]  ( .D(n576), .CK(CLK), .Q(\se1[1][2] ) );
  DFFQX1 \se1_reg[1][1]  ( .D(n575), .CK(CLK), .Q(\se1[1][1] ) );
  DFFQX1 \se1_reg[1][0]  ( .D(n574), .CK(CLK), .Q(\se1[1][0] ) );
  DFFQX1 \se1_reg[2][2]  ( .D(n573), .CK(CLK), .Q(\se1[2][2] ) );
  DFFQX1 \se1_reg[2][1]  ( .D(n572), .CK(CLK), .Q(\se1[2][1] ) );
  DFFQX1 \se1_reg[2][0]  ( .D(n571), .CK(CLK), .Q(\se1[2][0] ) );
  DFFQX1 \se1_reg[3][2]  ( .D(n570), .CK(CLK), .Q(\se1[3][2] ) );
  DFFQX1 \se1_reg[3][1]  ( .D(n569), .CK(CLK), .Q(\se1[3][1] ) );
  DFFQX1 \se1_reg[3][0]  ( .D(n568), .CK(CLK), .Q(\se1[3][0] ) );
  DFFQX1 \se1_reg[4][2]  ( .D(n567), .CK(CLK), .Q(\se1[4][2] ) );
  DFFQX1 \se1_reg[4][1]  ( .D(n566), .CK(CLK), .Q(\se1[4][1] ) );
  DFFQX1 \se1_reg[4][0]  ( .D(n565), .CK(CLK), .Q(\se1[4][0] ) );
  DFFQX1 \se1_reg[5][2]  ( .D(n564), .CK(CLK), .Q(\se1[5][2] ) );
  DFFQX1 \se1_reg[5][1]  ( .D(n563), .CK(CLK), .Q(\se1[5][1] ) );
  DFFQX1 \se1_reg[5][0]  ( .D(n562), .CK(CLK), .Q(\se1[5][0] ) );
  DFFQX1 \se1_reg[6][2]  ( .D(n561), .CK(CLK), .Q(\se1[6][2] ) );
  DFFQX1 \se1_reg[6][1]  ( .D(n560), .CK(CLK), .Q(\se1[6][1] ) );
  DFFQX1 \se1_reg[6][0]  ( .D(n559), .CK(CLK), .Q(\se1[6][0] ) );
  DFFQX1 \se1_reg[7][2]  ( .D(n558), .CK(CLK), .Q(\se1[7][2] ) );
  DFFQX1 \se1_reg[7][1]  ( .D(n557), .CK(CLK), .Q(\se1[7][1] ) );
  DFFQX1 \se1_reg[7][0]  ( .D(n556), .CK(CLK), .Q(\se1[7][0] ) );
  DFFQX1 \sum_reg_reg[2]  ( .D(N605), .CK(CLK), .Q(sum_reg[2]) );
  DFFQX1 \sum_reg_reg[1]  ( .D(N604), .CK(CLK), .Q(sum_reg[1]) );
  DFFQX1 \sum_reg_reg[0]  ( .D(N603), .CK(CLK), .Q(sum_reg[0]) );
  DFFQX1 \value_reg[2]  ( .D(N404), .CK(CLK), .Q(value[2]) );
  DFFQX1 \value_reg[1]  ( .D(N403), .CK(CLK), .Q(value[1]) );
  DFFQX1 \value_reg[0]  ( .D(N402), .CK(CLK), .Q(value[0]) );
  DFFQX1 \sum_reg_reg[9]  ( .D(N612), .CK(CLK), .Q(sum_reg[9]) );
  DFFQX1 \sum_reg_reg[8]  ( .D(N611), .CK(CLK), .Q(sum_reg[8]) );
  DFFQX1 \sum_reg_reg[7]  ( .D(N610), .CK(CLK), .Q(sum_reg[7]) );
  DFFQX1 \sum_reg_reg[6]  ( .D(N609), .CK(CLK), .Q(sum_reg[6]) );
  DFFQX1 \sum_reg_reg[3]  ( .D(N606), .CK(CLK), .Q(sum_reg[3]) );
  DFFQX1 \sum_reg_reg[4]  ( .D(N607), .CK(CLK), .Q(sum_reg[4]) );
  DFFQX1 \search_point_reg[1]  ( .D(N400), .CK(CLK), .Q(search_point[1]) );
  DFFQX1 \sum_reg_reg[5]  ( .D(N608), .CK(CLK), .Q(sum_reg[5]) );
  DFFQX1 \search_point_reg[0]  ( .D(N399), .CK(CLK), .Q(search_point[0]) );
  DFFQX1 \se0_reg[0][1]  ( .D(n581), .CK(CLK), .Q(R0[1]) );
  DFFQX1 \se0_reg[4][1]  ( .D(n593), .CK(CLK), .Q(R4[1]) );
  DFFQX1 \se0_reg[0][0]  ( .D(n582), .CK(CLK), .Q(R0[0]) );
  DFFQX1 \se0_reg[1][1]  ( .D(n584), .CK(CLK), .Q(L0[1]) );
  DFFQX1 \change_point_reg[2]  ( .D(n608), .CK(CLK), .Q(change_point[2]) );
  DFFQX1 \change_point_reg[1]  ( .D(n603), .CK(CLK), .Q(change_point[1]) );
  DFFQX1 \counter1_reg[1]  ( .D(N199), .CK(CLK), .Q(n1154) );
  DFFQX1 \counter1_reg[0]  ( .D(N198), .CK(CLK), .Q(n1155) );
  DFFQX1 \counter0_reg[1]  ( .D(N190), .CK(CLK), .Q(counter0[1]) );
  DFFQX1 \counter0_reg[0]  ( .D(N189), .CK(CLK), .Q(counter0[0]) );
  DFFX1 \state_reg[0]  ( .D(n605), .CK(CLK), .Q(state[0]), .QN(n1151) );
  DFFX2 \se0_reg[4][0]  ( .D(n594), .CK(CLK), .Q(R4[0]), .QN(n1152) );
  DFFQX1 \MinCost_reg[8]  ( .D(n543), .CK(CLK), .Q(n1161) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n554), .CK(CLK), .Q(n1158) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n555), .CK(CLK), .Q(n1159) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n553), .CK(CLK), .Q(n1157) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n552), .CK(CLK), .Q(n1156) );
  DFFQX1 \counter1_reg[2]  ( .D(N200), .CK(CLK), .Q(n1153) );
  DFFQX1 \MinCost_reg[9]  ( .D(n542), .CK(CLK), .Q(n1160) );
  DFFQX1 \MinCost_reg[1]  ( .D(n550), .CK(CLK), .Q(n1168) );
  DFFQX1 \MinCost_reg[2]  ( .D(n549), .CK(CLK), .Q(n1167) );
  DFFQX1 \MinCost_reg[3]  ( .D(n548), .CK(CLK), .Q(n1166) );
  DFFQX1 \MinCost_reg[4]  ( .D(n547), .CK(CLK), .Q(n1165) );
  DFFQX1 \MinCost_reg[5]  ( .D(n546), .CK(CLK), .Q(n1164) );
  DFFQX1 \MinCost_reg[6]  ( .D(n545), .CK(CLK), .Q(n1163) );
  DFFQX2 \search_point_reg[2]  ( .D(N401), .CK(CLK), .Q(search_point[2]) );
  DFFQX2 \change_point_reg[0]  ( .D(n604), .CK(CLK), .Q(change_point[0]) );
  DFFQX1 \MinCost_reg[7]  ( .D(n544), .CK(CLK), .Q(n1162) );
  DFFQX2 \counter0_reg[2]  ( .D(N191), .CK(CLK), .Q(counter0[2]) );
  DFFQX1 \MinCost_reg[0]  ( .D(n551), .CK(CLK), .Q(n1169) );
  OR2X1 U640 ( .A(n1088), .B(n1140), .Y(n1079) );
  OAI21XL U641 ( .A0(n1089), .A1(n1144), .B0(n1130), .Y(n1091) );
  CLKBUFX3 U642 ( .A(n646), .Y(n1116) );
  NAND2X1 U643 ( .A(n934), .B(n947), .Y(n942) );
  OAI21X1 U644 ( .A0(n647), .A1(n698), .B0(n744), .Y(n780) );
  OAI21XL U645 ( .A0(state[2]), .A1(n771), .B0(n1109), .Y(n744) );
  INVX8 U646 ( .A(n611), .Y(n1109) );
  OAI22XL U647 ( .A0(sum_reg[7]), .A1(n1086), .B0(n1051), .B1(n1070), .Y(n1052) );
  INVX6 U648 ( .A(RST), .Y(n610) );
  NAND2X1 U649 ( .A(counter0[1]), .B(n999), .Y(n913) );
  NOR2XL U650 ( .A(n935), .B(n942), .Y(n940) );
  AOI221X1 U651 ( .A0(n1115), .A1(n902), .B0(n913), .B1(n902), .C0(n901), .Y(
        n923) );
  NOR2XL U652 ( .A(n670), .B(n808), .Y(n714) );
  CLKINVX1 U653 ( .A(R0[0]), .Y(n1111) );
  INVX1 U654 ( .A(n1090), .Y(n1144) );
  NAND2X1 U655 ( .A(n1109), .B(n932), .Y(n958) );
  NOR2X1 U656 ( .A(n679), .B(n647), .Y(n671) );
  NOR2X1 U657 ( .A(n611), .B(n1142), .Y(n701) );
  INVX1 U658 ( .A(n663), .Y(n928) );
  INVX1 U659 ( .A(n908), .Y(n911) );
  CLKBUFX3 U660 ( .A(n628), .Y(n748) );
  INVX2 U661 ( .A(n814), .Y(n818) );
  OR2X1 U662 ( .A(n1021), .B(n1017), .Y(n865) );
  INVX1 U663 ( .A(n840), .Y(n680) );
  NOR4X1 U664 ( .A(n771), .B(n611), .C(state[2]), .D(state[0]), .Y(n628) );
  INVX1 U665 ( .A(n1168), .Y(n1063) );
  INVX2 U666 ( .A(R5[0]), .Y(n959) );
  INVX2 U667 ( .A(counter0[2]), .Y(n998) );
  INVX2 U668 ( .A(L2[0]), .Y(n960) );
  INVX1 U669 ( .A(search_point[0]), .Y(n642) );
  INVX2 U670 ( .A(change_point[0]), .Y(n991) );
  INVX1 U671 ( .A(state[2]), .Y(n736) );
  INVX2 U672 ( .A(L1[0]), .Y(n1105) );
  INVX2 U673 ( .A(R4[1]), .Y(n1135) );
  INVX1 U674 ( .A(L6[1]), .Y(n757) );
  INVX2 U675 ( .A(R5[2]), .Y(n971) );
  INVX2 U676 ( .A(L2[2]), .Y(n973) );
  INVX2 U677 ( .A(R6[2]), .Y(n970) );
  INVX2 U678 ( .A(L1[1]), .Y(n1115) );
  INVX2 U679 ( .A(L2[1]), .Y(n950) );
  INVX2 U680 ( .A(R4[2]), .Y(n972) );
  INVX2 U681 ( .A(R6[1]), .Y(n938) );
  INVX2 U682 ( .A(R0[1]), .Y(n1125) );
  INVX2 U683 ( .A(L0[2]), .Y(n968) );
  INVX2 U684 ( .A(R5[1]), .Y(n1139) );
  INVX2 U685 ( .A(L1[2]), .Y(n1133) );
  INVX2 U686 ( .A(L0[0]), .Y(n1131) );
  INVX2 U687 ( .A(L0[1]), .Y(n1117) );
  INVX1 U688 ( .A(n1157), .Y(n1148) );
  INVX2 U689 ( .A(n1154), .Y(n1096) );
  INVX2 U690 ( .A(R0[2]), .Y(n967) );
  NOR2X1 U691 ( .A(n711), .B(n647), .Y(n670) );
  CLKINVX1 U692 ( .A(n942), .Y(n946) );
  CLKINVX1 U693 ( .A(counter0[1]), .Y(n990) );
  CLKINVX1 U694 ( .A(n774), .Y(n982) );
  AOI211X1 U695 ( .A0(n927), .A1(n979), .B0(n926), .C0(n925), .Y(n1001) );
  AOI222XL U696 ( .A0(n924), .A1(value[2]), .B0(n924), .B1(n979), .C0(value[2]), .C1(n979), .Y(n925) );
  NAND2XL U697 ( .A(n714), .B(n1127), .Y(n1128) );
  CLKBUFX3 U698 ( .A(n648), .Y(n1124) );
  INVXL U699 ( .A(n811), .Y(n648) );
  CLKBUFX3 U700 ( .A(n630), .Y(n829) );
  INVXL U701 ( .A(n670), .Y(n630) );
  INVXL U702 ( .A(n671), .Y(n646) );
  INVXL U703 ( .A(n775), .Y(n682) );
  NOR2XL U704 ( .A(n917), .B(n965), .Y(n918) );
  NAND2XL U705 ( .A(n1096), .B(n1020), .Y(n1021) );
  NAND2XL U706 ( .A(n714), .B(n1124), .Y(n843) );
  INVXL U707 ( .A(n696), .Y(n699) );
  NAND2X1 U708 ( .A(n985), .B(n1003), .Y(n698) );
  AOI22XL U709 ( .A0(\se1[2][0] ), .A1(n1037), .B0(\se1[3][0] ), .B1(n1036), 
        .Y(n1040) );
  AOI22XL U710 ( .A0(n1037), .A1(\se1[2][1] ), .B0(n1036), .B1(\se1[3][1] ), 
        .Y(n1028) );
  AOI22XL U711 ( .A0(n1037), .A1(\se1[2][2] ), .B0(n1036), .B1(\se1[3][2] ), 
        .Y(n1023) );
  OAI211XL U712 ( .A0(n982), .A1(n998), .B0(n981), .C0(n980), .Y(n983) );
  NOR2X2 U713 ( .A(n1090), .B(n1098), .Y(n1087) );
  INVXL U714 ( .A(n741), .Y(n872) );
  AOI211XL U715 ( .A0(R5[1]), .A1(n809), .B0(n611), .C0(n782), .Y(n783) );
  CLKINVX1 U716 ( .A(change_point[1]), .Y(n1003) );
  AOI211XL U717 ( .A0(R4[1]), .A1(n911), .B0(n998), .C0(n900), .Y(n901) );
  NAND2XL U718 ( .A(n984), .B(n958), .Y(n966) );
  NAND2XL U719 ( .A(n981), .B(n980), .Y(n941) );
  AOI211XL U720 ( .A0(R5[2]), .A1(n809), .B0(n611), .C0(n787), .Y(n788) );
  INVXL U721 ( .A(n850), .Y(n823) );
  BUFX2 U722 ( .A(n643), .Y(n761) );
  NOR2XL U723 ( .A(n642), .B(n641), .Y(n643) );
  NOR3X1 U724 ( .A(n1096), .B(n1020), .C(n1019), .Y(n1097) );
  OAI211XL U725 ( .A0(n1111), .A1(n1124), .B0(n1110), .C0(n1109), .Y(n1112) );
  NOR2XL U726 ( .A(counter0[0]), .B(n884), .Y(N189) );
  AOI21XL U727 ( .A0(n913), .A1(n909), .B0(n884), .Y(N190) );
  INVXL U728 ( .A(n1094), .Y(N198) );
  OAI21XL U729 ( .A0(n804), .A1(n1111), .B0(n654), .Y(n582) );
  OAI21XL U730 ( .A0(n800), .A1(n845), .B0(n651), .Y(n652) );
  NOR4XL U731 ( .A(n611), .B(n798), .C(n797), .D(n796), .Y(n799) );
  OAI22XL U732 ( .A0(sum_reg[3]), .A1(n1056), .B0(n1047), .B1(n1046), .Y(n1050) );
  INVXL U733 ( .A(n805), .Y(n681) );
  INVXL U734 ( .A(n1104), .Y(n931) );
  NAND2XL U735 ( .A(sum_reg[2]), .B(n1065), .Y(n1074) );
  NAND2XL U736 ( .A(n1056), .B(sum_reg[3]), .Y(n1075) );
  AOI22XL U737 ( .A0(sum_reg[5]), .A1(n1061), .B0(sum_reg[4]), .B1(n1067), .Y(
        n1073) );
  INVXL U738 ( .A(sum_reg[8]), .Y(n1068) );
  OAI21XL U739 ( .A0(n923), .A1(n922), .B0(n921), .Y(n924) );
  OAI2BB1XL U740 ( .A0N(n923), .A1N(n922), .B0(value[1]), .Y(n921) );
  NAND2XL U741 ( .A(value[0]), .B(n965), .Y(n922) );
  NOR2XL U742 ( .A(n769), .B(n768), .Y(n929) );
  NOR2XL U743 ( .A(n998), .B(n767), .Y(n930) );
  CLKINVX1 U744 ( .A(counter0[0]), .Y(n999) );
  AOI211XL U745 ( .A0(n911), .A1(R0[2]), .B0(counter0[2]), .C0(n903), .Y(n904)
         );
  INVXL U746 ( .A(n1001), .Y(n980) );
  NAND2XL U747 ( .A(L6[2]), .B(n749), .Y(n661) );
  AOI211XL U748 ( .A0(L0[2]), .A1(n703), .B0(n660), .C0(n659), .Y(n662) );
  NAND2XL U749 ( .A(n749), .B(L6[0]), .Y(n633) );
  AOI211XL U750 ( .A0(n703), .A1(L0[0]), .B0(n632), .C0(n631), .Y(n634) );
  NAND2XL U751 ( .A(search_point[1]), .B(search_point[2]), .Y(n641) );
  NAND4XL U752 ( .A(\se1[4][2] ), .B(\se1[5][2] ), .C(n1137), .D(n1136), .Y(
        n890) );
  NAND4XL U753 ( .A(n1142), .B(\se1[7][0] ), .C(\se1[7][1] ), .D(\se1[7][2] ), 
        .Y(n891) );
  NOR2XL U754 ( .A(n999), .B(n990), .Y(n774) );
  INVXL U755 ( .A(n932), .Y(n875) );
  NOR2XL U756 ( .A(n1096), .B(n1020), .Y(n1018) );
  NOR2XL U757 ( .A(n1092), .B(n1091), .Y(n1143) );
  NAND2XL U758 ( .A(n1109), .B(n1020), .Y(n1094) );
  INVXL U759 ( .A(n934), .Y(n735) );
  NAND4XL U760 ( .A(n1109), .B(n771), .C(n736), .D(n1151), .Y(n741) );
  AND2X1 U761 ( .A(n739), .B(n936), .Y(n874) );
  NAND2XL U762 ( .A(n732), .B(n731), .Y(n935) );
  NOR2XL U763 ( .A(n735), .B(n875), .Y(n742) );
  INVXL U764 ( .A(n1119), .Y(n1121) );
  BUFX2 U765 ( .A(n866), .Y(n1015) );
  NAND2XL U766 ( .A(n1109), .B(n865), .Y(n866) );
  INVXL U767 ( .A(\se1[4][0] ), .Y(n1137) );
  INVXL U768 ( .A(\se1[4][1] ), .Y(n1136) );
  INVXL U769 ( .A(\se1[2][2] ), .Y(n1134) );
  INVXL U770 ( .A(\se1[1][0] ), .Y(n1129) );
  BUFX2 U771 ( .A(n856), .Y(n1140) );
  INVXL U772 ( .A(n845), .Y(n1108) );
  AND3X1 U773 ( .A(n679), .B(n688), .C(n748), .Y(n693) );
  OAI211XL U774 ( .A0(n699), .A1(n998), .B0(n698), .C0(n697), .Y(n1101) );
  INVXL U775 ( .A(n822), .Y(n852) );
  BUFX2 U776 ( .A(n636), .Y(n791) );
  NAND2XL U777 ( .A(search_point[0]), .B(n635), .Y(n636) );
  INVXL U778 ( .A(n791), .Y(n708) );
  INVXL U779 ( .A(n761), .Y(n759) );
  OAI211XL U780 ( .A0(n688), .A1(n956), .B0(n645), .C0(n644), .Y(n760) );
  NAND2XL U781 ( .A(L6[0]), .B(n761), .Y(n644) );
  NOR3XL U782 ( .A(n640), .B(n639), .C(n638), .Y(n645) );
  INVXL U783 ( .A(n744), .Y(n745) );
  INVXL U784 ( .A(L6[0]), .Y(n764) );
  AOI22XL U785 ( .A0(\se1[4][0] ), .A1(n1033), .B0(\se1[5][0] ), .B1(n1032), 
        .Y(n1042) );
  AOI22XL U786 ( .A0(\se1[6][0] ), .A1(n1035), .B0(\se1[1][0] ), .B1(n1034), 
        .Y(n1041) );
  AND4X1 U787 ( .A(n1030), .B(n1029), .C(n1028), .D(n1027), .Y(n1031) );
  AOI22XL U788 ( .A0(n1035), .A1(\se1[6][1] ), .B0(n1034), .B1(\se1[1][1] ), 
        .Y(n1029) );
  AND4X1 U789 ( .A(n1025), .B(n1024), .C(n1023), .D(n1022), .Y(n1026) );
  AOI22XL U790 ( .A0(n1033), .A1(\se1[4][2] ), .B0(n1032), .B1(\se1[5][2] ), 
        .Y(n1025) );
  AOI22XL U791 ( .A0(n1035), .A1(\se1[6][2] ), .B0(n1034), .B1(\se1[1][2] ), 
        .Y(n1024) );
  NAND2XL U792 ( .A(sum_reg[7]), .B(n1084), .Y(n1085) );
  AOI21XL U793 ( .A0(search_point[2]), .A1(n987), .B0(n986), .Y(n989) );
  OAI211XL U794 ( .A0(n1087), .A1(n1059), .B0(n1109), .C0(n1058), .Y(n545) );
  NAND2XL U795 ( .A(sum_reg[6]), .B(n1084), .Y(n1058) );
  NAND2XL U796 ( .A(sum_reg[5]), .B(n1084), .Y(n1060) );
  OAI211XL U797 ( .A0(n1087), .A1(n1067), .B0(n1109), .C0(n1066), .Y(n547) );
  NAND2XL U798 ( .A(sum_reg[4]), .B(n1084), .Y(n1066) );
  OAI211XL U799 ( .A0(n1087), .A1(n1056), .B0(n1109), .C0(n1055), .Y(n548) );
  NAND2XL U800 ( .A(sum_reg[3]), .B(n1084), .Y(n1055) );
  NAND2XL U801 ( .A(sum_reg[2]), .B(n1084), .Y(n1064) );
  OAI211XL U802 ( .A0(n1087), .A1(n1063), .B0(n1109), .C0(n1062), .Y(n550) );
  NAND2XL U803 ( .A(sum_reg[1]), .B(n1084), .Y(n1062) );
  OAI211XL U804 ( .A0(n1087), .A1(n1083), .B0(n1109), .C0(n1082), .Y(n542) );
  NAND2XL U805 ( .A(sum_reg[9]), .B(n1084), .Y(n1082) );
  NAND2XL U806 ( .A(sum_reg[8]), .B(n1084), .Y(n1080) );
  OAI211XL U807 ( .A0(n1087), .A1(n612), .B0(n1057), .C0(n1109), .Y(n551) );
  NAND2XL U808 ( .A(sum_reg[0]), .B(n1084), .Y(n1057) );
  OAI211XL U809 ( .A0(n936), .A1(n935), .B0(n742), .C0(n872), .Y(n743) );
  AOI211XL U810 ( .A0(n1120), .A1(n791), .B0(n785), .C0(n784), .Y(n786) );
  OAI211XL U811 ( .A0(n1125), .A1(n1124), .B0(n1123), .C0(n1109), .Y(n1126) );
  INVXL U812 ( .A(n1113), .Y(n1122) );
  NAND4XL U813 ( .A(n997), .B(n996), .C(n1010), .D(n995), .Y(N399) );
  AOI31XL U814 ( .A0(search_point[0]), .A1(n1102), .A2(n994), .B0(n993), .Y(
        n997) );
  OAI211XL U815 ( .A0(counter0[0]), .A1(n1001), .B0(n992), .C0(n1000), .Y(n994) );
  NAND4XL U816 ( .A(n1011), .B(n1010), .C(n1009), .D(n1008), .Y(N400) );
  AOI31XL U817 ( .A0(n1102), .A1(search_point[1]), .A2(n1007), .B0(n1006), .Y(
        n1011) );
  OAI211XL U818 ( .A0(counter0[1]), .A1(n1001), .B0(n1005), .C0(n1000), .Y(
        n1007) );
  OAI211XL U819 ( .A0(n965), .A1(n1004), .B0(n964), .C0(n963), .Y(N402) );
  OAI211XL U820 ( .A0(n955), .A1(n1004), .B0(n954), .C0(n953), .Y(N403) );
  INVXL U821 ( .A(n923), .Y(n955) );
  AOI211XL U822 ( .A0(value[1]), .A1(n976), .B0(n952), .C0(n951), .Y(n953) );
  OAI211XL U823 ( .A0(n979), .A1(n1004), .B0(n978), .C0(n977), .Y(N404) );
  AOI211XL U824 ( .A0(value[2]), .A1(n976), .B0(n975), .C0(n974), .Y(n977) );
  INVXL U825 ( .A(n857), .Y(n570) );
  INVXL U826 ( .A(n858), .Y(n571) );
  INVXL U827 ( .A(n863), .Y(n576) );
  INVXL U828 ( .A(n861), .Y(n577) );
  INVXL U829 ( .A(n860), .Y(n578) );
  INVXL U830 ( .A(n859), .Y(n579) );
  AOI211XL U831 ( .A0(n1107), .A1(n818), .B0(n807), .C0(n806), .Y(n810) );
  INVXL U832 ( .A(n1127), .Y(n716) );
  AOI211XL U833 ( .A0(n850), .A1(n1119), .B0(n713), .C0(n712), .Y(n715) );
  AOI211XL U834 ( .A0(n1120), .A1(n849), .B0(n842), .C0(n841), .Y(n844) );
  NAND2XL U835 ( .A(n1098), .B(n717), .Y(n718) );
  NOR4XL U836 ( .A(n611), .B(n779), .C(n778), .D(n777), .Y(n781) );
  AOI211XL U837 ( .A0(n1120), .A1(n818), .B0(n817), .C0(n816), .Y(n820) );
  NOR3XL U838 ( .A(n835), .B(n834), .C(n833), .Y(n837) );
  NOR4XL U839 ( .A(n611), .B(n826), .C(n825), .D(n824), .Y(n827) );
  AOI211XL U840 ( .A0(n850), .A1(n791), .B0(n790), .C0(n789), .Y(n793) );
  NOR4XL U841 ( .A(n611), .B(n666), .C(n665), .D(n664), .Y(n667) );
  INVXL U842 ( .A(n709), .Y(n710) );
  AOI211XL U843 ( .A0(R5[0]), .A1(n809), .B0(n706), .C0(n705), .Y(n707) );
  AOI211XL U844 ( .A0(n1098), .A1(n1096), .B0(N198), .C0(n1095), .Y(n1100) );
  INVX12 U845 ( .A(n612), .Y(MinCost[0]) );
  CLKINVX1 U846 ( .A(n1169), .Y(n612) );
  INVX20 U847 ( .A(n610), .Y(n611) );
  NOR2BX1 U848 ( .AN(MatchCount[0]), .B(n1088), .Y(n1089) );
  NAND4XL U849 ( .A(n1077), .B(n1076), .C(n1075), .D(n1074), .Y(n1088) );
  NOR3X2 U850 ( .A(n637), .B(search_point[0]), .C(search_point[2]), .Y(n832)
         );
  AOI22XL U851 ( .A0(n1097), .A1(\se1[7][0] ), .B0(\se1[0][0] ), .B1(n1038), 
        .Y(n1039) );
  AOI22XL U852 ( .A0(n1097), .A1(\se1[7][1] ), .B0(\se1[0][1] ), .B1(n1038), 
        .Y(n1027) );
  AOI22XL U853 ( .A0(n1097), .A1(\se1[7][2] ), .B0(\se1[0][2] ), .B1(n1038), 
        .Y(n1022) );
  OAI21X1 U854 ( .A0(W[2]), .A1(n1021), .B0(n1099), .Y(n1038) );
  NOR2BX2 U855 ( .AN(n1054), .B(n1132), .Y(n1084) );
  NOR2X1 U856 ( .A(n1054), .B(n1132), .Y(n1090) );
  AOI222X4 U857 ( .A0(sum_reg[9]), .A1(n1053), .B0(sum_reg[9]), .B1(n1083), 
        .C0(n1053), .C1(n1083), .Y(n1054) );
  INVXL U858 ( .A(n849), .Y(n851) );
  NAND3X2 U859 ( .A(search_point[0]), .B(search_point[2]), .C(n637), .Y(n849)
         );
  OAI211XL U860 ( .A0(n967), .A1(n829), .B0(n812), .C0(n1109), .Y(n813) );
  AOI211XL U861 ( .A0(n1107), .A1(n800), .B0(n650), .C0(n649), .Y(n651) );
  INVXL U862 ( .A(n800), .Y(n801) );
  NAND2X2 U863 ( .A(n635), .B(n642), .Y(n800) );
  AOI31XL U864 ( .A0(R0[0]), .A1(n984), .A2(n958), .B0(n957), .Y(n964) );
  AOI211XL U865 ( .A0(R0[0]), .A1(n809), .B0(n611), .C0(n669), .Y(n672) );
  AOI211XL U866 ( .A0(n911), .A1(R0[0]), .B0(counter0[2]), .C0(n910), .Y(n912)
         );
  OAI211XL U867 ( .A0(n682), .A1(n1105), .B0(n634), .C0(n633), .Y(n917) );
  INVX12 U868 ( .A(n1086), .Y(MinCost[7]) );
  CLKINVX1 U869 ( .A(n1162), .Y(n1086) );
  NAND2XL U870 ( .A(change_point[0]), .B(n699), .Y(n683) );
  OAI21X1 U871 ( .A0(n749), .A1(n761), .B0(n748), .Y(n763) );
  OAI211XL U872 ( .A0(n991), .A1(n877), .B0(n1109), .C0(n876), .Y(n604) );
  OAI21X1 U873 ( .A0(n739), .A1(n738), .B0(n1109), .Y(n877) );
  NAND2X2 U874 ( .A(n775), .B(n746), .Y(n795) );
  NAND2XL U875 ( .A(n749), .B(n746), .Y(n629) );
  CLKINVX1 U876 ( .A(n746), .Y(n647) );
  NOR3X2 U877 ( .A(n771), .B(n931), .C(n611), .Y(n746) );
  NAND3X2 U878 ( .A(search_point[2]), .B(n642), .C(n637), .Y(n1119) );
  INVX12 U879 ( .A(n1059), .Y(MinCost[6]) );
  INVX12 U880 ( .A(n1061), .Y(MinCost[5]) );
  OAI211XL U881 ( .A0(n1087), .A1(n1061), .B0(n1109), .C0(n1060), .Y(n546) );
  INVX12 U882 ( .A(n1067), .Y(MinCost[4]) );
  INVX12 U883 ( .A(n1056), .Y(MinCost[3]) );
  INVX12 U884 ( .A(n1065), .Y(MinCost[2]) );
  OAI211XL U885 ( .A0(n1087), .A1(n1065), .B0(n1109), .C0(n1064), .Y(n549) );
  INVX12 U886 ( .A(n1063), .Y(MinCost[1]) );
  NOR2XL U887 ( .A(MinCost[1]), .B(n1069), .Y(n1072) );
  INVX12 U888 ( .A(n1083), .Y(MinCost[9]) );
  CLKINVX1 U889 ( .A(n1160), .Y(n1083) );
  BUFX16 U890 ( .A(n1153), .Y(W[2]) );
  NOR2XL U891 ( .A(W[2]), .B(n1130), .Y(n1095) );
  NOR3X4 U892 ( .A(W[2]), .B(n1093), .C(n1099), .Y(n1142) );
  NAND2X1 U893 ( .A(n1099), .B(W[2]), .Y(n1019) );
  BUFX16 U894 ( .A(n1156), .Y(MatchCount[3]) );
  NAND2XL U895 ( .A(MatchCount[3]), .B(n1145), .Y(n1146) );
  INVX12 U896 ( .A(n1148), .Y(MatchCount[2]) );
  OAI22XL U897 ( .A0(n1157), .A1(n1147), .B0(n1148), .B1(n1143), .Y(n553) );
  BUFX12 U898 ( .A(n1159), .Y(MatchCount[0]) );
  OAI21XL U899 ( .A0(n1159), .A1(n1079), .B0(n1078), .Y(n555) );
  AOI211XL U900 ( .A0(n1159), .A1(n1079), .B0(n611), .C0(n1084), .Y(n1078) );
  BUFX16 U901 ( .A(n1158), .Y(MatchCount[1]) );
  AO22X1 U902 ( .A0(MatchCount[1]), .A1(n1091), .B0(n1092), .B1(n1089), .Y(
        n554) );
  NOR2XL U903 ( .A(MatchCount[1]), .B(n1144), .Y(n1092) );
  NAND3XL U904 ( .A(n1090), .B(MatchCount[1]), .C(n1089), .Y(n1147) );
  BUFX16 U905 ( .A(n1161), .Y(MinCost[8]) );
  INVXL U906 ( .A(MinCost[8]), .Y(n1081) );
  INVXL U907 ( .A(n1075), .Y(n1047) );
  AOI211XL U908 ( .A0(sum_reg[5]), .A1(n1061), .B0(sum_reg[4]), .C0(n1067), 
        .Y(n1049) );
  AOI211XL U909 ( .A0(n1073), .A1(n1050), .B0(n1049), .C0(n1048), .Y(n1051) );
  INVXL U910 ( .A(sum_reg[1]), .Y(n1069) );
  AND2X1 U911 ( .A(sum_reg[9]), .B(n1083), .Y(n1071) );
  OAI22XL U912 ( .A0(n909), .A1(n1117), .B0(n982), .B1(n950), .Y(n899) );
  AND2X1 U913 ( .A(n767), .B(n998), .Y(n769) );
  NAND2BX1 U914 ( .AN(W[2]), .B(n1099), .Y(n1017) );
  NOR2XL U915 ( .A(n948), .B(n949), .Y(n934) );
  NOR2XL U916 ( .A(change_point[0]), .B(change_point[1]), .Y(n766) );
  NOR2XL U917 ( .A(n944), .B(n945), .Y(n731) );
  NAND2XL U918 ( .A(change_point[2]), .B(change_point[1]), .Y(n696) );
  NOR2XL U919 ( .A(search_point[1]), .B(search_point[2]), .Y(n635) );
  NAND4XL U920 ( .A(\se1[5][0] ), .B(\se1[6][1] ), .C(\se1[6][2] ), .D(n1141), 
        .Y(n889) );
  INVXL U921 ( .A(n939), .Y(n936) );
  INVXL U922 ( .A(n1120), .Y(n831) );
  INVXL U923 ( .A(n929), .Y(n773) );
  NAND2XL U924 ( .A(n704), .B(n795), .Y(n808) );
  NAND4XL U925 ( .A(\se1[2][1] ), .B(\se1[3][0] ), .C(\se1[3][1] ), .D(n1134), 
        .Y(n893) );
  AOI22XL U926 ( .A0(n1033), .A1(\se1[4][1] ), .B0(n1032), .B1(\se1[5][1] ), 
        .Y(n1030) );
  AOI211XL U927 ( .A0(value[0]), .A1(n976), .B0(n962), .C0(n961), .Y(n963) );
  INVXL U928 ( .A(\se1[5][1] ), .Y(n1141) );
  NAND2X4 U929 ( .A(n1142), .B(n1109), .Y(n1132) );
  AND4X1 U930 ( .A(n1042), .B(n1041), .C(n1040), .D(n1039), .Y(n1043) );
  OAI211XL U931 ( .A0(n1087), .A1(n1086), .B0(n1109), .C0(n1085), .Y(n544) );
  OAI211XL U932 ( .A0(n1087), .A1(n1081), .B0(n1109), .C0(n1080), .Y(n543) );
  NAND4XL U933 ( .A(n989), .B(n996), .C(n1009), .D(n988), .Y(N401) );
  INVXL U934 ( .A(n864), .Y(n559) );
  INVXL U935 ( .A(n862), .Y(n575) );
  CLKINVX1 U936 ( .A(change_point[2]), .Y(n985) );
  NOR2X1 U937 ( .A(n698), .B(change_point[0]), .Y(n663) );
  CLKINVX1 U938 ( .A(state[1]), .Y(n771) );
  NAND3X1 U939 ( .A(n928), .B(n800), .C(n748), .Y(n803) );
  NOR2X1 U940 ( .A(n1151), .B(state[2]), .Y(n1104) );
  NOR2BX1 U941 ( .AN(n803), .B(n780), .Y(n804) );
  CLKINVX1 U942 ( .A(R6[0]), .Y(n956) );
  CLKINVX1 U943 ( .A(n683), .Y(n749) );
  CLKBUFX3 U944 ( .A(n629), .Y(n1114) );
  NAND2X1 U945 ( .A(change_point[2]), .B(n766), .Y(n711) );
  OAI22XL U946 ( .A0(n956), .A1(n1114), .B0(n960), .B1(n829), .Y(n653) );
  NOR3X1 U947 ( .A(n1003), .B(change_point[0]), .C(change_point[2]), .Y(n775)
         );
  NOR2X1 U948 ( .A(n991), .B(n698), .Y(n703) );
  NOR3X1 U949 ( .A(n985), .B(n991), .C(change_point[1]), .Y(n840) );
  NAND2X1 U950 ( .A(n699), .B(n991), .Y(n679) );
  OAI22XL U951 ( .A0(n680), .A1(n959), .B0(n679), .B1(n956), .Y(n632) );
  NOR3X1 U952 ( .A(n991), .B(n1003), .C(change_point[2]), .Y(n805) );
  OAI22XL U953 ( .A0(n681), .A1(n960), .B0(n711), .B1(n1152), .Y(n631) );
  AO21X1 U954 ( .A0(n663), .A1(R0[0]), .B0(n917), .Y(n758) );
  NAND2X1 U955 ( .A(n748), .B(n758), .Y(n845) );
  NOR2X1 U956 ( .A(search_point[0]), .B(n641), .Y(n690) );
  CLKINVX1 U957 ( .A(n690), .Y(n688) );
  OAI22XL U958 ( .A0(n1131), .A1(n791), .B0(n1111), .B1(n800), .Y(n640) );
  CLKINVX1 U959 ( .A(search_point[1]), .Y(n637) );
  NOR3X1 U960 ( .A(n637), .B(n642), .C(search_point[2]), .Y(n814) );
  CLKINVX1 U961 ( .A(n832), .Y(n830) );
  OAI22XL U962 ( .A0(n960), .A1(n818), .B0(n1105), .B1(n830), .Y(n639) );
  OAI22XL U963 ( .A0(n959), .A1(n849), .B0(n1152), .B1(n1119), .Y(n638) );
  NAND2X1 U964 ( .A(n748), .B(n760), .Y(n776) );
  CLKINVX1 U965 ( .A(n776), .Y(n1107) );
  NAND2X1 U966 ( .A(n805), .B(n746), .Y(n828) );
  OAI22XL U967 ( .A0(n959), .A1(n1116), .B0(n1105), .B1(n828), .Y(n650) );
  NOR2X1 U968 ( .A(n680), .B(n647), .Y(n811) );
  OAI22XL U969 ( .A0(n1131), .A1(n795), .B0(n1152), .B1(n1124), .Y(n649) );
  OAI31XL U970 ( .A0(n611), .A1(n653), .A2(n652), .B0(n803), .Y(n654) );
  OAI22XL U971 ( .A0(n968), .A1(n791), .B0(n967), .B1(n800), .Y(n658) );
  OAI22XL U972 ( .A0(n1133), .A1(n830), .B0(n973), .B1(n818), .Y(n657) );
  OAI22XL U973 ( .A0(n972), .A1(n1119), .B0(n971), .B1(n849), .Y(n656) );
  CLKINVX1 U974 ( .A(L6[2]), .Y(n753) );
  OAI22XL U975 ( .A0(n970), .A1(n688), .B0(n753), .B1(n759), .Y(n655) );
  NOR4X1 U976 ( .A(n658), .B(n657), .C(n656), .D(n655), .Y(n750) );
  CLKINVX1 U977 ( .A(n748), .Y(n839) );
  NOR2X1 U978 ( .A(n750), .B(n839), .Y(n850) );
  OAI22XL U979 ( .A0(n972), .A1(n711), .B0(n973), .B1(n681), .Y(n660) );
  OAI22XL U980 ( .A0(n970), .A1(n679), .B0(n971), .B1(n680), .Y(n659) );
  OAI211X1 U981 ( .A0(n1133), .A1(n682), .B0(n662), .C0(n661), .Y(n927) );
  AO21X1 U982 ( .A0(n663), .A1(R0[2]), .B0(n927), .Y(n751) );
  NAND2X1 U983 ( .A(n748), .B(n751), .Y(n822) );
  OAI22XL U984 ( .A0(n970), .A1(n1114), .B0(n973), .B1(n829), .Y(n666) );
  OAI22XL U985 ( .A0(n971), .A1(n1116), .B0(n1133), .B1(n828), .Y(n665) );
  OAI22XL U986 ( .A0(n972), .A1(n1124), .B0(n968), .B1(n795), .Y(n664) );
  OAI221XL U987 ( .A0(n801), .A1(n823), .B0(n800), .B1(n822), .C0(n667), .Y(
        n668) );
  OAI2BB2XL U988 ( .B0(n804), .B1(n967), .A0N(n803), .A1N(n668), .Y(n580) );
  CLKINVX1 U989 ( .A(n1114), .Y(n809) );
  OAI22XL U990 ( .A0(n690), .A1(n776), .B0(n688), .B1(n845), .Y(n669) );
  NOR2BX1 U991 ( .AN(n828), .B(n780), .Y(n704) );
  NOR3X1 U992 ( .A(n671), .B(n693), .C(n843), .Y(n691) );
  OAI22XL U993 ( .A0(n693), .A1(n672), .B0(n691), .B1(n956), .Y(n600) );
  OAI22XL U994 ( .A0(n967), .A1(n1114), .B0(n688), .B1(n822), .Y(n673) );
  AOI2BB1X1 U995 ( .A0N(n823), .A1N(n690), .B0(n673), .Y(n674) );
  OAI22XL U996 ( .A0(n693), .A1(n674), .B0(n691), .B1(n970), .Y(n598) );
  OAI22XL U997 ( .A0(n1117), .A1(n791), .B0(n1125), .B1(n800), .Y(n678) );
  OAI22XL U998 ( .A0(n950), .A1(n818), .B0(n1115), .B1(n830), .Y(n677) );
  OAI22XL U999 ( .A0(n1139), .A1(n849), .B0(n1135), .B1(n1119), .Y(n676) );
  OAI22XL U1000 ( .A0(n938), .A1(n688), .B0(n757), .B1(n759), .Y(n675) );
  NOR4X1 U1001 ( .A(n678), .B(n677), .C(n676), .D(n675), .Y(n754) );
  NOR2X1 U1002 ( .A(n754), .B(n839), .Y(n1120) );
  NOR2BX1 U1003 ( .AN(n703), .B(n1117), .Y(n687) );
  OAI22XL U1004 ( .A0(n680), .A1(n1139), .B0(n679), .B1(n938), .Y(n686) );
  OAI22XL U1005 ( .A0(n681), .A1(n950), .B0(n711), .B1(n1135), .Y(n685) );
  OAI22XL U1006 ( .A0(n683), .A1(n757), .B0(n682), .B1(n1115), .Y(n684) );
  NOR4X1 U1007 ( .A(n687), .B(n686), .C(n685), .D(n684), .Y(n919) );
  OAI21XL U1008 ( .A0(n928), .A1(n1125), .B0(n919), .Y(n755) );
  NAND2X1 U1009 ( .A(n748), .B(n755), .Y(n1113) );
  OAI22XL U1010 ( .A0(n1125), .A1(n1114), .B0(n688), .B1(n1113), .Y(n689) );
  AOI2BB1X1 U1011 ( .A0N(n831), .A1N(n690), .B0(n689), .Y(n692) );
  OAI22XL U1012 ( .A0(n693), .A1(n692), .B0(n691), .B1(n938), .Y(n599) );
  NAND2X1 U1013 ( .A(n999), .B(n990), .Y(n908) );
  OAI21XL U1014 ( .A0(n991), .A1(n908), .B0(change_point[1]), .Y(n694) );
  OAI211XL U1015 ( .A0(change_point[0]), .A1(n990), .B0(n694), .C0(n982), .Y(
        n695) );
  OAI21XL U1016 ( .A0(counter0[2]), .A1(n696), .B0(n695), .Y(n697) );
  OA21XL U1017 ( .A0(state[1]), .A1(n1101), .B0(n1104), .Y(n700) );
  AOI211XL U1018 ( .A0(state[2]), .A1(n1151), .B0(n611), .C0(n700), .Y(n605)
         );
  NAND2X1 U1019 ( .A(n1155), .B(n1096), .Y(n1093) );
  CLKINVX1 U1020 ( .A(\counter1[3] ), .Y(n1099) );
  CLKBUFX3 U1021 ( .A(n701), .Y(n1098) );
  CLKINVX1 U1022 ( .A(n1098), .Y(n1130) );
  CLKINVX1 U1023 ( .A(n1155), .Y(n1020) );
  OAI21XL U1024 ( .A0(n1154), .A1(n1130), .B0(n1094), .Y(n702) );
  AO22X1 U1025 ( .A0(n1095), .A1(n1018), .B0(W[2]), .B1(n702), .Y(N200) );
  NOR3X1 U1026 ( .A(n839), .B(n703), .C(n708), .Y(n794) );
  NOR2BX1 U1027 ( .AN(n704), .B(n794), .Y(n792) );
  OAI22XL U1028 ( .A0(n960), .A1(n1124), .B0(n1105), .B1(n829), .Y(n706) );
  OAI22XL U1029 ( .A0(n1152), .A1(n1116), .B0(n1111), .B1(n795), .Y(n705) );
  OAI221XL U1030 ( .A0(n708), .A1(n776), .B0(n791), .B1(n845), .C0(n707), .Y(
        n709) );
  OAI22XL U1031 ( .A0(n1131), .A1(n792), .B0(n794), .B1(n710), .Y(n585) );
  NAND3X1 U1032 ( .A(n748), .B(n711), .C(n1119), .Y(n1127) );
  OAI22XL U1033 ( .A0(n1133), .A1(n1114), .B0(n968), .B1(n1116), .Y(n713) );
  OAI22XL U1034 ( .A0(n967), .A1(n1124), .B0(n1119), .B1(n822), .Y(n712) );
  OAI2BB2XL U1035 ( .B0(n716), .B1(n715), .A0N(n1128), .A1N(R4[2]), .Y(n592)
         );
  NOR2XL U1036 ( .A(state[1]), .B(state[0]), .Y(n737) );
  OAI21XL U1037 ( .A0(n1151), .A1(n771), .B0(n736), .Y(n717) );
  OAI31XL U1038 ( .A0(n611), .A1(n737), .A2(n736), .B0(n718), .Y(n607) );
  INVX12 U1039 ( .A(n1096), .Y(W[1]) );
  OAI2BB2XL U1040 ( .B0(n1132), .B1(n1115), .A0N(n1098), .A1N(\se1[2][1] ), 
        .Y(n572) );
  OAI2BB2XL U1041 ( .B0(n1132), .B1(n959), .A0N(n1098), .A1N(\se1[5][0] ), .Y(
        n562) );
  OAI2BB2XL U1042 ( .B0(n1132), .B1(n938), .A0N(n1098), .A1N(\se1[6][1] ), .Y(
        n560) );
  OAI2BB2XL U1043 ( .B0(n1132), .B1(n757), .A0N(n1098), .A1N(\se1[7][1] ), .Y(
        n557) );
  OAI2BB2XL U1044 ( .B0(n1132), .B1(n753), .A0N(n1098), .A1N(\se1[7][2] ), .Y(
        n558) );
  OAI2BB2XL U1045 ( .B0(n1132), .B1(n971), .A0N(n1098), .A1N(\se1[5][2] ), .Y(
        n564) );
  OAI2BB2XL U1046 ( .B0(n1132), .B1(n764), .A0N(n1098), .A1N(\se1[7][0] ), .Y(
        n556) );
  OAI2BB2XL U1047 ( .B0(n1132), .B1(n960), .A0N(n1098), .A1N(\se1[3][0] ), .Y(
        n568) );
  OAI2BB2XL U1048 ( .B0(n1132), .B1(n970), .A0N(n1098), .A1N(\se1[6][2] ), .Y(
        n561) );
  OAI2BB2XL U1049 ( .B0(n1132), .B1(n950), .A0N(n1098), .A1N(\se1[3][1] ), .Y(
        n569) );
  OAI2BB2XL U1050 ( .B0(n1132), .B1(n972), .A0N(n1098), .A1N(\se1[4][2] ), .Y(
        n567) );
  OAI21XL U1051 ( .A0(R4[1]), .A1(n1139), .B0(R4[0]), .Y(n719) );
  AOI2BB2X1 U1052 ( .B0(n1139), .B1(R4[1]), .A0N(R5[0]), .A1N(n719), .Y(n720)
         );
  AOI222X1 U1053 ( .A0(R5[2]), .A1(n720), .B0(R5[2]), .B1(n972), .C0(n720), 
        .C1(n972), .Y(n944) );
  AOI2BB2X1 U1054 ( .B0(L2[0]), .B1(n1152), .A0N(n950), .A1N(R4[1]), .Y(n722)
         );
  OAI22XL U1055 ( .A0(L2[2]), .A1(n972), .B0(L2[1]), .B1(n1135), .Y(n721) );
  OAI22X1 U1056 ( .A0(n722), .A1(n721), .B0(R4[2]), .B1(n973), .Y(n945) );
  AOI2BB2X1 U1057 ( .B0(R6[1]), .B1(n1139), .A0N(n970), .A1N(R5[2]), .Y(n724)
         );
  OAI22XL U1058 ( .A0(R6[1]), .A1(n1139), .B0(R6[0]), .B1(n959), .Y(n723) );
  AOI2BB2X1 U1059 ( .B0(n724), .B1(n723), .A0N(n971), .A1N(R6[2]), .Y(n732) );
  NOR2BX1 U1060 ( .AN(n731), .B(n732), .Y(n943) );
  OAI21XL U1061 ( .A0(R0[1]), .A1(n1117), .B0(R0[0]), .Y(n725) );
  OAI22XL U1062 ( .A0(L0[0]), .A1(n725), .B0(L0[1]), .B1(n1125), .Y(n726) );
  AOI222X1 U1063 ( .A0(R0[2]), .A1(n968), .B0(R0[2]), .B1(n726), .C0(n968), 
        .C1(n726), .Y(n932) );
  OAI21XL U1064 ( .A0(L1[1]), .A1(n950), .B0(L1[0]), .Y(n727) );
  AOI2BB2X1 U1065 ( .B0(n950), .B1(L1[1]), .A0N(L2[0]), .A1N(n727), .Y(n728)
         );
  AOI222X1 U1066 ( .A0(L2[2]), .A1(n728), .B0(L2[2]), .B1(n1133), .C0(n728), 
        .C1(n1133), .Y(n948) );
  AOI2BB2X1 U1067 ( .B0(n1105), .B1(L0[0]), .A0N(L1[1]), .A1N(n1117), .Y(n730)
         );
  OAI22XL U1068 ( .A0(L0[2]), .A1(n1133), .B0(L0[1]), .B1(n1115), .Y(n729) );
  OAI22X1 U1069 ( .A0(n730), .A1(n729), .B0(L1[2]), .B1(n968), .Y(n949) );
  NOR2BX1 U1070 ( .AN(n742), .B(n935), .Y(n739) );
  OAI21XL U1071 ( .A0(R6[1]), .A1(n757), .B0(R6[0]), .Y(n733) );
  OAI22XL U1072 ( .A0(L6[1]), .A1(n938), .B0(L6[0]), .B1(n733), .Y(n734) );
  AOI222XL U1073 ( .A0(R6[2]), .A1(n753), .B0(R6[2]), .B1(n734), .C0(n753), 
        .C1(n734), .Y(n939) );
  AOI221XL U1074 ( .A0(n943), .A1(n932), .B0(n735), .B1(n932), .C0(n874), .Y(
        n740) );
  NAND2XL U1075 ( .A(n737), .B(n736), .Y(n738) );
  OAI22XL U1076 ( .A0(n740), .A1(n741), .B0(n1003), .B1(n877), .Y(n603) );
  OAI21XL U1077 ( .A0(n877), .A1(n985), .B0(n743), .Y(n608) );
  NOR2XL U1078 ( .A(n749), .B(n761), .Y(n747) );
  AOI211X1 U1079 ( .A0(n748), .A1(n747), .B0(n746), .C0(n745), .Y(n765) );
  AOI2BB2X1 U1080 ( .B0(n761), .B1(n751), .A0N(n761), .A1N(n750), .Y(n752) );
  OAI22XL U1081 ( .A0(n765), .A1(n753), .B0(n763), .B1(n752), .Y(n601) );
  AOI2BB2X1 U1082 ( .B0(n761), .B1(n755), .A0N(n761), .A1N(n754), .Y(n756) );
  OAI22XL U1083 ( .A0(n765), .A1(n757), .B0(n763), .B1(n756), .Y(n602) );
  OAI22XL U1084 ( .A0(n761), .A1(n760), .B0(n759), .B1(n758), .Y(n762) );
  OAI22XL U1085 ( .A0(n765), .A1(n764), .B0(n763), .B1(n762), .Y(n609) );
  OAI21XL U1086 ( .A0(n766), .A1(n985), .B0(n928), .Y(n767) );
  OAI22XL U1087 ( .A0(change_point[0]), .A1(n1003), .B0(n991), .B1(
        change_point[1]), .Y(n770) );
  OAI22XL U1088 ( .A0(change_point[0]), .A1(counter0[0]), .B0(counter0[1]), 
        .B1(n770), .Y(n768) );
  OAI2BB2XL U1089 ( .B0(n991), .B1(n999), .A0N(counter0[1]), .A1N(n770), .Y(
        n772) );
  NAND3X1 U1090 ( .A(n1109), .B(n771), .C(n1104), .Y(n984) );
  CLKINVX1 U1091 ( .A(n984), .Y(n1102) );
  OAI31X1 U1092 ( .A0(n930), .A1(n773), .A2(n772), .B0(n1102), .Y(n884) );
  AOI221XL U1093 ( .A0(counter0[2]), .A1(n774), .B0(n998), .B1(n982), .C0(n884), .Y(N191) );
  NOR3X1 U1094 ( .A(n775), .B(n832), .C(n839), .Y(n838) );
  OAI22XL U1095 ( .A0(n1131), .A1(n829), .B0(n1111), .B1(n828), .Y(n779) );
  OAI22XL U1096 ( .A0(n960), .A1(n1116), .B0(n1152), .B1(n1114), .Y(n778) );
  OAI22XL U1097 ( .A0(n832), .A1(n776), .B0(n830), .B1(n845), .Y(n777) );
  NOR4BX1 U1098 ( .AN(n795), .B(n811), .C(n838), .D(n780), .Y(n836) );
  OAI22XL U1099 ( .A0(n838), .A1(n781), .B0(n836), .B1(n1105), .Y(n588) );
  OAI22XL U1100 ( .A0(n1135), .A1(n1116), .B0(n1115), .B1(n829), .Y(n785) );
  OAI22XL U1101 ( .A0(n950), .A1(n1124), .B0(n1125), .B1(n795), .Y(n782) );
  OAI21XL U1102 ( .A0(n791), .A1(n1113), .B0(n783), .Y(n784) );
  OAI22XL U1103 ( .A0(n794), .A1(n786), .B0(n792), .B1(n1117), .Y(n584) );
  OAI22XL U1104 ( .A0(n972), .A1(n1116), .B0(n1133), .B1(n829), .Y(n790) );
  OAI22XL U1105 ( .A0(n973), .A1(n1124), .B0(n967), .B1(n795), .Y(n787) );
  OAI21XL U1106 ( .A0(n791), .A1(n822), .B0(n788), .Y(n789) );
  OAI22XL U1107 ( .A0(n794), .A1(n793), .B0(n792), .B1(n968), .Y(n583) );
  OAI22XL U1108 ( .A0(n938), .A1(n1114), .B0(n950), .B1(n829), .Y(n798) );
  OAI22XL U1109 ( .A0(n1139), .A1(n1116), .B0(n1115), .B1(n828), .Y(n797) );
  OAI22XL U1110 ( .A0(n1117), .A1(n795), .B0(n1135), .B1(n1124), .Y(n796) );
  OAI221XL U1111 ( .A0(n801), .A1(n831), .B0(n800), .B1(n1113), .C0(n799), .Y(
        n802) );
  OAI2BB2XL U1112 ( .B0(n804), .B1(n1125), .A0N(n803), .A1N(n802), .Y(n581) );
  NOR3X1 U1113 ( .A(n805), .B(n814), .C(n839), .Y(n821) );
  OAI22XL U1114 ( .A0(n1131), .A1(n1124), .B0(n1105), .B1(n1116), .Y(n807) );
  OAI22XL U1115 ( .A0(n1111), .A1(n829), .B0(n818), .B1(n845), .Y(n806) );
  NOR3X1 U1116 ( .A(n809), .B(n821), .C(n808), .Y(n819) );
  OAI22XL U1117 ( .A0(n821), .A1(n810), .B0(n819), .B1(n960), .Y(n591) );
  AOI2BB2X1 U1118 ( .B0(L0[2]), .B1(n811), .A0N(n1133), .A1N(n1116), .Y(n812)
         );
  AOI221XL U1119 ( .A0(n852), .A1(n814), .B0(n850), .B1(n818), .C0(n813), .Y(
        n815) );
  OAI22XL U1120 ( .A0(n821), .A1(n815), .B0(n819), .B1(n973), .Y(n589) );
  OAI22XL U1121 ( .A0(n1117), .A1(n1124), .B0(n1115), .B1(n1116), .Y(n817) );
  OAI22XL U1122 ( .A0(n1125), .A1(n829), .B0(n818), .B1(n1113), .Y(n816) );
  OAI22XL U1123 ( .A0(n821), .A1(n820), .B0(n819), .B1(n950), .Y(n590) );
  OAI22XL U1124 ( .A0(n968), .A1(n829), .B0(n967), .B1(n828), .Y(n826) );
  OAI22XL U1125 ( .A0(n972), .A1(n1114), .B0(n973), .B1(n1116), .Y(n825) );
  OAI22XL U1126 ( .A0(n832), .A1(n823), .B0(n830), .B1(n822), .Y(n824) );
  OAI22XL U1127 ( .A0(n838), .A1(n827), .B0(n836), .B1(n1133), .Y(n586) );
  OAI22XL U1128 ( .A0(n1117), .A1(n829), .B0(n1125), .B1(n828), .Y(n835) );
  OAI22XL U1129 ( .A0(n950), .A1(n1116), .B0(n1135), .B1(n1114), .Y(n834) );
  OAI22XL U1130 ( .A0(n832), .A1(n831), .B0(n830), .B1(n1113), .Y(n833) );
  OAI22XL U1131 ( .A0(n838), .A1(n837), .B0(n836), .B1(n1115), .Y(n587) );
  NOR3X1 U1132 ( .A(n840), .B(n851), .C(n839), .Y(n855) );
  OAI21XL U1133 ( .A0(n1125), .A1(n1116), .B0(n1109), .Y(n842) );
  OAI22XL U1134 ( .A0(n1117), .A1(n1114), .B0(n849), .B1(n1113), .Y(n841) );
  NOR2X1 U1135 ( .A(n855), .B(n843), .Y(n853) );
  OAI22XL U1136 ( .A0(n855), .A1(n844), .B0(n853), .B1(n1139), .Y(n596) );
  OAI22XL U1137 ( .A0(n1131), .A1(n1114), .B0(n1111), .B1(n1116), .Y(n846) );
  AOI221XL U1138 ( .A0(n1108), .A1(n851), .B0(n1107), .B1(n849), .C0(n846), 
        .Y(n847) );
  OAI22XL U1139 ( .A0(n855), .A1(n847), .B0(n853), .B1(n959), .Y(n597) );
  OAI22XL U1140 ( .A0(n968), .A1(n1114), .B0(n967), .B1(n1116), .Y(n848) );
  AOI221XL U1141 ( .A0(n852), .A1(n851), .B0(n850), .B1(n849), .C0(n848), .Y(
        n854) );
  OAI22XL U1142 ( .A0(n855), .A1(n854), .B0(n853), .B1(n971), .Y(n595) );
  INVXL U1143 ( .A(n1142), .Y(n856) );
  AOI221XL U1144 ( .A0(n1140), .A1(\se1[3][2] ), .B0(n1142), .B1(L2[2]), .C0(
        n611), .Y(n857) );
  AOI221XL U1145 ( .A0(n1140), .A1(\se1[2][0] ), .B0(n1142), .B1(L1[0]), .C0(
        n611), .Y(n858) );
  AOI221XL U1146 ( .A0(n1140), .A1(\se1[0][2] ), .B0(n1142), .B1(R0[2]), .C0(
        n611), .Y(n859) );
  AOI221XL U1147 ( .A0(n1140), .A1(\se1[0][1] ), .B0(n1142), .B1(R0[1]), .C0(
        n611), .Y(n860) );
  AOI221XL U1148 ( .A0(n1140), .A1(\se1[0][0] ), .B0(n1142), .B1(R0[0]), .C0(
        n611), .Y(n861) );
  AOI221XL U1149 ( .A0(n1140), .A1(\se1[1][1] ), .B0(n1142), .B1(L0[1]), .C0(
        n611), .Y(n862) );
  AOI221XL U1150 ( .A0(n1140), .A1(\se1[1][2] ), .B0(n1142), .B1(L0[2]), .C0(
        n611), .Y(n863) );
  AOI221XL U1151 ( .A0(n1140), .A1(\se1[6][0] ), .B0(n1142), .B1(R6[0]), .C0(
        n611), .Y(n864) );
  NOR2BX1 U1152 ( .AN(n867), .B(n1015), .Y(N603) );
  ADDHXL U1153 ( .A(Cost[0]), .B(sum_reg[0]), .CO(n869), .S(n867) );
  NOR2BX1 U1154 ( .AN(n868), .B(n1015), .Y(N605) );
  ADDFXL U1155 ( .A(sum_reg[1]), .B(Cost[1]), .CI(n869), .CO(n878), .S(n870)
         );
  NOR2BX1 U1156 ( .AN(n870), .B(n1015), .Y(N604) );
  NOR2BX1 U1157 ( .AN(n944), .B(n945), .Y(n871) );
  AOI2BB1X1 U1158 ( .A0N(n948), .A1N(n871), .B0(n949), .Y(n873) );
  OAI31XL U1159 ( .A0(n875), .A1(n874), .A2(n873), .B0(n872), .Y(n876) );
  ADDFXL U1160 ( .A(sum_reg[2]), .B(Cost[2]), .CI(n878), .CO(n880), .S(n868)
         );
  NOR2BX1 U1161 ( .AN(n879), .B(n1015), .Y(N606) );
  ADDFXL U1162 ( .A(sum_reg[3]), .B(Cost[3]), .CI(n880), .CO(n882), .S(n879)
         );
  NOR2BX1 U1163 ( .AN(n881), .B(n1015), .Y(N607) );
  ADDFXL U1164 ( .A(sum_reg[4]), .B(Cost[4]), .CI(n882), .CO(n885), .S(n881)
         );
  NOR2BX1 U1165 ( .AN(n883), .B(n1015), .Y(N608) );
  NAND2X1 U1166 ( .A(counter0[0]), .B(n990), .Y(n909) );
  ADDFXL U1167 ( .A(sum_reg[5]), .B(Cost[5]), .CI(n885), .CO(n887), .S(n883)
         );
  NOR2BX1 U1168 ( .AN(n886), .B(n1015), .Y(N609) );
  ADDFXL U1169 ( .A(sum_reg[6]), .B(Cost[6]), .CI(n887), .CO(n897), .S(n886)
         );
  NOR2BX1 U1170 ( .AN(n888), .B(n1015), .Y(N610) );
  OR4X2 U1171 ( .A(\se1[0][0] ), .B(\se1[0][1] ), .C(\se1[1][2] ), .D(
        \se1[0][2] ), .Y(n895) );
  OR4X2 U1172 ( .A(\se1[1][1] ), .B(\se1[2][0] ), .C(\se1[3][2] ), .D(n1129), 
        .Y(n894) );
  OR4X2 U1173 ( .A(\se1[6][0] ), .B(n891), .C(n890), .D(n889), .Y(n892) );
  OR4X2 U1174 ( .A(n895), .B(n894), .C(n893), .D(n892), .Y(n896) );
  INVX12 U1175 ( .A(n896), .Y(Valid) );
  ADDHXL U1176 ( .A(sum_reg[7]), .B(n897), .CO(n1012), .S(n888) );
  NOR2BX1 U1177 ( .AN(n898), .B(n1015), .Y(N611) );
  AOI211X1 U1178 ( .A0(n911), .A1(R0[1]), .B0(counter0[2]), .C0(n899), .Y(n902) );
  OAI22XL U1179 ( .A0(n913), .A1(n938), .B0(n909), .B1(n1139), .Y(n900) );
  OAI21XL U1180 ( .A0(n970), .A1(n913), .B0(counter0[2]), .Y(n907) );
  OAI22XL U1181 ( .A0(n908), .A1(n972), .B0(n971), .B1(n909), .Y(n906) );
  OAI22XL U1182 ( .A0(n909), .A1(n968), .B0(n973), .B1(n982), .Y(n903) );
  OAI21XL U1183 ( .A0(n913), .A1(n1133), .B0(n904), .Y(n905) );
  OAI21X1 U1184 ( .A0(n907), .A1(n906), .B0(n905), .Y(n979) );
  OAI21XL U1185 ( .A0(n913), .A1(n956), .B0(counter0[2]), .Y(n916) );
  OAI22XL U1186 ( .A0(n908), .A1(n1152), .B0(n909), .B1(n959), .Y(n915) );
  OAI22XL U1187 ( .A0(n909), .A1(n1131), .B0(n982), .B1(n960), .Y(n910) );
  OAI21XL U1188 ( .A0(n913), .A1(n1105), .B0(n912), .Y(n914) );
  OAI21X1 U1189 ( .A0(n916), .A1(n915), .B0(n914), .Y(n965) );
  AOI222XL U1190 ( .A0(n919), .A1(n918), .B0(n919), .B1(n923), .C0(n918), .C1(
        n923), .Y(n920) );
  OA21XL U1191 ( .A0(n979), .A1(n927), .B0(n920), .Y(n926) );
  OAI21X1 U1192 ( .A0(n930), .A1(n929), .B0(n928), .Y(n1000) );
  AND2X2 U1193 ( .A(n1000), .B(n1102), .Y(n981) );
  NAND2X1 U1194 ( .A(n1001), .B(n981), .Y(n1004) );
  NOR2XL U1195 ( .A(state[1]), .B(n931), .Y(n933) );
  NOR2X1 U1196 ( .A(n933), .B(n958), .Y(n947) );
  NAND2X1 U1197 ( .A(n936), .B(n940), .Y(n1009) );
  NAND2X1 U1198 ( .A(n947), .B(n949), .Y(n995) );
  OAI22XL U1199 ( .A0(n1117), .A1(n995), .B0(n1125), .B1(n966), .Y(n937) );
  AOI2BB1X1 U1200 ( .A0N(n938), .A1N(n1009), .B0(n937), .Y(n954) );
  NAND2X1 U1201 ( .A(n940), .B(n939), .Y(n1002) );
  OAI211X1 U1202 ( .A0(n1000), .A1(n984), .B0(n1002), .C0(n941), .Y(n976) );
  NAND2X1 U1203 ( .A(n946), .B(n943), .Y(n996) );
  NAND3BX1 U1204 ( .AN(n945), .B(n944), .C(n946), .Y(n988) );
  OAI22XL U1205 ( .A0(n1139), .A1(n996), .B0(n1135), .B1(n988), .Y(n952) );
  NAND2X1 U1206 ( .A(n946), .B(n945), .Y(n1010) );
  NAND3BX1 U1207 ( .AN(n949), .B(n948), .C(n947), .Y(n1008) );
  OAI22XL U1208 ( .A0(n950), .A1(n1010), .B0(n1115), .B1(n1008), .Y(n951) );
  OAI22XL U1209 ( .A0(n1131), .A1(n995), .B0(n956), .B1(n1009), .Y(n957) );
  OAI22XL U1210 ( .A0(n959), .A1(n996), .B0(n1152), .B1(n988), .Y(n962) );
  OAI22XL U1211 ( .A0(n960), .A1(n1010), .B0(n1105), .B1(n1008), .Y(n961) );
  OAI22XL U1212 ( .A0(n968), .A1(n995), .B0(n967), .B1(n966), .Y(n969) );
  AOI2BB1X1 U1213 ( .A0N(n970), .A1N(n1009), .B0(n969), .Y(n978) );
  OAI22XL U1214 ( .A0(n972), .A1(n988), .B0(n971), .B1(n996), .Y(n975) );
  OAI22XL U1215 ( .A0(n1133), .A1(n1008), .B0(n973), .B1(n1010), .Y(n974) );
  OAI21XL U1216 ( .A0(n1000), .A1(n984), .B0(n983), .Y(n987) );
  OAI22XL U1217 ( .A0(n985), .A1(n1002), .B0(n998), .B1(n1004), .Y(n986) );
  OAI21XL U1218 ( .A0(n998), .A1(n990), .B0(counter0[0]), .Y(n992) );
  OAI22XL U1219 ( .A0(n992), .A1(n1004), .B0(n991), .B1(n1002), .Y(n993) );
  OAI21XL U1220 ( .A0(n999), .A1(n998), .B0(counter0[1]), .Y(n1005) );
  OAI22XL U1221 ( .A0(n1005), .A1(n1004), .B0(n1003), .B1(n1002), .Y(n1006) );
  INVXL U1222 ( .A(sum_reg[9]), .Y(n1014) );
  ADDHXL U1223 ( .A(sum_reg[8]), .B(n1012), .CO(n1013), .S(n898) );
  XNOR2X1 U1224 ( .A(n1014), .B(n1013), .Y(n1016) );
  NOR2BX1 U1225 ( .AN(n1016), .B(n1015), .Y(N612) );
  NOR2X1 U1226 ( .A(n1019), .B(n1021), .Y(n1033) );
  NOR2X1 U1227 ( .A(n1093), .B(n1019), .Y(n1032) );
  NOR3X1 U1228 ( .A(n1155), .B(n1096), .C(n1019), .Y(n1035) );
  NOR2X1 U1229 ( .A(n1093), .B(n1017), .Y(n1034) );
  NOR3X1 U1230 ( .A(n1155), .B(n1096), .C(n1017), .Y(n1037) );
  NOR2BX1 U1231 ( .AN(n1018), .B(n1017), .Y(n1036) );
  INVX12 U1232 ( .A(n1026), .Y(J[2]) );
  INVX12 U1233 ( .A(n1031), .Y(J[1]) );
  INVX12 U1234 ( .A(n1043), .Y(J[0]) );
  CLKINVX1 U1235 ( .A(n1164), .Y(n1061) );
  CLKINVX1 U1236 ( .A(n1165), .Y(n1067) );
  CLKINVX1 U1237 ( .A(n1166), .Y(n1056) );
  CLKINVX1 U1238 ( .A(n1167), .Y(n1065) );
  OAI21XL U1239 ( .A0(n1168), .A1(n1069), .B0(MinCost[0]), .Y(n1044) );
  OAI22XL U1240 ( .A0(sum_reg[1]), .A1(n1063), .B0(sum_reg[0]), .B1(n1044), 
        .Y(n1045) );
  AOI2BB2X1 U1241 ( .B0(n1074), .B1(n1045), .A0N(n1065), .A1N(sum_reg[2]), .Y(
        n1046) );
  CLKINVX1 U1242 ( .A(n1163), .Y(n1059) );
  OAI22XL U1243 ( .A0(sum_reg[5]), .A1(n1061), .B0(sum_reg[6]), .B1(n1059), 
        .Y(n1048) );
  AO22X1 U1244 ( .A0(n1059), .A1(sum_reg[6]), .B0(n1086), .B1(sum_reg[7]), .Y(
        n1070) );
  AOI222XL U1245 ( .A0(MinCost[8]), .A1(n1068), .B0(MinCost[8]), .B1(n1052), 
        .C0(n1068), .C1(n1052), .Y(n1053) );
  AOI2BB2X1 U1246 ( .B0(sum_reg[0]), .B1(n612), .A0N(n1068), .A1N(MinCost[8]), 
        .Y(n1077) );
  NOR4BX1 U1247 ( .AN(n1073), .B(n1072), .C(n1071), .D(n1070), .Y(n1076) );
  BUFX12 U1248 ( .A(n1155), .Y(W[0]) );
  OAI22XL U1249 ( .A0(n1096), .A1(n1094), .B0(n1093), .B1(n1130), .Y(N199) );
  OAI2BB2XL U1250 ( .B0(n1100), .B1(n1099), .A0N(n1098), .A1N(n1097), .Y(N201)
         );
  NAND2XL U1251 ( .A(state[1]), .B(n1109), .Y(n1103) );
  OAI2BB2XL U1252 ( .B0(n1104), .B1(n1103), .A0N(n1102), .A1N(n1101), .Y(n606)
         );
  OAI22XL U1253 ( .A0(n1131), .A1(n1116), .B0(n1105), .B1(n1114), .Y(n1106) );
  AOI221XL U1254 ( .A0(n1108), .A1(n1121), .B0(n1107), .B1(n1119), .C0(n1106), 
        .Y(n1110) );
  AO22X1 U1255 ( .A0(R4[0]), .A1(n1128), .B0(n1127), .B1(n1112), .Y(n594) );
  OAI22XL U1256 ( .A0(n1117), .A1(n1116), .B0(n1115), .B1(n1114), .Y(n1118) );
  AOI221XL U1257 ( .A0(n1122), .A1(n1121), .B0(n1120), .B1(n1119), .C0(n1118), 
        .Y(n1123) );
  AO22X1 U1258 ( .A0(R4[1]), .A1(n1128), .B0(n1127), .B1(n1126), .Y(n593) );
  OAI22XL U1259 ( .A0(n1132), .A1(n1131), .B0(n1130), .B1(n1129), .Y(n574) );
  OAI221XL U1260 ( .A0(n1142), .A1(n1134), .B0(n1140), .B1(n1133), .C0(n1109), 
        .Y(n573) );
  OAI221XL U1261 ( .A0(n1142), .A1(n1136), .B0(n1140), .B1(n1135), .C0(n1109), 
        .Y(n566) );
  OAI221XL U1262 ( .A0(n1142), .A1(n1137), .B0(n1140), .B1(n1152), .C0(n1109), 
        .Y(n565) );
  OAI221XL U1263 ( .A0(n1142), .A1(n1141), .B0(n1140), .B1(n1139), .C0(n1109), 
        .Y(n563) );
  OAI21XL U1264 ( .A0(n1157), .A1(n1144), .B0(n1143), .Y(n1145) );
  OAI31XL U1265 ( .A0(n1148), .A1(MatchCount[3]), .A2(n1147), .B0(n1146), .Y(
        n552) );
endmodule

