Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crypt_blowfish?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BF_ctx = type { [4 x [256 x i32]], [18 x i32] }
%struct.anon = type { [30 x i8], [63 x i8] }
%struct.anon.0 = type { %struct.BF_ctx, [18 x i32], %union.anon }
%union.anon = type { [6 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"8b \D0\C1\D2\CF\CC\D8\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"$2a$00$abcdefghijklmnopqrstuu\00", align 1
@php_crypt_blowfish_rn.test_hashes = internal unnamed_addr constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"i1D709vfamulimlGcq0qq3UvuUasvEa\00U\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"VUrPmXD6q/nVSSp7pNDhCR9071IfIRe\00U\00", align 1
@flags_by_subtype = internal unnamed_addr constant [26 x i8] c"\02\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\04\00", align 16
@.str.4 = private unnamed_addr constant [12 x i8] c"\FF\A334\FF\FF\FF\A3345\00", align 1
@BF_init_state = internal unnamed_addr constant %struct.BF_ctx { [4 x [256 x i32]] [[256 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946], [256 x i32] [i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241], [256 x i32] [i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504], [256 x i32] [i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462]], [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565] }, align 4
@BF_magic_w = internal unnamed_addr constant [6 x i32] [i32 1332899944, i32 1700884034, i32 1701343084, i32 1684370003, i32 1668446532, i32 1869963892], align 16
@BF_itoa64 = internal unnamed_addr constant [65 x i8] c"./ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 16
@BF_atoi64 = internal unnamed_addr constant [96 x i8] c"@@@@@@@@@@@@@@\00\016789:;<=>?@@@@@@@\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B@@@@@@\1C\1D\1E\1F !\22#$%&'()*+,-./012345@@@@@", align 16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @php_crypt_blowfish_rn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.anon, align 1               ; 9 uses
  %i.a = alloca [18 x i32], align 16              ; 5 uses
  %i.b = alloca [18 x i32], align 16              ; 6 uses
  %i.c = alloca [18 x i32], align 16              ; 6 uses
  %i.d = alloca [18 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.e = icmp slt i32 %3, 3                       ; 2 uses
  br i1 %i.e, label %_crypt_output_magic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 42, ptr %2, align 1, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 48, ptr %i.f, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.g, align 1, !tbaa !13
  %i.h = load i8, ptr %1, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.c, label %_crypt_output_magic.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, 48
  br i1 %i.l, label %bb.d, label %_crypt_output_magic.exit

bb.d:                                             ; preds = %bb.c
  store i8 49, ptr %i.f, align 1, !tbaa !13
  br label %_crypt_output_magic.exit

_crypt_output_magic.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.m = tail call fastcc ptr @BF_crypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 16) ; 2 uses
  %i.n = tail call ptr @__errno_location() #10    ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %4, ptr noundef nonnull align 1 dereferenceable(30) @.str.1, i64 30, i1 false)
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_crypt_output_magic.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 4294967199
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr @flags_by_subtype, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = and i8 %i.v, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @php_crypt_blowfish_rn.test_hashes, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.q, ptr %i.aa, align 1, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_crypt_output_magic.exit
  %.031 = phi ptr [ %i.z, %bb.e ], [ @.str.2, %_crypt_output_magic.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.ab, i8 85, i64 62, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  %i.ad = call fastcc ptr @BF_crypt(ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef nonnull %i.ab, i32 noundef 61, i32 noundef 1) ; 4 uses
  %i.ae = icmp eq ptr %i.ad, %i.ab
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = load i128, ptr %i.ad, align 1
  %i.ag = load i128, ptr %4, align 1
  %i.ah = xor i128 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 13
  %i.aj = getelementptr i8, ptr %4, i64 13
  %i.ak = load i128, ptr %i.ai, align 1
  %i.al = load i128, ptr %i.aj, align 1
  %i.am = xor i128 %i.ak, %i.al
  %i.an = or i128 %i.ah, %i.am
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not33 = icmp eq i32 %i.ap, 0
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 29
  %bcmp34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %i.aq, ptr noundef nonnull dereferenceable(34) %.031, i64 34)
  %.not35 = icmp eq i32 %bcmp34, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %.not35, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %.03442.i = phi ptr [ %.236.3.i, %bb.j ], [ @.str.4, %bb.i ] ; 2 uses
  %i.as = load i8, ptr %.03442.i, align 1, !tbaa !13 ; 2 uses
  %i.at = zext i8 %i.as to i32
  %.not37.i = icmp eq i8 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.03442.i, i64 1
  %.236.i = select i1 %.not37.i, ptr @.str.4, ptr %i.au ; 2 uses
  %i.av = load i8, ptr %.236.i, align 1, !tbaa !13 ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %.not37.1.i = icmp eq i8 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.236.i, i64 1
  %.236.1.i = select i1 %.not37.1.i, ptr @.str.4, ptr %i.ax ; 2 uses
  %i.ay = shl nuw nsw i32 %i.at, 16
  %i.az = shl nuw nsw i32 %i.aw, 8
  %i.ba = or disjoint i32 %i.az, %i.ay
  %i.bb = load i8, ptr %.236.1.i, align 1, !tbaa !13 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %.not37.2.i = icmp eq i8 %i.bb, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.236.1.i, i64 1
  %.236.2.i = select i1 %.not37.2.i, ptr @.str.4, ptr %i.be ; 2 uses
  %i.bf = shl nuw i32 %i.bd, 8
  %i.bg = load i8, ptr %.236.2.i, align 1, !tbaa !13 ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %.not37.3.i = icmp eq i8 %i.bg, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %.236.2.i, i64 1
  %.236.3.i = select i1 %.not37.3.i, ptr @.str.4, ptr %i.bj
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @BF_init_state, i64 4096), i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = xor i32 %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i, label %BF_set_key.exit, label %bb.j, !llvm.loop !0

BF_set_key.exit:                                  ; preds = %bb.j
  %i.bp = load i32, ptr %i.b, align 16, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %BF_set_key.exit
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i53, %bb.k ], [ 0, %BF_set_key.exit ] ; 4 uses
  %.03442.i43 = phi ptr [ %.236.3.i52, %bb.k ], [ @.str.4, %BF_set_key.exit ] ; 2 uses
  %i.bq = load i8, ptr %.03442.i43, align 1, !tbaa !13 ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %.not37.i44 = icmp eq i8 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %.03442.i43, i64 1
  %.236.i45 = select i1 %.not37.i44, ptr @.str.4, ptr %i.bs ; 2 uses
  %i.bt = load i8, ptr %.236.i45, align 1, !tbaa !13 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %.not37.1.i46 = icmp eq i8 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.236.i45, i64 1
  %.236.1.i47 = select i1 %.not37.1.i46, ptr @.str.4, ptr %i.bv ; 2 uses
  %i.bw = shl nuw nsw i32 %i.br, 16
  %i.bx = shl nuw nsw i32 %i.bu, 8
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = load i8, ptr %.236.1.i47, align 1, !tbaa !13 ; 2 uses
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  %.not37.2.i48 = icmp eq i8 %i.bz, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.236.1.i47, i64 1
  %.236.2.i49 = select i1 %.not37.2.i48, ptr @.str.4, ptr %i.cc ; 2 uses
  %i.cd = shl nuw i32 %i.cb, 8
  %i.ce = load i8, ptr %.236.2.i49, align 1, !tbaa !13 ; 2 uses
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  %.not37.3.i51 = icmp eq i8 %i.ce, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %.236.2.i49, i64 1
  %.236.3.i52 = select i1 %.not37.3.i51, ptr @.str.4, ptr %i.ch
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i40
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !14
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @BF_init_state, i64 4096), i64 %indvars.iv.i40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14
  %i.cl = xor i32 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i40
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !14
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, 18
  br i1 %exitcond.not.i54, label %BF_set_key.exit56, label %bb.k, !llvm.loop !0

BF_set_key.exit56:                                ; preds = %bb.k
  %i.cn = icmp eq i32 %i.bp, -610510404
  %or.cond = select i1 %i.ar, i1 %i.cn, i1 false
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.cp, 859059456
  %or.cond5 = select i1 %or.cond, i1 %i.cq, i1 false
  br i1 %or.cond5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %BF_set_key.exit56
  %bcmp36 = call i32 @bcmp(ptr noundef nonnull dereferenceable(72) %i.a, ptr noundef nonnull dereferenceable(72) %i.c, i64 72)
  %.not37 = icmp eq i32 %bcmp36, 0
  br i1 %.not37, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %bcmp38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(72) %i.b, ptr noundef nonnull dereferenceable(72) %i.d, i64 72)
  %.not39 = icmp eq i32 %bcmp38, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store i32 %i.o, ptr %i.n, align 4, !tbaa !14
  br i1 %.not39, label %bb.r, label %bb.n

.critedge:                                        ; preds = %BF_set_key.exit56, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store i32 %i.o, ptr %i.n, align 4, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  br i1 %i.e, label %_crypt_output_magic.exit58, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 42, ptr %2, align 1, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 48, ptr %i.cr, align 1, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.cs, align 1, !tbaa !13
  %i.ct = load i8, ptr %1, align 1, !tbaa !13
  %i.cu = icmp eq i8 %i.ct, 42
  br i1 %i.cu, label %bb.p, label %_crypt_output_magic.exit58

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = icmp eq i8 %i.cw, 48
  br i1 %i.cx, label %bb.q, label %_crypt_output_magic.exit58

bb.q:                                             ; preds = %bb.p
  store i8 49, ptr %i.cr, align 1, !tbaa !13
  br label %_crypt_output_magic.exit58

_crypt_output_magic.exit58:                       ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  store i32 22, ptr %i.n, align 4, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %_crypt_output_magic.exit58
  %.0 = phi ptr [ null, %_crypt_output_magic.exit58 ], [ %i.m, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @BF_crypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2, i32 noundef %3, i32 noundef range(i32 1, 17) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.anon.0, align 4             ; 138 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = icmp slt i32 %3, 61
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #10
  store i32 34, ptr %i.b, align 4, !tbaa !14
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !13
  %.not = icmp eq i8 %i.c, 36
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %.not1866 = icmp eq i8 %i.e, 50
  br i1 %.not1866, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 2 uses
  %i.h = add i8 %i.g, -123
  %or.cond = icmp ult i8 %i.h, -26
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = zext nneg i8 %i.g to i64
  %i.j = add nuw nsw i64 %i.i, 4294967199
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  %i.l = shl nuw nsw i64 1, %i.k
  %i.m = and i64 %i.l, 41943036
  %.not1867.not = icmp eq i64 %i.m, 0
  br i1 %.not1867.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.not1868 = icmp eq i8 %i.o, 36
  br i1 %.not1868, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 3 uses
  %i.r = add i8 %i.q, -52
  %or.cond1875 = icmp ult i8 %i.r, -4
  br i1 %or.cond1875, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 3 uses
  %i.u = add i8 %i.t, -58
  %or.cond1876 = icmp ult i8 %i.u, -10
  br i1 %or.cond1876, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i8 %i.q, 51
  %i.w = icmp samesign ugt i8 %i.t, 49
  %or.cond1877 = and i1 %i.v, %i.w
  br i1 %or.cond1877, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %.not1869 = icmp eq i8 %i.y, 36
  br i1 %.not1869, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.z = tail call ptr @__errno_location() #10
  store i32 22, ptr %i.z, align 4, !tbaa !14
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.aa = zext nneg i8 %i.q to i32
  %i.ab = mul nuw nsw i32 %i.aa, 10
  %i.ac = zext nneg i8 %i.t to i32
  %i.ad = add nuw nsw i32 %i.ab, -528
  %i.ae = add nsw i32 %i.ad, %i.ac
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = icmp ult i32 %i.af, %4
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4240 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = call fastcc i32 @BF_decode(ptr noundef %i.ah, ptr noundef nonnull %i.ai)
  %.not1870 = icmp eq i32 %i.aj, 0
  br i1 %.not1870, label %.preheader1886.preheader, label %bb.o

.preheader1886.preheader:                         ; preds = %bb.n
end_hunk_0
begin_hunk_1_@BF_crypt:bb.a
  %i.ckc = lshr i32 %i.cjy, 16
  %i.ckd = and i32 %i.ckc, 255
  %i.cke = lshr i32 %i.cjy, 24
  %i.ckf = zext nneg i32 %i.cjz to i64
  %i.ckg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ckf
  %i.ckh = load i32, ptr %i.ckg, align 4, !tbaa !14
  %i.cki = zext nneg i32 %i.ckb to i64
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cki
  %i.ckk = load i32, ptr %i.ckj, align 4, !tbaa !14
  %i.ckl = zext nneg i32 %i.ckd to i64
  %i.ckm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ckl
  %i.ckn = load i32, ptr %i.ckm, align 4, !tbaa !14
  %i.cko = zext nneg i32 %i.cke to i64
  %i.ckp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cko
  %i.ckq = load i32, ptr %i.ckp, align 4, !tbaa !14
  %i.ckr = add i32 %i.ckq, %i.ckn
  %i.cks = xor i32 %i.ckr, %i.ckk
  %i.ckt = add i32 %i.cks, %i.ckh
  %i.cku = xor i32 %i.caq, %i.ckt
  %i.ckv = xor i32 %i.cku, %i.cjb                 ; 5 uses
  %i.ckw = and i32 %i.ckv, 255
  %i.ckx = lshr i32 %i.ckv, 8
  %i.cky = and i32 %i.ckx, 255
  %i.ckz = lshr i32 %i.ckv, 16
  %i.cla = and i32 %i.ckz, 255
  %i.clb = lshr i32 %i.ckv, 24
  %i.clc = zext nneg i32 %i.ckw to i64
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.clc
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !14
  %i.clf = zext nneg i32 %i.cky to i64
  %i.clg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.clf
  %i.clh = load i32, ptr %i.clg, align 4, !tbaa !14
  %i.cli = zext nneg i32 %i.cla to i64
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cli
  %i.clk = load i32, ptr %i.clj, align 4, !tbaa !14
  %i.cll = zext nneg i32 %i.clb to i64
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cll
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !14
  %i.clo = add i32 %i.cln, %i.clk
  %i.clp = xor i32 %i.clo, %i.clh
  %i.clq = add i32 %i.clp, %i.cle
  %i.clr = xor i32 %i.car, %i.clq
  %i.cls = xor i32 %i.clr, %i.cjy                 ; 5 uses
  %i.clt = and i32 %i.cls, 255
  %i.clu = lshr i32 %i.cls, 8
  %i.clv = and i32 %i.clu, 255
  %i.clw = lshr i32 %i.cls, 16
  %i.clx = and i32 %i.clw, 255
  %i.cly = lshr i32 %i.cls, 24
  %i.clz = zext nneg i32 %i.clt to i64
  %i.cma = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.clz
  %i.cmb = load i32, ptr %i.cma, align 4, !tbaa !14
  %i.cmc = zext nneg i32 %i.clv to i64
  %i.cmd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cmc
  %i.cme = load i32, ptr %i.cmd, align 4, !tbaa !14
  %i.cmf = zext nneg i32 %i.clx to i64
  %i.cmg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cmf
  %i.cmh = load i32, ptr %i.cmg, align 4, !tbaa !14
  %i.cmi = zext nneg i32 %i.cly to i64
  %i.cmj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cmi
  %i.cmk = load i32, ptr %i.cmj, align 4, !tbaa !14
  %i.cml = add i32 %i.cmk, %i.cmh
  %i.cmm = xor i32 %i.cml, %i.cme
  %i.cmn = add i32 %i.cmm, %i.cmb
  %i.cmo = xor i32 %i.cas, %i.cmn
  %i.cmp = xor i32 %i.cmo, %i.ckv                 ; 5 uses
  %i.cmq = and i32 %i.cmp, 255
  %i.cmr = lshr i32 %i.cmp, 8
  %i.cms = and i32 %i.cmr, 255
  %i.cmt = lshr i32 %i.cmp, 16
  %i.cmu = and i32 %i.cmt, 255
  %i.cmv = lshr i32 %i.cmp, 24
  %i.cmw = zext nneg i32 %i.cmq to i64
  %i.cmx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cmw
  %i.cmy = load i32, ptr %i.cmx, align 4, !tbaa !14
  %i.cmz = zext nneg i32 %i.cms to i64
  %i.cna = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cmz
  %i.cnb = load i32, ptr %i.cna, align 4, !tbaa !14
  %i.cnc = zext nneg i32 %i.cmu to i64
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cnc
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !14
  %i.cnf = zext nneg i32 %i.cmv to i64
  %i.cng = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cnf
  %i.cnh = load i32, ptr %i.cng, align 4, !tbaa !14
  %i.cni = add i32 %i.cnh, %i.cne
  %i.cnj = xor i32 %i.cni, %i.cnb
  %i.cnk = add i32 %i.cnj, %i.cmy
  %i.cnl = xor i32 %i.cat, %i.cnk
  %i.cnm = xor i32 %i.cnl, %i.cls                 ; 5 uses
  %i.cnn = and i32 %i.cnm, 255
  %i.cno = lshr i32 %i.cnm, 8
  %i.cnp = and i32 %i.cno, 255
  %i.cnq = lshr i32 %i.cnm, 16
  %i.cnr = and i32 %i.cnq, 255
  %i.cns = lshr i32 %i.cnm, 24
  %i.cnt = zext nneg i32 %i.cnn to i64
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cnt
  %i.cnv = load i32, ptr %i.cnu, align 4, !tbaa !14
  %i.cnw = zext nneg i32 %i.cnp to i64
  %i.cnx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cnw
  %i.cny = load i32, ptr %i.cnx, align 4, !tbaa !14
  %i.cnz = zext nneg i32 %i.cnr to i64
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cnz
  %i.cob = load i32, ptr %i.coa, align 4, !tbaa !14
  %i.coc = zext nneg i32 %i.cns to i64
  %i.cod = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.coc
  %i.coe = load i32, ptr %i.cod, align 4, !tbaa !14
  %i.cof = add i32 %i.coe, %i.cob
  %i.cog = xor i32 %i.cof, %i.cny
  %i.coh = add i32 %i.cog, %i.cnv
  %i.coi = xor i32 %i.cau, %i.coh
  %i.coj = xor i32 %i.coi, %i.cmp                 ; 5 uses
  %i.cok = and i32 %i.coj, 255
  %i.col = lshr i32 %i.coj, 8
  %i.com = and i32 %i.col, 255
  %i.con = lshr i32 %i.coj, 16
  %i.coo = and i32 %i.con, 255
  %i.cop = lshr i32 %i.coj, 24
  %i.coq = zext nneg i32 %i.cok to i64
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.coq
  %i.cos = load i32, ptr %i.cor, align 4, !tbaa !14
  %i.cot = zext nneg i32 %i.com to i64
  %i.cou = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cot
  %i.cov = load i32, ptr %i.cou, align 4, !tbaa !14
  %i.cow = zext nneg i32 %i.coo to i64
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cow
  %i.coy = load i32, ptr %i.cox, align 4, !tbaa !14
  %i.coz = zext nneg i32 %i.cop to i64
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.coz
  %i.cpb = load i32, ptr %i.cpa, align 4, !tbaa !14
  %i.cpc = add i32 %i.cpb, %i.coy
  %i.cpd = xor i32 %i.cpc, %i.cov
  %i.cpe = add i32 %i.cpd, %i.cos
  %i.cpf = xor i32 %i.cav, %i.cpe
  %i.cpg = xor i32 %i.cpf, %i.cnm                 ; 2 uses
  %i.cph = xor i32 %i.caw, %i.coj                 ; 2 uses
  %i.cpi = add nsw i32 %.11847, -1                ; 2 uses
  %.not1874 = icmp eq i32 %i.cpi, 0
  br i1 %.not1874, label %bb.x, label %bb.w, !llvm.loop !24

bb.x:                                             ; preds = %bb.w
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv1931
  store i32 %i.cph, ptr %i.cpj, align 4, !tbaa !13
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.caz
  store i32 %i.cpg, ptr %i.cpk, align 4, !tbaa !13
  %indvars.iv.next1932 = add nuw nsw i64 %indvars.iv1931, 2
  %i.cpl = icmp samesign ult i64 %indvars.iv1931, 4
  br i1 %i.cpl, label %bb.v, label %BF_swap.exit1881, !llvm.loop !25

BF_swap.exit1881:                                 ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %2, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 28, i1 false)
  %i.cpm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cpn = load i8, ptr %i.cpm, align 1, !tbaa !13
  %i.cpo = sext i8 %i.cpn to i64
  %i.cpp = getelementptr i8, ptr @BF_atoi64, i64 %i.cpo
  %i.cpq = getelementptr i8, ptr %i.cpp, i64 -32
  %i.cpr = load i8, ptr %i.cpq, align 1, !tbaa !13
  %i.cps = and i8 %i.cpr, 48
  %i.cpt = zext nneg i8 %i.cps to i64
  %i.cpu = getelementptr inbounds nuw i8, ptr @BF_itoa64, i64 %i.cpt
  %i.cpv = load i8, ptr %i.cpu, align 16, !tbaa !13
  %i.cpw = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %i.cpv, ptr %i.cpw, align 1, !tbaa !13
  %i.cpx = getelementptr inbounds nuw i8, ptr %5, i64 4256 ; 2 uses
  %i.cpy = load <4 x i32>, ptr %i.ah, align 4, !tbaa !14
  %i.cpz = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cpy)
  store <4 x i32> %i.cpz, ptr %i.ah, align 4, !tbaa !14
  %i.cqa = load i32, ptr %i.cpx, align 4, !tbaa !14
  %i.cqb = tail call i32 @llvm.bswap.i32(i32 %i.cqa)
  %i.cqc = getelementptr inbounds nuw i8, ptr %5, i64 4260 ; 2 uses
  store i32 %i.cqb, ptr %i.cpx, align 4, !tbaa !14
  %i.cqd = load i32, ptr %i.cqc, align 4, !tbaa !14
  %i.cqe = tail call i32 @llvm.bswap.i32(i32 %i.cqd)
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !14
  %i.cqf = getelementptr inbounds nuw i8, ptr %2, i64 29
  call fastcc void @BF_encode(ptr noundef nonnull %i.cqf, ptr noundef %i.ah)
  %i.cqg = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i8 0, ptr %i.cqg, align 1, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %BF_swap.exit1881, %bb.o, %bb.l, %bb.b
  %.01860 = phi ptr [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.o ], [ %2, %BF_swap.exit1881 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret ptr %.01860
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @BF_set_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i8 noundef zeroext %3) unnamed_addr #5 {
  %5 = zext i8 %3 to i32                          ; 2 uses
  %6 = and i32 %5, 1
  %.sroa.idx.not = icmp eq i32 %6, 0
  br i1 %.sroa.idx.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %4, %bb.a
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.a ], [ 0, %4 ] ; 4 uses
  %.061.us = phi i32 [ %36, %bb.a ], [ 0, %4 ]
  %.04660.us = phi i32 [ %.2.us.3, %bb.a ], [ 0, %4 ]
  %.04958.us = phi ptr [ %.251.us.3, %bb.a ], [ %0, %4 ] ; 2 uses
  %7 = load i8, ptr %.04958.us, align 1, !tbaa !13 ; 3 uses
  %8 = zext i8 %7 to i32
  %9 = sext i8 %7 to i32
  %.not52.us = icmp eq i8 %7, 0
  %10 = getelementptr inbounds nuw i8, ptr %.04958.us, i64 1
  %.251.us = select i1 %.not52.us, ptr %0, ptr %10 ; 2 uses
  %11 = load i8, ptr %.251.us, align 1, !tbaa !13 ; 3 uses
  %12 = zext i8 %11 to i32
  %13 = sext i8 %11 to i32                        ; 2 uses
  %.not52.us.1 = icmp eq i8 %11, 0
  %14 = getelementptr inbounds nuw i8, ptr %.251.us, i64 1
  %.251.us.1 = select i1 %.not52.us.1, ptr %0, ptr %14 ; 2 uses
  %15 = shl nuw nsw i32 %8, 16
  %16 = shl nuw nsw i32 %12, 8
  %17 = or disjoint i32 %15, %16
  %18 = load i8, ptr %.251.us.1, align 1, !tbaa !13 ; 3 uses
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %17, %19
  %21 = shl nsw i32 %9, 16
  %22 = shl nsw i32 %13, 8
  %23 = or i32 %21, %22
  %24 = sext i8 %18 to i32                        ; 2 uses
  %25 = or i32 %23, %24
  %26 = or i32 %13, %24
  %.not52.us.2 = icmp eq i8 %18, 0
  %27 = getelementptr inbounds nuw i8, ptr %.251.us.1, i64 1
  %.251.us.2 = select i1 %.not52.us.2, ptr %0, ptr %27 ; 2 uses
  %28 = shl nuw i32 %20, 8
  %29 = load i8, ptr %.251.us.2, align 1, !tbaa !13 ; 3 uses
  %i.a = zext i8 %29 to i32
  %30 = or disjoint i32 %28, %i.a                 ; 3 uses
  %31 = shl nsw i32 %25, 8
  %32 = sext i8 %29 to i32                        ; 2 uses
  %33 = or i32 %31, %32
  %34 = or i32 %26, %32
  %i.b = and i32 %34, 128
  %.2.us.3 = or i32 %i.b, %.04660.us              ; 2 uses
  %.not52.us.3 = icmp eq i8 %29, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.251.us.2, i64 1
  %.251.us.3 = select i1 %.not52.us.3, ptr %0, ptr %i.c
  %35 = xor i32 %30, %33
  %36 = or i32 %35, %.061.us                      ; 2 uses
  %37 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv73
  store i32 %30, ptr %37, align 4, !tbaa !14
  %38 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @BF_init_state, i64 4096), i64 %indvars.iv73
  %39 = load i32, ptr %38, align 4, !tbaa !14
  %40 = xor i32 %39, %30
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv73
  store i32 %40, ptr %i.d, align 4, !tbaa !14
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 18
  br i1 %exitcond76.not, label %bb.c, label %bb.a, !llvm.loop !0

bb.b:                                             ; preds = %4, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %4 ] ; 4 uses
  %.045 = phi i32 [ %i.ak, %bb.b ], [ 0, %4 ]
  %.03144 = phi i32 [ %.2.3, %bb.b ], [ 0, %4 ]
  %.03442 = phi ptr [ %.236.3, %bb.b ], [ %0, %4 ] ; 2 uses
  %i.e = load i8, ptr %.03442, align 1, !tbaa !13 ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = sext i8 %i.e to i32
  %.not37 = icmp eq i8 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.03442, i64 1
  %.236 = select i1 %.not37, ptr %0, ptr %i.h     ; 2 uses
  %i.i = load i8, ptr %.236, align 1, !tbaa !13   ; 3 uses
  %i.j = zext i8 %i.i to i32
  %i.k = sext i8 %i.i to i32                      ; 2 uses
  %.not37.1 = icmp eq i8 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.236, i64 1
  %.236.1 = select i1 %.not37.1, ptr %0, ptr %i.l ; 2 uses
  %i.m = shl nuw nsw i32 %i.f, 16
  %i.n = shl nuw nsw i32 %i.j, 8
  %i.o = or disjoint i32 %i.m, %i.n
  %i.p = load i8, ptr %.236.1, align 1, !tbaa !13 ; 3 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = shl nsw i32 %i.g, 16
  %i.t = shl nsw i32 %i.k, 8
  %i.u = or i32 %i.s, %i.t
  %i.v = sext i8 %i.p to i32                      ; 2 uses
  %i.w = or i32 %i.u, %i.v
  %i.x = or i32 %i.k, %i.v
  %.not37.2 = icmp eq i8 %i.p, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.236.1, i64 1
  %.236.2 = select i1 %.not37.2, ptr %0, ptr %i.y ; 2 uses
  %i.z = shl nuw i32 %i.r, 8
  %i.aa = load i8, ptr %.236.2, align 1, !tbaa !13 ; 3 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = shl nsw i32 %i.w, 8
  %i.ae = sext i8 %i.aa to i32                    ; 2 uses
  %i.af = or i32 %i.ad, %i.ae                     ; 3 uses
  %i.ag = or i32 %i.x, %i.ae
  %i.ah = and i32 %i.ag, 128
  %.2.3 = or i32 %i.ah, %.03144                   ; 2 uses
  %.not37.3 = icmp eq i8 %i.aa, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.236.2, i64 1
  %.236.3 = select i1 %.not37.3, ptr %0, ptr %i.ai
  %i.aj = xor i32 %i.ac, %i.af
  %i.ak = or i32 %i.aj, %.045                     ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.af, ptr %i.al, align 4, !tbaa !14
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @BF_init_state, i64 4096), i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14
  %i.ao = xor i32 %i.an, %i.af
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %bb.a
  %.us-phi = phi i32 [ %.2.us.3, %bb.a ], [ %.2.3, %bb.b ]
  %.us-phi64 = phi i32 [ %36, %bb.a ], [ %i.ak, %bb.b ] ; 2 uses
  %i.aq = shl nuw nsw i32 %5, 15
  %41 = and i32 %i.aq, 65536
  %i.ar = lshr i32 %.us-phi64, 16
  %.0.masked = and i32 %.us-phi64, 65535
  %i.as = or i32 %.0.masked, %i.ar
  %i.at = shl nuw nsw i32 %.us-phi, 9
  %i.au = sub nuw nsw i32 65536, %i.as
  %i.av = and i32 %41, %i.at
  %i.aw = and i32 %i.av, %i.au
  %i.ax = load i32, ptr %2, align 4, !tbaa !14
  %i.ay = xor i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %2, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 1) i32 @BF_decode(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %i.c, -32                    ; 2 uses
  %i.e = icmp ugt i32 %i.d, 95
  br i1 %i.e, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %i.i = icmp ugt i8 %i.h, 63
  br i1 %i.i, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.a, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -32                    ; 2 uses
  %i.n = icmp ugt i32 %i.m, 95
  br i1 %i.n, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13    ; 3 uses
  %i.r = icmp ugt i8 %i.q, 63
  br i1 %i.r, label %bb.at, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw i8 %i.h, 2
  %i.t = lshr i8 %i.q, 4
  %i.u = or disjoint i8 %i.t, %i.s
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %0, align 1, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.j, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -32                    ; 2 uses
  %i.z = icmp ugt i32 %i.y, 95
  br i1 %i.z, label %bb.at, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 3 uses
  %i.ad = icmp ugt i8 %i.ac, 63
  br i1 %i.ad, label %bb.at, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl i8 %i.q, 4
  %i.af = lshr i8 %i.ac, 2
  %i.ag = or disjoint i8 %i.af, %i.ae
  %.ptr54 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %.ptr, align 1, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i8, ptr %i.v, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -32                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 95
  br i1 %i.al, label %bb.at, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13  ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 63
  br i1 %i.ap, label %bb.at, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = shl i8 %i.ac, 6
  %i.ar = or disjoint i8 %i.ao, %i.aq
  store i8 %i.ar, ptr %.ptr54, align 1, !tbaa !13
  %.039.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.at = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -32                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 95
  br i1 %i.aw, label %bb.at, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 63
  br i1 %i.ba, label %bb.at, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bc = load i8, ptr %i.as, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -32                  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 95
  br i1 %i.bf, label %bb.at, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13  ; 3 uses
  %i.bj = icmp ugt i8 %i.bi, 63
  br i1 %i.bj, label %bb.at, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = shl nuw i8 %i.az, 2
  %i.bl = lshr i8 %i.bi, 4
  %i.bm = or disjoint i8 %i.bl, %i.bk
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bm, ptr %.039.ptr.1, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bo = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -32                  ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 95
  br i1 %i.br, label %bb.at, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13  ; 3 uses
  %i.bv = icmp ugt i8 %i.bu, 63
  br i1 %i.bv, label %bb.at, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = shl i8 %i.bi, 4
  %i.bx = lshr i8 %i.bu, 2
  %i.by = or disjoint i8 %i.bx, %i.bw
  %.ptr54.1 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.by, ptr %.ptr.1, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -32                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 95
  br i1 %i.cd, label %bb.at, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13  ; 2 uses
  %i.ch = icmp ugt i8 %i.cg, 63
  br i1 %i.ch, label %bb.at, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = shl i8 %i.bu, 6
  %i.cj = or disjoint i8 %i.cg, %i.ci
  store i8 %i.cj, ptr %.ptr54.1, align 1, !tbaa !13
  %.039.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cl = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -32                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 95
  br i1 %i.co, label %bb.at, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13  ; 2 uses
  %i.cs = icmp ugt i8 %i.cr, 63
  br i1 %i.cs, label %bb.at, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -32                  ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 95
  br i1 %i.cx, label %bb.at, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13  ; 3 uses
  %i.db = icmp ugt i8 %i.da, 63
  br i1 %i.db, label %bb.at, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = shl nuw i8 %i.cr, 2
  %i.dd = lshr i8 %i.da, 4
  %i.de = or disjoint i8 %i.dd, %i.dc
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.de, ptr %.039.ptr.2, align 1, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dg = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %i.dh, -32                  ; 2 uses
  %i.dj = icmp ugt i32 %i.di, 95
  br i1 %i.dj, label %bb.at, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @BF_atoi64, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13  ; 3 uses
end_hunk_1
