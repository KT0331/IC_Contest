/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jun 17 16:37:40 2022
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, N97, N98, N130, N144, N145, N146,
         N153, N154, N155, Valid_lead, N234, N235, N592, N593, N594, N595,
         N596, N597, N598, N599, N600, N601, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n116, n152,
         n153, n154, n159, n160, n161, n162, n167, n168, n169, n170, n171,
         n172, n173, n181, n182, n183, n184, n185, n191, n192, n193, n194,
         n197, n198, n203, n204, n205, n206, n207, n208, n212, n213, n214,
         n218, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n253, n256, n264, n265,
         n266, n267, n268, n269, n270, n277, n278, n279, n283, n294, n295,
         n296, n297, n298, n299, n300, n301, n309, n310, n311, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n328, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n349, n350, n351, n352, n353, n354, n359, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n381, n382, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n416, n417, n418, n421, n422, n423, n424, n425, n426, n427, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n450, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n467, n468, n474, n475, n476, n477, n478, n479, n486,
         n488, n490, n493, n501, n507, n509, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n538, n543, n544, n545, n546,
         n547, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021;
  wire   [2:0] change_point;
  wire   [2:0] counter0;
  wire   [3:0] counter1;
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
  wire   [1:0] state;
  wire   [2:0] value;
  wire   [2:0] search_point;

  DFFQX1 \se0_reg[6][0]  ( .D(n575), .CK(CLK), .Q(R6[0]) );
  DFFQX1 \state_reg[1]  ( .D(N98), .CK(CLK), .Q(state[1]) );
  DFFQX1 \state_reg[0]  ( .D(N97), .CK(CLK), .Q(state[0]) );
  DFFQX1 \se0_reg[4][0]  ( .D(n581), .CK(CLK), .Q(R4[0]) );
  DFFQX1 \se0_reg[3][0]  ( .D(n592), .CK(CLK), .Q(L2[0]) );
  DFFQX1 \se0_reg[7][2]  ( .D(n596), .CK(CLK), .Q(L6[2]) );
  DFFQX1 \se0_reg[3][2]  ( .D(n593), .CK(CLK), .Q(L2[2]) );
  DFFQX1 \se0_reg[7][1]  ( .D(n597), .CK(CLK), .Q(L6[1]) );
  DFFQX1 Valid_lead_reg ( .D(N234), .CK(CLK), .Q(Valid_lead) );
  DFFQX1 \sum_reg_reg[9]  ( .D(N601), .CK(CLK), .Q(sum_reg[9]) );
  DFFQX1 \sum_reg_reg[8]  ( .D(N600), .CK(CLK), .Q(sum_reg[8]) );
  DFFQX1 \sum_reg_reg[7]  ( .D(N599), .CK(CLK), .Q(sum_reg[7]) );
  DFFQX1 \sum_reg_reg[6]  ( .D(N598), .CK(CLK), .Q(sum_reg[6]) );
  DFFQX1 \sum_reg_reg[5]  ( .D(N597), .CK(CLK), .Q(sum_reg[5]) );
  DFFQX1 \sum_reg_reg[4]  ( .D(N596), .CK(CLK), .Q(sum_reg[4]) );
  DFFQX1 \sum_reg_reg[3]  ( .D(N595), .CK(CLK), .Q(sum_reg[3]) );
  CLKINVX1 U34 ( .A(RST), .Y(n547) );
  AO21X1 U151 ( .A0(n231), .A1(n229), .B0(n381), .Y(n63) );
  OAI21XL U174 ( .A0(n85), .A1(n501), .B0(n70), .Y(n71) );
  OAI21XL U190 ( .A0(n85), .A1(n474), .B0(n84), .Y(n86) );
  OAI21XL U303 ( .A0(n417), .A1(n197), .B0(n454), .Y(n159) );
  OAI21XL U314 ( .A0(n416), .A1(n198), .B0(n454), .Y(n167) );
  AO22X1 U367 ( .A0(n225), .A1(R0[0]), .B0(n224), .B1(n393), .Y(n213) );
  OA22X1 U389 ( .A0(n531), .A1(n242), .B0(n475), .B1(n243), .Y(n236) );
  OAI21XL U422 ( .A0(n268), .A1(RST), .B0(n297), .Y(n269) );
  OAI21XL U432 ( .A0(RST), .A1(n278), .B0(n297), .Y(n279) );
  OA22X1 U441 ( .A0(n295), .A1(n533), .B0(n294), .B1(n376), .Y(n296) );
  AOI2BB2X1 U442 ( .B0(n297), .B1(n296), .A0N(n297), .A1N(R4[2]), .Y(n583) );
  OAI21XL U466 ( .A0(n531), .A1(n441), .B0(n311), .Y(n584) );
  OAI21XL U487 ( .A0(n333), .A1(n332), .B0(n349), .Y(n334) );
  OAI21XL U493 ( .A0(n338), .A1(n337), .B0(n349), .Y(n339) );
  OAI2BB2XL U495 ( .B0(n488), .B1(n342), .A0N(R0[0]), .A1N(n341), .Y(n343) );
  AOI2BB1X1 U496 ( .A0N(n344), .A1N(n501), .B0(n343), .Y(n353) );
  OAI21XL U499 ( .A0(n351), .A1(n350), .B0(n349), .Y(n352) );
  OAI22XL U504 ( .A0(n359), .A1(n521), .B0(n456), .B1(n509), .Y(n589) );
  OAI31XL U506 ( .A0(n417), .A1(n365), .A2(n364), .B0(n454), .Y(n366) );
  AOI2BB2X1 U514 ( .B0(R0[1]), .B1(n400), .A0N(n477), .A1N(n403), .Y(n390) );
  AOI2BB2X1 U522 ( .B0(n407), .B1(n479), .A0N(n407), .A1N(n391), .Y(n591) );
  AOI2BB2X1 U523 ( .B0(R0[0]), .B1(n400), .A0N(n490), .A1N(n403), .Y(n395) );
  AOI2BB2X1 U527 ( .B0(n407), .B1(n534), .A0N(n407), .A1N(n396), .Y(n592) );
  OAI2BB2XL U531 ( .B0(n532), .B1(n401), .A0N(n400), .A1N(R0[2]), .Y(n405) );
  AOI2BB1X1 U601 ( .A0N(n518), .A1N(n517), .B0(RST), .Y(n519) );
  DFFQX1 \counter0_reg[2]  ( .D(N146), .CK(CLK), .Q(counter0[2]) );
  DFFQX1 \se0_reg[6][1]  ( .D(n576), .CK(CLK), .Q(R6[1]) );
  DFFQX1 \value_reg[0]  ( .D(n574), .CK(CLK), .Q(value[0]) );
  DFFQX1 \value_reg[2]  ( .D(n572), .CK(CLK), .Q(value[2]) );
  DFFQX1 \value_reg[1]  ( .D(n573), .CK(CLK), .Q(value[1]) );
  DFFQX1 \sum_reg_reg[1]  ( .D(N593), .CK(CLK), .Q(sum_reg[1]) );
  DFFQX1 \sum_reg_reg[0]  ( .D(N592), .CK(CLK), .Q(sum_reg[0]) );
  DFFQX1 \sum_reg_reg[2]  ( .D(N594), .CK(CLK), .Q(sum_reg[2]) );
  DFFQX1 \search_point_reg[0]  ( .D(n571), .CK(CLK), .Q(search_point[0]) );
  DFFQX1 \search_point_reg[1]  ( .D(n570), .CK(CLK), .Q(search_point[1]) );
  DFFQX1 \counter1_reg[1]  ( .D(N154), .CK(CLK), .Q(counter1[1]) );
  DFFQX1 \change_point_reg[1]  ( .D(n589), .CK(CLK), .Q(change_point[1]) );
  DFFQX1 \se0_reg[7][0]  ( .D(n599), .CK(CLK), .Q(L6[0]) );
  DFFQX1 \se0_reg[5][0]  ( .D(n579), .CK(CLK), .Q(R5[0]) );
  DFFQX1 \se0_reg[5][2]  ( .D(n580), .CK(CLK), .Q(R5[2]) );
  DFFQX1 \se0_reg[4][2]  ( .D(n583), .CK(CLK), .Q(R4[2]) );
  DFFQX1 \se0_reg[3][1]  ( .D(n591), .CK(CLK), .Q(L2[1]) );
  DFFQX1 \se0_reg[5][1]  ( .D(n578), .CK(CLK), .Q(R5[1]) );
  DFFQX1 \se0_reg[4][1]  ( .D(n582), .CK(CLK), .Q(R4[1]) );
  DFFQX1 \se0_reg[1][2]  ( .D(n586), .CK(CLK), .Q(L0[2]) );
  DFFQX1 \se0_reg[2][1]  ( .D(n567), .CK(CLK), .Q(L1[1]) );
  DFFQX1 \counter0_reg[0]  ( .D(N144), .CK(CLK), .Q(counter0[0]) );
  DFFQX1 \counter0_reg[1]  ( .D(N145), .CK(CLK), .Q(counter0[1]) );
  DFFQX1 \se0_reg[2][0]  ( .D(n568), .CK(CLK), .Q(L1[0]) );
  OAI21XL U304 ( .A0(n160), .A1(n524), .B0(n159), .Y(n161) );
  OAI21XL U315 ( .A0(n168), .A1(n524), .B0(n167), .Y(n169) );
  NAND4XL U602 ( .A(counter1[1]), .B(counter1[2]), .C(n519), .D(W[0]), .Y(n520) );
  NOR2X1 U99 ( .A(n385), .B(n298), .Y(n62) );
  NOR2X1 U361 ( .A(n212), .B(n298), .Y(n228) );
  OAI22XL U532 ( .A0(n538), .A1(n403), .B0(n474), .B1(n402), .Y(n404) );
  AOI2BB2X1 U474 ( .B0(n324), .B1(n319), .A0N(n318), .A1N(n317), .Y(n354) );
  AOI2BB1X1 U156 ( .A0N(n376), .A1N(n253), .B0(n89), .Y(n91) );
  OAI22XL U163 ( .A0(n490), .A1(n75), .B0(n534), .B1(n374), .Y(n73) );
  OAI22XL U166 ( .A0(n535), .A1(n77), .B0(n256), .B1(n76), .Y(n72) );
  OAI21XL U173 ( .A0(n69), .A1(n68), .B0(n377), .Y(n70) );
  OAI22XL U180 ( .A0(n468), .A1(n374), .B0(n538), .B1(n75), .Y(n88) );
  OAI22XL U183 ( .A0(n533), .A1(n77), .B0(n283), .B1(n76), .Y(n87) );
  OAI21XL U189 ( .A0(n83), .A1(n82), .B0(n377), .Y(n84) );
  OAI22XL U470 ( .A0(n314), .A1(n436), .B0(n488), .B1(n435), .Y(n315) );
  OAI22XL U464 ( .A0(n309), .A1(n436), .B0(n476), .B1(n435), .Y(n310) );
  OAI22XL U545 ( .A0(n437), .A1(n436), .B0(n462), .B1(n435), .Y(n438) );
  OAI22XL U489 ( .A0(n344), .A1(n531), .B0(n476), .B1(n342), .Y(n336) );
  OAI22XL U478 ( .A0(n344), .A1(n474), .B0(n462), .B1(n342), .Y(n325) );
  OAI22XL U519 ( .A0(n475), .A1(n401), .B0(n531), .B1(n402), .Y(n387) );
  OAI22XL U524 ( .A0(n486), .A1(n401), .B0(n501), .B1(n402), .Y(n392) );
  OAI22XL U421 ( .A0(n267), .A1(n376), .B0(n295), .B1(n535), .Y(n268) );
  AOI222XL U376 ( .A0(n225), .A1(R0[1]), .B0(n447), .B1(n443), .C0(n224), .C1(
        n388), .Y(n218) );
  OAI22XL U377 ( .A0(n227), .A1(n475), .B0(n442), .B1(n218), .Y(n576) );
  AOI222XL U384 ( .A0(n225), .A1(R0[2]), .B0(n444), .B1(n443), .C0(n224), .C1(
        n397), .Y(n226) );
  OAI22XL U431 ( .A0(n295), .A1(n536), .B0(n277), .B1(n376), .Y(n278) );
  OAI22XL U112 ( .A0(n536), .A1(n77), .B0(n479), .B1(n374), .Y(n60) );
  OAI21XL U136 ( .A0(n56), .A1(n55), .B0(n377), .Y(n58) );
  OAI2BB2XL U396 ( .B0(n501), .B1(n242), .A0N(n952), .A1N(n393), .Y(n240) );
  OAI22XL U397 ( .A0(n238), .A1(n381), .B0(n486), .B1(n243), .Y(n239) );
  OAI2BB2XL U400 ( .B0(n474), .B1(n242), .A0N(n952), .A1N(n397), .Y(n246) );
  OAI22XL U401 ( .A0(n244), .A1(n381), .B0(n532), .B1(n243), .Y(n245) );
  OAI22XL U392 ( .A0(n233), .A1(n381), .B0(n270), .B1(n237), .Y(n234) );
  NAND3X1 U193 ( .A(n547), .B(n518), .C(state[0]), .Y(n524) );
  NOR2X1 U201 ( .A(n524), .B(n153), .Y(n423) );
  NAND2XL U599 ( .A(n547), .B(n518), .Y(n523) );
  NOR2X1 U515 ( .A(n381), .B(n951), .Y(n398) );
  NOR2X1 U383 ( .A(n462), .B(n370), .Y(n397) );
  AND2X2 U354 ( .A(n950), .B(n377), .Y(n443) );
  NOR2X1 U110 ( .A(n301), .B(n298), .Y(n372) );
  OAI22X1 U511 ( .A0(n382), .A1(n443), .B0(n373), .B1(n372), .Y(n399) );
  CLKINVX1 U153 ( .A(n377), .Y(n376) );
  NAND2BX1 U111 ( .AN(n300), .B(n372), .Y(n374) );
  OAI31X1 U512 ( .A0(n379), .A1(n376), .A2(n375), .B0(n374), .Y(n400) );
  OAI211X1 U513 ( .A0(search_point[2]), .A1(n379), .B0(n378), .C0(n377), .Y(
        n403) );
  NOR2X1 U462 ( .A(n439), .B(n370), .Y(n324) );
  AOI31X1 U476 ( .A0(n322), .A1(n445), .A2(n951), .B0(n439), .Y(n344) );
  CLKINVX1 U461 ( .A(n349), .Y(n436) );
  AOI21X1 U475 ( .A0(n321), .A1(n320), .B0(n436), .Y(n341) );
  OAI211X1 U152 ( .A0(n321), .A1(n298), .B0(n207), .C0(n63), .Y(n89) );
  NAND2X1 U93 ( .A(n378), .B(n377), .Y(n208) );
  AOI32X1 U119 ( .A0(n322), .A1(n445), .A2(n300), .B0(n328), .B1(n445), .Y(n76) );
  AOI211X4 U349 ( .A0(n445), .A1(n367), .B0(n372), .C0(n439), .Y(n297) );
  NAND2X2 U352 ( .A(n250), .B(n381), .Y(n442) );
  NOR2X1 U375 ( .A(n476), .B(n370), .Y(n388) );
  NOR2X1 U366 ( .A(n488), .B(n370), .Y(n393) );
  AOI31X1 U420 ( .A0(n377), .A1(n266), .A2(n265), .B0(n264), .Y(n295) );
  AND2X1 U618 ( .A(Valid_lead), .B(n547), .Y(N235) );
  NOR3X2 U206 ( .A(RST), .B(state[1]), .C(state[0]), .Y(n454) );
  OAI21XL U472 ( .A0(n501), .A1(n441), .B0(n316), .Y(n585) );
  OAI21XL U547 ( .A0(n474), .A1(n441), .B0(n440), .Y(n595) );
  OAI22XL U369 ( .A0(n227), .A1(n486), .B0(n442), .B1(n214), .Y(n575) );
  OAI21XL U423 ( .A0(n297), .A1(n490), .B0(n269), .Y(n581) );
  OAI22XL U385 ( .A0(n227), .A1(n532), .B0(n442), .B1(n226), .Y(n577) );
  OAI21XL U433 ( .A0(n297), .A1(n477), .B0(n279), .Y(n582) );
  OAI22XL U399 ( .A0(n250), .A1(n535), .B0(n249), .B1(n241), .Y(n579) );
  OAI22XL U403 ( .A0(n250), .A1(n533), .B0(n249), .B1(n248), .Y(n580) );
  OR2X1 U604 ( .A(N130), .B(n524), .Y(n528) );
  AOI221XL U605 ( .A0(n953), .A1(n527), .B0(n526), .B1(n525), .C0(n528), .Y(
        N146) );
  OAI22XL U598 ( .A0(state[0]), .A1(n515), .B0(n516), .B1(n524), .Y(N98) );
  AOI2BB1X1 U329 ( .A0N(n524), .A1N(n183), .B0(n427), .Y(n425) );
  NAND3XL U473 ( .A(change_point[0]), .B(n349), .C(n326), .Y(n317) );
  OAI22XL U551 ( .A0(n461), .A1(n462), .B0(n446), .B1(n459), .Y(n596) );
  OAI22XL U557 ( .A0(n461), .A1(n488), .B0(n460), .B1(n459), .Y(n599) );
  OAI22XL U553 ( .A0(n461), .A1(n476), .B0(n448), .B1(n459), .Y(n597) );
  OAI22XL U158 ( .A0(n65), .A1(n89), .B0(n91), .B1(n478), .Y(n567) );
  OAI21X1 U510 ( .A0(n371), .A1(n370), .B0(n369), .Y(n407) );
  OAI22X1 U138 ( .A0(n952), .A1(n208), .B0(n298), .B1(n320), .Y(n67) );
  OAI22XL U176 ( .A0(n91), .A1(n493), .B0(n74), .B1(n89), .Y(n568) );
  OAI22XL U192 ( .A0(n91), .A1(n467), .B0(n90), .B1(n89), .Y(n569) );
  INVX3 U351 ( .A(n249), .Y(n250) );
  NAND2X2 U350 ( .A(n208), .B(n297), .Y(n249) );
  OAI21XL U445 ( .A0(n299), .A1(n328), .B0(n349), .Y(n441) );
  NAND2X2 U91 ( .A(n427), .B(state[0]), .Y(n298) );
  OAI31X1 U503 ( .A0(state[0]), .A1(state[1]), .A2(n418), .B0(n547), .Y(n456)
         );
  DFFQX2 \se0_reg[0][0]  ( .D(n585), .CK(CLK), .Q(R0[0]) );
  DFFX1 \counter1_reg[2]  ( .D(N155), .CK(CLK), .Q(counter1[2]), .QN(n1021) );
  DFFX2 \se0_reg[1][0]  ( .D(n588), .CK(CLK), .Q(L0[0]), .QN(n501) );
  DFFQX1 \MinCost_reg[2]  ( .D(n560), .CK(CLK), .Q(n1033) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n564), .CK(CLK), .Q(n1023) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n565), .CK(CLK), .Q(n1024) );
  DFFQX1 \MinCost_reg[9]  ( .D(n553), .CK(CLK), .Q(n1026) );
  DFFQX1 \MinCost_reg[6]  ( .D(n556), .CK(CLK), .Q(n1029) );
  DFFQX1 \MinCost_reg[1]  ( .D(n561), .CK(CLK), .Q(n1034) );
  DFFQX1 \MinCost_reg[0]  ( .D(n562), .CK(CLK), .Q(n1035) );
  DFFQX1 \MinCost_reg[7]  ( .D(n555), .CK(CLK), .Q(n1028) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n566), .CK(CLK), .Q(n1025) );
  DFFQX1 \MinCost_reg[5]  ( .D(n557), .CK(CLK), .Q(n1030) );
  DFFQX1 \MinCost_reg[8]  ( .D(n554), .CK(CLK), .Q(n1027) );
  DFFQX1 \MinCost_reg[3]  ( .D(n559), .CK(CLK), .Q(n1032) );
  DFFQX1 \MinCost_reg[4]  ( .D(n558), .CK(CLK), .Q(n1031) );
  DFFQX2 \change_point_reg[0]  ( .D(n590), .CK(CLK), .Q(change_point[0]) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n563), .CK(CLK), .Q(n1022) );
  DFFQX1 Valid_reg ( .D(N235), .CK(CLK), .Q(n1036) );
  DFFQX2 \se0_reg[2][2]  ( .D(n569), .CK(CLK), .Q(L1[2]) );
  DFFQX2 \counter1_reg[0]  ( .D(N153), .CK(CLK), .Q(counter1[0]) );
  DFFQX2 \change_point_reg[2]  ( .D(n598), .CK(CLK), .Q(change_point[2]) );
  DFFQX2 \se0_reg[0][1]  ( .D(n584), .CK(CLK), .Q(R0[1]) );
  DFFQX2 \se0_reg[0][2]  ( .D(n595), .CK(CLK), .Q(R0[2]) );
  DFFQX2 \se0_reg[6][2]  ( .D(n577), .CK(CLK), .Q(R6[2]) );
  DFFQX2 \se0_reg[1][1]  ( .D(n587), .CK(CLK), .Q(L0[1]) );
  DFFQX2 \search_point_reg[2]  ( .D(n594), .CK(CLK), .Q(search_point[2]) );
  INVX3 U114 ( .A(n298), .Y(n445) );
  OAI31X1 U146 ( .A0(n61), .A1(n518), .A2(n517), .B0(n547), .Y(n207) );
  INVX3 U150 ( .A(n62), .Y(n381) );
  NOR2X4 U92 ( .A(n455), .B(n298), .Y(n377) );
  INVX3 U362 ( .A(n228), .Y(n370) );
  NOR2X2 U444 ( .A(n298), .B(n439), .Y(n349) );
  NOR3X1 U419 ( .A(n379), .B(n381), .C(n424), .Y(n264) );
  NOR2X8 U90 ( .A(RST), .B(n518), .Y(n427) );
  OA21XL U629 ( .A0(n486), .A1(n750), .B0(n749), .Y(n751) );
  OR2X1 U630 ( .A(counter1[1]), .B(W[0]), .Y(n844) );
  CLKINVX1 U631 ( .A(state[1]), .Y(n518) );
  NOR2X1 U632 ( .A(n906), .B(n905), .Y(n907) );
  XNOR2X1 U633 ( .A(n631), .B(n630), .Y(sum[8]) );
  OAI21XL U634 ( .A0(n655), .A1(n629), .B0(n628), .Y(n631) );
  CLKINVX1 U635 ( .A(n322), .Y(n301) );
  XNOR2X1 U636 ( .A(n645), .B(n644), .Y(sum[6]) );
  NOR2X1 U637 ( .A(change_point[2]), .B(n944), .Y(n322) );
  OAI21XL U638 ( .A0(n655), .A1(n635), .B0(n634), .Y(n637) );
  OAI21XL U639 ( .A0(n655), .A1(n641), .B0(n640), .Y(n645) );
  OAI21XL U640 ( .A0(n655), .A1(n651), .B0(n652), .Y(n650) );
  NOR2X1 U641 ( .A(n507), .B(n509), .Y(n795) );
  CLKINVX1 U642 ( .A(change_point[0]), .Y(n507) );
  AOI21X2 U643 ( .A0(n656), .A1(n618), .B0(n617), .Y(n655) );
  CLKINVX1 U644 ( .A(n656), .Y(n666) );
  NOR2X1 U645 ( .A(sum_reg[3]), .B(Cost[3]), .Y(n657) );
  NAND2X1 U646 ( .A(sum_reg[0]), .B(Cost[0]), .Y(n671) );
  NOR2X1 U647 ( .A(sum_reg[2]), .B(Cost[2]), .Y(n662) );
  OAI2BB1X1 U648 ( .A0N(n1032), .A1N(n757), .B0(n756), .Y(n762) );
  OAI211XL U649 ( .A0(n501), .A1(n321), .B0(n713), .C0(n712), .Y(n714) );
  OAI2BB2XL U650 ( .B0(n723), .B1(n722), .A0N(n721), .A1N(n720), .Y(n724) );
  AOI211XL U651 ( .A0(n780), .A1(R0[2]), .B0(n953), .C0(n689), .Y(n690) );
  NOR2X1 U652 ( .A(sum_reg[6]), .B(Cost[6]), .Y(n632) );
  AOI222XL U653 ( .A0(n725), .A1(n724), .B0(n725), .B1(n728), .C0(n724), .C1(
        n728), .Y(n726) );
  NOR2XL U654 ( .A(n928), .B(n922), .Y(n855) );
  NOR2XL U655 ( .A(n378), .B(n795), .Y(n788) );
  NOR2X1 U656 ( .A(sum_reg[4]), .B(Cost[4]), .Y(n651) );
  NAND2XL U657 ( .A(n424), .B(n814), .Y(n673) );
  NOR2XL U658 ( .A(n970), .B(n998), .Y(n968) );
  NAND2XL U659 ( .A(n324), .B(n323), .Y(n342) );
  OAI21XL U660 ( .A0(n655), .A1(n623), .B0(n622), .Y(n625) );
  OAI32XL U661 ( .A0(counter1[2]), .A1(n736), .A2(n735), .B0(n1021), .B1(n734), 
        .Y(n737) );
  NOR2XL U662 ( .A(n951), .B(n208), .Y(n66) );
  CLKINVX2 U663 ( .A(n207), .Y(n439) );
  OAI32XL U664 ( .A0(counter1[2]), .A1(n748), .A2(n747), .B0(n1021), .B1(n746), 
        .Y(n749) );
  INVXL U665 ( .A(n924), .Y(n750) );
  NAND2XL U666 ( .A(n1001), .B(sum[8]), .Y(n989) );
  NAND2XL U667 ( .A(n993), .B(n1026), .Y(n992) );
  AOI211XL U668 ( .A0(change_point[1]), .A1(n171), .B0(n170), .C0(n161), .Y(
        n162) );
  OAI22XL U669 ( .A0(n1020), .A1(n1019), .B0(n1018), .B1(n1017), .Y(n563) );
  NAND3XL U670 ( .A(n978), .B(n547), .C(n977), .Y(n560) );
  INVXL U671 ( .A(n960), .Y(N597) );
  OR2X1 U672 ( .A(n1014), .B(n1024), .Y(n1008) );
  NOR2X2 U673 ( .A(n443), .B(n442), .Y(n461) );
  NAND2X1 U674 ( .A(n322), .B(n952), .Y(n932) );
  NOR2X1 U675 ( .A(n884), .B(n883), .Y(n893) );
  CLKXOR2X2 U676 ( .A(n655), .B(n654), .Y(sum[4]) );
  OAI32X1 U677 ( .A0(counter1[2]), .A1(n848), .A2(n847), .B0(n1021), .B1(n846), 
        .Y(n849) );
  NAND2X1 U678 ( .A(n648), .B(n647), .Y(n649) );
  INVX1 U679 ( .A(n639), .Y(n640) );
  INVX1 U680 ( .A(n638), .Y(n641) );
  NOR2X1 U681 ( .A(L0[0]), .B(n256), .Y(n676) );
  NAND2X1 U682 ( .A(n1001), .B(sum[7]), .Y(n987) );
  NOR2X1 U683 ( .A(n1014), .B(n1023), .Y(n1015) );
  NOR2X1 U684 ( .A(n891), .B(n890), .Y(n892) );
  AOI22X1 U685 ( .A0(sum[6]), .A1(n904), .B0(sum[5]), .B1(n766), .Y(n767) );
  ADDFHX2 U686 ( .A(Cost[3]), .B(sum_reg[3]), .CI(n894), .CO(n896), .S(n886)
         );
  INVXL U687 ( .A(n966), .Y(n955) );
  NAND2X1 U688 ( .A(n643), .B(n642), .Y(n644) );
  INVX1 U689 ( .A(n657), .Y(n659) );
  NOR2X1 U690 ( .A(n642), .B(n636), .Y(n626) );
  NAND2X1 U691 ( .A(n1016), .B(n1023), .Y(n1013) );
  NAND3X1 U692 ( .A(n1011), .B(n1024), .C(n1010), .Y(n1012) );
  NAND2X1 U693 ( .A(n1011), .B(n1007), .Y(n1006) );
  NAND3X1 U694 ( .A(n982), .B(n547), .C(n981), .Y(n558) );
  NAND3X1 U695 ( .A(n990), .B(n547), .C(n989), .Y(n554) );
  NAND3X1 U696 ( .A(n995), .B(n547), .C(n994), .Y(n562) );
  NAND3X1 U697 ( .A(n980), .B(n547), .C(n979), .Y(n559) );
  NAND3X1 U698 ( .A(n986), .B(n547), .C(n985), .Y(n556) );
  NAND3X1 U699 ( .A(n984), .B(n547), .C(n983), .Y(n557) );
  NAND3X1 U700 ( .A(n976), .B(n547), .C(n975), .Y(n561) );
  NAND3X1 U701 ( .A(n988), .B(n547), .C(n987), .Y(n555) );
  NAND3X1 U702 ( .A(n992), .B(n547), .C(n991), .Y(n553) );
  NAND2X1 U703 ( .A(n993), .B(n1032), .Y(n980) );
  NAND2X1 U704 ( .A(n993), .B(n1029), .Y(n986) );
  NAND2X1 U705 ( .A(n993), .B(n1031), .Y(n982) );
  NAND2X1 U706 ( .A(n993), .B(n1033), .Y(n978) );
  NAND2X1 U707 ( .A(n993), .B(n1030), .Y(n984) );
  NAND2X1 U708 ( .A(n993), .B(n1028), .Y(n988) );
  NAND2X1 U709 ( .A(n993), .B(n1027), .Y(n990) );
  NAND2X1 U710 ( .A(n993), .B(n1035), .Y(n995) );
  NAND2X1 U711 ( .A(n993), .B(MinCost[1]), .Y(n976) );
  NAND2X1 U712 ( .A(n1001), .B(sum[4]), .Y(n981) );
  NAND2X1 U713 ( .A(n1001), .B(sum[1]), .Y(n975) );
  NAND2X1 U714 ( .A(n1001), .B(sum[5]), .Y(n983) );
  NAND2X1 U715 ( .A(n1001), .B(sum[3]), .Y(n979) );
  NAND2X1 U716 ( .A(n1001), .B(sum[2]), .Y(n977) );
  NAND2X1 U717 ( .A(n1001), .B(sum[0]), .Y(n994) );
  NAND2X1 U718 ( .A(n1001), .B(sum[6]), .Y(n985) );
  NAND2X4 U719 ( .A(n969), .B(n968), .Y(n1014) );
  NAND2X2 U720 ( .A(n926), .B(n972), .Y(n969) );
  NOR2X2 U721 ( .A(n910), .B(n909), .Y(n920) );
  NOR2X4 U722 ( .A(n918), .B(n917), .Y(n919) );
  AOI211X1 U723 ( .A0(R0[2]), .A1(n439), .B0(RST), .C0(n438), .Y(n440) );
  AOI211X1 U724 ( .A0(R0[1]), .A1(n439), .B0(RST), .C0(n310), .Y(n311) );
  AOI211X1 U725 ( .A0(R0[0]), .A1(n439), .B0(RST), .C0(n315), .Y(n316) );
  XNOR2X2 U726 ( .A(n916), .B(n915), .Y(n917) );
  OAI2BB1X1 U727 ( .A0N(n720), .A1N(n193), .B0(n706), .Y(n707) );
  NOR4X1 U728 ( .A(RST), .B(n88), .C(n87), .D(n86), .Y(n90) );
  NOR4X1 U729 ( .A(RST), .B(n73), .C(n72), .D(n71), .Y(n74) );
  NAND2X1 U730 ( .A(n445), .B(n386), .Y(n402) );
  NOR2X1 U731 ( .A(n899), .B(n898), .Y(n908) );
  INVX1 U732 ( .A(n67), .Y(n85) );
  NAND2X1 U733 ( .A(n893), .B(n892), .Y(n910) );
  INVX1 U734 ( .A(n66), .Y(n75) );
  INVX1 U735 ( .A(n958), .Y(N599) );
  INVX1 U736 ( .A(n956), .Y(N601) );
  INVX1 U737 ( .A(n959), .Y(N598) );
  INVX1 U738 ( .A(n957), .Y(N600) );
  INVX1 U739 ( .A(sum[7]), .Y(n769) );
  NAND2X1 U740 ( .A(n382), .B(n443), .Y(n401) );
  NAND2X1 U741 ( .A(n443), .B(n230), .Y(n243) );
  NAND2X1 U742 ( .A(n445), .B(n232), .Y(n237) );
  INVX1 U743 ( .A(sum[2]), .Y(n965) );
  NAND2X1 U744 ( .A(n321), .B(n840), .Y(n367) );
  INVX1 U745 ( .A(n951), .Y(n674) );
  OAI21X1 U746 ( .A0(n666), .A1(n662), .B0(n663), .Y(n661) );
  XOR2X1 U747 ( .A(n666), .B(n665), .Y(sum[2]) );
  NAND2X1 U748 ( .A(n845), .B(n925), .Y(n812) );
  INVX1 U749 ( .A(n672), .Y(sum[0]) );
  NAND2X1 U750 ( .A(n669), .B(n668), .Y(n670) );
  AOI21X1 U751 ( .A0(n627), .A1(n639), .B0(n626), .Y(n628) );
  AOI21X1 U752 ( .A0(n639), .A1(n643), .B0(n633), .Y(n634) );
  NAND2X1 U753 ( .A(n627), .B(n638), .Y(n629) );
  NOR2X1 U754 ( .A(change_point[0]), .B(n509), .Y(n675) );
  NAND2X1 U755 ( .A(search_point[1]), .B(n251), .Y(n813) );
  INVX3 U756 ( .A(n779), .Y(n845) );
  INVX1 U757 ( .A(n662), .Y(n664) );
  NAND2X1 U758 ( .A(n616), .B(n671), .Y(n672) );
  ADDFHX1 U759 ( .A(Cost[1]), .B(sum_reg[1]), .CI(n885), .CO(n887), .S(n881)
         );
  INVX3 U760 ( .A(change_point[2]), .Y(n455) );
  INVX3 U761 ( .A(change_point[1]), .Y(n509) );
  ADDHX1 U762 ( .A(Cost[0]), .B(sum_reg[0]), .CO(n885), .S(n879) );
  INVX3 U763 ( .A(search_point[2]), .Y(n424) );
  CLKBUFX3 U764 ( .A(counter0[2]), .Y(n953) );
  NAND2X1 U765 ( .A(n1013), .B(n1012), .Y(n564) );
  NAND2X1 U766 ( .A(n1009), .B(n1008), .Y(n1016) );
  AOI211X1 U767 ( .A0(change_point[0]), .A1(n171), .B0(n170), .C0(n169), .Y(
        n172) );
  OR2X1 U768 ( .A(n1001), .B(n1000), .Y(n566) );
  NOR2X4 U769 ( .A(n974), .B(n973), .Y(n1001) );
  NAND2X2 U770 ( .A(n777), .B(n776), .Y(n926) );
  NAND2X2 U771 ( .A(n775), .B(n774), .Y(n777) );
  NAND2X1 U772 ( .A(n445), .B(n461), .Y(n459) );
  NAND2X2 U773 ( .A(n908), .B(n907), .Y(n909) );
  INVX1 U774 ( .A(n442), .Y(n227) );
  OAI211X1 U775 ( .A0(n354), .A1(n535), .B0(n353), .C0(n352), .Y(n588) );
  OAI2BB1X1 U776 ( .A0N(n423), .A1N(n173), .B0(n116), .Y(n171) );
  XOR2X2 U777 ( .A(n914), .B(sum_reg[9]), .Y(n915) );
  OAI22X1 U778 ( .A0(n755), .A1(n754), .B0(n1033), .B1(n965), .Y(n756) );
  INVX1 U779 ( .A(n183), .Y(n153) );
  NAND2X1 U780 ( .A(n855), .B(n923), .Y(n852) );
  NAND2X1 U781 ( .A(n972), .B(n971), .Y(n973) );
  NOR2X1 U782 ( .A(n368), .B(n439), .Y(n369) );
  NAND2X1 U783 ( .A(n458), .B(n324), .Y(n435) );
  INVX1 U784 ( .A(n237), .Y(n247) );
  NAND2X1 U785 ( .A(sum[9]), .B(n916), .Y(n972) );
  NAND2BX1 U786 ( .AN(sum[5]), .B(n1030), .Y(n764) );
  NAND2BX1 U787 ( .AN(sum[8]), .B(n1027), .Y(n776) );
  OAI2BB1X1 U788 ( .A0N(n862), .A1N(n953), .B0(n859), .Y(n860) );
  NAND2BX1 U789 ( .AN(sum[4]), .B(n1031), .Y(n763) );
  NOR2X1 U790 ( .A(n858), .B(n857), .Y(n862) );
  OAI2BB1X1 U791 ( .A0N(R6[1]), .A1N(n924), .B0(n849), .Y(n850) );
  INVX1 U792 ( .A(n737), .Y(n738) );
  NOR2X1 U793 ( .A(n364), .B(n927), .Y(n863) );
  INVX1 U794 ( .A(n173), .Y(n705) );
  XNOR2X2 U795 ( .A(n650), .B(n649), .Y(sum[5]) );
  XNOR2X2 U796 ( .A(n661), .B(n660), .Y(sum[3]) );
  XNOR2X2 U797 ( .A(n637), .B(n636), .Y(sum[7]) );
  OR2X1 U798 ( .A(n840), .B(n951), .Y(n320) );
  INVX1 U799 ( .A(n998), .Y(n971) );
  XOR2X2 U800 ( .A(n670), .B(n671), .Y(sum[1]) );
  NOR2X1 U801 ( .A(counter0[1]), .B(n788), .Y(n858) );
  NAND2X1 U802 ( .A(n967), .B(n966), .Y(n998) );
  NAND2X1 U803 ( .A(n659), .B(n658), .Y(n660) );
  INVX1 U804 ( .A(n795), .Y(n944) );
  NAND2X1 U805 ( .A(n664), .B(n663), .Y(n665) );
  AOI21X1 U806 ( .A0(n621), .A1(n639), .B0(n620), .Y(n622) );
  BUFX2 U807 ( .A(n675), .Y(n950) );
  INVX1 U808 ( .A(n427), .Y(n515) );
  NOR2X1 U809 ( .A(n662), .B(n657), .Y(n618) );
  OAI21X2 U810 ( .A0(n667), .A1(n671), .B0(n668), .Y(n656) );
  NOR2X1 U811 ( .A(n619), .B(n642), .Y(n620) );
  NAND2X1 U812 ( .A(n509), .B(n455), .Y(n784) );
  INVX2 U813 ( .A(R5[2]), .Y(n533) );
  INVX1 U814 ( .A(state[0]), .Y(n517) );
  INVX2 U815 ( .A(L2[2]), .Y(n468) );
  INVX2 U816 ( .A(R6[2]), .Y(n532) );
  INVX2 U817 ( .A(L0[2]), .Y(n474) );
  INVX2 U818 ( .A(R4[2]), .Y(n538) );
  OR2X1 U819 ( .A(sum_reg[0]), .B(Cost[0]), .Y(n616) );
  NOR2X1 U820 ( .A(counter1[1]), .B(counter1[0]), .Y(n779) );
  INVX2 U821 ( .A(L6[2]), .Y(n462) );
  INVX2 U822 ( .A(R5[1]), .Y(n536) );
  INVX2 U823 ( .A(R4[0]), .Y(n490) );
  INVX2 U824 ( .A(R4[1]), .Y(n477) );
  INVX2 U825 ( .A(L2[0]), .Y(n534) );
  INVX2 U826 ( .A(L6[0]), .Y(n488) );
  INVX1 U827 ( .A(sum_reg[7]), .Y(n636) );
  INVX2 U828 ( .A(R5[0]), .Y(n535) );
  INVX2 U829 ( .A(L0[1]), .Y(n531) );
  INVX2 U830 ( .A(L1[1]), .Y(n478) );
  INVX2 U831 ( .A(L2[1]), .Y(n479) );
  INVX2 U832 ( .A(R6[0]), .Y(n486) );
  INVX2 U833 ( .A(L6[1]), .Y(n476) );
  NOR2X1 U834 ( .A(sum[9]), .B(n916), .Y(n970) );
  XNOR2X1 U835 ( .A(n625), .B(n624), .Y(sum[9]) );
  NOR3X1 U836 ( .A(n716), .B(n715), .C(n714), .Y(n721) );
  ADDFX2 U837 ( .A(Cost[2]), .B(sum_reg[2]), .CI(n887), .CO(n894), .S(n888) );
  NAND2X2 U838 ( .A(n771), .B(n770), .Y(n775) );
  NAND2X1 U839 ( .A(n768), .B(n767), .Y(n771) );
  NOR2X1 U840 ( .A(n926), .B(n970), .Y(n974) );
  NOR2X2 U841 ( .A(sum_reg[1]), .B(Cost[1]), .Y(n667) );
  ADDFHX4 U842 ( .A(Cost[6]), .B(sum_reg[6]), .CI(n902), .CO(n911), .S(n903)
         );
  ADDFHX4 U843 ( .A(Cost[5]), .B(sum_reg[5]), .CI(n900), .CO(n902), .S(n895)
         );
  CMPR22X4 U844 ( .A(sum_reg[8]), .B(n913), .CO(n914), .S(n912) );
  ADDHX2 U845 ( .A(sum_reg[7]), .B(n911), .CO(n913), .S(n901) );
  NAND2X1 U846 ( .A(n950), .B(n455), .Y(n840) );
  OAI21X1 U847 ( .A0(n657), .A1(n663), .B0(n658), .Y(n617) );
  NAND2XL U848 ( .A(n62), .B(n382), .Y(n77) );
  NAND2XL U849 ( .A(n951), .B(n228), .Y(n242) );
  AND2X1 U850 ( .A(n367), .B(n445), .Y(n368) );
  AOI211XL U851 ( .A0(L1[1]), .A1(n839), .B0(n832), .C0(n831), .Y(n309) );
  AOI211XL U852 ( .A0(n299), .A1(L0[1]), .B0(n718), .C0(n717), .Y(n719) );
  OAI22XL U853 ( .A0(n474), .A1(n843), .B0(n283), .B1(n844), .Y(n735) );
  NAND2X1 U854 ( .A(n863), .B(n929), .Y(n922) );
  NOR2BX1 U855 ( .AN(n851), .B(n852), .Y(n417) );
  NAND3XL U856 ( .A(n154), .B(n411), .C(n423), .Y(n152) );
  INVXL U857 ( .A(n667), .Y(n669) );
  NAND2XL U858 ( .A(n653), .B(n652), .Y(n654) );
  INVXL U859 ( .A(n651), .Y(n653) );
  INVXL U860 ( .A(n646), .Y(n648) );
  NAND2X1 U861 ( .A(n638), .B(n643), .Y(n635) );
  INVXL U862 ( .A(sum_reg[8]), .Y(n630) );
  INVXL U863 ( .A(sum_reg[9]), .Y(n624) );
  NAND2X1 U864 ( .A(n621), .B(n638), .Y(n623) );
  INVXL U865 ( .A(n454), .Y(n521) );
  AOI211XL U866 ( .A0(L1[2]), .A1(n839), .B0(n830), .C0(n829), .Y(n437) );
  AOI211XL U867 ( .A0(R4[1]), .A1(n66), .B0(n60), .C0(n59), .Y(n65) );
  OAI211XL U868 ( .A0(n270), .A1(n76), .B0(n58), .C0(n57), .Y(n59) );
  AOI211XL U869 ( .A0(R5[1]), .A1(n398), .B0(n388), .C0(n387), .Y(n389) );
  AOI211XL U870 ( .A0(R0[0]), .A1(n247), .B0(n240), .C0(n239), .Y(n241) );
  NAND2XL U871 ( .A(sum[4]), .B(n758), .Y(n761) );
  ADDFHX2 U872 ( .A(Cost[4]), .B(sum_reg[4]), .CI(n896), .CO(n900), .S(n897)
         );
  XNOR2X1 U873 ( .A(n772), .B(n901), .Y(n906) );
  XNOR2X1 U874 ( .A(n904), .B(n903), .Y(n905) );
  XNOR2X1 U875 ( .A(n766), .B(n895), .Y(n899) );
  INVXL U876 ( .A(n319), .Y(n323) );
  NAND2XL U877 ( .A(sum_reg[7]), .B(sum_reg[8]), .Y(n619) );
  OAI21XL U878 ( .A0(n721), .A1(n720), .B0(n719), .Y(n723) );
  NOR2XL U879 ( .A(n321), .B(n474), .Y(n711) );
  XNOR2X1 U880 ( .A(n889), .B(n888), .Y(n890) );
  XNOR2X1 U881 ( .A(n759), .B(n886), .Y(n891) );
  XNOR2X1 U882 ( .A(n880), .B(n879), .Y(n884) );
  XNOR2X1 U883 ( .A(n882), .B(n881), .Y(n883) );
  XNOR2X1 U884 ( .A(n773), .B(n912), .Y(n918) );
  XNOR2X1 U885 ( .A(n758), .B(n897), .Y(n898) );
  NAND2X1 U886 ( .A(n600), .B(n1025), .Y(n1005) );
  NAND2XL U887 ( .A(n373), .B(n951), .Y(n300) );
  CLKINVX1 U888 ( .A(n299), .Y(n321) );
  BUFX2 U889 ( .A(n815), .Y(n945) );
  NOR2XL U890 ( .A(n153), .B(n154), .Y(n939) );
  NOR2XL U891 ( .A(n953), .B(n525), .Y(n154) );
  NAND2X1 U892 ( .A(sum_reg[1]), .B(Cost[1]), .Y(n668) );
  AOI211XL U893 ( .A0(n780), .A1(R0[0]), .B0(n953), .C0(n700), .Y(n701) );
  INVXL U894 ( .A(n61), .Y(n861) );
  NAND2X1 U895 ( .A(sum_reg[4]), .B(Cost[4]), .Y(n652) );
  NOR2X1 U896 ( .A(sum_reg[5]), .B(Cost[5]), .Y(n646) );
  NAND2X1 U897 ( .A(sum_reg[6]), .B(Cost[6]), .Y(n642) );
  INVXL U898 ( .A(n642), .Y(n633) );
  CLKINVX1 U899 ( .A(n632), .Y(n643) );
  OAI21X2 U900 ( .A0(n646), .A1(n652), .B0(n647), .Y(n639) );
  NOR2X1 U901 ( .A(n632), .B(n636), .Y(n627) );
  NOR2X2 U902 ( .A(n646), .B(n651), .Y(n638) );
  NOR2X1 U903 ( .A(n619), .B(n632), .Y(n621) );
  AND2X1 U904 ( .A(n779), .B(n1021), .Y(n966) );
  NOR3XL U905 ( .A(R4[1]), .B(R4[0]), .C(n534), .Y(n741) );
  CLKBUFX3 U906 ( .A(n673), .Y(n951) );
  NOR3XL U907 ( .A(change_point[1]), .B(n507), .C(n791), .Y(n266) );
  NAND2XL U908 ( .A(search_point[2]), .B(n811), .Y(n818) );
  INVXL U909 ( .A(n818), .Y(n825) );
  NOR2XL U910 ( .A(R4[0]), .B(n534), .Y(n680) );
  INVXL U911 ( .A(n854), .Y(n930) );
  NAND2XL U912 ( .A(L0[1]), .B(n67), .Y(n57) );
  AOI211XL U913 ( .A0(L1[1]), .A1(n382), .B0(n817), .C0(n816), .Y(n233) );
  BUFX2 U914 ( .A(n674), .Y(n952) );
  INVXL U915 ( .A(n927), .Y(n864) );
  CLKINVX1 U916 ( .A(search_point[1]), .Y(n265) );
  INVXL U917 ( .A(value[0]), .Y(n205) );
  AOI211XL U918 ( .A0(n859), .A1(n526), .B0(n858), .C0(n790), .Y(N130) );
  OAI211XL U919 ( .A0(n319), .A1(n536), .B0(n233), .C0(n819), .Y(n447) );
  INVXL U920 ( .A(n399), .Y(n406) );
  OAI211XL U921 ( .A0(n319), .A1(n533), .B0(n244), .C0(n826), .Y(n444) );
  OAI211XL U922 ( .A0(n785), .A1(n828), .B0(n784), .C0(n783), .Y(n522) );
  OAI2BB1XL U923 ( .A0N(n785), .A1N(n828), .B0(n953), .Y(n783) );
  NOR3XL U924 ( .A(n950), .B(n527), .C(n782), .Y(n785) );
  AOI22XL U925 ( .A0(n423), .A1(n422), .B0(n454), .B1(n421), .Y(n426) );
  NAND2XL U926 ( .A(n856), .B(n873), .Y(n421) );
  OAI31XL U927 ( .A0(n173), .A1(n411), .A2(n424), .B0(n778), .Y(n422) );
  OAI211XL U928 ( .A0(n354), .A1(n536), .B0(n340), .C0(n339), .Y(n587) );
  AOI211XL U929 ( .A0(R0[1]), .A1(n341), .B0(RST), .C0(n336), .Y(n340) );
  OAI211XL U930 ( .A0(n923), .A1(n922), .B0(n921), .C0(n450), .Y(n453) );
  OAI211XL U931 ( .A0(n456), .A1(n507), .B0(n547), .C0(n366), .Y(n590) );
  OAI22XL U932 ( .A0(n999), .A1(n998), .B0(n997), .B1(n996), .Y(n1000) );
  XNOR2X1 U933 ( .A(n600), .B(n1025), .Y(n999) );
  NAND2XL U934 ( .A(n1001), .B(sum[9]), .Y(n991) );
  NOR2XL U935 ( .A(RST), .B(n954), .Y(N155) );
  NOR2XL U936 ( .A(counter0[0]), .B(n528), .Y(N144) );
  OAI211XL U937 ( .A0(n354), .A1(n533), .B0(n335), .C0(n334), .Y(n586) );
  AOI211XL U938 ( .A0(R0[2]), .A1(n341), .B0(RST), .C0(n325), .Y(n335) );
  AOI32XL U939 ( .A0(n236), .A1(n250), .A2(n235), .B0(n536), .B1(n249), .Y(
        n578) );
  AOI211XL U940 ( .A0(n952), .A1(n388), .B0(RST), .C0(n234), .Y(n235) );
  AOI211XL U941 ( .A0(R0[2]), .A1(n247), .B0(n246), .C0(n245), .Y(n248) );
  NOR2XL U942 ( .A(n417), .B(n842), .Y(n359) );
  NOR2XL U943 ( .A(RST), .B(W[1]), .Y(N154) );
  OAI22XL U944 ( .A0(n427), .A1(n162), .B0(n515), .B1(n265), .Y(n570) );
  OAI22XL U945 ( .A0(n427), .A1(n172), .B0(n515), .B1(n251), .Y(n571) );
  NOR2XL U946 ( .A(n965), .B(n997), .Y(N594) );
  INVXL U947 ( .A(n964), .Y(N592) );
  NAND2XL U948 ( .A(sum[0]), .B(n1003), .Y(n964) );
  INVXL U949 ( .A(n963), .Y(N593) );
  NAND2XL U950 ( .A(sum[1]), .B(n1003), .Y(n963) );
  OAI22XL U951 ( .A0(n427), .A1(n194), .B0(n425), .B1(n193), .Y(n573) );
  AOI222XL U952 ( .A0(n192), .A1(n423), .B0(R0[1]), .B1(RST), .C0(n191), .C1(
        n454), .Y(n194) );
  OAI211XL U953 ( .A0(n475), .A1(n921), .B0(n872), .C0(n871), .Y(n191) );
  OAI22XL U954 ( .A0(n427), .A1(n185), .B0(n425), .B1(n184), .Y(n572) );
  AOI222XL U955 ( .A0(n182), .A1(n423), .B0(R0[2]), .B1(RST), .C0(n181), .C1(
        n454), .Y(n185) );
  OAI211XL U956 ( .A0(n532), .A1(n921), .B0(n878), .C0(n877), .Y(n181) );
  OAI22XL U957 ( .A0(n427), .A1(n206), .B0(n425), .B1(n205), .Y(n574) );
  AOI222XL U958 ( .A0(n204), .A1(n423), .B0(R0[0]), .B1(RST), .C0(n203), .C1(
        n454), .Y(n206) );
  OAI211XL U959 ( .A0(n486), .A1(n921), .B0(n868), .C0(n867), .Y(n203) );
  INVXL U960 ( .A(n962), .Y(N595) );
  INVXL U961 ( .A(n961), .Y(N596) );
  NAND2XL U962 ( .A(sum[5]), .B(n1003), .Y(n960) );
  NAND2XL U963 ( .A(sum[6]), .B(n1003), .Y(n959) );
  NAND2XL U964 ( .A(sum[7]), .B(n1003), .Y(n958) );
  NAND2XL U965 ( .A(sum[8]), .B(n1003), .Y(n957) );
  NAND2XL U966 ( .A(sum[9]), .B(n1003), .Y(n956) );
  NOR4XL U967 ( .A(n546), .B(n545), .C(n544), .D(n543), .Y(N234) );
  AOI32XL U968 ( .A0(n410), .A1(n409), .A2(n408), .B0(n468), .B1(n407), .Y(
        n593) );
  AOI211XL U969 ( .A0(R5[2]), .A1(n398), .B0(RST), .C0(n397), .Y(n410) );
  INVXL U970 ( .A(n407), .Y(n409) );
  AOI211XL U971 ( .A0(L1[2]), .A1(n406), .B0(n405), .C0(n404), .Y(n408) );
  OAI211XL U972 ( .A0(n399), .A1(n493), .B0(n395), .C0(n394), .Y(n396) );
  AOI211XL U973 ( .A0(R5[0]), .A1(n398), .B0(n393), .C0(n392), .Y(n394) );
  AOI211XL U974 ( .A0(R0[0]), .A1(n810), .B0(n809), .C0(n808), .Y(n267) );
  OAI211XL U975 ( .A0(n523), .A1(n522), .B0(n521), .C0(n520), .Y(N97) );
  AOI211XL U976 ( .A0(n443), .A1(n457), .B0(RST), .C0(n213), .Y(n214) );
  AND2X2 U977 ( .A(n920), .B(n919), .Y(n600) );
  AOI211XL U978 ( .A0(L1[0]), .A1(n839), .B0(n838), .C0(n837), .Y(n314) );
  AOI211XL U979 ( .A0(L1[0]), .A1(n382), .B0(n821), .C0(n820), .Y(n238) );
  OAI211XL U980 ( .A0(L1[1]), .A1(n479), .B0(L1[0]), .C0(n534), .Y(n684) );
  OAI22XL U981 ( .A0(n427), .A1(n426), .B0(n425), .B1(n424), .Y(n594) );
  NAND2X2 U982 ( .A(counter0[1]), .B(n786), .Y(n530) );
  OAI211XL U983 ( .A0(n535), .A1(n319), .B0(n238), .C0(n822), .Y(n457) );
  AOI211XL U984 ( .A0(R0[2]), .A1(n810), .B0(n798), .C0(n797), .Y(n294) );
  CLKINVX1 U985 ( .A(R0[1]), .Y(n270) );
  AOI211XL U986 ( .A0(n780), .A1(R0[1]), .B0(n953), .C0(n694), .Y(n695) );
  AOI211XL U987 ( .A0(R0[1]), .A1(n810), .B0(n803), .C0(n802), .Y(n277) );
  BUFX16 U988 ( .A(n812), .Y(W[1]) );
  NAND2X1 U989 ( .A(sum_reg[5]), .B(Cost[5]), .Y(n647) );
  NAND2X1 U990 ( .A(sum_reg[3]), .B(Cost[3]), .Y(n658) );
  NAND2X1 U991 ( .A(sum_reg[2]), .B(Cost[2]), .Y(n663) );
  INVX16 U992 ( .A(counter1[0]), .Y(W[0]) );
  OAI21XL U993 ( .A0(n705), .A1(n488), .B0(n729), .Y(n712) );
  NOR2XL U994 ( .A(n841), .B(n854), .Y(n923) );
  AOI21XL U995 ( .A0(R6[0]), .A1(n458), .B0(n457), .Y(n460) );
  AOI21XL U996 ( .A0(R6[1]), .A1(n458), .B0(n447), .Y(n448) );
  AOI21XL U997 ( .A0(R6[2]), .A1(n458), .B0(n444), .Y(n446) );
  OAI2BB2X1 U998 ( .B0(n370), .B1(n224), .A0N(n443), .A1N(n458), .Y(n225) );
  AOI211XL U999 ( .A0(value[2]), .A1(n418), .B0(n876), .C0(n875), .Y(n877) );
  AOI211XL U1000 ( .A0(value[1]), .A1(n418), .B0(n870), .C0(n869), .Y(n871) );
  AOI211XL U1001 ( .A0(value[0]), .A1(n418), .B0(n866), .C0(n865), .Y(n867) );
  AOI211XL U1002 ( .A0(n418), .A1(change_point[2]), .B0(n417), .C0(n416), .Y(
        n856) );
  NOR2X2 U1003 ( .A(n852), .B(n851), .Y(n418) );
  NAND2X2 U1004 ( .A(counter0[0]), .B(n781), .Y(n529) );
  AOI222X4 U1005 ( .A0(L1[2]), .A1(n468), .B0(L1[2]), .B1(n685), .C0(n468), 
        .C1(n685), .Y(n929) );
  AOI222X4 U1006 ( .A0(L1[2]), .A1(n474), .B0(L1[2]), .B1(n683), .C0(n474), 
        .C1(n683), .Y(n927) );
  AOI211XL U1007 ( .A0(L1[2]), .A1(n382), .B0(n824), .C0(n823), .Y(n244) );
  BUFX12 U1008 ( .A(n1036), .Y(Valid) );
  INVXL U1009 ( .A(n364), .Y(n874) );
  AOI31XL U1010 ( .A0(n864), .A1(n929), .A2(n853), .B0(n364), .Y(n842) );
  AOI222X4 U1011 ( .A0(L0[2]), .A1(n283), .B0(L0[2]), .B1(n677), .C0(n283), 
        .C1(n677), .Y(n364) );
  INVX12 U1012 ( .A(n1019), .Y(MatchCount[3]) );
  NAND2X2 U1013 ( .A(change_point[0]), .B(n326), .Y(n385) );
  INVX12 U1014 ( .A(n758), .Y(MinCost[4]) );
  CLKINVX1 U1015 ( .A(n1031), .Y(n758) );
  INVX12 U1016 ( .A(n759), .Y(MinCost[3]) );
  CLKINVX1 U1017 ( .A(n1032), .Y(n759) );
  INVX12 U1018 ( .A(n773), .Y(MinCost[8]) );
  CLKINVX1 U1019 ( .A(n1027), .Y(n773) );
  INVX12 U1020 ( .A(n766), .Y(MinCost[5]) );
  CLKINVX1 U1021 ( .A(n1030), .Y(n766) );
  INVX12 U1022 ( .A(n996), .Y(MatchCount[0]) );
  CLKINVX1 U1023 ( .A(n1025), .Y(n996) );
  INVX12 U1024 ( .A(n772), .Y(MinCost[7]) );
  AOI2BB2X1 U1025 ( .B0(n769), .B1(n1028), .A0N(sum[6]), .A1N(n904), .Y(n770)
         );
  CLKINVX1 U1026 ( .A(n1028), .Y(n772) );
  INVX12 U1027 ( .A(n880), .Y(MinCost[0]) );
  CLKINVX1 U1028 ( .A(n1035), .Y(n880) );
  INVX12 U1029 ( .A(n882), .Y(MinCost[1]) );
  CLKINVX1 U1030 ( .A(n1034), .Y(n882) );
  INVX12 U1031 ( .A(n904), .Y(MinCost[6]) );
  CLKINVX1 U1032 ( .A(n1029), .Y(n904) );
  INVX12 U1033 ( .A(n916), .Y(MinCost[9]) );
  CLKINVX1 U1034 ( .A(n1026), .Y(n916) );
  INVX12 U1035 ( .A(n1007), .Y(MatchCount[1]) );
  INVX12 U1036 ( .A(n1010), .Y(MatchCount[2]) );
  NAND3XL U1037 ( .A(n1019), .B(n1023), .C(n1024), .Y(n1018) );
  INVX12 U1038 ( .A(n889), .Y(MinCost[2]) );
  CLKINVX1 U1039 ( .A(n1033), .Y(n889) );
  NAND3XL U1040 ( .A(n752), .B(n1035), .C(n672), .Y(n753) );
  NOR2XL U1041 ( .A(sum[2]), .B(n889), .Y(n755) );
  NAND2XL U1042 ( .A(sum[3]), .B(n759), .Y(n760) );
  NOR2XL U1043 ( .A(L1[0]), .B(n501), .Y(n682) );
  NAND2XL U1044 ( .A(n950), .B(n318), .Y(n942) );
  OAI211XL U1045 ( .A0(counter0[1]), .A1(n411), .B0(n939), .C0(n530), .Y(n941)
         );
  AOI211XL U1046 ( .A0(counter0[1]), .A1(n788), .B0(n61), .C0(n787), .Y(n789)
         );
  NAND2XL U1047 ( .A(n454), .B(n418), .Y(n116) );
  OAI22XL U1048 ( .A0(n531), .A1(n843), .B0(n270), .B1(n844), .Y(n847) );
  NAND4XL U1049 ( .A(change_point[0]), .B(n231), .C(n509), .D(n791), .Y(n253)
         );
  OAI21XL U1050 ( .A0(n521), .A1(n450), .B0(n152), .Y(n170) );
  OAI211XL U1051 ( .A0(n399), .A1(n478), .B0(n390), .C0(n389), .Y(n391) );
  NAND3XL U1052 ( .A(W[2]), .B(n547), .C(W[1]), .Y(n546) );
  AOI21XL U1053 ( .A0(n530), .A1(n529), .B0(n528), .Y(N145) );
  OAI2BB2XL U1054 ( .B0(n456), .B1(n455), .A0N(n454), .A1N(n453), .Y(n598) );
  CLKINVX1 U1055 ( .A(R0[0]), .Y(n256) );
  CLKINVX1 U1056 ( .A(search_point[0]), .Y(n251) );
  NAND2XL U1057 ( .A(n251), .B(n424), .Y(n791) );
  NOR2X1 U1058 ( .A(n251), .B(search_point[1]), .Y(n814) );
  CLKINVX1 U1059 ( .A(counter0[1]), .Y(n781) );
  CLKINVX1 U1060 ( .A(counter0[0]), .Y(n786) );
  NOR2X1 U1061 ( .A(n781), .B(n786), .Y(n527) );
  CLKINVX1 U1062 ( .A(R0[2]), .Y(n283) );
  AOI222XL U1063 ( .A0(R0[1]), .A1(n676), .B0(R0[1]), .B1(n531), .C0(n676), 
        .C1(n531), .Y(n677) );
  CLKINVX2 U1064 ( .A(R6[1]), .Y(n475) );
  AOI2BB2X1 U1065 ( .B0(R6[1]), .B1(n476), .A0N(n486), .A1N(L6[0]), .Y(n679)
         );
  OAI22XL U1066 ( .A0(R6[2]), .A1(n462), .B0(R6[1]), .B1(n476), .Y(n678) );
  OAI22XL U1067 ( .A0(L6[2]), .A1(n532), .B0(n679), .B1(n678), .Y(n851) );
  OAI222XL U1068 ( .A0(n538), .A1(L2[2]), .B0(n477), .B1(n680), .C0(n741), 
        .C1(L2[1]), .Y(n681) );
  OAI21X1 U1069 ( .A0(R4[2]), .A1(n468), .B0(n681), .Y(n928) );
  AOI222XL U1070 ( .A0(L0[1]), .A1(n682), .B0(L0[1]), .B1(n478), .C0(n682), 
        .C1(n478), .Y(n683) );
  OAI21XL U1071 ( .A0(L2[1]), .A1(n478), .B0(n684), .Y(n685) );
  NOR2X1 U1072 ( .A(R6[0]), .B(n535), .Y(n745) );
  AOI222XL U1073 ( .A0(R5[1]), .A1(n745), .B0(R5[1]), .B1(n475), .C0(n745), 
        .C1(n475), .Y(n686) );
  AOI222XL U1074 ( .A0(R6[2]), .A1(n533), .B0(R6[2]), .B1(n686), .C0(n533), 
        .C1(n686), .Y(n841) );
  AOI2BB2X1 U1075 ( .B0(R4[1]), .B1(n536), .A0N(n490), .A1N(R5[0]), .Y(n688)
         );
  OAI22XL U1076 ( .A0(R4[2]), .A1(n533), .B0(R4[1]), .B1(n536), .Y(n687) );
  OAI22X1 U1077 ( .A0(R5[2]), .A1(n538), .B0(n688), .B1(n687), .Y(n854) );
  NOR2X2 U1078 ( .A(change_point[0]), .B(change_point[1]), .Y(n378) );
  CLKINVX1 U1079 ( .A(n953), .Y(n526) );
  INVX3 U1080 ( .A(n527), .Y(n525) );
  NOR2X1 U1081 ( .A(n526), .B(n525), .Y(n173) );
  CLKINVX1 U1082 ( .A(L1[2]), .Y(n467) );
  CLKINVX1 U1083 ( .A(value[2]), .Y(n184) );
  CLKINVX1 U1084 ( .A(value[1]), .Y(n193) );
  CLKINVX1 U1085 ( .A(L1[0]), .Y(n493) );
  NOR2X1 U1086 ( .A(n507), .B(n784), .Y(n299) );
  NOR2X1 U1087 ( .A(change_point[1]), .B(n455), .Y(n326) );
  NAND2X1 U1088 ( .A(change_point[2]), .B(n795), .Y(n212) );
  OAI21XL U1089 ( .A0(n530), .A1(n532), .B0(n953), .Y(n693) );
  NAND2X1 U1090 ( .A(n781), .B(n786), .Y(n699) );
  OAI22XL U1091 ( .A0(n529), .A1(n533), .B0(n699), .B1(n538), .Y(n692) );
  CLKINVX1 U1092 ( .A(n699), .Y(n780) );
  OAI22XL U1093 ( .A0(n529), .A1(n474), .B0(n525), .B1(n468), .Y(n689) );
  OAI21XL U1094 ( .A0(n530), .A1(n467), .B0(n690), .Y(n691) );
  OAI21XL U1095 ( .A0(n693), .A1(n692), .B0(n691), .Y(n732) );
  OAI21X1 U1096 ( .A0(n462), .A1(n705), .B0(n732), .Y(n728) );
  OAI21XL U1097 ( .A0(n475), .A1(n530), .B0(n953), .Y(n698) );
  OAI22XL U1098 ( .A0(n529), .A1(n536), .B0(n477), .B1(n699), .Y(n697) );
  OAI22XL U1099 ( .A0(n529), .A1(n531), .B0(n479), .B1(n525), .Y(n694) );
  OAI21XL U1100 ( .A0(n478), .A1(n530), .B0(n695), .Y(n696) );
  OAI21XL U1101 ( .A0(n698), .A1(n697), .B0(n696), .Y(n730) );
  OAI21X1 U1102 ( .A0(n476), .A1(n705), .B0(n730), .Y(n720) );
  OAI21XL U1103 ( .A0(n530), .A1(n486), .B0(n953), .Y(n704) );
  OAI22XL U1104 ( .A0(n529), .A1(n535), .B0(n699), .B1(n490), .Y(n703) );
  OAI22XL U1105 ( .A0(n529), .A1(n501), .B0(n525), .B1(n534), .Y(n700) );
  OAI21XL U1106 ( .A0(n530), .A1(n493), .B0(n701), .Y(n702) );
  OAI21X1 U1107 ( .A0(n704), .A1(n703), .B0(n702), .Y(n729) );
  OAI22XL U1108 ( .A0(n193), .A1(n720), .B0(n205), .B1(n712), .Y(n706) );
  OA21XL U1109 ( .A0(n184), .A1(n728), .B0(n707), .Y(n727) );
  NAND2X1 U1110 ( .A(change_point[2]), .B(n378), .Y(n931) );
  NAND2X1 U1111 ( .A(change_point[2]), .B(n950), .Y(n937) );
  OAI22XL U1112 ( .A0(n931), .A1(n538), .B0(n937), .B1(n532), .Y(n710) );
  OAI22XL U1113 ( .A0(n385), .A1(n533), .B0(n301), .B1(n468), .Y(n709) );
  OAI22XL U1114 ( .A0(n840), .A1(n467), .B0(n212), .B1(n462), .Y(n708) );
  NOR4X1 U1115 ( .A(n711), .B(n710), .C(n709), .D(n708), .Y(n725) );
  OAI22XL U1116 ( .A0(n385), .A1(n535), .B0(n301), .B1(n534), .Y(n716) );
  OAI22XL U1117 ( .A0(n840), .A1(n493), .B0(n212), .B1(n488), .Y(n715) );
  OA22X1 U1118 ( .A0(n937), .A1(n486), .B0(n931), .B1(n490), .Y(n713) );
  OAI22XL U1119 ( .A0(n536), .A1(n385), .B0(n479), .B1(n301), .Y(n718) );
  OAI22XL U1120 ( .A0(n840), .A1(n478), .B0(n476), .B1(n212), .Y(n717) );
  OAI22XL U1121 ( .A0(n477), .A1(n931), .B0(n475), .B1(n937), .Y(n722) );
  AOI211X4 U1122 ( .A0(n728), .A1(n184), .B0(n727), .C0(n726), .Y(n411) );
  INVX3 U1123 ( .A(n411), .Y(n731) );
  NOR2X1 U1124 ( .A(n173), .B(n731), .Y(n733) );
  OAI22XL U1125 ( .A0(n733), .A1(n205), .B0(n729), .B1(n731), .Y(n204) );
  OAI22XL U1126 ( .A0(n733), .A1(n193), .B0(n730), .B1(n731), .Y(n192) );
  NOR2X1 U1127 ( .A(n251), .B(n265), .Y(n811) );
  NAND2X1 U1128 ( .A(n424), .B(n811), .Y(n318) );
  OAI22XL U1129 ( .A0(n733), .A1(n184), .B0(n732), .B1(n731), .Y(n182) );
  CLKINVX1 U1130 ( .A(n1022), .Y(n1019) );
  CLKINVX1 U1131 ( .A(n1024), .Y(n1007) );
  NAND2X1 U1132 ( .A(counter1[0]), .B(counter1[1]), .Y(n925) );
  NOR2X1 U1133 ( .A(n1021), .B(n925), .Y(n924) );
  OAI22XL U1134 ( .A0(n467), .A1(n925), .B0(n462), .B1(n845), .Y(n736) );
  NAND2X1 U1135 ( .A(counter1[1]), .B(W[0]), .Y(n843) );
  OAI222XL U1136 ( .A0(n845), .A1(n468), .B0(n844), .B1(n538), .C0(n843), .C1(
        n533), .Y(n734) );
  AOI21X1 U1137 ( .A0(R6[2]), .A1(n924), .B0(n738), .Y(n739) );
  INVX12 U1138 ( .A(n739), .Y(J[2]) );
  CLKINVX1 U1139 ( .A(n1023), .Y(n1010) );
  NAND4XL U1140 ( .A(R6[2]), .B(n536), .C(n270), .D(n468), .Y(n743) );
  NOR4XL U1141 ( .A(L1[0]), .B(R0[0]), .C(L1[2]), .D(n533), .Y(n740) );
  NAND4XL U1142 ( .A(n741), .B(n740), .C(n474), .D(n283), .Y(n742) );
  NOR2XL U1143 ( .A(n743), .B(n742), .Y(n744) );
  NAND4XL U1144 ( .A(n744), .B(R4[2]), .C(n745), .D(R6[1]), .Y(n543) );
  NOR2X1 U1145 ( .A(change_point[0]), .B(n784), .Y(n61) );
  CLKINVX1 U1146 ( .A(n318), .Y(n371) );
  OAI22XL U1147 ( .A0(n493), .A1(n925), .B0(n488), .B1(n845), .Y(n748) );
  OAI22XL U1148 ( .A0(n501), .A1(n843), .B0(n256), .B1(n844), .Y(n747) );
  OAI222XL U1149 ( .A0(n845), .A1(n534), .B0(n844), .B1(n490), .C0(n843), .C1(
        n535), .Y(n746) );
  INVX12 U1150 ( .A(n751), .Y(J[0]) );
  INVXL U1151 ( .A(sum[3]), .Y(n757) );
  NAND2X1 U1152 ( .A(sum[1]), .B(n882), .Y(n752) );
  OAI21XL U1153 ( .A0(sum[1]), .A1(n882), .B0(n753), .Y(n754) );
  NAND3X2 U1154 ( .A(n762), .B(n761), .C(n760), .Y(n765) );
  NAND3X2 U1155 ( .A(n765), .B(n764), .C(n763), .Y(n768) );
  AOI22X1 U1156 ( .A0(sum[8]), .A1(n773), .B0(sum[7]), .B1(n772), .Y(n774) );
  NAND4XL U1157 ( .A(L2[1]), .B(L6[1]), .C(L6[0]), .D(L6[2]), .Y(n545) );
  OAI221XL U1158 ( .A0(n527), .A1(n411), .B0(n525), .B1(change_point[2]), .C0(
        n953), .Y(n778) );
  OAI22XL U1159 ( .A0(change_point[0]), .A1(n781), .B0(n780), .B1(n509), .Y(
        n782) );
  NOR2X1 U1160 ( .A(n509), .B(n455), .Y(n828) );
  INVXL U1161 ( .A(n522), .Y(n516) );
  NOR2X1 U1162 ( .A(n378), .B(n455), .Y(n859) );
  OAI22XL U1163 ( .A0(counter0[0]), .A1(change_point[0]), .B0(n786), .B1(n507), 
        .Y(n787) );
  OAI21XL U1164 ( .A0(n859), .A1(n526), .B0(n789), .Y(n790) );
  NOR2X2 U1165 ( .A(search_point[0]), .B(search_point[1]), .Y(n379) );
  NAND2BX1 U1166 ( .AN(n379), .B(search_point[2]), .Y(n231) );
  NAND2X1 U1167 ( .A(n378), .B(n424), .Y(n375) );
  NOR2X2 U1168 ( .A(search_point[2]), .B(n813), .Y(n382) );
  CLKINVX1 U1169 ( .A(n382), .Y(n373) );
  INVXL U1170 ( .A(n378), .Y(n793) );
  NAND2XL U1171 ( .A(search_point[1]), .B(n266), .Y(n792) );
  OAI211X1 U1172 ( .A0(n424), .A1(n793), .B0(n253), .C0(n792), .Y(n810) );
  AOI222XL U1173 ( .A0(L0[2]), .A1(n814), .B0(L2[2]), .B1(n811), .C0(R0[2]), 
        .C1(n379), .Y(n794) );
  NAND2XL U1174 ( .A(n795), .B(n382), .Y(n804) );
  OAI22XL U1175 ( .A0(n794), .A1(n375), .B0(n462), .B1(n804), .Y(n798) );
  AOI2BB2X1 U1176 ( .B0(n795), .B1(n373), .A0N(n813), .A1N(n375), .Y(n807) );
  OAI221XL U1177 ( .A0(n952), .A1(L0[2]), .B0(n951), .B1(R6[2]), .C0(n950), 
        .Y(n796) );
  OAI21XL U1178 ( .A0(n807), .A1(n467), .B0(n796), .Y(n797) );
  AOI2BB2X1 U1179 ( .B0(counter1[2]), .B1(n845), .A0N(counter1[2]), .A1N(n845), 
        .Y(n799) );
  INVX12 U1180 ( .A(n799), .Y(W[2]) );
  AOI222XL U1181 ( .A0(L0[1]), .A1(n814), .B0(L2[1]), .B1(n811), .C0(R0[1]), 
        .C1(n379), .Y(n800) );
  OAI22XL U1182 ( .A0(n800), .A1(n375), .B0(n476), .B1(n804), .Y(n803) );
  OAI221XL U1183 ( .A0(n952), .A1(L0[1]), .B0(n951), .B1(R6[1]), .C0(n950), 
        .Y(n801) );
  OAI21XL U1184 ( .A0(n807), .A1(n478), .B0(n801), .Y(n802) );
  AOI222XL U1185 ( .A0(L2[0]), .A1(n811), .B0(L0[0]), .B1(n814), .C0(R0[0]), 
        .C1(n379), .Y(n805) );
  OAI22XL U1186 ( .A0(n805), .A1(n375), .B0(n488), .B1(n804), .Y(n809) );
  OAI221XL U1187 ( .A0(n952), .A1(L0[0]), .B0(n951), .B1(R6[0]), .C0(n950), 
        .Y(n806) );
  OAI21XL U1188 ( .A0(n807), .A1(n493), .B0(n806), .Y(n808) );
  NAND2X1 U1189 ( .A(n379), .B(n424), .Y(n229) );
  NAND2X1 U1190 ( .A(n229), .B(n818), .Y(n224) );
  NOR2X1 U1191 ( .A(n424), .B(n813), .Y(n458) );
  NAND2X1 U1192 ( .A(search_point[2]), .B(n814), .Y(n319) );
  NAND2XL U1193 ( .A(search_point[2]), .B(n379), .Y(n815) );
  OAI22XL U1194 ( .A0(n531), .A1(n951), .B0(n477), .B1(n945), .Y(n817) );
  OAI22XL U1195 ( .A0(n479), .A1(n318), .B0(n270), .B1(n229), .Y(n816) );
  NAND2XL U1196 ( .A(R0[1]), .B(n825), .Y(n819) );
  OAI22XL U1197 ( .A0(n490), .A1(n945), .B0(n501), .B1(n951), .Y(n821) );
  OAI22XL U1198 ( .A0(n534), .A1(n318), .B0(n256), .B1(n229), .Y(n820) );
  NAND2XL U1199 ( .A(R0[0]), .B(n825), .Y(n822) );
  OAI22XL U1200 ( .A0(n474), .A1(n951), .B0(n538), .B1(n945), .Y(n824) );
  OAI22XL U1201 ( .A0(n468), .A1(n318), .B0(n283), .B1(n229), .Y(n823) );
  NAND2XL U1202 ( .A(R0[2]), .B(n825), .Y(n826) );
  OAI211X1 U1203 ( .A0(n301), .A1(n300), .B0(n932), .C0(n320), .Y(n839) );
  AOI2BB2X1 U1204 ( .B0(n322), .B1(n382), .A0N(n371), .A1N(n931), .Y(n834) );
  OA22X1 U1205 ( .A0(n323), .A1(n937), .B0(n385), .B1(n945), .Y(n833) );
  OAI22XL U1206 ( .A0(n834), .A1(n468), .B0(n833), .B1(n533), .Y(n830) );
  AOI32X1 U1207 ( .A0(change_point[0]), .A1(n326), .A2(n945), .B0(n371), .B1(
        n326), .Y(n835) );
  OAI21XL U1208 ( .A0(n507), .A1(n458), .B0(n319), .Y(n827) );
  NAND2XL U1209 ( .A(n828), .B(n827), .Y(n836) );
  OAI22XL U1210 ( .A0(n538), .A1(n835), .B0(n532), .B1(n836), .Y(n829) );
  OAI22XL U1211 ( .A0(n834), .A1(n479), .B0(n833), .B1(n536), .Y(n832) );
  OAI22XL U1212 ( .A0(n477), .A1(n835), .B0(n475), .B1(n836), .Y(n831) );
  OAI22XL U1213 ( .A0(n834), .A1(n534), .B0(n833), .B1(n535), .Y(n838) );
  OAI22XL U1214 ( .A0(n486), .A1(n836), .B0(n490), .B1(n835), .Y(n837) );
  NOR2X1 U1215 ( .A(n952), .B(n840), .Y(n328) );
  NAND3BX1 U1216 ( .AN(n928), .B(n930), .C(n841), .Y(n853) );
  OAI22XL U1217 ( .A0(n478), .A1(n925), .B0(n476), .B1(n845), .Y(n848) );
  OAI222XL U1218 ( .A0(n845), .A1(n479), .B0(n844), .B1(n477), .C0(n843), .C1(
        n536), .Y(n846) );
  BUFX12 U1219 ( .A(n850), .Y(J[1]) );
  NOR2X1 U1220 ( .A(n922), .B(n853), .Y(n416) );
  NAND2X1 U1221 ( .A(n855), .B(n854), .Y(n873) );
  AOI211XL U1222 ( .A0(counter0[1]), .A1(change_point[1]), .B0(change_point[0]), .C0(counter0[0]), .Y(n857) );
  OAI211X1 U1223 ( .A0(n862), .A1(n953), .B0(n861), .C0(n860), .Y(n183) );
  NAND2BX1 U1224 ( .AN(n922), .B(n928), .Y(n450) );
  NOR2BX1 U1225 ( .AN(n863), .B(n929), .Y(n197) );
  NOR2X1 U1226 ( .A(n864), .B(n364), .Y(n198) );
  CLKINVX1 U1227 ( .A(n417), .Y(n921) );
  AOI2BB2X1 U1228 ( .B0(R5[0]), .B1(n416), .A0N(n534), .A1N(n450), .Y(n868) );
  OAI22XL U1229 ( .A0(n874), .A1(n256), .B0(n490), .B1(n873), .Y(n866) );
  AO22X1 U1230 ( .A0(L1[0]), .A1(n197), .B0(L0[0]), .B1(n198), .Y(n865) );
  AOI2BB2X1 U1231 ( .B0(R5[1]), .B1(n416), .A0N(n479), .A1N(n450), .Y(n872) );
  OAI22XL U1232 ( .A0(n874), .A1(n270), .B0(n477), .B1(n873), .Y(n870) );
  AO22X1 U1233 ( .A0(L0[1]), .A1(n198), .B0(L1[1]), .B1(n197), .Y(n869) );
  AOI2BB2X1 U1234 ( .B0(R5[2]), .B1(n416), .A0N(n468), .A1N(n450), .Y(n878) );
  OAI22XL U1235 ( .A0(n874), .A1(n283), .B0(n538), .B1(n873), .Y(n876) );
  AO22X1 U1236 ( .A0(L0[2]), .A1(n198), .B0(L1[2]), .B1(n197), .Y(n875) );
  NAND4XL U1237 ( .A(L1[1]), .B(L0[0]), .C(counter1[0]), .D(n531), .Y(n544) );
  AO21X1 U1238 ( .A0(n1021), .A1(n925), .B0(n924), .Y(n954) );
  INVX1 U1239 ( .A(n1005), .Y(n1002) );
  OAI21XL U1240 ( .A0(n952), .A1(n385), .B0(n932), .Y(n386) );
  AOI221XL U1241 ( .A0(n930), .A1(n929), .B0(n928), .B1(n929), .C0(n927), .Y(
        n365) );
  INVX1 U1242 ( .A(n945), .Y(n946) );
  OA22X1 U1243 ( .A0(n946), .A1(n937), .B0(n931), .B1(n373), .Y(n934) );
  NAND2BX1 U1244 ( .AN(n937), .B(n946), .Y(n933) );
  OAI22XL U1245 ( .A0(n934), .A1(n490), .B0(n486), .B1(n933), .Y(n350) );
  AOI2BB1X1 U1246 ( .A0N(n382), .A1N(n931), .B0(n328), .Y(n936) );
  OA21XL U1247 ( .A0(n371), .A1(n385), .B0(n932), .Y(n935) );
  OAI22XL U1248 ( .A0(n936), .A1(n493), .B0(n935), .B1(n534), .Y(n351) );
  OAI22XL U1249 ( .A0(n934), .A1(n477), .B0(n475), .B1(n933), .Y(n337) );
  OAI22XL U1250 ( .A0(n936), .A1(n478), .B0(n935), .B1(n479), .Y(n338) );
  OAI22XL U1251 ( .A0(n934), .A1(n538), .B0(n532), .B1(n933), .Y(n332) );
  OAI22XL U1252 ( .A0(n936), .A1(n467), .B0(n935), .B1(n468), .Y(n333) );
  OAI21XL U1253 ( .A0(n424), .A1(n265), .B0(n229), .Y(n230) );
  OAI22XL U1254 ( .A0(n937), .A1(n230), .B0(n385), .B1(n231), .Y(n232) );
  OAI211X1 U1255 ( .A0(counter0[0]), .A1(n411), .B0(n939), .C0(n529), .Y(n938)
         );
  NAND2X1 U1256 ( .A(n411), .B(n183), .Y(n940) );
  AOI2BB2X1 U1257 ( .B0(search_point[0]), .B1(n938), .A0N(n529), .A1N(n940), 
        .Y(n168) );
  AOI2BB2X1 U1258 ( .B0(search_point[1]), .B1(n941), .A0N(n530), .A1N(n940), 
        .Y(n160) );
  NAND2XL U1259 ( .A(n950), .B(n371), .Y(n943) );
  OAI22XL U1260 ( .A0(n532), .A1(n943), .B0(n468), .B1(n942), .Y(n82) );
  AOI221XL U1261 ( .A0(n946), .A1(n462), .B0(n945), .B1(n538), .C0(n944), .Y(
        n83) );
  OAI22XL U1262 ( .A0(n486), .A1(n943), .B0(n534), .B1(n942), .Y(n68) );
  AOI221XL U1263 ( .A0(n946), .A1(n488), .B0(n945), .B1(n490), .C0(n944), .Y(
        n69) );
  OAI22XL U1264 ( .A0(n475), .A1(n943), .B0(n479), .B1(n942), .Y(n55) );
  AOI221XL U1265 ( .A0(n946), .A1(n476), .B0(n945), .B1(n477), .C0(n944), .Y(
        n56) );
  NAND2XL U1266 ( .A(sum[4]), .B(n1003), .Y(n961) );
  NAND2XL U1267 ( .A(sum[3]), .B(n1003), .Y(n962) );
  AND2X2 U1268 ( .A(n955), .B(n547), .Y(n1003) );
  NAND2X4 U1269 ( .A(n1014), .B(n997), .Y(n993) );
  CLKINVX1 U1270 ( .A(n1003), .Y(n997) );
  NAND2XL U1271 ( .A(counter1[0]), .B(n547), .Y(N153) );
  INVX12 U1272 ( .A(RST), .Y(n967) );
  NOR2X1 U1273 ( .A(n1014), .B(n1002), .Y(n1004) );
  NOR2X1 U1274 ( .A(n1004), .B(n1003), .Y(n1009) );
  OR2X1 U1275 ( .A(n1014), .B(n1005), .Y(n1017) );
  INVX1 U1276 ( .A(n1017), .Y(n1011) );
  OAI21XL U1277 ( .A0(n1009), .A1(n1007), .B0(n1006), .Y(n565) );
  NOR2X1 U1278 ( .A(n1016), .B(n1015), .Y(n1020) );
endmodule

