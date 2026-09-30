Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mz_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.tdefl_output_buffer = type { i64, i64, ptr, i32 }
%struct.tinfl_decompressor_tag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i64, i64, [3 x [1024 x i16]], [576 x i16], [64 x i16], [38 x i16], [288 x i8], [32 x i8], [19 x i8], [4 x i8], [457 x i8] }
%struct.mz_zip_archive_file_stat = type { i32, i64, i16, i16, i16, i16, i32, i64, i64, i16, i32, i64, i32, i32, i32, i32, [512 x i8], [512 x i8], i64 }
%struct.utimbuf = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.mz_zip_archive = type { i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mz_zip_writer_add_state = type { ptr, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mz_zip_array = type { ptr, i64, i64, i32 }
%struct.tdefl_sym_freq = type { i16, i16 }

@mz_crc32.s_crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@.str = private unnamed_addr constant [7 x i8] c"11.0.2\00", align 1
@mz_error.s_error_descs = internal unnamed_addr constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.3 }, { i32, [4 x i8], ptr } { i32 -1, [4 x i8] zeroinitializer, ptr @.str.4 }, { i32, [4 x i8], ptr } { i32 -2, [4 x i8] zeroinitializer, ptr @.str.5 }, { i32, [4 x i8], ptr } { i32 -3, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 -4, [4 x i8] zeroinitializer, ptr @.str.7 }, { i32, [4 x i8], ptr } { i32 -5, [4 x i8] zeroinitializer, ptr @.str.8 }, { i32, [4 x i8], ptr } { i32 -6, [4 x i8] zeroinitializer, ptr @.str.9 }, { i32, [4 x i8], ptr } { i32 -10000, [4 x i8] zeroinitializer, ptr @.str.10 }], align 16
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
@tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 6, i32 32, i32 16, i32 32, i32 128, i32 256, i32 512, i32 768, i32 1500], align 16
@tdefl_write_image_to_png_file_in_memory_ex.chans = internal unnamed_addr constant [5 x i8] c"\00\00\04\02\06", align 1
@__const.tdefl_write_image_to_png_file_in_memory_ex.pnghdr = private unnamed_addr constant [41 x i8] c"\89PNG\0D\0A\1A\0A\00\00\00\0DIHDR\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00IDAT", align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00IEND\AEB`\82\00", align 1
@tinfl_decompress.s_length_base = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@tinfl_decompress.s_length_extra = internal unnamed_addr constant [31 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00\00\00", align 16
@tinfl_decompress.s_dist_base = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@tinfl_decompress.s_dist_extra = internal unnamed_addr constant [32 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\00\00", align 16
@tinfl_decompress.s_min_table_sizes = internal unnamed_addr constant [3 x i16] [i16 257, i16 1, i16 4], align 2
@.str.12 = private unnamed_addr constant [4 x i8] c"\05\05\04\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\02\03\07\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\03\03\0B\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"undefined error\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"too many files\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"file too large\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"unsupported method\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"unsupported encryption\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"unsupported feature\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"failed finding central directory\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"not a ZIP archive\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"invalid header or archive is corrupted\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"unsupported multidisk archive\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"decompression failed or archive is corrupted\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"compression failed\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"unexpected decompressed size\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"CRC-32 check failed\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"unsupported central directory size\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"allocation failed\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"file open failed\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"file create failed\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"file write failed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"file read failed\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"file close failed\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"file seek failed\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"file stat failed\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"invalid parameter\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"invalid filename\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"buffer too small\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"archive is too large\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"validation failed\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"write callback failed\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"total errors\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@zip_errlist = internal unnamed_addr constant [33 x ptr] [ptr null, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], align 16
@s_tdefl_small_dist_sym = internal unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@s_tdefl_large_dist_sym = internal unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@s_tdefl_len_sym = internal unnamed_addr constant [256 x i16] [i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 265, i16 266, i16 266, i16 267, i16 267, i16 268, i16 268, i16 269, i16 269, i16 269, i16 269, i16 270, i16 270, i16 270, i16 270, i16 271, i16 271, i16 271, i16 271, i16 272, i16 272, i16 272, i16 272, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 285], align 16
@s_tdefl_packed_code_size_syms_swizzle = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@s_tdefl_len_extra = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 16
@s_tdefl_small_dist_extra = internal unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@s_tdefl_large_dist_extra = internal unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@.str.53 = private unnamed_addr constant [17 x i8] c"not initialized\00\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"invalid entry name\00\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"entry not found\00\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"invalid zip mode\00\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"invalid compression level\00\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"no zip 64 support\00\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"memset error\00\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"cannot write data to entry\00\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"cannot initialize tdefl compressor\00\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"invalid index\00\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"header not found\00\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"cannot flush tdefl buffer\00\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"cannot write entry header\00\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"cannot create entry header\00\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"cannot write to central dir\00\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"cannot open file\00\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"invalid entry type\00\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"extracting data using no memory allocation\00\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"file not found\00\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"no permission\00\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"out of memory\00\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"invalid zip archive name\00\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"make dir error\00\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"symlink error\00\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"close archive error\00\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"capacity size too small\00\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"fseek error\00\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"fread error\00\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"fwrite error\00\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"cannot initialize reader\00\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"cannot initialize writer\00\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"cannot initialize writer from reader\00\00", align 1
@switch.table.mz_zip_get_error_string = private unnamed_addr constant [33 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @mz_adler32(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %.05488 = phi i32 [ %i.cd, %._crit_edge ], [ %i.b, %.preheader67.preheader ] ; 2 uses
  %.05587 = phi i32 [ %i.cc, %._crit_edge ], [ %i.d, %.preheader67.preheader ] ; 2 uses
  %.06086 = phi i64 [ %i.ce, %._crit_edge ], [ %2, %.preheader67.preheader ]
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
  %i.l = load i8, ptr %.26376.prol, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.25778.prol, %i.m               ; 4 uses
  %i.o = add i32 %i.n, %.279.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !13

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
  %i.r = load i8, ptr %.16269, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.15671, %i.s                    ; 2 uses
  %i.u = add i32 %i.t, %.172
  %i.v = getelementptr inbounds nuw i8, ptr %.16269, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.16269, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.16269, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.16269, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.16269, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.16269, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.16269, i64 7
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = add nuw nsw i32 %.05870, 8              ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16269, i64 8 ; 2 uses
  %3 = or disjoint i32 %i.be, 7
  %i.bg = icmp samesign ult i32 %3, %i.g
  br i1 %i.bg, label %.lr.ph, label %.preheader.loopexit

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph80 ], [ %indvars.iv.unr, %.lr.ph80.prol.loopexit ]
  %.279 = phi i32 [ %i.ca, %.lr.ph80 ], [ %.279.unr, %.lr.ph80.prol.loopexit ]
  %.25778 = phi i32 [ %i.bz, %.lr.ph80 ], [ %.25778.unr, %.lr.ph80.prol.loopexit ]
  %.26376 = phi ptr [ %i.bw, %.lr.ph80 ], [ %.26376.unr, %.lr.ph80.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.26376, i64 1
  %i.bi = load i8, ptr %.26376, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %.25778, %i.bj                  ; 2 uses
  %i.bl = add i32 %i.bk, %.279
  %i.bm = getelementptr inbounds nuw i8, ptr %.26376, i64 2
  %i.bn = load i8, ptr %i.bh, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = add i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %.26376, i64 3
  %i.bs = load i8, ptr %i.bm, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bp, %i.bt                    ; 2 uses
  %i.bv = add i32 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %.26376, i64 4
  %i.bx = load i8, ptr %i.br, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %i.bu, %i.by                    ; 3 uses
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.089
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph80

._crit_edge.loopexit:                             ; preds = %.lr.ph80, %.lr.ph80.prol.loopexit
  %.lcssa123 = phi i32 [ %.lcssa123.unr, %.lr.ph80.prol.loopexit ], [ %i.bz, %.lr.ph80 ]
  %.lcssa122 = phi i32 [ %.lcssa122.unr, %.lr.ph80.prol.loopexit ], [ %i.ca, %.lr.ph80 ]
  %i.cb = sub nsw i64 %.089, %.058.lcssa
  %scevgep = getelementptr i8, ptr %.162.lcssa, i64 %i.cb
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.263.lcssa = phi ptr [ %.162.lcssa, %.preheader ], [ %scevgep, %._crit_edge.loopexit ]
  %.257.lcssa = phi i32 [ %.156.lcssa, %.preheader ], [ %.lcssa123, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa122, %._crit_edge.loopexit ]
  %i.cc = urem i32 %.257.lcssa, 65521             ; 2 uses
  %i.cd = urem i32 %.2.lcssa, 65521               ; 2 uses
  %i.ce = sub i64 %.06086, %.089                  ; 2 uses
  %.not66 = icmp eq i64 %i.ce, 0
  br i1 %.not66, label %._crit_edge90, label %.preheader67

._crit_edge90:                                    ; preds = %._crit_edge, %.preheader68
  %.055.lcssa = phi i32 [ %i.d, %.preheader68 ], [ %i.cc, %._crit_edge ]
  %.054.lcssa = phi i32 [ %i.b, %.preheader68 ], [ %i.cd, %._crit_edge ]
  %i.cf = shl i32 %.054.lcssa, 16
  %i.cg = or disjoint i32 %i.cf, %.055.lcssa
  %i.ch = zext i32 %i.cg to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge90
  %.064 = phi i64 [ %i.ch, %._crit_edge90 ], [ 1, %bb.a ]
  ret i64 %.064
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @mz_crc32(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %i.b = xor i32 %i.a, -1                         ; 2 uses
  %i.c = icmp ugt i64 %2, 3
  br i1 %i.c, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.025.lcssa = phi i64 [ %2, %bb.a ], [ %i.af, %.lr.ph ] ; 3 uses
  %.023.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.not38 = icmp eq i64 %.025.lcssa, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph42

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.035 = phi ptr [ %i.ae, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.02334 = phi i32 [ %i.ad, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.02533 = phi i64 [ %i.af, %.lr.ph ], [ %2, %bb.a ]
  %i.d = lshr i32 %.02334, 8
  %i.e = load i8, ptr %.035, align 1
  %.023.tr = trunc i32 %.02334 to i8
  %.narrow27 = xor i8 %i.e, %.023.tr
  %i.f = zext i8 %.narrow27 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = xor i32 %i.h, %i.d                       ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %.tr = trunc i32 %i.i to i8
  %.narrow28 = xor i8 %i.l, %.tr
  %i.m = zext i8 %.narrow28 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = xor i32 %i.j, %i.o                       ; 2 uses
  %i.q = lshr i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %.tr29 = trunc i32 %i.p to i8
  %.narrow30 = xor i8 %i.s, %.tr29
  %i.t = zext i8 %.narrow30 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.q, %i.v                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %.035, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %.tr31 = trunc i32 %i.w to i8
  %.narrow32 = xor i8 %i.z, %.tr31
  %i.aa = zext i8 %.narrow32 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = xor i32 %i.x, %i.ac                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 4 ; 2 uses
  %i.af = add i64 %.02533, -4                     ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 3
  br i1 %i.ag, label %.lr.ph, label %.preheader

.lr.ph42:                                         ; preds = %.preheader
  %i.ah = lshr i32 %.023.lcssa, 8
  %i.ai = load i8, ptr %.0.lcssa, align 1
  %.124.tr = trunc i32 %.023.lcssa to i8
  %.narrow = xor i8 %i.ai, %.124.tr
  %i.aj = zext i8 %.narrow to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.al, %i.ah                    ; 3 uses
  %.not = icmp eq i64 %.025.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph42.1

.lr.ph42.1:                                       ; preds = %.lr.ph42
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ao = lshr i32 %i.am, 8
  %i.ap = load i8, ptr %i.an, align 1
  %.124.tr.1 = trunc i32 %i.am to i8
  %.narrow.1 = xor i8 %i.ap, %.124.tr.1
  %i.aq = zext i8 %.narrow.1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = xor i32 %i.as, %i.ao                    ; 3 uses
  %.not.1 = icmp eq i64 %.025.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph42.2

.lr.ph42.2:                                       ; preds = %.lr.ph42.1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.av = lshr i32 %i.at, 8
  %i.aw = load i8, ptr %i.au, align 1
  %.124.tr.2 = trunc i32 %i.at to i8
  %.narrow.2 = xor i8 %i.aw, %.124.tr.2
  %i.ax = zext i8 %.narrow.2 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = xor i32 %i.az, %i.av
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph42, %.lr.ph42.1, %.lr.ph42.2, %.preheader
  %.124.lcssa = phi i32 [ %.023.lcssa, %.preheader ], [ %i.am, %.lr.ph42 ], [ %i.at, %.lr.ph42.1 ], [ %i.ba, %.lr.ph42.2 ]
  %i.bb = xor i32 %.124.lcssa, -1
  %i.bc = zext i32 %i.bb to i64
  ret i64 %i.bc
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @mz_free(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #36
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @miniz_def_alloc_func(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = mul i64 %2, %1
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #37
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @miniz_def_free_func(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #2 {
bb.a:
  tail call void @free(ptr noundef %1) #36
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @miniz_def_realloc_func(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
end_hunk_0
begin_hunk_1_@tinfl_decompress:bb.a
  br i1 %i.aii, label %bb.fe, label %bb.fo

bb.fe:                                            ; preds = %bb.fd
  %.not1597 = icmp eq i32 %.77, 0
  br i1 %.not1597, label %bb.fj, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aij = icmp ult i32 %.77, 8
  br i1 %i.aij, label %.preheader2087, label %.loopexit2088

.preheader2087:                                   ; preds = %bb.g, %bb.ff
  %.701441.ph = phi i64 [ %.681439, %bb.ff ], [ %i.aq, %bb.g ] ; 2 uses
  %.751348.ph = phi ptr [ %.731346, %bb.ff ], [ %4, %bb.g ] ; 2 uses
  %.771258.ph = phi ptr [ %.751256, %bb.ff ], [ %1, %bb.g ]
  %.781167.ph = phi i64 [ %.761165, %bb.ff ], [ %i.ai, %bb.g ]
  %.751083.ph = phi i32 [ %.731081, %bb.ff ], [ %i.ao, %bb.g ] ; 2 uses
  %.77996.ph = phi i32 [ %.75994, %bb.ff ], [ %i.am, %bb.g ] ; 2 uses
  %.73913.ph = phi i32 [ %.71911, %bb.ff ], [ %i.ak, %bb.g ] ; 2 uses
  %.79.ph = phi i32 [ %.77, %bb.ff ], [ %.84.fr2000, %bb.g ]
  br label %bb.fg

bb.fg:                                            ; preds = %.preheader2087, %bb.fi
  %.771258 = phi ptr [ %i.ail, %bb.fi ], [ %.771258.ph, %.preheader2087 ] ; 4 uses
  %.781167 = phi i64 [ %i.aiq, %bb.fi ], [ %.781167.ph, %.preheader2087 ] ; 2 uses
  %.79 = phi i32 [ %i.air, %bb.fi ], [ %.79.ph, %.preheader2087 ] ; 4 uses
  %.not1600 = icmp ult ptr %.771258, %i.g
  br i1 %.not1600, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aik = and i32 %6, 2
  %.not1601 = icmp eq i32 %i.aik, 0
  store i32 41, ptr %0, align 8
  %spec.select1707 = select i1 %.not1601, i32 -4, i32 1
  br label %.thread1655

bb.fi:                                            ; preds = %bb.fg
  %i.ail = getelementptr inbounds nuw i8, ptr %.771258, i64 1 ; 2 uses
  %i.aim = load i8, ptr %.771258, align 1
  %i.ain = zext i8 %i.aim to i64
  %i.aio = zext nneg i32 %.79 to i64
  %i.aip = shl i64 %i.ain, %i.aio
  %i.aiq = or i64 %i.aip, %.781167                ; 2 uses
  %i.air = add i32 %.79, 8                        ; 2 uses
  %i.ais = icmp ugt i32 %.79, -9
  br i1 %i.ais, label %bb.fg, label %.loopexit2088

.loopexit2088:                                    ; preds = %bb.fi, %bb.ff
  %.711442 = phi i64 [ %.681439, %bb.ff ], [ %.701441.ph, %bb.fi ]
  %.761349 = phi ptr [ %.731346, %bb.ff ], [ %.751348.ph, %bb.fi ]
  %.781259 = phi ptr [ %.751256, %bb.ff ], [ %i.ail, %bb.fi ]
  %.791168 = phi i64 [ %.761165, %bb.ff ], [ %i.aiq, %bb.fi ] ; 2 uses
  %.761084 = phi i32 [ %.731081, %bb.ff ], [ %.751083.ph, %bb.fi ]
  %.78997 = phi i32 [ %.75994, %bb.ff ], [ %.77996.ph, %bb.fi ]
  %.74914 = phi i32 [ %.71911, %bb.ff ], [ %.73913.ph, %bb.fi ]
  %.80 = phi i32 [ %.77, %bb.ff ], [ %i.air, %bb.fi ]
  %i.ait = trunc i64 %.791168 to i32
  %i.aiu = and i32 %i.ait, 255
  %i.aiv = lshr i64 %.791168, 8
  %i.aiw = add i32 %.80, -8
  br label %bb.fm

bb.fj:                                            ; preds = %bb.g, %bb.fe
  %.721443 = phi i64 [ %.681439, %bb.fe ], [ %i.aq, %bb.g ] ; 2 uses
  %.771350 = phi ptr [ %.731346, %bb.fe ], [ %4, %bb.g ] ; 2 uses
  %.791260 = phi ptr [ %.751256, %bb.fe ], [ %1, %bb.g ] ; 4 uses
  %.801169 = phi i64 [ %.761165, %bb.fe ], [ %i.ai, %bb.g ] ; 2 uses
  %.771085 = phi i32 [ %.731081, %bb.fe ], [ %i.ao, %bb.g ] ; 2 uses
  %.79998 = phi i32 [ %.75994, %bb.fe ], [ %i.am, %bb.g ] ; 2 uses
  %.75915 = phi i32 [ %.71911, %bb.fe ], [ %i.ak, %bb.g ] ; 2 uses
  %.81 = phi i32 [ 0, %bb.fe ], [ %.84.fr2000, %bb.g ] ; 2 uses
  %.not1598 = icmp ult ptr %.791260, %i.g
  br i1 %.not1598, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aix = and i32 %6, 2
  %.not1599 = icmp eq i32 %i.aix, 0
  store i32 42, ptr %0, align 8
  %spec.select1709 = select i1 %.not1599, i32 -4, i32 1
  br label %.thread1655

bb.fl:                                            ; preds = %bb.fj
  %i.aiy = getelementptr inbounds nuw i8, ptr %.791260, i64 1
  %i.aiz = load i8, ptr %.791260, align 1
  %i.aja = zext i8 %i.aiz to i32
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.loopexit2088
  %.731444 = phi i64 [ %.711442, %.loopexit2088 ], [ %.721443, %bb.fl ]
  %.781351 = phi ptr [ %.761349, %.loopexit2088 ], [ %.771350, %bb.fl ]
  %.801261 = phi ptr [ %.781259, %.loopexit2088 ], [ %i.aiy, %bb.fl ]
  %.811170 = phi i64 [ %i.aiv, %.loopexit2088 ], [ %.801169, %bb.fl ]
  %.781086 = phi i32 [ %.761084, %.loopexit2088 ], [ %.771085, %bb.fl ]
  %.80999 = phi i32 [ %.78997, %.loopexit2088 ], [ %.79998, %bb.fl ]
  %.76916 = phi i32 [ %.74914, %.loopexit2088 ], [ %.75915, %bb.fl ]
  %.82 = phi i32 [ %i.aiw, %.loopexit2088 ], [ %.81, %bb.fl ]
  %.0833 = phi i32 [ %i.aiu, %.loopexit2088 ], [ %i.aja, %bb.fl ]
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 8
  %i.ajd = shl i32 %i.ajc, 8
  %i.aje = or disjoint i32 %i.ajd, %.0833
  store i32 %i.aje, ptr %i.ajb, align 8
  %i.ajf = add i32 %.80999, 1
  br label %bb.fd

bb.fn:                                            ; preds = %bb.g
  br label %bb.fo

bb.fo:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.fd, %._crit_edge1800, %bb.et, %bb.eq, %bb.dl, %bb.cv, %bb.co, %._crit_edge1770, %.loopexit2181, %bb.au, %bb.ar, %bb.al, %bb.r, %bb.g, %bb.fn
  %.sink = phi i32 [ 53, %bb.et ], [ %i.ar, %bb.g ], [ 24, %bb.dl ], [ %i.ar, %bb.g ], [ %i.ar, %bb.g ], [ %i.ar, %bb.g ], [ %i.ar, %bb.g ], [ 9, %bb.au ], [ 52, %bb.ar ], [ %i.ar, %bb.fn ], [ 36, %bb.r ], [ %i.ar, %bb.g ], [ 39, %bb.al ], [ 10, %.loopexit2181 ], [ 35, %._crit_edge1770 ], [ 17, %bb.co ], [ 21, %bb.cv ], [ 37, %bb.eq ], [ 34, %._crit_edge1800 ], [ 34, %bb.fd ], [ %i.ar, %bb.g ]
  %.751446 = phi i64 [ %.631434, %bb.et ], [ %i.aq, %bb.g ], [ %.491420, %bb.dl ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ %i.aq, %bb.g ], [ %.201391, %bb.au ], [ %.181389, %bb.ar ], [ %i.aq, %bb.fn ], [ %i.aq, %bb.r ], [ %i.aq, %bb.g ], [ %.71378, %bb.al ], [ %.31374, %.loopexit2181 ], [ %.321403, %._crit_edge1770 ], [ %.371408, %bb.co ], [ %.341405, %bb.cv ], [ %i.afp, %bb.eq ], [ %.671438, %._crit_edge1800 ], [ %.681439, %bb.fd ], [ %i.aq, %bb.g ] ; 2 uses
  %.801353 = phi ptr [ %.661339, %bb.et ], [ %4, %bb.g ], [ %.491322, %bb.dl ], [ %4, %bb.g ], [ %4, %bb.g ], [ %4, %bb.g ], [ %4, %bb.g ], [ %.201293, %bb.au ], [ %.181291, %bb.ar ], [ %4, %bb.fn ], [ %4, %bb.r ], [ %4, %bb.g ], [ %.71280, %bb.al ], [ %.31276, %.loopexit2181 ], [ %.321305, %._crit_edge1770 ], [ %.371310, %bb.co ], [ %.341307, %bb.cv ], [ %.631336, %bb.eq ], [ %.721345, %._crit_edge1800 ], [ %.731346, %bb.fd ], [ %4, %bb.g ] ; 2 uses
  %.821263 = phi ptr [ %.691250, %bb.et ], [ %1, %bb.g ], [ %.521233, %bb.dl ], [ %1, %bb.g ], [ %1, %bb.g ], [ %1, %bb.g ], [ %1, %bb.g ], [ %.231204, %bb.au ], [ %.211202, %bb.ar ], [ %1, %bb.fn ], [ %i.bd, %bb.r ], [ %1, %bb.g ], [ %.101191, %bb.al ], [ %.61187, %.loopexit2181 ], [ %.351216, %._crit_edge1770 ], [ %.401221, %bb.co ], [ %.371218, %bb.cv ], [ %.661247, %bb.eq ], [ %.741255.lcssa, %._crit_edge1800 ], [ %.751256, %bb.fd ], [ %1, %bb.g ] ; 4 uses
  %.831172 = phi i64 [ %.711160, %bb.et ], [ %i.ai, %bb.g ], [ %.531142, %bb.dl ], [ %i.ai, %bb.g ], [ %i.ai, %bb.g ], [ %i.ai, %bb.g ], [ %i.ai, %bb.g ], [ %.241113, %bb.au ], [ %.221111, %bb.ar ], [ %i.ai, %bb.fn ], [ %.11090, %bb.r ], [ %i.ai, %bb.g ], [ %.111100, %bb.al ], [ %i.ct, %.loopexit2181 ], [ %.361125, %._crit_edge1770 ], [ %i.te, %bb.co ], [ %.381127, %bb.cv ], [ %.681157, %bb.eq ], [ %i.aig, %._crit_edge1800 ], [ %.761165, %bb.fd ], [ %i.ai, %bb.g ] ; 2 uses
  %.801088 = phi i32 [ %.681076, %bb.et ], [ %i.ao, %bb.g ], [ %.531061, %bb.dl ], [ %i.ao, %bb.g ], [ %i.ao, %bb.g ], [ %i.ao, %bb.g ], [ %i.ao, %bb.g ], [ %.241032, %bb.au ], [ %.221030, %bb.ar ], [ %i.ao, %bb.fn ], [ %.11009, %bb.r ], [ %i.ao, %bb.g ], [ %.111019, %bb.al ], [ %.71015, %.loopexit2181 ], [ %.361044, %._crit_edge1770 ], [ %.411049, %bb.co ], [ %.381046, %bb.cv ], [ %.651073, %bb.eq ], [ %.721080, %._crit_edge1800 ], [ %.731081, %bb.fd ], [ %i.ao, %bb.g ] ; 2 uses
  %.821001 = phi i32 [ %.69988, %bb.et ], [ %i.am, %bb.g ], [ %.52971, %bb.dl ], [ %i.am, %bb.g ], [ %i.am, %bb.g ], [ %i.am, %bb.g ], [ %i.am, %bb.g ], [ %.24943, %bb.au ], [ %.22941, %bb.ar ], [ %i.am, %bb.fn ], [ 1, %bb.r ], [ %i.am, %bb.g ], [ %i.ej, %bb.al ], [ %.8927, %.loopexit2181 ], [ %.36955, %._crit_edge1770 ], [ 0, %bb.co ], [ %.38957, %bb.cv ], [ %.66985, %bb.eq ], [ %.74993, %._crit_edge1800 ], [ %.75994, %bb.fd ], [ %i.am, %bb.g ] ; 2 uses
  %.78918 = phi i32 [ %.66906, %bb.et ], [ %i.ak, %bb.g ], [ %.51891, %bb.dl ], [ %i.ak, %bb.g ], [ %i.ak, %bb.g ], [ %i.ak, %bb.g ], [ %i.ak, %bb.g ], [ %.23863, %bb.au ], [ %.21861, %bb.ar ], [ %i.ak, %bb.fn ], [ %.1841, %bb.r ], [ %i.ak, %bb.g ], [ %.11851, %bb.al ], [ %.7847, %.loopexit2181 ], [ %.35875, %._crit_edge1770 ], [ 16, %bb.co ], [ %.37877, %bb.cv ], [ %.63903, %bb.eq ], [ %.70910, %._crit_edge1800 ], [ %.71911, %bb.fd ], [ %i.ak, %bb.g ] ; 2 uses
  %.84 = phi i32 [ %.71, %bb.et ], [ %.84.fr2000, %bb.g ], [ %.53, %bb.dl ], [ %.84.fr2000, %bb.g ], [ %.84.fr2000, %bb.g ], [ %.84.fr2000, %bb.g ], [ %.84.fr2000, %bb.g ], [ %.24, %bb.au ], [ %.22, %bb.ar ], [ %.84.fr2000, %bb.fn ], [ %.1838, %bb.r ], [ %.84.fr2000, %bb.g ], [ %.11, %bb.al ], [ %i.cu, %.loopexit2181 ], [ %.36, %._crit_edge1770 ], [ %i.tf, %bb.co ], [ %.38, %bb.cv ], [ %.68, %bb.eq ], [ %.76.lcssa, %._crit_edge1800 ], [ %.77, %bb.fd ], [ %.84.fr2000, %bb.g ]
  %.0834 = phi i32 [ 2, %bb.et ], [ -1, %bb.g ], [ 2, %bb.dl ], [ -1, %bb.g ], [ -1, %bb.g ], [ -1, %bb.g ], [ -1, %bb.g ], [ 2, %bb.au ], [ 2, %bb.ar ], [ 0, %bb.fn ], [ -1, %bb.r ], [ -1, %bb.g ], [ -1, %bb.al ], [ -1, %.loopexit2181 ], [ -1, %._crit_edge1770 ], [ -1, %bb.co ], [ -1, %bb.cv ], [ -1, %bb.eq ], [ 0, %._crit_edge1800 ], [ 0, %bb.fd ], [ -1, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %0, align 8
  %.84.fr = freeze i32 %.84                       ; 3 uses
  %i.ajg = icmp ugt ptr %.821263, %1
  %i.ajh = icmp ugt i32 %.84.fr, 7
  %i.aji = and i1 %i.ajg, %i.ajh
  br i1 %i.aji, label %.lr.ph1806.preheader, label %.thread1655

.lr.ph1806.preheader:                             ; preds = %bb.fo
  %.8212631894 = ptrtoaddr ptr %.821263 to i64
  %i.ajj = add i32 %.84.fr, -8                    ; 2 uses
  %i.ajk = lshr i32 %i.ajj, 3
  %i.ajl = zext nneg i32 %i.ajk to i64
  %i.ajm = xor i64 %i.a, -1
  %i.ajn = add i64 %i.ajm, %.8212631894
  %umin1895 = tail call i64 @llvm.umin.i64(i64 %i.ajl, i64 %i.ajn) ; 2 uses
  %i.ajo = xor i64 %umin1895, -1
  %scevgep1896 = getelementptr i8, ptr %.821263, i64 %i.ajo
  %i.ajp = trunc nuw nsw i64 %umin1895 to i32
  %i.ajq = shl nuw i32 %i.ajp, 3
  %i.ajr = sub i32 %i.ajj, %i.ajq
  br label %.thread1655

.thread1655:                                      ; preds = %bb.g, %.lr.ph1806.preheader, %bb.fo, %bb.fk, %bb.fh, %bb.fa, %bb.eo, %bb.eh, %bb.dy, %bb.dg, %bb.cr, %bb.ci, %bb.bg, %bb.bb, %bb.aw, %bb.ap, %bb.ai, %bb.af, %bb.y, %bb.t, %bb.m, %bb.j
  %.08341672 = phi i32 [ %spec.select1673, %bb.j ], [ %spec.select1697, %bb.dg ], [ %spec.select1693, %bb.ci ], [ %spec.select1701, %bb.eh ], [ %spec.select1703, %bb.eo ], [ %spec.select1699, %bb.dy ], [ %spec.select1691, %bb.bg ], [ %spec.select1695, %bb.cr ], [ %spec.select1709, %bb.fk ], [ %spec.select1689, %bb.bb ], [ %spec.select1705, %bb.fa ], [ %spec.select1687, %bb.aw ], [ %spec.select1685, %bb.ap ], [ %spec.select1683, %bb.ai ], [ %spec.select1681, %bb.af ], [ %spec.select1679, %bb.y ], [ %spec.select1677, %bb.t ], [ %spec.select1675, %bb.m ], [ %spec.select1707, %bb.fh ], [ %.0834, %bb.fo ], [ %.0834, %.lr.ph1806.preheader ], [ -1, %bb.g ] ; 4 uses
  %.789181670 = phi i32 [ %.0840, %bb.j ], [ %.49889, %bb.dg ], [ %.39879, %bb.ci ], [ %.59899, %bb.eh ], [ %.61901.ph, %bb.eo ], [ %.55895.ph, %bb.dy ], [ %.32872.ph, %bb.bg ], [ %.42882.ph, %bb.cr ], [ %.75915, %bb.fk ], [ %.28868.ph, %bb.bb ], [ %i.ak, %bb.fa ], [ %.24864, %bb.aw ], [ %.20860.ph, %bb.ap ], [ %.15855, %bb.ai ], [ %.13853.ph, %bb.af ], [ %i.ak, %bb.y ], [ %.6846.ph, %bb.t ], [ %.1841, %bb.m ], [ %.73913.ph, %bb.fh ], [ %.78918, %bb.fo ], [ %.78918, %.lr.ph1806.preheader ], [ %i.ak, %bb.g ]
  %.8210011669 = phi i32 [ %.0919, %bb.j ], [ %.51970, %bb.dg ], [ %.40959, %bb.ci ], [ %.61980, %bb.eh ], [ %.64983.ph, %bb.eo ], [ %.57976.ph, %bb.dy ], [ %.33952.ph, %bb.bg ], [ %.44963.ph, %bb.cr ], [ %.79998, %bb.fk ], [ %.29948.ph, %bb.bb ], [ %i.am, %bb.fa ], [ %.25944, %bb.aw ], [ %.20939.ph, %bb.ap ], [ %.15934, %bb.ai ], [ %.13932.ph, %bb.af ], [ %i.am, %bb.y ], [ %.7926.ph, %bb.t ], [ %.1920, %bb.m ], [ %.77996.ph, %bb.fh ], [ %.821001, %bb.fo ], [ %.821001, %.lr.ph1806.preheader ], [ %i.am, %bb.g ]
  %.8010881668 = phi i32 [ %.01008, %bb.j ], [ %.511059, %bb.dg ], [ %.401048, %bb.ci ], [ %.611069, %bb.eh ], [ %.631071.ph, %bb.eo ], [ %.571065.ph, %bb.dy ], [ %.331041.ph, %bb.bg ], [ %.441052.ph, %bb.cr ], [ %.771085, %bb.fk ], [ %.291037.ph, %bb.bb ], [ %i.ao, %bb.fa ], [ %.251033, %bb.aw ], [ %.201028.ph, %bb.ap ], [ %.151023, %bb.ai ], [ %.131021.ph, %bb.af ], [ %i.ao, %bb.y ], [ %.61014.ph, %bb.t ], [ %.11009, %bb.m ], [ %.751083.ph, %bb.fh ], [ %.801088, %bb.fo ], [ %.801088, %.lr.ph1806.preheader ], [ %i.ao, %bb.g ]
  %.8311721667 = phi i64 [ %.01089, %bb.j ], [ %.511140, %bb.dg ], [ %.401129, %bb.ci ], [ %.631152, %bb.eh ], [ %.661155, %bb.eo ], [ %.591148, %bb.dy ], [ %.331122.lcssa, %bb.bg ], [ %.441133, %bb.cr ], [ %.801169, %bb.fk ], [ %.291118, %bb.bb ], [ %i.ai, %bb.fa ], [ %.251114, %bb.aw ], [ %.201109, %bb.ap ], [ %.151104, %bb.ai ], [ %.131102, %bb.af ], [ %i.ai, %bb.y ], [ %.61095.lcssa, %bb.t ], [ %.11090, %bb.m ], [ %.781167, %bb.fh ], [ %.831172, %bb.fo ], [ %.831172, %.lr.ph1806.preheader ], [ %i.ai, %bb.g ]
  %.8013531666 = phi ptr [ %4, %bb.j ], [ %.471320, %bb.dg ], [ %.361309, %bb.ci ], [ %.581331, %bb.eh ], [ %.611334.ph, %bb.eo ], [ %.541327.ph, %bb.dy ], [ %.291302.ph, %bb.bg ], [ %.401313.ph, %bb.cr ], [ %.771350, %bb.fk ], [ %.251298.ph, %bb.bb ], [ %4, %bb.fa ], [ %.211294, %bb.aw ], [ %.161289.ph, %bb.ap ], [ %.111284, %bb.ai ], [ %.91282.ph, %bb.af ], [ %4, %bb.y ], [ %.21275.ph, %bb.t ], [ %4, %bb.m ], [ %.751348.ph, %bb.fh ], [ %.801353, %bb.fo ], [ %.801353, %.lr.ph1806.preheader ], [ %4, %bb.g ]
  %.7514461665 = phi i64 [ %i.aq, %bb.j ], [ %.471418, %bb.dg ], [ %.361407, %bb.ci ], [ %.571428, %bb.eh ], [ %.601431.ph, %bb.eo ], [ %.531424.ph, %bb.dy ], [ %.291400.ph, %bb.bg ], [ %.401411.ph, %bb.cr ], [ %.721443, %bb.fk ], [ %.251396.ph, %bb.bb ], [ %i.aq, %bb.fa ], [ %.211392, %bb.aw ], [ %.161387.ph, %bb.ap ], [ %.111382, %bb.ai ], [ %.91380.ph, %bb.af ], [ %i.aq, %bb.y ], [ %.21373.ph, %bb.t ], [ %i.aq, %bb.m ], [ %.701441.ph, %bb.fh ], [ %.751446, %bb.fo ], [ %.751446, %.lr.ph1806.preheader ], [ %i.aq, %bb.g ]
  %.841265 = phi ptr [ %1, %bb.j ], [ %.501231, %bb.dg ], [ %.391220, %bb.ci ], [ %.611242, %bb.eh ], [ %.641245, %bb.eo ], [ %.571238, %bb.dy ], [ %.321213.lcssa, %bb.bg ], [ %.431224, %bb.cr ], [ %.791260, %bb.fk ], [ %.281209, %bb.bb ], [ %1, %bb.fa ], [ %.241205, %bb.aw ], [ %.191200, %bb.ap ], [ %.141195, %bb.ai ], [ %.121193, %bb.af ], [ %1, %bb.y ], [ %.51186.lcssa, %bb.t ], [ %.01181, %bb.m ], [ %.771258, %bb.fh ], [ %.821263, %bb.fo ], [ %scevgep1896, %.lr.ph1806.preheader ], [ %1, %bb.g ]
  %.86 = phi i32 [ %.0837, %bb.j ], [ %.51, %bb.dg ], [ %.40, %bb.ci ], [ %.63, %bb.eh ], [ %.66, %bb.eo ], [ %.59, %bb.dy ], [ %.33.lcssa, %bb.bg ], [ %.44, %bb.cr ], [ %.81, %bb.fk ], [ %.29, %bb.bb ], [ %.84.fr2000, %bb.fa ], [ %.25, %bb.aw ], [ %.20, %bb.ap ], [ %.15, %bb.ai ], [ %.13, %bb.af ], [ %.84.fr2000, %bb.y ], [ %.6.lcssa, %bb.t ], [ %.1838, %bb.m ], [ %.79, %bb.fh ], [ %.84.fr, %bb.fo ], [ %i.ajr, %.lr.ph1806.preheader ], [ %.84.fr2000, %bb.g ] ; 2 uses
  store i32 %.86, ptr %i.af, align 4
  %i.ajs = zext nneg i32 %.86 to i64
  %i.ajt = shl nsw i64 -1, %i.ajs
  %i.aju = xor i64 %i.ajt, -1
  %i.ajv = and i64 %.8311721667, %i.aju
  store i64 %i.ajv, ptr %i.ah, align 8
  store i32 %.789181670, ptr %i.aj, align 8
  store i32 %.8210011669, ptr %i.al, align 4
  store i32 %.8010881668, ptr %i.an, align 8
  store i64 %.7514461665, ptr %i.ap, align 8
  %i.ajw = ptrtoint ptr %.841265 to i64
  %i.ajx = ptrtoint ptr %1 to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  store i64 %i.ajy, ptr %2, align 8
  %i.ajz = ptrtoint ptr %.8013531666 to i64
  %i.aka = ptrtoint ptr %4 to i64
  %i.akb = sub i64 %i.ajz, %i.aka                 ; 4 uses
  store i64 %i.akb, ptr %5, align 8
  %i.akc = and i32 %6, 9
  %i.akd = icmp ne i32 %i.akc, 0
  %i.ake = icmp sgt i32 %.08341672, -1
  %or.cond9 = and i1 %i.akd, %i.ake
  br i1 %or.cond9, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %.thread1655
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4          ; 2 uses
  %i.akh = and i32 %i.akg, 65535                  ; 2 uses
  %i.aki = lshr i32 %i.akg, 16                    ; 2 uses
  %.not16161827 = icmp eq i64 %i.akb, 0
  br i1 %.not16161827, label %._crit_edge1833, label %.preheader1714.preheader

.preheader1714.preheader:                         ; preds = %bb.fp
  %i.akj = urem i64 %i.akb, 5552
  br label %.preheader1714

.preheader1714:                                   ; preds = %.preheader1714.preheader, %._crit_edge1823
  %.01832 = phi i64 [ 5552, %._crit_edge1823 ], [ %i.akj, %.preheader1714.preheader ] ; 8 uses
  %.08221831 = phi i32 [ %i.ani, %._crit_edge1823 ], [ %i.aki, %.preheader1714.preheader ] ; 2 uses
  %.08231830 = phi i32 [ %i.anh, %._crit_edge1823 ], [ %i.akh, %.preheader1714.preheader ] ; 2 uses
  %.08281829 = phi i64 [ %i.anj, %._crit_edge1823 ], [ %i.akb, %.preheader1714.preheader ]
  %.08291828 = phi ptr [ %.2831.lcssa, %._crit_edge1823 ], [ %4, %.preheader1714.preheader ] ; 2 uses
  %i.akk = icmp samesign ugt i64 %.01832, 7
  br i1 %i.akk, label %.lr.ph1813.preheader, label %.preheader

.lr.ph1813.preheader:                             ; preds = %.preheader1714
  %i.akl = trunc nuw nsw i64 %.01832 to i32
  br label %.lr.ph1813

.preheader.loopexit:                              ; preds = %.lr.ph1813
  %i.akm = zext nneg i32 %i.amj to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1714
  %.1830.lcssa = phi ptr [ %.08291828, %.preheader1714 ], [ %i.amk, %.preheader.loopexit ] ; 4 uses
  %.0826.lcssa = phi i64 [ 0, %.preheader1714 ], [ %i.akm, %.preheader.loopexit ] ; 6 uses
  %.1824.lcssa = phi i32 [ %.08231830, %.preheader1714 ], [ %i.amh, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.08221831, %.preheader1714 ], [ %i.ami, %.preheader.loopexit ] ; 3 uses
  %i.akn = icmp samesign ugt i64 %.01832, %.0826.lcssa
  br i1 %i.akn, label %.lr.ph1822.preheader, label %._crit_edge1823

.lr.ph1822.preheader:                             ; preds = %.preheader
  %i.ako = sub nuw nsw i64 %.01832, %.0826.lcssa
  %xtraiter2198 = and i64 %i.ako, 3               ; 2 uses
  %lcmp.mod2199.not = icmp eq i64 %xtraiter2198, 0
  br i1 %lcmp.mod2199.not, label %.lr.ph1822.prol.loopexit, label %.lr.ph1822.prol

.lr.ph1822.prol:                                  ; preds = %.lr.ph1822.preheader, %.lr.ph1822.prol
  %indvars.iv1897.prol = phi i64 [ %indvars.iv.next1898.prol, %.lr.ph1822.prol ], [ %.0826.lcssa, %.lr.ph1822.preheader ]
  %.21821.prol = phi i32 [ %i.akt, %.lr.ph1822.prol ], [ %.1.lcssa, %.lr.ph1822.preheader ]
  %.28251820.prol = phi i32 [ %i.aks, %.lr.ph1822.prol ], [ %.1824.lcssa, %.lr.ph1822.preheader ]
  %.28311818.prol = phi ptr [ %i.akp, %.lr.ph1822.prol ], [ %.1830.lcssa, %.lr.ph1822.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1822.prol ], [ 0, %.lr.ph1822.preheader ]
  %i.akp = getelementptr inbounds nuw i8, ptr %.28311818.prol, i64 1 ; 2 uses
  %i.akq = load i8, ptr %.28311818.prol, align 1
  %i.akr = zext i8 %i.akq to i32
  %i.aks = add i32 %.28251820.prol, %i.akr        ; 4 uses
  %i.akt = add i32 %i.aks, %.21821.prol           ; 3 uses
  %indvars.iv.next1898.prol = add nuw nsw i64 %indvars.iv1897.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2198
  br i1 %prol.iter.cmp.not, label %.lr.ph1822.prol.loopexit, label %.lr.ph1822.prol, !llvm.loop !20

.lr.ph1822.prol.loopexit:                         ; preds = %.lr.ph1822.prol, %.lr.ph1822.preheader
  %.lcssa2068.unr = phi i32 [ poison, %.lr.ph1822.preheader ], [ %i.aks, %.lr.ph1822.prol ]
  %.lcssa2067.unr = phi i32 [ poison, %.lr.ph1822.preheader ], [ %i.akt, %.lr.ph1822.prol ]
  %indvars.iv1897.unr = phi i64 [ %.0826.lcssa, %.lr.ph1822.preheader ], [ %indvars.iv.next1898.prol, %.lr.ph1822.prol ]
  %.21821.unr = phi i32 [ %.1.lcssa, %.lr.ph1822.preheader ], [ %i.akt, %.lr.ph1822.prol ]
  %.28251820.unr = phi i32 [ %.1824.lcssa, %.lr.ph1822.preheader ], [ %i.aks, %.lr.ph1822.prol ]
  %.28311818.unr = phi ptr [ %.1830.lcssa, %.lr.ph1822.preheader ], [ %i.akp, %.lr.ph1822.prol ]
  %i.aku = sub nsw i64 %.0826.lcssa, %.01832
  %i.akv = icmp ugt i64 %i.aku, -4
  br i1 %i.akv, label %._crit_edge1823.loopexit, label %.lr.ph1822

.lr.ph1813:                                       ; preds = %.lr.ph1813.preheader, %.lr.ph1813
  %.11812 = phi i32 [ %i.ami, %.lr.ph1813 ], [ %.08221831, %.lr.ph1813.preheader ]
  %.18241811 = phi i32 [ %i.amh, %.lr.ph1813 ], [ %.08231830, %.lr.ph1813.preheader ]
  %.08261810 = phi i32 [ %i.amj, %.lr.ph1813 ], [ 0, %.lr.ph1813.preheader ]
  %.18301809 = phi ptr [ %i.amk, %.lr.ph1813 ], [ %.08291828, %.lr.ph1813.preheader ] ; 9 uses
  %i.akw = load i8, ptr %.18301809, align 1
  %i.akx = zext i8 %i.akw to i32
  %i.aky = add i32 %.18241811, %i.akx             ; 2 uses
  %i.akz = add i32 %i.aky, %.11812
  %i.ala = getelementptr inbounds nuw i8, ptr %.18301809, i64 1
  %i.alb = load i8, ptr %i.ala, align 1
  %i.alc = zext i8 %i.alb to i32
  %i.ald = add i32 %i.aky, %i.alc                 ; 2 uses
  %i.ale = add i32 %i.akz, %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %.18301809, i64 2
  %i.alg = load i8, ptr %i.alf, align 1
  %i.alh = zext i8 %i.alg to i32
  %i.ali = add i32 %i.ald, %i.alh                 ; 2 uses
  %i.alj = add i32 %i.ale, %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %.18301809, i64 3
  %i.all = load i8, ptr %i.alk, align 1
  %i.alm = zext i8 %i.all to i32
  %i.aln = add i32 %i.ali, %i.alm                 ; 2 uses
  %i.alo = add i32 %i.alj, %i.aln
  %i.alp = getelementptr inbounds nuw i8, ptr %.18301809, i64 4
  %i.alq = load i8, ptr %i.alp, align 1
  %i.alr = zext i8 %i.alq to i32
  %i.als = add i32 %i.aln, %i.alr                 ; 2 uses
  %i.alt = add i32 %i.alo, %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %.18301809, i64 5
  %i.alv = load i8, ptr %i.alu, align 1
  %i.alw = zext i8 %i.alv to i32
  %i.alx = add i32 %i.als, %i.alw                 ; 2 uses
  %i.aly = add i32 %i.alt, %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %.18301809, i64 6
  %i.ama = load i8, ptr %i.alz, align 1
  %i.amb = zext i8 %i.ama to i32
  %i.amc = add i32 %i.alx, %i.amb                 ; 2 uses
  %i.amd = add i32 %i.aly, %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %.18301809, i64 7
  %i.amf = load i8, ptr %i.ame, align 1
  %i.amg = zext i8 %i.amf to i32
  %i.amh = add i32 %i.amc, %i.amg                 ; 3 uses
  %i.ami = add i32 %i.amd, %i.amh                 ; 2 uses
  %i.amj = add nuw nsw i32 %.08261810, 8          ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.18301809, i64 8 ; 2 uses
  %7 = or disjoint i32 %i.amj, 7
  %i.aml = icmp samesign ult i32 %7, %i.akl
  br i1 %i.aml, label %.lr.ph1813, label %.preheader.loopexit

.lr.ph1822:                                       ; preds = %.lr.ph1822.prol.loopexit, %.lr.ph1822
  %indvars.iv1897 = phi i64 [ %indvars.iv.next1898.3, %.lr.ph1822 ], [ %indvars.iv1897.unr, %.lr.ph1822.prol.loopexit ]
  %.21821 = phi i32 [ %i.anf, %.lr.ph1822 ], [ %.21821.unr, %.lr.ph1822.prol.loopexit ]
  %.28251820 = phi i32 [ %i.ane, %.lr.ph1822 ], [ %.28251820.unr, %.lr.ph1822.prol.loopexit ]
  %.28311818 = phi ptr [ %i.anb, %.lr.ph1822 ], [ %.28311818.unr, %.lr.ph1822.prol.loopexit ] ; 5 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.28311818, i64 1
  %i.amn = load i8, ptr %.28311818, align 1
  %i.amo = zext i8 %i.amn to i32
  %i.amp = add i32 %.28251820, %i.amo             ; 2 uses
  %i.amq = add i32 %i.amp, %.21821
  %i.amr = getelementptr inbounds nuw i8, ptr %.28311818, i64 2
  %i.ams = load i8, ptr %i.amm, align 1
  %i.amt = zext i8 %i.ams to i32
  %i.amu = add i32 %i.amp, %i.amt                 ; 2 uses
  %i.amv = add i32 %i.amu, %i.amq
  %i.amw = getelementptr inbounds nuw i8, ptr %.28311818, i64 3
  %i.amx = load i8, ptr %i.amr, align 1
  %i.amy = zext i8 %i.amx to i32
  %i.amz = add i32 %i.amu, %i.amy                 ; 2 uses
  %i.ana = add i32 %i.amz, %i.amv
  %i.anb = getelementptr inbounds nuw i8, ptr %.28311818, i64 4
  %i.anc = load i8, ptr %i.amw, align 1
  %i.and = zext i8 %i.anc to i32
  %i.ane = add i32 %i.amz, %i.and                 ; 3 uses
  %i.anf = add i32 %i.ane, %i.ana                 ; 2 uses
  %indvars.iv.next1898.3 = add nuw nsw i64 %indvars.iv1897, 4 ; 2 uses
  %exitcond1901.not.3 = icmp eq i64 %indvars.iv.next1898.3, %.01832
  br i1 %exitcond1901.not.3, label %._crit_edge1823.loopexit, label %.lr.ph1822

._crit_edge1823.loopexit:                         ; preds = %.lr.ph1822, %.lr.ph1822.prol.loopexit
  %.lcssa2068 = phi i32 [ %.lcssa2068.unr, %.lr.ph1822.prol.loopexit ], [ %i.ane, %.lr.ph1822 ]
  %.lcssa2067 = phi i32 [ %.lcssa2067.unr, %.lr.ph1822.prol.loopexit ], [ %i.anf, %.lr.ph1822 ]
  %i.ang = sub nsw i64 %.01832, %.0826.lcssa
  %scevgep1899 = getelementptr i8, ptr %.1830.lcssa, i64 %i.ang
  br label %._crit_edge1823

._crit_edge1823:                                  ; preds = %._crit_edge1823.loopexit, %.preheader
  %.2831.lcssa = phi ptr [ %.1830.lcssa, %.preheader ], [ %scevgep1899, %._crit_edge1823.loopexit ]
  %.2825.lcssa = phi i32 [ %.1824.lcssa, %.preheader ], [ %.lcssa2068, %._crit_edge1823.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa2067, %._crit_edge1823.loopexit ]
  %i.anh = urem i32 %.2825.lcssa, 65521           ; 2 uses
  %i.ani = urem i32 %.2.lcssa, 65521              ; 2 uses
  %i.anj = sub i64 %.08281829, %.01832            ; 2 uses
  %.not1616 = icmp eq i64 %i.anj, 0
  br i1 %.not1616, label %._crit_edge1833, label %.preheader1714

._crit_edge1833:                                  ; preds = %._crit_edge1823, %bb.fp
  %.0823.lcssa = phi i32 [ %i.akh, %bb.fp ], [ %i.anh, %._crit_edge1823 ]
  %.0822.lcssa = phi i32 [ %i.aki, %bb.fp ], [ %i.ani, %._crit_edge1823 ]
  %i.ank = shl nuw i32 %.0822.lcssa, 16
  %i.anl = or disjoint i32 %i.ank, %.0823.lcssa   ; 2 uses
  store i32 %i.anl, ptr %i.akf, align 4
  %i.anm = icmp eq i32 %.08341672, 0
  br i1 %i.anm, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %._crit_edge1833
  %i.ann = and i32 %6, 1
  %.not1617 = icmp eq i32 %i.ann, 0
  br i1 %.not1617, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anp = load i32, ptr %i.ano, align 8
  %.not1618 = icmp eq i32 %i.anl, %i.anp
  %spec.select = select i1 %.not1618, i32 0, i32 -2
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.thread1655, %bb.fq, %._crit_edge1833, %bb.f
  %.0832 = phi i32 [ -3, %bb.f ], [ %.08341672, %.thread1655 ], [ %.08341672, %._crit_edge1833 ], [ %spec.select, %bb.fr ], [ 0, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.0832
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @mz_inflateEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.b) #36
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10000, 1) i32 @mz_uncompress2(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.mz_stream_s, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i8 0, i64 88, i1 false)
  %i.b = load i64, ptr %3, align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = or i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.d, 4294967295
  br i1 %i.e, label %mz_inflateInit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8
  %i.f = trunc nuw i64 %i.b to i32
  store i32 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.g, align 8
  %i.h = trunc nuw i64 %i.c to i32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @miniz_def_alloc_func, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr @miniz_def_free_func, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.o = tail call noalias noundef dereferenceable_or_null(41168) ptr @malloc(i64 noundef 41168) #37 ; 6 uses
  %.not33.i.i = icmp eq ptr %i.o, null
  br i1 %.not33.i.i, label %mz_inflateInit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  store i32 0, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8376
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 41164
  store i32 1, ptr %i.r, align 4
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8392
  store i32 15, ptr %i.s, align 8
  %i.t = call i32 @mz_inflate(ptr noundef nonnull %4, i32 noundef 4) ; 3 uses
  %i.u = load i64, ptr %3, align 8
  %i.v = load i32, ptr %i.a, align 8              ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = sub i64 %i.u, %i.w
  store i64 %i.x, ptr %3, align 8
  %.not18 = icmp eq i32 %i.t, 1
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.y, null
  br i1 %.not8.i, label %mz_inflateEnd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.m, align 8
  %i.aa = load ptr, ptr %i.n, align 8
  call void %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.y) #36, !inline_history !21
  br label %mz_inflateEnd.exit

mz_inflateEnd.exit:                               ; preds = %bb.d, %bb.e
  %i.ab = icmp ne i32 %i.t, -5
  %i.ac = icmp ne i32 %i.v, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  %i.ad = select i1 %or.cond, i32 %i.t, i32 -3
  br label %mz_inflateInit.exit

bb.f:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.k, align 8
  store i64 %i.ae, ptr %1, align 8
  %i.af = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not8.i19 = icmp eq ptr %i.af, null
  br i1 %.not8.i19, label %mz_inflateInit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = load ptr, ptr %i.n, align 8
  call void %i.ag(ptr noundef %i.ah, ptr noundef nonnull %i.af) #36, !inline_history !21
  br label %mz_inflateInit.exit

mz_inflateInit.exit:                              ; preds = %bb.g, %bb.f, %bb.b, %bb.a, %mz_inflateEnd.exit
  %.0 = phi i32 [ -4, %bb.b ], [ -10000, %bb.a ], [ %i.ad, %mz_inflateEnd.exit ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -10000, 1) i32 @mz_uncompress(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
end_hunk_1
begin_hunk_2_@zip_entry_write:bb.a

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not38.i = icmp eq i64 %i.av, 0
  br i1 %.not38.i, label %mz_crc32.exit, label %.lr.ph42.i.preheader

.lr.ph42.i.preheader:                             ; preds = %bb.c, %.preheader.i
  %.141.i.ph = phi ptr [ %1, %bb.c ], [ %i.au, %.preheader.i ] ; 3 uses
  %.12440.i.ph = phi i32 [ %i.i, %bb.c ], [ %i.at, %.preheader.i ] ; 3 uses
  %.12639.i.ph = phi i64 [ %2, %bb.c ], [ %i.av, %.preheader.i ] ; 4 uses
  %xtraiter = and i64 %.12639.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.i.preheader
  %i.k = lshr i32 %.12440.i.ph, 8
  %i.l = load i8, ptr %.141.i.ph, align 1
  %.124.tr.i.prol = trunc i32 %.12440.i.ph to i8
  %.narrow.i.prol = xor i8 %i.l, %.124.tr.i.prol
  %i.m = zext i8 %.narrow.i.prol to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = xor i32 %i.o, %i.k                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.141.i.ph, i64 1
  %i.r = add nsw i64 %.12639.i.ph, -1
  br label %.lr.ph42.i.prol.loopexit

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph42.i.preheader ], [ %i.p, %.lr.ph42.i.prol ]
  %.141.i.unr = phi ptr [ %.141.i.ph, %.lr.ph42.i.preheader ], [ %i.q, %.lr.ph42.i.prol ]
  %.12440.i.unr = phi i32 [ %.12440.i.ph, %.lr.ph42.i.preheader ], [ %i.p, %.lr.ph42.i.prol ]
  %.12639.i.unr = phi i64 [ %.12639.i.ph, %.lr.ph42.i.preheader ], [ %i.r, %.lr.ph42.i.prol ]
  %i.s = icmp eq i64 %.12639.i.ph, 1
  br i1 %i.s, label %mz_crc32.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.035.i = phi ptr [ %i.au, %.lr.ph.i ], [ %1, %bb.c ] ; 5 uses
  %.02334.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %.02533.i = phi i64 [ %i.av, %.lr.ph.i ], [ %2, %bb.c ]
  %i.t = lshr i32 %.02334.i, 8
  %i.u = load i8, ptr %.035.i, align 1
  %.023.tr.i = trunc i32 %.02334.i to i8
  %.narrow27.i = xor i8 %i.u, %.023.tr.i
  %i.v = zext i8 %.narrow27.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4
  %i.y = xor i32 %i.x, %i.t                       ; 2 uses
  %i.z = lshr i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %.tr.i = trunc i32 %i.y to i8
  %.narrow28.i = xor i8 %i.ab, %.tr.i
  %i.ac = zext i8 %.narrow28.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = xor i32 %i.z, %i.ae                     ; 2 uses
  %i.ag = lshr i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %.tr29.i = trunc i32 %i.af to i8
  %.narrow30.i = xor i8 %i.ai, %.tr29.i
  %i.aj = zext i8 %.narrow30.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = xor i32 %i.ag, %i.al                    ; 2 uses
  %i.an = lshr i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %.tr31.i = trunc i32 %i.am to i8
  %.narrow32.i = xor i8 %i.ap, %.tr31.i
  %i.aq = zext i8 %.narrow32.i to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = xor i32 %i.an, %i.as                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 2 uses
  %i.av = add i64 %.02533.i, -4                   ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph.i, label %.preheader.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %.141.i = phi ptr [ %i.bk, %.lr.ph42.i ], [ %.141.i.unr, %.lr.ph42.i.prol.loopexit ] ; 3 uses
  %.12440.i = phi i32 [ %i.bj, %.lr.ph42.i ], [ %.12440.i.unr, %.lr.ph42.i.prol.loopexit ] ; 2 uses
  %.12639.i = phi i64 [ %i.bl, %.lr.ph42.i ], [ %.12639.i.unr, %.lr.ph42.i.prol.loopexit ]
  %i.ax = lshr i32 %.12440.i, 8
  %i.ay = load i8, ptr %.141.i, align 1
  %.124.tr.i = trunc i32 %.12440.i to i8
  %.narrow.i = xor i8 %i.ay, %.124.tr.i
  %i.az = zext i8 %.narrow.i to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = xor i32 %i.bb, %i.ax                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.141.i, i64 1
  %i.be = lshr i32 %i.bc, 8
  %i.bf = load i8, ptr %i.bd, align 1
  %.124.tr.i.1 = trunc i32 %i.bc to i8
  %.narrow.i.1 = xor i8 %i.bf, %.124.tr.i.1
  %i.bg = zext i8 %.narrow.i.1 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = xor i32 %i.bi, %i.be                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.141.i, i64 2
  %i.bl = add nsw i64 %.12639.i, -2               ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.1, label %mz_crc32.exit, label %.lr.ph42.i

mz_crc32.exit:                                    ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %.preheader.i
  %.124.lcssa.i = phi i32 [ %i.at, %.preheader.i ], [ %.lcssa.unr, %.lr.ph42.i.prol.loopexit ], [ %i.bj, %.lr.ph42.i ]
  %i.bm = xor i32 %.124.lcssa.i, -1
  store i32 %i.bm, ptr %i.g, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = and i32 %i.bo, 15
  %.not33 = icmp eq i32 %i.bp, 0
  br i1 %.not33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mz_crc32.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = tail call i64 %i.br(ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef nonnull %1, i64 noundef %2) #36
  %.not34 = icmp eq i64 %i.bw, %2
  br i1 %.not34, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bx = load i64, ptr %i.bu, align 8
  %i.by = add i64 %i.bx, %2
  store i64 %i.by, ptr %i.bu, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, %2
  store i64 %i.cb, ptr %i.bz, align 8
  br label %bb.g

bb.f:                                             ; preds = %mz_crc32.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %i.cd = call i32 @tdefl_compress(ptr noundef nonnull %i.cc, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %or.cond3 = icmp ugt i32 %i.cd, 1
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.g
  %.0 = phi i32 [ -8, %bb.d ], [ 0, %bb.g ], [ -1, %bb.a ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -16, 1) i32 @zip_entry_fwrite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [65536 x i8], align 16            ; 5 uses
  %2 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.b = call i32 @stat(ptr noundef %1, ptr noundef nonnull %2) #36
  %.not23 = icmp eq i32 %i.b, 0
  br i1 %.not23, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = trunc i32 %i.d to i16                    ; 2 uses
  %i.f = and i16 %i.e, 4095
  %i.g = and i32 %i.d, 61440                      ; 7 uses
  %i.h = icmp eq i32 %i.g, 16384                  ; 2 uses
  %spec.select = select i1 %i.h, i16 %i.e, i16 %i.f ; 2 uses
  %i.i = icmp eq i32 %i.g, 32768
  %i.j = or i16 %spec.select, -32768
  %.1 = select i1 %i.i, i16 %i.j, i16 %spec.select ; 2 uses
  %i.k = icmp eq i32 %i.g, 40960
  %i.l = or i16 %.1, -24576
  %.2 = select i1 %i.k, i16 %i.l, i16 %.1         ; 2 uses
  %i.m = icmp eq i32 %i.g, 24576
  %i.n = or i16 %.2, 24576
  %.3 = select i1 %i.m, i16 %i.n, i16 %.2         ; 2 uses
  %i.o = icmp eq i32 %i.g, 8192
  %i.p = or i16 %.3, 8192
  %.4 = select i1 %i.o, i16 %i.p, i16 %.3         ; 2 uses
  %i.q = icmp eq i32 %i.g, 4096
  %i.r = or i16 %.4, 4096
  %.5 = select i1 %i.q, i16 %i.r, i16 %.4         ; 2 uses
  %i.s = icmp eq i32 %i.g, 49152
  %i.t = or i16 %.5, -16384
  %.6 = select i1 %i.s, i16 %i.t, i16 %.5
  %i.u = zext i16 %.6 to i32
  %i.v = shl nuw i32 %i.u, 16
  %i.w = lshr i32 %i.d, 7
  %.lobit = and i32 %i.w, 1
  %i.x = or disjoint i32 %i.v, %.lobit
  %3 = xor i32 %i.x, 1                            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 319592
  %4 = or disjoint i32 %3, 16
  %spec.select27 = select i1 %i.h, i32 %4, i32 %3
  store i32 %spec.select27, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 319600
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.15) ; 3 uses
  %.not25 = icmp eq ptr %i.ac, null
  br i1 %.not25, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %i.ad = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 65536, ptr noundef nonnull %i.ac) ; 2 uses
  %.not26 = icmp eq i64 %i.ad, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ae = call i32 @zip_entry_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.ad)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d, %.preheader
  %.019 = phi i32 [ 0, %.preheader ], [ -8, %bb.d ]
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.020 = phi i32 [ -1, %bb.a ], [ %.019, %bb.e ], [ -3, %bb.b ], [ -16, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define noundef i64 @zip_entry_read(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not17 = icmp eq i32 %i.b, 1
  br i1 %.not17, label %bb.c, label %mz_zip_reader_is_file_a_directory.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.d to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not11.i.i = icmp ugt i32 %i.j, %i.f
  br i1 %.not11.i.i, label %mz_zip_get_cdh.exit.i, label %.thread39

mz_zip_get_cdh.exit.i:                            ; preds = %bb.e
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = and i64 %i.d, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread39, label %bb.f

bb.f:                                             ; preds = %mz_zip_get_cdh.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i16, ptr %i.s, align 1              ; 2 uses
  %.not18.i = icmp eq i16 %i.t, 0
  br i1 %.not18.i, label %mz_zip_reader_is_file_a_directory.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %mz_zip_reader_is_file_a_directory.exit

mz_zip_reader_is_file_a_directory.exit:           ; preds = %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 16
  %.not18 = icmp eq i8 %i.ab, 0
  br i1 %.not18, label %.thread, label %mz_zip_reader_is_file_a_directory.exit.thread25

.thread39:                                        ; preds = %mz_zip_get_cdh.exit.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ac, align 4
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  br label %mz_zip_reader_file_stat.exit.i

.thread:                                          ; preds = %mz_zip_reader_is_file_a_directory.exit, %.thread39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %.not11.i.i.i = icmp ugt i32 %i.af, %i.f
  br i1 %.not11.i.i.i, label %bb.i, label %mz_zip_reader_file_stat.exit.i

bb.i:                                             ; preds = %.thread
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = and i64 %i.d, 4294967295
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  br label %mz_zip_reader_file_stat.exit.i

mz_zip_reader_file_stat.exit.i:                   ; preds = %bb.h, %bb.i, %.thread
  %.0.i.i.i = phi ptr [ %i.an, %bb.i ], [ null, %.thread ], [ null, %bb.h ]
  %i.ao = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %.0.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not23.i = icmp eq i32 %i.ao, 0
  br i1 %.not23.i, label %mz_zip_reader_extract_to_heap.exit.thread, label %bb.j

bb.j:                                             ; preds = %mz_zip_reader_file_stat.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load i64, ptr %i.ap, align 8            ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call ptr %i.as(ptr noundef %i.au, i64 noundef 1, i64 noundef %i.aq) #36, !inline_history !30 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %mz_zip_set_error.exit.i, label %bb.k

mz_zip_set_error.exit.i:                          ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.ax, align 4
  br label %mz_zip_reader_extract_to_heap.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = call fastcc i32 @mz_zip_reader_extract_to_mem_no_alloc1(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %i.av, i64 noundef %i.aq, i32 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3)
  %.not25.i = icmp eq i32 %i.ay, 0
  br i1 %.not25.i, label %bb.l, label %mz_zip_reader_extract_to_heap.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  call void %i.ba(ptr noundef %i.bb, ptr noundef nonnull %i.av) #36, !inline_history !30
  br label %mz_zip_reader_extract_to_heap.exit.thread

mz_zip_reader_extract_to_heap.exit.thread:        ; preds = %mz_zip_set_error.exit.i, %mz_zip_reader_file_stat.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr null, ptr %1, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_extract_to_heap.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr %i.av, ptr %1, align 8
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %mz_zip_reader_is_file_a_directory.exit.thread25, label %bb.m

bb.m:                                             ; preds = %mz_zip_reader_extract_to_heap.exit
  store i64 %i.aq, ptr %2, align 8
  br label %mz_zip_reader_is_file_a_directory.exit.thread25

mz_zip_reader_is_file_a_directory.exit.thread25:  ; preds = %bb.g, %mz_zip_reader_extract_to_heap.exit, %bb.m, %mz_zip_reader_extract_to_heap.exit.thread, %mz_zip_reader_is_file_a_directory.exit, %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -3, %bb.b ], [ %i.aq, %mz_zip_reader_extract_to_heap.exit ], [ -3, %bb.c ], [ -17, %mz_zip_reader_is_file_a_directory.exit ], [ 0, %mz_zip_reader_extract_to_heap.exit.thread ], [ %i.aq, %bb.m ], [ -17, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @zip_entry_noallocread(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %.not11 = icmp eq i32 %i.b, 1
  br i1 %.not11, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

end_hunk_2
begin_hunk_3_@zip_create:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store ptr @mz_zip_file_write_func, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr @miniz_def_alloc_func, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  store ptr @miniz_def_free_func, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @miniz_def_realloc_func, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %calloc = call dereferenceable_or_null(152) ptr @calloc(i64 1, i64 152) ; 5 uses
  store ptr %calloc, ptr %i.f, align 8
  %i.l = icmp eq ptr %calloc, null
  br i1 %i.l, label %mz_zip_writer_end_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %calloc, i64 56
  store i32 4, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  store i32 4, ptr %i.o, align 8
  store i32 1, ptr %i.b, align 8
  store i32 2, ptr %i.g, align 4
  %i.p = call noalias ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.17) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = load ptr, ptr %i.f, align 8              ; 11 uses
  br i1 %i.q, label %mz_zip_set_error.exit48.i, label %bb.o

mz_zip_set_error.exit48.i:                        ; preds = %bb.d
  %.not38.i45 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.h, align 8
  %.not39.i46 = icmp eq ptr %i.s, null
  %or.cond = select i1 %.not38.i45, i1 true, i1 %.not39.i46
  br i1 %or.cond, label %mz_zip_writer_end_internal.exit, label %bb.e

bb.e:                                             ; preds = %mz_zip_set_error.exit48.i
  %i.t = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not40.i47 = icmp eq ptr %i.t, null
  br i1 %.not40.i47, label %mz_zip_writer_end_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.g, align 4
  %i.v = and i32 %i.u, -2
  %switch.i48 = icmp eq i32 %i.v, 2
  br i1 %switch.i48, label %bb.g, label %mz_zip_writer_end_internal.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = load ptr, ptr %i.r, align 8
  call void %i.t(ptr noundef %i.w, ptr noundef %i.x) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef %i.aa, ptr noundef %i.ab) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef %i.ae, ptr noundef %i.af) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not43.i51 = icmp eq ptr %i.ah, null
  br i1 %.not43.i51, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ah)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.am, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  store ptr null, ptr %i.ag, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = icmp eq ptr %i.an, @mz_zip_heap_write_func
  br i1 %i.ao, label %bb.m, label %mz_zip_writer_end_internal.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not45.i54 = icmp eq ptr %i.aq, null
  br i1 %.not45.i54, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.i, align 8
  %i.as = load ptr, ptr %i.k, align 8
  call void %i.ar(ptr noundef %i.as, ptr noundef nonnull %i.aq) #36, !inline_history !11
  store ptr null, ptr %i.ap, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

bb.o:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.p, ptr %i.at, align 8
  store i32 4, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  %.not73 = icmp eq i64 %2, 0
  br i1 %.not73, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.q

bb.p:                                             ; preds = %zip_basename.exit
  %i.av = add nuw i64 %.02667, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %2
  br i1 %exitcond.not, label %.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.02667 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02667
  %i.ax = load ptr, ptr %i.aw, align 8            ; 6 uses
  %.not34 = icmp eq ptr %i.ax, null
  br i1 %.not34, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = call i32 @stat(ptr noundef nonnull %i.ax, ptr noundef nonnull %4) #36
  %.not35 = icmp eq i32 %i.ay, 0
  br i1 %.not35, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.az = load i32, ptr %i.au, align 8            ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.016.i = phi ptr [ %i.ax, %bb.s ], [ %i.bc, %bb.v ] ; 3 uses
  %.014.i = phi ptr [ %i.ax, %bb.s ], [ %.115.i, %bb.v ] ; 6 uses
  %.0.i = phi i32 [ 1, %bb.s ], [ %.1.i, %bb.v ]  ; 3 uses
  %i.ba = load i8, ptr %.016.i, align 1
  switch i8 %i.ba, label %bb.v [
    i8 0, label %bb.w
    i8 47, label %bb.u
    i8 92, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.115.i = phi ptr [ %i.bb, %bb.u ], [ %.014.i, %bb.t ]
  %.1.i = phi i32 [ %.0.i, %bb.u ], [ 0, %bb.t ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %bb.t

bb.w:                                             ; preds = %bb.t
  %i.bd = trunc i32 %i.az to i16                  ; 2 uses
  %i.be = and i16 %i.bd, 4095
  %i.bf = and i32 %i.az, 61440                    ; 7 uses
  %i.bg = icmp eq i32 %i.bf, 16384                ; 2 uses
  %spec.select = select i1 %i.bg, i16 %i.bd, i16 %i.be ; 2 uses
  %i.bh = icmp eq i32 %i.bf, 32768
  %i.bi = or i16 %spec.select, -32768
  %.1 = select i1 %i.bh, i16 %i.bi, i16 %spec.select ; 2 uses
  %i.bj = icmp eq i32 %i.bf, 40960
  %i.bk = or i16 %.1, -24576
  %.2 = select i1 %i.bj, i16 %i.bk, i16 %.1       ; 2 uses
  %i.bl = icmp eq i32 %i.bf, 24576
  %i.bm = or i16 %.2, 24576
  %.3 = select i1 %i.bl, i16 %i.bm, i16 %.2       ; 2 uses
  %i.bn = icmp eq i32 %i.bf, 8192
  %i.bo = or i16 %.3, 8192
  %.4 = select i1 %i.bn, i16 %i.bo, i16 %.3       ; 2 uses
  %i.bp = icmp eq i32 %i.bf, 4096
  %i.bq = or i16 %.4, 4096
  %.5 = select i1 %i.bp, i16 %i.bq, i16 %.4       ; 2 uses
  %i.br = icmp eq i32 %i.bf, 49152
  %i.bs = or i16 %.5, -16384
  %.6 = select i1 %i.br, i16 %i.bs, i16 %.5
  %i.bt = zext i16 %.6 to i32
  %i.bu = shl nuw i32 %i.bt, 16
  %i.bv = lshr i32 %i.az, 7
  %.lobit = and i32 %i.bv, 1
  %i.bw = or disjoint i32 %i.bu, %.lobit
  %5 = xor i32 %i.bw, 1                           ; 2 uses
  %6 = or disjoint i32 %5, 16
  %.025 = select i1 %i.bg, i32 %6, i32 %5
  %i.bx = load i8, ptr %.014.i, align 1
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.x, label %zip_basename.exit

bb.x:                                             ; preds = %bb.w
  %i.bz = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 47
  br i1 %i.ca, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = icmp eq i8 %i.bz, 92
  %i.cc = icmp ne i32 %.0.i, 0
  %or.cond.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %bb.aa, label %zip_basename.exit

bb.z:                                             ; preds = %bb.x
  %.old1.not.i = icmp eq i32 %.0.i, 0
  br i1 %.old1.not.i, label %zip_basename.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cd = getelementptr inbounds i8, ptr %.014.i, i64 -1
  br label %zip_basename.exit

zip_basename.exit:                                ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  %.2.i = phi ptr [ %i.cd, %bb.aa ], [ %.014.i, %bb.z ], [ %.014.i, %bb.y ], [ %.014.i, %bb.w ]
  %i.ce = call i32 @mz_zip_writer_add_file(ptr noundef nonnull %3, ptr noundef nonnull %.2.i, ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.1, i16 noundef zeroext 0, i32 noundef 6, i32 noundef %.025)
  %.not37 = icmp eq i32 %i.ce, 0
  br i1 %.not37, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %zip_basename.exit, %bb.o
  %.229 = phi i32 [ 0, %bb.o ], [ 0, %bb.p ], [ -19, %zip_basename.exit ], [ -19, %bb.r ], [ -2, %bb.q ] ; 6 uses
  %i.cf = call i32 @mz_zip_writer_finalize_archive(ptr noundef nonnull %3) ; 0 uses
  %i.cg = load ptr, ptr %i.f, align 8             ; 10 uses
  %.not38.i = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %i.h, align 8
  %.not39.i = icmp eq ptr %i.ch, null
  %or.cond66 = select i1 %.not38.i, i1 true, i1 %.not39.i
  br i1 %or.cond66, label %mz_zip_writer_end_internal.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.ci = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not40.i = icmp eq ptr %i.ci, null
  br i1 %.not40.i, label %mz_zip_writer_end_internal.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i32, ptr %i.g, align 4
  %i.ck = and i32 %i.cj, -2
  %switch.i = icmp eq i32 %i.ck, 2
  br i1 %switch.i, label %bb.ad, label %mz_zip_writer_end_internal.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.f, align 8
  %i.cl = load ptr, ptr %i.k, align 8
  %i.cm = load ptr, ptr %i.cg, align 8
  call void %i.ci(ptr noundef %i.cl, ptr noundef %i.cm) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i8 0, i64 32, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.i, align 8
  %i.cp = load ptr, ptr %i.k, align 8
  %i.cq = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef %i.cp, ptr noundef %i.cq) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 2 uses
  %i.cs = load ptr, ptr %i.i, align 8
  %i.ct = load ptr, ptr %i.k, align 8
  %i.cu = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef %i.ct, ptr noundef %i.cu) #36, !inline_history !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i8 0, i64 32, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 112 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not43.i42 = icmp eq ptr %i.cw, null
  br i1 %.not43.i42, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i32, ptr %i.b, align 8
  %i.cy = icmp eq i32 %i.cx, 4
  br i1 %i.cy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cz = call i32 @fclose(ptr noundef nonnull %i.cw)
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 21, ptr %i.db, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store ptr null, ptr %i.cv, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.dc = load ptr, ptr %i.c, align 8
  %i.dd = icmp eq ptr %i.dc, @mz_zip_heap_write_func
  br i1 %i.dd, label %bb.aj, label %mz_zip_writer_end_internal.exit.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.df, null
  br i1 %.not45.i, label %mz_zip_writer_end_internal.exit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.i, align 8
  %i.dh = load ptr, ptr %i.k, align 8
  call void %i.dg(ptr noundef %i.dh, ptr noundef nonnull %i.df) #36, !inline_history !11
  store ptr null, ptr %i.de, align 8
  br label %mz_zip_writer_end_internal.exit.sink.split

mz_zip_writer_end_internal.exit.sink.split:       ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.l, %bb.m, %bb.n
  %.sink92 = phi ptr [ %i.r, %bb.l ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.cg, %bb.ak ], [ %i.cg, %bb.aj ], [ %i.cg, %bb.ai ]
  %.030.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ], [ %.229, %bb.ak ], [ %.229, %bb.aj ], [ %.229, %bb.ai ]
  %i.di = load ptr, ptr %i.i, align 8
  %i.dj = load ptr, ptr %i.k, align 8
  call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %.sink92) #36
  br label %mz_zip_writer_end_internal.exit

mz_zip_writer_end_internal.exit:                  ; preds = %mz_zip_writer_end_internal.exit.sink.split, %.thread, %bb.ab, %bb.ac, %bb.f, %bb.e, %mz_zip_set_error.exit48.i, %bb.c, %bb.a, %bb.b
  %.030 = phi i32 [ -22, %bb.a ], [ %.229, %bb.ab ], [ -22, %bb.b ], [ %.229, %.thread ], [ -1, %bb.c ], [ -1, %mz_zip_set_error.exit48.i ], [ -1, %bb.e ], [ -1, %bb.f ], [ %.229, %bb.ac ], [ %.030.ph, %mz_zip_writer_end_internal.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define range(i32 -25, 1) i32 @zip_extract(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.mz_zip_archive, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.c = call range(i32 0, 2) i32 @mz_zip_reader_init_file_v2(ptr noundef nonnull %4, ptr noundef nonnull readonly %0, i32 noundef 0, i64 noundef 0, i64 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc i32 @zip_archive_extract(ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #15 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 24 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
end_hunk_3
