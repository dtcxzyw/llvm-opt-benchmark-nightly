inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl12lts_2025051215random_internal16kRandenRoundKeysE = external constant [2176 x i8], align 16
@_ZN12_GLOBAL__N_13te0E = internal unnamed_addr constant [256 x i32] [i32 -1520213050, i32 -2072216328, i32 -1720223762, i32 -1921287178, i32 234025727, i32 -1117033514, i32 -1318096930, i32 1422247313, i32 1345335392, i32 50397442, i32 -1452841010, i32 2099981142, i32 436141799, i32 1658312629, i32 -424957107, i32 -1703512340, i32 1170918031, i32 -1652391393, i32 1086966153, i32 -2021818886, i32 368769775, i32 -346465870, i32 -918075506, i32 200339707, i32 -324162239, i32 1742001331, i32 -39673249, i32 -357585083, i32 -1080255453, i32 -140204973, i32 -1770884380, i32 1539358875, i32 -1028147339, i32 486407649, i32 -1366060227, i32 1780885068, i32 1513502316, i32 1094664062, i32 49805301, i32 1338821763, i32 1546925160, i32 -190470831, i32 887481809, i32 150073849, i32 -1821281822, i32 1943591083, i32 1395732834, i32 1058346282, i32 201589768, i32 1388824469, i32 1696801606, i32 1589887901, i32 672667696, i32 -1583966665, i32 251987210, i32 -1248159185, i32 151455502, i32 907153956, i32 -1686077413, i32 1038279391, i32 652995533, i32 1764173646, i32 -843926913, i32 -1619692054, i32 453576978, i32 -1635548387, i32 1949051992, i32 773462580, i32 756751158, i32 -1301385508, i32 -296068428, i32 -73359269, i32 -162377052, i32 1295727478, i32 1641469623, i32 -827083907, i32 2066295122, i32 1055122397, i32 1898917726, i32 -1752923117, i32 -179088474, i32 1758581177, i32 0, i32 753790401, i32 1612718144, i32 536673507, i32 -927878791, i32 -312779850, i32 -1100322092, i32 1187761037, i32 -641810841, i32 1262041458, i32 -565556588, i32 -733197160, i32 -396863312, i32 1255133061, i32 1808847035, i32 720367557, i32 -441800113, i32 385612781, i32 -985447546, i32 -682799718, i32 1429418854, i32 -1803188975, i32 -817543798, i32 284817897, i32 100794884, i32 -2122350594, i32 -263171936, i32 1144798328, i32 -1163944155, i32 -475486133, i32 -212774494, i32 -22830243, i32 -1069531008, i32 -1970303227, i32 -1382903233, i32 -1130521311, i32 1211644016, i32 83228145, i32 -541279133, i32 -1044990345, i32 1977277103, i32 1663115586, i32 806359072, i32 452984805, i32 250868733, i32 1842533055, i32 1288555905, i32 336333848, i32 890442534, i32 804056259, i32 -513843266, i32 -1567123659, i32 -867941240, i32 957814574, i32 1472513171, i32 -223893675, i32 -2105639172, i32 1195195770, i32 -1402706744, i32 -413311558, i32 723065138, i32 -1787595802, i32 -1604296512, i32 -1736343271, i32 -783331426, i32 2145180835, i32 1713513028, i32 2116692564, i32 -1416589253, i32 -2088204277, i32 -901364084, i32 703524551, i32 -742868885, i32 1007948840, i32 2044649127, i32 -497131844, i32 487262998, i32 1994120109, i32 1004593371, i32 1446130276, i32 1312438900, i32 503974420, i32 -615954030, i32 168166924, i32 1814307912, i32 -463709000, i32 1573044895, i32 1859376061, i32 -273896381, i32 -1503501628, i32 -1466855111, i32 -1533700815, i32 937747667, i32 -1954973198, i32 854058965, i32 1137232011, i32 1496790894, i32 -1217565222, i32 -1936880383, i32 1691735473, i32 -766620004, i32 -525751991, i32 -1267962664, i32 -95005012, i32 133494003, i32 636152527, i32 -1352309302, i32 -1904575756, i32 -374428089, i32 403179536, i32 -709182865, i32 -2005370640, i32 1864705354, i32 1915629148, i32 605822008, i32 -240736681, i32 -944458637, i32 1371981463, i32 602466507, i32 2094914977, i32 -1670089496, i32 555687742, i32 -582268010, i32 -591544991, i32 -2037675251, i32 -2054518257, i32 -1871679264, i32 1111375484, i32 -994724495, i32 -1436129588, i32 -666351472, i32 84083462, i32 32962295, i32 302911004, i32 -1553899070, i32 1597322602, i32 -111716434, i32 -793134743, i32 -1853454825, i32 1489093017, i32 656219450, i32 -1180787161, i32 954327513, i32 335083755, i32 -1281845205, i32 856756514, i32 -1150719534, i32 1893325225, i32 -1987146233, i32 -1483434957, i32 -1231316179, i32 572399164, i32 -1836611819, i32 552200649, i32 1238290055, i32 -11184726, i32 2015897680, i32 2061492133, i32 -1886614525, i32 -123625127, i32 -2138470135, i32 386731290, i32 -624967835, i32 837215959, i32 -968736124, i32 -1201116976, i32 -1019133566, i32 -1332111063, i32 1999449434, i32 286199582, i32 -877612933, i32 -61582168, i32 -692339859, i32 974525996], align 16
@_ZN12_GLOBAL__N_13te1E = internal unnamed_addr constant [256 x i32] [i32 1667483301, i32 2088564868, i32 2004348569, i32 2071721613, i32 -218956019, i32 1802229437, i32 1869602481, i32 -976907948, i32 808476752, i32 16843267, i32 1734856361, i32 724260477, i32 -16849127, i32 -673729182, i32 -1414836762, i32 1987505306, i32 -892694715, i32 -2105401443, i32 -909539008, i32 2105408135, i32 -84218091, i32 1499050731, i32 1195871945, i32 -252642549, i32 -1381154324, i32 -724257945, i32 -1566416899, i32 -1347467798, i32 -1667488833, i32 -1532734473, i32 1920132246, i32 -1061119141, i32 -1212713534, i32 -33693412, i32 -1819066962, i32 640044138, i32 909536346, i32 1061125697, i32 -134744830, i32 -859012273, i32 875849820, i32 -1515892236, i32 -437923532, i32 -235800312, i32 1903288979, i32 -656888973, i32 825320019, i32 353708607, i32 67373068, i32 -943221422, i32 589514341, i32 -1010590370, i32 404238376, i32 -1768540255, i32 84216335, i32 -1701171275, i32 117902857, i32 303178806, i32 -2139087973, i32 -488448195, i32 -336868058, i32 656887401, i32 -1296924723, i32 1970662047, i32 151589403, i32 -2088559202, i32 741103732, i32 437924910, i32 454768173, i32 1852759218, i32 1515893998, i32 -1600103429, i32 1381147894, i32 993752653, i32 -690571423, i32 -1280082482, i32 690573947, i32 -471605954, i32 791633521, i32 -2071719017, i32 1397991157, i32 -774784664, i32 0, i32 -303185620, i32 538984544, i32 -50535649, i32 -1313769016, i32 1532737261, i32 1785386174, i32 -875852474, i32 -1094817831, i32 960066123, i32 1246401758, i32 1280088276, i32 1482207464, i32 -808483510, i32 -791626901, i32 -269499094, i32 -1431679003, i32 -67375850, i32 1128498885, i32 1296931543, i32 859006549, i32 -2054876780, i32 1162185423, i32 -101062384, i32 33686534, i32 2139094657, i32 1347461360, i32 1010595908, i32 -1616960070, i32 -1465365533, i32 1364304627, i32 -1549574658, i32 1077969088, i32 -1886452342, i32 -1835909203, i32 -1650646596, i32 943222856, i32 -168431356, i32 -1128504353, i32 -1229555775, i32 -623202443, i32 555827811, i32 269492272, i32 -6886, i32 -202113778, i32 -757940371, i32 -842170036, i32 202119188, i32 320022069, i32 -320027857, i32 1600110305, i32 -1751698014, i32 1145342156, i32 387395129, i32 -993750185, i32 -1482205710, i32 2122251394, i32 1027439175, i32 1684326572, i32 1566423783, i32 421081643, i32 1936975509, i32 1616953504, i32 -2122245736, i32 1330618065, i32 -589520001, i32 572671078, i32 707417214, i32 -1869595733, i32 -2004350077, i32 1179028682, i32 -286341335, i32 -1195873325, i32 336865340, i32 -555833479, i32 1583267042, i32 185275933, i32 -606360202, i32 -522134725, i32 842163286, i32 976909390, i32 168432670, i32 1229558491, i32 101059594, i32 606357612, i32 1549580516, i32 -1027432611, i32 -741098130, i32 -1397996561, i32 1650640038, i32 -1852753496, i32 -1785384540, i32 -454765769, i32 2038035083, i32 -404237006, i32 -926381245, i32 926379609, i32 1835915959, i32 -1920138868, i32 -707415708, i32 1313774802, i32 -1448523296, i32 1819072692, i32 1448520954, i32 -185273593, i32 -353710299, i32 1701169839, i32 2054878350, i32 -1364310039, i32 134746136, i32 -1162186795, i32 2021191816, i32 623200879, i32 774790258, i32 471611428, i32 -1499047951, i32 -1263242297, i32 -960063663, i32 -387396829, i32 -572677764, i32 1953818780, i32 522141217, i32 1263245021, i32 -1111662116, i32 -1953821306, i32 -1970663547, i32 1886445712, i32 1044282434, i32 -1246400060, i32 1718013098, i32 1212715224, i32 50529797, i32 -151587071, i32 235805714, i32 1633796771, i32 892693087, i32 1465364217, i32 -1179031088, i32 -2038032495, i32 -1044276904, i32 488454695, i32 -1633802311, i32 -505292488, i32 -117904621, i32 -1734857805, i32 286335539, i32 1768542907, i32 -640046736, i32 -1903294583, i32 -1802226777, i32 -1684329034, i32 505297954, i32 -2021190254, i32 -370554592, i32 -825325751, i32 1431677695, i32 673730680, i32 -538991238, i32 -1936981105, i32 -1583261192, i32 -1987507840, i32 218962455, i32 -1077975590, i32 -421079247, i32 1111655622, i32 1751699640, i32 1094812355, i32 -1718015568, i32 757946999, i32 252648977, i32 -1330611253, i32 1414834428, i32 -1145344554, i32 370551866], align 16
@_ZN12_GLOBAL__N_13te2E = internal unnamed_addr constant [256 x i32] [i32 1673962851, i32 2096661628, i32 2012125559, i32 2079755643, i32 -218165774, i32 1809235307, i32 1876865391, i32 -980331323, i32 811618352, i32 16909057, i32 1741597031, i32 727088427, i32 -18408962, i32 -675978537, i32 -1420958037, i32 1995217526, i32 -896580150, i32 -2111857278, i32 -913751863, i32 2113570685, i32 -84994566, i32 1504897881, i32 1200539975, i32 -251982864, i32 -1388188499, i32 -726439980, i32 -1570767454, i32 -1354372433, i32 -1675378788, i32 -1538000988, i32 1927583346, i32 -1063560256, i32 -1217019209, i32 -35578627, i32 -1824674157, i32 642542118, i32 913070646, i32 1065238847, i32 -134937865, i32 -863809588, i32 879254580, i32 -1521355611, i32 -439274267, i32 -235337487, i32 1910674289, i32 -659852328, i32 828527409, i32 355090197, i32 67636228, i32 -946515257, i32 591815971, i32 -1013096765, i32 405809176, i32 -1774739050, i32 84545285, i32 -1708149350, i32 118360327, i32 304363026, i32 -2145674368, i32 -488686110, i32 -338876693, i32 659450151, i32 -1300247118, i32 1978310517, i32 152181513, i32 -2095210877, i32 743994412, i32 439627290, i32 456535323, i32 1859957358, i32 1521806938, i32 -1604584544, i32 1386542674, i32 997608763, i32 -692624938, i32 -1283600717, i32 693271337, i32 -472039709, i32 794718511, i32 -2079090812, i32 1403450707, i32 -776378159, i32 0, i32 -306107155, i32 541089824, i32 -52224004, i32 -1317418831, i32 1538714971, i32 1792327274, i32 -879933749, i32 -1100490306, i32 963791673, i32 1251270218, i32 1285084236, i32 1487988824, i32 -813348145, i32 -793023536, i32 -272291089, i32 -1437604438, i32 -68348165, i32 1132905795, i32 1301993293, i32 862344499, i32 -2062445435, i32 1166724933, i32 -102166279, i32 33818114, i32 2147385727, i32 1352724560, i32 1014514748, i32 -1624917345, i32 -1471421528, i32 1369633617, i32 -1554121053, i32 1082179648, i32 -1895462257, i32 -1841320558, i32 -1658733411, i32 946882616, i32 -168753931, i32 -1134305348, i32 -1233665610, i32 -626035238, i32 557998881, i32 270544912, i32 -1762561, i32 -201519373, i32 -759206446, i32 -847164211, i32 202904588, i32 321271059, i32 -322752532, i32 1606345055, i32 -1758092649, i32 1149815876, i32 388905239, i32 -996976700, i32 -1487539545, i32 2130477694, i32 1031423805, i32 1690872932, i32 1572530013, i32 422718233, i32 1944491379, i32 1623236704, i32 -2129028991, i32 1335808335, i32 -593264676, i32 574907938, i32 710180394, i32 -1875137648, i32 -2012511352, i32 1183631942, i32 -288937490, i32 -1200893000, i32 338181140, i32 -559449634, i32 1589437022, i32 185998603, i32 -609388837, i32 -522503200, i32 845436466, i32 980700730, i32 169090570, i32 1234361161, i32 101452294, i32 608726052, i32 1555620956, i32 -1029743166, i32 -742560045, i32 -1404833876, i32 1657054818, i32 -1858492271, i32 -1791908715, i32 -455919644, i32 2045938553, i32 -405458201, i32 -930397240, i32 929978679, i32 1843050349, i32 -1929278323, i32 -709794603, i32 1318900302, i32 -1454776151, i32 1826141292, i32 1454176854, i32 -185399308, i32 -355523094, i32 1707781989, i32 2062847610, i32 -1371018834, i32 135272456, i32 -1167075910, i32 2029029496, i32 625635109, i32 777810478, i32 473441308, i32 -1504185946, i32 -1267480652, i32 -963161658, i32 -389340184, i32 -576619299, i32 1961401460, i32 524165407, i32 1268178251, i32 -1117659971, i32 -1962047861, i32 -1978694262, i32 1893765232, i32 1048330814, i32 -1250835275, i32 1724688998, i32 1217452104, i32 50726147, i32 -151584266, i32 236720654, i32 1640145761, i32 896163637, i32 1471084887, i32 -1184247623, i32 -2045275770, i32 -1046914879, i32 490350365, i32 -1641563746, i32 -505857823, i32 -118811656, i32 -1741966440, i32 287453969, i32 1775418217, i32 -643206951, i32 -1912108658, i32 -1808554092, i32 -1691502949, i32 507257374, i32 -2028629369, i32 -372694807, i32 -829994546, i32 1437269845, i32 676362280, i32 -542803233, i32 -1945923700, i32 -1587939167, i32 -1995865975, i32 219813645, i32 -1083843905, i32 -422104602, i32 1115997762, i32 1758509160, i32 1099088705, i32 -1725321063, i32 760903469, i32 253628687, i32 -1334064208, i32 1420360788, i32 -1150429509, i32 371997206], align 16
@_ZN12_GLOBAL__N_13te3E = internal unnamed_addr constant [256 x i32] [i32 -962239645, i32 -125535108, i32 -291932297, i32 -158499973, i32 -15863054, i32 -692229269, i32 -558796945, i32 -1856715323, i32 1615867952, i32 33751297, i32 -827758745, i32 1451043627, i32 -417726722, i32 -1251813417, i32 1306962859, i32 -325421450, i32 -1891251510, i32 530416258, i32 -1992242743, i32 -91783811, i32 -283772166, i32 -1293199015, i32 -1899411641, i32 -83103504, i32 1106029997, i32 -1285040940, i32 1610457762, i32 1173008303, i32 599760028, i32 1408738468, i32 -459902350, i32 -1688485696, i32 1975695287, i32 -518193667, i32 1034851219, i32 1282024998, i32 1817851446, i32 2118205247, i32 -184354825, i32 -2091922228, i32 1750873140, i32 1374987685, i32 -785062427, i32 -116854287, i32 -493653647, i32 -1418471208, i32 1649619249, i32 708777237, i32 135005188, i32 -1789737017, i32 1181033251, i32 -1654733885, i32 807933976, i32 933336726, i32 168756485, i32 800430746, i32 235472647, i32 607523346, i32 463175808, i32 -549592350, i32 -853087253, i32 1315514151, i32 2144187058, i32 -358648459, i32 303761673, i32 496927619, i32 1484008492, i32 875436570, i32 908925723, i32 -592286098, i32 -1259447718, i32 1543217312, i32 -1527360942, i32 1984772923, i32 -1218324778, i32 2110698419, i32 1383803177, i32 -583080989, i32 1584475951, i32 328696964, i32 -1493871789, i32 -1184312879, i32 0, i32 -1054020115, i32 1080041504, i32 -484442884, i32 2043195825, i32 -1225958565, i32 -725718422, i32 -1924740149, i32 1742323390, i32 1917532473, i32 -1797371318, i32 -1730917300, i32 -1326950312, i32 -2058694705, i32 -1150562096, i32 -987041809, i32 1340451498, i32 -317260805, i32 -2033892541, i32 -1697166003, i32 1716859699, i32 294946181, i32 -1966127803, i32 -384763399, i32 67502594, i32 -25067649, i32 -1594863536, i32 2017737788, i32 632987551, i32 1273211048, i32 -1561112239, i32 1576969123, i32 -2134884288, i32 92966799, i32 1068339858, i32 566009245, i32 1883781176, i32 -251333131, i32 1675607228, i32 2009183926, i32 -1351230758, i32 1113792801, i32 540020752, i32 -451215361, i32 -49351693, i32 -1083321646, i32 -2125673011, i32 403966988, i32 641012499, i32 -1020269332, i32 -1092526241, i32 899848087, i32 -1999879100, i32 775493399, i32 -1822964540, i32 1441965991, i32 -58556802, i32 2051489085, i32 -928226204, i32 -1159242403, i32 841685273, i32 -426413197, i32 -1063231392, i32 429425025, i32 -1630449841, i32 -1551901476, i32 1147544098, i32 1417554474, i32 1001099408, i32 193169544, i32 -1932900794, i32 -953553170, i32 1809037496, i32 675025940, i32 -1485185314, i32 -1126015394, i32 371002123, i32 -1384719397, i32 -616832800, i32 1683370546, i32 1951283770, i32 337512970, i32 -1831122615, i32 201983494, i32 1215046692, i32 -1192993700, i32 -1621245246, i32 -1116810285, i32 1139780780, i32 -995728798, i32 967348625, i32 832869781, i32 -751311644, i32 -225740423, i32 -718084121, i32 -1958491960, i32 1851340599, i32 -625513107, i32 25988493, i32 -1318791723, i32 -1663938994, i32 1239460265, i32 -659264404, i32 -1392880042, i32 -217582348, i32 -819598614, i32 -894474907, i32 -191989126, i32 1206496942, i32 270010376, i32 1876277946, i32 -259491720, i32 1248797989, i32 1550986798, i32 941890588, i32 1475454630, i32 1942467764, i32 -1756248378, i32 -886839064, i32 -1585652259, i32 -392399756, i32 1042358047, i32 -1763882165, i32 1641856445, i32 226921355, i32 260409994, i32 -527404944, i32 2084716094, i32 1908716981, i32 -861247898, i32 -1864873912, i32 100991747, i32 -150866186, i32 470945294, i32 -1029480095, i32 1784624437, i32 -1359390889, i32 1775286713, i32 395413126, i32 -1722236479, i32 975641885, i32 666476190, i32 -650583583, i32 -351012616, i32 733190296, i32 573772049, i32 -759469719, i32 -1452221991, i32 126455438, i32 866620564, i32 766942107, i32 1008868894, i32 361924487, i32 -920589847, i32 -2025206066, i32 -1426107051, i32 1350051880, i32 -1518673953, i32 59739276, i32 1509466529, i32 159418761, i32 437718285, i32 1708834751, i32 -684595482, i32 -2067381694, i32 -793221016, i32 -2101132991, i32 699439513, i32 1517759789, i32 504434447, i32 2076946608, i32 -1459858348, i32 1842789307, i32 742004246], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051215random_internal10RandenSlow7GetKeysEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZN4absl12lts_2025051215random_internal16kRandenRoundKeysE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051215random_internal10RandenSlow6AbsorbEPKvPv(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = xor i64 %i.c, %i.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7
  %i.i = xor i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !7
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7
  %i.n = xor i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !7
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !7
  %i.s = xor i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !7
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !7
  %i.x = xor i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !7
  %i.y = getelementptr i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !7
  %i.ac = xor i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !7
  %i.ad = getelementptr i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !7
  %i.ah = xor i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !7
  %i.ai = getelementptr i8, ptr %0, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !7
  %i.am = xor i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !7
  %i.an = getelementptr i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !7
  %i.ar = xor i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !7
  %i.as = getelementptr i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !7
  %i.aw = xor i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !7
  %i.ax = getelementptr i8, ptr %0, i64 80
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !7
  %i.bb = xor i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !7
  %i.bc = getelementptr i8, ptr %0, i64 88
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !7
  %i.bg = xor i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !7
  %i.bh = getelementptr i8, ptr %0, i64 96
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !7
  %i.bl = xor i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !7
  %i.bm = getelementptr i8, ptr %0, i64 104
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !7
  %i.bq = xor i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !7
  %i.br = getelementptr i8, ptr %0, i64 112
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !7
  %i.bv = xor i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !7
  %i.bw = getelementptr i8, ptr %0, i64 120
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !7
  %i.ca = xor i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !7
  %i.cf = xor i64 %i.ce, %i.cc
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !7
  %i.cg = getelementptr i8, ptr %0, i64 136
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !7
  %i.ck = xor i64 %i.cj, %i.ch
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 144
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !7
  %i.cp = xor i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 152
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !7
  %i.cu = xor i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !7
  %i.cv = getelementptr i8, ptr %0, i64 160
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !7
  %i.cz = xor i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !7
  %i.da = getelementptr i8, ptr %0, i64 168
  %i.db = load i64, ptr %i.da, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !7
  %i.de = xor i64 %i.dd, %i.db
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !7
  %i.df = getelementptr i8, ptr %0, i64 176
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !7
  %i.dj = xor i64 %i.di, %i.dg
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !7
  %i.dk = getelementptr i8, ptr %0, i64 184
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !7
  %i.do = xor i64 %i.dn, %i.dl
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !7
  %i.dp = getelementptr i8, ptr %0, i64 192
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !7
  %i.dt = xor i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !7
  %i.du = getelementptr i8, ptr %0, i64 200
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !7
  %i.dy = xor i64 %i.dx, %i.dv
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !7
  %i.dz = getelementptr i8, ptr %0, i64 208
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !7
  %i.ed = xor i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !7
  %i.ee = getelementptr i8, ptr %0, i64 216
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !7
  %i.ei = xor i64 %i.eh, %i.ef
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !7
  %i.ej = getelementptr i8, ptr %0, i64 224
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !7
  %i.en = xor i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !7
  %i.eo = getelementptr i8, ptr %0, i64 232
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !7
  %i.es = xor i64 %i.er, %i.ep
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.promoted = load <2 x i64>, ptr %i.h, align 16
  %.promoted107 = load <2 x i64>, ptr %i.k, align 16
  %.promoted109 = load <2 x i64>, ptr %i.o, align 16
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit
  %.sroa.094.0.copyload110 = phi <2 x i64> [ %.promoted109, %bb.a ], [ %.sroa.094.0.copyload, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.098.0.copyload108 = phi <2 x i64> [ %.promoted107, %bb.a ], [ %.sroa.098.0.copyload, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.0104.0.copyload106 = phi <2 x i64> [ %.promoted, %bb.a ], [ %.sroa.0104.0.copyload, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.0.i90 = phi i64 [ 0, %bb.a ], [ %i.mh, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.04.i89 = phi ptr [ %0, %bb.a ], [ %i.iu, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0.i988 = phi i64 [ 0, %.preheader ], [ %i.mf, %bb.b ] ; 3 uses
  %.018.i87 = phi ptr [ %.04.i89, %.preheader ], [ %i.iu, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.0.i988 ; 8 uses
  %.sroa.0.0.copyload.i30 = load i64, ptr %i.p, align 1 ; 8 uses
  %.sroa.2.0..0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i32 = load i64, ptr %.sroa.2.0..0..sroa_idx.i31, align 1 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.q, align 1 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i27 = load i64, ptr %.sroa.2.0..0..sroa_idx.i26, align 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i64, ptr %.018.i87, align 1 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %.018.i87, i64 8
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..0..sroa_idx.i21, align 1 ; 2 uses
  %.sroa.078.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i20 to i32
  %i.r = and i64 %.sroa.0.0.copyload.i30, 255
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = xor i32 %i.t, %.sroa.078.0.extract.trunc
  %.sroa.084.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i30, 32
  %i.v = lshr i64 %.sroa.0.0.copyload.i30, 40
  %i.w = and i64 %i.v, 255
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = xor i32 %i.u, %i.y
  %i.aa = lshr i64 %.sroa.2.0.copyload.i32, 16
  %i.ab = and i64 %i.aa, 255
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = xor i32 %i.z, %i.ad
  %.sroa.585.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i32, 32
  %i.af = lshr i64 %.sroa.2.0.copyload.i32, 56
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = xor i32 %i.ae, %i.ah                    ; 4 uses
  %.sroa.078.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i20, 32
  %.sroa.078.4.extract.trunc = trunc nuw i64 %.sroa.078.4.extract.shift to i32
  %i.aj = and i64 %.sroa.084.4.extract.shift, 255
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = xor i32 %i.al, %.sroa.078.4.extract.trunc
  %i.an = lshr i64 %.sroa.2.0.copyload.i32, 8
  %i.ao = and i64 %i.an, 255
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = xor i32 %i.am, %i.aq
  %i.as = lshr i64 %.sroa.2.0.copyload.i32, 48
  %i.at = and i64 %i.as, 255
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = xor i32 %i.ar, %i.av
  %i.ax = lshr i64 %.sroa.0.0.copyload.i30, 24
  %i.ay = and i64 %i.ax, 255
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = xor i32 %i.aw, %i.ba                    ; 4 uses
  %.sroa.579.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i22 to i32
  %i.bc = and i64 %.sroa.2.0.copyload.i32, 255
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = xor i32 %i.be, %.sroa.579.8.extract.trunc
  %i.bg = lshr i64 %.sroa.2.0.copyload.i32, 40
  %i.bh = and i64 %i.bg, 255
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = xor i32 %i.bf, %i.bj
  %i.bl = lshr i64 %.sroa.0.0.copyload.i30, 16
  %i.bm = and i64 %i.bl, 255
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = xor i32 %i.bk, %i.bo
  %i.bq = lshr i64 %.sroa.0.0.copyload.i30, 56
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = xor i32 %i.bp, %i.bs                    ; 4 uses
  %.sroa.579.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i22, 32
  %.sroa.579.12.extract.trunc = trunc nuw i64 %.sroa.579.12.extract.shift to i32
  %i.bu = and i64 %.sroa.585.12.extract.shift, 255
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = xor i32 %i.bw, %.sroa.579.12.extract.trunc
  %i.by = lshr i64 %.sroa.0.0.copyload.i30, 8
  %i.bz = and i64 %i.by, 255
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = xor i32 %i.bx, %i.cb
  %sum.shift = lshr i64 %.sroa.0.0.copyload.i30, 48
  %i.cd = and i64 %sum.shift, 255
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = xor i32 %i.cc, %i.cf
  %i.ch = lshr i64 %.sroa.2.0.copyload.i32, 24
  %i.ci = and i64 %i.ch, 255
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = xor i32 %i.cg, %i.ck                    ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.018.i87, i64 16
  %.sroa.082.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i25 to i32
  %i.cn = and i32 %i.ai, 255
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = xor i32 %i.cq, %.sroa.082.0.extract.trunc
  %i.cs = lshr i32 %i.bb, 8
  %i.ct = and i32 %i.cs, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = xor i32 %i.cr, %i.cw
  %i.cy = lshr i32 %i.bt, 16
  %i.cz = and i32 %i.cy, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = xor i32 %i.cx, %i.dc
  %i.de = lshr i32 %i.cl, 24
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = xor i32 %i.dd, %i.dh
  %.sroa.082.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i25, 32
  %.sroa.082.4.extract.trunc = trunc nuw i64 %.sroa.082.4.extract.shift to i32
  %i.dj = and i32 %i.bb, 255
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = xor i32 %i.dm, %.sroa.082.4.extract.trunc
  %i.do = lshr i32 %i.bt, 8
  %i.dp = and i32 %i.do, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = xor i32 %i.dn, %i.ds
  %i.du = lshr i32 %i.cl, 16
  %i.dv = and i32 %i.du, 255
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = xor i32 %i.dt, %i.dy
  %i.ea = lshr i32 %i.ai, 24
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = xor i32 %i.dz, %i.ed
  %.sroa.583.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i27 to i32
  %i.ef = and i32 %i.bt, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = xor i32 %i.ei, %.sroa.583.8.extract.trunc
  %i.ek = lshr i32 %i.cl, 8
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = xor i32 %i.ej, %i.eo
  %i.eq = lshr i32 %i.ai, 16
  %i.er = and i32 %i.eq, 255
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = xor i32 %i.ep, %i.eu
  %i.ew = lshr i32 %i.bb, 24
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = xor i32 %i.ev, %i.ez
  %.sroa.583.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i27, 32
  %.sroa.583.12.extract.trunc = trunc nuw i64 %.sroa.583.12.extract.shift to i32
  %i.fb = and i32 %i.cl, 255
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = xor i32 %i.fe, %.sroa.583.12.extract.trunc
  %i.fg = lshr i32 %i.ai, 8
  %i.fh = and i32 %i.fg, 255
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = xor i32 %i.ff, %i.fk
  %i.fm = lshr i32 %i.bb, 16
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = xor i32 %i.fl, %i.fq
  %i.fs = lshr i32 %i.bt, 24
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = xor i32 %i.fr, %i.fv
  %.sroa.2.0.insert.ext.i47 = zext i32 %i.ee to i64
  %.sroa.2.0.insert.shift.i48 = shl nuw i64 %.sroa.2.0.insert.ext.i47, 32
  %.sroa.0.0.insert.ext.i49 = zext i32 %i.di to i64
  %.sroa.0.0.insert.insert.i50 = or disjoint i64 %.sroa.2.0.insert.shift.i48, %.sroa.0.0.insert.ext.i49
  %.sroa.5.8.insert.ext.i52 = zext i32 %i.fw to i64
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv:bb.a
  %.sroa.2.0.copyload.i17 = load i64, ptr %.sroa.2.0..0..sroa_idx.i16, align 1 ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i10 = load i64, ptr %i.fy, align 1 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..0..sroa_idx.i11, align 1 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.cm, align 1 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.018.i87, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.069.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.fz = and i64 %.sroa.0.0.copyload.i15, 255
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = xor i32 %i.gb, %.sroa.069.0.extract.trunc
  %.sroa.074.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i15, 32
  %i.gd = lshr i64 %.sroa.0.0.copyload.i15, 40
  %i.ge = and i64 %i.gd, 255
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = xor i32 %i.gc, %i.gg
  %i.gi = lshr i64 %.sroa.2.0.copyload.i17, 16
  %i.gj = and i64 %i.gi, 255
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.gm = xor i32 %i.gh, %i.gl
  %.sroa.575.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i17, 32
  %i.gn = lshr i64 %.sroa.2.0.copyload.i17, 56
  %i.go = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gq = xor i32 %i.gm, %i.gp                    ; 4 uses
  %.sroa.069.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.069.4.extract.trunc = trunc nuw i64 %.sroa.069.4.extract.shift to i32
  %i.gr = and i64 %.sroa.074.4.extract.shift, 255
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = xor i32 %i.gt, %.sroa.069.4.extract.trunc
  %i.gv = lshr i64 %.sroa.2.0.copyload.i17, 8
  %i.gw = and i64 %i.gv, 255
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = xor i32 %i.gu, %i.gy
  %i.ha = lshr i64 %.sroa.2.0.copyload.i17, 48
  %i.hb = and i64 %i.ha, 255
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = xor i32 %i.gz, %i.hd
  %i.hf = lshr i64 %.sroa.0.0.copyload.i15, 24
  %i.hg = and i64 %i.hf, 255
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = xor i32 %i.he, %i.hi                    ; 4 uses
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.hk = and i64 %.sroa.2.0.copyload.i17, 255
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = xor i32 %i.hm, %.sroa.5.8.extract.trunc
  %i.ho = lshr i64 %.sroa.2.0.copyload.i17, 40
  %i.hp = and i64 %i.ho, 255
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = xor i32 %i.hn, %i.hr
  %i.ht = lshr i64 %.sroa.0.0.copyload.i15, 16
  %i.hu = and i64 %i.ht, 255
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = xor i32 %i.hs, %i.hw
  %i.hy = lshr i64 %.sroa.0.0.copyload.i15, 56
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = xor i32 %i.hx, %i.ia                    ; 4 uses
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.ic = and i64 %.sroa.575.12.extract.shift, 255
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = xor i32 %i.ie, %.sroa.5.12.extract.trunc
  %i.ig = lshr i64 %.sroa.0.0.copyload.i15, 8
  %i.ih = and i64 %i.ig, 255
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = xor i32 %i.if, %i.ij
  %sum.shift86 = lshr i64 %.sroa.0.0.copyload.i15, 48
  %i.il = and i64 %sum.shift86, 255
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = xor i32 %i.ik, %i.in
  %i.ip = lshr i64 %.sroa.2.0.copyload.i17, 24
  %i.iq = and i64 %i.ip, 255
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = xor i32 %i.io, %i.is                    ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.018.i87, i64 32 ; 2 uses
  %.sroa.072.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i10 to i32
  %i.iv = and i32 %i.gq, 255
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.iz = xor i32 %i.iy, %.sroa.072.0.extract.trunc
  %i.ja = lshr i32 %i.hj, 8
  %i.jb = and i32 %i.ja, 255
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = xor i32 %i.iz, %i.je
  %i.jg = lshr i32 %i.ib, 16
  %i.jh = and i32 %i.jg, 255
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = xor i32 %i.jf, %i.jk
  %i.jm = lshr i32 %i.it, 24
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3
  %i.jq = xor i32 %i.jl, %i.jp
  %.sroa.072.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i10, 32
  %.sroa.072.4.extract.trunc = trunc nuw i64 %.sroa.072.4.extract.shift to i32
  %i.jr = and i32 %i.hj, 255
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = xor i32 %i.ju, %.sroa.072.4.extract.trunc
  %i.jw = lshr i32 %i.ib, 8
  %i.jx = and i32 %i.jw, 255
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3
  %i.kb = xor i32 %i.jv, %i.ka
  %i.kc = lshr i32 %i.it, 16
  %i.kd = and i32 %i.kc, 255
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !3
  %i.kh = xor i32 %i.kb, %i.kg
  %i.ki = lshr i32 %i.gq, 24
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3
  %i.km = xor i32 %i.kh, %i.kl
  %.sroa.573.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i12 to i32
  %i.kn = and i32 %i.ib, 255
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.kr = xor i32 %i.kq, %.sroa.573.8.extract.trunc
  %i.ks = lshr i32 %i.it, 8
  %i.kt = and i32 %i.ks, 255
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.kx = xor i32 %i.kr, %i.kw
  %i.ky = lshr i32 %i.gq, 16
  %i.kz = and i32 %i.ky, 255
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.ld = xor i32 %i.kx, %i.lc
  %i.le = lshr i32 %i.hj, 24
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.li = xor i32 %i.ld, %i.lh
  %.sroa.573.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i12, 32
  %.sroa.573.12.extract.trunc = trunc nuw i64 %.sroa.573.12.extract.shift to i32
  %i.lj = and i32 %i.it, 255
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te0E, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = xor i32 %i.lm, %.sroa.573.12.extract.trunc
  %i.lo = lshr i32 %i.gq, 8
  %i.lp = and i32 %i.lo, 255
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te1E, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lt = xor i32 %i.ln, %i.ls
  %i.lu = lshr i32 %i.hj, 16
  %i.lv = and i32 %i.lu, 255
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te2E, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = xor i32 %i.lt, %i.ly
  %i.ma = lshr i32 %i.ib, 24
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_13te3E, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3
  %i.me = xor i32 %i.lz, %i.md
  %.sroa.2.0.insert.ext.i = zext i32 %i.km to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.jq to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.me to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.li to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.fy, align 1
  store i64 %.sroa.3.8.insert.insert.i, ptr %.sroa.2.0..0..sroa_idx.i11, align 1
  %i.mf = add nuw nsw i64 %.0.i988, 4
  %i.mg = icmp samesign ult i64 %.0.i988, 12
  br i1 %i.mg, label %bb.b, label %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit, !llvm.loop !9

_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit: ; preds = %bb.b
  %.sroa.0104.0.copyload = load <2 x i64>, ptr %i.g, align 16 ; 2 uses
  %.sroa.0100.0.copyload = load <2 x i64>, ptr %1, align 16
  %.sroa.098.0.copyload = load <2 x i64>, ptr %i.j, align 16 ; 2 uses
  %.sroa.094.0.copyload = load <2 x i64>, ptr %i.l, align 16 ; 2 uses
  %.sroa.092.0.copyload = load <2 x i64>, ptr %i.n, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x i64> %.sroa.0104.0.copyload, ptr %i.h, align 16
  store <2 x i64> %.sroa.0104.0.copyload106, ptr %i.a, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0100.0.copyload, ptr %i.j, align 16
  store <2 x i64> %.sroa.098.0.copyload, ptr %i.k, align 16
  store <2 x i64> %.sroa.098.0.copyload108, ptr %i.e, align 16
  store <2 x i64> %.sroa.094.0.copyload, ptr %i.o, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.m, i64 16, i1 false)
  store <2 x i64> %.sroa.092.0.copyload, ptr %i.m, align 16
  store <2 x i64> %.sroa.094.0.copyload110, ptr %i.i, align 16
  %i.mh = add nuw nsw i64 %.0.i90, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.mh, 17
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_17PermuteEPN4absl12lts_202505127uint128EPKS2_.exit, label %.preheader, !llvm.loop !11

_ZN12_GLOBAL__N_17PermuteEPN4absl12lts_202505127uint128EPKS2_.exit: ; preds = %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit
  %.sroa.01.0.copyload.i = load i64, ptr %1, align 16, !tbaa !7
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %i.mi = zext i64 %.sroa.22.0.copyload.i to i128
  %i.mj = shl nuw i128 %i.mi, 64
  %i.mk = zext i64 %.sroa.01.0.copyload.i to i128
  %i.ml = or disjoint i128 %i.mj, %i.mk
  %i.mm = zext i64 %.sroa.4.0.copyload to i128
  %i.mn = shl nuw i128 %i.mm, 64
  %i.mo = zext i64 %.sroa.01.0.copyload to i128
  %i.mp = or disjoint i128 %i.mn, %i.mo
  %i.mq = xor i128 %i.ml, %i.mp                   ; 2 uses
  %i.mr = trunc i128 %i.mq to i64
  %i.ms = lshr i128 %i.mq, 64
  %i.mt = trunc nuw i128 %i.ms to i64
  store i64 %i.mr, ptr %1, align 16, !tbaa !7
  store i64 %i.mt, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
end_hunk_1
