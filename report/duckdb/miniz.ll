Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/miniz?download=true
inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, ptr }
%"struct.duckdb_miniz::mz_stream_s" = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%"struct.duckdb_miniz::tdefl_output_buffer" = type { i64, i64, ptr, i32 }
%"struct.duckdb_miniz::tinfl_decompressor_tag" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i64, i64, [3 x %"struct.duckdb_miniz::tinfl_huff_table"], [4 x i8], [457 x i8] }
%"struct.duckdb_miniz::tinfl_huff_table" = type { [288 x i8], [1024 x i16], [576 x i16] }
%"struct.duckdb_miniz::mz_zip_archive_file_stat" = type { i32, i64, i16, i16, i16, i16, i32, i64, i64, i16, i32, i64, i32, i32, i32, i32, [512 x i8], [512 x i8] }
%"struct.duckdb_miniz::mz_zip_archive" = type { i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.duckdb_miniz::mz_zip_writer_add_state" = type { ptr, i64, i64 }
%"struct.duckdb_miniz::mz_zip_array" = type { ptr, i64, i64, i32 }
%"struct.duckdb_miniz::tdefl_sym_freq" = type { i16, i16 }

@_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@.str = private unnamed_addr constant [7 x i8] c"10.0.3\00", align 1
@_ZZN12duckdb_miniz8mz_errorEiE13s_error_descs = internal unnamed_addr constant [10 x %struct.anon] [%struct.anon { i32 0, ptr @.str.1 }, %struct.anon { i32 1, ptr @.str.2 }, %struct.anon { i32 2, ptr @.str.3 }, %struct.anon { i32 -1, ptr @.str.4 }, %struct.anon { i32 -2, ptr @.str.5 }, %struct.anon { i32 -3, ptr @.str.6 }, %struct.anon { i32 -4, ptr @.str.7 }, %struct.anon { i32 -5, ptr @.str.8 }, %struct.anon { i32 -6, ptr @.str.9 }, %struct.anon { i32 -10000, ptr @.str.10 }], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stream end\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"file error\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"stream error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"buf error\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"version error\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"parameter error\00", align 1
@_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE22s_tdefl_png_num_probes = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 6, i32 32, i32 16, i32 32, i32 128, i32 256, i32 512, i32 768, i32 1500], align 16
@_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE5chans = internal unnamed_addr constant [5 x i8] c"\00\00\04\02\06", align 1
@__const._ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji.pnghdr = private unnamed_addr constant [41 x i8] c"\89PNG\0D\0A\1A\0A\00\00\00\0DIHDR\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00IDAT", align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00IEND\AEB`\82\00", align 1
@_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE13s_length_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE14s_length_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE11s_dist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE12s_dist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE17s_min_table_sizes = internal unnamed_addr constant [3 x i32] [i32 257, i32 1, i32 4], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"\05\05\04\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\02\03\07\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\03\03\0B\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"undefined error\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"too many files\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"file too large\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"unsupported method\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"unsupported encryption\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"unsupported feature\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"failed finding central directory\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"not a ZIP archive\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"invalid header or archive is corrupted\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"unsupported multidisk archive\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"decompression failed or archive is corrupted\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"compression failed\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"unexpected decompressed size\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"CRC-32 check failed\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"unsupported central directory size\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"allocation failed\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"file open failed\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"file create failed\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"file write failed\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"file read failed\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"file close failed\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"file seek failed\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"file stat failed\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"invalid parameter\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"invalid filename\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"archive is too large\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"validation failed\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"write calledback failed\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@_ZN12duckdb_minizL22s_tdefl_small_dist_symE = internal unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@_ZN12duckdb_minizL22s_tdefl_large_dist_symE = internal unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_ZN12duckdb_minizL15s_tdefl_len_symE = internal unnamed_addr constant [256 x i16] [i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 265, i16 266, i16 266, i16 267, i16 267, i16 268, i16 268, i16 269, i16 269, i16 269, i16 269, i16 270, i16 270, i16 270, i16 270, i16 271, i16 271, i16 271, i16 271, i16 272, i16 272, i16 272, i16 272, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 285], align 16
@_ZN12duckdb_minizL37s_tdefl_packed_code_size_syms_swizzleE = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@_ZN12duckdb_minizL17s_tdefl_len_extraE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 16
@_ZN12duckdb_minizL24s_tdefl_small_dist_extraE = internal unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@_ZN12duckdb_minizL24s_tdefl_large_dist_extraE = internal unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@switch.table._ZN12duckdb_miniz23mz_zip_get_error_stringENS_12mz_zip_errorE = private unnamed_addr constant [32 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN12duckdb_miniz10mz_adler32EmPKhm(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.preheader68

.preheader68:                                     ; preds = %bb.a
  %i.a = lshr i64 %0, 16
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = trunc i64 %0 to i32
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  %.not6684 = icmp eq i64 %2, 0
  br i1 %.not6684, label %._crit_edge90, label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %.preheader68
  %i.e = urem i64 %2, 5552
  br label %.preheader67

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge
  %.089 = phi i64 [ 5552, %._crit_edge ], [ %i.e, %.preheader67.preheader ] ; 8 uses
  %.05488 = phi i32 [ %i.ce, %._crit_edge ], [ %i.b, %.preheader67.preheader ] ; 2 uses
  %.05587 = phi i32 [ %i.cd, %._crit_edge ], [ %i.d, %.preheader67.preheader ] ; 2 uses
  %.06086 = phi i64 [ %i.cf, %._crit_edge ], [ %2, %.preheader67.preheader ]
  %.06185 = phi ptr [ %.263.lcssa, %._crit_edge ], [ %1, %.preheader67.preheader ] ; 2 uses
  %i.f = icmp samesign ugt i64 %.089, 7
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader67
  %i.g = trunc nuw nsw i64 %.089 to i32
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = zext nneg i32 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader67
  %.162.lcssa = phi ptr [ %.06185, %.preheader67 ], [ %i.bf, %.preheader.loopexit ] ; 4 uses
  %.058.lcssa = phi i64 [ 0, %.preheader67 ], [ %i.h, %.preheader.loopexit ] ; 6 uses
  %.156.lcssa = phi i32 [ %.05587, %.preheader67 ], [ %i.bc, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.05488, %.preheader67 ], [ %i.bd, %.preheader.loopexit ] ; 3 uses
  %i.i = icmp samesign ugt i64 %.089, %.058.lcssa
  br i1 %i.i, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader
  %i.j = sub nuw nsw i64 %.089, %.058.lcssa
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol

.lr.ph80.prol:                                    ; preds = %.lr.ph80.preheader, %.lr.ph80.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph80.prol ], [ %.058.lcssa, %.lr.ph80.preheader ]
  %.279.prol = phi i32 [ %i.o, %.lr.ph80.prol ], [ %.1.lcssa, %.lr.ph80.preheader ]
  %.25778.prol = phi i32 [ %i.n, %.lr.ph80.prol ], [ %.156.lcssa, %.lr.ph80.preheader ]
  %.26376.prol = phi ptr [ %i.k, %.lr.ph80.prol ], [ %.162.lcssa, %.lr.ph80.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph80.prol ], [ 0, %.lr.ph80.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.26376.prol, i64 1 ; 2 uses
  %i.l = load i8, ptr %.26376.prol, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.25778.prol, %i.m               ; 4 uses
  %i.o = add i32 %i.n, %.279.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !162

.lr.ph80.prol.loopexit:                           ; preds = %.lr.ph80.prol, %.lr.ph80.preheader
  %.lcssa123.unr = phi i32 [ poison, %.lr.ph80.preheader ], [ %i.n, %.lr.ph80.prol ]
  %.lcssa122.unr = phi i32 [ poison, %.lr.ph80.preheader ], [ %i.o, %.lr.ph80.prol ]
  %indvars.iv.unr = phi i64 [ %.058.lcssa, %.lr.ph80.preheader ], [ %indvars.iv.next.prol, %.lr.ph80.prol ]
  %.279.unr = phi i32 [ %.1.lcssa, %.lr.ph80.preheader ], [ %i.o, %.lr.ph80.prol ]
  %.25778.unr = phi i32 [ %.156.lcssa, %.lr.ph80.preheader ], [ %i.n, %.lr.ph80.prol ]
  %.26376.unr = phi ptr [ %.162.lcssa, %.lr.ph80.preheader ], [ %i.k, %.lr.ph80.prol ]
  %i.p = sub nsw i64 %.058.lcssa, %.089
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %._crit_edge.loopexit, label %.lr.ph80

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.172 = phi i32 [ %i.bd, %.lr.ph ], [ %.05488, %.lr.ph.preheader ]
  %.15671 = phi i32 [ %i.bc, %.lr.ph ], [ %.05587, %.lr.ph.preheader ]
  %.05870 = phi i32 [ %i.be, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.16269 = phi ptr [ %i.bf, %.lr.ph ], [ %.06185, %.lr.ph.preheader ] ; 9 uses
  %i.r = load i8, ptr %.16269, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.15671, %i.s                    ; 2 uses
  %i.u = add i32 %i.t, %.172
  %i.v = getelementptr inbounds nuw i8, ptr %.16269, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.16269, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.16269, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.16269, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.16269, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.16269, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.16269, i64 7
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = add nuw nsw i32 %.05870, 8              ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16269, i64 8 ; 2 uses
  %i.bg = or disjoint i32 %i.be, 7
  %i.bh = icmp samesign ult i32 %i.bg, %i.g
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !163

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph80 ], [ %indvars.iv.unr, %.lr.ph80.prol.loopexit ]
  %.279 = phi i32 [ %i.cb, %.lr.ph80 ], [ %.279.unr, %.lr.ph80.prol.loopexit ]
  %.25778 = phi i32 [ %i.ca, %.lr.ph80 ], [ %.25778.unr, %.lr.ph80.prol.loopexit ]
  %.26376 = phi ptr [ %i.bx, %.lr.ph80 ], [ %.26376.unr, %.lr.ph80.prol.loopexit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.26376, i64 1
  %i.bj = load i8, ptr %.26376, align 1, !tbaa !18
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i32 %.25778, %i.bk                  ; 2 uses
  %i.bm = add i32 %i.bl, %.279
  %i.bn = getelementptr inbounds nuw i8, ptr %.26376, i64 2
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add i32 %i.bl, %i.bp                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %.26376, i64 3
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.26376, i64 4
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !18
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz                    ; 3 uses
  %i.cb = add i32 %i.ca, %i.bw                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.089
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph80, !llvm.loop !164

._crit_edge.loopexit:                             ; preds = %.lr.ph80, %.lr.ph80.prol.loopexit
  %.lcssa123 = phi i32 [ %.lcssa123.unr, %.lr.ph80.prol.loopexit ], [ %i.ca, %.lr.ph80 ]
  %.lcssa122 = phi i32 [ %.lcssa122.unr, %.lr.ph80.prol.loopexit ], [ %i.cb, %.lr.ph80 ]
  %i.cc = sub nsw i64 %.089, %.058.lcssa
  %scevgep = getelementptr i8, ptr %.162.lcssa, i64 %i.cc
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.263.lcssa = phi ptr [ %.162.lcssa, %.preheader ], [ %scevgep, %._crit_edge.loopexit ]
  %.257.lcssa = phi i32 [ %.156.lcssa, %.preheader ], [ %.lcssa123, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa122, %._crit_edge.loopexit ]
  %i.cd = urem i32 %.257.lcssa, 65521             ; 2 uses
  %i.ce = urem i32 %.2.lcssa, 65521               ; 2 uses
  %i.cf = sub i64 %.06086, %.089                  ; 2 uses
  %.not66 = icmp eq i64 %i.cf, 0
  br i1 %.not66, label %._crit_edge90, label %.preheader67, !llvm.loop !165

._crit_edge90:                                    ; preds = %._crit_edge, %.preheader68
  %.055.lcssa = phi i32 [ %i.d, %.preheader68 ], [ %i.cd, %._crit_edge ]
  %.054.lcssa = phi i32 [ %i.b, %.preheader68 ], [ %i.ce, %._crit_edge ]
  %i.cg = shl i32 %.054.lcssa, 16
  %i.ch = or disjoint i32 %i.cg, %.055.lcssa
  %i.ci = zext i32 %i.ch to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge90
  %.064 = phi i64 [ %i.ci, %._crit_edge90 ], [ 1, %bb.a ]
  ret i64 %.064
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN12duckdb_miniz8mz_crc32EmPKhm(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i32
end_hunk_0
begin_hunk_1_@_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi:bb.a
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !18
  %i.ahx = zext i8 %i.ahw to i32
  %i.ahy = getelementptr i8, ptr @.str.13, i64 %i.age
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 -16
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !18
  %i.aib = sext i8 %i.aia to i32                  ; 2 uses
  %i.aic = shl nuw nsw i32 %i.ahx, %i.ahr
  %i.aid = or i32 %i.aic, %i.ahq                  ; 4 uses
  store i32 %i.aid, ptr %i.aae, align 8, !tbaa !84
  %i.aie = add nsw i32 %i.ahr, %i.aib             ; 6 uses
  store i32 %i.aie, ptr %i.aab, align 4, !tbaa !83
  %i.aif = icmp ugt i32 %i.aie, 7
  br i1 %i.aif, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ea
  %i.aig = load ptr, ptr %i.aea, align 8, !tbaa !43
  %i.aih = load ptr, ptr %i.aeb, align 8, !tbaa !44
  %i.aii = icmp ult ptr %i.aig, %i.aih
  br i1 %i.aii, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aij = add i32 %i.ahr, -8
  %i.aik = add i32 %i.aij, %i.aib                 ; 2 uses
  %i.ail = lshr i32 %i.aik, 3
  %i.aim = add nuw nsw i32 %i.ail, 1
  %xtraiter306 = and i32 %i.aim, 7                ; 2 uses
  %lcmp.mod307.not = icmp eq i32 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.ain = phi i32 [ %i.aiq, %.lr.ph374.split.us.i.prol ], [ %i.aie, %.lr.ph374.split.us.i.preheader ]
  %i.aio = phi i32 [ %i.aip, %.lr.ph374.split.us.i.prol ], [ %i.aid, %.lr.ph374.split.us.i.preheader ]
  %prol.iter308 = phi i32 [ %prol.iter308.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.aip = lshr i32 %i.aio, 8                     ; 2 uses
  %i.aiq = add i32 %i.ain, -8                     ; 3 uses
  %prol.iter308.next = add i32 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i32 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !339

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr309 = phi i32 [ %i.aie, %.lr.ph374.split.us.i.preheader ], [ %i.aiq, %.lr.ph374.split.us.i.prol ]
  %.lcssa266.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aip, %.lr.ph374.split.us.i.prol ]
  %.lcssa265.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aiq, %.lr.ph374.split.us.i.prol ]
  %i.air = icmp ult i32 %i.aik, 56
  br i1 %i.air, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.ais = phi i32 [ %i.ait, %.lr.ph374.split.us.i ], [ %.unr309, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ait = add i32 %i.ais, -64                    ; 3 uses
  %i.aiu = icmp ugt i32 %i.ait, 7
  br i1 %i.aiu, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !340

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa266 = phi i32 [ %.lcssa266.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa265 = phi i32 [ %.lcssa265.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ait, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa266, ptr %i.aae, align 8, !tbaa !84
  store i32 %.lcssa265, ptr %i.aab, align 4, !tbaa !83
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.ec
  %i.aiv = phi i32 [ %i.ajf, %bb.ec ], [ %i.aie, %.lr.ph374.i ]
  %i.aiw = phi i32 [ %i.aje, %bb.ec ], [ %i.aid, %.lr.ph374.i ] ; 2 uses
  %i.aix = load ptr, ptr %i.aea, align 8, !tbaa !43 ; 3 uses
  %i.aiy = load ptr, ptr %i.aeb, align 8, !tbaa !44
  %i.aiz = icmp ult ptr %i.aix, %i.aiy
  br i1 %i.aiz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.lr.ph374.split.i
  %i.aja = trunc i32 %i.aiw to i8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aix, i64 1
  store ptr %i.ajb, ptr %i.aea, align 8, !tbaa !43
  store i8 %i.aja, ptr %i.aix, align 1, !tbaa !18
  %.pre429.i = load i32, ptr %i.aae, align 8, !tbaa !84
  %.pre430.i = load i32, ptr %i.aab, align 4, !tbaa !83
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.lr.ph374.split.i
  %i.ajc = phi i32 [ %.pre430.i, %bb.eb ], [ %i.aiv, %.lr.ph374.split.i ]
  %i.ajd = phi i32 [ %.pre429.i, %bb.eb ], [ %i.aiw, %.lr.ph374.split.i ]
  %i.aje = lshr i32 %i.ajd, 8                     ; 3 uses
  store i32 %i.aje, ptr %i.aae, align 8, !tbaa !84
  %i.ajf = add i32 %i.ajc, -8                     ; 4 uses
  store i32 %i.ajf, ptr %i.aab, align 4, !tbaa !83
  %i.ajg = icmp ugt i32 %i.ajf, 7
  br i1 %i.ajg, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !341

.loopexit.i:                                      ; preds = %bb.ec, %..loopexit_crit_edge.split.us.i, %bb.ea, %._crit_edge367.i
  %i.ajh = phi i32 [ %i.ahq, %._crit_edge367.i ], [ %.lcssa266, %..loopexit_crit_edge.split.us.i ], [ %i.aid, %bb.ea ], [ %i.aje, %bb.ec ] ; 2 uses
  %i.aji = phi i32 [ %i.ahr, %._crit_edge367.i ], [ %.lcssa265, %..loopexit_crit_edge.split.us.i ], [ %i.aie, %bb.ea ], [ %i.ajf, %bb.ec ] ; 2 uses
  %.1.i = phi i32 [ %i.aga, %._crit_edge367.i ], [ %i.aht, %..loopexit_crit_edge.split.us.i ], [ %i.aht, %bb.ea ], [ %i.aht, %bb.ec ] ; 2 uses
  %i.ajj = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajj, label %bb.dx, label %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit, !llvm.loop !342

_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit: ; preds = %.loopexit.i, %.preheader.i
  %.pre168.i92 = phi i32 [ %i.afw, %.preheader.i ], [ %i.ajh, %.loopexit.i ]
  %.pre166.i90 = phi i32 [ %i.afx, %.preheader.i ], [ %i.aji, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit

_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit: ; preds = %bb.p, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit
  %.pre168.i = phi i32 [ %.pre168.i92, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit ], [ %i.pp, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i ], [ %i.qd, %bb.p ] ; 2 uses
  %.pre166.i.a = phi i32 [ %.pre166.i90, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit ], [ %i.pq, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !40
  %i.ajn = icmp ult ptr %i.ajk, %i.ajm
  br i1 %i.ajn, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 36970
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.i8, %.lr.ph145.i
  %i.ajw = phi i32 [ %.pre168.i, %.lr.ph145.i ], [ %i.apb, %.loopexit.i8 ] ; 2 uses
  %i.ajx = phi i32 [ %.pre166.i.a, %.lr.ph145.i ], [ %i.apc, %.loopexit.i8 ] ; 4 uses
  %.0111143.i = phi ptr [ %i.ajk, %.lr.ph145.i ], [ %.2.i, %.loopexit.i8 ] ; 3 uses
  %.0112142.i = phi i32 [ 1, %.lr.ph145.i ], [ %i.apd, %.loopexit.i8 ] ; 2 uses
  %i.ajy = icmp eq i32 %.0112142.i, 1
  br i1 %i.ajy, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0111143.i, i64 1
  %i.aka = load i8, ptr %.0111143.i, align 1, !tbaa !18
  %i.akb = zext i8 %i.aka to i32
  %i.akc = or disjoint i32 %i.akb, 256
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.1113.i = phi i32 [ %i.akc, %bb.ee ], [ %.0112142.i, %bb.ed ] ; 2 uses
  %.1.i5 = phi ptr [ %i.ajz, %bb.ee ], [ %.0111143.i, %bb.ed ] ; 5 uses
  %i.akd = and i32 %.1113.i, 1
  %.not.i6 = icmp eq i32 %i.akd, 0
  br i1 %.not.i6, label %bb.ep, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ake = load i8, ptr %.1.i5, align 1, !tbaa !18 ; 2 uses
  %i.akf = zext i8 %i.ake to i32
  %i.akg = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1
  %i.akh = load i16, ptr %i.akg, align 1          ; 4 uses
  %i.aki = zext i16 %i.akh to i32
  %i.akj = lshr i16 %i.akh, 8
  %i.akk = zext nneg i16 %i.akj to i64            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.1.i5, i64 3 ; 2 uses
  %i.akm = zext i8 %i.ake to i64                  ; 2 uses
  %i.akn = getelementptr inbounds nuw [2 x i8], ptr @_ZN12duckdb_minizL15s_tdefl_len_symE, i64 %i.akm
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !79
  %i.akp = zext i16 %i.ako to i64                 ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !79
  %i.aks = zext i16 %i.akr to i32
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.akp
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !18
  %i.akv = zext i8 %i.aku to i32
  %i.akw = shl nuw nsw i32 %i.aks, %i.ajx
  %i.akx = or i32 %i.ajw, %i.akw                  ; 3 uses
  store i32 %i.akx, ptr %i.ajr, align 8, !tbaa !84
  %i.aky = add nuw nsw i32 %i.ajx, %i.akv         ; 4 uses
  store i32 %i.aky, ptr %i.ajq, align 4, !tbaa !83
  %i.akz = icmp samesign ugt i32 %i.aky, 7
  br i1 %i.akz, label %.lr.ph.i9, label %._crit_edge.i7

.lr.ph.i9:                                        ; preds = %bb.eg, %bb.ei
  %i.ala = phi i32 [ %i.alk, %bb.ei ], [ %i.aky, %bb.eg ]
  %i.alb = phi i32 [ %i.alj, %bb.ei ], [ %i.akx, %bb.eg ] ; 2 uses
  %i.alc = load ptr, ptr %i.ajs, align 8, !tbaa !43 ; 3 uses
  %i.ald = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.ale = icmp ult ptr %i.alc, %i.ald
  br i1 %i.ale, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i9
  %i.alf = trunc i32 %i.alb to i8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  store ptr %i.alg, ptr %i.ajs, align 8, !tbaa !43
  store i8 %i.alf, ptr %i.alc, align 1, !tbaa !18
  %.pre.i10 = load i32, ptr %i.ajr, align 8, !tbaa !84
  %.pre157.i = load i32, ptr %i.ajq, align 4, !tbaa !83
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i9
  %i.alh = phi i32 [ %.pre157.i, %bb.eh ], [ %i.ala, %.lr.ph.i9 ]
  %i.ali = phi i32 [ %.pre.i10, %bb.eh ], [ %i.alb, %.lr.ph.i9 ]
  %i.alj = lshr i32 %i.ali, 8                     ; 3 uses
  store i32 %i.alj, ptr %i.ajr, align 8, !tbaa !84
  %i.alk = add i32 %i.alh, -8                     ; 4 uses
  store i32 %i.alk, ptr %i.ajq, align 4, !tbaa !83
  %i.all = icmp ugt i32 %i.alk, 7
  br i1 %i.all, label %.lr.ph.i9, label %._crit_edge.i7, !llvm.loop !343

._crit_edge.i7:                                   ; preds = %bb.ei, %bb.eg
  %i.alm = phi i32 [ %i.akx, %bb.eg ], [ %i.alj, %bb.ei ]
  %storemerge125.lcssa.i = phi i32 [ %i.aky, %bb.eg ], [ %i.alk, %bb.ei ] ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL17s_tdefl_len_extraE, i64 %i.akm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !18
  %2 = zext i8 %i.alo to i32                      ; 2 uses
  %notmask.i = shl nsw i32 -1, %2
  %3 = xor i32 %notmask.i, -1
  %i.alp = and i32 %3, %i.akf
  %i.alq = shl nuw nsw i32 %i.alp, %storemerge125.lcssa.i
  %i.alr = or i32 %i.alq, %i.alm                  ; 3 uses
  store i32 %i.alr, ptr %i.ajr, align 8, !tbaa !84
  %i.als = add nuw nsw i32 %storemerge125.lcssa.i, %2 ; 4 uses
  store i32 %i.als, ptr %i.ajq, align 4, !tbaa !83
  %i.alt = icmp samesign ugt i32 %i.als, 7
  br i1 %i.alt, label %.lr.ph131.i, label %._crit_edge132.i

.lr.ph131.i:                                      ; preds = %._crit_edge.i7, %bb.ek
  %i.alu = phi i32 [ %i.ame, %bb.ek ], [ %i.als, %._crit_edge.i7 ]
  %i.alv = phi i32 [ %i.amd, %bb.ek ], [ %i.alr, %._crit_edge.i7 ] ; 2 uses
  %i.alw = load ptr, ptr %i.ajs, align 8, !tbaa !43 ; 3 uses
  %i.alx = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.aly = icmp ult ptr %i.alw, %i.alx
  br i1 %i.aly, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph131.i
  %i.alz = trunc i32 %i.alv to i8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  store ptr %i.ama, ptr %i.ajs, align 8, !tbaa !43
  store i8 %i.alz, ptr %i.alw, align 1, !tbaa !18
  %.pre158.i = load i32, ptr %i.ajr, align 8, !tbaa !84
  %.pre159.i = load i32, ptr %i.ajq, align 4, !tbaa !83
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph131.i
  %i.amb = phi i32 [ %.pre159.i, %bb.ej ], [ %i.alu, %.lr.ph131.i ]
  %i.amc = phi i32 [ %.pre158.i, %bb.ej ], [ %i.alv, %.lr.ph131.i ]
  %i.amd = lshr i32 %i.amc, 8                     ; 3 uses
  store i32 %i.amd, ptr %i.ajr, align 8, !tbaa !84
  %i.ame = add i32 %i.amb, -8                     ; 4 uses
  store i32 %i.ame, ptr %i.ajq, align 4, !tbaa !83
  %i.amf = icmp ugt i32 %i.ame, 7
  br i1 %i.amf, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !344

._crit_edge132.i:                                 ; preds = %bb.ek, %._crit_edge.i7
  %i.amg = phi i32 [ %i.alr, %._crit_edge.i7 ], [ %i.amd, %bb.ek ]
  %storemerge126.lcssa.i = phi i32 [ %i.als, %._crit_edge.i7 ], [ %i.ame, %bb.ek ] ; 2 uses
  %i.amh = icmp ult i16 %i.akh, 512               ; 2 uses
  %i.ami = zext i16 %i.akh to i64                 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL22s_tdefl_small_dist_symE, i64 %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL24s_tdefl_small_dist_extraE, i64 %i.ami
  %i.aml = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL22s_tdefl_large_dist_symE, i64 %i.akk
  %i.amm = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL24s_tdefl_large_dist_extraE, i64 %i.akk
  %.0110.in.in.i = select i1 %i.amh, ptr %i.amj, ptr %i.aml
  %.0.in.in.i = select i1 %i.amh, ptr %i.amk, ptr %i.amm
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1, !tbaa !18
  %.0.i = zext i8 %.0.in.i to i32                 ; 2 uses
  %.0110.in.i = load i8, ptr %.0110.in.in.i, align 1, !tbaa !18
  %i.amn = zext i8 %.0110.in.i to i64             ; 2 uses
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.aju, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !79
  %i.amq = zext i16 %i.amp to i32
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.amn
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !18
  %i.amt = zext i8 %i.ams to i32
  %i.amu = shl nuw nsw i32 %i.amq, %storemerge126.lcssa.i
  %i.amv = or i32 %i.amu, %i.amg                  ; 3 uses
  store i32 %i.amv, ptr %i.ajr, align 8, !tbaa !84
  %i.amw = add nuw nsw i32 %storemerge126.lcssa.i, %i.amt ; 4 uses
  store i32 %i.amw, ptr %i.ajq, align 4, !tbaa !83
  %i.amx = icmp samesign ugt i32 %i.amw, 7
  br i1 %i.amx, label %.lr.ph135.i, label %._crit_edge136.i

.lr.ph135.i:                                      ; preds = %._crit_edge132.i, %bb.em
  %i.amy = phi i32 [ %i.ani, %bb.em ], [ %i.amw, %._crit_edge132.i ]
  %i.amz = phi i32 [ %i.anh, %bb.em ], [ %i.amv, %._crit_edge132.i ] ; 2 uses
  %i.ana = load ptr, ptr %i.ajs, align 8, !tbaa !43 ; 3 uses
  %i.anb = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.anc = icmp ult ptr %i.ana, %i.anb
  br i1 %i.anc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph135.i
  %i.and = trunc i32 %i.amz to i8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.ana, i64 1
  store ptr %i.ane, ptr %i.ajs, align 8, !tbaa !43
  store i8 %i.and, ptr %i.ana, align 1, !tbaa !18
  %.pre160.i = load i32, ptr %i.ajr, align 8, !tbaa !84
  %.pre161.i = load i32, ptr %i.ajq, align 4, !tbaa !83
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph135.i
  %i.anf = phi i32 [ %.pre161.i, %bb.el ], [ %i.amy, %.lr.ph135.i ]
  %i.ang = phi i32 [ %.pre160.i, %bb.el ], [ %i.amz, %.lr.ph135.i ]
  %i.anh = lshr i32 %i.ang, 8                     ; 3 uses
  store i32 %i.anh, ptr %i.ajr, align 8, !tbaa !84
  %i.ani = add i32 %i.anf, -8                     ; 4 uses
  store i32 %i.ani, ptr %i.ajq, align 4, !tbaa !83
  %i.anj = icmp ugt i32 %i.ani, 7
  br i1 %i.anj, label %.lr.ph135.i, label %._crit_edge136.i, !llvm.loop !345

._crit_edge136.i:                                 ; preds = %bb.em, %._crit_edge132.i
  %i.ank = phi i32 [ %i.amv, %._crit_edge132.i ], [ %i.anh, %bb.em ]
  %storemerge127.lcssa.i = phi i32 [ %i.amw, %._crit_edge132.i ], [ %i.ani, %bb.em ] ; 2 uses
  %notmask152.i = shl nsw i32 -1, %.0.i
  %4 = xor i32 %notmask152.i, -1
  %i.anl = and i32 %4, %i.aki
  %i.anm = shl nuw nsw i32 %i.anl, %storemerge127.lcssa.i
  %i.ann = or i32 %i.anm, %i.ank                  ; 3 uses
  store i32 %i.ann, ptr %i.ajr, align 8, !tbaa !84
  %i.ano = add nuw nsw i32 %storemerge127.lcssa.i, %.0.i ; 4 uses
  store i32 %i.ano, ptr %i.ajq, align 4, !tbaa !83
  %i.anp = icmp samesign ugt i32 %i.ano, 7
  br i1 %i.anp, label %.lr.ph139.i, label %.loopexit.i8

.lr.ph139.i:                                      ; preds = %._crit_edge136.i, %bb.eo
  %i.anq = phi i32 [ %i.aoa, %bb.eo ], [ %i.ano, %._crit_edge136.i ]
  %i.anr = phi i32 [ %i.anz, %bb.eo ], [ %i.ann, %._crit_edge136.i ] ; 2 uses
  %i.ans = load ptr, ptr %i.ajs, align 8, !tbaa !43 ; 3 uses
  %i.ant = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.anu = icmp ult ptr %i.ans, %i.ant
  br i1 %i.anu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.lr.ph139.i
  %i.anv = trunc i32 %i.anr to i8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  store ptr %i.anw, ptr %i.ajs, align 8, !tbaa !43
  store i8 %i.anv, ptr %i.ans, align 1, !tbaa !18
  %.pre162.i = load i32, ptr %i.ajr, align 8, !tbaa !84
  %.pre163.i = load i32, ptr %i.ajq, align 4, !tbaa !83
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph139.i
  %i.anx = phi i32 [ %.pre163.i, %bb.en ], [ %i.anq, %.lr.ph139.i ]
  %i.any = phi i32 [ %.pre162.i, %bb.en ], [ %i.anr, %.lr.ph139.i ]
  %i.anz = lshr i32 %i.any, 8                     ; 3 uses
  store i32 %i.anz, ptr %i.ajr, align 8, !tbaa !84
  %i.aoa = add i32 %i.anx, -8                     ; 4 uses
  store i32 %i.aoa, ptr %i.ajq, align 4, !tbaa !83
  %i.aob = icmp ugt i32 %i.aoa, 7
  br i1 %i.aob, label %.lr.ph139.i, label %.loopexit.i8, !llvm.loop !346

bb.ep:                                            ; preds = %bb.ef
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1 ; 2 uses
  %i.aod = load i8, ptr %.1.i5, align 1, !tbaa !18
  %i.aoe = zext i8 %i.aod to i64                  ; 2 uses
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.aoe
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !79
  %i.aoh = zext i16 %i.aog to i32
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.aoe
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !18
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = shl i32 %i.aoh, %i.ajx
  %i.aom = or i32 %i.ajw, %i.aol                  ; 3 uses
  store i32 %i.aom, ptr %i.ajr, align 8, !tbaa !84
  %i.aon = add i32 %i.ajx, %i.aok                 ; 4 uses
  store i32 %i.aon, ptr %i.ajq, align 4, !tbaa !83
  %i.aoo = icmp ugt i32 %i.aon, 7
  br i1 %i.aoo, label %.lr.ph141.i, label %.loopexit.i8

.lr.ph141.i:                                      ; preds = %bb.ep, %bb.er
  %i.aop = phi i32 [ %i.aoz, %bb.er ], [ %i.aon, %bb.ep ]
  %i.aoq = phi i32 [ %i.aoy, %bb.er ], [ %i.aom, %bb.ep ] ; 2 uses
  %i.aor = load ptr, ptr %i.ajs, align 8, !tbaa !43 ; 3 uses
  %i.aos = load ptr, ptr %i.ajt, align 8, !tbaa !44
  %i.aot = icmp ult ptr %i.aor, %i.aos
  br i1 %i.aot, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph141.i
  %i.aou = trunc i32 %i.aoq to i8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 1
  store ptr %i.aov, ptr %i.ajs, align 8, !tbaa !43
  store i8 %i.aou, ptr %i.aor, align 1, !tbaa !18
  %.pre164.i = load i32, ptr %i.ajr, align 8, !tbaa !84
  %.pre165.i = load i32, ptr %i.ajq, align 4, !tbaa !83
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph141.i
  %i.aow = phi i32 [ %.pre165.i, %bb.eq ], [ %i.aop, %.lr.ph141.i ]
  %i.aox = phi i32 [ %.pre164.i, %bb.eq ], [ %i.aoq, %.lr.ph141.i ]
  %i.aoy = lshr i32 %i.aox, 8                     ; 3 uses
  store i32 %i.aoy, ptr %i.ajr, align 8, !tbaa !84
  %i.aoz = add i32 %i.aow, -8                     ; 4 uses
  store i32 %i.aoz, ptr %i.ajq, align 4, !tbaa !83
  %i.apa = icmp ugt i32 %i.aoz, 7
  br i1 %i.apa, label %.lr.ph141.i, label %.loopexit.i8, !llvm.loop !347

.loopexit.i8:                                     ; preds = %bb.eo, %bb.er, %bb.ep, %._crit_edge136.i
  %i.apb = phi i32 [ %i.aom, %bb.ep ], [ %i.ann, %._crit_edge136.i ], [ %i.aoy, %bb.er ], [ %i.anz, %bb.eo ] ; 2 uses
  %i.apc = phi i32 [ %i.aon, %bb.ep ], [ %i.ano, %._crit_edge136.i ], [ %i.aoz, %bb.er ], [ %i.aoa, %bb.eo ] ; 2 uses
  %.2.i = phi ptr [ %i.aoc, %bb.ep ], [ %i.akl, %._crit_edge136.i ], [ %i.aoc, %bb.er ], [ %i.akl, %bb.eo ] ; 2 uses
  %i.apd = lshr i32 %.1113.i, 1
  %i.ape = load ptr, ptr %i.ajl, align 8, !tbaa !40
  %i.apf = icmp ult ptr %.2.i, %i.ape
  br i1 %i.apf, label %bb.ed, label %._crit_edge146.i, !llvm.loop !348

._crit_edge146.i:                                 ; preds = %.loopexit.i8, %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit
  %i.apg = phi i32 [ %.pre168.i, %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit ], [ %i.apb, %.loopexit.i8 ]
  %i.aph = phi i32 [ %.pre166.i.a, %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit ], [ %i.apc, %.loopexit.i8 ] ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 35466
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !79
  %i.apk = zext i16 %i.apj to i32
  %i.apl = getelementptr inbounds nuw i8, ptr %0, i64 36938
  %i.apm = load i8, ptr %i.apl, align 2, !tbaa !18
  %i.apn = zext i8 %i.apm to i32                  ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.app = shl nuw nsw i32 %i.apk, %i.aph
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.apr = or i32 %i.app, %i.apg                  ; 3 uses
  store i32 %i.apr, ptr %i.apq, align 8, !tbaa !84
  %i.aps = add nuw nsw i32 %i.aph, %i.apn         ; 5 uses
  store i32 %i.aps, ptr %i.apo, align 4, !tbaa !83
  %i.apt = icmp samesign ugt i32 %i.aps, 7
  br i1 %i.apt, label %.lr.ph148.i, label %_ZN12duckdb_minizL23tdefl_compress_lz_codesEPNS_16tdefl_compressorE.exit

.lr.ph148.i:                                      ; preds = %._crit_edge146.i
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.apw = load ptr, ptr %i.apu, align 8, !tbaa !43
  %i.apx = load ptr, ptr %i.apv, align 8, !tbaa !44
  %i.apy = icmp ult ptr %i.apw, %i.apx
  br i1 %i.apy, label %.lr.ph148.split.i, label %.lr.ph148.split.us.i.preheader

.lr.ph148.split.us.i.preheader:                   ; preds = %.lr.ph148.i
  %i.apz = add i32 %i.aph, %i.apn
  %i.aqa = add i32 %i.apz, -8                     ; 2 uses
  %i.aqb = lshr i32 %i.aqa, 3
  %i.aqc = add nuw nsw i32 %i.aqb, 1
  %xtraiter311 = and i32 %i.aqc, 7                ; 2 uses
  %lcmp.mod312.not = icmp eq i32 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol

.lr.ph148.split.us.i.prol:                        ; preds = %.lr.ph148.split.us.i.preheader, %.lr.ph148.split.us.i.prol
  %i.aqd = phi i32 [ %i.aqg, %.lr.ph148.split.us.i.prol ], [ %i.aps, %.lr.ph148.split.us.i.preheader ]
  %i.aqe = phi i32 [ %i.aqf, %.lr.ph148.split.us.i.prol ], [ %i.apr, %.lr.ph148.split.us.i.preheader ]
  %prol.iter313 = phi i32 [ %prol.iter313.next, %.lr.ph148.split.us.i.prol ], [ 0, %.lr.ph148.split.us.i.preheader ]
  %i.aqf = lshr i32 %i.aqe, 8                     ; 2 uses
  %i.aqg = add i32 %i.aqd, -8                     ; 3 uses
  %prol.iter313.next = add i32 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i32 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol, !llvm.loop !349

.lr.ph148.split.us.i.prol.loopexit:               ; preds = %.lr.ph148.split.us.i.prol, %.lr.ph148.split.us.i.preheader
  %.unr314 = phi i32 [ %i.aps, %.lr.ph148.split.us.i.preheader ], [ %i.aqg, %.lr.ph148.split.us.i.prol ]
  %.lcssa247.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.aqf, %.lr.ph148.split.us.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.aqg, %.lr.ph148.split.us.i.prol ]
  %i.aqh = icmp ult i32 %i.aqa, 56
  br i1 %i.aqh, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.aqi = phi i32 [ %i.aqj, %.lr.ph148.split.us.i ], [ %.unr314, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.aqj = add i32 %i.aqi, -64                    ; 3 uses
  %i.aqk = icmp ugt i32 %i.aqj, 7
  br i1 %i.aqk, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i, !llvm.loop !350

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa247 = phi i32 [ %.lcssa247.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.aqj, %.lr.ph148.split.us.i ]
  store i32 %.lcssa247, ptr %i.apq, align 8, !tbaa !84
  store i32 %.lcssa, ptr %i.apo, align 4, !tbaa !83
  br label %_ZN12duckdb_minizL23tdefl_compress_lz_codesEPNS_16tdefl_compressorE.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aql = phi i32 [ %i.aqv, %bb.et ], [ %i.aps, %.lr.ph148.i ]
  %i.aqm = phi i32 [ %i.aqu, %bb.et ], [ %i.apr, %.lr.ph148.i ] ; 2 uses
  %i.aqn = load ptr, ptr %i.apu, align 8, !tbaa !43 ; 3 uses
  %i.aqo = load ptr, ptr %i.apv, align 8, !tbaa !44
  %i.aqp = icmp ult ptr %i.aqn, %i.aqo
  br i1 %i.aqp, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.aqq = trunc i32 %i.aqm to i8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store ptr %i.aqr, ptr %i.apu, align 8, !tbaa !43
  store i8 %i.aqq, ptr %i.aqn, align 1, !tbaa !18
  %.pre169.i = load i32, ptr %i.apq, align 8, !tbaa !84
  %.pre170.i = load i32, ptr %i.apo, align 4, !tbaa !83
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.aqs = phi i32 [ %.pre170.i, %bb.es ], [ %i.aql, %.lr.ph148.split.i ]
  %i.aqt = phi i32 [ %.pre169.i, %bb.es ], [ %i.aqm, %.lr.ph148.split.i ]
  %i.aqu = lshr i32 %i.aqt, 8                     ; 2 uses
  store i32 %i.aqu, ptr %i.apq, align 8, !tbaa !84
  %i.aqv = add i32 %i.aqs, -8                     ; 3 uses
  store i32 %i.aqv, ptr %i.apo, align 4, !tbaa !83
  %i.aqw = icmp ugt i32 %i.aqv, 7
  br i1 %i.aqw, label %.lr.ph148.split.i, label %_ZN12duckdb_minizL23tdefl_compress_lz_codesEPNS_16tdefl_compressorE.exit, !llvm.loop !351

_ZN12duckdb_minizL23tdefl_compress_lz_codesEPNS_16tdefl_compressorE.exit: ; preds = %bb.et, %._crit_edge146.i, %._crit_edge149.split.us.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !43
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !44
  %i.arb = icmp ult ptr %i.aqy, %i.ara
  %i.arc = zext i1 %i.arb to i32
  ret i32 %i.arc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #18 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %"struct.duckdb_miniz::tdefl_sym_freq"], align 16 ; 9 uses
end_hunk_1
