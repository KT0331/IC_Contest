/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Apr  1 14:28:06 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, N195, N196, N197, N386, N387, N388,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n567, n569, n571, n573, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
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
         n1058, n1059, n1065;
  wire   [2:0] change_point;
  wire   [2:0] counter;
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

  DFFQX1 \se_reg[0][2]  ( .D(n541), .CK(CLK), .Q(R0[2]) );
  DFFQX1 \se_reg[1][0]  ( .D(n546), .CK(CLK), .Q(L0[0]) );
  DFFQX1 \se_reg[6][0]  ( .D(n561), .CK(CLK), .Q(R6[0]) );
  DFFQX1 \se_reg[5][0]  ( .D(n558), .CK(CLK), .Q(R5[0]) );
  DFFQX1 \se_reg[3][0]  ( .D(n552), .CK(CLK), .Q(L2[0]) );
  DFFQX1 \sum_reg_reg[9]  ( .D(n523), .CK(CLK), .Q(sum_reg[9]) );
  DFFQX1 \sum_reg_reg[8]  ( .D(n524), .CK(CLK), .Q(sum_reg[8]) );
  DFFQX1 \sum_reg_reg[7]  ( .D(n525), .CK(CLK), .Q(sum_reg[7]) );
  DFFQX1 \sum_reg_reg[6]  ( .D(n526), .CK(CLK), .Q(sum_reg[6]) );
  DFFQX1 \sum_reg_reg[5]  ( .D(n527), .CK(CLK), .Q(sum_reg[5]) );
  DFFQX1 \sum_reg_reg[4]  ( .D(n528), .CK(CLK), .Q(sum_reg[4]) );
  DFFQX1 \sum_reg_reg[3]  ( .D(n529), .CK(CLK), .Q(sum_reg[3]) );
  DFFQX1 \sum_reg_reg[2]  ( .D(n530), .CK(CLK), .Q(sum_reg[2]) );
  DFFQX1 \value_reg[2]  ( .D(n533), .CK(CLK), .Q(value[2]) );
  DFFQX1 \value_reg[0]  ( .D(n535), .CK(CLK), .Q(value[0]) );
  DFFQX1 \value_reg[1]  ( .D(n534), .CK(CLK), .Q(value[1]) );
  DFFQX1 \search_point_reg[0]  ( .D(N386), .CK(CLK), .Q(search_point[0]) );
  DFFQX1 \search_point_reg[2]  ( .D(N388), .CK(CLK), .Q(search_point[2]) );
  DFFQX1 \search_point_reg[1]  ( .D(N387), .CK(CLK), .Q(search_point[1]) );
  DFFQX1 \sum_reg_reg[0]  ( .D(n532), .CK(CLK), .Q(sum_reg[0]) );
  DFFQX1 \change_point_reg[0]  ( .D(n537), .CK(CLK), .Q(change_point[0]) );
  DFFQX1 \se_reg[4][1]  ( .D(n554), .CK(CLK), .Q(R4[1]) );
  DFFQX1 \se_reg[3][2]  ( .D(n550), .CK(CLK), .Q(L2[2]) );
  DFFQX1 \se_reg[3][1]  ( .D(n551), .CK(CLK), .Q(L2[1]) );
  DFFQX1 \se_reg[1][2]  ( .D(n544), .CK(CLK), .Q(L0[2]) );
  DFFQX1 \se_reg[7][1]  ( .D(n563), .CK(CLK), .Q(L6[1]) );
  DFFQX1 \se_reg[5][1]  ( .D(n557), .CK(CLK), .Q(R5[1]) );
  DFFQX1 \se_reg[7][0]  ( .D(n565), .CK(CLK), .Q(L6[0]) );
  DFFQX1 \se_reg[7][2]  ( .D(n562), .CK(CLK), .Q(L6[2]) );
  DFFQX1 \se_reg[6][2]  ( .D(n559), .CK(CLK), .Q(R6[2]) );
  DFFQX1 \se_reg[4][0]  ( .D(n555), .CK(CLK), .Q(R4[0]) );
  DFFQX1 \se_reg[5][2]  ( .D(n556), .CK(CLK), .Q(R5[2]) );
  DFFQX1 \se_reg[2][1]  ( .D(n548), .CK(CLK), .Q(L1[1]) );
  DFFQX1 \se_reg[0][0]  ( .D(n543), .CK(CLK), .Q(R0[0]) );
  DFFQX1 \se_reg[0][1]  ( .D(n542), .CK(CLK), .Q(R0[1]) );
  DFFQX1 \se_reg[2][0]  ( .D(n549), .CK(CLK), .Q(L1[0]) );
  DFFQX1 \se_reg[6][1]  ( .D(n560), .CK(CLK), .Q(R6[1]) );
  DFFQX1 \state_reg[0]  ( .D(n538), .CK(CLK), .Q(state[0]) );
  DFFQX2 \counter_reg[2]  ( .D(N197), .CK(CLK), .Q(counter[2]) );
  DFFX1 \sum_reg_reg[1]  ( .D(n531), .CK(CLK), .Q(sum_reg[1]), .QN(n1065) );
  DFFQX1 \MinCost_reg[5]  ( .D(n513), .CK(CLK), .Q(n1075) );
  DFFQX1 \MinCost_reg[3]  ( .D(n515), .CK(CLK), .Q(n1077) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n521), .CK(CLK), .Q(n1069) );
  DFFQX1 \MinCost_reg[7]  ( .D(n511), .CK(CLK), .Q(n1073) );
  DFFQX1 \MinCost_reg[9]  ( .D(n509), .CK(CLK), .Q(n1071) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n520), .CK(CLK), .Q(n1068) );
  DFFQX1 \MinCost_reg[2]  ( .D(n516), .CK(CLK), .Q(n1078) );
  DFFQX1 \MinCost_reg[1]  ( .D(n517), .CK(CLK), .Q(n1079) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n519), .CK(CLK), .Q(n1067) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n522), .CK(CLK), .Q(n1070) );
  DFFQX2 \change_point_reg[1]  ( .D(n536), .CK(CLK), .Q(change_point[1]) );
  DFFQX2 \state_reg[1]  ( .D(n539), .CK(CLK), .Q(state[1]) );
  DFFQX1 \MinCost_reg[4]  ( .D(n514), .CK(CLK), .Q(n1076) );
  DFFQX1 \MinCost_reg[8]  ( .D(n510), .CK(CLK), .Q(n1072) );
  DFFQX1 \MinCost_reg[6]  ( .D(n512), .CK(CLK), .Q(n1074) );
  DFFQX2 \se_reg[1][1]  ( .D(n545), .CK(CLK), .Q(L0[1]) );
  DFFQX2 \change_point_reg[2]  ( .D(n564), .CK(CLK), .Q(change_point[2]) );
  DFFQX2 \se_reg[2][2]  ( .D(n547), .CK(CLK), .Q(L1[2]) );
  DFFQX2 \se_reg[4][2]  ( .D(n553), .CK(CLK), .Q(R4[2]) );
  DFFQX2 \state_reg[2]  ( .D(n540), .CK(CLK), .Q(state[2]) );
  DFFQX2 \counter_reg[1]  ( .D(N196), .CK(CLK), .Q(counter[1]) );
  DFFQX2 \counter_reg[0]  ( .D(N195), .CK(CLK), .Q(counter[0]) );
  DFFQX1 \MinCost_reg[0]  ( .D(n518), .CK(CLK), .Q(n1080) );
  BUFX12 U582 ( .A(n983), .Y(J[1]) );
  NAND4BBX1 U583 ( .AN(n852), .BN(n841), .C(n850), .D(n839), .Y(n828) );
  AOI222XL U584 ( .A0(n893), .A1(n892), .B0(n893), .B1(n891), .C0(n892), .C1(
        n891), .Y(n895) );
  INVXL U585 ( .A(n853), .Y(n956) );
  NAND2XL U586 ( .A(n944), .B(n909), .Y(n914) );
  NOR2XL U587 ( .A(n744), .B(n760), .Y(n630) );
  AOI211XL U588 ( .A0(counter[2]), .A1(n865), .B0(counter[0]), .C0(n864), .Y(
        n869) );
  NAND2XL U589 ( .A(n630), .B(n785), .Y(n730) );
  INVXL U590 ( .A(n612), .Y(n751) );
  BUFX2 U591 ( .A(n854), .Y(n980) );
  NAND2X1 U592 ( .A(n918), .B(n917), .Y(n926) );
  NOR2X1 U593 ( .A(n957), .B(n956), .Y(n988) );
  NOR2X1 U594 ( .A(n852), .B(n851), .Y(n957) );
  OR2X1 U595 ( .A(n821), .B(n991), .Y(n822) );
  NAND2X1 U596 ( .A(n755), .B(n1025), .Y(n802) );
  NAND2X1 U597 ( .A(n913), .B(n912), .Y(n920) );
  BUFX12 U598 ( .A(n959), .Y(J[0]) );
  NOR2X1 U599 ( .A(n614), .B(n730), .Y(n755) );
  INVX1 U600 ( .A(n891), .Y(n982) );
  INVX1 U601 ( .A(n910), .Y(n915) );
  INVX2 U602 ( .A(n797), .Y(n758) );
  NAND2X1 U603 ( .A(n1032), .B(n834), .Y(n960) );
  CLKBUFX3 U604 ( .A(n591), .Y(n797) );
  INVX2 U605 ( .A(n1030), .Y(n1028) );
  INVX2 U606 ( .A(n772), .Y(n771) );
  INVX2 U607 ( .A(n782), .Y(n791) );
  NAND4X1 U608 ( .A(state[1]), .B(n1032), .C(n669), .D(n906), .Y(n591) );
  INVX1 U609 ( .A(n1080), .Y(n567) );
  INVX2 U610 ( .A(L2[1]), .Y(n935) );
  INVX1 U611 ( .A(state[0]), .Y(n669) );
  INVX2 U612 ( .A(L0[1]), .Y(n1024) );
  INVX2 U613 ( .A(L1[1]), .Y(n1035) );
  INVX1 U614 ( .A(n1076), .Y(n573) );
  INVX2 U615 ( .A(R0[1]), .Y(n1026) );
  INVX2 U616 ( .A(state[2]), .Y(n906) );
  INVX1 U617 ( .A(n1074), .Y(n569) );
  INVX2 U618 ( .A(change_point[2]), .Y(n1005) );
  INVX1 U619 ( .A(n1072), .Y(n571) );
  INVX1 U620 ( .A(search_point[1]), .Y(n1003) );
  INVX1 U621 ( .A(L6[0]), .Y(n872) );
  INVX2 U622 ( .A(R5[0]), .Y(n923) );
  INVX2 U623 ( .A(L0[0]), .Y(n1015) );
  INVX2 U624 ( .A(L2[0]), .Y(n922) );
  INVX1 U625 ( .A(search_point[2]), .Y(n1013) );
  INVX1 U626 ( .A(sum_reg[5]), .Y(n981) );
  INVX2 U627 ( .A(R6[1]), .Y(n865) );
  INVX2 U628 ( .A(R0[0]), .Y(n1016) );
  INVX2 U629 ( .A(R5[2]), .Y(n949) );
  INVX2 U630 ( .A(L0[2]), .Y(n879) );
  INVX2 U631 ( .A(R6[2]), .Y(n877) );
  INVX2 U632 ( .A(R0[2]), .Y(n943) );
  INVX2 U633 ( .A(change_point[0]), .Y(n991) );
  CLKINVX1 U634 ( .A(n604), .Y(n606) );
  NOR2X1 U635 ( .A(n958), .B(n984), .Y(n959) );
  NOR2X1 U636 ( .A(n982), .B(n984), .Y(n983) );
  AOI2BB2X4 U637 ( .B0(n588), .B1(sum_reg[9]), .A0N(n588), .A1N(sum_reg[9]), 
        .Y(n589) );
  ADDHX2 U638 ( .A(sum_reg[8]), .B(n1050), .CO(n588), .S(n1051) );
  OAI2BB2XL U639 ( .B0(n841), .B1(n840), .A0N(n969), .A1N(n1077), .Y(n845) );
  AOI22XL U640 ( .A0(n1078), .A1(n971), .B0(n839), .B1(n838), .Y(n840) );
  NAND2XL U641 ( .A(L2[1]), .B(n776), .Y(n695) );
  NAND2XL U642 ( .A(L2[0]), .B(n858), .Y(n701) );
  NAND2XL U643 ( .A(n998), .B(n992), .Y(n876) );
  NOR2XL U644 ( .A(n647), .B(n606), .Y(n615) );
  OA21X1 U645 ( .A0(n888), .A1(n887), .B0(n955), .Y(n985) );
  NAND2X1 U646 ( .A(state[2]), .B(n815), .Y(n984) );
  NOR2XL U647 ( .A(n797), .B(n718), .Y(n1031) );
  CLKINVX1 U648 ( .A(counter[2]), .Y(n1007) );
  NAND2XL U649 ( .A(n710), .B(n604), .Y(n605) );
  BUFX2 U650 ( .A(n602), .Y(n1025) );
  NAND2XL U651 ( .A(n798), .B(n604), .Y(n602) );
  INVXL U652 ( .A(n835), .Y(n846) );
  INVXL U653 ( .A(n842), .Y(n844) );
  NOR2XL U654 ( .A(n958), .B(n890), .Y(n893) );
  NAND2XL U655 ( .A(L6[2]), .B(n710), .Y(n624) );
  INVXL U656 ( .A(n1011), .Y(n948) );
  INVXL U657 ( .A(n1001), .Y(n946) );
  NOR4XL U658 ( .A(L0[1]), .B(R0[1]), .C(n1035), .D(n872), .Y(n697) );
  CLKINVX1 U659 ( .A(n988), .Y(n1055) );
  NAND2X2 U660 ( .A(n1055), .B(n960), .Y(n978) );
  INVXL U661 ( .A(n737), .Y(n637) );
  AND3X1 U662 ( .A(n630), .B(n1025), .C(n737), .Y(n742) );
  INVXL U663 ( .A(n960), .Y(n823) );
  AOI22XL U664 ( .A0(L1[1]), .A1(n1000), .B0(L0[1]), .B1(n994), .Y(n934) );
  AOI211XL U665 ( .A0(counter[2]), .A1(n886), .B0(n885), .C0(n884), .Y(n955)
         );
  NAND2BX1 U666 ( .AN(n928), .B(n945), .Y(n1006) );
  BUFX2 U667 ( .A(n587), .Y(n1052) );
  BUFX2 U668 ( .A(n586), .Y(n1053) );
  NOR2XL U669 ( .A(RST), .B(n815), .Y(n586) );
  BUFX2 U670 ( .A(n603), .Y(n784) );
  INVXL U671 ( .A(n614), .Y(n603) );
  INVXL U672 ( .A(n1037), .Y(n757) );
  OAI211XL U673 ( .A0(n1021), .A1(n1034), .B0(n1020), .C0(n1032), .Y(n1022) );
  OAI211XL U674 ( .A0(n1035), .A1(n1034), .B0(n1033), .C0(n1032), .Y(n1036) );
  INVXL U675 ( .A(n727), .Y(n646) );
  INVXL U676 ( .A(n798), .Y(n626) );
  INVXL U677 ( .A(n919), .Y(n927) );
  NOR4XL U678 ( .A(R5[1]), .B(n865), .C(n695), .D(n694), .Y(n698) );
  NAND2BX1 U679 ( .AN(n1078), .B(sum_reg[2]), .Y(n839) );
  NOR2XL U680 ( .A(n1077), .B(n969), .Y(n841) );
  NOR2XL U681 ( .A(MinCost[9]), .B(n977), .Y(n852) );
  OAI22XL U682 ( .A0(n1075), .A1(n981), .B0(MinCost[4]), .B1(n975), .Y(n835)
         );
  OAI22XL U683 ( .A0(MinCost[6]), .A1(n964), .B0(MinCost[7]), .B1(n962), .Y(
        n847) );
  OAI2BB2XL U684 ( .B0(n848), .B1(n847), .A0N(n962), .A1N(MinCost[7]), .Y(n849) );
  NOR2XL U685 ( .A(n1035), .B(n645), .Y(n652) );
  INVXL U686 ( .A(n709), .Y(n640) );
  NAND3XL U687 ( .A(n915), .B(n689), .C(n690), .Y(n685) );
  NAND2XL U688 ( .A(n1007), .B(n992), .Y(n883) );
  OR2X2 U689 ( .A(n874), .B(counter[2]), .Y(n880) );
  NAND3XL U690 ( .A(counter[1]), .B(counter[2]), .C(n992), .Y(n878) );
  NAND2XL U691 ( .A(counter[0]), .B(n998), .Y(n874) );
  NAND3XL U692 ( .A(n907), .B(n906), .C(n905), .Y(n909) );
  INVXL U693 ( .A(n902), .Y(n903) );
  OAI211XL U694 ( .A0(n898), .A1(value[2]), .B0(n897), .C0(n896), .Y(n928) );
  AOI222XL U695 ( .A0(n985), .A1(n895), .B0(n985), .B1(n894), .C0(n895), .C1(
        n894), .Y(n897) );
  INVXL U696 ( .A(n889), .Y(n958) );
  NOR2XL U697 ( .A(n927), .B(n682), .Y(n689) );
  AOI211XL U698 ( .A0(R0[1]), .A1(n744), .B0(RST), .C0(n743), .Y(n745) );
  INVXL U699 ( .A(sum_reg[0]), .Y(n973) );
  INVXL U700 ( .A(sum_reg[4]), .Y(n975) );
  INVXL U701 ( .A(n907), .Y(n706) );
  OAI22XL U702 ( .A0(R6[0]), .A1(n672), .B0(R6[1]), .B1(n936), .Y(n673) );
  NAND2XL U703 ( .A(n921), .B(n917), .Y(n682) );
  INVXL U704 ( .A(n908), .Y(n690) );
  OAI211XL U705 ( .A0(MinCost[0]), .A1(n973), .B0(n830), .C0(n829), .Y(n832)
         );
  NAND2XL U706 ( .A(sum_reg[1]), .B(n837), .Y(n829) );
  NOR3XL U707 ( .A(n835), .B(n847), .C(n828), .Y(n830) );
  NOR2XL U708 ( .A(n990), .B(n989), .Y(n1054) );
  CLKINVX1 U709 ( .A(R5[1]), .Y(n936) );
  NAND2XL U710 ( .A(n758), .B(n709), .Y(n719) );
  AOI211XL U711 ( .A0(R0[2]), .A1(n744), .B0(RST), .C0(n722), .Y(n723) );
  NAND2XL U712 ( .A(n755), .B(n1037), .Y(n1038) );
  INVXL U713 ( .A(n921), .Y(n911) );
  NAND2XL U714 ( .A(n815), .B(n906), .Y(n824) );
  NOR2XL U715 ( .A(n929), .B(n685), .Y(n819) );
  ADDHXL U716 ( .A(sum_reg[0]), .B(Cost[0]), .CO(n665), .S(n1039) );
  ADDFXL U717 ( .A(Cost[4]), .B(sum_reg[4]), .CI(n707), .CO(n1044), .S(n708)
         );
  BUFX2 U718 ( .A(n593), .Y(n654) );
  NOR3XL U719 ( .A(n996), .B(search_point[1]), .C(search_point[2]), .Y(n610)
         );
  BUFX2 U720 ( .A(n590), .Y(n748) );
  INVXL U721 ( .A(n610), .Y(n590) );
  NAND4BX1 U722 ( .AN(state[0]), .B(state[1]), .C(state[2]), .D(n856), .Y(n857) );
  OR2X2 U723 ( .A(n985), .B(n984), .Y(n986) );
  NOR2XL U724 ( .A(n998), .B(n984), .Y(n826) );
  NOR2XL U725 ( .A(n1007), .B(n984), .Y(n827) );
  NAND3XL U726 ( .A(n1032), .B(n818), .C(n817), .Y(n540) );
  NOR4XL U727 ( .A(RST), .B(n629), .C(n628), .D(n627), .Y(n631) );
  AOI211XL U728 ( .A0(n689), .A1(n929), .B0(n910), .C0(n688), .Y(n691) );
  OAI211XL U729 ( .A0(n973), .A1(n980), .B0(n1032), .C0(n972), .Y(n518) );
  OAI211XL U730 ( .A0(n964), .A1(n980), .B0(n1032), .C0(n963), .Y(n512) );
  OAI211XL U731 ( .A0(n966), .A1(n980), .B0(n1032), .C0(n965), .Y(n510) );
  NAND2XL U732 ( .A(MinCost[8]), .B(n978), .Y(n965) );
  OAI211XL U733 ( .A0(n975), .A1(n980), .B0(n1032), .C0(n974), .Y(n514) );
  NAND2XL U734 ( .A(MinCost[4]), .B(n978), .Y(n974) );
  AOI21XL U735 ( .A0(n690), .A1(n686), .B0(n819), .Y(n687) );
  NAND2XL U736 ( .A(n855), .B(n980), .Y(n522) );
  NAND2XL U737 ( .A(MinCost[9]), .B(n978), .Y(n976) );
  NAND2XL U738 ( .A(MinCost[7]), .B(n978), .Y(n961) );
  NAND2XL U739 ( .A(MinCost[3]), .B(n978), .Y(n968) );
  INVXL U740 ( .A(n1052), .Y(n668) );
  NOR3XL U741 ( .A(n899), .B(n900), .C(n814), .Y(N196) );
  NOR4XL U742 ( .A(RST), .B(n635), .C(n634), .D(n633), .Y(n636) );
  NOR4XL U743 ( .A(RST), .B(n779), .C(n778), .D(n777), .Y(n780) );
  OAI211XL U744 ( .A0(n943), .A1(n784), .B0(n769), .C0(n1032), .Y(n770) );
  OAI211XL U745 ( .A0(n825), .A1(n824), .B0(n823), .C0(n822), .Y(n537) );
  AOI211XL U746 ( .A0(n915), .A1(n820), .B0(n908), .C0(n819), .Y(n825) );
  NOR4XL U747 ( .A(n1001), .B(n1000), .C(n1010), .D(n999), .Y(n1002) );
  NOR4XL U748 ( .A(n1001), .B(n994), .C(n1011), .D(n993), .Y(n995) );
  OAI211XL U749 ( .A0(n941), .A1(n1006), .B0(n940), .C0(n939), .Y(n534) );
  AOI22XL U750 ( .A0(R6[1]), .A1(n1010), .B0(value[1]), .B1(n952), .Y(n939) );
  AOI211XL U751 ( .A0(R4[1]), .A1(n1009), .B0(n938), .C0(n937), .Y(n940) );
  OAI211XL U752 ( .A0(n933), .A1(n1006), .B0(n932), .C0(n931), .Y(n535) );
  AOI22XL U753 ( .A0(R6[0]), .A1(n1010), .B0(value[0]), .B1(n952), .Y(n931) );
  AOI211XL U754 ( .A0(R4[0]), .A1(n1009), .B0(n925), .C0(n924), .Y(n932) );
  AOI22XL U755 ( .A0(R6[2]), .A1(n1010), .B0(value[2]), .B1(n952), .Y(n953) );
  AO22X1 U756 ( .A0(sum_reg[9]), .A1(n1053), .B0(n1052), .B1(n589), .Y(n523)
         );
  NOR4XL U757 ( .A(RST), .B(n763), .C(n762), .D(n761), .Y(n764) );
  AOI211XL U758 ( .A0(n1018), .A1(n654), .B0(RST), .C0(n613), .Y(n616) );
  AOI211XL U759 ( .A0(n1018), .A1(n771), .B0(n729), .C0(n728), .Y(n731) );
  INVXL U760 ( .A(n1018), .Y(n632) );
  AOI21XL U761 ( .A0(n800), .A1(n654), .B0(n638), .Y(n639) );
  AOI211XL U762 ( .A0(n800), .A1(n748), .B0(n725), .C0(n724), .Y(n726) );
  AOI211XL U763 ( .A0(n800), .A1(n1028), .B0(n754), .C0(n753), .Y(n756) );
  INVXL U764 ( .A(n800), .Y(n766) );
  AOI22XL U765 ( .A0(L1[0]), .A1(n1000), .B0(L0[0]), .B1(n994), .Y(n916) );
  AOI211XL U766 ( .A0(L1[0]), .A1(n623), .B0(n599), .C0(n598), .Y(n601) );
  NAND2X2 U767 ( .A(n727), .B(n604), .Y(n785) );
  OAI22XL U768 ( .A0(n883), .A1(n860), .B0(n881), .B1(n922), .Y(n861) );
  AOI222X1 U769 ( .A0(R4[2]), .A1(n949), .B0(R4[2]), .B1(n676), .C0(n949), 
        .C1(n676), .Y(n917) );
  AOI211XL U770 ( .A0(R4[2]), .A1(n1009), .B0(n951), .C0(n950), .Y(n954) );
  AOI211XL U771 ( .A0(n1018), .A1(n791), .B0(n788), .C0(n787), .Y(n789) );
  AOI211XL U772 ( .A0(L1[2]), .A1(n623), .B0(n622), .C0(n621), .Y(n625) );
  NAND3XL U773 ( .A(n648), .B(n748), .C(n758), .Y(n612) );
  AND3X1 U774 ( .A(n647), .B(n654), .C(n758), .Y(n657) );
  NAND2XL U775 ( .A(n710), .B(n758), .Y(n721) );
  NAND2XL U776 ( .A(n1032), .B(n711), .Y(n592) );
  NAND2XL U777 ( .A(n1032), .B(n906), .Y(n705) );
  INVX4 U778 ( .A(RST), .Y(n1032) );
  INVX16 U779 ( .A(n567), .Y(MinCost[0]) );
  INVX16 U780 ( .A(n569), .Y(MinCost[6]) );
  INVX16 U781 ( .A(n571), .Y(MinCost[8]) );
  INVX16 U782 ( .A(n573), .Y(MinCost[4]) );
  AOI21XL U783 ( .A0(n1029), .A1(n654), .B0(n653), .Y(n656) );
  AOI211XL U784 ( .A0(n1029), .A1(n810), .B0(n809), .C0(n808), .Y(n812) );
  AOI211XL U785 ( .A0(n1029), .A1(n771), .B0(n733), .C0(n732), .Y(n734) );
  AOI211XL U786 ( .A0(n1029), .A1(n748), .B0(n747), .C0(n746), .Y(n750) );
  INVXL U787 ( .A(n1029), .Y(n781) );
  BUFX12 U788 ( .A(n1066), .Y(W[0]) );
  NOR2XL U789 ( .A(n992), .B(n984), .Y(n1066) );
  NAND3XL U790 ( .A(n691), .B(n912), .C(n690), .Y(n692) );
  AOI222X4 U791 ( .A0(L1[2]), .A1(n947), .B0(L1[2]), .B1(n680), .C0(n947), 
        .C1(n680), .Y(n912) );
  CLKINVX1 U792 ( .A(change_point[1]), .Y(n997) );
  NAND3XL U793 ( .A(n1005), .B(n991), .C(change_point[1]), .Y(n645) );
  INVX12 U794 ( .A(n831), .Y(MatchCount[0]) );
  AOI211XL U795 ( .A0(n1070), .A1(n834), .B0(RST), .C0(n833), .Y(n855) );
  BUFX16 U796 ( .A(n1067), .Y(MatchCount[3]) );
  NAND2XL U797 ( .A(MatchCount[3]), .B(n1056), .Y(n1057) );
  INVX12 U798 ( .A(n837), .Y(MinCost[1]) );
  NAND2XL U799 ( .A(MinCost[1]), .B(n978), .Y(n967) );
  CLKINVX1 U800 ( .A(n1079), .Y(n837) );
  BUFX12 U801 ( .A(n1078), .Y(MinCost[2]) );
  NAND2XL U802 ( .A(MinCost[2]), .B(n978), .Y(n970) );
  INVX12 U803 ( .A(n1059), .Y(MatchCount[2]) );
  OAI22XL U804 ( .A0(n1068), .A1(n1058), .B0(n1059), .B1(n1054), .Y(n520) );
  BUFX16 U805 ( .A(n1071), .Y(MinCost[9]) );
  OAI211XL U806 ( .A0(n977), .A1(n980), .B0(n1032), .C0(n976), .Y(n509) );
  BUFX16 U807 ( .A(n1073), .Y(MinCost[7]) );
  OAI211XL U808 ( .A0(n962), .A1(n980), .B0(n1032), .C0(n961), .Y(n511) );
  BUFX16 U809 ( .A(n1069), .Y(MatchCount[1]) );
  AO22X1 U810 ( .A0(MatchCount[1]), .A1(n989), .B0(n990), .B1(n987), .Y(n521)
         );
  NOR2XL U811 ( .A(MatchCount[1]), .B(n1055), .Y(n990) );
  NAND3XL U812 ( .A(n988), .B(MatchCount[1]), .C(n987), .Y(n1058) );
  BUFX12 U813 ( .A(n1077), .Y(MinCost[3]) );
  OAI211XL U814 ( .A0(n969), .A1(n980), .B0(n1032), .C0(n968), .Y(n515) );
  BUFX12 U815 ( .A(n1075), .Y(MinCost[5]) );
  OAI211XL U816 ( .A0(n981), .A1(n980), .B0(n1032), .C0(n979), .Y(n513) );
  OAI22XL U817 ( .A0(sum_reg[1]), .A1(n837), .B0(sum_reg[0]), .B1(n836), .Y(
        n838) );
  OAI211XL U818 ( .A0(n981), .A1(n1075), .B0(n975), .C0(MinCost[4]), .Y(n842)
         );
  AO22X1 U819 ( .A0(n964), .A1(MinCost[6]), .B0(n981), .B1(n1075), .Y(n843) );
  AOI211XL U820 ( .A0(n846), .A1(n845), .B0(n844), .C0(n843), .Y(n848) );
  NAND4XL U821 ( .A(R4[2]), .B(R5[2]), .C(n947), .D(n879), .Y(n694) );
  INVXL U822 ( .A(n645), .Y(n623) );
  NOR4XL U823 ( .A(R0[2]), .B(L1[2]), .C(n871), .D(n877), .Y(n696) );
  NOR4XL U824 ( .A(L1[0]), .B(R0[0]), .C(R6[0]), .D(n887), .Y(n699) );
  NAND2XL U825 ( .A(L6[0]), .B(n710), .Y(n600) );
  NOR2XL U826 ( .A(n752), .B(n606), .Y(n614) );
  AOI22XL U827 ( .A0(L1[2]), .A1(n1000), .B0(L0[2]), .B1(n994), .Y(n942) );
  NAND4XL U828 ( .A(n699), .B(n698), .C(n697), .D(n696), .Y(n700) );
  INVXL U829 ( .A(n702), .Y(n816) );
  NAND3XL U830 ( .A(n645), .B(n735), .C(n758), .Y(n737) );
  OAI211XL U831 ( .A0(n923), .A1(n626), .B0(n601), .C0(n600), .Y(n890) );
  NAND2XL U832 ( .A(n957), .B(n853), .Y(n854) );
  AOI21XL U833 ( .A0(n867), .A1(n866), .B0(counter[1]), .Y(n868) );
  NOR2XL U834 ( .A(n984), .B(RST), .Y(n587) );
  AOI211XL U835 ( .A0(R0[0]), .A1(n744), .B0(n608), .C0(n607), .Y(n609) );
  NAND2XL U836 ( .A(MinCost[0]), .B(n978), .Y(n972) );
  INVXL U837 ( .A(n876), .Y(n899) );
  INVX2 U838 ( .A(L2[2]), .Y(n947) );
  NAND2XL U839 ( .A(MinCost[5]), .B(n978), .Y(n979) );
  NAND2XL U840 ( .A(MinCost[6]), .B(n978), .Y(n963) );
  NOR4XL U841 ( .A(n1011), .B(n1010), .C(n1009), .D(n1008), .Y(n1012) );
  ADDFXL U842 ( .A(Cost[2]), .B(sum_reg[2]), .CI(n1040), .CO(n1042), .S(n1041)
         );
  NOR2XL U843 ( .A(counter[0]), .B(n814), .Y(N195) );
  OAI211XL U844 ( .A0(n1065), .A1(n980), .B0(n1032), .C0(n967), .Y(n517) );
  OAI211XL U845 ( .A0(n971), .A1(n980), .B0(n1032), .C0(n970), .Y(n516) );
  OAI211XL U846 ( .A0(n955), .A1(n1006), .B0(n954), .C0(n953), .Y(n533) );
  NOR2X1 U847 ( .A(state[1]), .B(state[0]), .Y(n815) );
  NOR3X1 U848 ( .A(n997), .B(n991), .C(change_point[2]), .Y(n727) );
  NAND3XL U849 ( .A(state[0]), .B(state[1]), .C(n906), .Y(n818) );
  NOR2X1 U850 ( .A(RST), .B(n818), .Y(n604) );
  NAND3X1 U851 ( .A(change_point[0]), .B(n1005), .C(n997), .Y(n648) );
  CLKINVX1 U852 ( .A(search_point[0]), .Y(n996) );
  NAND2XL U853 ( .A(state[1]), .B(n906), .Y(n711) );
  OAI31X1 U854 ( .A0(change_point[2]), .A1(change_point[1]), .A2(n606), .B0(
        n592), .Y(n760) );
  NOR3BX1 U855 ( .AN(n785), .B(n751), .C(n760), .Y(n749) );
  NOR3X1 U856 ( .A(search_point[0]), .B(search_point[1]), .C(search_point[2]), 
        .Y(n782) );
  OAI22XL U857 ( .A0(n1016), .A1(n791), .B0(n1015), .B1(n748), .Y(n597) );
  NOR3X1 U858 ( .A(n1003), .B(n996), .C(search_point[2]), .Y(n772) );
  CLKINVX1 U859 ( .A(L1[0]), .Y(n1021) );
  NOR3X1 U860 ( .A(n1003), .B(search_point[0]), .C(search_point[2]), .Y(n736)
         );
  CLKINVX1 U861 ( .A(n736), .Y(n735) );
  OAI22XL U862 ( .A0(n922), .A1(n771), .B0(n1021), .B1(n735), .Y(n596) );
  NOR3X1 U863 ( .A(n996), .B(n1013), .C(search_point[1]), .Y(n805) );
  CLKINVX1 U864 ( .A(n805), .Y(n810) );
  CLKINVX1 U865 ( .A(R4[0]), .Y(n858) );
  NOR3X1 U866 ( .A(n1013), .B(search_point[0]), .C(search_point[1]), .Y(n1030)
         );
  OAI22XL U867 ( .A0(n923), .A1(n810), .B0(n858), .B1(n1028), .Y(n595) );
  NOR3X1 U868 ( .A(n996), .B(n1003), .C(n1013), .Y(n709) );
  CLKINVX1 U869 ( .A(R6[0]), .Y(n859) );
  NAND3XL U870 ( .A(n996), .B(search_point[1]), .C(search_point[2]), .Y(n593)
         );
  OAI22XL U871 ( .A0(n872), .A1(n640), .B0(n859), .B1(n654), .Y(n594) );
  NOR4X1 U872 ( .A(n597), .B(n596), .C(n595), .D(n594), .Y(n714) );
  NOR2X1 U873 ( .A(n714), .B(n797), .Y(n1018) );
  NOR2X1 U874 ( .A(change_point[1]), .B(change_point[0]), .Y(n901) );
  NAND2X1 U875 ( .A(n901), .B(n1005), .Y(n759) );
  NOR3X1 U876 ( .A(n1005), .B(n991), .C(change_point[1]), .Y(n798) );
  NAND3X1 U877 ( .A(change_point[1]), .B(change_point[2]), .C(n991), .Y(n647)
         );
  OAI22XL U878 ( .A0(n922), .A1(n646), .B0(n859), .B1(n647), .Y(n599) );
  NAND2X1 U879 ( .A(change_point[2]), .B(n901), .Y(n752) );
  OAI22XL U880 ( .A0(n858), .A1(n752), .B0(n1015), .B1(n648), .Y(n598) );
  NOR3X2 U881 ( .A(n1005), .B(n997), .C(n991), .Y(n710) );
  AOI2BB1X1 U882 ( .A0N(n1016), .A1N(n759), .B0(n890), .Y(n713) );
  NOR2X1 U883 ( .A(n797), .B(n713), .Y(n1019) );
  CLKINVX1 U884 ( .A(n1019), .Y(n790) );
  NAND2X1 U885 ( .A(n623), .B(n604), .Y(n786) );
  CLKINVX1 U886 ( .A(n786), .Y(n744) );
  OAI22XL U887 ( .A0(n922), .A1(n1025), .B0(n1021), .B1(n784), .Y(n608) );
  CLKBUFX3 U888 ( .A(n605), .Y(n1034) );
  INVX3 U889 ( .A(n615), .Y(n1023) );
  OAI22XL U890 ( .A0(n923), .A1(n1034), .B0(n858), .B1(n1023), .Y(n607) );
  OAI221XL U891 ( .A0(n610), .A1(n632), .B0(n748), .B1(n790), .C0(n609), .Y(
        n611) );
  OAI2BB2XL U892 ( .B0(n749), .B1(n1015), .A0N(n612), .A1N(n611), .Y(n546) );
  OAI22XL U893 ( .A0(n1016), .A1(n1034), .B0(n654), .B1(n790), .Y(n613) );
  NOR3X1 U894 ( .A(n615), .B(n657), .C(n802), .Y(n655) );
  OAI22XL U895 ( .A0(n657), .A1(n616), .B0(n655), .B1(n859), .Y(n561) );
  OAI22XL U896 ( .A0(n943), .A1(n785), .B0(n879), .B1(n784), .Y(n629) );
  CLKINVX1 U897 ( .A(R4[2]), .Y(n875) );
  OAI22XL U898 ( .A0(n875), .A1(n1034), .B0(n947), .B1(n1023), .Y(n628) );
  CLKINVX1 U899 ( .A(L6[2]), .Y(n887) );
  OAI22XL U900 ( .A0(n877), .A1(n654), .B0(n887), .B1(n640), .Y(n620) );
  OAI22XL U901 ( .A0(n949), .A1(n810), .B0(n875), .B1(n1028), .Y(n619) );
  CLKINVX1 U902 ( .A(L1[2]), .Y(n768) );
  OAI22XL U903 ( .A0(n947), .A1(n771), .B0(n768), .B1(n735), .Y(n618) );
  OAI22XL U904 ( .A0(n943), .A1(n791), .B0(n879), .B1(n748), .Y(n617) );
  NOR4X1 U905 ( .A(n620), .B(n619), .C(n618), .D(n617), .Y(n716) );
  NOR2X1 U906 ( .A(n716), .B(n797), .Y(n800) );
  OAI22XL U907 ( .A0(n947), .A1(n646), .B0(n877), .B1(n647), .Y(n622) );
  OAI22XL U908 ( .A0(n875), .A1(n752), .B0(n879), .B1(n648), .Y(n621) );
  OAI211X1 U909 ( .A0(n626), .A1(n949), .B0(n625), .C0(n624), .Y(n894) );
  AOI2BB1X1 U910 ( .A0N(n943), .A1N(n759), .B0(n894), .Y(n715) );
  NOR2X1 U911 ( .A(n797), .B(n715), .Y(n801) );
  CLKINVX1 U912 ( .A(n801), .Y(n765) );
  OAI22XL U913 ( .A0(n736), .A1(n766), .B0(n735), .B1(n765), .Y(n627) );
  OAI22XL U914 ( .A0(n637), .A1(n631), .B0(n742), .B1(n768), .Y(n547) );
  OAI22XL U915 ( .A0(n1016), .A1(n785), .B0(n1015), .B1(n784), .Y(n635) );
  OAI22XL U916 ( .A0(n858), .A1(n1034), .B0(n922), .B1(n1023), .Y(n634) );
  OAI22XL U917 ( .A0(n736), .A1(n632), .B0(n735), .B1(n790), .Y(n633) );
  OAI22XL U918 ( .A0(n637), .A1(n636), .B0(n742), .B1(n1021), .Y(n549) );
  OAI22XL U919 ( .A0(n943), .A1(n1034), .B0(n654), .B1(n765), .Y(n638) );
  OAI22XL U920 ( .A0(n657), .A1(n639), .B0(n655), .B1(n877), .Y(n559) );
  CLKINVX1 U921 ( .A(L6[1]), .Y(n871) );
  OAI22XL U922 ( .A0(n871), .A1(n640), .B0(n865), .B1(n654), .Y(n644) );
  CLKINVX1 U923 ( .A(R4[1]), .Y(n776) );
  OAI22XL U924 ( .A0(n936), .A1(n810), .B0(n776), .B1(n1028), .Y(n643) );
  OAI22XL U925 ( .A0(n1035), .A1(n735), .B0(n935), .B1(n771), .Y(n642) );
  OAI22XL U926 ( .A0(n1026), .A1(n791), .B0(n1024), .B1(n748), .Y(n641) );
  NOR4X1 U927 ( .A(n644), .B(n643), .C(n642), .D(n641), .Y(n720) );
  NOR2X1 U928 ( .A(n720), .B(n797), .Y(n1029) );
  OAI22XL U929 ( .A0(n865), .A1(n647), .B0(n935), .B1(n646), .Y(n651) );
  AO22X1 U930 ( .A0(R5[1]), .A1(n798), .B0(L6[1]), .B1(n710), .Y(n650) );
  OAI22XL U931 ( .A0(n776), .A1(n752), .B0(n1024), .B1(n648), .Y(n649) );
  NOR4X1 U932 ( .A(n652), .B(n651), .C(n650), .D(n649), .Y(n892) );
  OA21XL U933 ( .A0(n1026), .A1(n759), .B0(n892), .Y(n718) );
  CLKINVX1 U934 ( .A(n1031), .Y(n807) );
  OAI22XL U935 ( .A0(n1026), .A1(n1034), .B0(n654), .B1(n807), .Y(n653) );
  OAI22XL U936 ( .A0(n657), .A1(n656), .B0(n655), .B1(n865), .Y(n560) );
  INVX3 U937 ( .A(counter[1]), .Y(n998) );
  INVX3 U938 ( .A(counter[0]), .Y(n992) );
  NOR2X2 U939 ( .A(n998), .B(n992), .Y(n900) );
  NAND2X1 U940 ( .A(n900), .B(n1007), .Y(n881) );
  NOR2XL U941 ( .A(counter[2]), .B(n901), .Y(n663) );
  OAI22XL U942 ( .A0(counter[1]), .A1(change_point[1]), .B0(n998), .B1(n997), 
        .Y(n660) );
  NAND2XL U943 ( .A(change_point[1]), .B(n998), .Y(n658) );
  OAI31XL U944 ( .A0(counter[2]), .A1(change_point[1]), .A2(n998), .B0(n658), 
        .Y(n659) );
  AOI33XL U945 ( .A0(change_point[0]), .A1(n660), .A2(n992), .B0(counter[0]), 
        .B1(n659), .B2(n991), .Y(n662) );
  NOR2XL U946 ( .A(change_point[2]), .B(n663), .Y(n661) );
  AOI211X1 U947 ( .A0(change_point[2]), .A1(n663), .B0(n662), .C0(n661), .Y(
        n693) );
  OAI32XL U948 ( .A0(state[2]), .A1(n693), .A2(n669), .B0(state[0]), .B1(n906), 
        .Y(n664) );
  NAND3BX1 U949 ( .AN(state[1]), .B(n664), .C(n1032), .Y(n814) );
  AOI221XL U950 ( .A0(n900), .A1(n881), .B0(n1007), .B1(n881), .C0(n814), .Y(
        N197) );
  ADDFXL U951 ( .A(Cost[1]), .B(sum_reg[1]), .CI(n665), .CO(n1040), .S(n666)
         );
  AO22X1 U952 ( .A0(sum_reg[1]), .A1(n1053), .B0(n1052), .B1(n666), .Y(n531)
         );
  NAND2X1 U953 ( .A(counter[2]), .B(n900), .Y(n888) );
  OA21XL U954 ( .A0(state[1]), .A1(n693), .B0(state[0]), .Y(n667) );
  NAND3XL U955 ( .A(state[1]), .B(state[2]), .C(n1032), .Y(n702) );
  OAI222XL U956 ( .A0(n668), .A1(n888), .B0(n705), .B1(n667), .C0(n669), .C1(
        n702), .Y(n538) );
  NOR2X1 U957 ( .A(state[1]), .B(n669), .Y(n907) );
  NAND2XL U958 ( .A(n907), .B(state[2]), .Y(n834) );
  NAND2BX1 U959 ( .AN(n705), .B(n815), .Y(n688) );
  AOI2BB2X1 U960 ( .B0(n1035), .B1(L0[1]), .A0N(L1[0]), .A1N(n1015), .Y(n671)
         );
  OAI22XL U961 ( .A0(L0[1]), .A1(n1035), .B0(L0[2]), .B1(n768), .Y(n670) );
  OAI22X1 U962 ( .A0(n671), .A1(n670), .B0(L1[2]), .B1(n879), .Y(n910) );
  OAI21XL U963 ( .A0(R5[1]), .A1(n865), .B0(R5[0]), .Y(n672) );
  AOI222X1 U964 ( .A0(R5[2]), .A1(n877), .B0(R5[2]), .B1(n673), .C0(n877), 
        .C1(n673), .Y(n919) );
  AOI222XL U965 ( .A0(n701), .A1(n695), .B0(n947), .B1(R4[2]), .C0(n935), .C1(
        R4[1]), .Y(n674) );
  AOI2BB1X1 U966 ( .A0N(n947), .A1N(R4[2]), .B0(n674), .Y(n921) );
  OAI21XL U967 ( .A0(R4[1]), .A1(n936), .B0(R4[0]), .Y(n675) );
  OAI22XL U968 ( .A0(R5[0]), .A1(n675), .B0(R5[1]), .B1(n776), .Y(n676) );
  OAI21XL U969 ( .A0(R0[1]), .A1(n1024), .B0(R0[0]), .Y(n677) );
  OA22X1 U970 ( .A0(n1026), .A1(L0[1]), .B0(L0[0]), .B1(n677), .Y(n678) );
  AOI222X1 U971 ( .A0(L0[2]), .A1(n678), .B0(L0[2]), .B1(n943), .C0(n678), 
        .C1(n943), .Y(n908) );
  OAI21XL U972 ( .A0(L1[1]), .A1(n935), .B0(L1[0]), .Y(n679) );
  OAI22XL U973 ( .A0(L2[1]), .A1(n1035), .B0(L2[0]), .B1(n679), .Y(n680) );
  NAND2BX1 U974 ( .AN(n685), .B(n912), .Y(n681) );
  AOI2BB2X1 U975 ( .B0(n824), .B1(n823), .A0N(n688), .A1N(n681), .Y(n821) );
  OAI211XL U976 ( .A0(n919), .A1(n682), .B0(n915), .C0(n912), .Y(n686) );
  AOI2BB2X1 U977 ( .B0(L6[2]), .B1(n877), .A0N(n871), .A1N(R6[1]), .Y(n684) );
  OAI22XL U978 ( .A0(L6[0]), .A1(n859), .B0(L6[1]), .B1(n865), .Y(n683) );
  AOI22X1 U979 ( .A0(n684), .A1(n683), .B0(n887), .B1(R6[2]), .Y(n929) );
  OAI22XL U980 ( .A0(n821), .A1(n997), .B0(n687), .B1(n688), .Y(n536) );
  OAI21XL U981 ( .A0(n821), .A1(n1005), .B0(n692), .Y(n564) );
  INVXL U982 ( .A(n693), .Y(n704) );
  NOR3X1 U983 ( .A(n706), .B(n906), .C(RST), .Y(n853) );
  NOR4X1 U984 ( .A(n923), .B(n1015), .C(n701), .D(n700), .Y(n856) );
  AOI211XL U985 ( .A0(n853), .A1(n856), .B0(n816), .C0(n758), .Y(n703) );
  OAI31XL U986 ( .A0(n706), .A1(n705), .A2(n704), .B0(n703), .Y(n539) );
  AO22X1 U987 ( .A0(sum_reg[4]), .A1(n1053), .B0(n1052), .B1(n708), .Y(n528)
         );
  NOR2XL U988 ( .A(n710), .B(n709), .Y(n712) );
  OAI31X1 U989 ( .A0(n712), .A1(state[0]), .A2(n711), .B0(n1032), .Y(n717) );
  OAI222XL U990 ( .A0(n721), .A1(n714), .B0(n719), .B1(n713), .C0(n872), .C1(
        n717), .Y(n565) );
  OAI222XL U991 ( .A0(n721), .A1(n716), .B0(n719), .B1(n715), .C0(n887), .C1(
        n717), .Y(n562) );
  OAI222XL U992 ( .A0(n721), .A1(n720), .B0(n719), .B1(n718), .C0(n871), .C1(
        n717), .Y(n563) );
  OAI22XL U993 ( .A0(n875), .A1(n1023), .B0(n768), .B1(n784), .Y(n725) );
  OAI22XL U994 ( .A0(n949), .A1(n1034), .B0(n947), .B1(n1025), .Y(n722) );
  OAI21XL U995 ( .A0(n748), .A1(n765), .B0(n723), .Y(n724) );
  OAI22XL U996 ( .A0(n751), .A1(n726), .B0(n749), .B1(n879), .Y(n544) );
  NOR3X1 U997 ( .A(n727), .B(n772), .C(n797), .Y(n775) );
  OAI22XL U998 ( .A0(n1021), .A1(n1023), .B0(n1015), .B1(n1025), .Y(n729) );
  OAI22XL U999 ( .A0(n1016), .A1(n784), .B0(n771), .B1(n790), .Y(n728) );
  NOR3BX1 U1000 ( .AN(n1034), .B(n775), .C(n730), .Y(n773) );
  OAI22XL U1001 ( .A0(n775), .A1(n731), .B0(n773), .B1(n922), .Y(n552) );
  OAI22XL U1002 ( .A0(n1035), .A1(n1023), .B0(n1024), .B1(n1025), .Y(n733) );
  OAI22XL U1003 ( .A0(n1026), .A1(n784), .B0(n771), .B1(n807), .Y(n732) );
  OAI22XL U1004 ( .A0(n775), .A1(n734), .B0(n773), .B1(n935), .Y(n551) );
  OAI22XL U1005 ( .A0(n1026), .A1(n785), .B0(n1024), .B1(n784), .Y(n740) );
  OAI22XL U1006 ( .A0(n776), .A1(n1034), .B0(n935), .B1(n1023), .Y(n739) );
  OAI22XL U1007 ( .A0(n736), .A1(n781), .B0(n735), .B1(n807), .Y(n738) );
  OAI31XL U1008 ( .A0(n740), .A1(n739), .A2(n738), .B0(n737), .Y(n741) );
  OAI21XL U1009 ( .A0(n742), .A1(n1035), .B0(n741), .Y(n548) );
  OAI22XL U1010 ( .A0(n1035), .A1(n784), .B0(n776), .B1(n1023), .Y(n747) );
  OAI22XL U1011 ( .A0(n936), .A1(n1034), .B0(n935), .B1(n1025), .Y(n743) );
  OAI21XL U1012 ( .A0(n748), .A1(n807), .B0(n745), .Y(n746) );
  OAI22XL U1013 ( .A0(n751), .A1(n750), .B0(n749), .B1(n1024), .Y(n545) );
  NAND3X1 U1014 ( .A(n758), .B(n752), .C(n1028), .Y(n1037) );
  OAI22XL U1015 ( .A0(n768), .A1(n1034), .B0(n879), .B1(n1023), .Y(n754) );
  OAI22XL U1016 ( .A0(n943), .A1(n1025), .B0(n1028), .B1(n765), .Y(n753) );
  OAI2BB2XL U1017 ( .B0(n757), .B1(n756), .A0N(n1038), .A1N(R4[2]), .Y(n553)
         );
  NAND3X1 U1018 ( .A(n791), .B(n759), .C(n758), .Y(n792) );
  NOR2BX1 U1019 ( .AN(n792), .B(n760), .Y(n796) );
  OAI22XL U1020 ( .A0(n947), .A1(n784), .B0(n877), .B1(n1034), .Y(n763) );
  OAI22XL U1021 ( .A0(n949), .A1(n1023), .B0(n768), .B1(n785), .Y(n762) );
  OAI22XL U1022 ( .A0(n875), .A1(n1025), .B0(n879), .B1(n786), .Y(n761) );
  OAI221XL U1023 ( .A0(n782), .A1(n766), .B0(n791), .B1(n765), .C0(n764), .Y(
        n767) );
  OAI2BB2XL U1024 ( .B0(n796), .B1(n943), .A0N(n792), .A1N(n767), .Y(n541) );
  OA22X1 U1025 ( .A0(n768), .A1(n1023), .B0(n879), .B1(n1025), .Y(n769) );
  AOI221XL U1026 ( .A0(n801), .A1(n772), .B0(n800), .B1(n771), .C0(n770), .Y(
        n774) );
  OAI22XL U1027 ( .A0(n775), .A1(n774), .B0(n773), .B1(n947), .Y(n550) );
  OAI22XL U1028 ( .A0(n865), .A1(n1034), .B0(n935), .B1(n784), .Y(n779) );
  OAI22XL U1029 ( .A0(n1035), .A1(n785), .B0(n936), .B1(n1023), .Y(n778) );
  OAI22XL U1030 ( .A0(n776), .A1(n1025), .B0(n1024), .B1(n786), .Y(n777) );
  OAI221XL U1031 ( .A0(n782), .A1(n781), .B0(n791), .B1(n807), .C0(n780), .Y(
        n783) );
  OAI2BB2XL U1032 ( .B0(n796), .B1(n1026), .A0N(n792), .A1N(n783), .Y(n542) );
  OAI22XL U1033 ( .A0(n922), .A1(n784), .B0(n859), .B1(n1034), .Y(n794) );
  OAI22XL U1034 ( .A0(n923), .A1(n1023), .B0(n1021), .B1(n785), .Y(n788) );
  OAI22XL U1035 ( .A0(n858), .A1(n1025), .B0(n1015), .B1(n786), .Y(n787) );
  OAI21XL U1036 ( .A0(n791), .A1(n790), .B0(n789), .Y(n793) );
  OAI31XL U1037 ( .A0(RST), .A1(n794), .A2(n793), .B0(n792), .Y(n795) );
  OAI21XL U1038 ( .A0(n796), .A1(n1016), .B0(n795), .Y(n543) );
  NOR3X1 U1039 ( .A(n798), .B(n805), .C(n797), .Y(n813) );
  OAI22XL U1040 ( .A0(n943), .A1(n1023), .B0(n879), .B1(n1034), .Y(n799) );
  AOI221XL U1041 ( .A0(n801), .A1(n805), .B0(n800), .B1(n810), .C0(n799), .Y(
        n803) );
  NOR2X1 U1042 ( .A(n813), .B(n802), .Y(n811) );
  OAI22XL U1043 ( .A0(n813), .A1(n803), .B0(n811), .B1(n949), .Y(n556) );
  OAI22XL U1044 ( .A0(n1016), .A1(n1023), .B0(n1015), .B1(n1034), .Y(n804) );
  AOI221XL U1045 ( .A0(n1019), .A1(n805), .B0(n1018), .B1(n810), .C0(n804), 
        .Y(n806) );
  OAI22XL U1046 ( .A0(n813), .A1(n806), .B0(n811), .B1(n923), .Y(n558) );
  OAI21XL U1047 ( .A0(n1026), .A1(n1023), .B0(n1032), .Y(n809) );
  OAI22XL U1048 ( .A0(n1024), .A1(n1034), .B0(n810), .B1(n807), .Y(n808) );
  OAI22XL U1049 ( .A0(n813), .A1(n812), .B0(n811), .B1(n936), .Y(n557) );
  OAI31XL U1050 ( .A0(n816), .A1(n815), .A2(n856), .B0(state[2]), .Y(n817) );
  OAI21XL U1051 ( .A0(n911), .A1(n917), .B0(n912), .Y(n820) );
  BUFX12 U1052 ( .A(n826), .Y(W[1]) );
  BUFX12 U1053 ( .A(n827), .Y(W[2]) );
  INVXL U1054 ( .A(sum_reg[6]), .Y(n964) );
  INVXL U1055 ( .A(sum_reg[7]), .Y(n962) );
  INVXL U1056 ( .A(sum_reg[9]), .Y(n977) );
  INVXL U1057 ( .A(sum_reg[3]), .Y(n969) );
  NAND2BX1 U1058 ( .AN(MinCost[8]), .B(sum_reg[8]), .Y(n850) );
  CLKINVX1 U1059 ( .A(n1070), .Y(n831) );
  NOR2X1 U1060 ( .A(n832), .B(n831), .Y(n987) );
  AOI211XL U1061 ( .A0(n832), .A1(n831), .B0(n987), .C0(n956), .Y(n833) );
  INVXL U1062 ( .A(sum_reg[2]), .Y(n971) );
  OAI21XL U1063 ( .A0(n1079), .A1(n1065), .B0(MinCost[0]), .Y(n836) );
  INVXL U1064 ( .A(sum_reg[8]), .Y(n966) );
  AOI222XL U1065 ( .A0(n850), .A1(n849), .B0(n977), .B1(MinCost[9]), .C0(n966), 
        .C1(MinCost[8]), .Y(n851) );
  INVX12 U1066 ( .A(n857), .Y(Valid) );
  OAI22XL U1067 ( .A0(n876), .A1(n858), .B0(n874), .B1(n923), .Y(n863) );
  OAI22XL U1068 ( .A0(n1015), .A1(n880), .B0(n859), .B1(n878), .Y(n862) );
  OAI22XL U1069 ( .A0(counter[1]), .A1(R0[0]), .B0(n998), .B1(L1[0]), .Y(n860)
         );
  AOI211X1 U1070 ( .A0(counter[2]), .A1(n863), .B0(n862), .C0(n861), .Y(n933)
         );
  CLKINVX1 U1071 ( .A(n881), .Y(n870) );
  OAI21XL U1072 ( .A0(counter[2]), .A1(L1[1]), .B0(counter[1]), .Y(n864) );
  OAI221XL U1073 ( .A0(counter[0]), .A1(R0[1]), .B0(n992), .B1(L0[1]), .C0(
        n1007), .Y(n867) );
  OAI221XL U1074 ( .A0(counter[0]), .A1(R4[1]), .B0(n992), .B1(R5[1]), .C0(
        counter[2]), .Y(n866) );
  AOI211X1 U1075 ( .A0(n870), .A1(L2[1]), .B0(n869), .C0(n868), .Y(n941) );
  OAI21X1 U1076 ( .A0(n888), .A1(n871), .B0(n941), .Y(n891) );
  OAI21XL U1077 ( .A0(n982), .A1(value[1]), .B0(value[0]), .Y(n873) );
  OAI21X1 U1078 ( .A0(n888), .A1(n872), .B0(n933), .Y(n889) );
  OAI2BB2XL U1079 ( .B0(n873), .B1(n889), .A0N(n982), .A1N(value[1]), .Y(n898)
         );
  OAI22XL U1080 ( .A0(n876), .A1(n875), .B0(n874), .B1(n949), .Y(n886) );
  OAI22XL U1081 ( .A0(n880), .A1(n879), .B0(n878), .B1(n877), .Y(n885) );
  OAI22XL U1082 ( .A0(counter[1]), .A1(R0[2]), .B0(n998), .B1(L1[2]), .Y(n882)
         );
  OAI22XL U1083 ( .A0(n883), .A1(n882), .B0(n881), .B1(n947), .Y(n884) );
  AO21X1 U1084 ( .A0(n898), .A1(value[2]), .B0(n985), .Y(n896) );
  OAI22XL U1085 ( .A0(change_point[2]), .A1(n1007), .B0(n899), .B1(
        change_point[1]), .Y(n904) );
  AOI211XL U1086 ( .A0(n991), .A1(counter[1]), .B0(n901), .C0(n900), .Y(n902)
         );
  OAI22XL U1087 ( .A0(counter[2]), .A1(n1005), .B0(n904), .B1(n903), .Y(n905)
         );
  NOR2X1 U1088 ( .A(RST), .B(n909), .Y(n945) );
  NOR2X1 U1089 ( .A(RST), .B(n908), .Y(n944) );
  NOR2X1 U1090 ( .A(n914), .B(n910), .Y(n913) );
  NOR2X1 U1091 ( .A(n911), .B(n920), .Y(n918) );
  NOR2BX1 U1092 ( .AN(n918), .B(n917), .Y(n1009) );
  NOR2BX1 U1093 ( .AN(n913), .B(n912), .Y(n1000) );
  NOR2X1 U1094 ( .A(n915), .B(n914), .Y(n994) );
  OAI31XL U1095 ( .A0(n945), .A1(n944), .A2(n1016), .B0(n916), .Y(n925) );
  NOR2X1 U1096 ( .A(n926), .B(n919), .Y(n1011) );
  NOR2X1 U1097 ( .A(n921), .B(n920), .Y(n1001) );
  OAI22XL U1098 ( .A0(n923), .A1(n948), .B0(n922), .B1(n946), .Y(n924) );
  NOR2X1 U1099 ( .A(n927), .B(n926), .Y(n930) );
  NOR2BX1 U1100 ( .AN(n930), .B(n929), .Y(n1010) );
  NAND2X1 U1101 ( .A(n945), .B(n928), .Y(n1014) );
  NAND2X1 U1102 ( .A(n930), .B(n929), .Y(n1004) );
  NAND2X1 U1103 ( .A(n1014), .B(n1004), .Y(n952) );
  OAI31XL U1104 ( .A0(n945), .A1(n944), .A2(n1026), .B0(n934), .Y(n938) );
  OAI22XL U1105 ( .A0(n936), .A1(n948), .B0(n935), .B1(n946), .Y(n937) );
  OAI31XL U1106 ( .A0(n945), .A1(n944), .A2(n943), .B0(n942), .Y(n951) );
  OAI22XL U1107 ( .A0(n949), .A1(n948), .B0(n947), .B1(n946), .Y(n950) );
  OAI21XL U1108 ( .A0(n987), .A1(n1055), .B0(n960), .Y(n989) );
  INVX12 U1109 ( .A(n986), .Y(J[2]) );
  CLKINVX1 U1110 ( .A(n1068), .Y(n1059) );
  OAI22XL U1111 ( .A0(n992), .A1(n1006), .B0(n991), .B1(n1004), .Y(n993) );
  OAI21XL U1112 ( .A0(n1014), .A1(n996), .B0(n995), .Y(N386) );
  OAI22XL U1113 ( .A0(n998), .A1(n1006), .B0(n997), .B1(n1004), .Y(n999) );
  OAI21XL U1114 ( .A0(n1014), .A1(n1003), .B0(n1002), .Y(N387) );
  OAI22XL U1115 ( .A0(n1007), .A1(n1006), .B0(n1005), .B1(n1004), .Y(n1008) );
  OAI21XL U1116 ( .A0(n1014), .A1(n1013), .B0(n1012), .Y(N388) );
  OAI22XL U1117 ( .A0(n1016), .A1(n1025), .B0(n1015), .B1(n1023), .Y(n1017) );
  AOI221XL U1118 ( .A0(n1019), .A1(n1030), .B0(n1018), .B1(n1028), .C0(n1017), 
        .Y(n1020) );
  AO22X1 U1119 ( .A0(R4[0]), .A1(n1038), .B0(n1037), .B1(n1022), .Y(n555) );
  OAI22XL U1120 ( .A0(n1026), .A1(n1025), .B0(n1024), .B1(n1023), .Y(n1027) );
  AOI221XL U1121 ( .A0(n1031), .A1(n1030), .B0(n1029), .B1(n1028), .C0(n1027), 
        .Y(n1033) );
  AO22X1 U1122 ( .A0(R4[1]), .A1(n1038), .B0(n1037), .B1(n1036), .Y(n554) );
  AO22X1 U1123 ( .A0(sum_reg[0]), .A1(n1053), .B0(n1052), .B1(n1039), .Y(n532)
         );
  AO22X1 U1124 ( .A0(sum_reg[2]), .A1(n1053), .B0(n1052), .B1(n1041), .Y(n530)
         );
  ADDFXL U1125 ( .A(Cost[3]), .B(sum_reg[3]), .CI(n1042), .CO(n707), .S(n1043)
         );
  AO22X1 U1126 ( .A0(sum_reg[3]), .A1(n1053), .B0(n1052), .B1(n1043), .Y(n529)
         );
  ADDFXL U1127 ( .A(Cost[5]), .B(sum_reg[5]), .CI(n1044), .CO(n1046), .S(n1045) );
  AO22X1 U1128 ( .A0(sum_reg[5]), .A1(n1053), .B0(n1052), .B1(n1045), .Y(n527)
         );
  ADDFXL U1129 ( .A(Cost[6]), .B(sum_reg[6]), .CI(n1046), .CO(n1048), .S(n1047) );
  AO22X1 U1130 ( .A0(sum_reg[6]), .A1(n1053), .B0(n1052), .B1(n1047), .Y(n526)
         );
  ADDHXL U1131 ( .A(n1048), .B(sum_reg[7]), .CO(n1050), .S(n1049) );
  AO22X1 U1132 ( .A0(sum_reg[7]), .A1(n1053), .B0(n1052), .B1(n1049), .Y(n525)
         );
  AO22X1 U1133 ( .A0(sum_reg[8]), .A1(n1053), .B0(n1052), .B1(n1051), .Y(n524)
         );
  OAI21XL U1134 ( .A0(n1068), .A1(n1055), .B0(n1054), .Y(n1056) );
  OAI31XL U1135 ( .A0(n1059), .A1(MatchCount[3]), .A2(n1058), .B0(n1057), .Y(
        n519) );
endmodule

