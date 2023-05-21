/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Tue Apr 12 17:03:42 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, \se1[0][2] , \se1[0][1] ,
         \se1[0][0] , \se1[1][2] , \se1[1][1] , \se1[1][0] , \se1[2][2] ,
         \se1[2][1] , \se1[2][0] , \se1[3][2] , \se1[3][1] , \se1[3][0] ,
         \se1[4][2] , \se1[4][1] , \se1[4][0] , \se1[5][2] , \se1[5][1] ,
         \se1[5][0] , \se1[6][2] , \se1[6][1] , \se1[6][0] , \se1[7][2] ,
         \se1[7][1] , \se1[7][0] , \counter1[3] , N186, N187, N188, N195, N196,
         N197, N198, N372, N373, N374, N375, N376, N377, N541, N542, N543,
         N544, N545, N546, N547, N548, N549, N550, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n556, n557, n558, n559, n560, n561,
         n562, n569, n571, n573, n575, n577, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1058, n1060, n1065, n1067, n1068,
         n1069, n1070, n1071, n1072;
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

  DFFRX1 \se0_reg[7][0]  ( .D(n554), .CK(CLK), .RN(n1068), .Q(L6[0]), .QN(
        n1053) );
  DFFRX1 \se0_reg[1][0]  ( .D(n533), .CK(CLK), .RN(n1069), .Q(L0[0]) );
  DFFRX1 \se0_reg[2][1]  ( .D(n535), .CK(CLK), .RN(n1070), .Q(L1[1]) );
  DFFRX1 \state_reg[1]  ( .D(n551), .CK(CLK), .RN(n1069), .Q(state[1]) );
  DFFRX1 \state_reg[2]  ( .D(n553), .CK(CLK), .RN(n1068), .Q(state[2]), .QN(
        n1044) );
  DFFRX1 \state_reg[0]  ( .D(n552), .CK(CLK), .RN(n1069), .Q(state[0]), .QN(
        n1031) );
  DFFRX1 \counter0_reg[0]  ( .D(N186), .CK(CLK), .RN(n1068), .Q(counter0[0]), 
        .QN(n1025) );
  DFFRX1 \se0_reg[3][0]  ( .D(n539), .CK(CLK), .RN(n1067), .Q(L2[0]), .QN(
        n1036) );
  DFFRX1 \search_point_reg[0]  ( .D(N375), .CK(CLK), .RN(n1071), .Q(
        search_point[0]), .QN(n556) );
  DFFRX1 \se0_reg[6][2]  ( .D(n546), .CK(CLK), .RN(n1068), .Q(R6[2]) );
  DFFRX1 \se0_reg[7][1]  ( .D(n550), .CK(CLK), .RN(n1070), .Q(L6[1]), .QN(
        n1040) );
  DFFRX1 \se0_reg[7][2]  ( .D(n549), .CK(CLK), .RN(n1069), .Q(L6[2]), .QN(
        n1051) );
  DFFRX1 \se0_reg[6][1]  ( .D(n547), .CK(CLK), .RN(n1070), .Q(R6[1]), .QN(
        n1019) );
  DFFRX1 \se0_reg[4][2]  ( .D(n540), .CK(CLK), .RN(n1070), .Q(R4[2]) );
  DFFRX1 \se0_reg[5][0]  ( .D(n545), .CK(CLK), .RN(n1070), .Q(R5[0]), .QN(
        n1037) );
  DFFRX1 \se0_reg[5][2]  ( .D(n543), .CK(CLK), .RN(n1069), .Q(R5[2]), .QN(
        n1021) );
  DFFRX1 \sum_reg_reg[9]  ( .D(N550), .CK(CLK), .RN(n1067), .Q(sum_reg[9]), 
        .QN(n1052) );
  DFFRX1 \sum_reg_reg[8]  ( .D(N549), .CK(CLK), .RN(n1071), .Q(sum_reg[8]), 
        .QN(n1050) );
  DFFRX1 \sum_reg_reg[7]  ( .D(N548), .CK(CLK), .RN(n1069), .Q(sum_reg[7]), 
        .QN(n1032) );
  DFFRX1 \sum_reg_reg[6]  ( .D(N547), .CK(CLK), .RN(n1067), .Q(sum_reg[6]) );
  DFFRX1 \sum_reg_reg[5]  ( .D(N546), .CK(CLK), .RN(n1068), .Q(sum_reg[5]), 
        .QN(n1033) );
  DFFRX1 \sum_reg_reg[4]  ( .D(N545), .CK(CLK), .RN(n1068), .Q(sum_reg[4]), 
        .QN(n1054) );
  DFFRX1 \sum_reg_reg[3]  ( .D(N544), .CK(CLK), .RN(n1068), .Q(sum_reg[3]), 
        .QN(n1048) );
  DFFRX1 \sum_reg_reg[2]  ( .D(N543), .CK(CLK), .RN(n1068), .Q(sum_reg[2]), 
        .QN(n1047) );
  DFFRX1 \sum_reg_reg[1]  ( .D(N542), .CK(CLK), .RN(n1068), .Q(sum_reg[1]), 
        .QN(n1045) );
  DFFSX1 \se0_reg[0][0]  ( .D(n530), .CK(CLK), .SN(n1070), .Q(R0[0]), .QN(
        n1038) );
  DFFSX1 \se0_reg[0][2]  ( .D(n528), .CK(CLK), .SN(n1069), .Q(R0[2]), .QN(
        n1041) );
  DFFSX1 \se0_reg[1][2]  ( .D(n531), .CK(CLK), .SN(n1069), .Q(L0[2]), .QN(
        n1029) );
  DFFSX1 \se0_reg[2][2]  ( .D(n534), .CK(CLK), .SN(n1071), .Q(L1[2]), .QN(
        n1046) );
  DFFSX1 \se0_reg[3][2]  ( .D(n537), .CK(CLK), .SN(n1069), .Q(L2[2]) );
  DFFSX1 \se0_reg[0][1]  ( .D(n529), .CK(CLK), .SN(n1070), .Q(R0[1]), .QN(
        n1026) );
  DFFSX1 \se0_reg[1][1]  ( .D(n532), .CK(CLK), .SN(n1071), .Q(L0[1]), .QN(
        n1022) );
  DFFSX1 \se0_reg[4][0]  ( .D(n542), .CK(CLK), .SN(n1069), .Q(R4[0]), .QN(
        n1020) );
  DFFSX1 \se0_reg[6][0]  ( .D(n548), .CK(CLK), .SN(n1070), .Q(R6[0]), .QN(
        n1028) );
  DFFSX1 \se0_reg[4][1]  ( .D(n541), .CK(CLK), .SN(n1070), .Q(R4[1]) );
  DFFRX1 \change_point_reg[2]  ( .D(n521), .CK(CLK), .RN(n1068), .Q(
        change_point[2]), .QN(n1027) );
  DFFRX1 \change_point_reg[1]  ( .D(n520), .CK(CLK), .RN(n1068), .Q(
        change_point[1]), .QN(n1018) );
  DFFRX1 \se1_reg[1][0]  ( .D(n519), .CK(CLK), .RN(n1068), .Q(\se1[1][0] ) );
  DFFRX1 \se1_reg[2][1]  ( .D(n518), .CK(CLK), .RN(n1068), .Q(\se1[2][1] ) );
  DFFRX1 \se1_reg[3][1]  ( .D(n517), .CK(CLK), .RN(n1068), .Q(\se1[3][1] ) );
  DFFRX1 \se1_reg[3][0]  ( .D(n516), .CK(CLK), .RN(n1068), .Q(\se1[3][0] ) );
  DFFRX1 \se1_reg[4][2]  ( .D(n515), .CK(CLK), .RN(n1067), .Q(\se1[4][2] ) );
  DFFRX1 \se1_reg[5][2]  ( .D(n514), .CK(CLK), .RN(n1067), .Q(\se1[5][2] ) );
  DFFRX1 \se1_reg[5][0]  ( .D(n513), .CK(CLK), .RN(n1067), .Q(\se1[5][0] ) );
  DFFRX1 \se1_reg[6][2]  ( .D(n512), .CK(CLK), .RN(n1067), .Q(\se1[6][2] ) );
  DFFRX1 \se1_reg[6][1]  ( .D(n511), .CK(CLK), .RN(n1067), .Q(\se1[6][1] ) );
  DFFRX1 \se1_reg[7][2]  ( .D(n510), .CK(CLK), .RN(n1067), .Q(\se1[7][2] ) );
  DFFRX1 \se1_reg[7][1]  ( .D(n509), .CK(CLK), .RN(n1067), .Q(\se1[7][1] ) );
  DFFRX1 \se1_reg[7][0]  ( .D(n508), .CK(CLK), .RN(n1067), .Q(\se1[7][0] ) );
  DFFSX1 \se1_reg[0][2]  ( .D(n502), .CK(CLK), .SN(n1071), .Q(\se1[0][2] ) );
  DFFSX1 \se1_reg[0][1]  ( .D(n501), .CK(CLK), .SN(n1071), .Q(\se1[0][1] ) );
  DFFSX1 \se1_reg[0][0]  ( .D(n500), .CK(CLK), .SN(n1071), .Q(\se1[0][0] ) );
  DFFSX1 \se1_reg[1][2]  ( .D(n499), .CK(CLK), .SN(n1071), .Q(\se1[1][2] ) );
  DFFSX1 \se1_reg[1][1]  ( .D(n498), .CK(CLK), .SN(n1071), .Q(\se1[1][1] ) );
  DFFSX1 \se1_reg[2][2]  ( .D(n497), .CK(CLK), .SN(n1071), .Q(\se1[2][2] ) );
  DFFSX1 \se1_reg[2][0]  ( .D(n496), .CK(CLK), .SN(n1071), .Q(\se1[2][0] ) );
  DFFSX1 \se1_reg[3][2]  ( .D(n495), .CK(CLK), .SN(n480), .Q(\se1[3][2] ) );
  DFFSX1 \se1_reg[4][1]  ( .D(n494), .CK(CLK), .SN(n1071), .Q(\se1[4][1] ) );
  DFFSX1 \se1_reg[4][0]  ( .D(n493), .CK(CLK), .SN(n1071), .Q(\se1[4][0] ) );
  DFFSX1 \se1_reg[5][1]  ( .D(n492), .CK(CLK), .SN(n1071), .Q(\se1[5][1] ) );
  DFFSX1 \se1_reg[6][0]  ( .D(n491), .CK(CLK), .SN(n480), .Q(\se1[6][0] ) );
  DFFSRX1 \value_reg[0]  ( .D(N372), .CK(CLK), .SN(n523), .RN(n522), .Q(
        value[0]) );
  DFFSRX1 \value_reg[1]  ( .D(N373), .CK(CLK), .SN(n525), .RN(n524), .Q(
        value[1]) );
  DFFSRX1 \value_reg[2]  ( .D(N374), .CK(CLK), .SN(n527), .RN(n526), .Q(
        value[2]) );
  DFFRX1 \sum_reg_reg[0]  ( .D(N541), .CK(CLK), .RN(n1068), .Q(sum_reg[0]), 
        .QN(n1055) );
  DFFRX1 \counter1_reg[0]  ( .D(N195), .CK(CLK), .RN(n1069), .Q(n1075), .QN(
        n1060) );
  DFFSX1 \MinCost_reg[6]  ( .D(n487), .CK(CLK), .SN(n1070), .Q(n1082), .QN(
        n1043) );
  DFFSX1 \MinCost_reg[9]  ( .D(n490), .CK(CLK), .SN(n1069), .Q(n1079), .QN(
        n1042) );
  DFFRX1 \counter1_reg[1]  ( .D(N196), .CK(CLK), .RN(n1070), .Q(n1074), .QN(
        n1058) );
  DFFSX1 \MinCost_reg[8]  ( .D(n489), .CK(CLK), .SN(n1071), .Q(n1080), .QN(
        n1023) );
  DFFRX1 \search_point_reg[1]  ( .D(N376), .CK(CLK), .RN(n1071), .Q(
        search_point[1]), .QN(n1039) );
  DFFRX1 \counter1_reg[2]  ( .D(N197), .CK(CLK), .RN(n1068), .Q(n1073), .QN(
        n1056) );
  DFFSX1 \change_point_reg[0]  ( .D(n503), .CK(CLK), .SN(n1071), .Q(
        change_point[0]) );
  DFFRX1 \counter0_reg[1]  ( .D(N187), .CK(CLK), .RN(n1070), .Q(counter0[1]), 
        .QN(n1035) );
  DFFSX1 \MinCost_reg[1]  ( .D(n482), .CK(CLK), .SN(n1070), .Q(n1087), .QN(
        n577) );
  DFFRX1 \MatchCount_reg[0]  ( .D(n507), .CK(CLK), .RN(n1067), .Q(n1078), .QN(
        n575) );
  DFFSX1 \MinCost_reg[2]  ( .D(n483), .CK(CLK), .SN(n1069), .Q(n1086), .QN(
        n573) );
  DFFSX1 \MinCost_reg[7]  ( .D(n488), .CK(CLK), .SN(n1070), .Q(n1081), .QN(
        n571) );
  DFFRX1 \MatchCount_reg[3]  ( .D(n504), .CK(CLK), .RN(n1067), .Q(n1076), .QN(
        n569) );
  DFFRX1 \MatchCount_reg[2]  ( .D(n505), .CK(CLK), .RN(n1067), .Q(n1077), .QN(
        n1065) );
  DFFSX1 \MinCost_reg[3]  ( .D(n484), .CK(CLK), .SN(n1069), .Q(n1085), .QN(
        n1030) );
  DFFSX1 \MinCost_reg[5]  ( .D(n486), .CK(CLK), .SN(n1070), .Q(n1083), .QN(
        n1017) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n506), .CK(CLK), .RN(n1067), .QN(n1049) );
  DFFRX2 \search_point_reg[2]  ( .D(N377), .CK(CLK), .RN(n1070), .Q(
        search_point[2]) );
  DFFRX2 \counter0_reg[2]  ( .D(N188), .CK(CLK), .RN(n1068), .Q(counter0[2]), 
        .QN(n1034) );
  DFFRX2 \counter1_reg[3]  ( .D(N198), .CK(CLK), .RN(n1069), .Q(\counter1[3] )
         );
  DFFSHQX1 \MinCost_reg[4]  ( .D(n485), .CK(CLK), .SN(n1070), .Q(n1084) );
  DFFSX2 \se0_reg[5][1]  ( .D(n544), .CK(CLK), .SN(n1069), .Q(R5[1]), .QN(
        n1072) );
  DFFRX2 \se0_reg[3][1]  ( .D(n538), .CK(CLK), .RN(n1069), .Q(L2[1]), .QN(
        n1024) );
  DFFSX1 \MinCost_reg[0]  ( .D(n481), .CK(CLK), .SN(n1070), .QN(n557) );
  DFFSX1 \se0_reg[2][0]  ( .D(n536), .CK(CLK), .SN(n1069), .Q(L1[0]) );
  NOR2XL U585 ( .A(n706), .B(n941), .Y(n599) );
  OR2X2 U586 ( .A(n889), .B(\counter1[3] ), .Y(n910) );
  NOR4XL U587 ( .A(n1015), .B(n882), .C(n881), .D(n880), .Y(n883) );
  OAI2BB1X1 U588 ( .A0N(value[2]), .A1N(n964), .B0(n963), .Y(N374) );
  OAI2BB1X1 U589 ( .A0N(value[0]), .A1N(n964), .B0(n946), .Y(N372) );
  NOR4X1 U590 ( .A(n860), .B(n859), .C(n858), .D(n857), .Y(n861) );
  NOR2X1 U591 ( .A(n666), .B(n665), .Y(n862) );
  INVX1 U592 ( .A(n930), .Y(n919) );
  INVX2 U593 ( .A(n671), .Y(n1016) );
  NOR2X1 U594 ( .A(n656), .B(n655), .Y(n670) );
  NAND2X1 U595 ( .A(n676), .B(n854), .Y(n918) );
  NOR2X1 U596 ( .A(n634), .B(n635), .Y(n755) );
  AO21X1 U597 ( .A0(counter0[2]), .A1(n674), .B0(n617), .Y(n618) );
  AO21X1 U598 ( .A0(n1009), .A1(n1008), .B0(n1013), .Y(n1011) );
  NOR2X1 U599 ( .A(n1027), .B(n615), .Y(n699) );
  AOI221X1 U600 ( .A0(n614), .A1(n582), .B0(n1024), .B1(n582), .C0(n581), .Y(
        n856) );
  INVX1 U601 ( .A(n1015), .Y(n901) );
  INVX1 U602 ( .A(n596), .Y(n967) );
  INVX1 U603 ( .A(n985), .Y(n687) );
  INVX2 U604 ( .A(n730), .Y(n932) );
  NAND2X1 U605 ( .A(n889), .B(\counter1[3] ), .Y(n641) );
  INVX1 U606 ( .A(n736), .Y(n697) );
  NOR3X1 U607 ( .A(n1073), .B(n1074), .C(n1075), .Y(n889) );
  INVX2 U608 ( .A(L1[0]), .Y(n560) );
  INVX2 U609 ( .A(L1[1]), .Y(n848) );
  INVX2 U610 ( .A(L0[0]), .Y(n940) );
  INVX1 U611 ( .A(n1084), .Y(n562) );
  INVX2 U612 ( .A(R4[1]), .Y(n559) );
  INVX2 U613 ( .A(R6[2]), .Y(n558) );
  INVX2 U614 ( .A(R4[2]), .Y(n955) );
  INVX2 U615 ( .A(L2[2]), .Y(n561) );
  AOI211XL U616 ( .A0(R4[1]), .A1(n731), .B0(n1034), .C0(n580), .Y(n581) );
  NAND2XL U617 ( .A(n730), .B(n733), .Y(n596) );
  INVXL U618 ( .A(n691), .Y(n750) );
  INVXL U619 ( .A(n791), .Y(n694) );
  NOR2XL U620 ( .A(counter0[1]), .B(n673), .Y(n678) );
  INVXL U621 ( .A(n732), .Y(n731) );
  BUFX2 U622 ( .A(change_point[0]), .Y(n730) );
  INVXL U623 ( .A(n600), .Y(n800) );
  NOR4XL U624 ( .A(\se1[4][0] ), .B(\se1[6][0] ), .C(\se1[4][1] ), .D(
        \se1[5][1] ), .Y(n878) );
  NOR4XL U625 ( .A(\se1[2][0] ), .B(\se1[1][1] ), .C(\se1[2][2] ), .D(
        \se1[3][2] ), .Y(n879) );
  OAI22XL U626 ( .A0(n558), .A1(n958), .B0(n957), .B1(n956), .Y(n959) );
  INVXL U627 ( .A(n923), .Y(n855) );
  BUFX2 U628 ( .A(n1029), .Y(n948) );
  INVXL U629 ( .A(n680), .Y(n936) );
  OAI211X1 U630 ( .A0(value[2]), .A1(n613), .B0(n612), .C0(n611), .Y(n930) );
  BUFX2 U631 ( .A(n1038), .Y(n991) );
  BUFX2 U632 ( .A(n1026), .Y(n996) );
  BUFX2 U633 ( .A(n1022), .Y(n847) );
  INVXL U634 ( .A(n989), .Y(n836) );
  OAI22XL U635 ( .A0(sum_reg[3]), .A1(n1030), .B0(n664), .B1(n645), .Y(n648)
         );
  OAI2BB1XL U636 ( .A0N(n648), .A1N(MinCost[4]), .B0(sum_reg[4]), .Y(n646) );
  NAND2XL U637 ( .A(sum_reg[5]), .B(n1017), .Y(n647) );
  AOI211XL U638 ( .A0(n651), .A1(n650), .B0(n649), .C0(n657), .Y(n654) );
  INVXL U639 ( .A(n661), .Y(n649) );
  OAI22XL U640 ( .A0(n996), .A1(n732), .B0(n848), .B1(n679), .Y(n579) );
  NAND2XL U641 ( .A(n730), .B(n736), .Y(n600) );
  NOR2XL U642 ( .A(n1079), .B(n1052), .Y(n656) );
  AOI211XL U643 ( .A0(n1079), .A1(n1052), .B0(n654), .C0(n653), .Y(n655) );
  NAND2XL U644 ( .A(n1010), .B(n1009), .Y(n635) );
  NAND2XL U645 ( .A(n714), .B(n830), .Y(n752) );
  NAND2XL U646 ( .A(n849), .B(n938), .Y(n850) );
  NAND2XL U647 ( .A(L6[2]), .B(n967), .Y(n603) );
  AOI211XL U648 ( .A0(R5[2]), .A1(n750), .B0(n602), .C0(n601), .Y(n604) );
  NAND2XL U649 ( .A(value[0]), .B(n941), .Y(n589) );
  OAI2BB1XL U650 ( .A0N(n856), .A1N(n589), .B0(value[1]), .Y(n588) );
  NOR2XL U651 ( .A(n678), .B(n616), .Y(n617) );
  NOR2XL U652 ( .A(n792), .B(n806), .Y(n714) );
  BUFX2 U653 ( .A(n687), .Y(n799) );
  OAI211XL U654 ( .A0(n774), .A1(n560), .B0(n598), .C0(n597), .Y(n706) );
  NAND2XL U655 ( .A(n967), .B(L6[0]), .Y(n597) );
  AOI211XL U656 ( .A0(L0[0]), .A1(n800), .B0(n595), .C0(n594), .Y(n598) );
  NOR2XL U657 ( .A(n938), .B(n854), .Y(n923) );
  INVXL U658 ( .A(n614), .Y(n920) );
  NAND2XL U659 ( .A(n900), .B(n1078), .Y(n864) );
  INVXL U660 ( .A(n667), .Y(n665) );
  NOR2X1 U661 ( .A(n862), .B(n1015), .Y(n927) );
  NAND2XL U662 ( .A(n667), .B(n666), .Y(n928) );
  AOI211XL U663 ( .A0(sum_reg[9]), .A1(n1042), .B0(n664), .C0(n663), .Y(n900)
         );
  ADDHXL U664 ( .A(sum_reg[0]), .B(Cost[0]), .CO(n868), .S(n867) );
  BUFX2 U665 ( .A(n754), .Y(n1012) );
  INVXL U666 ( .A(n756), .Y(n849) );
  NOR3XL U667 ( .A(n756), .B(n851), .C(n760), .Y(n1009) );
  INVXL U668 ( .A(n994), .Y(n803) );
  INVXL U669 ( .A(n1000), .Y(n826) );
  ADDFXL U670 ( .A(Cost[3]), .B(sum_reg[3]), .CI(n872), .CO(n874), .S(n873) );
  AOI21XL U671 ( .A0(R0[2]), .A1(n791), .B0(n720), .Y(n978) );
  BUFX2 U672 ( .A(n1041), .Y(n1004) );
  NAND3XL U673 ( .A(n987), .B(n1006), .C(n986), .Y(n1007) );
  NAND2XL U674 ( .A(n743), .B(n854), .Y(n929) );
  BUFX2 U675 ( .A(n682), .Y(n746) );
  BUFX2 U676 ( .A(n692), .Y(n814) );
  AND3X1 U677 ( .A(n714), .B(n1003), .C(n713), .Y(n747) );
  INVXL U678 ( .A(n713), .Y(n749) );
  INVXL U679 ( .A(n674), .Y(n672) );
  BUFX2 U680 ( .A(n619), .Y(n938) );
  INVXL U681 ( .A(n676), .Y(n619) );
  AOI211XL U682 ( .A0(counter0[2]), .A1(n738), .B0(n737), .C0(n736), .Y(n740)
         );
  INVXL U683 ( .A(n840), .Y(n689) );
  BUFX2 U684 ( .A(n700), .Y(n830) );
  NAND2XL U685 ( .A(n699), .B(n698), .Y(n700) );
  NAND2XL U686 ( .A(n967), .B(n698), .Y(n690) );
  AOI21XL U687 ( .A0(R0[0]), .A1(n791), .B0(n706), .Y(n968) );
  NAND4XL U688 ( .A(\se1[5][0] ), .B(\se1[4][2] ), .C(\se1[5][2] ), .D(
        \se1[6][2] ), .Y(n881) );
  AOI22XL U689 ( .A0(\se1[2][0] ), .A1(n905), .B0(\se1[4][0] ), .B1(n904), .Y(
        n914) );
  AOI22XL U690 ( .A0(\se1[5][0] ), .A1(n907), .B0(\se1[6][0] ), .B1(n906), .Y(
        n913) );
  AO22X1 U691 ( .A0(n1016), .A1(sum_reg[0]), .B0(n671), .B1(MinCost[0]), .Y(
        n481) );
  AOI211XL U692 ( .A0(n994), .A1(n746), .B0(n712), .C0(n711), .Y(n715) );
  NAND4XL U693 ( .A(n924), .B(n953), .C(n958), .D(n954), .Y(N377) );
  AOI221XL U694 ( .A0(n923), .A1(search_point[2]), .B0(n922), .B1(
        search_point[2]), .C0(n921), .Y(n924) );
  INVXL U695 ( .A(n862), .Y(n863) );
  OAI2BB1XL U696 ( .A0N(n1065), .A1N(n667), .B0(n927), .Y(n668) );
  NAND2XL U697 ( .A(n1078), .B(n903), .Y(n902) );
  NAND2XL U698 ( .A(n901), .B(n900), .Y(n903) );
  OAI2BB1XL U699 ( .A0N(n849), .A1N(n851), .B0(n757), .Y(n758) );
  OAI31XL U700 ( .A0(n639), .A1(n938), .A2(n1039), .B0(n638), .Y(N376) );
  AOI211XL U701 ( .A0(n1035), .A1(n930), .B0(n637), .C0(n929), .Y(n639) );
  AOI211XL U702 ( .A0(n637), .A1(n935), .B0(n934), .C0(n636), .Y(n638) );
  AND2X1 U703 ( .A(n867), .B(n1015), .Y(N541) );
  NOR4XL U704 ( .A(n962), .B(n961), .C(n960), .D(n959), .Y(n963) );
  NOR4XL U705 ( .A(n945), .B(n944), .C(n943), .D(n942), .Y(n946) );
  AOI211XL U706 ( .A0(n989), .A1(n723), .B0(n708), .C0(n707), .Y(n709) );
  AOI211XL U707 ( .A0(R4[1]), .A1(n840), .B0(n805), .C0(n804), .Y(n807) );
  NOR4XL U708 ( .A(n796), .B(n795), .C(n794), .D(n793), .Y(n798) );
  AOI211XL U709 ( .A0(n1000), .A1(n746), .B0(n745), .C0(n744), .Y(n748) );
  AOI211XL U710 ( .A0(R4[2]), .A1(n840), .B0(n828), .C0(n827), .Y(n829) );
  NOR4XL U711 ( .A(n811), .B(n810), .C(n809), .D(n808), .Y(n812) );
  NOR4XL U712 ( .A(n820), .B(n819), .C(n818), .D(n817), .Y(n822) );
  AND2X1 U713 ( .A(n871), .B(n1015), .Y(N543) );
  AND2X1 U714 ( .A(n873), .B(n1015), .Y(N544) );
  AND2X1 U715 ( .A(n875), .B(n1015), .Y(N545) );
  AND2X1 U716 ( .A(n887), .B(n1015), .Y(N547) );
  AND2X1 U717 ( .A(n917), .B(n1015), .Y(N548) );
  AND2X1 U718 ( .A(n926), .B(n1015), .Y(N549) );
  AND2X1 U719 ( .A(n642), .B(n1015), .Y(N550) );
  AOI211XL U720 ( .A0(n1000), .A1(n723), .B0(n722), .C0(n721), .Y(n725) );
  AOI211XL U721 ( .A0(n1025), .A1(n930), .B0(n936), .C0(n929), .Y(n939) );
  AOI211XL U722 ( .A0(n936), .A1(n935), .B0(n934), .C0(n933), .Y(n937) );
  OAI211XL U723 ( .A0(n932), .A1(n931), .B0(n953), .C0(n947), .Y(n933) );
  AOI211XL U724 ( .A0(n989), .A1(n746), .B0(n728), .C0(n727), .Y(n729) );
  AOI211XL U725 ( .A0(R4[0]), .A1(n840), .B0(n839), .C0(n838), .Y(n842) );
  OAI21X1 U726 ( .A0(n678), .A1(n677), .B0(n676), .Y(n742) );
  OAI211XL U727 ( .A0(n931), .A1(n1018), .B0(n958), .C0(n950), .Y(n636) );
  INVX16 U728 ( .A(n562), .Y(MinCost[4]) );
  INVX16 U729 ( .A(n557), .Y(MinCost[0]) );
  INVX16 U730 ( .A(n1060), .Y(W[0]) );
  NOR2XL U731 ( .A(n755), .B(n1013), .Y(n764) );
  INVX4 U732 ( .A(n1012), .Y(n1013) );
  INVXL U733 ( .A(n634), .Y(n1008) );
  OAI21X2 U734 ( .A0(n967), .A1(n981), .B0(n985), .Y(n983) );
  NAND3XL U735 ( .A(n710), .B(n746), .C(n985), .Y(n713) );
  AND3X1 U736 ( .A(n681), .B(n723), .C(n985), .Y(n726) );
  NOR2X2 U737 ( .A(state[0]), .B(n688), .Y(n985) );
  NAND2XL U738 ( .A(n846), .B(n938), .Y(n949) );
  AOI211XL U739 ( .A0(n845), .A1(n758), .B0(n846), .C0(n762), .Y(n759) );
  NOR2XL U740 ( .A(n846), .B(n676), .Y(n844) );
  AOI222X4 U741 ( .A0(L0[2]), .A1(n621), .B0(L0[2]), .B1(n1004), .C0(n621), 
        .C1(n1004), .Y(n846) );
  NOR2XL U742 ( .A(n832), .B(n752), .Y(n987) );
  INVXL U743 ( .A(n832), .Y(n692) );
  NOR2X2 U744 ( .A(n691), .B(n973), .Y(n832) );
  AOI211XL U745 ( .A0(L1[0]), .A1(n637), .B0(counter0[2]), .C0(n583), .Y(n584)
         );
  AOI211XL U746 ( .A0(L1[2]), .A1(n637), .B0(counter0[2]), .C0(n605), .Y(n606)
         );
  NOR3X2 U747 ( .A(n556), .B(search_point[1]), .C(search_point[2]), .Y(n837)
         );
  NOR3X2 U748 ( .A(search_point[0]), .B(search_point[1]), .C(search_point[2]), 
        .Y(n816) );
  NAND3X2 U749 ( .A(search_point[1]), .B(search_point[2]), .C(n556), .Y(n999)
         );
  INVX12 U750 ( .A(n1049), .Y(MatchCount[1]) );
  AOI211XL U751 ( .A0(L0[1]), .A1(n936), .B0(counter0[2]), .C0(n579), .Y(n582)
         );
  INVX12 U752 ( .A(n1017), .Y(MinCost[5]) );
  INVX12 U753 ( .A(n1030), .Y(MinCost[3]) );
  NOR2XL U754 ( .A(n1085), .B(n1048), .Y(n664) );
  INVX12 U755 ( .A(n1065), .Y(MatchCount[2]) );
  OAI22XL U756 ( .A0(n1077), .A1(n928), .B0(n1065), .B1(n927), .Y(n505) );
  INVX12 U757 ( .A(n569), .Y(MatchCount[3]) );
  OAI31XL U758 ( .A0(n1065), .A1(n1076), .A2(n928), .B0(n669), .Y(n504) );
  NAND2XL U759 ( .A(n1076), .B(n668), .Y(n669) );
  INVX16 U760 ( .A(n571), .Y(MinCost[7]) );
  AO22X1 U761 ( .A0(n1016), .A1(sum_reg[7]), .B0(n671), .B1(MinCost[7]), .Y(
        n488) );
  NAND2XL U762 ( .A(MinCost[7]), .B(n1032), .Y(n652) );
  INVX16 U763 ( .A(n573), .Y(MinCost[2]) );
  AO22X1 U764 ( .A0(n1016), .A1(sum_reg[2]), .B0(n671), .B1(MinCost[2]), .Y(
        n483) );
  NOR2XL U765 ( .A(n1047), .B(n1086), .Y(n660) );
  INVX12 U766 ( .A(n575), .Y(MatchCount[0]) );
  OAI211XL U767 ( .A0(n1078), .A1(n903), .B0(n671), .C0(n902), .Y(n507) );
  INVX12 U768 ( .A(n577), .Y(MinCost[1]) );
  OAI2BB2XL U769 ( .B0(n671), .B1(n1045), .A0N(n671), .A1N(MinCost[1]), .Y(
        n482) );
  OAI21XL U770 ( .A0(n1087), .A1(n1045), .B0(MinCost[0]), .Y(n643) );
  NOR2XL U771 ( .A(n1087), .B(n1045), .Y(n659) );
  NOR4XL U772 ( .A(n660), .B(n659), .C(n658), .D(n657), .Y(n662) );
  NAND2XL U773 ( .A(n932), .B(n1018), .Y(n615) );
  NOR2XL U774 ( .A(n847), .B(n600), .Y(n593) );
  OAI211XL U775 ( .A0(MinCost[0]), .A1(n1055), .B0(n662), .C0(n661), .Y(n663)
         );
  INVXL U776 ( .A(n999), .Y(n1001) );
  NOR2XL U777 ( .A(n732), .B(n932), .Y(n734) );
  NOR4XL U778 ( .A(\se1[0][0] ), .B(\se1[0][1] ), .C(\se1[1][2] ), .D(
        \se1[0][2] ), .Y(n876) );
  NOR2XL U779 ( .A(n864), .B(n1049), .Y(n666) );
  OAI22XL U780 ( .A0(n1028), .A1(n958), .B0(n941), .B1(n956), .Y(n942) );
  NAND2XL U781 ( .A(n757), .B(n845), .Y(n761) );
  AOI211XL U782 ( .A0(n920), .A1(counter0[2]), .B0(n919), .C0(n918), .Y(n922)
         );
  OAI21XL U783 ( .A0(n743), .A1(n956), .B0(n952), .Y(n934) );
  NAND4XL U784 ( .A(n879), .B(n878), .C(n877), .D(n876), .Y(n880) );
  NAND4XL U785 ( .A(\se1[3][0] ), .B(\se1[1][0] ), .C(\se1[2][1] ), .D(
        \se1[3][1] ), .Y(n882) );
  NAND2XL U786 ( .A(n1073), .B(n966), .Y(n965) );
  AOI211XL U787 ( .A0(n994), .A1(n723), .B0(n696), .C0(n695), .Y(n701) );
  INVXL U788 ( .A(n866), .Y(N198) );
  NOR2XL U789 ( .A(n865), .B(n966), .Y(N196) );
  AND2X1 U790 ( .A(n869), .B(n1015), .Y(N542) );
  AND2X1 U791 ( .A(n885), .B(n1015), .Y(N546) );
  NAND2X1 U792 ( .A(counter0[0]), .B(counter0[1]), .Y(n614) );
  NAND2X1 U793 ( .A(counter0[0]), .B(n1035), .Y(n680) );
  NAND2X1 U794 ( .A(n1025), .B(n1035), .Y(n732) );
  NAND2X1 U795 ( .A(counter0[1]), .B(n1025), .Y(n679) );
  OAI22XL U796 ( .A0(n680), .A1(n1072), .B0(n679), .B1(n1019), .Y(n580) );
  OAI21XL U797 ( .A0(n680), .A1(n1037), .B0(counter0[2]), .Y(n587) );
  OAI22XL U798 ( .A0(n1020), .A1(n732), .B0(n679), .B1(n1028), .Y(n586) );
  CLKINVX1 U799 ( .A(n679), .Y(n637) );
  OAI22XL U800 ( .A0(n1036), .A1(n614), .B0(n940), .B1(n680), .Y(n583) );
  OAI21XL U801 ( .A0(n991), .A1(n732), .B0(n584), .Y(n585) );
  OAI21X1 U802 ( .A0(n587), .A1(n586), .B0(n585), .Y(n941) );
  OAI21XL U803 ( .A0(n856), .A1(n589), .B0(n588), .Y(n613) );
  NOR2X1 U804 ( .A(change_point[1]), .B(change_point[2]), .Y(n736) );
  NAND3X1 U805 ( .A(n730), .B(change_point[2]), .C(n1018), .Y(n691) );
  NOR2X1 U806 ( .A(n1018), .B(n1027), .Y(n733) );
  NAND2X1 U807 ( .A(n733), .B(n932), .Y(n984) );
  OAI22XL U808 ( .A0(n691), .A1(n1072), .B0(n984), .B1(n1019), .Y(n592) );
  CLKINVX1 U809 ( .A(n699), .Y(n681) );
  NAND3X1 U810 ( .A(change_point[1]), .B(n730), .C(n1027), .Y(n710) );
  OAI22XL U811 ( .A0(n559), .A1(n681), .B0(n1024), .B1(n710), .Y(n591) );
  NAND3X1 U812 ( .A(change_point[1]), .B(n932), .C(n1027), .Y(n774) );
  OAI22XL U813 ( .A0(n848), .A1(n774), .B0(n596), .B1(n1040), .Y(n590) );
  NOR4X1 U814 ( .A(n593), .B(n592), .C(n591), .D(n590), .Y(n693) );
  OAI22XL U815 ( .A0(n691), .A1(n1037), .B0(n984), .B1(n1028), .Y(n595) );
  OAI22XL U816 ( .A0(n1020), .A1(n681), .B0(n1036), .B1(n710), .Y(n594) );
  AOI222XL U817 ( .A0(n693), .A1(n599), .B0(n693), .B1(n856), .C0(n599), .C1(
        n856), .Y(n610) );
  OAI22XL U818 ( .A0(n948), .A1(n600), .B0(n1046), .B1(n774), .Y(n602) );
  OAI22XL U819 ( .A0(n561), .A1(n710), .B0(n558), .B1(n984), .Y(n601) );
  OAI211X1 U820 ( .A0(n955), .A1(n681), .B0(n604), .C0(n603), .Y(n720) );
  OAI21XL U821 ( .A0(n1021), .A1(n680), .B0(counter0[2]), .Y(n609) );
  OAI22XL U822 ( .A0(n955), .A1(n732), .B0(n558), .B1(n679), .Y(n608) );
  OAI22XL U823 ( .A0(n561), .A1(n614), .B0(n948), .B1(n680), .Y(n605) );
  OAI21XL U824 ( .A0(n1004), .A1(n732), .B0(n606), .Y(n607) );
  OAI21X1 U825 ( .A0(n609), .A1(n608), .B0(n607), .Y(n957) );
  AOI222XL U826 ( .A0(n610), .A1(n720), .B0(n610), .B1(n957), .C0(n720), .C1(
        n957), .Y(n612) );
  AO21X1 U827 ( .A0(value[2]), .A1(n613), .B0(n957), .Y(n611) );
  NAND2X1 U828 ( .A(n920), .B(n1034), .Y(n743) );
  NOR2X1 U829 ( .A(n730), .B(n697), .Y(n791) );
  AOI21X1 U830 ( .A0(change_point[2]), .A1(n615), .B0(n791), .Y(n674) );
  OAI22XL U831 ( .A0(n730), .A1(n1018), .B0(n932), .B1(change_point[1]), .Y(
        n673) );
  AOI211XL U832 ( .A0(counter0[1]), .A1(change_point[1]), .B0(counter0[0]), 
        .C0(n730), .Y(n616) );
  OAI211X1 U833 ( .A0(counter0[2]), .A1(n674), .B0(n618), .C0(n694), .Y(n854)
         );
  NOR3X1 U834 ( .A(n1031), .B(state[2]), .C(state[1]), .Y(n676) );
  NOR2X1 U835 ( .A(n930), .B(n918), .Y(n935) );
  CLKINVX1 U836 ( .A(n935), .Y(n956) );
  OAI22XL U837 ( .A0(L0[1]), .A1(n996), .B0(n991), .B1(L0[0]), .Y(n620) );
  OAI21XL U838 ( .A0(R0[1]), .A1(n847), .B0(n620), .Y(n621) );
  CLKINVX1 U839 ( .A(L1[2]), .Y(n951) );
  AOI2BB2X1 U840 ( .B0(L2[2]), .B1(n951), .A0N(n1024), .A1N(L1[1]), .Y(n623)
         );
  OAI22XL U841 ( .A0(L2[0]), .A1(n560), .B0(L2[1]), .B1(n848), .Y(n622) );
  AOI2BB2X1 U842 ( .B0(n623), .B1(n622), .A0N(L2[2]), .A1N(n1046), .Y(n757) );
  AOI2BB2X1 U843 ( .B0(L1[1]), .B1(n847), .A0N(n951), .A1N(L0[2]), .Y(n625) );
  OAI22XL U844 ( .A0(L1[1]), .A1(n847), .B0(L1[0]), .B1(n940), .Y(n624) );
  AOI2BB2X1 U845 ( .B0(n625), .B1(n624), .A0N(L1[2]), .A1N(n948), .Y(n845) );
  NOR2X1 U846 ( .A(n846), .B(n761), .Y(n1010) );
  OAI21XL U847 ( .A0(L2[1]), .A1(n559), .B0(L2[0]), .Y(n626) );
  AOI2BB2X1 U848 ( .B0(L2[1]), .B1(n559), .A0N(R4[0]), .A1N(n626), .Y(n627) );
  AOI222X1 U849 ( .A0(n627), .A1(R4[2]), .B0(n627), .B1(n561), .C0(R4[2]), 
        .C1(n561), .Y(n756) );
  NAND3X1 U850 ( .A(n1010), .B(n756), .C(n938), .Y(n952) );
  OAI22XL U851 ( .A0(L6[1]), .A1(n1019), .B0(n1028), .B1(L6[0]), .Y(n628) );
  OAI21XL U852 ( .A0(R6[1]), .A1(n1040), .B0(n628), .Y(n629) );
  AOI222XL U853 ( .A0(L6[2]), .A1(n629), .B0(L6[2]), .B1(n558), .C0(n629), 
        .C1(n558), .Y(n634) );
  OAI21XL U854 ( .A0(R4[1]), .A1(n1072), .B0(R4[0]), .Y(n630) );
  OA22X1 U855 ( .A0(R5[1]), .A1(n559), .B0(R5[0]), .B1(n630), .Y(n631) );
  AOI222X1 U856 ( .A0(R5[2]), .A1(n631), .B0(R5[2]), .B1(n955), .C0(n631), 
        .C1(n955), .Y(n851) );
  AOI2BB2X1 U857 ( .B0(n1028), .B1(R5[0]), .A0N(R6[1]), .A1N(n1072), .Y(n633)
         );
  OAI22XL U858 ( .A0(R5[2]), .A1(n558), .B0(R5[1]), .B1(n1019), .Y(n632) );
  OAI22XL U859 ( .A0(R6[2]), .A1(n1021), .B0(n633), .B1(n632), .Y(n760) );
  NAND2X1 U860 ( .A(n755), .B(n938), .Y(n931) );
  NOR2X1 U861 ( .A(n635), .B(n1008), .Y(n762) );
  NAND2X1 U862 ( .A(n762), .B(n938), .Y(n958) );
  NAND3BX1 U863 ( .AN(n757), .B(n845), .C(n844), .Y(n950) );
  AOI2BB2X1 U864 ( .B0(n640), .B1(sum_reg[9]), .A0N(n640), .A1N(sum_reg[9]), 
        .Y(n642) );
  CLKBUFX3 U865 ( .A(n641), .Y(n1015) );
  AOI2BB2X1 U866 ( .B0(n1045), .B1(n1087), .A0N(sum_reg[0]), .A1N(n643), .Y(
        n644) );
  AOI2BB2X1 U867 ( .B0(MinCost[2]), .B1(n1047), .A0N(n660), .A1N(n644), .Y(
        n645) );
  OAI211XL U868 ( .A0(n648), .A1(MinCost[4]), .B0(n647), .C0(n646), .Y(n651)
         );
  OA22X1 U869 ( .A0(n1017), .A1(sum_reg[5]), .B0(n1043), .B1(sum_reg[6]), .Y(
        n650) );
  NAND2XL U870 ( .A(n1043), .B(sum_reg[6]), .Y(n661) );
  OAI22XL U871 ( .A0(n1080), .A1(n1050), .B0(n1081), .B1(n1032), .Y(n657) );
  AOI222XL U872 ( .A0(sum_reg[8]), .A1(n1023), .B0(sum_reg[8]), .B1(n652), 
        .C0(n1023), .C1(n652), .Y(n653) );
  NOR2X1 U873 ( .A(n670), .B(n1015), .Y(n667) );
  OAI22XL U874 ( .A0(n1083), .A1(n1033), .B0(MinCost[4]), .B1(n1054), .Y(n658)
         );
  NAND2X2 U875 ( .A(n670), .B(n901), .Y(n671) );
  AOI222XL U876 ( .A0(counter0[2]), .A1(n674), .B0(counter0[1]), .B1(n673), 
        .C0(n1034), .C1(n672), .Y(n675) );
  OAI221XL U877 ( .A0(counter0[0]), .A1(n730), .B0(n1025), .B1(n932), .C0(n675), .Y(n677) );
  NOR2XL U878 ( .A(counter0[0]), .B(n742), .Y(N186) );
  AOI21XL U879 ( .A0(n680), .A1(n679), .B0(n742), .Y(N187) );
  NAND3X2 U880 ( .A(search_point[2]), .B(n556), .C(n1039), .Y(n723) );
  NAND2XL U881 ( .A(n1044), .B(state[1]), .Y(n688) );
  CLKINVX1 U882 ( .A(n837), .Y(n835) );
  CLKINVX1 U883 ( .A(n816), .Y(n815) );
  OAI22XL U884 ( .A0(n847), .A1(n835), .B0(n996), .B1(n815), .Y(n686) );
  NAND3BX1 U885 ( .AN(search_point[2]), .B(search_point[1]), .C(
        search_point[0]), .Y(n682) );
  NOR3X1 U886 ( .A(n1039), .B(search_point[0]), .C(search_point[2]), .Y(n784)
         );
  CLKINVX1 U887 ( .A(n784), .Y(n783) );
  OAI22XL U888 ( .A0(n1024), .A1(n746), .B0(n848), .B1(n783), .Y(n685) );
  NAND3X1 U889 ( .A(search_point[0]), .B(search_point[2]), .C(n1039), .Y(n769)
         );
  OAI22XL U890 ( .A0(n559), .A1(n723), .B0(n1072), .B1(n769), .Y(n684) );
  NAND3X1 U891 ( .A(search_point[0]), .B(search_point[1]), .C(search_point[2]), 
        .Y(n979) );
  OAI22XL U892 ( .A0(n1019), .A1(n999), .B0(n1040), .B1(n979), .Y(n683) );
  NOR4X1 U893 ( .A(n686), .B(n685), .C(n684), .D(n683), .Y(n976) );
  NOR2X1 U894 ( .A(n976), .B(n799), .Y(n994) );
  NOR2X1 U895 ( .A(n1031), .B(n688), .Y(n698) );
  CLKINVX1 U896 ( .A(n698), .Y(n973) );
  NOR2X1 U897 ( .A(n984), .B(n973), .Y(n840) );
  CLKBUFX3 U898 ( .A(n689), .Y(n986) );
  CLKBUFX3 U899 ( .A(n690), .Y(n1003) );
  OAI22XL U900 ( .A0(n847), .A1(n986), .B0(n848), .B1(n1003), .Y(n696) );
  OA21XL U901 ( .A0(n996), .A1(n694), .B0(n693), .Y(n975) );
  NOR2X1 U902 ( .A(n975), .B(n799), .Y(n993) );
  CLKINVX1 U903 ( .A(n993), .Y(n802) );
  OAI22XL U904 ( .A0(n996), .A1(n814), .B0(n723), .B1(n802), .Y(n695) );
  NOR2X1 U905 ( .A(n774), .B(n973), .Y(n792) );
  OAI211X1 U906 ( .A0(n1031), .A1(n697), .B0(n1044), .C0(state[1]), .Y(n797)
         );
  NAND2BX1 U907 ( .AN(n710), .B(n698), .Y(n813) );
  NAND2BX1 U908 ( .AN(n797), .B(n813), .Y(n806) );
  NOR2X1 U909 ( .A(n726), .B(n752), .Y(n724) );
  OAI22XL U910 ( .A0(n726), .A1(n701), .B0(n724), .B1(n559), .Y(n541) );
  OAI22XL U911 ( .A0(n991), .A1(n815), .B0(n940), .B1(n835), .Y(n705) );
  OAI22XL U912 ( .A0(n1036), .A1(n746), .B0(n560), .B1(n783), .Y(n704) );
  OAI22XL U913 ( .A0(n1020), .A1(n723), .B0(n1037), .B1(n769), .Y(n703) );
  OAI22XL U914 ( .A0(n1028), .A1(n999), .B0(n1053), .B1(n979), .Y(n702) );
  NOR4X1 U915 ( .A(n705), .B(n704), .C(n703), .D(n702), .Y(n969) );
  NOR2X1 U916 ( .A(n969), .B(n799), .Y(n989) );
  OAI22XL U917 ( .A0(n940), .A1(n986), .B0(n560), .B1(n1003), .Y(n708) );
  NOR2X1 U918 ( .A(n968), .B(n799), .Y(n988) );
  CLKINVX1 U919 ( .A(n988), .Y(n834) );
  OAI22XL U920 ( .A0(n991), .A1(n814), .B0(n723), .B1(n834), .Y(n707) );
  OAI22XL U921 ( .A0(n726), .A1(n709), .B0(n724), .B1(n1020), .Y(n542) );
  OAI22XL U922 ( .A0(n847), .A1(n814), .B0(n848), .B1(n986), .Y(n712) );
  OAI22XL U923 ( .A0(n996), .A1(n830), .B0(n746), .B1(n802), .Y(n711) );
  OAI22XL U924 ( .A0(n749), .A1(n715), .B0(n747), .B1(n1024), .Y(n538) );
  OAI22XL U925 ( .A0(n1004), .A1(n815), .B0(n948), .B1(n835), .Y(n719) );
  OAI22XL U926 ( .A0(n561), .A1(n746), .B0(n951), .B1(n783), .Y(n718) );
  OAI22XL U927 ( .A0(n955), .A1(n723), .B0(n1021), .B1(n769), .Y(n717) );
  OAI22XL U928 ( .A0(n558), .A1(n999), .B0(n1051), .B1(n979), .Y(n716) );
  NOR4X1 U929 ( .A(n719), .B(n718), .C(n717), .D(n716), .Y(n980) );
  NOR2X1 U930 ( .A(n980), .B(n799), .Y(n1000) );
  OAI22XL U931 ( .A0(n948), .A1(n986), .B0(n1046), .B1(n1003), .Y(n722) );
  NOR2X1 U932 ( .A(n978), .B(n799), .Y(n998) );
  CLKINVX1 U933 ( .A(n998), .Y(n825) );
  OAI22XL U934 ( .A0(n1004), .A1(n814), .B0(n723), .B1(n825), .Y(n721) );
  OAI22XL U935 ( .A0(n726), .A1(n725), .B0(n724), .B1(n955), .Y(n540) );
  OAI22XL U936 ( .A0(n940), .A1(n814), .B0(n560), .B1(n986), .Y(n728) );
  OAI22XL U937 ( .A0(n991), .A1(n830), .B0(n746), .B1(n834), .Y(n727) );
  OAI22XL U938 ( .A0(n749), .A1(n729), .B0(n747), .B1(n1036), .Y(n539) );
  OAI22XL U939 ( .A0(n1016), .A1(n1017), .B0(n671), .B1(n1033), .Y(n486) );
  OAI22XL U940 ( .A0(n1016), .A1(n1030), .B0(n671), .B1(n1048), .Y(n484) );
  INVXL U941 ( .A(RST), .Y(n480) );
  CLKBUFX3 U942 ( .A(n480), .Y(n1071) );
  CLKBUFX3 U943 ( .A(n1071), .Y(n1067) );
  CLKBUFX3 U944 ( .A(n1067), .Y(n1070) );
  CLKBUFX3 U945 ( .A(n1071), .Y(n1068) );
  CLKBUFX3 U946 ( .A(n1067), .Y(n1069) );
  NAND3XL U947 ( .A(n731), .B(n730), .C(n733), .Y(n738) );
  OAI21XL U948 ( .A0(counter0[0]), .A1(n932), .B0(counter0[1]), .Y(n735) );
  AOI211XL U949 ( .A0(n1018), .A1(n735), .B0(n734), .C0(n733), .Y(n737) );
  OAI21XL U950 ( .A0(state[2]), .A1(n1031), .B0(state[1]), .Y(n739) );
  OAI21XL U951 ( .A0(n740), .A1(n938), .B0(n739), .Y(n551) );
  NAND2BX1 U952 ( .AN(state[1]), .B(n740), .Y(n741) );
  AOI32XL U953 ( .A0(state[0]), .A1(n1044), .A2(n741), .B0(n1031), .B1(
        state[2]), .Y(n552) );
  AOI221XL U954 ( .A0(n920), .A1(n743), .B0(n1034), .B1(n743), .C0(n742), .Y(
        N188) );
  INVX12 U955 ( .A(n1056), .Y(W[2]) );
  OAI22XL U956 ( .A0(n948), .A1(n814), .B0(n951), .B1(n986), .Y(n745) );
  OAI22XL U957 ( .A0(n1004), .A1(n830), .B0(n746), .B1(n825), .Y(n744) );
  OAI22XL U958 ( .A0(n749), .A1(n748), .B0(n747), .B1(n561), .Y(n537) );
  CLKINVX1 U959 ( .A(n769), .Y(n770) );
  NOR3X1 U960 ( .A(n750), .B(n770), .C(n799), .Y(n773) );
  OAI22XL U961 ( .A0(n847), .A1(n1003), .B0(n996), .B1(n986), .Y(n751) );
  AOI221XL U962 ( .A0(n993), .A1(n770), .B0(n994), .B1(n769), .C0(n751), .Y(
        n753) );
  NOR2BX1 U963 ( .AN(n987), .B(n773), .Y(n771) );
  OAI22XL U964 ( .A0(n773), .A1(n753), .B0(n771), .B1(n1072), .Y(n544) );
  INVX12 U965 ( .A(n1043), .Y(MinCost[6]) );
  INVX12 U966 ( .A(n1042), .Y(MinCost[9]) );
  NOR3XL U967 ( .A(state[2]), .B(state[1]), .C(state[0]), .Y(n754) );
  OAI22XL U968 ( .A0(n764), .A1(n932), .B0(n759), .B1(n1013), .Y(n503) );
  NOR2BX1 U969 ( .AN(n760), .B(n851), .Y(n853) );
  AOI21XL U970 ( .A0(n853), .A1(n849), .B0(n761), .Y(n763) );
  AOI2BB1X1 U971 ( .A0N(n846), .A1N(n763), .B0(n762), .Y(n765) );
  OAI22XL U972 ( .A0(n765), .A1(n1013), .B0(n764), .B1(n1018), .Y(n520) );
  OAI22XL U973 ( .A0(n1004), .A1(n986), .B0(n948), .B1(n1003), .Y(n766) );
  AOI221XL U974 ( .A0(n998), .A1(n770), .B0(n1000), .B1(n769), .C0(n766), .Y(
        n767) );
  OAI22XL U975 ( .A0(n773), .A1(n767), .B0(n771), .B1(n1021), .Y(n543) );
  OAI22XL U976 ( .A0(n991), .A1(n986), .B0(n940), .B1(n1003), .Y(n768) );
  AOI221XL U977 ( .A0(n988), .A1(n770), .B0(n989), .B1(n769), .C0(n768), .Y(
        n772) );
  OAI22XL U978 ( .A0(n773), .A1(n772), .B0(n771), .B1(n1037), .Y(n545) );
  INVX12 U979 ( .A(n1058), .Y(W[1]) );
  INVX12 U980 ( .A(n1023), .Y(MinCost[8]) );
  NAND3X1 U981 ( .A(n774), .B(n783), .C(n985), .Y(n785) );
  NOR4BX1 U982 ( .AN(n785), .B(n832), .C(n792), .D(n797), .Y(n790) );
  OAI22XL U983 ( .A0(n847), .A1(n830), .B0(n996), .B1(n813), .Y(n777) );
  OAI22XL U984 ( .A0(n559), .A1(n1003), .B0(n1024), .B1(n986), .Y(n776) );
  OAI22XL U985 ( .A0(n784), .A1(n803), .B0(n783), .B1(n802), .Y(n775) );
  OAI31XL U986 ( .A0(n777), .A1(n776), .A2(n775), .B0(n785), .Y(n778) );
  OAI21XL U987 ( .A0(n790), .A1(n848), .B0(n778), .Y(n535) );
  OAI22XL U988 ( .A0(n991), .A1(n813), .B0(n940), .B1(n830), .Y(n781) );
  OAI22XL U989 ( .A0(n1020), .A1(n1003), .B0(n1036), .B1(n986), .Y(n780) );
  OAI22XL U990 ( .A0(n784), .A1(n836), .B0(n783), .B1(n834), .Y(n779) );
  OAI31XL U991 ( .A0(n781), .A1(n780), .A2(n779), .B0(n785), .Y(n782) );
  OAI21XL U992 ( .A0(n790), .A1(n560), .B0(n782), .Y(n536) );
  OAI22XL U993 ( .A0(n1004), .A1(n813), .B0(n948), .B1(n830), .Y(n788) );
  OAI22XL U994 ( .A0(n561), .A1(n986), .B0(n955), .B1(n1003), .Y(n787) );
  OAI22XL U995 ( .A0(n784), .A1(n826), .B0(n783), .B1(n825), .Y(n786) );
  OAI31XL U996 ( .A0(n788), .A1(n787), .A2(n786), .B0(n785), .Y(n789) );
  OAI21XL U997 ( .A0(n790), .A1(n951), .B0(n789), .Y(n534) );
  NOR3X1 U998 ( .A(n791), .B(n816), .C(n799), .Y(n823) );
  CLKINVX1 U999 ( .A(n792), .Y(n831) );
  OAI22XL U1000 ( .A0(n847), .A1(n831), .B0(n1072), .B1(n986), .Y(n796) );
  OAI22XL U1001 ( .A0(n1024), .A1(n830), .B0(n848), .B1(n813), .Y(n795) );
  OAI22XL U1002 ( .A0(n559), .A1(n814), .B0(n1019), .B1(n1003), .Y(n794) );
  OAI22XL U1003 ( .A0(n816), .A1(n803), .B0(n815), .B1(n802), .Y(n793) );
  NOR2X1 U1004 ( .A(n797), .B(n823), .Y(n821) );
  OAI22XL U1005 ( .A0(n823), .A1(n798), .B0(n821), .B1(n996), .Y(n529) );
  NOR3X1 U1006 ( .A(n800), .B(n837), .C(n799), .Y(n843) );
  OAI22XL U1007 ( .A0(n848), .A1(n830), .B0(n1072), .B1(n1003), .Y(n805) );
  AOI2BB2X1 U1008 ( .B0(L2[1]), .B1(n832), .A0N(n996), .A1N(n831), .Y(n801) );
  OAI221XL U1009 ( .A0(n837), .A1(n803), .B0(n835), .B1(n802), .C0(n801), .Y(
        n804) );
  NOR2X1 U1010 ( .A(n843), .B(n806), .Y(n841) );
  OAI22XL U1011 ( .A0(n843), .A1(n807), .B0(n841), .B1(n847), .Y(n532) );
  OAI22XL U1012 ( .A0(n948), .A1(n831), .B0(n1021), .B1(n986), .Y(n811) );
  OAI22XL U1013 ( .A0(n561), .A1(n830), .B0(n951), .B1(n813), .Y(n810) );
  OAI22XL U1014 ( .A0(n955), .A1(n814), .B0(n558), .B1(n1003), .Y(n809) );
  OAI22XL U1015 ( .A0(n816), .A1(n826), .B0(n815), .B1(n825), .Y(n808) );
  OAI22XL U1016 ( .A0(n823), .A1(n812), .B0(n821), .B1(n1004), .Y(n528) );
  OAI22XL U1017 ( .A0(n940), .A1(n831), .B0(n1037), .B1(n986), .Y(n820) );
  OAI22XL U1018 ( .A0(n1036), .A1(n830), .B0(n560), .B1(n813), .Y(n819) );
  OAI22XL U1019 ( .A0(n1020), .A1(n814), .B0(n1028), .B1(n1003), .Y(n818) );
  OAI22XL U1020 ( .A0(n816), .A1(n836), .B0(n815), .B1(n834), .Y(n817) );
  OAI22XL U1021 ( .A0(n823), .A1(n822), .B0(n821), .B1(n991), .Y(n530) );
  OAI22XL U1022 ( .A0(n1046), .A1(n830), .B0(n1021), .B1(n1003), .Y(n828) );
  AOI2BB2X1 U1023 ( .B0(L2[2]), .B1(n832), .A0N(n1004), .A1N(n831), .Y(n824)
         );
  OAI221XL U1024 ( .A0(n837), .A1(n826), .B0(n835), .B1(n825), .C0(n824), .Y(
        n827) );
  OAI22XL U1025 ( .A0(n843), .A1(n829), .B0(n841), .B1(n948), .Y(n531) );
  OAI22XL U1026 ( .A0(n560), .A1(n830), .B0(n1037), .B1(n1003), .Y(n839) );
  AOI2BB2X1 U1027 ( .B0(L2[0]), .B1(n832), .A0N(n991), .A1N(n831), .Y(n833) );
  OAI221XL U1028 ( .A0(n837), .A1(n836), .B0(n835), .B1(n834), .C0(n833), .Y(
        n838) );
  OAI22XL U1029 ( .A0(n843), .A1(n842), .B0(n841), .B1(n940), .Y(n533) );
  NAND2BX1 U1030 ( .AN(n845), .B(n844), .Y(n947) );
  OAI22XL U1031 ( .A0(n847), .A1(n947), .B0(n996), .B1(n949), .Y(n860) );
  OAI22XL U1032 ( .A0(n1024), .A1(n952), .B0(n848), .B1(n950), .Y(n859) );
  NOR2BX1 U1033 ( .AN(n1010), .B(n850), .Y(n852) );
  NAND2X1 U1034 ( .A(n851), .B(n852), .Y(n954) );
  NAND2X1 U1035 ( .A(n853), .B(n852), .Y(n953) );
  OAI22XL U1036 ( .A0(n559), .A1(n954), .B0(n1072), .B1(n953), .Y(n858) );
  OAI211X1 U1037 ( .A0(n919), .A1(n918), .B0(n855), .C0(n931), .Y(n964) );
  AO22X1 U1038 ( .A0(n856), .A1(n935), .B0(value[1]), .B1(n964), .Y(n857) );
  OAI21XL U1039 ( .A0(n1019), .A1(n958), .B0(n861), .Y(N373) );
  OAI22XL U1040 ( .A0(n927), .A1(n1049), .B0(n864), .B1(n863), .Y(n506) );
  NAND2XL U1041 ( .A(R0[1]), .B(RST), .Y(n525) );
  NAND2XL U1042 ( .A(R0[2]), .B(RST), .Y(n527) );
  NAND2XL U1043 ( .A(R0[0]), .B(RST), .Y(n523) );
  NAND2XL U1044 ( .A(RST), .B(n991), .Y(n522) );
  NAND2XL U1045 ( .A(RST), .B(n996), .Y(n524) );
  NAND2XL U1046 ( .A(RST), .B(n1004), .Y(n526) );
  NOR2XL U1047 ( .A(W[1]), .B(W[0]), .Y(n865) );
  NOR2X1 U1048 ( .A(n1058), .B(n1060), .Y(n966) );
  NOR2XL U1049 ( .A(W[0]), .B(n901), .Y(N195) );
  NOR2X2 U1050 ( .A(\counter1[3] ), .B(n965), .Y(n974) );
  OAI221XL U1051 ( .A0(n965), .A1(n974), .B0(\counter1[3] ), .B1(n974), .C0(
        n1015), .Y(n866) );
  ADDFXL U1052 ( .A(Cost[1]), .B(sum_reg[1]), .CI(n868), .CO(n870), .S(n869)
         );
  ADDFXL U1053 ( .A(Cost[2]), .B(sum_reg[2]), .CI(n870), .CO(n872), .S(n871)
         );
  ADDFXL U1054 ( .A(Cost[4]), .B(sum_reg[4]), .CI(n874), .CO(n884), .S(n875)
         );
  AND4X1 U1055 ( .A(\se1[7][0] ), .B(\se1[6][1] ), .C(\se1[7][1] ), .D(
        \se1[7][2] ), .Y(n877) );
  BUFX12 U1056 ( .A(n883), .Y(Valid) );
  ADDFXL U1057 ( .A(Cost[5]), .B(sum_reg[5]), .CI(n884), .CO(n886), .S(n885)
         );
  ADDFXL U1058 ( .A(Cost[6]), .B(sum_reg[6]), .CI(n886), .CO(n916), .S(n887)
         );
  NOR4X1 U1059 ( .A(n1073), .B(n1075), .C(\counter1[3] ), .D(n1058), .Y(n905)
         );
  NAND2BX1 U1060 ( .AN(\counter1[3] ), .B(n1073), .Y(n888) );
  NOR3X1 U1061 ( .A(n1074), .B(n1075), .C(n888), .Y(n904) );
  AO22X1 U1062 ( .A0(n905), .A1(\se1[2][1] ), .B0(n904), .B1(\se1[4][1] ), .Y(
        n893) );
  NOR3X1 U1063 ( .A(n1074), .B(n1060), .C(n888), .Y(n907) );
  NOR3X1 U1064 ( .A(n1075), .B(n1058), .C(n888), .Y(n906) );
  AO22X1 U1065 ( .A0(n907), .A1(\se1[5][1] ), .B0(n906), .B1(\se1[6][1] ), .Y(
        n892) );
  NOR3BX1 U1066 ( .AN(n966), .B(n1073), .C(\counter1[3] ), .Y(n909) );
  NOR4X1 U1067 ( .A(n1073), .B(n1074), .C(\counter1[3] ), .D(n1060), .Y(n908)
         );
  AO22X1 U1068 ( .A0(n909), .A1(\se1[3][1] ), .B0(n908), .B1(\se1[1][1] ), .Y(
        n891) );
  AO22X1 U1069 ( .A0(n974), .A1(\se1[7][1] ), .B0(\se1[0][1] ), .B1(n910), .Y(
        n890) );
  NOR4X1 U1070 ( .A(n893), .B(n892), .C(n891), .D(n890), .Y(n894) );
  INVX12 U1071 ( .A(n894), .Y(J[1]) );
  AO22X1 U1072 ( .A0(n905), .A1(\se1[2][2] ), .B0(n904), .B1(\se1[4][2] ), .Y(
        n898) );
  AO22X1 U1073 ( .A0(n907), .A1(\se1[5][2] ), .B0(n906), .B1(\se1[6][2] ), .Y(
        n897) );
  AO22X1 U1074 ( .A0(n909), .A1(\se1[3][2] ), .B0(n908), .B1(\se1[1][2] ), .Y(
        n896) );
  AO22X1 U1075 ( .A0(n974), .A1(\se1[7][2] ), .B0(\se1[0][2] ), .B1(n910), .Y(
        n895) );
  NOR4X1 U1076 ( .A(n898), .B(n897), .C(n896), .D(n895), .Y(n899) );
  INVX12 U1077 ( .A(n899), .Y(J[2]) );
  AO22X1 U1078 ( .A0(\se1[3][0] ), .A1(n909), .B0(\se1[1][0] ), .B1(n908), .Y(
        n912) );
  AO22X1 U1079 ( .A0(\se1[7][0] ), .A1(n974), .B0(\se1[0][0] ), .B1(n910), .Y(
        n911) );
  NOR4BBX1 U1080 ( .AN(n914), .BN(n913), .C(n912), .D(n911), .Y(n915) );
  INVX12 U1081 ( .A(n915), .Y(J[0]) );
  ADDHXL U1082 ( .A(n916), .B(sum_reg[7]), .CO(n925), .S(n917) );
  OAI22XL U1083 ( .A0(n1034), .A1(n956), .B0(n1027), .B1(n931), .Y(n921) );
  ADDHXL U1084 ( .A(sum_reg[8]), .B(n925), .CO(n640), .S(n926) );
  OAI31XL U1085 ( .A0(n939), .A1(n938), .A2(n556), .B0(n937), .Y(N375) );
  OAI22XL U1086 ( .A0(n991), .A1(n949), .B0(n940), .B1(n947), .Y(n945) );
  OAI22XL U1087 ( .A0(n1036), .A1(n952), .B0(n560), .B1(n950), .Y(n944) );
  OAI22XL U1088 ( .A0(n1020), .A1(n954), .B0(n1037), .B1(n953), .Y(n943) );
  OAI22XL U1089 ( .A0(n1004), .A1(n949), .B0(n948), .B1(n947), .Y(n962) );
  OAI22XL U1090 ( .A0(n561), .A1(n952), .B0(n951), .B1(n950), .Y(n961) );
  OAI22XL U1091 ( .A0(n955), .A1(n954), .B0(n1021), .B1(n953), .Y(n960) );
  OA21XL U1092 ( .A0(W[2]), .A1(n966), .B0(n965), .Y(N197) );
  CLKINVX1 U1093 ( .A(n979), .Y(n981) );
  OAI22XL U1094 ( .A0(n981), .A1(n969), .B0(n979), .B1(n968), .Y(n970) );
  AOI2BB2X1 U1095 ( .B0(n983), .B1(n1053), .A0N(n983), .A1N(n970), .Y(n554) );
  INVXL U1096 ( .A(n974), .Y(n971) );
  OAI31XL U1097 ( .A0(state[1]), .A1(state[0]), .A2(n971), .B0(state[2]), .Y(
        n972) );
  OAI21XL U1098 ( .A0(n974), .A1(n973), .B0(n972), .Y(n553) );
  OAI22XL U1099 ( .A0(n981), .A1(n976), .B0(n979), .B1(n975), .Y(n977) );
  AOI2BB2X1 U1100 ( .B0(n983), .B1(n1040), .A0N(n983), .A1N(n977), .Y(n550) );
  OAI22XL U1101 ( .A0(n981), .A1(n980), .B0(n979), .B1(n978), .Y(n982) );
  AOI2BB2X1 U1102 ( .B0(n983), .B1(n1051), .A0N(n983), .A1N(n982), .Y(n549) );
  NAND3X1 U1103 ( .A(n985), .B(n984), .C(n999), .Y(n1006) );
  OAI22XL U1104 ( .A0(n1001), .A1(n989), .B0(n999), .B1(n988), .Y(n990) );
  OAI21XL U1105 ( .A0(n991), .A1(n1003), .B0(n990), .Y(n992) );
  AO22X1 U1106 ( .A0(R6[0]), .A1(n1007), .B0(n1006), .B1(n992), .Y(n548) );
  OAI22XL U1107 ( .A0(n1001), .A1(n994), .B0(n999), .B1(n993), .Y(n995) );
  OAI21XL U1108 ( .A0(n996), .A1(n1003), .B0(n995), .Y(n997) );
  AO22X1 U1109 ( .A0(R6[1]), .A1(n1007), .B0(n1006), .B1(n997), .Y(n547) );
  OAI22XL U1110 ( .A0(n1001), .A1(n1000), .B0(n999), .B1(n998), .Y(n1002) );
  OAI21XL U1111 ( .A0(n1004), .A1(n1003), .B0(n1002), .Y(n1005) );
  AO22X1 U1112 ( .A0(R6[2]), .A1(n1007), .B0(n1006), .B1(n1005), .Y(n546) );
  AOI2BB2X1 U1113 ( .B0(n1027), .B1(n1011), .A0N(n1010), .A1N(n1013), .Y(n521)
         );
  CLKBUFX3 U1114 ( .A(n1012), .Y(n1014) );
  AO22X1 U1115 ( .A0(n1014), .A1(L0[0]), .B0(n1013), .B1(\se1[1][0] ), .Y(n519) );
  AO22X1 U1116 ( .A0(n1014), .A1(L1[1]), .B0(n1013), .B1(\se1[2][1] ), .Y(n518) );
  AO22X1 U1117 ( .A0(n1014), .A1(L2[1]), .B0(n1013), .B1(\se1[3][1] ), .Y(n517) );
  AO22X1 U1118 ( .A0(n1014), .A1(L2[0]), .B0(n1013), .B1(\se1[3][0] ), .Y(n516) );
  AO22X1 U1119 ( .A0(n1014), .A1(R4[2]), .B0(n1013), .B1(\se1[4][2] ), .Y(n515) );
  AO22X1 U1120 ( .A0(n1014), .A1(R5[2]), .B0(n1013), .B1(\se1[5][2] ), .Y(n514) );
  AO22X1 U1121 ( .A0(n1014), .A1(R5[0]), .B0(n1013), .B1(\se1[5][0] ), .Y(n513) );
  AO22X1 U1122 ( .A0(n1014), .A1(R6[2]), .B0(n1013), .B1(\se1[6][2] ), .Y(n512) );
  AO22X1 U1123 ( .A0(n1014), .A1(R6[1]), .B0(n1013), .B1(\se1[6][1] ), .Y(n511) );
  AO22X1 U1124 ( .A0(n1014), .A1(L6[2]), .B0(n1013), .B1(\se1[7][2] ), .Y(n510) );
  AO22X1 U1125 ( .A0(n1014), .A1(L6[1]), .B0(n1013), .B1(\se1[7][1] ), .Y(n509) );
  AO22X1 U1126 ( .A0(n1014), .A1(L6[0]), .B0(n1013), .B1(\se1[7][0] ), .Y(n508) );
  AO22X1 U1127 ( .A0(n1012), .A1(R0[2]), .B0(n1013), .B1(\se1[0][2] ), .Y(n502) );
  AO22X1 U1128 ( .A0(n1012), .A1(R0[1]), .B0(n1013), .B1(\se1[0][1] ), .Y(n501) );
  AO22X1 U1129 ( .A0(n1014), .A1(R0[0]), .B0(n1013), .B1(\se1[0][0] ), .Y(n500) );
  AO22X1 U1130 ( .A0(n1014), .A1(L0[2]), .B0(n1013), .B1(\se1[1][2] ), .Y(n499) );
  AO22X1 U1131 ( .A0(n1014), .A1(L0[1]), .B0(n1013), .B1(\se1[1][1] ), .Y(n498) );
  AO22X1 U1132 ( .A0(n1014), .A1(L1[2]), .B0(n1013), .B1(\se1[2][2] ), .Y(n497) );
  AO22X1 U1133 ( .A0(n1014), .A1(L1[0]), .B0(n1013), .B1(\se1[2][0] ), .Y(n496) );
  AO22X1 U1134 ( .A0(n1014), .A1(L2[2]), .B0(n1013), .B1(\se1[3][2] ), .Y(n495) );
  AO22X1 U1135 ( .A0(n1014), .A1(R4[1]), .B0(n1013), .B1(\se1[4][1] ), .Y(n494) );
  AO22X1 U1136 ( .A0(n1014), .A1(R4[0]), .B0(n1013), .B1(\se1[4][0] ), .Y(n493) );
  AO22X1 U1137 ( .A0(n1014), .A1(R5[1]), .B0(n1013), .B1(\se1[5][1] ), .Y(n492) );
  AO22X1 U1138 ( .A0(n1014), .A1(R6[0]), .B0(n1013), .B1(\se1[6][0] ), .Y(n491) );
  AOI2BB1X1 U1139 ( .A0N(n1015), .A1N(sum_reg[9]), .B0(n1042), .Y(n490) );
  OAI22XL U1140 ( .A0(n1016), .A1(n1023), .B0(n671), .B1(n1050), .Y(n489) );
  AO22X1 U1141 ( .A0(n671), .A1(n1082), .B0(n1016), .B1(sum_reg[6]), .Y(n487)
         );
  AO22X1 U1142 ( .A0(n1016), .A1(sum_reg[4]), .B0(n671), .B1(MinCost[4]), .Y(
        n485) );
endmodule

