Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chorba_sse41?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [62 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/chorba_sse41.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 12, [16 x i8] c"'unsigned long'\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 317, i32 40 } }
@2 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 62, i32 27 } }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 63, i32 27 } }
@4 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 64, i32 27 } }
@5 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 65, i32 27 } }
@6 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 66, i32 27 } }
@7 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 79, i32 26 } }
@9 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 106, i32 9 } }
@10 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 106, i32 9 } }
@11 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 106, i32 9 } }
@12 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 106, i32 9 } }
@13 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 134, i32 9 } }
@14 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 134, i32 9 } }
@15 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 134, i32 9 } }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 134, i32 9 } }
@17 = private unnamed_addr constant { i16, i16, [43 x i8] } { i16 -1, i16 0, [43 x i8] c"'__m128i' (vector of 2 'long long' values)\00" }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 146, i32 9 }, ptr @17, i8 4, i8 0 }
@19 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 159, i32 9 } }
@20 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 159, i32 9 } }
@21 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 159, i32 9 } }
@22 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 159, i32 9 } }
@23 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 166, i32 9 } }
@24 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 166, i32 9 }, ptr @17, i8 4, i8 0 }
@25 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 166, i32 9 } }
@26 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 166, i32 9 } }
@27 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 166, i32 9 } }
@28 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 167, i32 9 } }
@29 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 9 } }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 9 }, ptr @17, i8 4, i8 0 }
@31 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 9 } }
@32 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 9 } }
@33 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 171, i32 9 } }
@34 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 172, i32 9 } }
@35 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 175, i32 9 } }
@36 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 178, i32 9 } }
@37 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 13 }, ptr @7 }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 20 }, ptr @7 }
@39 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 13 } }
@40 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 13 } }
@41 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 13 } }
@42 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 186, i32 13 } }
@43 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 54 } }
@44 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 188, i32 81 } }
@45 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 54 } }
@46 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 189, i32 81 } }
@47 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 190, i32 54 } }
@48 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 190, i32 81 } }
@49 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 191, i32 54 } }
@50 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 191, i32 81 } }
@51 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 202, i32 9 } }
@52 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 202, i32 9 }, ptr @17, i8 4, i8 0 }
@53 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 202, i32 9 } }
@54 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 202, i32 9 } }
@55 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 202, i32 9 } }
@56 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 203, i32 9 } }
@57 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 203, i32 9 } }
@58 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 203, i32 9 } }
@59 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 203, i32 9 } }
@60 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 9 } }
@61 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 9 }, ptr @17, i8 4, i8 0 }
@62 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 9 } }
@63 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 9 } }
@64 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 207, i32 9 } }
@65 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 9 } }
@66 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 9 } }
@67 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 9 } }
@68 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 208, i32 9 } }
@69 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 13 } }
@70 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 13 }, ptr @17, i8 4, i8 0 }
@71 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 13 } }
@72 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 13 } }
@73 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 222, i32 13 } }
@74 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 225, i32 9 } }
@75 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 225, i32 9 } }
@76 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 225, i32 9 } }
@77 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 225, i32 9 } }
@78 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 226, i32 9 } }
@79 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 226, i32 9 } }
@80 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 226, i32 9 } }
@81 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 226, i32 9 } }
@82 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 181, i32 33 }, ptr @7 }
@83 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 235, i32 37 }, ptr @7 }
@84 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 235, i32 28 }, ptr @7 }
@85 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'uint64_t[4096]' (aka 'unsigned long[4096]')\00" }
@86 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 236, i32 49 } }
@87 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 236, i32 55 } }
@88 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 238, i32 8 } }
@89 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 238, i32 8 } }
@90 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 238, i32 8 } }
@91 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 238, i32 8 } }
@92 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 243, i32 35 } }
@93 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 248, i32 21 }, ptr @7 }
@94 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 249, i32 19 } }
@95 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 258, i32 14 }, ptr @7 }
@96 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 264, i32 9 } }
@97 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 264, i32 9 } }
@98 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 264, i32 9 } }
@99 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 265, i32 9 }, ptr @85, ptr @0 }
@100 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 265, i32 9 } }
@101 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @.src, i32 265, i32 9 }, ptr @85, ptr @0 }
@102 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 265, i32 9 } }
@103 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 265, i32 9 } }
@104 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 258, i32 29 }, ptr @7 }
@105 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 24 } }
@106 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 52 }, ptr @7 }
@.src.1 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@107 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 19 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@108 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const uint64_t *' (aka 'const unsigned long *')\00" }
@109 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 19 }, ptr @108, i8 3, i8 0 }
@110 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 294, i32 5 } }
@111 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 296, i32 5 } }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 31 }, ptr @7 }
@crc_table = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 32 } }
@114 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 66 }, ptr @7 }
@115 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 49 } }
@116 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 15 } }
@117 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 37 }, ptr @7 }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@118 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3905, i32 3 }, ptr @17, i8 4, i8 1 }
@119 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const __m128i' (vector of 2 'long long' values)\00" }
@120 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3451, i32 10 }, ptr @119, i8 4, i8 0 }

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_sse41(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !21 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 32 uses
  %i.b = alloca [9 x i64], align 16               ; 11 uses
  %i.c = xor i32 %0, -1                           ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 15                         ; 6 uses
  %i.g = add nuw nsw i64 %i.f, 72
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.ig

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %i.f) #6
  %i.j = sub nuw i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.b ]  ; 17 uses
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.b ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.l = add i64 %i.f, %i.d, !nosanitize !22      ; 3 uses
  %i.m = icmp ne ptr %1, null                     ; 5 uses
  %i.n = icmp eq i64 %i.l, 0
  %i.o = xor i1 %i.m, %i.n
  %i.p = icmp uge i64 %i.l, %i.d, !nosanitize !22
  %i.q = and i1 %i.p, %i.o, !nosanitize !22
  br i1 %i.q, label %bb.f, label %bb.e, !prof !23, !nosanitize !22

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @1, i64 %i.d, i64 %i.l) #6, !nosanitize !22
  br label %bb.f, !nosanitize !22

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = icmp ugt i64 %.028, 524288
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @crc32_chorba_118960_nondestructive(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #6
  br label %bb.ih

bb.h:                                             ; preds = %bb.f
  %i.t = add nsw i64 %.028, -8193
  %or.cond = icmp ult i64 %i.t, 24576
  br i1 %or.cond, label %bb.i, label %bb.if

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %i.v = ptrtoint ptr %i.a to i64, !nosanitize !22 ; 18 uses
  %.not.i = icmp ugt ptr %i.a, inttoptr (i64 -1025 to ptr)
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !24, !nosanitize !22

bb.j:                                             ; preds = %bb.i
  %i.w = add i64 %i.v, 1024, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %i.v, i64 %i.w) #6, !nosanitize !22
  br label %bb.k, !nosanitize !22

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1152 ; 3 uses
  %.not700.i = icmp ugt ptr %i.a, inttoptr (i64 -1153 to ptr)
  br i1 %.not700.i, label %bb.l, label %bb.m, !prof !24, !nosanitize !22

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %i.v, 1152, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %i.v, i64 %i.y) #6, !nosanitize !22
  br label %bb.m, !nosanitize !22

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %.not701.i = icmp ugt ptr %i.a, inttoptr (i64 -1457 to ptr)
  br i1 %.not701.i, label %bb.n, label %bb.o, !prof !24, !nosanitize !22

bb.n:                                             ; preds = %bb.m
  %i.aa = add i64 %i.v, 1456, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %i.v, i64 %i.aa) #6, !nosanitize !22
  br label %bb.o, !nosanitize !22

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  %.not702.i = icmp ugt ptr %i.a, inttoptr (i64 -1681 to ptr)
  br i1 %.not702.i, label %bb.p, label %bb.q, !prof !24, !nosanitize !22

bb.p:                                             ; preds = %bb.o
  %i.ac = add i64 %i.v, 1680, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %i.v, i64 %i.ac) #6, !nosanitize !22
  br label %bb.q, !nosanitize !22

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2400 ; 3 uses
  %i.ae = add i64 %i.v, 2400, !nosanitize !22     ; 2 uses
  %.not703.i = icmp ugt ptr %i.a, inttoptr (i64 -2401 to ptr) ; 2 uses
  br i1 %.not703.i, label %bb.r, label %_mm_store_si128.exit.1, !prof !24, !nosanitize !22

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.v, i64 %i.ae) #6, !nosanitize !22
  br label %_mm_store_si128.exit.1, !nosanitize !22

_mm_store_si128.exit.1:                           ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %.not704.i = icmp ugt ptr %i.x, inttoptr (i64 -129 to ptr)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, i8 0, i64 128, i1 false)
  br i1 %.not704.i, label %bb.s, label %.lr.ph.preheader, !prof !24, !nosanitize !22

bb.s:                                             ; preds = %_mm_store_si128.exit.1
  %i.ag = ptrtoint ptr %i.x to i64, !nosanitize !22 ; 2 uses
  %i.ah = add i64 %i.ag, 128, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.ag, i64 %i.ah) #6, !nosanitize !22
  br label %.lr.ph.preheader, !nosanitize !22

.lr.ph.preheader:                                 ; preds = %bb.s, %_mm_store_si128.exit.1
  %i.ai = zext i32 %.0 to i64
  %i.aj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ai, i64 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(432) %i.af, i8 0, i64 432, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.al = ptrtoint ptr %i.k to i64, !nosanitize !22 ; 4 uses
  %i.am = add i64 %i.al, 16, !nosanitize !22      ; 2 uses
  %i.an = icmp ne ptr %1, null                    ; 2 uses
  %i.ao = icmp ne i64 %i.am, 0
  %i.ap = icmp ult ptr %i.k, inttoptr (i64 -16 to ptr)
  %i.aq = and i1 %i.ap, %i.ao
  %i.ar = and i1 %i.an, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.t, !prof !23, !nosanitize !22

bb.t:                                             ; preds = %.lr.ph.preheader
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.al, i64 %i.am) #6, !nosanitize !22
  br label %bb.u, !nosanitize !22

bb.u:                                             ; preds = %bb.t, %.lr.ph.preheader
  %i.as = and i64 %i.al, 15, !nosanitize !22
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !22
  %i.au = and i1 %i.an, %i.at
  br i1 %i.au, label %_mm_load_si128.exit117.peel, label %bb.v, !prof !23, !nosanitize !22

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.al) #6, !nosanitize !22
  br label %_mm_load_si128.exit117.peel, !nosanitize !22

_mm_load_si128.exit117.peel:                      ; preds = %bb.v, %bb.u
  %i.av = load <2 x i64>, ptr %i.k, align 16, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %.not779.i.peel = icmp ugt ptr %i.ak, inttoptr (i64 -17 to ptr)
  br i1 %.not779.i.peel, label %bb.w, label %_mm_load_si128.exit116.peel, !prof !24, !nosanitize !22

bb.w:                                             ; preds = %_mm_load_si128.exit117.peel
  %i.ax = ptrtoint ptr %i.ak to i64, !nosanitize !22 ; 2 uses
  %i.ay = add i64 %i.ax, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.ax, i64 %i.ay) #6, !nosanitize !22
  br label %_mm_load_si128.exit116.peel, !nosanitize !22

_mm_load_si128.exit116.peel:                      ; preds = %bb.w, %_mm_load_si128.exit117.peel
  %i.az = load <2 x i64>, ptr %i.ak, align 16, !tbaa !25 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %.not780.i.peel = icmp ugt ptr %i.aw, inttoptr (i64 -17 to ptr)
  br i1 %.not780.i.peel, label %bb.x, label %_mm_load_si128.exit115.peel, !prof !24, !nosanitize !22

bb.x:                                             ; preds = %_mm_load_si128.exit116.peel
  %i.bb = ptrtoint ptr %i.aw to i64, !nosanitize !22 ; 2 uses
  %i.bc = add i64 %i.bb, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.bb, i64 %i.bc) #6, !nosanitize !22
  br label %_mm_load_si128.exit115.peel, !nosanitize !22

_mm_load_si128.exit115.peel:                      ; preds = %bb.x, %_mm_load_si128.exit116.peel
  %i.bd = load <2 x i64>, ptr %i.aw, align 16, !tbaa !25 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %.not781.i.peel = icmp ugt ptr %i.ba, inttoptr (i64 -17 to ptr)
  br i1 %.not781.i.peel, label %bb.y, label %_mm_load_si128.exit115._crit_edge.peel, !prof !24, !nosanitize !22

bb.y:                                             ; preds = %_mm_load_si128.exit115.peel
  %i.bf = ptrtoint ptr %i.ba to i64, !nosanitize !22 ; 2 uses
  %i.bg = add i64 %i.bf, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.bf, i64 %i.bg) #6, !nosanitize !22
  br label %_mm_load_si128.exit115._crit_edge.peel, !nosanitize !22

_mm_load_si128.exit115._crit_edge.peel:           ; preds = %bb.y, %_mm_load_si128.exit115.peel
  %i.bh = load <2 x i64>, ptr %i.ba, align 16, !tbaa !25 ; 3 uses
  %spec.select.peel = xor <2 x i64> %i.av, %i.aj  ; 3 uses
  %i.bi = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %spec.select.peel, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bj = shufflevector <2 x i64> %spec.select.peel, <2 x i64> %i.az, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bk = shufflevector <2 x i64> %i.az, <2 x i64> %i.bd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bl = shufflevector <2 x i64> %i.bd, <2 x i64> %i.bh, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bm = shufflevector <2 x i64> %i.bh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store <2 x i64> %i.bi, ptr %i.x, align 16, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store <2 x i64> %i.bj, ptr %i.bn, align 16, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store <2 x i64> %i.bk, ptr %i.bo, align 16, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1216 ; 2 uses
  store <2 x i64> %i.bl, ptr %i.bp, align 16, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  store <2 x i64> %i.bi, ptr %i.z, align 16, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  store <2 x i64> %i.bj, ptr %i.br, align 16, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  store <2 x i64> %i.bk, ptr %i.bs, align 16, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1520 ; 2 uses
  store <2 x i64> %i.bl, ptr %i.bt, align 16, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <2 x i64> %i.bi, ptr %i.ab, align 16, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1712
  store <2 x i64> %i.bj, ptr %i.bv, align 16, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  store <2 x i64> %i.bk, ptr %i.bw, align 16, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1744 ; 2 uses
  store <2 x i64> %i.bl, ptr %i.bx, align 16, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  store <2 x i64> %spec.select.peel, ptr %i.ad, align 16, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 2432
  store <2 x i64> %i.az, ptr %i.bz, align 16, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 2448
  store <2 x i64> %i.bd, ptr %i.ca, align 16, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 2464 ; 2 uses
  store <2 x i64> %i.bh, ptr %i.cb, align 16, !tbaa !25
  %i.cd = icmp ugt i64 %.028, 2528
  br i1 %i.cd, label %.lr.ph, label %.preheader150

.preheader150.loopexit:                           ; preds = %_mm_store_si128.exit40
  %i.ce = add nuw nsw i64 %.0462.i164, 2528
  %i.cf = icmp ult i64 %i.ce, %.028
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %_mm_load_si128.exit115._crit_edge.peel
  %.lcssa622.a = phi ptr [ %i.cc, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ee, %.preheader150.loopexit ] ; 2 uses
  %.lcssa621.a = phi i64 [ 64, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ef, %.preheader150.loopexit ] ; 2 uses
  %.lcssa620.a = phi ptr [ %i.by, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dy, %.preheader150.loopexit ] ; 2 uses
  %.lcssa619.a = phi ptr [ %i.bu, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ds, %.preheader150.loopexit ] ; 2 uses
  %.lcssa618.a = phi ptr [ %i.bq, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dm, %.preheader150.loopexit ] ; 2 uses
  %.lcssa617.a = phi <2 x i64> [ %i.bm, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.df, %.preheader150.loopexit ] ; 4 uses
  %.lcssa616 = phi ptr [ %i.be, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.cx, %.preheader150.loopexit ] ; 2 uses
  %.0462.i164.lcssa = phi i1 [ false, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.cf, %.preheader150.loopexit ]
  br i1 %.0462.i164.lcssa, label %.lr.ph180, label %.preheader149

.lr.ph:                                           ; preds = %_mm_load_si128.exit115._crit_edge.peel, %_mm_store_si128.exit40
  %.0451.i165 = phi <2 x i64> [ %i.df, %_mm_store_si128.exit40 ], [ %i.bm, %_mm_load_si128.exit115._crit_edge.peel ]
  %.0462.i164 = phi i64 [ %i.ef, %_mm_store_si128.exit40 ], [ 64, %_mm_load_si128.exit115._crit_edge.peel ] ; 4 uses
  %.0473.i163 = phi ptr [ %i.cx, %_mm_store_si128.exit40 ], [ %i.be, %_mm_load_si128.exit115._crit_edge.peel ] ; 7 uses
  %.0480.i162 = phi ptr [ %i.ee, %_mm_store_si128.exit40 ], [ %i.cc, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0484.i161 = phi ptr [ %i.dy, %_mm_store_si128.exit40 ], [ %i.by, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0488.i160 = phi ptr [ %i.ds, %_mm_store_si128.exit40 ], [ %i.bu, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0492.i159 = phi ptr [ %i.dm, %_mm_store_si128.exit40 ], [ %i.bq, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 16 ; 3 uses
  %i.ch = ptrtoint ptr %.0473.i163 to i64, !nosanitize !22 ; 4 uses
  %i.ci = add i64 %i.ch, 16, !nosanitize !22      ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = icmp ult ptr %.0473.i163, inttoptr (i64 -16 to ptr)
  %i.cl = and i1 %i.ck, %i.cj
  br i1 %i.cl, label %bb.aa, label %bb.z, !prof !23, !nosanitize !22

bb.z:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.ch, i64 %i.ci) #6, !nosanitize !22
  br label %bb.aa, !nosanitize !22

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %i.cm = and i64 %i.ch, 15, !nosanitize !22
  %i.cn = icmp eq i64 %i.cm, 0, !nosanitize !22
  br i1 %i.cn, label %_mm_load_si128.exit117, label %bb.ab, !prof !23, !nosanitize !22

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.ch) #6, !nosanitize !22
  br label %_mm_load_si128.exit117, !nosanitize !22

_mm_load_si128.exit117:                           ; preds = %bb.aa, %bb.ab
  %i.co = load <2 x i64>, ptr %.0473.i163, align 16, !tbaa !25 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 32 ; 3 uses
  %.not779.i = icmp ugt ptr %i.cg, inttoptr (i64 -17 to ptr)
  br i1 %.not779.i, label %bb.ac, label %_mm_load_si128.exit116, !prof !24, !nosanitize !22

bb.ac:                                            ; preds = %_mm_load_si128.exit117
  %i.cq = ptrtoint ptr %i.cg to i64, !nosanitize !22 ; 2 uses
  %i.cr = add i64 %i.cq, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.cq, i64 %i.cr) #6, !nosanitize !22
  br label %_mm_load_si128.exit116, !nosanitize !22

_mm_load_si128.exit116:                           ; preds = %bb.ac, %_mm_load_si128.exit117
  %i.cs = load <2 x i64>, ptr %i.cg, align 16, !tbaa !25 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 48 ; 3 uses
  %.not780.i = icmp ugt ptr %i.cp, inttoptr (i64 -17 to ptr)
  br i1 %.not780.i, label %bb.ad, label %_mm_load_si128.exit115, !prof !24, !nosanitize !22

bb.ad:                                            ; preds = %_mm_load_si128.exit116
  %i.cu = ptrtoint ptr %i.cp to i64, !nosanitize !22 ; 2 uses
  %i.cv = add i64 %i.cu, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.cu, i64 %i.cv) #6, !nosanitize !22
  br label %_mm_load_si128.exit115, !nosanitize !22

_mm_load_si128.exit115:                           ; preds = %bb.ad, %_mm_load_si128.exit116
  %i.cw = load <2 x i64>, ptr %i.cp, align 16, !tbaa !25 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 64 ; 2 uses
  %.not781.i = icmp ugt ptr %i.ct, inttoptr (i64 -17 to ptr)
  br i1 %.not781.i, label %bb.ae, label %_mm_load_si128.exit115._crit_edge, !prof !24, !nosanitize !22

bb.ae:                                            ; preds = %_mm_load_si128.exit115
  %i.cy = ptrtoint ptr %i.ct to i64, !nosanitize !22 ; 2 uses
  %i.cz = add i64 %i.cy, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.cy, i64 %i.cz) #6, !nosanitize !22
  br label %_mm_load_si128.exit115._crit_edge, !nosanitize !22

_mm_load_si128.exit115._crit_edge:                ; preds = %bb.ae, %_mm_load_si128.exit115
  %i.da = load <2 x i64>, ptr %i.ct, align 16, !tbaa !25 ; 3 uses
  %i.db = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.co, <2 x i32> <i32 1, i32 2>
  %i.dc = shufflevector <2 x i64> %i.co, <2 x i64> %i.cs, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dd = shufflevector <2 x i64> %i.cs, <2 x i64> %i.cw, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.de = shufflevector <2 x i64> %i.cw, <2 x i64> %i.da, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.df = shufflevector <2 x i64> %i.da, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dg = xor <2 x i64> %.0451.i165, %i.db        ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 16
  %.pre329 = ptrtoint ptr %.0492.i159 to i64, !nosanitize !22 ; 2 uses
  %i.di = and i64 %.pre329, 15, !nosanitize !22
  %i.dj = icmp eq i64 %i.di, 0, !nosanitize !22
  br i1 %i.dj, label %bb.ag, label %bb.af, !prof !23, !nosanitize !22

bb.af:                                            ; preds = %_mm_load_si128.exit115._crit_edge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre329) #6, !nosanitize !22
  br label %bb.ag, !nosanitize !22

bb.ag:                                            ; preds = %_mm_load_si128.exit115._crit_edge, %bb.af
  store <2 x i64> %i.dg, ptr %.0492.i159, align 16, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 32
  store <2 x i64> %i.dc, ptr %i.dh, align 16, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 48
  store <2 x i64> %i.dd, ptr %i.dk, align 16, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 64 ; 2 uses
  store <2 x i64> %i.de, ptr %i.dl, align 16, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 16
  %.pre337 = ptrtoint ptr %.0488.i160 to i64, !nosanitize !22 ; 2 uses
  %i.do = and i64 %.pre337, 15, !nosanitize !22
  %i.dp = icmp eq i64 %i.do, 0, !nosanitize !22
  br i1 %i.dp, label %bb.ai, label %bb.ah, !prof !23, !nosanitize !22

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre337) #6, !nosanitize !22
  br label %bb.ai, !nosanitize !22

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  store <2 x i64> %i.dg, ptr %.0488.i160, align 16, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 32
  store <2 x i64> %i.dc, ptr %i.dn, align 16, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 48
  store <2 x i64> %i.dd, ptr %i.dq, align 16, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 64 ; 2 uses
  store <2 x i64> %i.de, ptr %i.dr, align 16, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 16
  %.pre345 = ptrtoint ptr %.0484.i161 to i64, !nosanitize !22 ; 2 uses
  %i.du = and i64 %.pre345, 15, !nosanitize !22
  %i.dv = icmp eq i64 %i.du, 0, !nosanitize !22
  br i1 %i.dv, label %bb.ak, label %bb.aj, !prof !23, !nosanitize !22

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre345) #6, !nosanitize !22
  br label %bb.ak, !nosanitize !22

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  store <2 x i64> %i.dg, ptr %.0484.i161, align 16, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 32
  store <2 x i64> %i.dc, ptr %i.dt, align 16, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 48
  store <2 x i64> %i.dd, ptr %i.dw, align 16, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 64 ; 2 uses
  store <2 x i64> %i.de, ptr %i.dx, align 16, !tbaa !25
  %i.dz = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 16
  %.pre353 = ptrtoint ptr %.0480.i162 to i64, !nosanitize !22 ; 2 uses
  %i.ea = and i64 %.pre353, 15, !nosanitize !22
  %i.eb = icmp eq i64 %i.ea, 0, !nosanitize !22
  br i1 %i.eb, label %_mm_store_si128.exit40, label %bb.al, !prof !23, !nosanitize !22

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre353) #6, !nosanitize !22
  br label %_mm_store_si128.exit40, !nosanitize !22

_mm_store_si128.exit40:                           ; preds = %bb.ak, %bb.al
  store <2 x i64> %i.co, ptr %.0480.i162, align 16, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 32
  store <2 x i64> %i.cs, ptr %i.dz, align 16, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 48
  store <2 x i64> %i.cw, ptr %i.ec, align 16, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 64 ; 2 uses
  store <2 x i64> %i.da, ptr %i.ed, align 16, !tbaa !25
  %i.ef = add nuw nsw i64 %.0462.i164, 64         ; 2 uses
  %i.eg = add nuw nsw i64 %.0462.i164, 2528
  %i.eh = icmp ult i64 %i.eg, %.028
  %i.ei = icmp samesign ult i64 %.0462.i164, 112
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %.lr.ph, label %.preheader150.loopexit, !llvm.loop !12

.preheader149.loopexit:                           ; preds = %_mm_store_si128.exit56
  %.pre = add nuw nsw i64 %.1463.i177, 2528
  %i.ek = icmp ult i64 %.pre, %.028
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.loopexit, %.preheader150
  %.pre-phi = phi i1 [ %i.ek, %.preheader149.loopexit ], [ false, %.preheader150 ]
  %.1493.i.lcssa = phi ptr [ %i.fr, %.preheader149.loopexit ], [ %.lcssa618.a, %.preheader150 ] ; 2 uses
  %.1489.i.lcssa = phi ptr [ %i.gf, %.preheader149.loopexit ], [ %.lcssa619.a, %.preheader150 ] ; 2 uses
  %.1485.i.lcssa = phi ptr [ %i.gn, %.preheader149.loopexit ], [ %.lcssa620.a, %.preheader150 ] ; 2 uses
  %.1481.i.lcssa = phi ptr [ %i.gt, %.preheader149.loopexit ], [ %.lcssa622.a, %.preheader150 ] ; 2 uses
  %.1474.i.lcssa = phi ptr [ %i.fc, %.preheader149.loopexit ], [ %.lcssa616, %.preheader150 ] ; 2 uses
  %.1463.i.lcssa = phi i64 [ %i.gu, %.preheader149.loopexit ], [ %.lcssa621.a, %.preheader150 ] ; 2 uses
  %.1455.i.lcssa = phi <2 x i64> [ %i.gh, %.preheader149.loopexit ], [ %.lcssa617.a, %.preheader150 ] ; 2 uses
  %.1452.i.lcssa = phi <2 x i64> [ %i.fk, %.preheader149.loopexit ], [ %.lcssa617.a, %.preheader150 ] ; 4 uses
  br i1 %.pre-phi, label %.lr.ph198, label %.preheader148.preheader

.lr.ph180:                                        ; preds = %.preheader150, %_mm_store_si128.exit56
  %.1452.i179 = phi <2 x i64> [ %i.fk, %_mm_store_si128.exit56 ], [ %.lcssa617.a, %.preheader150 ]
  %.1455.i178 = phi <2 x i64> [ %i.gh, %_mm_store_si128.exit56 ], [ %.lcssa617.a, %.preheader150 ]
  %.1463.i177 = phi i64 [ %i.gu, %_mm_store_si128.exit56 ], [ %.lcssa621.a, %.preheader150 ] ; 4 uses
  %.1474.i176 = phi ptr [ %i.fc, %_mm_store_si128.exit56 ], [ %.lcssa616, %.preheader150 ] ; 7 uses
  %.1481.i175 = phi ptr [ %i.gt, %_mm_store_si128.exit56 ], [ %.lcssa622.a, %.preheader150 ] ; 6 uses
  %.1485.i174 = phi ptr [ %i.gn, %_mm_store_si128.exit56 ], [ %.lcssa620.a, %.preheader150 ] ; 6 uses
  %.1489.i173 = phi ptr [ %i.gf, %_mm_store_si128.exit56 ], [ %.lcssa619.a, %.preheader150 ] ; 5 uses
  %.1493.i172 = phi ptr [ %i.fr, %_mm_store_si128.exit56 ], [ %.lcssa618.a, %.preheader150 ] ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 16 ; 3 uses
  %i.em = ptrtoint ptr %.1474.i176 to i64, !nosanitize !22 ; 4 uses
  %i.en = add i64 %i.em, 16, !nosanitize !22      ; 2 uses
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = icmp ult ptr %.1474.i176, inttoptr (i64 -16 to ptr)
  %i.eq = and i1 %i.ep, %i.eo
  br i1 %i.eq, label %bb.an, label %bb.am, !prof !23, !nosanitize !22

bb.am:                                            ; preds = %.lr.ph180
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @13, i64 %i.em, i64 %i.en) #6, !nosanitize !22
  br label %bb.an, !nosanitize !22

bb.an:                                            ; preds = %bb.am, %.lr.ph180
  %i.er = and i64 %i.em, 15, !nosanitize !22
  %i.es = icmp eq i64 %i.er, 0, !nosanitize !22
  br i1 %i.es, label %_mm_load_si128.exit121, label %bb.ao, !prof !23, !nosanitize !22

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.em) #6, !nosanitize !22
  br label %_mm_load_si128.exit121, !nosanitize !22

_mm_load_si128.exit121:                           ; preds = %bb.an, %bb.ao
  %i.et = load <2 x i64>, ptr %.1474.i176, align 16, !tbaa !25 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 32 ; 3 uses
  %.not757.i = icmp ugt ptr %i.el, inttoptr (i64 -17 to ptr)
  br i1 %.not757.i, label %bb.ap, label %_mm_load_si128.exit120, !prof !24, !nosanitize !22

bb.ap:                                            ; preds = %_mm_load_si128.exit121
  %i.ev = ptrtoint ptr %i.el to i64, !nosanitize !22 ; 2 uses
  %i.ew = add i64 %i.ev, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @14, i64 %i.ev, i64 %i.ew) #6, !nosanitize !22
  br label %_mm_load_si128.exit120, !nosanitize !22

_mm_load_si128.exit120:                           ; preds = %bb.ap, %_mm_load_si128.exit121
  %i.ex = load <2 x i64>, ptr %i.el, align 16, !tbaa !25 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 48 ; 3 uses
  %.not758.i = icmp ugt ptr %i.eu, inttoptr (i64 -17 to ptr)
  br i1 %.not758.i, label %bb.aq, label %_mm_load_si128.exit119, !prof !24, !nosanitize !22

bb.aq:                                            ; preds = %_mm_load_si128.exit120
  %i.ez = ptrtoint ptr %i.eu to i64, !nosanitize !22 ; 2 uses
  %i.fa = add i64 %i.ez, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @15, i64 %i.ez, i64 %i.fa) #6, !nosanitize !22
  br label %_mm_load_si128.exit119, !nosanitize !22

_mm_load_si128.exit119:                           ; preds = %bb.aq, %_mm_load_si128.exit120
  %i.fb = load <2 x i64>, ptr %i.eu, align 16, !tbaa !25 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 64 ; 2 uses
  %.not759.i = icmp ugt ptr %i.ey, inttoptr (i64 -17 to ptr)
  br i1 %.not759.i, label %bb.ar, label %_mm_load_si128.exit119._crit_edge, !prof !24, !nosanitize !22

bb.ar:                                            ; preds = %_mm_load_si128.exit119
  %i.fd = ptrtoint ptr %i.ey to i64, !nosanitize !22 ; 2 uses
  %i.fe = add i64 %i.fd, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @16, i64 %i.fd, i64 %i.fe) #6, !nosanitize !22
  br label %_mm_load_si128.exit119._crit_edge, !nosanitize !22

_mm_load_si128.exit119._crit_edge:                ; preds = %bb.ar, %_mm_load_si128.exit119
  %i.ff = load <2 x i64>, ptr %i.ey, align 16, !tbaa !25 ; 3 uses
  %i.fg = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.et, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fh = shufflevector <2 x i64> %i.et, <2 x i64> %i.ex, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fi = shufflevector <2 x i64> %i.ex, <2 x i64> %i.fb, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fj = shufflevector <2 x i64> %i.fb, <2 x i64> %i.ff, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fk = shufflevector <2 x i64> %i.ff, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fl = xor <2 x i64> %.1452.i179, %i.fg        ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 16
  %.pre367 = ptrtoint ptr %.1493.i172 to i64, !nosanitize !22 ; 2 uses
  %i.fn = and i64 %.pre367, 15, !nosanitize !22
  %i.fo = icmp eq i64 %i.fn, 0, !nosanitize !22
  br i1 %i.fo, label %bb.at, label %bb.as, !prof !23, !nosanitize !22

bb.as:                                            ; preds = %_mm_load_si128.exit119._crit_edge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre367) #6, !nosanitize !22
  br label %bb.at, !nosanitize !22

bb.at:                                            ; preds = %_mm_load_si128.exit119._crit_edge, %bb.as
  store <2 x i64> %i.fl, ptr %.1493.i172, align 16, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 32
  store <2 x i64> %i.fh, ptr %i.fm, align 16, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 48
  store <2 x i64> %i.fi, ptr %i.fp, align 16, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 64 ; 2 uses
  store <2 x i64> %i.fj, ptr %i.fq, align 16, !tbaa !25
  %i.fs = xor <2 x i64> %.1455.i178, %i.fg
  %i.ft = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 16 ; 3 uses
  %i.fu = ptrtoint ptr %i.ft to i64, !nosanitize !22 ; 3 uses
  %i.fv = and i64 %i.fu, 15, !nosanitize !22
  %i.fw = icmp eq i64 %i.fv, 0, !nosanitize !22   ; 2 uses
  br i1 %i.fw, label %bb.av, label %bb.au, !prof !23, !nosanitize !22

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @18, i64 %i.fu) #6, !nosanitize !22
  br label %bb.av, !nosanitize !22

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fx = load <2 x i64>, ptr %i.ft, align 16, !tbaa !25
  %i.fy = xor <2 x i64> %i.fx, %i.fh
  %i.fz = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 32 ; 2 uses
  %i.ga = load <2 x i64>, ptr %i.fz, align 16, !tbaa !25
  %i.gb = xor <2 x i64> %i.ga, %i.fi
  %i.gc = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 48 ; 2 uses
  %i.gd = load <2 x i64>, ptr %i.gc, align 16, !tbaa !25
  %i.ge = xor <2 x i64> %i.gd, %i.fj
  %i.gf = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 64 ; 3 uses
  %i.gg = load <2 x i64>, ptr %i.gf, align 16, !tbaa !25
  %i.gh = xor <2 x i64> %i.gg, %i.fk              ; 2 uses
  store <2 x i64> %i.fs, ptr %.1489.i173, align 16, !tbaa !25
  br i1 %i.fw, label %bb.ax, label %bb.aw, !prof !23, !nosanitize !22

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.fu) #6, !nosanitize !22
  br label %bb.ax, !nosanitize !22

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store <2 x i64> %i.fy, ptr %i.ft, align 16, !tbaa !25
  store <2 x i64> %i.gb, ptr %i.fz, align 16, !tbaa !25
  store <2 x i64> %i.ge, ptr %i.gc, align 16, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 16
  %.pre375 = ptrtoint ptr %.1485.i174 to i64, !nosanitize !22 ; 2 uses
  %i.gj = and i64 %.pre375, 15, !nosanitize !22
  %i.gk = icmp eq i64 %i.gj, 0, !nosanitize !22
  br i1 %i.gk, label %bb.az, label %bb.ay, !prof !23, !nosanitize !22

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre375) #6, !nosanitize !22
  br label %bb.az, !nosanitize !22

bb.az:                                            ; preds = %bb.ax, %bb.ay
  store <2 x i64> %i.fl, ptr %.1485.i174, align 16, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 32
  store <2 x i64> %i.fh, ptr %i.gi, align 16, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 48
  store <2 x i64> %i.fi, ptr %i.gl, align 16, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 64 ; 2 uses
  store <2 x i64> %i.fj, ptr %i.gm, align 16, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 16
  %.pre383 = ptrtoint ptr %.1481.i175 to i64, !nosanitize !22 ; 2 uses
  %i.gp = and i64 %.pre383, 15, !nosanitize !22
  %i.gq = icmp eq i64 %i.gp, 0, !nosanitize !22
  br i1 %i.gq, label %_mm_store_si128.exit56, label %bb.ba, !prof !23, !nosanitize !22

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre383) #6, !nosanitize !22
  br label %_mm_store_si128.exit56, !nosanitize !22

_mm_store_si128.exit56:                           ; preds = %bb.az, %bb.ba
  store <2 x i64> %i.et, ptr %.1481.i175, align 16, !tbaa !25
  %i.gr = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 32
  store <2 x i64> %i.ex, ptr %i.go, align 16, !tbaa !25
  %i.gs = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 48
  store <2 x i64> %i.fb, ptr %i.gr, align 16, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 64 ; 2 uses
  store <2 x i64> %i.ff, ptr %i.gs, align 16, !tbaa !25
  %i.gu = add nuw nsw i64 %.1463.i177, 64         ; 2 uses
  %i.gv = add nuw nsw i64 %.1463.i177, 2528
  %i.gw = icmp ult i64 %i.gv, %.028
  %i.gx = icmp samesign ult i64 %.1463.i177, 192
  %i.gy = and i1 %i.gw, %i.gx
  br i1 %i.gy, label %.lr.ph180, label %.preheader149.loopexit, !llvm.loop !13

.lr.ph198:                                        ; preds = %.preheader149, %_mm_store_si128.exit72
  %.2453.i197 = phi <2 x i64> [ %i.hy, %_mm_store_si128.exit72 ], [ %.1452.i.lcssa, %.preheader149 ]
  %.2456.i196 = phi <2 x i64> [ %i.jg, %_mm_store_si128.exit72 ], [ %.1455.i.lcssa, %.preheader149 ]
  %.2460.i195 = phi <2 x i64> [ %i.ip, %_mm_store_si128.exit72 ], [ %.1452.i.lcssa, %.preheader149 ]
  %.2464.i194 = phi i64 [ %i.jw, %_mm_store_si128.exit72 ], [ %.1463.i.lcssa, %.preheader149 ] ; 3 uses
  %.2475.i193 = phi ptr [ %i.hq, %_mm_store_si128.exit72 ], [ %.1474.i.lcssa, %.preheader149 ] ; 7 uses
  %.2482.i192 = phi ptr [ %i.jv, %_mm_store_si128.exit72 ], [ %.1481.i.lcssa, %.preheader149 ] ; 7 uses
  %.2486.i191 = phi ptr [ %i.jo, %_mm_store_si128.exit72 ], [ %.1485.i.lcssa, %.preheader149 ] ; 7 uses
  %.2490.i190 = phi ptr [ %i.je, %_mm_store_si128.exit72 ], [ %.1489.i.lcssa, %.preheader149 ] ; 10 uses
  %.2494.i189 = phi ptr [ %i.in, %_mm_store_si128.exit72 ], [ %.1493.i.lcssa, %.preheader149 ] ; 10 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 16 ; 3 uses
  %i.ha = ptrtoint ptr %.2475.i193 to i64, !nosanitize !22 ; 4 uses
  %i.hb = add i64 %i.ha, 16, !nosanitize !22      ; 2 uses
  %i.hc = icmp ne i64 %i.hb, 0
  %i.hd = icmp ult ptr %.2475.i193, inttoptr (i64 -16 to ptr)
  %i.he = and i1 %i.hd, %i.hc
  br i1 %i.he, label %bb.bc, label %bb.bb, !prof !23, !nosanitize !22

bb.bb:                                            ; preds = %.lr.ph198
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @19, i64 %i.ha, i64 %i.hb) #6, !nosanitize !22
  br label %bb.bc, !nosanitize !22

bb.bc:                                            ; preds = %bb.bb, %.lr.ph198
  %i.hf = and i64 %i.ha, 15, !nosanitize !22
  %i.hg = icmp eq i64 %i.hf, 0, !nosanitize !22
  br i1 %i.hg, label %_mm_load_si128.exit125, label %bb.bd, !prof !23, !nosanitize !22

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.ha) #6, !nosanitize !22
  br label %_mm_load_si128.exit125, !nosanitize !22

_mm_load_si128.exit125:                           ; preds = %bb.bc, %bb.bd
  %i.hh = load <2 x i64>, ptr %.2475.i193, align 16, !tbaa !25 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 32 ; 3 uses
  %.not742.i = icmp ugt ptr %i.gz, inttoptr (i64 -17 to ptr)
  br i1 %.not742.i, label %bb.be, label %_mm_load_si128.exit124, !prof !24, !nosanitize !22

bb.be:                                            ; preds = %_mm_load_si128.exit125
  %i.hj = ptrtoint ptr %i.gz to i64, !nosanitize !22 ; 2 uses
  %i.hk = add i64 %i.hj, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @20, i64 %i.hj, i64 %i.hk) #6, !nosanitize !22
  br label %_mm_load_si128.exit124, !nosanitize !22

_mm_load_si128.exit124:                           ; preds = %bb.be, %_mm_load_si128.exit125
  %i.hl = load <2 x i64>, ptr %i.gz, align 16, !tbaa !25 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 48 ; 3 uses
  %.not743.i = icmp ugt ptr %i.hi, inttoptr (i64 -17 to ptr)
  br i1 %.not743.i, label %bb.bf, label %_mm_load_si128.exit123, !prof !24, !nosanitize !22

bb.bf:                                            ; preds = %_mm_load_si128.exit124
  %i.hn = ptrtoint ptr %i.hi to i64, !nosanitize !22 ; 2 uses
  %i.ho = add i64 %i.hn, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @21, i64 %i.hn, i64 %i.ho) #6, !nosanitize !22
  br label %_mm_load_si128.exit123, !nosanitize !22

_mm_load_si128.exit123:                           ; preds = %bb.bf, %_mm_load_si128.exit124
  %i.hp = load <2 x i64>, ptr %i.hi, align 16, !tbaa !25 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 64 ; 2 uses
  %.not744.i = icmp ugt ptr %i.hm, inttoptr (i64 -17 to ptr)
  br i1 %.not744.i, label %bb.bg, label %_mm_load_si128.exit122, !prof !24, !nosanitize !22

bb.bg:                                            ; preds = %_mm_load_si128.exit123
  %i.hr = ptrtoint ptr %i.hm to i64, !nosanitize !22 ; 2 uses
  %i.hs = add i64 %i.hr, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @22, i64 %i.hr, i64 %i.hs) #6, !nosanitize !22
  br label %_mm_load_si128.exit122, !nosanitize !22

_mm_load_si128.exit122:                           ; preds = %bb.bg, %_mm_load_si128.exit123
  %i.ht = load <2 x i64>, ptr %i.hm, align 16, !tbaa !25 ; 3 uses
  %i.hu = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.hh, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hv = shufflevector <2 x i64> %i.hh, <2 x i64> %i.hl, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hw = shufflevector <2 x i64> %i.hl, <2 x i64> %i.hp, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hx = shufflevector <2 x i64> %i.hp, <2 x i64> %i.ht, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hy = shufflevector <2 x i64> %i.ht, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.hz = xor <2 x i64> %.2460.i195, %i.hu
  %i.ia = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 16 ; 3 uses
  %i.ib = ptrtoint ptr %.2494.i189 to i64, !nosanitize !22 ; 5 uses
  %.not520 = icmp eq ptr %.2494.i189, inttoptr (i64 -16 to ptr) ; 2 uses
  br i1 %.not520, label %bb.bh, label %bb.bi, !prof !24, !nosanitize !22

bb.bh:                                            ; preds = %_mm_load_si128.exit122
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @23, i64 %i.ib, i64 0) #6, !nosanitize !22
  br label %bb.bi, !nosanitize !22

bb.bi:                                            ; preds = %bb.bh, %_mm_load_si128.exit122
  %i.ic = ptrtoint ptr %i.ia to i64, !nosanitize !22 ; 3 uses
  %i.id = and i64 %i.ic, 15, !nosanitize !22
  %i.ie = icmp eq i64 %i.id, 0, !nosanitize !22   ; 2 uses
  br i1 %i.ie, label %bb.bk, label %bb.bj, !prof !23, !nosanitize !22

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.ic) #6, !nosanitize !22
  br label %bb.bk, !nosanitize !22

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.if = load <2 x i64>, ptr %i.ia, align 16, !tbaa !25
  %i.ig = xor <2 x i64> %i.if, %i.hv
  %i.ih = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 32 ; 2 uses
  %.not521 = icmp eq ptr %.2494.i189, inttoptr (i64 -32 to ptr)
  br i1 %.not521, label %bb.bl, label %bb.bm, !prof !24, !nosanitize !22

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @25, i64 %i.ib, i64 0) #6, !nosanitize !22
  br label %bb.bm, !nosanitize !22

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.ii = load <2 x i64>, ptr %i.ih, align 16, !tbaa !25
  %i.ij = xor <2 x i64> %i.ii, %i.hw
  %i.ik = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 48 ; 2 uses
  %.not522 = icmp eq ptr %.2494.i189, inttoptr (i64 -48 to ptr)
  br i1 %.not522, label %bb.bn, label %bb.bo, !prof !24, !nosanitize !22

bb.bn:                                            ; preds = %bb.bm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @26, i64 %i.ib, i64 0) #6, !nosanitize !22
  br label %bb.bo, !nosanitize !22

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.il = load <2 x i64>, ptr %i.ik, align 16, !tbaa !25
  %i.im = xor <2 x i64> %i.il, %i.hx
  %i.in = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 64 ; 3 uses
  %.not523 = icmp eq ptr %.2494.i189, inttoptr (i64 -64 to ptr)
  br i1 %.not523, label %bb.bp, label %bb.bq, !prof !24, !nosanitize !22

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @27, i64 %i.ib, i64 0) #6, !nosanitize !22
  br label %bb.bq, !nosanitize !22

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.io = load <2 x i64>, ptr %i.in, align 16, !tbaa !25
  %i.ip = xor <2 x i64> %i.io, %i.hy              ; 2 uses
  br i1 %.not520, label %bb.br, label %bb.bs, !prof !24, !nosanitize !22

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @28, i64 %i.ib, i64 0) #6, !nosanitize !22
  br label %bb.bs, !nosanitize !22

bb.bs:                                            ; preds = %bb.bq, %bb.br
  store <2 x i64> %i.hz, ptr %.2494.i189, align 16, !tbaa !25
  br i1 %i.ie, label %_mm_store_si128.exit84, label %bb.bt, !prof !23, !nosanitize !22

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.ic) #6, !nosanitize !22
  br label %_mm_store_si128.exit84, !nosanitize !22

_mm_store_si128.exit84:                           ; preds = %bb.bt, %bb.bs
  store <2 x i64> %i.ig, ptr %i.ia, align 16, !tbaa !25
  store <2 x i64> %i.ij, ptr %i.ih, align 16, !tbaa !25
  store <2 x i64> %i.im, ptr %i.ik, align 16, !tbaa !25
  %i.iq = xor <2 x i64> %.2456.i196, %i.hu
  %i.ir = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 16 ; 3 uses
  %i.is = ptrtoint ptr %.2490.i190 to i64, !nosanitize !22 ; 5 uses
  %.not524 = icmp eq ptr %.2490.i190, inttoptr (i64 -16 to ptr) ; 2 uses
  br i1 %.not524, label %bb.bu, label %bb.bv, !prof !24, !nosanitize !22

bb.bu:                                            ; preds = %_mm_store_si128.exit84
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @29, i64 %i.is, i64 0) #6, !nosanitize !22
  br label %bb.bv, !nosanitize !22

bb.bv:                                            ; preds = %bb.bu, %_mm_store_si128.exit84
  %i.it = ptrtoint ptr %i.ir to i64, !nosanitize !22 ; 3 uses
  %i.iu = and i64 %i.it, 15, !nosanitize !22
  %i.iv = icmp eq i64 %i.iu, 0, !nosanitize !22   ; 2 uses
  br i1 %i.iv, label %bb.bx, label %bb.bw, !prof !23, !nosanitize !22

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.it) #6, !nosanitize !22
  br label %bb.bx, !nosanitize !22

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.iw = load <2 x i64>, ptr %i.ir, align 16, !tbaa !25
  %i.ix = xor <2 x i64> %i.iw, %i.hv
  %i.iy = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 32 ; 2 uses
  %.not525 = icmp eq ptr %.2490.i190, inttoptr (i64 -32 to ptr)
  br i1 %.not525, label %bb.by, label %bb.bz, !prof !24, !nosanitize !22

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.is, i64 0) #6, !nosanitize !22
  br label %bb.bz, !nosanitize !22

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.iz = load <2 x i64>, ptr %i.iy, align 16, !tbaa !25
  %i.ja = xor <2 x i64> %i.iz, %i.hw
  %i.jb = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 48 ; 2 uses
  %.not526 = icmp eq ptr %.2490.i190, inttoptr (i64 -48 to ptr)
  br i1 %.not526, label %bb.ca, label %bb.cb, !prof !24, !nosanitize !22

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @32, i64 %i.is, i64 0) #6, !nosanitize !22
  br label %bb.cb, !nosanitize !22

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.jc = load <2 x i64>, ptr %i.jb, align 16, !tbaa !25
  %i.jd = xor <2 x i64> %i.jc, %i.hx
  %i.je = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 64 ; 3 uses
  %.not527 = icmp eq ptr %.2490.i190, inttoptr (i64 -64 to ptr)
  br i1 %.not527, label %bb.cc, label %bb.cd, !prof !24, !nosanitize !22

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @33, i64 %i.is, i64 0) #6, !nosanitize !22
  br label %bb.cd, !nosanitize !22

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.jf = load <2 x i64>, ptr %i.je, align 16, !tbaa !25
  %i.jg = xor <2 x i64> %i.jf, %i.hy              ; 2 uses
  br i1 %.not524, label %bb.ce, label %bb.cf, !prof !24, !nosanitize !22

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @34, i64 %i.is, i64 0) #6, !nosanitize !22
  br label %bb.cf, !nosanitize !22

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  store <2 x i64> %i.iq, ptr %.2490.i190, align 16, !tbaa !25
  br i1 %i.iv, label %_mm_store_si128.exit80, label %bb.cg, !prof !23, !nosanitize !22

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.it) #6, !nosanitize !22
  br label %_mm_store_si128.exit80, !nosanitize !22

_mm_store_si128.exit80:                           ; preds = %bb.cg, %bb.cf
  store <2 x i64> %i.ix, ptr %i.ir, align 16, !tbaa !25
  store <2 x i64> %i.ja, ptr %i.iy, align 16, !tbaa !25
  store <2 x i64> %i.jd, ptr %i.jb, align 16, !tbaa !25
  %i.jh = xor <2 x i64> %.2453.i197, %i.hu
  %i.ji = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 16
  %i.jj = ptrtoint ptr %.2486.i191 to i64, !nosanitize !22 ; 3 uses
  %.not528 = icmp eq ptr %.2486.i191, inttoptr (i64 -16 to ptr)
  br i1 %.not528, label %bb.ch, label %bb.ci, !prof !24, !nosanitize !22

bb.ch:                                            ; preds = %_mm_store_si128.exit80
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @35, i64 %i.jj, i64 0) #6, !nosanitize !22
  br label %bb.ci, !nosanitize !22

bb.ci:                                            ; preds = %bb.ch, %_mm_store_si128.exit80
  %i.jk = and i64 %i.jj, 15, !nosanitize !22
  %i.jl = icmp eq i64 %i.jk, 0, !nosanitize !22
  br i1 %i.jl, label %_mm_store_si128.exit76, label %bb.cj, !prof !23, !nosanitize !22

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.jj) #6, !nosanitize !22
  br label %_mm_store_si128.exit76, !nosanitize !22

_mm_store_si128.exit76:                           ; preds = %bb.ci, %bb.cj
  store <2 x i64> %i.jh, ptr %.2486.i191, align 16, !tbaa !25
  %i.jm = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 32
  store <2 x i64> %i.hv, ptr %i.ji, align 16, !tbaa !25
  %i.jn = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 48
  store <2 x i64> %i.hw, ptr %i.jm, align 16, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 64 ; 2 uses
  store <2 x i64> %i.hx, ptr %i.jn, align 16, !tbaa !25
  %i.jp = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 16
  %i.jq = ptrtoint ptr %.2482.i192 to i64, !nosanitize !22 ; 3 uses
  %.not529 = icmp eq ptr %.2482.i192, inttoptr (i64 -16 to ptr)
  br i1 %.not529, label %bb.ck, label %bb.cl, !prof !24, !nosanitize !22

bb.ck:                                            ; preds = %_mm_store_si128.exit76
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @36, i64 %i.jq, i64 0) #6, !nosanitize !22
  br label %bb.cl, !nosanitize !22

bb.cl:                                            ; preds = %bb.ck, %_mm_store_si128.exit76
  %i.jr = and i64 %i.jq, 15, !nosanitize !22
  %i.js = icmp eq i64 %i.jr, 0, !nosanitize !22
  br i1 %i.js, label %_mm_store_si128.exit72, label %bb.cm, !prof !23, !nosanitize !22

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.jq) #6, !nosanitize !22
  br label %_mm_store_si128.exit72, !nosanitize !22

_mm_store_si128.exit72:                           ; preds = %bb.cl, %bb.cm
  store <2 x i64> %i.hh, ptr %.2482.i192, align 16, !tbaa !25
  %i.jt = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 32
  store <2 x i64> %i.hl, ptr %i.jp, align 16, !tbaa !25
  %i.ju = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 48
  store <2 x i64> %i.hp, ptr %i.jt, align 16, !tbaa !25
  %i.jv = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 64 ; 2 uses
  store <2 x i64> %i.ht, ptr %i.ju, align 16, !tbaa !25
  %i.jw = add nuw nsw i64 %.2464.i194, 64         ; 2 uses
  %i.jx = add nuw nsw i64 %.2464.i194, 2528
  %i.jy = icmp ult i64 %i.jx, %.028
  %i.jz = icmp samesign ult i64 %.2464.i194, 608
  %i.ka = and i1 %i.jy, %i.jz
  br i1 %i.ka, label %.lr.ph198, label %.preheader148.preheader, !llvm.loop !14

.preheader148.preheader:                          ; preds = %_mm_store_si128.exit72, %.preheader149
  %.3495.i.ph = phi ptr [ %.1493.i.lcssa, %.preheader149 ], [ %i.in, %_mm_store_si128.exit72 ]
  %.3491.i.ph = phi ptr [ %.1489.i.lcssa, %.preheader149 ], [ %i.je, %_mm_store_si128.exit72 ]
  %.3487.i.ph = phi ptr [ %.1485.i.lcssa, %.preheader149 ], [ %i.jo, %_mm_store_si128.exit72 ]
  %.3483.i.ph = phi ptr [ %.1481.i.lcssa, %.preheader149 ], [ %i.jv, %_mm_store_si128.exit72 ]
  %.3476.i.ph = phi ptr [ %.1474.i.lcssa, %.preheader149 ], [ %i.hq, %_mm_store_si128.exit72 ]
  %.3465.i.ph = phi i64 [ %.1463.i.lcssa, %.preheader149 ], [ %i.jw, %_mm_store_si128.exit72 ]
  %.3461.i.ph = phi <2 x i64> [ %.1452.i.lcssa, %.preheader149 ], [ %i.ip, %_mm_store_si128.exit72 ]
  %.3457.i.ph = phi <2 x i64> [ %.1455.i.lcssa, %.preheader149 ], [ %i.jg, %_mm_store_si128.exit72 ]
  %.3.i.ph = phi <2 x i64> [ %.1452.i.lcssa, %.preheader149 ], [ %i.hy, %_mm_store_si128.exit72 ]
  br label %.preheader148.a

.preheader148.a:                                  ; preds = %.preheader148.backedge, %.preheader148.preheader
  %.3495.i = phi ptr [ %.3495.i.ph, %.preheader148.preheader ], [ %i.nx, %.preheader148.backedge ] ; 12 uses
  %.3491.i = phi ptr [ %.3491.i.ph, %.preheader148.preheader ], [ %i.pj, %.preheader148.backedge ] ; 12 uses
  %.3487.i = phi ptr [ %.3487.i.ph, %.preheader148.preheader ], [ %i.rn, %.preheader148.backedge ] ; 18 uses
  %.3483.i = phi ptr [ %.3483.i.ph, %.preheader148.preheader ], [ %i.se, %.preheader148.backedge ] ; 7 uses
  %.0478.i = phi ptr [ %i.u, %.preheader148.preheader ], [ %.1479.i, %.preheader148.backedge ] ; 8 uses
  %.3476.i = phi ptr [ %.3476.i.ph, %.preheader148.preheader ], [ %.4477.i, %.preheader148.backedge ] ; 10 uses
  %.3465.i = phi i64 [ %.3465.i.ph, %.preheader148.preheader ], [ %i.si, %.preheader148.backedge ] ; 11 uses
  %.3461.i = phi <2 x i64> [ %.3461.i.ph, %.preheader148.preheader ], [ %i.od, %.preheader148.backedge ] ; 2 uses
  %.3457.i = phi <2 x i64> [ %.3457.i.ph, %.preheader148.preheader ], [ %i.pp, %.preheader148.backedge ] ; 2 uses
  %.3.i = phi <2 x i64> [ %.3.i.ph, %.preheader148.preheader ], [ %.4.i, %.preheader148.backedge ] ; 2 uses
  %i.kb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3465.i, i64 2400), !nosanitize !22 ; 2 uses
  %i.kc = extractvalue { i64, i1 } %i.kb, 0, !nosanitize !22 ; 4 uses
  %i.kd = extractvalue { i64, i1 } %i.kb, 1, !nosanitize !22 ; 2 uses
  br i1 %i.kd, label %bb.cn, label %bb.co, !prof !24, !nosanitize !22

bb.cn:                                            ; preds = %.preheader148.a
  call void @__ubsan_handle_add_overflow(ptr nonnull @37, i64 %.3465.i, i64 2400) #7, !nosanitize !22
  br label %bb.co, !nosanitize !22

bb.co:                                            ; preds = %bb.cn, %.preheader148.a
  %i.ke = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kc, i64 64), !nosanitize !22 ; 2 uses
  %i.kf = extractvalue { i64, i1 } %i.ke, 0, !nosanitize !22
  %i.kg = extractvalue { i64, i1 } %i.ke, 1, !nosanitize !22
  br i1 %i.kg, label %bb.cp, label %bb.cq, !prof !24, !nosanitize !22

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_add_overflow(ptr nonnull @38, i64 %i.kc, i64 64) #7, !nosanitize !22
  br label %bb.cq, !nosanitize !22

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.kh = icmp ult i64 %i.kf, %.028
  br i1 %i.kh, label %bb.cr, label %bb.fs

bb.cr:                                            ; preds = %bb.cq
  %i.ki = icmp ult i64 %.3465.i, 1024
  %i.kj = getelementptr inbounds nuw i8, ptr %.3476.i, i64 16 ; 6 uses
  %i.kk = ptrtoint ptr %.3476.i to i64, !nosanitize !22 ; 7 uses
  %i.kl = add i64 %i.kk, 16, !nosanitize !22      ; 3 uses
  %i.km = icmp ne i64 %i.kl, 0
  %i.kn = icmp ult ptr %.3476.i, inttoptr (i64 -16 to ptr)
  %i.ko = and i1 %i.kn, %i.km                     ; 2 uses
  br i1 %i.ki, label %bb.cs, label %bb.cz

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.ko, label %bb.cu, label %bb.ct, !prof !23, !nosanitize !22

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @39, i64 %i.kk, i64 %i.kl) #6, !nosanitize !22
  br label %bb.cu, !nosanitize !22

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.kp = and i64 %i.kk, 15, !nosanitize !22
  %i.kq = icmp eq i64 %i.kp, 0, !nosanitize !22
  br i1 %i.kq, label %_mm_load_si128.exit129, label %bb.cv, !prof !23, !nosanitize !22

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.kk) #6, !nosanitize !22
  br label %_mm_load_si128.exit129, !nosanitize !22

_mm_load_si128.exit129:                           ; preds = %bb.cu, %bb.cv
  %i.kr = load <2 x i64>, ptr %.3476.i, align 16, !tbaa !25
  %i.ks = getelementptr inbounds nuw i8, ptr %.3476.i, i64 32 ; 3 uses
  %.not727.i = icmp ugt ptr %i.kj, inttoptr (i64 -17 to ptr)
  br i1 %.not727.i, label %bb.cw, label %_mm_load_si128.exit128, !prof !24, !nosanitize !22

bb.cw:                                            ; preds = %_mm_load_si128.exit129
  %i.kt = ptrtoint ptr %i.kj to i64, !nosanitize !22 ; 2 uses
  %i.ku = add i64 %i.kt, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @40, i64 %i.kt, i64 %i.ku) #6, !nosanitize !22
  br label %_mm_load_si128.exit128, !nosanitize !22

_mm_load_si128.exit128:                           ; preds = %bb.cw, %_mm_load_si128.exit129
  %i.kv = load <2 x i64>, ptr %i.kj, align 16, !tbaa !25
  %i.kw = getelementptr inbounds nuw i8, ptr %.3476.i, i64 48 ; 3 uses
  %.not728.i = icmp ugt ptr %i.ks, inttoptr (i64 -17 to ptr)
  br i1 %.not728.i, label %bb.cx, label %_mm_load_si128.exit127, !prof !24, !nosanitize !22

bb.cx:                                            ; preds = %_mm_load_si128.exit128
  %i.kx = ptrtoint ptr %i.ks to i64, !nosanitize !22 ; 2 uses
  %i.ky = add i64 %i.kx, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @41, i64 %i.kx, i64 %i.ky) #6, !nosanitize !22
  br label %_mm_load_si128.exit127, !nosanitize !22

_mm_load_si128.exit127:                           ; preds = %bb.cx, %_mm_load_si128.exit128
  %i.kz = load <2 x i64>, ptr %i.ks, align 16, !tbaa !25
  %.not729.i = icmp ugt ptr %i.kw, inttoptr (i64 -17 to ptr)
  br i1 %.not729.i, label %bb.cy, label %_mm_load_si128.exit126, !prof !24, !nosanitize !22

bb.cy:                                            ; preds = %_mm_load_si128.exit127
  %i.la = ptrtoint ptr %i.kw to i64, !nosanitize !22 ; 2 uses
  %i.lb = add i64 %i.la, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @42, i64 %i.la, i64 %i.lb) #6, !nosanitize !22
  br label %_mm_load_si128.exit126, !nosanitize !22

_mm_load_si128.exit126:                           ; preds = %bb.cy, %_mm_load_si128.exit127
  %i.lc = load <2 x i64>, ptr %i.kw, align 16, !tbaa !25
  br label %bb.dm

bb.cz:                                            ; preds = %bb.cr
  br i1 %i.ko, label %bb.db, label %bb.da, !prof !23, !nosanitize !22

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.kk, i64 %i.kl) #6, !nosanitize !22
  br label %bb.db, !nosanitize !22

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ld = and i64 %i.kk, 15, !nosanitize !22
  %i.le = icmp eq i64 %i.ld, 0, !nosanitize !22
  br i1 %i.le, label %_mm_load_si128.exit137, label %bb.dc, !prof !23, !nosanitize !22

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.kk) #6, !nosanitize !22
  br label %_mm_load_si128.exit137, !nosanitize !22

_mm_load_si128.exit137:                           ; preds = %bb.db, %bb.dc
  %i.lf = load <2 x i64>, ptr %.3476.i, align 16, !tbaa !25
  %i.lg = getelementptr inbounds nuw i8, ptr %.0478.i, i64 16 ; 3 uses
  %i.lh = ptrtoint ptr %.0478.i to i64, !nosanitize !22 ; 4 uses
  %i.li = add i64 %i.lh, 16, !nosanitize !22      ; 2 uses
  %i.lj = icmp ne i64 %i.li, 0, !nosanitize !22
  %i.lk = icmp ult ptr %.0478.i, inttoptr (i64 -16 to ptr)
  %i.ll = and i1 %i.lk, %i.lj, !nosanitize !22
  br i1 %i.ll, label %bb.de, label %bb.dd, !prof !23, !nosanitize !22

bb.dd:                                            ; preds = %_mm_load_si128.exit137
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @44, i64 %i.lh, i64 %i.li) #6, !nosanitize !22
  br label %bb.de, !nosanitize !22

bb.de:                                            ; preds = %bb.dd, %_mm_load_si128.exit137
  %i.lm = and i64 %i.lh, 15, !nosanitize !22
  %i.ln = icmp eq i64 %i.lm, 0, !nosanitize !22
  br i1 %i.ln, label %_mm_load_si128.exit136, label %bb.df, !prof !23, !nosanitize !22

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.lh) #6, !nosanitize !22
  br label %_mm_load_si128.exit136, !nosanitize !22

_mm_load_si128.exit136:                           ; preds = %bb.de, %bb.df
  %i.lo = load <2 x i64>, ptr %.0478.i, align 16, !tbaa !25
  %i.lp = xor <2 x i64> %i.lo, %i.lf
  %i.lq = getelementptr inbounds nuw i8, ptr %.3476.i, i64 32 ; 3 uses
  %.not721.i = icmp ugt ptr %i.kj, inttoptr (i64 -17 to ptr)
  br i1 %.not721.i, label %bb.dg, label %_mm_load_si128.exit135, !prof !24, !nosanitize !22

bb.dg:                                            ; preds = %_mm_load_si128.exit136
  %i.lr = ptrtoint ptr %i.kj to i64, !nosanitize !22 ; 2 uses
  %i.ls = add i64 %i.lr, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.lr, i64 %i.ls) #6, !nosanitize !22
  br label %_mm_load_si128.exit135, !nosanitize !22

_mm_load_si128.exit135:                           ; preds = %bb.dg, %_mm_load_si128.exit136
  %i.lt = load <2 x i64>, ptr %i.kj, align 16, !tbaa !25
  %i.lu = getelementptr inbounds nuw i8, ptr %.0478.i, i64 32 ; 3 uses
  %.not722.i = icmp ugt ptr %i.lg, inttoptr (i64 -17 to ptr)
  br i1 %.not722.i, label %bb.dh, label %_mm_load_si128.exit134, !prof !24, !nosanitize !22

bb.dh:                                            ; preds = %_mm_load_si128.exit135
  %i.lv = ptrtoint ptr %i.lg to i64, !nosanitize !22 ; 2 uses
  %i.lw = add i64 %i.lv, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @46, i64 %i.lv, i64 %i.lw) #6, !nosanitize !22
  br label %_mm_load_si128.exit134, !nosanitize !22

_mm_load_si128.exit134:                           ; preds = %bb.dh, %_mm_load_si128.exit135
  %i.lx = load <2 x i64>, ptr %i.lg, align 16, !tbaa !25
  %i.ly = xor <2 x i64> %i.lx, %i.lt
  %i.lz = getelementptr inbounds nuw i8, ptr %.3476.i, i64 48 ; 3 uses
  %.not723.i = icmp ugt ptr %i.lq, inttoptr (i64 -17 to ptr)
  br i1 %.not723.i, label %bb.di, label %_mm_load_si128.exit133, !prof !24, !nosanitize !22

bb.di:                                            ; preds = %_mm_load_si128.exit134
  %i.ma = ptrtoint ptr %i.lq to i64, !nosanitize !22 ; 2 uses
  %i.mb = add i64 %i.ma, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %i.ma, i64 %i.mb) #6, !nosanitize !22
  br label %_mm_load_si128.exit133, !nosanitize !22

_mm_load_si128.exit133:                           ; preds = %bb.di, %_mm_load_si128.exit134
  %i.mc = load <2 x i64>, ptr %i.lq, align 16, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %.0478.i, i64 48 ; 3 uses
  %.not724.i = icmp ugt ptr %i.lu, inttoptr (i64 -17 to ptr)
  br i1 %.not724.i, label %bb.dj, label %_mm_load_si128.exit132, !prof !24, !nosanitize !22

bb.dj:                                            ; preds = %_mm_load_si128.exit133
  %i.me = ptrtoint ptr %i.lu to i64, !nosanitize !22 ; 2 uses
  %i.mf = add i64 %i.me, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @48, i64 %i.me, i64 %i.mf) #6, !nosanitize !22
  br label %_mm_load_si128.exit132, !nosanitize !22

_mm_load_si128.exit132:                           ; preds = %bb.dj, %_mm_load_si128.exit133
  %i.mg = load <2 x i64>, ptr %i.lu, align 16, !tbaa !25
  %i.mh = xor <2 x i64> %i.mg, %i.mc
  %.not725.i = icmp ugt ptr %i.lz, inttoptr (i64 -17 to ptr)
  br i1 %.not725.i, label %bb.dk, label %_mm_load_si128.exit131, !prof !24, !nosanitize !22

bb.dk:                                            ; preds = %_mm_load_si128.exit132
  %i.mi = ptrtoint ptr %i.lz to i64, !nosanitize !22 ; 2 uses
  %i.mj = add i64 %i.mi, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @49, i64 %i.mi, i64 %i.mj) #6, !nosanitize !22
  br label %_mm_load_si128.exit131, !nosanitize !22

_mm_load_si128.exit131:                           ; preds = %bb.dk, %_mm_load_si128.exit132
  %i.mk = load <2 x i64>, ptr %i.lz, align 16, !tbaa !25
  %i.ml = getelementptr inbounds nuw i8, ptr %.0478.i, i64 64
  %.not726.i = icmp ugt ptr %i.md, inttoptr (i64 -17 to ptr)
  br i1 %.not726.i, label %bb.dl, label %_mm_load_si128.exit130, !prof !24, !nosanitize !22

bb.dl:                                            ; preds = %_mm_load_si128.exit131
  %i.mm = ptrtoint ptr %i.md to i64, !nosanitize !22 ; 2 uses
  %i.mn = add i64 %i.mm, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @50, i64 %i.mm, i64 %i.mn) #6, !nosanitize !22
  br label %_mm_load_si128.exit130, !nosanitize !22

_mm_load_si128.exit130:                           ; preds = %bb.dl, %_mm_load_si128.exit131
  %i.mo = load <2 x i64>, ptr %i.md, align 16, !tbaa !25
  %i.mp = xor <2 x i64> %i.mo, %i.mk
  br label %bb.dm

bb.dm:                                            ; preds = %_mm_load_si128.exit130, %_mm_load_si128.exit126
  %.1479.i = phi ptr [ %.0478.i, %_mm_load_si128.exit126 ], [ %i.ml, %_mm_load_si128.exit130 ]
  %.0449.i = phi <2 x i64> [ %i.kr, %_mm_load_si128.exit126 ], [ %i.lp, %_mm_load_si128.exit130 ] ; 3 uses
  %.0448.i = phi <2 x i64> [ %i.kv, %_mm_load_si128.exit126 ], [ %i.ly, %_mm_load_si128.exit130 ] ; 3 uses
  %.0447.i = phi <2 x i64> [ %i.kz, %_mm_load_si128.exit126 ], [ %i.mh, %_mm_load_si128.exit130 ] ; 3 uses
  %.0446.i = phi <2 x i64> [ %i.lc, %_mm_load_si128.exit126 ], [ %i.mp, %_mm_load_si128.exit130 ] ; 3 uses
  %.4477.i = getelementptr inbounds nuw i8, ptr %.3476.i, i64 64
  %i.mq = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %.0449.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mr = shufflevector <2 x i64> %.0449.i, <2 x i64> %.0448.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ms = shufflevector <2 x i64> %.0448.i, <2 x i64> %.0447.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mt = shufflevector <2 x i64> %.0447.i, <2 x i64> %.0446.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mu = shufflevector <2 x i64> %.0446.i, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mv = xor <2 x i64> %.3461.i, %i.mq
  %i.mw = getelementptr inbounds nuw i8, ptr %.3495.i, i64 16 ; 4 uses
  %i.mx = ptrtoint ptr %.3495.i to i64, !nosanitize !22 ; 9 uses
  %i.my = add i64 %i.mx, 16, !nosanitize !22      ; 3 uses
  %i.mz = icmp ne i64 %i.my, 0, !nosanitize !22
  %i.na = icmp ult ptr %.3495.i, inttoptr (i64 -16 to ptr)
  %i.nb = and i1 %i.na, %i.mz, !nosanitize !22    ; 2 uses
  br i1 %i.nb, label %bb.do, label %bb.dn, !prof !23, !nosanitize !22

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @51, i64 %i.mx, i64 %i.my) #6, !nosanitize !22
  br label %bb.do, !nosanitize !22

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.nc = ptrtoint ptr %i.mw to i64, !nosanitize !22 ; 5 uses
  %i.nd = and i64 %i.nc, 15, !nosanitize !22
  %i.ne = icmp eq i64 %i.nd, 0, !nosanitize !22   ; 2 uses
  br i1 %i.ne, label %bb.dq, label %bb.dp, !prof !23, !nosanitize !22

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @52, i64 %i.nc) #6, !nosanitize !22
  br label %bb.dq, !nosanitize !22

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.nf = load <2 x i64>, ptr %i.mw, align 16, !tbaa !25
  %i.ng = xor <2 x i64> %i.nf, %i.mr
  %i.nh = getelementptr inbounds nuw i8, ptr %.3495.i, i64 32 ; 4 uses
  %i.ni = add i64 %i.mx, 32, !nosanitize !22      ; 2 uses
  %i.nj = icmp ne i64 %i.ni, 0, !nosanitize !22
  %i.nk = icmp ult ptr %.3495.i, inttoptr (i64 -32 to ptr)
  %i.nl = and i1 %i.nk, %i.nj, !nosanitize !22
  br i1 %i.nl, label %bb.ds, label %bb.dr, !prof !23, !nosanitize !22

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @53, i64 %i.mx, i64 %i.ni) #6, !nosanitize !22
  br label %bb.ds, !nosanitize !22

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.nm = ptrtoint ptr %i.nh to i64, !nosanitize !22 ; 2 uses
  %i.nn = load <2 x i64>, ptr %i.nh, align 16, !tbaa !25
  %i.no = xor <2 x i64> %i.nn, %i.ms
  %i.np = getelementptr inbounds nuw i8, ptr %.3495.i, i64 48 ; 4 uses
  %i.nq = add i64 %i.mx, 48, !nosanitize !22      ; 2 uses
  %i.nr = icmp ne i64 %i.nq, 0, !nosanitize !22
  %i.ns = icmp ult ptr %.3495.i, inttoptr (i64 -48 to ptr)
  %i.nt = and i1 %i.ns, %i.nr, !nosanitize !22
  br i1 %i.nt, label %bb.du, label %bb.dt, !prof !23, !nosanitize !22

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.mx, i64 %i.nq) #6, !nosanitize !22
  br label %bb.du, !nosanitize !22

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.nu = ptrtoint ptr %i.np to i64, !nosanitize !22 ; 2 uses
  %i.nv = load <2 x i64>, ptr %i.np, align 16, !tbaa !25
  %i.nw = xor <2 x i64> %i.nv, %i.mt
  %i.nx = getelementptr inbounds nuw i8, ptr %.3495.i, i64 64 ; 2 uses
  %i.ny = add i64 %i.mx, 64, !nosanitize !22      ; 2 uses
  %i.nz = icmp ne i64 %i.ny, 0, !nosanitize !22
  %i.oa = icmp ult ptr %.3495.i, inttoptr (i64 -64 to ptr)
  %i.ob = and i1 %i.oa, %i.nz, !nosanitize !22
  br i1 %i.ob, label %bb.dw, label %bb.dv, !prof !23, !nosanitize !22

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @55, i64 %i.mx, i64 %i.ny) #6, !nosanitize !22
  br label %bb.dw, !nosanitize !22

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %i.oc = load <2 x i64>, ptr %i.nx, align 16, !tbaa !25
  %i.od = xor <2 x i64> %i.oc, %i.mu
  br i1 %i.nb, label %_mm_store_si128.exit103, label %bb.dx, !prof !23, !nosanitize !22

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @56, i64 %i.mx, i64 %i.my) #6, !nosanitize !22
  br label %_mm_store_si128.exit103, !nosanitize !22

_mm_store_si128.exit103:                          ; preds = %bb.dw, %bb.dx
  store <2 x i64> %i.mv, ptr %.3495.i, align 16, !tbaa !25
  %.not730.i = icmp ugt ptr %i.mw, inttoptr (i64 -17 to ptr)
  br i1 %.not730.i, label %bb.dy, label %bb.dz, !prof !24, !nosanitize !22

bb.dy:                                            ; preds = %_mm_store_si128.exit103
  %i.oe = add i64 %i.nc, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @57, i64 %i.nc, i64 %i.oe) #6, !nosanitize !22
  br label %bb.dz, !nosanitize !22

bb.dz:                                            ; preds = %bb.dy, %_mm_store_si128.exit103
  br i1 %i.ne, label %_mm_store_si128.exit102, label %bb.ea, !prof !23, !nosanitize !22

bb.ea:                                            ; preds = %bb.dz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.nc) #6, !nosanitize !22
  br label %_mm_store_si128.exit102, !nosanitize !22

_mm_store_si128.exit102:                          ; preds = %bb.dz, %bb.ea
  store <2 x i64> %i.ng, ptr %i.mw, align 16, !tbaa !25
  %.not731.i = icmp ugt ptr %i.nh, inttoptr (i64 -17 to ptr)
  br i1 %.not731.i, label %bb.eb, label %_mm_store_si128.exit101, !prof !24, !nosanitize !22

bb.eb:                                            ; preds = %_mm_store_si128.exit102
  %i.of = add i64 %i.nm, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @58, i64 %i.nm, i64 %i.of) #6, !nosanitize !22
  br label %_mm_store_si128.exit101, !nosanitize !22

_mm_store_si128.exit101:                          ; preds = %_mm_store_si128.exit102, %bb.eb
  store <2 x i64> %i.no, ptr %i.nh, align 16, !tbaa !25
  %.not732.i = icmp ugt ptr %i.np, inttoptr (i64 -17 to ptr)
  br i1 %.not732.i, label %bb.ec, label %_mm_store_si128.exit100, !prof !24, !nosanitize !22

bb.ec:                                            ; preds = %_mm_store_si128.exit101
  %i.og = add i64 %i.nu, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @59, i64 %i.nu, i64 %i.og) #6, !nosanitize !22
  br label %_mm_store_si128.exit100, !nosanitize !22

_mm_store_si128.exit100:                          ; preds = %_mm_store_si128.exit101, %bb.ec
  store <2 x i64> %i.nw, ptr %i.np, align 16, !tbaa !25
  %i.oh = xor <2 x i64> %.3457.i, %i.mq
  %i.oi = getelementptr inbounds nuw i8, ptr %.3491.i, i64 16 ; 4 uses
  %i.oj = ptrtoint ptr %.3491.i to i64, !nosanitize !22 ; 9 uses
  %i.ok = add i64 %i.oj, 16, !nosanitize !22      ; 3 uses
  %i.ol = icmp ne i64 %i.ok, 0, !nosanitize !22
  %i.om = icmp ult ptr %.3491.i, inttoptr (i64 -16 to ptr)
  %i.on = and i1 %i.om, %i.ol, !nosanitize !22    ; 2 uses
  br i1 %i.on, label %bb.ee, label %bb.ed, !prof !23, !nosanitize !22

bb.ed:                                            ; preds = %_mm_store_si128.exit100
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @60, i64 %i.oj, i64 %i.ok) #6, !nosanitize !22
  br label %bb.ee, !nosanitize !22

bb.ee:                                            ; preds = %bb.ed, %_mm_store_si128.exit100
  %i.oo = ptrtoint ptr %i.oi to i64, !nosanitize !22 ; 5 uses
  %i.op = and i64 %i.oo, 15, !nosanitize !22
  %i.oq = icmp eq i64 %i.op, 0, !nosanitize !22   ; 2 uses
  br i1 %i.oq, label %bb.eg, label %bb.ef, !prof !23, !nosanitize !22

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @61, i64 %i.oo) #6, !nosanitize !22
  br label %bb.eg, !nosanitize !22

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.or = load <2 x i64>, ptr %i.oi, align 16, !tbaa !25
  %i.os = xor <2 x i64> %i.or, %i.mr
  %i.ot = getelementptr inbounds nuw i8, ptr %.3491.i, i64 32 ; 4 uses
  %i.ou = add i64 %i.oj, 32, !nosanitize !22      ; 2 uses
  %i.ov = icmp ne i64 %i.ou, 0, !nosanitize !22
  %i.ow = icmp ult ptr %.3491.i, inttoptr (i64 -32 to ptr)
  %i.ox = and i1 %i.ow, %i.ov, !nosanitize !22
  br i1 %i.ox, label %bb.ei, label %bb.eh, !prof !23, !nosanitize !22

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @62, i64 %i.oj, i64 %i.ou) #6, !nosanitize !22
  br label %bb.ei, !nosanitize !22

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.oy = ptrtoint ptr %i.ot to i64, !nosanitize !22 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.ot, align 16, !tbaa !25
  %i.pa = xor <2 x i64> %i.oz, %i.ms
  %i.pb = getelementptr inbounds nuw i8, ptr %.3491.i, i64 48 ; 4 uses
  %i.pc = add i64 %i.oj, 48, !nosanitize !22      ; 2 uses
  %i.pd = icmp ne i64 %i.pc, 0, !nosanitize !22
  %i.pe = icmp ult ptr %.3491.i, inttoptr (i64 -48 to ptr)
  %i.pf = and i1 %i.pe, %i.pd, !nosanitize !22
  br i1 %i.pf, label %bb.ek, label %bb.ej, !prof !23, !nosanitize !22

bb.ej:                                            ; preds = %bb.ei
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @63, i64 %i.oj, i64 %i.pc) #6, !nosanitize !22
  br label %bb.ek, !nosanitize !22

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.pg = ptrtoint ptr %i.pb to i64, !nosanitize !22 ; 2 uses
  %i.ph = load <2 x i64>, ptr %i.pb, align 16, !tbaa !25
  %i.pi = xor <2 x i64> %i.ph, %i.mt
  %i.pj = getelementptr inbounds nuw i8, ptr %.3491.i, i64 64 ; 2 uses
  %i.pk = add i64 %i.oj, 64, !nosanitize !22      ; 2 uses
  %i.pl = icmp ne i64 %i.pk, 0, !nosanitize !22
  %i.pm = icmp ult ptr %.3491.i, inttoptr (i64 -64 to ptr)
  %i.pn = and i1 %i.pm, %i.pl, !nosanitize !22
  br i1 %i.pn, label %bb.em, label %bb.el, !prof !23, !nosanitize !22

bb.el:                                            ; preds = %bb.ek
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @64, i64 %i.oj, i64 %i.pk) #6, !nosanitize !22
  br label %bb.em, !nosanitize !22

bb.em:                                            ; preds = %bb.ek, %bb.el
  %i.po = load <2 x i64>, ptr %i.pj, align 16, !tbaa !25
  %i.pp = xor <2 x i64> %i.po, %i.mu
  br i1 %i.on, label %_mm_store_si128.exit99, label %bb.en, !prof !23, !nosanitize !22

bb.en:                                            ; preds = %bb.em
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @65, i64 %i.oj, i64 %i.ok) #6, !nosanitize !22
  br label %_mm_store_si128.exit99, !nosanitize !22

_mm_store_si128.exit99:                           ; preds = %bb.em, %bb.en
  store <2 x i64> %i.oh, ptr %.3491.i, align 16, !tbaa !25
  %.not733.i = icmp ugt ptr %i.oi, inttoptr (i64 -17 to ptr)
  br i1 %.not733.i, label %bb.eo, label %bb.ep, !prof !24, !nosanitize !22

bb.eo:                                            ; preds = %_mm_store_si128.exit99
  %i.pq = add i64 %i.oo, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @66, i64 %i.oo, i64 %i.pq) #6, !nosanitize !22
  br label %bb.ep, !nosanitize !22

bb.ep:                                            ; preds = %bb.eo, %_mm_store_si128.exit99
  br i1 %i.oq, label %_mm_store_si128.exit98, label %bb.eq, !prof !23, !nosanitize !22

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.oo) #6, !nosanitize !22
  br label %_mm_store_si128.exit98, !nosanitize !22

_mm_store_si128.exit98:                           ; preds = %bb.ep, %bb.eq
  store <2 x i64> %i.os, ptr %i.oi, align 16, !tbaa !25
  %.not734.i = icmp ugt ptr %i.ot, inttoptr (i64 -17 to ptr)
  br i1 %.not734.i, label %bb.er, label %_mm_store_si128.exit97, !prof !24, !nosanitize !22

bb.er:                                            ; preds = %_mm_store_si128.exit98
  %i.pr = add i64 %i.oy, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @67, i64 %i.oy, i64 %i.pr) #6, !nosanitize !22
  br label %_mm_store_si128.exit97, !nosanitize !22

_mm_store_si128.exit97:                           ; preds = %_mm_store_si128.exit98, %bb.er
  store <2 x i64> %i.pa, ptr %i.ot, align 16, !tbaa !25
  %.not735.i = icmp ugt ptr %i.pb, inttoptr (i64 -17 to ptr)
  br i1 %.not735.i, label %bb.es, label %_mm_store_si128.exit96, !prof !24, !nosanitize !22

bb.es:                                            ; preds = %_mm_store_si128.exit97
  %i.ps = add i64 %i.pg, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @68, i64 %i.pg, i64 %i.ps) #6, !nosanitize !22
  br label %_mm_store_si128.exit96, !nosanitize !22

_mm_store_si128.exit96:                           ; preds = %_mm_store_si128.exit97, %bb.es
  store <2 x i64> %i.pi, ptr %i.pb, align 16, !tbaa !25
  %i.pt = xor <2 x i64> %.3.i, %i.mq
  %i.pu = icmp ult i64 %.3465.i, 672
  br i1 %i.pu, label %_mm_store_si128.exit96._crit_edge, label %bb.et

_mm_store_si128.exit96._crit_edge:                ; preds = %_mm_store_si128.exit96
  %.pre415 = ptrtoint ptr %.3487.i to i64, !nosanitize !22 ; 2 uses
  %.pre417 = add i64 %.pre415, 16, !nosanitize !22
  br label %bb.fe

bb.et:                                            ; preds = %_mm_store_si128.exit96
  %i.pv = getelementptr inbounds nuw i8, ptr %.3487.i, i64 16 ; 2 uses
  %i.pw = ptrtoint ptr %.3487.i to i64, !nosanitize !22 ; 9 uses
  %i.px = add i64 %i.pw, 16, !nosanitize !22      ; 3 uses
  %i.py = icmp ne i64 %i.px, 0, !nosanitize !22
  %i.pz = icmp ult ptr %.3487.i, inttoptr (i64 -16 to ptr)
  %i.qa = and i1 %i.pz, %i.py, !nosanitize !22
  br i1 %i.qa, label %bb.ev, label %bb.eu, !prof !23, !nosanitize !22

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @69, i64 %i.pw, i64 %i.px) #6, !nosanitize !22
  br label %bb.ev, !nosanitize !22

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.qb = ptrtoint ptr %i.pv to i64, !nosanitize !22 ; 2 uses
  %i.qc = and i64 %i.qb, 15, !nosanitize !22
  %i.qd = icmp eq i64 %i.qc, 0, !nosanitize !22
  br i1 %i.qd, label %bb.ex, label %bb.ew, !prof !23, !nosanitize !22

bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @70, i64 %i.qb) #6, !nosanitize !22
  br label %bb.ex, !nosanitize !22

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.qe = load <2 x i64>, ptr %i.pv, align 16, !tbaa !25
  %i.qf = xor <2 x i64> %i.qe, %i.mr
  %i.qg = getelementptr inbounds nuw i8, ptr %.3487.i, i64 32
  %i.qh = add i64 %i.pw, 32, !nosanitize !22      ; 2 uses
  %i.qi = icmp ne i64 %i.qh, 0, !nosanitize !22
  %i.qj = icmp ult ptr %.3487.i, inttoptr (i64 -32 to ptr)
  %i.qk = and i1 %i.qj, %i.qi, !nosanitize !22
  br i1 %i.qk, label %bb.ez, label %bb.ey, !prof !23, !nosanitize !22

bb.ey:                                            ; preds = %bb.ex
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @71, i64 %i.pw, i64 %i.qh) #6, !nosanitize !22
  br label %bb.ez, !nosanitize !22

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  %i.ql = load <2 x i64>, ptr %i.qg, align 16, !tbaa !25
  %i.qm = xor <2 x i64> %i.ql, %i.ms
  %i.qn = getelementptr inbounds nuw i8, ptr %.3487.i, i64 48
  %i.qo = add i64 %i.pw, 48, !nosanitize !22      ; 2 uses
  %i.qp = icmp ne i64 %i.qo, 0, !nosanitize !22
  %i.qq = icmp ult ptr %.3487.i, inttoptr (i64 -48 to ptr)
  %i.qr = and i1 %i.qq, %i.qp, !nosanitize !22
  br i1 %i.qr, label %bb.fb, label %bb.fa, !prof !23, !nosanitize !22

bb.fa:                                            ; preds = %bb.ez
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @72, i64 %i.pw, i64 %i.qo) #6, !nosanitize !22
  br label %bb.fb, !nosanitize !22

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.qs = load <2 x i64>, ptr %i.qn, align 16, !tbaa !25
  %i.qt = xor <2 x i64> %i.qs, %i.mt
  %i.qu = getelementptr inbounds nuw i8, ptr %.3487.i, i64 64
  %i.qv = add i64 %i.pw, 64, !nosanitize !22      ; 2 uses
  %i.qw = icmp ne i64 %i.qv, 0, !nosanitize !22
  %i.qx = icmp ult ptr %.3487.i, inttoptr (i64 -64 to ptr)
  %i.qy = and i1 %i.qx, %i.qw, !nosanitize !22
  br i1 %i.qy, label %bb.fd, label %bb.fc, !prof !23, !nosanitize !22

bb.fc:                                            ; preds = %bb.fb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @73, i64 %i.pw, i64 %i.qv) #6, !nosanitize !22
  br label %bb.fd, !nosanitize !22

bb.fd:                                            ; preds = %bb.fb, %bb.fc
  %i.qz = load <2 x i64>, ptr %i.qu, align 16, !tbaa !25
  %i.ra = xor <2 x i64> %i.qz, %i.mu
  br label %bb.fe

bb.fe:                                            ; preds = %_mm_store_si128.exit96._crit_edge, %bb.fd
  %.pre-phi418.a = phi i64 [ %.pre417, %_mm_store_si128.exit96._crit_edge ], [ %i.px, %bb.fd ] ; 2 uses
  %.pre-phi416 = phi i64 [ %.pre415, %_mm_store_si128.exit96._crit_edge ], [ %i.pw, %bb.fd ] ; 3 uses
  %.4.i = phi <2 x i64> [ %i.mu, %_mm_store_si128.exit96._crit_edge ], [ %i.ra, %bb.fd ]
  %.0445.i = phi <2 x i64> [ %i.mr, %_mm_store_si128.exit96._crit_edge ], [ %i.qf, %bb.fd ]
  %.0444.i = phi <2 x i64> [ %i.ms, %_mm_store_si128.exit96._crit_edge ], [ %i.qm, %bb.fd ]
  %.0443.i = phi <2 x i64> [ %i.mt, %_mm_store_si128.exit96._crit_edge ], [ %i.qt, %bb.fd ]
  %i.rb = getelementptr inbounds nuw i8, ptr %.3487.i, i64 16 ; 3 uses
  %i.rc = icmp ne i64 %.pre-phi418.a, 0, !nosanitize !22
  %i.rd = icmp ult ptr %.3487.i, inttoptr (i64 -16 to ptr)
  %i.re = and i1 %i.rd, %i.rc, !nosanitize !22
  br i1 %i.re, label %bb.fg, label %bb.ff, !prof !23, !nosanitize !22

bb.ff:                                            ; preds = %bb.fe
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @74, i64 %.pre-phi416, i64 %.pre-phi418.a) #6, !nosanitize !22
  br label %bb.fg, !nosanitize !22

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.rf = and i64 %.pre-phi416, 15, !nosanitize !22
  %i.rg = icmp eq i64 %i.rf, 0, !nosanitize !22
  br i1 %i.rg, label %_mm_store_si128.exit95, label %bb.fh, !prof !23, !nosanitize !22

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %.pre-phi416) #6, !nosanitize !22
  br label %_mm_store_si128.exit95, !nosanitize !22

_mm_store_si128.exit95:                           ; preds = %bb.fg, %bb.fh
  store <2 x i64> %i.pt, ptr %.3487.i, align 16, !tbaa !25
  %i.rh = getelementptr inbounds nuw i8, ptr %.3487.i, i64 32 ; 3 uses
  %.not736.i = icmp ugt ptr %i.rb, inttoptr (i64 -17 to ptr)
  br i1 %.not736.i, label %bb.fi, label %_mm_store_si128.exit94, !prof !24, !nosanitize !22

bb.fi:                                            ; preds = %_mm_store_si128.exit95
  %i.ri = ptrtoint ptr %i.rb to i64, !nosanitize !22 ; 2 uses
  %i.rj = add i64 %i.ri, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @75, i64 %i.ri, i64 %i.rj) #6, !nosanitize !22
  br label %_mm_store_si128.exit94, !nosanitize !22

_mm_store_si128.exit94:                           ; preds = %bb.fi, %_mm_store_si128.exit95
  store <2 x i64> %.0445.i, ptr %i.rb, align 16, !tbaa !25
  %i.rk = getelementptr inbounds nuw i8, ptr %.3487.i, i64 48 ; 3 uses
  %.not737.i = icmp ugt ptr %i.rh, inttoptr (i64 -17 to ptr)
  br i1 %.not737.i, label %bb.fj, label %_mm_store_si128.exit93, !prof !24, !nosanitize !22

bb.fj:                                            ; preds = %_mm_store_si128.exit94
  %i.rl = ptrtoint ptr %i.rh to i64, !nosanitize !22 ; 2 uses
  %i.rm = add i64 %i.rl, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @76, i64 %i.rl, i64 %i.rm) #6, !nosanitize !22
  br label %_mm_store_si128.exit93, !nosanitize !22

_mm_store_si128.exit93:                           ; preds = %bb.fj, %_mm_store_si128.exit94
  store <2 x i64> %.0444.i, ptr %i.rh, align 16, !tbaa !25
  %i.rn = getelementptr inbounds nuw i8, ptr %.3487.i, i64 64
  %.not738.i = icmp ugt ptr %i.rk, inttoptr (i64 -17 to ptr)
  br i1 %.not738.i, label %bb.fk, label %_mm_store_si128.exit92, !prof !24, !nosanitize !22

bb.fk:                                            ; preds = %_mm_store_si128.exit93
  %i.ro = ptrtoint ptr %i.rk to i64, !nosanitize !22 ; 2 uses
  %i.rp = add i64 %i.ro, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @77, i64 %i.ro, i64 %i.rp) #6, !nosanitize !22
  br label %_mm_store_si128.exit92, !nosanitize !22

_mm_store_si128.exit92:                           ; preds = %bb.fk, %_mm_store_si128.exit93
  store <2 x i64> %.0443.i, ptr %i.rk, align 16, !tbaa !25
  %i.rq = getelementptr inbounds nuw i8, ptr %.3483.i, i64 16 ; 3 uses
  %i.rr = ptrtoint ptr %.3483.i to i64, !nosanitize !22 ; 4 uses
  %i.rs = add i64 %i.rr, 16, !nosanitize !22      ; 2 uses
  %i.rt = icmp ne i64 %i.rs, 0, !nosanitize !22
  %i.ru = icmp ult ptr %.3483.i, inttoptr (i64 -16 to ptr)
  %i.rv = and i1 %i.ru, %i.rt, !nosanitize !22
  br i1 %i.rv, label %bb.fm, label %bb.fl, !prof !23, !nosanitize !22

bb.fl:                                            ; preds = %_mm_store_si128.exit92
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @78, i64 %i.rr, i64 %i.rs) #6, !nosanitize !22
  br label %bb.fm, !nosanitize !22

bb.fm:                                            ; preds = %bb.fl, %_mm_store_si128.exit92
  %i.rw = and i64 %i.rr, 15, !nosanitize !22
  %i.rx = icmp eq i64 %i.rw, 0, !nosanitize !22
  br i1 %i.rx, label %_mm_store_si128.exit91, label %bb.fn, !prof !23, !nosanitize !22

bb.fn:                                            ; preds = %bb.fm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.rr) #6, !nosanitize !22
  br label %_mm_store_si128.exit91, !nosanitize !22

_mm_store_si128.exit91:                           ; preds = %bb.fm, %bb.fn
  store <2 x i64> %.0449.i, ptr %.3483.i, align 16, !tbaa !25
  %i.ry = getelementptr inbounds nuw i8, ptr %.3483.i, i64 32 ; 3 uses
  %.not739.i = icmp ugt ptr %i.rq, inttoptr (i64 -17 to ptr)
  br i1 %.not739.i, label %bb.fo, label %_mm_store_si128.exit90, !prof !24, !nosanitize !22

bb.fo:                                            ; preds = %_mm_store_si128.exit91
  %i.rz = ptrtoint ptr %i.rq to i64, !nosanitize !22 ; 2 uses
  %i.sa = add i64 %i.rz, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @79, i64 %i.rz, i64 %i.sa) #6, !nosanitize !22
  br label %_mm_store_si128.exit90, !nosanitize !22

_mm_store_si128.exit90:                           ; preds = %bb.fo, %_mm_store_si128.exit91
  store <2 x i64> %.0448.i, ptr %i.rq, align 16, !tbaa !25
  %i.sb = getelementptr inbounds nuw i8, ptr %.3483.i, i64 48 ; 3 uses
  %.not740.i = icmp ugt ptr %i.ry, inttoptr (i64 -17 to ptr)
  br i1 %.not740.i, label %bb.fp, label %_mm_store_si128.exit89, !prof !24, !nosanitize !22

bb.fp:                                            ; preds = %_mm_store_si128.exit90
  %i.sc = ptrtoint ptr %i.ry to i64, !nosanitize !22 ; 2 uses
  %i.sd = add i64 %i.sc, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @80, i64 %i.sc, i64 %i.sd) #6, !nosanitize !22
  br label %_mm_store_si128.exit89, !nosanitize !22

_mm_store_si128.exit89:                           ; preds = %bb.fp, %_mm_store_si128.exit90
  store <2 x i64> %.0447.i, ptr %i.ry, align 16, !tbaa !25
  %i.se = getelementptr inbounds nuw i8, ptr %.3483.i, i64 64
  %.not741.i = icmp ugt ptr %i.sb, inttoptr (i64 -17 to ptr)
  br i1 %.not741.i, label %bb.fq, label %_mm_store_si128.exit88, !prof !24, !nosanitize !22

bb.fq:                                            ; preds = %_mm_store_si128.exit89
  %i.sf = ptrtoint ptr %i.sb to i64, !nosanitize !22 ; 2 uses
  %i.sg = add i64 %i.sf, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @81, i64 %i.sf, i64 %i.sg) #6, !nosanitize !22
  br label %_mm_store_si128.exit88, !nosanitize !22

_mm_store_si128.exit88:                           ; preds = %bb.fq, %_mm_store_si128.exit89
  store <2 x i64> %.0446.i, ptr %i.sb, align 16, !tbaa !25
  %i.sh = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3465.i, i64 64), !nosanitize !22 ; 2 uses
  %i.si = extractvalue { i64, i1 } %i.sh, 0, !nosanitize !22
  %i.sj = extractvalue { i64, i1 } %i.sh, 1, !nosanitize !22
  br i1 %i.sj, label %bb.fr, label %.preheader148.backedge, !prof !24, !nosanitize !22

bb.fr:                                            ; preds = %_mm_store_si128.exit88
  call void @__ubsan_handle_add_overflow(ptr nonnull @82, i64 %.3465.i, i64 64) #7, !nosanitize !22
  br label %.preheader148.backedge, !nosanitize !22

.preheader148.backedge:                           ; preds = %bb.fr, %_mm_store_si128.exit88
  br label %.preheader148.a, !llvm.loop !15

bb.fs:                                            ; preds = %bb.cq
  %i.sk = ptrtoint ptr %.3495.i to i64, !nosanitize !22 ; 2 uses
  %i.sl = and i64 %i.sk, 15, !nosanitize !22
  %i.sm = icmp eq i64 %i.sl, 0, !nosanitize !22
  br i1 %i.sm, label %_mm_store_si128.exit114, label %bb.ft, !prof !23, !nosanitize !22

bb.ft:                                            ; preds = %bb.fs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.sk) #6, !nosanitize !22
  br label %_mm_store_si128.exit114, !nosanitize !22

_mm_store_si128.exit114:                          ; preds = %bb.fs, %bb.ft
  store <2 x i64> %.3461.i, ptr %.3495.i, align 16, !tbaa !25
  %i.sn = ptrtoint ptr %.3491.i to i64, !nosanitize !22 ; 2 uses
  %i.so = and i64 %i.sn, 15, !nosanitize !22
  %i.sp = icmp eq i64 %i.so, 0, !nosanitize !22
  br i1 %i.sp, label %_mm_store_si128.exit113, label %bb.fu, !prof !23, !nosanitize !22

bb.fu:                                            ; preds = %_mm_store_si128.exit114
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.sn) #6, !nosanitize !22
  br label %_mm_store_si128.exit113, !nosanitize !22

_mm_store_si128.exit113:                          ; preds = %_mm_store_si128.exit114, %bb.fu
  store <2 x i64> %.3457.i, ptr %.3491.i, align 16, !tbaa !25
  %i.sq = ptrtoint ptr %.3487.i to i64, !nosanitize !22 ; 2 uses
  %i.sr = and i64 %i.sq, 15, !nosanitize !22
  %i.ss = icmp eq i64 %i.sr, 0, !nosanitize !22
  br i1 %i.ss, label %_mm_store_si128.exit112, label %bb.fv, !prof !23, !nosanitize !22

bb.fv:                                            ; preds = %_mm_store_si128.exit113
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.sq) #6, !nosanitize !22
  br label %_mm_store_si128.exit112, !nosanitize !22

_mm_store_si128.exit112:                          ; preds = %_mm_store_si128.exit113, %bb.fv
  store <2 x i64> %.3.i, ptr %.3487.i, align 16, !tbaa !25
  br i1 %i.kd, label %bb.fw, label %bb.fx, !prof !24, !nosanitize !22

bb.fw:                                            ; preds = %_mm_store_si128.exit112
  call void @__ubsan_handle_add_overflow(ptr nonnull @83, i64 2400, i64 %.3465.i) #7, !nosanitize !22
  br label %bb.fx, !nosanitize !22

bb.fx:                                            ; preds = %bb.fw, %_mm_store_si128.exit112
  %i.st = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 8193, 32769) %.028, i64 %i.kc), !nosanitize !22 ; 2 uses
  %i.su = extractvalue { i64, i1 } %i.st, 1, !nosanitize !22
  br i1 %i.su, label %bb.fy, label %bb.fz, !prof !24, !nosanitize !22

bb.fy:                                            ; preds = %bb.fx
  call void @__ubsan_handle_sub_overflow(ptr nonnull @84, i64 range(i64 8193, 32769) %.028, i64 %i.kc) #7, !nosanitize !22
  br label %bb.fz, !nosanitize !22

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  br i1 %.not703.i, label %bb.ga, label %bb.gb, !prof !24, !nosanitize !22

bb.ga:                                            ; preds = %bb.fz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @86, i64 %i.v, i64 %i.ae) #6, !nosanitize !22
  br label %bb.gb, !nosanitize !22

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.sv = lshr i64 %.3465.i, 3
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.sv ; 2 uses
  %i.sx = icmp sgt i64 %.3465.i, -1
  %i.sy = and i64 %.3465.i, -8
  %i.sz = ptrtoint ptr %i.ad to i64, !nosanitize !22 ; 3 uses
  %i.ta = add i64 %i.sy, %i.sz, !nosanitize !22   ; 2 uses
  %i.tb = icmp uge i64 %i.ta, %i.sz, !nosanitize !22
  %i.tc = and i1 %i.sx, %i.tb, !nosanitize !22
  br i1 %i.tc, label %bb.gd, label %bb.gc, !prof !23, !nosanitize !22

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @87, i64 %i.sz, i64 %i.ta) #6, !nosanitize !22
  br label %bb.gd, !nosanitize !22

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.td = extractvalue { i64, i1 } %i.st, 0       ; 3 uses
  %i.te = icmp ugt i64 %i.td, 63
  br i1 %i.te, label %.lr.ph210, label %.preheader147

.preheader147:                                    ; preds = %_mm_store_si128.exit104, %bb.gd
  %.pn.i.lcssa = phi i64 [ %i.td, %bb.gd ], [ %i.tu, %_mm_store_si128.exit104 ] ; 3 uses
  %.0440.i.lcssa = phi ptr [ %i.sw, %bb.gd ], [ %i.tr, %_mm_store_si128.exit104 ] ; 2 uses
  %i.tf = icmp samesign ugt i64 %.pn.i.lcssa, 15
  br i1 %i.tf, label %.lr.ph215, label %.preheader

.lr.ph210:                                        ; preds = %bb.gd, %_mm_store_si128.exit104
  %.0440.i209 = phi ptr [ %i.tr, %_mm_store_si128.exit104 ], [ %i.sw, %bb.gd ] ; 7 uses
  %.pn.i208 = phi i64 [ %i.tu, %_mm_store_si128.exit104 ], [ %i.td, %bb.gd ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.0440.i209, i64 16 ; 3 uses
  %.not717.i = icmp ugt ptr %.0440.i209, inttoptr (i64 -17 to ptr)
  %i.th = ptrtoint ptr %.0440.i209 to i64, !nosanitize !22 ; 4 uses
  br i1 %.not717.i, label %bb.ge, label %.lr.ph210._crit_edge, !prof !24, !nosanitize !22

bb.ge:                                            ; preds = %.lr.ph210
  %i.ti = add i64 %i.th, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @88, i64 %i.th, i64 %i.ti) #6, !nosanitize !22
  br label %.lr.ph210._crit_edge, !nosanitize !22

.lr.ph210._crit_edge:                             ; preds = %.lr.ph210, %bb.ge
  %i.tj = and i64 %i.th, 15, !nosanitize !22
  %i.tk = icmp eq i64 %i.tj, 0, !nosanitize !22
  br i1 %i.tk, label %_mm_store_si128.exit107, label %bb.gf, !prof !23, !nosanitize !22

bb.gf:                                            ; preds = %.lr.ph210._crit_edge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.th) #6, !nosanitize !22
  br label %_mm_store_si128.exit107, !nosanitize !22

_mm_store_si128.exit107:                          ; preds = %.lr.ph210._crit_edge, %bb.gf
  store <2 x i64> zeroinitializer, ptr %.0440.i209, align 16, !tbaa !25
  %i.tl = getelementptr inbounds nuw i8, ptr %.0440.i209, i64 32 ; 3 uses
  %.not718.i = icmp ugt ptr %i.tg, inttoptr (i64 -17 to ptr)
  br i1 %.not718.i, label %bb.gg, label %_mm_store_si128.exit106, !prof !24, !nosanitize !22

bb.gg:                                            ; preds = %_mm_store_si128.exit107
  %i.tm = ptrtoint ptr %i.tg to i64, !nosanitize !22 ; 2 uses
  %i.tn = add i64 %i.tm, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @89, i64 %i.tm, i64 %i.tn) #6, !nosanitize !22
  br label %_mm_store_si128.exit106, !nosanitize !22

_mm_store_si128.exit106:                          ; preds = %bb.gg, %_mm_store_si128.exit107
  store <2 x i64> zeroinitializer, ptr %i.tg, align 16, !tbaa !25
  %i.to = getelementptr inbounds nuw i8, ptr %.0440.i209, i64 48 ; 3 uses
  %.not719.i = icmp ugt ptr %i.tl, inttoptr (i64 -17 to ptr)
  br i1 %.not719.i, label %bb.gh, label %_mm_store_si128.exit105, !prof !24, !nosanitize !22

bb.gh:                                            ; preds = %_mm_store_si128.exit106
  %i.tp = ptrtoint ptr %i.tl to i64, !nosanitize !22 ; 2 uses
  %i.tq = add i64 %i.tp, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @90, i64 %i.tp, i64 %i.tq) #6, !nosanitize !22
  br label %_mm_store_si128.exit105, !nosanitize !22

_mm_store_si128.exit105:                          ; preds = %bb.gh, %_mm_store_si128.exit106
  store <2 x i64> zeroinitializer, ptr %i.tl, align 16, !tbaa !25
  %i.tr = getelementptr inbounds nuw i8, ptr %.0440.i209, i64 64 ; 2 uses
  %.not720.i = icmp ugt ptr %i.to, inttoptr (i64 -17 to ptr)
  br i1 %.not720.i, label %bb.gi, label %_mm_store_si128.exit104, !prof !24, !nosanitize !22

bb.gi:                                            ; preds = %_mm_store_si128.exit105
  %i.ts = ptrtoint ptr %i.to to i64, !nosanitize !22 ; 2 uses
  %i.tt = add i64 %i.ts, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @91, i64 %i.ts, i64 %i.tt) #6, !nosanitize !22
  br label %_mm_store_si128.exit104, !nosanitize !22

_mm_store_si128.exit104:                          ; preds = %bb.gi, %_mm_store_si128.exit105
  store <2 x i64> zeroinitializer, ptr %i.to, align 16, !tbaa !25
  %i.tu = add i64 %.pn.i208, -64                  ; 3 uses
  %i.tv = icmp ugt i64 %i.tu, 63
  br i1 %i.tv, label %.lr.ph210, label %.preheader147, !llvm.loop !16

.preheader:                                       ; preds = %_mm_store_si128.exit108, %.preheader147
  %.1442.i.lcssa = phi i64 [ %.pn.i.lcssa, %.preheader147 ], [ %i.ug, %_mm_store_si128.exit108 ]
  %.1.i.lcssa = phi ptr [ %.0440.i.lcssa, %.preheader147 ], [ %i.ty, %_mm_store_si128.exit108 ]
  %i.tw = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1442.i.lcssa, i64 1), !nosanitize !22 ; 2 uses
  %i.tx = extractvalue { i64, i1 } %i.tw, 1, !nosanitize !22
  br i1 %i.tx, label %._crit_edge, label %.lr.ph219, !prof !28, !nosanitize !22

.lr.ph215:                                        ; preds = %.preheader147, %_mm_store_si128.exit108
  %.1.i214 = phi ptr [ %i.ty, %_mm_store_si128.exit108 ], [ %.0440.i.lcssa, %.preheader147 ] ; 4 uses
  %.1442.i213 = phi i64 [ %i.ug, %_mm_store_si128.exit108 ], [ %.pn.i.lcssa, %.preheader147 ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.1.i214, i64 16 ; 2 uses
  %i.tz = ptrtoint ptr %.1.i214 to i64, !nosanitize !22 ; 4 uses
  %i.ua = add i64 %i.tz, 16, !nosanitize !22      ; 2 uses
  %i.ub = icmp ne i64 %i.ua, 0, !nosanitize !22
  %i.uc = icmp ult ptr %.1.i214, inttoptr (i64 -16 to ptr)
  %i.ud = and i1 %i.uc, %i.ub, !nosanitize !22
  br i1 %i.ud, label %bb.gk, label %bb.gj, !prof !23, !nosanitize !22

bb.gj:                                            ; preds = %.lr.ph215
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %i.tz, i64 %i.ua) #6, !nosanitize !22
  br label %bb.gk, !nosanitize !22

bb.gk:                                            ; preds = %bb.gj, %.lr.ph215
  %i.ue = and i64 %i.tz, 15, !nosanitize !22
  %i.uf = icmp eq i64 %i.ue, 0, !nosanitize !22
  br i1 %i.uf, label %_mm_store_si128.exit108, label %bb.gl, !prof !23, !nosanitize !22

bb.gl:                                            ; preds = %bb.gk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.tz) #6, !nosanitize !22
  br label %_mm_store_si128.exit108, !nosanitize !22

_mm_store_si128.exit108:                          ; preds = %bb.gk, %bb.gl
  store <2 x i64> zeroinitializer, ptr %.1.i214, align 16, !tbaa !25
  %i.ug = add nsw i64 %.1442.i213, -16            ; 3 uses
  %i.uh = icmp ugt i64 %i.ug, 15
  br i1 %i.uh, label %.lr.ph215, label %.preheader, !llvm.loop !17

.lr.ph219:                                        ; preds = %.preheader, %bb.gn
  %.pn = phi { i64, i1 } [ %i.ul, %bb.gn ], [ %i.tw, %.preheader ]
  %.0439.i218 = phi ptr [ %i.uj, %bb.gn ], [ %.1.i.lcssa, %.preheader ] ; 4 uses
  %i.ui = extractvalue { i64, i1 } %.pn, 0
  %i.uj = getelementptr inbounds nuw i8, ptr %.0439.i218, i64 1
  %.not715.i = icmp eq ptr %.0439.i218, inttoptr (i64 -1 to ptr)
  br i1 %.not715.i, label %bb.gm, label %bb.gn, !prof !24, !nosanitize !22

bb.gm:                                            ; preds = %.lr.ph219
  %i.uk = ptrtoint ptr %.0439.i218 to i64, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @94, i64 %i.uk, i64 0) #6, !nosanitize !22
  br label %bb.gn, !nosanitize !22

bb.gn:                                            ; preds = %.lr.ph219, %bb.gm
  store i8 0, ptr %.0439.i218, align 1, !tbaa !25
  %i.ul = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ui, i64 1), !nosanitize !22 ; 2 uses
  %i.um = extractvalue { i64, i1 } %i.ul, 1, !nosanitize !22
  br i1 %i.um, label %._crit_edge, label %.lr.ph219, !prof !29, !llvm.loop !18, !nosanitize !22

._crit_edge:                                      ; preds = %bb.gn, %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @93, i64 0, i64 1) #7, !nosanitize !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.un = ptrtoint ptr %i.k to i64                ; 5 uses
  br label %bb.go

bb.go:                                            ; preds = %.backedge588, %._crit_edge
  %.4466.i = phi i64 [ %.3465.i, %._crit_edge ], [ %i.xt, %.backedge588 ] ; 13 uses
  %.0438.i = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.xn, %.backedge588 ] ; 2 uses
  %.0437.i = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.xq, %.backedge588 ] ; 2 uses
  %.0436.i = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.xr, %.backedge588 ] ; 2 uses
  %i.uo = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.4466.i, i64 72), !nosanitize !22 ; 2 uses
  %i.up = extractvalue { i64, i1 } %i.uo, 0, !nosanitize !22
  %i.uq = extractvalue { i64, i1 } %i.uo, 1, !nosanitize !22
  br i1 %i.uq, label %bb.gp, label %bb.gq, !prof !24, !nosanitize !22

bb.gp:                                            ; preds = %bb.go
  call void @__ubsan_handle_add_overflow(ptr nonnull @95, i64 %.4466.i, i64 72) #7, !nosanitize !22
  br label %bb.gq, !nosanitize !22

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.ur = icmp ult i64 %i.up, %.028
  %i.us = lshr i64 %.4466.i, 3                    ; 4 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.us ; 6 uses
  %i.uu = icmp sgt i64 %.4466.i, -1               ; 3 uses
  %i.uv = and i64 %.4466.i, -8                    ; 2 uses
  %i.uw = add i64 %i.uv, %i.un, !nosanitize !22   ; 4 uses
  %i.ux = icmp uge i64 %i.uw, %i.un, !nosanitize !22 ; 2 uses
  br i1 %i.ur, label %bb.gr, label %bb.hj

bb.gr:                                            ; preds = %bb.gq
  %i.uy = and i1 %i.ux, %i.m
  %i.uz = and i1 %i.uu, %i.uy                     ; 2 uses
  br i1 %i.uz, label %bb.gt, label %bb.gs, !prof !23, !nosanitize !22

bb.gs:                                            ; preds = %bb.gr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @96, i64 %i.un, i64 %i.uw) #6, !nosanitize !22
  br label %bb.gt, !nosanitize !22

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.va = ptrtoint ptr %i.ut to i64, !nosanitize !22 ; 4 uses
  %i.vb = and i64 %i.va, 15, !nosanitize !22
  %i.vc = icmp eq i64 %i.vb, 0, !nosanitize !22
  %i.vd = and i1 %i.vc, %i.m
  br i1 %i.vd, label %_mm_load_si128.exit141, label %bb.gu, !prof !23, !nosanitize !22

bb.gu:                                            ; preds = %bb.gt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.va) #6, !nosanitize !22
  br label %_mm_load_si128.exit141, !nosanitize !22

_mm_load_si128.exit141:                           ; preds = %bb.gt, %bb.gu
  %i.ve = load <2 x i64>, ptr %i.ut, align 16, !tbaa !25
  br i1 %i.uz, label %bb.gw, label %bb.gv, !prof !23, !nosanitize !22

bb.gv:                                            ; preds = %_mm_load_si128.exit141
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @97, i64 %i.un, i64 %i.uw) #6, !nosanitize !22
  br label %bb.gw, !nosanitize !22

bb.gw:                                            ; preds = %bb.gv, %_mm_load_si128.exit141
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.vg = add i64 %i.va, 16, !nosanitize !22      ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 0
  %i.vi = xor i1 %i.m, %i.vh
  %i.vj = icmp ult ptr %i.ut, inttoptr (i64 -16 to ptr)
  %i.vk = and i1 %i.vj, %i.vi, !nosanitize !22
  br i1 %i.vk, label %_mm_load_si128.exit140, label %bb.gx, !prof !23, !nosanitize !22

bb.gx:                                            ; preds = %bb.gw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @98, i64 %i.va, i64 %i.vg) #6, !nosanitize !22
  br label %_mm_load_si128.exit140, !nosanitize !22

_mm_load_si128.exit140:                           ; preds = %bb.gw, %bb.gx
  %i.vl = load <2 x i64>, ptr %i.vf, align 16, !tbaa !25
  %i.vm = icmp ult i64 %.4466.i, 32776            ; 2 uses
  br i1 %i.vm, label %bb.gz, label %bb.gy, !prof !23, !nosanitize !22

bb.gy:                                            ; preds = %_mm_load_si128.exit140
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @99, i64 %i.us) #6, !nosanitize !22
  br label %bb.gz, !nosanitize !22

bb.gz:                                            ; preds = %bb.gy, %_mm_load_si128.exit140
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.us ; 4 uses
  %i.vo = add i64 %i.uv, %i.v, !nosanitize !22    ; 3 uses
  %i.vp = icmp uge i64 %i.vo, %i.v, !nosanitize !22
  %i.vq = and i1 %i.uu, %i.vp, !nosanitize !22    ; 2 uses
  br i1 %i.vq, label %bb.hb, label %bb.ha, !prof !23, !nosanitize !22

bb.ha:                                            ; preds = %bb.gz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.v, i64 %i.vo) #6, !nosanitize !22
  br label %bb.hb, !nosanitize !22

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.vr = ptrtoint ptr %i.vn to i64, !nosanitize !22 ; 4 uses
  %i.vs = and i64 %i.vr, 8, !nosanitize !22
  %i.vt = icmp eq i64 %i.vs, 0, !nosanitize !22
  br i1 %i.vt, label %_mm_load_si128.exit139, label %bb.hc, !prof !23, !nosanitize !22

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.vr) #6, !nosanitize !22
  br label %_mm_load_si128.exit139, !nosanitize !22

_mm_load_si128.exit139:                           ; preds = %bb.hb, %bb.hc
  %i.vu = load <2 x i64>, ptr %i.vn, align 16, !tbaa !25
  br i1 %i.vm, label %bb.he, label %bb.hd, !prof !23, !nosanitize !22

bb.hd:                                            ; preds = %_mm_load_si128.exit139
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @101, i64 %i.us) #6, !nosanitize !22
  br label %bb.he, !nosanitize !22

bb.he:                                            ; preds = %bb.hd, %_mm_load_si128.exit139
  br i1 %i.vq, label %bb.hg, label %bb.hf, !prof !23, !nosanitize !22

bb.hf:                                            ; preds = %bb.he
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.v, i64 %i.vo) #6, !nosanitize !22
  br label %bb.hg, !nosanitize !22

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %.not714.i = icmp ugt ptr %i.vn, inttoptr (i64 -17 to ptr)
  br i1 %.not714.i, label %bb.hh, label %_mm_load_si128.exit138, !prof !24, !nosanitize !22

bb.hh:                                            ; preds = %bb.hg
  %i.vw = add i64 %i.vr, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.vr, i64 %i.vw) #6, !nosanitize !22
  br label %_mm_load_si128.exit138, !nosanitize !22

_mm_load_si128.exit138:                           ; preds = %bb.hg, %bb.hh
  %i.vx = load <2 x i64>, ptr %i.vv, align 16, !tbaa !25
  %i.vy = xor <2 x i64> %i.ve, %i.vu
  %i.vz = xor <2 x i64> %i.vy, %.0438.i           ; 8 uses
  %i.wa = shl <2 x i64> %i.vz, splat (i64 17)
  %i.wb = shl <2 x i64> %i.vz, splat (i64 55)
  %i.wc = lshr <2 x i64> %i.vz, splat (i64 47)
  %i.wd = lshr <2 x i64> %i.vz, splat (i64 9)
  %i.we = xor <2 x i64> %i.wc, %i.wd
  %i.wf = shl <2 x i64> %i.vz, splat (i64 19)
  %i.wg = xor <2 x i64> %i.we, %i.wf              ; 2 uses
  %i.wh = lshr <2 x i64> %i.vz, splat (i64 45)
  %i.wi = shl <2 x i64> %i.vz, splat (i64 44)
  %i.wj = or disjoint <2 x i64> %i.wh, %i.wi
  %i.wk = lshr <2 x i64> %i.vz, splat (i64 20)    ; 2 uses
  %i.wl = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.wg, <2 x i32> <i32 1, i32 2>
  %i.wm = xor <2 x i64> %i.vl, %i.wb
  %i.wn = xor <2 x i64> %i.wm, %i.wa
  %i.wo = xor <2 x i64> %i.wn, %i.wl
  %i.wp = xor <2 x i64> %i.wo, %i.vx
  %i.wq = xor <2 x i64> %i.wp, %.0437.i           ; 8 uses
  %i.wr = shl <2 x i64> %i.wq, splat (i64 17)
  %i.ws = shl <2 x i64> %i.wq, splat (i64 55)
  %i.wt = lshr <2 x i64> %i.wq, splat (i64 47)
  %i.wu = lshr <2 x i64> %i.wq, splat (i64 9)
  %i.wv = xor <2 x i64> %i.wt, %i.wu
  %i.ww = shl <2 x i64> %i.wq, splat (i64 19)
  %i.wx = xor <2 x i64> %i.wv, %i.ww              ; 2 uses
  %i.wy = lshr <2 x i64> %i.wq, splat (i64 45)
  %i.wz = shl <2 x i64> %i.wq, splat (i64 44)
  %i.xa = or disjoint <2 x i64> %i.wy, %i.wz
  %i.xb = lshr <2 x i64> %i.wq, splat (i64 20)    ; 2 uses
  %i.xc = bitcast <2 x i64> %i.wx to <16 x i8>
  %i.xd = shufflevector <2 x i64> %i.wg, <2 x i64> %i.wx, <2 x i32> <i32 1, i32 2>
  %i.xe = bitcast <2 x i64> %i.wk to <16 x i8>
  %i.xf = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.xe, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.xg = bitcast <16 x i8> %i.xf to <2 x i64>
  %i.xh = xor <2 x i64> %i.xd, %i.xg
  %i.xi = shufflevector <16 x i8> %i.xc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.xj = shufflevector <2 x i64> %i.wk, <2 x i64> %i.xb, <2 x i32> <i32 1, i32 2>
  %i.xk = xor <2 x i64> %i.wj, %i.ws
  %i.xl = xor <2 x i64> %i.xk, %i.wr
  %i.xm = xor <2 x i64> %i.xl, %i.xh
  %i.xn = xor <2 x i64> %i.xm, %.0436.i
  %i.xo = bitcast <16 x i8> %i.xi to <2 x i64>
  %i.xp = xor <2 x i64> %i.xj, %i.xo
  %i.xq = xor <2 x i64> %i.xa, %i.xp
  %i.xr = shufflevector <2 x i64> %i.xb, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.xs = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.4466.i, i64 32), !nosanitize !22 ; 2 uses
  %i.xt = extractvalue { i64, i1 } %i.xs, 0, !nosanitize !22
  %i.xu = extractvalue { i64, i1 } %i.xs, 1, !nosanitize !22
  br i1 %i.xu, label %bb.hi, label %.backedge588, !prof !24, !nosanitize !22

bb.hi:                                            ; preds = %_mm_load_si128.exit138
  call void @__ubsan_handle_add_overflow(ptr nonnull @104, i64 %.4466.i, i64 32) #7, !nosanitize !22
  br label %.backedge588, !nosanitize !22

.backedge588:                                     ; preds = %bb.hi, %_mm_load_si128.exit138
  br label %bb.go, !llvm.loop !19

bb.hj:                                            ; preds = %bb.gq
  %i.xv = and i1 %i.uu, %i.ux, !nosanitize !22
  %i.xw = and i1 %i.m, %i.xv
  br i1 %i.xw, label %bb.hl, label %bb.hk, !prof !23, !nosanitize !22

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.un, i64 %i.uw) #6, !nosanitize !22
  br label %bb.hl, !nosanitize !22

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.xx = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 8193, 32769) %.028, i64 %.4466.i), !nosanitize !22 ; 2 uses
  %i.xy = extractvalue { i64, i1 } %i.xx, 0, !nosanitize !22 ; 2 uses
  %i.xz = extractvalue { i64, i1 } %i.xx, 1, !nosanitize !22 ; 2 uses
  br i1 %i.xz, label %bb.hm, label %bb.hn, !prof !24, !nosanitize !22

bb.hm:                                            ; preds = %bb.hl
  call void @__ubsan_handle_sub_overflow(ptr nonnull @106, i64 range(i64 8193, 32769) %.028, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.hn, !nosanitize !22

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.not706.i = icmp eq ptr %1, null
  br i1 %.not706.i, label %bb.ho, label %bb.hp, !prof !24, !nosanitize !22

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @107) #6, !nosanitize !22
  br label %bb.hp, !nosanitize !22

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.ya = ptrtoint ptr %i.ut to i64, !nosanitize !22 ; 2 uses
  %i.yb = and i64 %i.ya, 7, !nosanitize !22
  %i.yc = icmp eq i64 %i.yb, 0, !nosanitize !22
  br i1 %i.yc, label %_mm_load_si128.exit144.thread, label %bb.hq, !prof !23, !nosanitize !22

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @109, i64 %i.ya) #6, !nosanitize !22
  br label %_mm_load_si128.exit144.thread, !nosanitize !22

_mm_load_si128.exit144.thread:                    ; preds = %bb.hq, %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %i.ut, i64 %i.xy, i1 false)
  %i.yd = ptrtoint ptr %i.b to i64, !nosanitize !22 ; 5 uses
  %i.ye = load <2 x i64>, ptr %i.b, align 16, !tbaa !25
  %i.yf = xor <2 x i64> %i.ye, %.0438.i
  store <2 x i64> %i.yf, ptr %i.b, align 16, !tbaa !25
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.not707.i = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not707.i, label %bb.hr, label %_mm_load_si128.exit143.thread, !prof !24, !nosanitize !22

bb.hr:                                            ; preds = %_mm_load_si128.exit144.thread
  %i.yh = add i64 %i.yd, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.yd, i64 %i.yh) #6, !nosanitize !22
  br label %_mm_load_si128.exit143.thread, !nosanitize !22

_mm_load_si128.exit143.thread:                    ; preds = %bb.hr, %_mm_load_si128.exit144.thread
  %i.yi = load <2 x i64>, ptr %i.yg, align 16, !tbaa !25
  %i.yj = xor <2 x i64> %i.yi, %.0437.i
  store <2 x i64> %i.yj, ptr %i.yg, align 16, !tbaa !25
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not708.i = icmp eq ptr %i.yg, inttoptr (i64 -16 to ptr)
  br i1 %.not708.i, label %bb.hs, label %_mm_load_si128.exit142.thread, !prof !24, !nosanitize !22

bb.hs:                                            ; preds = %_mm_load_si128.exit143.thread
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 -16, i64 0) #6, !nosanitize !22
  br label %_mm_load_si128.exit142.thread, !nosanitize !22

_mm_load_si128.exit142.thread:                    ; preds = %_mm_load_si128.exit143.thread, %bb.hs
  %i.yl = load <2 x i64>, ptr %i.yk, align 16, !tbaa !25
  %i.ym = xor <2 x i64> %i.yl, %.0436.i
  store <2 x i64> %i.ym, ptr %i.yk, align 16, !tbaa !25
  br label %bb.ht

bb.ht:                                            ; preds = %.backedge, %_mm_load_si128.exit142.thread
  %.0435.i = phi i32 [ 0, %_mm_load_si128.exit142.thread ], [ %i.zd, %.backedge ] ; 3 uses
  %.0.i = phi i64 [ 0, %_mm_load_si128.exit142.thread ], [ %5, %.backedge ] ; 7 uses
  br i1 %i.xz, label %bb.hu, label %bb.hv, !prof !24, !nosanitize !22

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_sub_overflow(ptr nonnull @112, i64 range(i64 8193, 32769) %.028, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.hv, !nosanitize !22

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %3 = icmp ult i64 %.0.i, %i.xy
  br i1 %3, label %bb.hw, label %crc32_chorba_32768_nondestructive_sse41.exit

bb.hw:                                            ; preds = %bb.hv
  %i.yn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i
  %i.yo = add i64 %.0.i, %i.yd, !nosanitize !22   ; 2 uses
  %.not709.i = icmp ult i64 %i.yo, %i.yd, !nosanitize !22
  br i1 %.not709.i, label %bb.hx, label %bb.hy, !prof !24, !nosanitize !22

bb.hx:                                            ; preds = %bb.hw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.yd, i64 %i.yo) #6, !nosanitize !22
  br label %bb.hy, !nosanitize !22

bb.hy:                                            ; preds = %bb.hw, %bb.hx
  %i.yp = load i8, ptr %i.yn, align 1, !tbaa !25
  %i.yq = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0.i, i64 %.4466.i), !nosanitize !22 ; 2 uses
  %i.yr = extractvalue { i64, i1 } %i.yq, 0, !nosanitize !22 ; 2 uses
  %i.ys = extractvalue { i64, i1 } %i.yq, 1, !nosanitize !22
  br i1 %i.ys, label %bb.hz, label %bb.ia, !prof !24, !nosanitize !22

bb.hz:                                            ; preds = %bb.hy
  call void @__ubsan_handle_add_overflow(ptr nonnull @114, i64 %.0.i, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.ia, !nosanitize !22

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.yt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yr
  %i.yu = add i64 %i.yr, %i.v, !nosanitize !22    ; 2 uses
  %.not711.i = icmp ult i64 %i.yu, %i.v, !nosanitize !22
  br i1 %.not711.i, label %bb.ib, label %bb.ic, !prof !24, !nosanitize !22

bb.ib:                                            ; preds = %bb.ia
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.v, i64 %i.yu) #6, !nosanitize !22
  br label %bb.ic, !nosanitize !22

bb.ic:                                            ; preds = %bb.ia, %bb.ib
  %i.yv = load i8, ptr %i.yt, align 1, !tbaa !25
  %.0435.tr.i = trunc i32 %.0435.i to i8
  %i.yw = xor i8 %i.yp, %.0435.tr.i
  %.narrow.i = xor i8 %i.yw, %i.yv
  %i.yx = zext i8 %.narrow.i to i64               ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yx
  %i.yz = shl nuw nsw i64 %i.yx, 2
  %i.za = add i64 %i.yz, ptrtoint (ptr @crc_table to i64), !nosanitize !22 ; 2 uses
  %.not713.i = icmp ult i64 %i.za, ptrtoint (ptr @crc_table to i64), !nosanitize !22
  br i1 %.not713.i, label %bb.id, label %bb.ie, !prof !24, !nosanitize !22

bb.id:                                            ; preds = %bb.ic
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @116, i64 ptrtoint (ptr @crc_table to i64), i64 %i.za) #6, !nosanitize !22
  br label %bb.ie, !nosanitize !22

bb.ie:                                            ; preds = %bb.ic, %bb.id
  %i.zb = load i32, ptr %i.yy, align 4, !tbaa !30
  %i.zc = lshr i32 %.0435.i, 8
  %i.zd = xor i32 %i.zb, %i.zc
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0.i, i64 1), !nosanitize !22 ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 0, !nosanitize !22
  %6 = extractvalue { i64, i1 } %4, 1, !nosanitize !22
  br i1 %6, label %7, label %.backedge, !prof !24, !nosanitize !22

7:                                                ; preds = %bb.ie
  call void @__ubsan_handle_add_overflow(ptr nonnull @117, i64 %.0.i, i64 1) #7, !nosanitize !22
  br label %.backedge, !nosanitize !22

.backedge:                                        ; preds = %7, %bb.ie
  br label %bb.ht, !llvm.loop !20

crc32_chorba_32768_nondestructive_sse41.exit:     ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ih

bb.if:                                            ; preds = %bb.h
  %i.ze = call i32 @chorba_small_nondestructive_sse2(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #6
  br label %bb.ih

bb.ig:                                            ; preds = %bb.a
  %i.zf = call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %2) #6
  br label %bb.ih

bb.ih:                                            ; preds = %bb.g, %bb.if, %crc32_chorba_32768_nondestructive_sse41.exit, %bb.ig
  %.1 = phi i32 [ %i.s, %bb.g ], [ %.0435.i, %crc32_chorba_32768_nondestructive_sse41.exit ], [ %i.ze, %bb.if ], [ %i.zf, %bb.ig ]
  %i.zg = xor i32 %.1, -1
  ret i32 %i.zg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #3

declare i32 @crc32_braid_internal(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

declare i32 @crc32_chorba_118960_nondestructive(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @chorba_small_nondestructive_sse2(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_out_of_bounds(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { uwtable }
attributes #4 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !26, !27}
!13 = distinct !{!13, !26}
!14 = distinct !{!14, !26}
!15 = distinct !{!15, !26}
!16 = distinct !{!16, !26}
!17 = distinct !{!17, !26}
!18 = distinct !{!18, !26}
!19 = distinct !{!19, !26}
!20 = distinct !{!20, !26}
!21 = !{i32 -1056584962, i32 411946090}
!22 = !{}
!23 = !{!"branch_weights", i32 1048575, i32 1}
!24 = !{!"branch_weights", i32 1, i32 1048575}
!25 = !{!8, !8, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = !{!"branch_weights", i32 1, i32 127}
!29 = !{!"branch_weights", i32 127, i32 134217473}
!30 = !{!9, !9, i64 0}
end_hunk_0
