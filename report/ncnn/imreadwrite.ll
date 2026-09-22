Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], i32, ptr, ptr, ptr, ptr }
%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__resample = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stbi__bmp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__png = type { ptr, ptr, ptr, ptr, i32 }
%struct.stbi__zbuf = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.stbi__zhuffman, %struct.stbi__zhuffman }
%struct.stbi__zhuffman = type { [512 x i16], [16 x i16], [17 x i32], [16 x i16], [288 x i8], [288 x i16] }
%struct.stbi__write_context = type { ptr, ptr, [64 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.cv::Mat" = type <{ ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

@_ZL22stbi__g_failure_reason = internal unnamed_addr global ptr null, align 8
@_ZL36stbi__vertically_flip_on_load_global = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"can't fopen\00", align 1
@_ZL21stbi__stdio_callbacks = internal unnamed_addr constant %struct.stbi_io_callbacks { ptr @_ZL16stbi__stdio_readPvPci, ptr @_ZL16stbi__stdio_skipPvi, ptr @_ZL15stbi__stdio_eofPv }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad png sig\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"bad bits_per_channel\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"multiple IHDR\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bad IHDR len\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"1/2/4/8/16-bit only\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bad ctype\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"bad comp method\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"bad filter method\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"bad interlace method\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"0-pixel image\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"first not IHDR\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"invalid PLTE\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"tRNS after IDAT\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"tRNS before PLTE\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"bad tRNS len\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"tRNS with alpha\00", align 1
@_ZL23stbi__depth_scale_table = internal unnamed_addr constant [9 x i8] c"\00\FFU\00\11\00\00\00\01", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"no PLTE\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"IDAT size limit\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"outofdata\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"no IDAT\00", align 1
@_ZL27stbi__de_iphone_flag_global = internal unnamed_addr global i32 0, align 4
@_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk = internal global [25 x i8] c"XXXX PNG chunk not known\00", align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@.str.26 = private unnamed_addr constant [18 x i8] c"not enough pixels\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid filter\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@_ZL16first_row_filter = internal unnamed_addr constant [5 x i8] c"\00\01\00\05\06", align 1
@_ZL34stbi__unpremultiply_on_load_global = internal unnamed_addr global i32 0, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"bad offset\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"bad bpp\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"bad masks\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"not BMP\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"bad BMP\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"unknown BMP\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"BMP RLE\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"BMP JPEG/PNG\00", align 1
@_ZZL17stbi__shiftsignedjiiE9mul_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 255, i32 85, i32 73, i32 17, i32 33, i32 65, i32 129, i32 1], align 16
@_ZZL17stbi__shiftsignedjiiE11shift_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 4, i32 6, i32 0], align 16
@.str.40 = private unnamed_addr constant [7 x i8] c"no SOI\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"no SOF\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@_ZL19stbi__jpeg_dezigzag = internal unnamed_addr constant [79 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>????????????????", align 16
@.str.46 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"bad COM len\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"bad APP len\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"unknown marker\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"bad size list\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"bad code lengths\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"bad SOF len\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"only 8-bit\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"no header height\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"0 width\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"bad component count\00", align 1
@_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb = internal unnamed_addr constant [3 x i8] c"RGB", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"bad H\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"bad V\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"bad TQ\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"bad DNL len\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"bad DNL height\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"bad SOS component count\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"bad SOS len\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"bad DC huff\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"bad AC huff\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"bad SOS\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"bad delta\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"can't merge dc and ac\00", align 1
@_ZL11stbi__bmask = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@_ZL11stbi__jbias = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@.str.70 = private unnamed_addr constant [8 x i8] c"bad PNM\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"max value > 65535\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"integer parse overflow\00", align 1
@_ZL15stbi__l2h_gamma = internal unnamed_addr global float 2.200000e+00, align 4
@_ZL15stbi__l2h_scale = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL21stbi__zdefault_length = internal constant [288 x i8] c"\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08", align 16
@_ZL23stbi__zdefault_distance = internal constant [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@.str.73 = private unnamed_addr constant [16 x i8] c"bad zlib header\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"no preset dict\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"zlib corrupt\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"read past buffer\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"output buffer limit\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"bad sizes\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@_ZL18stbi__zlength_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@_ZL19stbi__zlength_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@_ZL16stbi__zdist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@_ZL17stbi__zdist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@.str.81 = private unnamed_addr constant [9 x i8] c"bad dist\00", align 1
@stbi_write_png_compression_level = dso_local local_unnamed_addr global i32 8, align 4
@stbi_write_tga_with_rle = dso_local local_unnamed_addr global i32 1, align 4
@stbi_write_force_png_filter = dso_local local_unnamed_addr global i32 -1, align 4
@_ZL30stbi__flip_vertically_on_write = internal unnamed_addr global i32 0, align 4
@.str.82 = private unnamed_addr constant [24 x i8] c"11 4 22 44 44 22 444444\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"11 4 22 44 44 22 444444 4444 4 444 444 444 444\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"111 221 2222 11\00", align 1
@__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header = private unnamed_addr constant [66 x i8] c"#?RADIANCE\0A# Written by stb_image_write.h\0AFORMAT=32-bit_rle_rgbe\0A\00", align 16
@.str.86 = private unnamed_addr constant [49 x i8] c"EXPOSURE=          1.0000000000000\0A\0A-Y %d +X %d\0A\00", align 1
@_ZZ18stbi_zlib_compressE7lengthc = internal unnamed_addr constant [30 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 259], align 16
@_ZZ18stbi_zlib_compressE8lengtheb = internal unnamed_addr constant [29 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00", align 16
@_ZZ18stbi_zlib_compressE5distc = internal unnamed_addr constant [31 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 -32768], align 16
@_ZZ18stbi_zlib_compressE6disteb = internal unnamed_addr constant [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D", align 16
@__const.stbi_write_png_to_mem.ctype = private unnamed_addr constant [5 x i32] [i32 -1, i32 0, i32 4, i32 2, i32 6], align 16
@_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 0, i32 5, i32 6], align 16
@_ZZL12stbiw__crc32PhiE9crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE24std_dc_luminance_nrcodes = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE23std_dc_luminance_values = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE24std_ac_luminance_nrcodes = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE23std_ac_luminance_values = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE26std_dc_chrominance_nrcodes = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE25std_dc_chrominance_values = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE26std_ac_chrominance_nrcodes = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE25std_ac_chrominance_values = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YDC_HT = internal constant <{ [12 x [2 x i16]], [244 x [2 x i16]] }> <{ [12 x [2 x i16]] [[2 x i16] [i16 0, i16 2], [2 x i16] [i16 2, i16 3], [2 x i16] [i16 3, i16 3], [2 x i16] [i16 4, i16 3], [2 x i16] [i16 5, i16 3], [2 x i16] [i16 6, i16 3], [2 x i16] [i16 14, i16 4], [2 x i16] [i16 30, i16 5], [2 x i16] [i16 62, i16 6], [2 x i16] [i16 126, i16 7], [2 x i16] [i16 254, i16 8], [2 x i16] [i16 510, i16 9]], [244 x [2 x i16]] zeroinitializer }>, align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVDC_HT = internal constant <{ [12 x [2 x i16]], [244 x [2 x i16]] }> <{ [12 x [2 x i16]] [[2 x i16] [i16 0, i16 2], [2 x i16] [i16 1, i16 2], [2 x i16] [i16 2, i16 2], [2 x i16] [i16 6, i16 3], [2 x i16] [i16 14, i16 4], [2 x i16] [i16 30, i16 5], [2 x i16] [i16 62, i16 6], [2 x i16] [i16 126, i16 7], [2 x i16] [i16 254, i16 8], [2 x i16] [i16 510, i16 9], [2 x i16] [i16 1022, i16 10], [2 x i16] [i16 2046, i16 11]], [244 x [2 x i16]] zeroinitializer }>, align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE6YAC_HT = internal constant [256 x [2 x i16]] [[2 x i16] [i16 10, i16 4], [2 x i16] [i16 0, i16 2], [2 x i16] [i16 1, i16 2], [2 x i16] [i16 4, i16 3], [2 x i16] [i16 11, i16 4], [2 x i16] [i16 26, i16 5], [2 x i16] [i16 120, i16 7], [2 x i16] [i16 248, i16 8], [2 x i16] [i16 1014, i16 10], [2 x i16] [i16 -126, i16 16], [2 x i16] [i16 -125, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 12, i16 4], [2 x i16] [i16 27, i16 5], [2 x i16] [i16 121, i16 7], [2 x i16] [i16 502, i16 9], [2 x i16] [i16 2038, i16 11], [2 x i16] [i16 -124, i16 16], [2 x i16] [i16 -123, i16 16], [2 x i16] [i16 -122, i16 16], [2 x i16] [i16 -121, i16 16], [2 x i16] [i16 -120, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 28, i16 5], [2 x i16] [i16 249, i16 8], [2 x i16] [i16 1015, i16 10], [2 x i16] [i16 4084, i16 12], [2 x i16] [i16 -119, i16 16], [2 x i16] [i16 -118, i16 16], [2 x i16] [i16 -117, i16 16], [2 x i16] [i16 -116, i16 16], [2 x i16] [i16 -115, i16 16], [2 x i16] [i16 -114, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 58, i16 6], [2 x i16] [i16 503, i16 9], [2 x i16] [i16 4085, i16 12], [2 x i16] [i16 -113, i16 16], [2 x i16] [i16 -112, i16 16], [2 x i16] [i16 -111, i16 16], [2 x i16] [i16 -110, i16 16], [2 x i16] [i16 -109, i16 16], [2 x i16] [i16 -108, i16 16], [2 x i16] [i16 -107, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 59, i16 6], [2 x i16] [i16 1016, i16 10], [2 x i16] [i16 -106, i16 16], [2 x i16] [i16 -105, i16 16], [2 x i16] [i16 -104, i16 16], [2 x i16] [i16 -103, i16 16], [2 x i16] [i16 -102, i16 16], [2 x i16] [i16 -101, i16 16], [2 x i16] [i16 -100, i16 16], [2 x i16] [i16 -99, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 122, i16 7], [2 x i16] [i16 2039, i16 11], [2 x i16] [i16 -98, i16 16], [2 x i16] [i16 -97, i16 16], [2 x i16] [i16 -96, i16 16], [2 x i16] [i16 -95, i16 16], [2 x i16] [i16 -94, i16 16], [2 x i16] [i16 -93, i16 16], [2 x i16] [i16 -92, i16 16], [2 x i16] [i16 -91, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 123, i16 7], [2 x i16] [i16 4086, i16 12], [2 x i16] [i16 -90, i16 16], [2 x i16] [i16 -89, i16 16], [2 x i16] [i16 -88, i16 16], [2 x i16] [i16 -87, i16 16], [2 x i16] [i16 -86, i16 16], [2 x i16] [i16 -85, i16 16], [2 x i16] [i16 -84, i16 16], [2 x i16] [i16 -83, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 250, i16 8], [2 x i16] [i16 4087, i16 12], [2 x i16] [i16 -82, i16 16], [2 x i16] [i16 -81, i16 16], [2 x i16] [i16 -80, i16 16], [2 x i16] [i16 -79, i16 16], [2 x i16] [i16 -78, i16 16], [2 x i16] [i16 -77, i16 16], [2 x i16] [i16 -76, i16 16], [2 x i16] [i16 -75, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 504, i16 9], [2 x i16] [i16 32704, i16 15], [2 x i16] [i16 -74, i16 16], [2 x i16] [i16 -73, i16 16], [2 x i16] [i16 -72, i16 16], [2 x i16] [i16 -71, i16 16], [2 x i16] [i16 -70, i16 16], [2 x i16] [i16 -69, i16 16], [2 x i16] [i16 -68, i16 16], [2 x i16] [i16 -67, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 505, i16 9], [2 x i16] [i16 -66, i16 16], [2 x i16] [i16 -65, i16 16], [2 x i16] [i16 -64, i16 16], [2 x i16] [i16 -63, i16 16], [2 x i16] [i16 -62, i16 16], [2 x i16] [i16 -61, i16 16], [2 x i16] [i16 -60, i16 16], [2 x i16] [i16 -59, i16 16], [2 x i16] [i16 -58, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 506, i16 9], [2 x i16] [i16 -57, i16 16], [2 x i16] [i16 -56, i16 16], [2 x i16] [i16 -55, i16 16], [2 x i16] [i16 -54, i16 16], [2 x i16] [i16 -53, i16 16], [2 x i16] [i16 -52, i16 16], [2 x i16] [i16 -51, i16 16], [2 x i16] [i16 -50, i16 16], [2 x i16] [i16 -49, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1017, i16 10], [2 x i16] [i16 -48, i16 16], [2 x i16] [i16 -47, i16 16], [2 x i16] [i16 -46, i16 16], [2 x i16] [i16 -45, i16 16], [2 x i16] [i16 -44, i16 16], [2 x i16] [i16 -43, i16 16], [2 x i16] [i16 -42, i16 16], [2 x i16] [i16 -41, i16 16], [2 x i16] [i16 -40, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1018, i16 10], [2 x i16] [i16 -39, i16 16], [2 x i16] [i16 -38, i16 16], [2 x i16] [i16 -37, i16 16], [2 x i16] [i16 -36, i16 16], [2 x i16] [i16 -35, i16 16], [2 x i16] [i16 -34, i16 16], [2 x i16] [i16 -33, i16 16], [2 x i16] [i16 -32, i16 16], [2 x i16] [i16 -31, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 2040, i16 11], [2 x i16] [i16 -30, i16 16], [2 x i16] [i16 -29, i16 16], [2 x i16] [i16 -28, i16 16], [2 x i16] [i16 -27, i16 16], [2 x i16] [i16 -26, i16 16], [2 x i16] [i16 -25, i16 16], [2 x i16] [i16 -24, i16 16], [2 x i16] [i16 -23, i16 16], [2 x i16] [i16 -22, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 -21, i16 16], [2 x i16] [i16 -20, i16 16], [2 x i16] [i16 -19, i16 16], [2 x i16] [i16 -18, i16 16], [2 x i16] [i16 -17, i16 16], [2 x i16] [i16 -16, i16 16], [2 x i16] [i16 -15, i16 16], [2 x i16] [i16 -14, i16 16], [2 x i16] [i16 -13, i16 16], [2 x i16] [i16 -12, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 2041, i16 11], [2 x i16] [i16 -11, i16 16], [2 x i16] [i16 -10, i16 16], [2 x i16] [i16 -9, i16 16], [2 x i16] [i16 -8, i16 16], [2 x i16] [i16 -7, i16 16], [2 x i16] [i16 -6, i16 16], [2 x i16] [i16 -5, i16 16], [2 x i16] [i16 -4, i16 16], [2 x i16] [i16 -3, i16 16], [2 x i16] [i16 -2, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer], align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE7UVAC_HT = internal constant [256 x [2 x i16]] [[2 x i16] [i16 0, i16 2], [2 x i16] [i16 1, i16 2], [2 x i16] [i16 4, i16 3], [2 x i16] [i16 10, i16 4], [2 x i16] [i16 24, i16 5], [2 x i16] [i16 25, i16 5], [2 x i16] [i16 56, i16 6], [2 x i16] [i16 120, i16 7], [2 x i16] [i16 500, i16 9], [2 x i16] [i16 1014, i16 10], [2 x i16] [i16 4084, i16 12], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 11, i16 4], [2 x i16] [i16 57, i16 6], [2 x i16] [i16 246, i16 8], [2 x i16] [i16 501, i16 9], [2 x i16] [i16 2038, i16 11], [2 x i16] [i16 4085, i16 12], [2 x i16] [i16 -120, i16 16], [2 x i16] [i16 -119, i16 16], [2 x i16] [i16 -118, i16 16], [2 x i16] [i16 -117, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 26, i16 5], [2 x i16] [i16 247, i16 8], [2 x i16] [i16 1015, i16 10], [2 x i16] [i16 4086, i16 12], [2 x i16] [i16 32706, i16 15], [2 x i16] [i16 -116, i16 16], [2 x i16] [i16 -115, i16 16], [2 x i16] [i16 -114, i16 16], [2 x i16] [i16 -113, i16 16], [2 x i16] [i16 -112, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 27, i16 5], [2 x i16] [i16 248, i16 8], [2 x i16] [i16 1016, i16 10], [2 x i16] [i16 4087, i16 12], [2 x i16] [i16 -111, i16 16], [2 x i16] [i16 -110, i16 16], [2 x i16] [i16 -109, i16 16], [2 x i16] [i16 -108, i16 16], [2 x i16] [i16 -107, i16 16], [2 x i16] [i16 -106, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 58, i16 6], [2 x i16] [i16 502, i16 9], [2 x i16] [i16 -105, i16 16], [2 x i16] [i16 -104, i16 16], [2 x i16] [i16 -103, i16 16], [2 x i16] [i16 -102, i16 16], [2 x i16] [i16 -101, i16 16], [2 x i16] [i16 -100, i16 16], [2 x i16] [i16 -99, i16 16], [2 x i16] [i16 -98, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 59, i16 6], [2 x i16] [i16 1017, i16 10], [2 x i16] [i16 -97, i16 16], [2 x i16] [i16 -96, i16 16], [2 x i16] [i16 -95, i16 16], [2 x i16] [i16 -94, i16 16], [2 x i16] [i16 -93, i16 16], [2 x i16] [i16 -92, i16 16], [2 x i16] [i16 -91, i16 16], [2 x i16] [i16 -90, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 121, i16 7], [2 x i16] [i16 2039, i16 11], [2 x i16] [i16 -89, i16 16], [2 x i16] [i16 -88, i16 16], [2 x i16] [i16 -87, i16 16], [2 x i16] [i16 -86, i16 16], [2 x i16] [i16 -85, i16 16], [2 x i16] [i16 -84, i16 16], [2 x i16] [i16 -83, i16 16], [2 x i16] [i16 -82, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 122, i16 7], [2 x i16] [i16 2040, i16 11], [2 x i16] [i16 -81, i16 16], [2 x i16] [i16 -80, i16 16], [2 x i16] [i16 -79, i16 16], [2 x i16] [i16 -78, i16 16], [2 x i16] [i16 -77, i16 16], [2 x i16] [i16 -76, i16 16], [2 x i16] [i16 -75, i16 16], [2 x i16] [i16 -74, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 249, i16 8], [2 x i16] [i16 -73, i16 16], [2 x i16] [i16 -72, i16 16], [2 x i16] [i16 -71, i16 16], [2 x i16] [i16 -70, i16 16], [2 x i16] [i16 -69, i16 16], [2 x i16] [i16 -68, i16 16], [2 x i16] [i16 -67, i16 16], [2 x i16] [i16 -66, i16 16], [2 x i16] [i16 -65, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 503, i16 9], [2 x i16] [i16 -64, i16 16], [2 x i16] [i16 -63, i16 16], [2 x i16] [i16 -62, i16 16], [2 x i16] [i16 -61, i16 16], [2 x i16] [i16 -60, i16 16], [2 x i16] [i16 -59, i16 16], [2 x i16] [i16 -58, i16 16], [2 x i16] [i16 -57, i16 16], [2 x i16] [i16 -56, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 504, i16 9], [2 x i16] [i16 -55, i16 16], [2 x i16] [i16 -54, i16 16], [2 x i16] [i16 -53, i16 16], [2 x i16] [i16 -52, i16 16], [2 x i16] [i16 -51, i16 16], [2 x i16] [i16 -50, i16 16], [2 x i16] [i16 -49, i16 16], [2 x i16] [i16 -48, i16 16], [2 x i16] [i16 -47, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 505, i16 9], [2 x i16] [i16 -46, i16 16], [2 x i16] [i16 -45, i16 16], [2 x i16] [i16 -44, i16 16], [2 x i16] [i16 -43, i16 16], [2 x i16] [i16 -42, i16 16], [2 x i16] [i16 -41, i16 16], [2 x i16] [i16 -40, i16 16], [2 x i16] [i16 -39, i16 16], [2 x i16] [i16 -38, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 506, i16 9], [2 x i16] [i16 -37, i16 16], [2 x i16] [i16 -36, i16 16], [2 x i16] [i16 -35, i16 16], [2 x i16] [i16 -34, i16 16], [2 x i16] [i16 -33, i16 16], [2 x i16] [i16 -32, i16 16], [2 x i16] [i16 -31, i16 16], [2 x i16] [i16 -30, i16 16], [2 x i16] [i16 -29, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 2041, i16 11], [2 x i16] [i16 -28, i16 16], [2 x i16] [i16 -27, i16 16], [2 x i16] [i16 -26, i16 16], [2 x i16] [i16 -25, i16 16], [2 x i16] [i16 -24, i16 16], [2 x i16] [i16 -23, i16 16], [2 x i16] [i16 -22, i16 16], [2 x i16] [i16 -21, i16 16], [2 x i16] [i16 -20, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 16352, i16 14], [2 x i16] [i16 -19, i16 16], [2 x i16] [i16 -18, i16 16], [2 x i16] [i16 -17, i16 16], [2 x i16] [i16 -16, i16 16], [2 x i16] [i16 -15, i16 16], [2 x i16] [i16 -14, i16 16], [2 x i16] [i16 -13, i16 16], [2 x i16] [i16 -12, i16 16], [2 x i16] [i16 -11, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 1018, i16 10], [2 x i16] [i16 32707, i16 15], [2 x i16] [i16 -10, i16 16], [2 x i16] [i16 -9, i16 16], [2 x i16] [i16 -8, i16 16], [2 x i16] [i16 -7, i16 16], [2 x i16] [i16 -6, i16 16], [2 x i16] [i16 -5, i16 16], [2 x i16] [i16 -4, i16 16], [2 x i16] [i16 -3, i16 16], [2 x i16] [i16 -2, i16 16], [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] zeroinitializer], align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE3YQT = internal unnamed_addr constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE4UVQT = internal unnamed_addr constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE4aasf = internal unnamed_addr constant [8 x float] [float f0x403504F3, float f0x407B14BF, float f0x406C835F, float f0x4054DB30, float f0x403504F3, float f0x400E39DA, float f0x3FC3EF15, float f0x3F47C5C2], align 16
@_ZL17stbiw__jpg_ZigZag = internal unnamed_addr constant [64 x i8] c"\00\01\05\06\0E\0F\1B\1C\02\04\07\0D\10\1A\1D*\03\08\0C\11\19\1E)+\09\0B\12\18\1F(,5\0A\13\17 '-46\14\16!&.37<\15\22%/28;=#$019:>?", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE5head0 = internal constant [25 x i8] c"\FF\D8\FF\E0\00\10JFIF\00\01\01\00\00\01\00\01\00\00\FF\DB\00\84\00", align 16
@_ZZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKviE5head2 = internal constant [14 x i8] c"\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c".PNG\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c".BMP\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @stbi_failure_reason() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #35
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.k = call noundef i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128), !inline_history !128 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8, !tbaa !31
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8, !tbaa !31
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8, !tbaa !35
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !37
  %i.z = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %.neg.i = sub i64 %i.ad, %i.ac
  %sext.i = shl i64 %.neg.i, 32
  %i.ae = ashr exact i64 %sext.i, 32
  %i.af = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.ae, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file.exit

stbi_load_from_file.exit:                         ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a

bb.jn:                                            ; preds = %bb.jm, %._crit_edge304.i.i.i.i
  %i.bdh = phi i32 [ %i.bda, %._crit_edge304.i.i.i.i ], [ %spec.select.i239.i.i.i.i, %bb.jm ] ; 2 uses
  %i.bdi = add nuw nsw i32 %.0206305.i.i.i.i, 1   ; 2 uses
  %i.bdj = load i32, ptr %i.aot, align 8, !tbaa !91 ; 2 uses
  %i.bdk = icmp slt i32 %i.bdi, %i.bdj
  br i1 %i.bdk, label %.preheader257.i.i.i.i, label %._crit_edge306.loopexit.i.i.i.i, !llvm.loop !162

._crit_edge306.loopexit.i.i.i.i:                  ; preds = %bb.jn
  %.pre353.i.i.i.i = load i32, ptr %i.aos, align 4, !tbaa !90
  br label %._crit_edge306.i.i.i.i

._crit_edge306.i.i.i.i:                           ; preds = %._crit_edge306.loopexit.i.i.i.i, %.preheader258.i.i.i.i
  %i.bdl = phi i32 [ %.pre353.i.i.i.i, %._crit_edge306.loopexit.i.i.i.i ], [ %i.baq, %.preheader258.i.i.i.i ] ; 2 uses
  %i.bdm = phi i32 [ %i.bdh, %._crit_edge306.loopexit.i.i.i.i ], [ %i.bar, %.preheader258.i.i.i.i ]
  %i.bdn = phi i32 [ %i.bdj, %._crit_edge306.loopexit.i.i.i.i ], [ %i.bas, %.preheader258.i.i.i.i ]
  %i.bdo = add nuw nsw i32 %.0205307.i.i.i.i, 1   ; 2 uses
  %i.bdp = icmp slt i32 %i.bdo, %i.bdl
  br i1 %i.bdp, label %.preheader258.i.i.i.i, label %.critedge.i57.i.i.i, !llvm.loop !163

.critedge.i57.i.i.i:                              ; preds = %._crit_edge306.i.i.i.i, %bb.jl, %.lr.ph298.i.i.i.i, %.preheader258.lr.ph.i.i.i.i, %bb.jh
  %.11.i.i.i.i = phi i32 [ 1, %bb.jh ], [ 1, %.preheader258.lr.ph.i.i.i.i ], [ 1, %bb.jl ], [ 0, %.lr.ph298.i.i.i.i ], [ 1, %._crit_edge306.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i

bb.jo:                                            ; preds = %_ZL25stbi__process_scan_headerP10stbi__jpeg.exit.i.i.i
  br i1 %i.ayq, label %bb.jp, label %.preheader270.i.i.i.i

.preheader270.i.i.i.i:                            ; preds = %bb.jo
  %i.bdq = load i32, ptr %i.aos, align 4, !tbaa !90 ; 2 uses
  %i.bdr = icmp sgt i32 %i.bdq, 0
  br i1 %i.bdr, label %.preheader268.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader268.lr.ph.i.i.i.i:                      ; preds = %.preheader270.i.i.i.i
  %i.bds = load i32, ptr %i.aot, align 8, !tbaa !91 ; 2 uses
  %i.bdt = icmp sgt i32 %i.bds, 0
  br i1 %i.bdt, label %.preheader268.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

bb.jp:                                            ; preds = %bb.jo
  %i.bdu = load i32, ptr %i.aoc, align 8, !tbaa !23 ; 2 uses
  %i.bdv = sext i32 %i.bdu to i64
  %i.bdw = getelementptr inbounds [96 x i8], ptr %i.ant, i64 %i.bdv ; 6 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 28
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !85
  %i.bdz = add nsw i32 %i.bdy, 7
  %i.bea = ashr i32 %i.bdz, 3                     ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdw, i64 32
  %i.bec = load i32, ptr %i.beb, align 8, !tbaa !86
  %i.bed = add nsw i32 %i.bec, 7
  %i.bee = ashr i32 %i.bed, 3                     ; 2 uses
  %i.bef = icmp sgt i32 %i.bee, 0
  br i1 %i.bef, label %.preheader263.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader263.lr.ph.i.i.i.i:                      ; preds = %bb.jp
  %i.beg = icmp sgt i32 %i.bea, 0
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bdw, i64 80
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdw, i64 88
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bdw, i64 20
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16
  br i1 %i.beg, label %.preheader263.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader263.i.i.i.i:                            ; preds = %.preheader263.lr.ph.i.i.i.i, %._crit_edge295.i.i.i.i
  %.0200296.i.i.i.i = phi i32 [ %i.boi, %._crit_edge295.i.i.i.i ], [ 0, %.preheader263.lr.ph.i.i.i.i ] ; 2 uses
  br label %bb.jq

bb.jq:                                            ; preds = %bb.mk, %.preheader263.i.i.i.i
  %.0201293.i.i.i.i = phi i32 [ 0, %.preheader263.i.i.i.i ], [ %i.boh, %bb.mk ] ; 2 uses
  %i.bel = load ptr, ptr %i.beh, align 8, !tbaa !95
  %i.bem = load i32, ptr %i.bei, align 8, !tbaa !96
  %i.ben = mul nsw i32 %i.bem, %.0200296.i.i.i.i
  %i.beo = add nsw i32 %i.ben, %.0201293.i.i.i.i
  %i.bep = shl nsw i32 %i.beo, 6
  %i.beq = sext i32 %i.bep to i64
  %i.ber = getelementptr inbounds [2 x i8], ptr %i.bel, i64 %i.beq ; 5 uses
  %i.bes = load i32, ptr %i.aod, align 4, !tbaa !212 ; 5 uses
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.beu = load i32, ptr %i.bek, align 8, !tbaa !210
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr inbounds [1680 x i8], ptr %i.aou, i64 %i.bev
  %i.bex = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %calloc.i51, ptr noundef %i.ber, ptr noundef %i.bew, i32 noundef %i.bdu)
  %.not229.i.i.i.i = icmp eq i32 %i.bex, 0
  br i1 %.not229.i.i.i.i, label %.loopexit365.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

bb.js:                                            ; preds = %bb.jq
  %i.bey = load i32, ptr %i.bej, align 4, !tbaa !211
  %i.bez = sext i32 %i.bey to i64                 ; 2 uses
  %i.bfa = getelementptr inbounds [1680 x i8], ptr %i.aov, i64 %i.bez ; 10 uses
  %i.bfb = getelementptr inbounds [1024 x i8], ptr %i.aow, i64 %i.bez
  %i.bfc = load i32, ptr %i.aof, align 4, !tbaa !78
  %i.bfd = icmp eq i32 %i.bfc, 0
  %i.bfe = load i32, ptr %i.aog, align 8, !tbaa !79 ; 4 uses
  %i.bff = load i32, ptr %i.aor, align 4, !tbaa !214 ; 3 uses
  %.not166.i.i.i.i.i = icmp eq i32 %i.bff, 0      ; 2 uses
  br i1 %i.bfd, label %bb.jt, label %bb.ky

bb.jt:                                            ; preds = %bb.js
  br i1 %.not166.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.ju

.preheader.i.i.i.i.i:                             ; preds = %bb.jt
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1280
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1024
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1540
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1612
  %.pre267.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bfk = add nsw i32 %i.bff, -1
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.jv:                                            ; preds = %bb.kx, %.preheader.i.i.i.i.i
  %i.bfl = phi i32 [ %i.bjg, %bb.kx ], [ %.pre267.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.0120.i.i.i.i.i = phi i32 [ %.4124.ph.i.i.i.i.i, %bb.kx ], [ %i.bes, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.bfm = icmp slt i32 %i.bfl, 16
  br i1 %i.bfm, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.bfn = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 3 uses
  %i.bfo = lshr i32 %i.bfn, 23
  %i.bfp = zext nneg i32 %i.bfo to i64            ; 2 uses
  %i.bfq = getelementptr inbounds nuw [2 x i8], ptr %i.bfb, i64 %i.bfp
  %i.bfr = load i16, ptr %i.bfq, align 2, !tbaa !41 ; 2 uses
  %i.bfs = sext i16 %i.bfr to i32                 ; 3 uses
  %.not167.i.i.i.i.i = icmp eq i16 %i.bfr, 0
  br i1 %.not167.i.i.i.i.i, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bft = and i32 %i.bfs, 15                     ; 3 uses
  %i.bfu = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bfv = icmp sgt i32 %i.bft, %i.bfu
  br i1 %i.bfv, label %.critedge.sink.split.i.i.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bfw = lshr i32 %i.bfs, 4
  %i.bfx = and i32 %i.bfw, 15
  %i.bfy = add nsw i32 %i.bfx, %.0120.i.i.i.i.i   ; 2 uses
  %i.bfz = shl i32 %i.bfn, %i.bft
  store i32 %i.bfz, ptr %i.aoj, align 8, !tbaa !82
  %i.bga = sub nuw nsw i32 %i.bfu, %i.bft         ; 2 uses
  store i32 %i.bga, ptr %i.aoi, align 4, !tbaa !81
  %i.bgb = add nsw i32 %i.bfy, 1
  %i.bgc = sext i32 %i.bfy to i64
  %i.bgd = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.bgc
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !35
  %i.bgf = lshr i32 %i.bfs, 8
  %i.bgg = shl i32 %i.bgf, %i.bfe
  %i.bgh = trunc i32 %i.bgg to i16
  %i.bgi = zext i8 %i.bge to i64
  %i.bgj = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bgi
  store i16 %i.bgh, ptr %i.bgj, align 2, !tbaa !41
  br label %bb.kx

bb.ka:                                            ; preds = %bb.jx
  %i.bgk = load i32, ptr %i.aoi, align 4, !tbaa !81
  %i.bgl = icmp slt i32 %i.bgk, 16
  br i1 %i.bgl, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre268.i.i.i.i.i = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %.pre269.i.i.i.i.i = lshr i32 %.pre268.i.i.i.i.i, 23
  %.pre270.i.i.i.i.i.a = zext nneg i32 %.pre269.i.i.i.i.i to i64
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.pre-phi271.i.i.i.i.i = phi i64 [ %.pre270.i.i.i.i.i.a, %bb.kb ], [ %i.bfp, %bb.ka ]
  %i.bgm = phi i32 [ %.pre268.i.i.i.i.i, %bb.kb ], [ %i.bfn, %bb.ka ] ; 4 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %.pre-phi271.i.i.i.i.i
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bgo, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bgp = zext i8 %i.bgo to i64                  ; 2 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bfg, i64 %i.bgp
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !35
  %i.bgs = zext i8 %i.bgr to i32                  ; 3 uses
  %i.bgt = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bgu = icmp slt i32 %i.bgt, %i.bgs
  br i1 %i.bgu, label %.critedge.sink.split.i.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bgv = shl i32 %i.bgm, %i.bgs
  store i32 %i.bgv, ptr %i.aoj, align 8, !tbaa !82
  %i.bgw = sub nuw nsw i32 %i.bgt, %i.bgs         ; 2 uses
  store i32 %i.bgw, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

bb.kf:                                            ; preds = %bb.kc
  %i.bgx = lshr i32 %i.bgm, 16
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.kg ], [ 10, %bb.kf ] ; 6 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bfi, i64 %indvars.iv.i.i.i.i.i.i
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !23
  %i.bha = icmp ult i32 %i.bgx, %i.bgz
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1
  br i1 %i.bha, label %bb.kh, label %bb.kg, !llvm.loop !3

bb.kh:                                            ; preds = %bb.kg
  %i.bhb = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32 ; 4 uses
  %i.bhc = icmp eq i64 %indvars.iv.i.i.i.i.i.i, 17
  %i.bhd = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  br i1 %i.bhc, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bhe = add nsw i32 %i.bhd, -16
  store i32 %i.bhe, ptr %i.aoi, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.bhf = icmp slt i32 %i.bhd, %i.bhb
  br i1 %i.bhf, label %.critedge.sink.split.i.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.bhg = sub nuw nsw i32 32, %i.bhb
  %i.bhh = lshr i32 %i.bgm, %i.bhg
  %9 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i.i.i.i.i.i
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %i.bhi = and i32 %10, %i.bhh
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bfj, i64 %indvars.iv.i.i.i.i.i.i
  %i.bhk = load i32, ptr %i.bhj, align 4, !tbaa !23
  %i.bhl = add i32 %i.bhi, %i.bhk                 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i32 %i.bhl, 255
  br i1 %or.cond.i.i.i.i.i.i, label %.critedge.sink.split.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bhm = sub nuw nsw i32 %i.bhd, %i.bhb         ; 2 uses
  store i32 %i.bhm, ptr %i.aoi, align 4, !tbaa !81
  %i.bhn = shl i32 %i.bgm, %i.bhb
  store i32 %i.bhn, ptr %i.aoj, align 8, !tbaa !82
  %i.bho = zext nneg i32 %i.bhl to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i: ; preds = %bb.kl, %bb.ke
  %i.bhp = phi i32 [ %i.bhm, %bb.kl ], [ %i.bgw, %bb.ke ] ; 5 uses
  %.pn308.i.i.i.i.i = phi i64 [ %i.bho, %bb.kl ], [ %i.bgp, %bb.ke ]
  %.1.i.in.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bfh, i64 %.pn308.i.i.i.i.i
  %.1.i.in.i.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i.i, align 1, !tbaa !35 ; 2 uses
  %.1.i.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i.i to i32 ; 2 uses
  %i.bhq = and i32 %.1.i.i.i.i.i.i, 15            ; 6 uses
  %i.bhr = lshr i32 %.1.i.i.i.i.i.i, 4            ; 8 uses
  %i.bhs = icmp eq i32 %i.bhq, 0
  br i1 %i.bhs, label %bb.km, label %bb.kt

bb.km:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bht = icmp ult i8 %.1.i.in.i.i.i.i.i, -16
  br i1 %i.bht, label %bb.kn, label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %i.bhu = shl nuw nsw i32 1, %i.bhr
  store i32 %i.bhu, ptr %i.aor, align 4, !tbaa !214
  %.not168.i.i.i.i.i = icmp eq i32 %i.bhr, 0
  br i1 %.not168.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bhv = icmp slt i32 %i.bhp, %i.bhr
  br i1 %i.bhv, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.bhw = phi i32 [ %.pre.i.i.i.i.i.i, %bb.kp ], [ %i.bhp, %bb.ko ] ; 2 uses
  %i.bhx = icmp slt i32 %i.bhw, %i.bhr
  br i1 %i.bhx, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bhy = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bhz = call i32 @llvm.fshl.i32(i32 %i.bhy, i32 %i.bhy, i32 range(i32 1, 15) %i.bhr) ; 2 uses
  %11 = zext nneg i32 %i.bhr to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !23     ; 2 uses
  %i.bia = xor i32 %13, -1
  %i.bib = and i32 %i.bhz, %i.bia
  store i32 %i.bib, ptr %i.aoj, align 8, !tbaa !82
  %i.bic = and i32 %i.bhz, %13
  %i.bid = sub nuw nsw i32 %i.bhw, %i.bhr
  store i32 %i.bid, ptr %i.aoi, align 4, !tbaa !81
  %i.bie = add i32 %i.bic, -1
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kr, %bb.kq
  %.0.i.i.i.i.i.i = phi i32 [ %i.bie, %bb.kr ], [ -1, %bb.kq ]
  %i.bif = load i32, ptr %i.aor, align 4, !tbaa !214
  %i.big = add i32 %i.bif, %.0.i.i.i.i.i.i
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.ks:                                            ; preds = %bb.km
  %i.bih = add nsw i32 %.0120.i.i.i.i.i, 16
  br label %bb.kx

bb.kt:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bii = add nsw i32 %i.bhr, %.0120.i.i.i.i.i   ; 2 uses
  %i.bij = add nsw i32 %i.bii, 1
  %i.bik = sext i32 %i.bii to i64
  %i.bil = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.bik
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !35
  %i.bin = icmp slt i32 %i.bhp, %i.bhq
  br i1 %i.bin, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i172.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.bio = phi i32 [ %.pre.i172.i.i.i.i.i, %bb.ku ], [ %i.bhp, %bb.kt ] ; 3 uses
  %i.bip = icmp slt i32 %i.bio, %i.bhq
  br i1 %i.bip, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.biq = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 3 uses
  %i.bir = call i32 @llvm.fshl.i32(i32 %i.biq, i32 %i.biq, i32 range(i32 1, 16) %i.bhq) ; 2 uses
  %i.bis = zext nneg i32 %i.bhq to i64            ; 2 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.bis
  %15 = load i32, ptr %14, align 4, !tbaa !23     ; 2 uses
  %i.bit = xor i32 %15, -1
  %i.biu = and i32 %i.bir, %i.bit
  store i32 %i.biu, ptr %i.aoj, align 8, !tbaa !82
  %i.biv = and i32 %i.bir, %15
  %i.biw = sub nuw nsw i32 %i.bio, %i.bhq         ; 2 uses
  store i32 %i.biw, ptr %i.aoi, align 4, !tbaa !81
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bis
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !23
  %.inv.i.i.i.i.i.i = icmp slt i32 %i.biq, 0
  %i.biz = select i1 %.inv.i.i.i.i.i.i, i32 0, i32 %i.biy
  %i.bja = add i32 %i.biz, %i.biv
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kw, %bb.kv
  %i.bjb = phi i32 [ %i.biw, %bb.kw ], [ %i.bio, %bb.kv ]
  %.0.i171.i.i.i.i.i = phi i32 [ %i.bja, %bb.kw ], [ 0, %bb.kv ]
  %i.bjc = shl i32 %.0.i171.i.i.i.i.i, %i.bfe
  %i.bjd = trunc i32 %i.bjc to i16
  %i.bje = zext i8 %i.bim to i64
  %i.bjf = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bje
  store i16 %i.bjd, ptr %i.bjf, align 2, !tbaa !41
  br label %bb.kx

bb.kx:                                            ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, %bb.ks, %bb.jz
  %i.bjg = phi i32 [ %i.bhp, %bb.ks ], [ %i.bjb, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.bga, %bb.jz ]
  %.4124.ph.i.i.i.i.i = phi i32 [ %i.bih, %bb.ks ], [ %i.bij, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.bgb, %bb.jz ] ; 2 uses
  %i.bjh = load i32, ptr %i.aoe, align 8, !tbaa !77
  %.not169.i.i.i.i.i = icmp sgt i32 %.4124.ph.i.i.i.i.i, %i.bjh
  br i1 %.not169.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.jv, !llvm.loop !164

bb.ky:                                            ; preds = %bb.js
  br i1 %.not166.i.i.i.i.i, label %.preheader223.i.i.i.i.i, label %bb.kz

.preheader223.i.i.i.i.i:                          ; preds = %bb.ky
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1280
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1024
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1540
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1612
  %sext155.i.i.i.i.i = shl i32 65536, %i.bfe
  %i.bjm = ashr exact i32 %sext155.i.i.i.i.i, 16  ; 4 uses
  %i.bjn = sub nsw i32 0, %i.bjm                  ; 2 uses
  %i.bjo = trunc nsw i32 %i.bjm to i16            ; 2 uses
  %.pre.i.i55.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.le

bb.kz:                                            ; preds = %bb.ky
  %i.bjp = add nsw i32 %i.bff, -1
  store i32 %i.bjp, ptr %i.aor, align 4, !tbaa !214
  %i.bjq = load i32, ptr %i.aoe, align 8, !tbaa !77
  %.not162248.i.i.i.i.i = icmp sgt i32 %i.bes, %i.bjq
  br i1 %.not162248.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.kz
  %sext165.i.i.i.i.i = shl i32 65536, %i.bfe
  %i.bjr = ashr exact i32 %sext165.i.i.i.i.i, 16  ; 2 uses
  %i.bjs = trunc nsw i32 %i.bjr to i16            ; 2 uses
  %i.bjt = sext i32 %i.bes to i64
  %i.bju = sub i16 0, %i.bjs
  br label %bb.la

bb.la:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.bjt, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.bjv = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i.i
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !35
  %i.bjx = zext i8 %i.bjw to i64
  %i.bjy = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bjx ; 3 uses
  %i.bjz = load i16, ptr %i.bjy, align 2, !tbaa !41
  %.not163.i.i.i.i.i = icmp eq i16 %i.bjz, 0
  br i1 %.not163.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bka = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bkb = icmp slt i32 %i.bka, 1
  br i1 %i.bkb, label %bb.lc, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bkc = icmp slt i32 %.pr.i.i.i.i.i.i, 1
  br i1 %i.bkc, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i: ; preds = %bb.lc, %bb.lb
  %i.bkd = phi i32 [ %.pr.i.i.i.i.i.i, %bb.lc ], [ %i.bka, %bb.lb ]
  %i.bke = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bkf = shl i32 %i.bke, 1
  store i32 %i.bkf, ptr %i.aoj, align 8, !tbaa !82
  %i.bkg = add nsw i32 %i.bkd, -1
  store i32 %i.bkg, ptr %i.aoi, align 4, !tbaa !81
  %.not164.i.i.i.i.i = icmp sgt i32 %i.bke, -1
  br i1 %.not164.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, label %bb.ld

bb.ld:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i
  %i.bkh = load i16, ptr %i.bjy, align 2, !tbaa !41 ; 3 uses
  %i.bki = sext i16 %i.bkh to i32
  %i.bkj = and i32 %i.bjr, %i.bki
  %i.bkk = icmp eq i32 %i.bkj, 0
  br i1 %i.bkk, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i: ; preds = %bb.ld
  %i.bkl = icmp sgt i16 %i.bkh, 0
  %.sink.p.i.i.i.i.i = select i1 %i.bkl, i16 %i.bjs, i16 %i.bju
  %.sink.i.i.i.i.i = add i16 %.sink.p.i.i.i.i.i, %i.bkh
  store i16 %.sink.i.i.i.i.i, ptr %i.bjy, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.sink.split.i.i.i.i.i, %bb.ld, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i, %bb.lc, %bb.la
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.bkm = load i32, ptr %i.aoe, align 8, !tbaa !77
  %i.bkn = sext i32 %i.bkm to i64
  %.not162.not.i.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i.i, %i.bkn
  br i1 %.not162.not.i.i.i.i.i, label %bb.la, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, !llvm.loop !165

bb.le:                                            ; preds = %.loopexit222.i.i.i.i.i, %.preheader223.i.i.i.i.i
  %i.bko = phi i32 [ %i.bny, %.loopexit222.i.i.i.i.i ], [ %.pre.i.i55.i.i.i, %.preheader223.i.i.i.i.i ]
  %.6.i.i.i.i.i = phi i32 [ %.9.i.i.i.i.i, %.loopexit222.i.i.i.i.i ], [ %i.bes, %.preheader223.i.i.i.i.i ] ; 3 uses
  %i.bkp = icmp slt i32 %i.bko, 16
  br i1 %i.bkp, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.bkq = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 5 uses
  %i.bkr = lshr i32 %i.bkq, 23
  %i.bks = zext nneg i32 %i.bkr to i64
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bks
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !35 ; 2 uses
  %.not.i174.i.i.i.i.i = icmp eq i8 %i.bku, -1
  br i1 %.not.i174.i.i.i.i.i, label %bb.lj, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bkv = zext i8 %i.bku to i64                  ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bji, i64 %i.bkv
  %i.bkx = load i8, ptr %i.bkw, align 1, !tbaa !35
  %i.bky = zext i8 %i.bkx to i32                  ; 3 uses
  %i.bkz = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 2 uses
  %i.bla = icmp slt i32 %i.bkz, %i.bky
  br i1 %i.bla, label %.critedge.sink.split.i.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.blb = shl i32 %i.bkq, %i.bky                 ; 2 uses
  store i32 %i.blb, ptr %i.aoj, align 8, !tbaa !82
  %i.blc = sub nuw nsw i32 %i.bkz, %i.bky         ; 2 uses
  store i32 %i.blc, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit179.i.i.i.i.i

bb.lj:                                            ; preds = %bb.lg
  %i.bld = lshr i32 %i.bkq, 16
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %bb.lj
  %indvars.iv.i176.i.i.i.i.i = phi i64 [ %indvars.iv.next.i177.i.i.i.i.i, %bb.lk ], [ 10, %bb.lj ] ; 6 uses
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bjk, i64 %indvars.iv.i176.i.i.i.i.i
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !23
  %i.blg = icmp ult i32 %i.bld, %i.blf
  %indvars.iv.next.i177.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i176.i.i.i.i.i, 1
  br i1 %i.blg, label %bb.ll, label %bb.lk, !llvm.loop !3

bb.ll:                                            ; preds = %bb.lk
  %i.blh = trunc nuw nsw i64 %indvars.iv.i176.i.i.i.i.i to i32 ; 4 uses
  %i.bli = icmp eq i64 %indvars.iv.i176.i.i.i.i.i, 17
  %i.blj = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  br i1 %i.bli, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.blk = add nsw i32 %i.blj, -16
  store i32 %i.blk, ptr %i.aoi, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.ln:                                            ; preds = %bb.ll
  %i.bll = icmp slt i32 %i.blj, %i.blh
  br i1 %i.bll, label %.critedge.sink.split.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.blm = sub nuw nsw i32 32, %i.blh
  %i.bln = lshr i32 %i.bkq, %i.blm
  %16 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i176.i.i.i.i.i
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %i.blo = and i32 %17, %i.bln
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %indvars.iv.i176.i.i.i.i.i
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !23
  %i.blr = add i32 %i.blo, %i.blq                 ; 2 uses
  %or.cond.i178.i.i.i.i.i = icmp ugt i32 %i.blr, 255
  br i1 %or.cond.i178.i.i.i.i.i, label %.critedge.sink.split.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bls = sub nuw nsw i32 %i.blj, %i.blh         ; 2 uses
  store i32 %i.bls, ptr %i.aoi, align 4, !tbaa !81
  %i.blt = shl i32 %i.bkq, %i.blh                 ; 2 uses
  store i32 %i.blt, ptr %i.aoj, align 8, !tbaa !82
  %i.blu = zext nneg i32 %i.blr to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit179.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit179.i.i.i.i.i: ; preds = %bb.lp, %bb.li
  %i.blv = phi i32 [ %i.blt, %bb.lp ], [ %i.blb, %bb.li ]
  %i.blw = phi i32 [ %i.bls, %bb.lp ], [ %i.blc, %bb.li ] ; 6 uses
  %.pn.i.i.i.i.i = phi i64 [ %i.blu, %bb.lp ], [ %i.bkv, %bb.li ]
  %.1.i175.in.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bjj, i64 %.pn.i.i.i.i.i
  %.1.i175.in.i.i.i.i.i = load i8, ptr %.1.i175.in.in.i.i.i.i.i, align 1, !tbaa !35 ; 2 uses
  %.1.i175.i.i.i.i.i = zext i8 %.1.i175.in.i.i.i.i.i to i32 ; 2 uses
  %i.blx = and i32 %.1.i175.i.i.i.i.i, 15
  %i.bly = lshr i32 %.1.i175.i.i.i.i.i, 4         ; 9 uses
  switch i32 %i.blx, label %.critedge.sink.split.i.i.i [
    i32 0, label %bb.lq
    i32 1, label %bb.lw
  ]

bb.lq:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit179.i.i.i.i.i
  %i.blz = icmp ult i8 %.1.i175.in.i.i.i.i.i, -16
  br i1 %i.blz, label %bb.lr, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i

bb.lr:                                            ; preds = %bb.lq
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.bly
  %i.bma = xor i32 %notmask.i.i.i.i.i, -1
  store i32 %i.bma, ptr %i.aor, align 4, !tbaa !214
  %.not156.i.i.i.i.i = icmp eq i32 %i.bly, 0
  br i1 %.not156.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bmb = icmp slt i32 %i.blw, %i.bly
  br i1 %i.bmb, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pre.i181.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.bmc = phi i32 [ %.pre.i181.i.i.i.i.i, %bb.lt ], [ %i.blw, %bb.ls ] ; 3 uses
  %i.bmd = icmp slt i32 %i.bmc, %i.bly
  br i1 %i.bmd, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bme = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bmf = call i32 @llvm.fshl.i32(i32 %i.bme, i32 %i.bme, i32 range(i32 1, 15) %i.bly) ; 2 uses
  %18 = zext nneg i32 %i.bly to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !23     ; 2 uses
  %21 = xor i32 %20, -1
  %i.bmg = and i32 %i.bmf, %21
  store i32 %i.bmg, ptr %i.aoj, align 8, !tbaa !82
  %i.bmh = and i32 %i.bmf, %20
  %i.bmi = sub nuw nsw i32 %i.bmc, %i.bly         ; 2 uses
  store i32 %i.bmi, ptr %i.aoi, align 4, !tbaa !81
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i: ; preds = %bb.lv, %bb.lu
  %i.bmj = phi i32 [ %i.bmi, %bb.lv ], [ %i.bmc, %bb.lu ]
  %.0.i180.i.i.i.i.i = phi i32 [ %i.bmh, %bb.lv ], [ 0, %bb.lu ]
  %i.bmk = load i32, ptr %i.aor, align 4, !tbaa !214
  %i.bml = add nsw i32 %i.bmk, %.0.i180.i.i.i.i.i
  store i32 %i.bml, ptr %i.aor, align 4, !tbaa !214
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i

bb.lw:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit179.i.i.i.i.i
  %i.bmm = icmp slt i32 %i.blw, 1
  br i1 %i.bmm, label %bb.lx, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i

bb.lx:                                            ; preds = %bb.lw
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i185.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  %i.bmn = icmp slt i32 %.pr.i185.i.i.i.i.i, 1
  br i1 %i.bmn, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i, label %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186_crit_edge.i.i.i.i.i

._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186_crit_edge.i.i.i.i.i: ; preds = %bb.lx
  %.pre266.i.i.i.i.i = load i32, ptr %i.aoj, align 8, !tbaa !82
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i: ; preds = %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186_crit_edge.i.i.i.i.i, %bb.lw
  %i.bmo = phi i32 [ %.pre266.i.i.i.i.i, %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186_crit_edge.i.i.i.i.i ], [ %i.blv, %bb.lw ] ; 2 uses
  %i.bmp = phi i32 [ %.pr.i185.i.i.i.i.i, %._ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186_crit_edge.i.i.i.i.i ], [ %i.blw, %bb.lw ]
  %i.bmq = shl i32 %i.bmo, 1
  store i32 %i.bmq, ptr %i.aoj, align 8, !tbaa !82
  %i.bmr = add nsw i32 %i.bmp, -1                 ; 2 uses
  store i32 %i.bmr, ptr %i.aoi, align 4, !tbaa !81
  %.not154323.i.i.i.i.i = icmp slt i32 %i.bmo, 0
  %spec.select.i240.i.i.i.i = select i1 %.not154323.i.i.i.i.i, i32 %i.bjm, i32 %i.bjn
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i, %bb.lx, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i, %bb.lr, %bb.lq
  %i.bms = phi i32 [ %i.bmr, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i ], [ %i.blw, %bb.lq ], [ %i.blw, %bb.lr ], [ %i.bmj, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i ], [ %.pr.i185.i.i.i.i.i, %bb.lx ] ; 2 uses
  %.0115.i.i.i.i.i = phi i32 [ %i.bly, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i ], [ 15, %bb.lq ], [ 64, %bb.lr ], [ 64, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i ], [ %i.bly, %bb.lx ]
  %.0.i.i56.i.i.i = phi i32 [ %spec.select.i240.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.i.i.i.i.i ], [ 0, %bb.lq ], [ 0, %bb.lr ], [ 0, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit182.i.i.i.i.i ], [ %i.bjn, %bb.lx ]
  %i.bmt = load i32, ptr %i.aoe, align 8, !tbaa !77 ; 3 uses
  %.not157250.i.i.i.i.i = icmp sgt i32 %.6.i.i.i.i.i, %i.bmt
  br i1 %.not157250.i.i.i.i.i, label %.loopexit222.i.i.i.i.i, label %.lr.ph253.preheader.i.i.i.i.i

.lr.ph253.preheader.i.i.i.i.i:                    ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i
  %i.bmu = sext i32 %.6.i.i.i.i.i to i64
  br label %.lr.ph253.i.i.i.i.i

.lr.ph253.i.i.i.i.i:                              ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, %.lr.ph253.preheader.i.i.i.i.i
  %i.bmv = phi i32 [ %i.bmt, %.lr.ph253.preheader.i.i.i.i.i ], [ %i.bnu, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ]
  %i.bmw = phi i32 [ %i.bms, %.lr.ph253.preheader.i.i.i.i.i ], [ %i.bnt, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 4 uses
  %indvars.iv263.i.i.i.i.i = phi i64 [ %i.bmu, %.lr.ph253.preheader.i.i.i.i.i ], [ %indvars.iv.next264.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 3 uses
  %.1252.i.i.i.i.i = phi i32 [ %.0115.i.i.i.i.i, %.lr.ph253.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i ] ; 7 uses
  %indvars.iv.next264.i.i.i.i.i = add nsw i64 %indvars.iv263.i.i.i.i.i, 1 ; 3 uses
  %i.bmx = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv263.i.i.i.i.i
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !35
  %i.bmz = zext i8 %i.bmy to i64
  %i.bna = getelementptr inbounds nuw [2 x i8], ptr %i.ber, i64 %i.bmz ; 5 uses
  %i.bnb = load i16, ptr %i.bna, align 2, !tbaa !41
  %.not158.i.i.i.i.i = icmp eq i16 %i.bnb, 0
  br i1 %.not158.i.i.i.i.i, label %bb.me, label %bb.ly

bb.ly:                                            ; preds = %.lr.ph253.i.i.i.i.i
  %i.bnc = icmp slt i32 %i.bmw, 1
  br i1 %i.bnc, label %bb.lz, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i

bb.lz:                                            ; preds = %bb.ly
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  %.pr.i189.i.i.i.i.i = load i32, ptr %i.aoi, align 4, !tbaa !81 ; 3 uses
  %i.bnd = icmp slt i32 %.pr.i189.i.i.i.i.i, 1
  br i1 %i.bnd, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i: ; preds = %bb.lz, %bb.ly
  %i.bne = phi i32 [ %.pr.i189.i.i.i.i.i, %bb.lz ], [ %i.bmw, %bb.ly ]
  %i.bnf = load i32, ptr %i.aoj, align 8, !tbaa !82 ; 2 uses
  %i.bng = shl i32 %i.bnf, 1
  store i32 %i.bng, ptr %i.aoj, align 8, !tbaa !82
  %i.bnh = add nsw i32 %i.bne, -1                 ; 5 uses
  store i32 %i.bnh, ptr %i.aoi, align 4, !tbaa !81
  %.not159.i.i.i.i.i = icmp sgt i32 %i.bnf, -1
  br i1 %.not159.i.i.i.i.i, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i, label %bb.ma

bb.ma:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i
  %i.bni = load i16, ptr %i.bna, align 2, !tbaa !41 ; 4 uses
  %i.bnj = sext i16 %i.bni to i32
  %i.bnk = and i32 %i.bjm, %i.bnj
  %i.bnl = icmp eq i32 %i.bnk, 0
  br i1 %i.bnl, label %bb.mb, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.bnm = icmp sgt i16 %i.bni, 0
  br i1 %i.bnm, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bnn = add i16 %i.bni, %i.bjo
  store i16 %i.bnn, ptr %i.bna, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.md:                                            ; preds = %bb.mb
  %i.bno = sub i16 %i.bni, %i.bjo
  store i16 %i.bno, ptr %i.bna, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

bb.me:                                            ; preds = %.lr.ph253.i.i.i.i.i
  %i.bnp = icmp eq i32 %.1252.i.i.i.i.i, 0
  br i1 %i.bnp, label %.thread219.i.i.i.i.i, label %bb.mf

.thread219.i.i.i.i.i:                             ; preds = %bb.me
  %i.bnq = trunc nsw i64 %indvars.iv.next264.i.i.i.i.i to i32
  %i.bnr = trunc i32 %.0.i.i56.i.i.i to i16
  store i16 %i.bnr, ptr %i.bna, align 2, !tbaa !41
  br label %.loopexit222.i.i.i.i.i

bb.mf:                                            ; preds = %bb.me
  %i.bns = add nsw i32 %.1252.i.i.i.i.i, -1
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i: ; preds = %bb.mf, %bb.md, %bb.mc, %bb.ma, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i, %bb.lz
  %i.bnt = phi i32 [ %i.bmw, %bb.mf ], [ %i.bnh, %bb.mc ], [ %i.bnh, %bb.md ], [ %i.bnh, %bb.ma ], [ %i.bnh, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i ], [ %.pr.i189.i.i.i.i.i, %bb.lz ] ; 2 uses
  %.3.i.i.i.i.i = phi i32 [ %i.bns, %bb.mf ], [ %.1252.i.i.i.i.i, %bb.mc ], [ %.1252.i.i.i.i.i, %bb.md ], [ %.1252.i.i.i.i.i, %bb.ma ], [ %.1252.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.i.i.i.i.i ], [ %.1252.i.i.i.i.i, %bb.lz ]
  %i.bnu = load i32, ptr %i.aoe, align 8, !tbaa !77 ; 3 uses
  %i.bnv = sext i32 %i.bnu to i64
  %.not157.not.i.i.i.i.i = icmp slt i64 %indvars.iv263.i.i.i.i.i, %i.bnv
  br i1 %.not157.not.i.i.i.i.i, label %.lr.ph253.i.i.i.i.i, label %.loopexit222.loopexit.i.i.i.i.i

.loopexit222.loopexit.i.i.i.i.i:                  ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit190.thread.i.i.i.i.i
  %i.bnw = trunc nsw i64 %indvars.iv.next264.i.i.i.i.i to i32
  br label %.loopexit222.i.i.i.i.i

.loopexit222.i.i.i.i.i:                           ; preds = %.loopexit222.loopexit.i.i.i.i.i, %.thread219.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i
  %i.bnx = phi i32 [ %i.bmv, %.thread219.i.i.i.i.i ], [ %i.bmt, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.bnu, %.loopexit222.loopexit.i.i.i.i.i ]
  %i.bny = phi i32 [ %i.bmw, %.thread219.i.i.i.i.i ], [ %i.bms, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.bnt, %.loopexit222.loopexit.i.i.i.i.i ]
  %.9.i.i.i.i.i = phi i32 [ %i.bnq, %.thread219.i.i.i.i.i ], [ %.6.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit186.thread.i.i.i.i.i ], [ %i.bnw, %.loopexit222.loopexit.i.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i.i = icmp sgt i32 %.9.i.i.i.i.i, %i.bnx
  br i1 %.not161.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.le, !llvm.loop !166

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i: ; preds = %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, %bb.kn, %bb.ju
  %.sink.i.i.i.i56 = phi i32 [ %i.bfk, %bb.ju ], [ 0, %bb.kn ], [ %i.big, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i ]
  store i32 %.sink.i.i.i.i56, ptr %i.aor, align 4, !tbaa !214
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i: ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread.i.i.i.i.i, %.loopexit222.i.i.i.i.i, %bb.kx, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, %bb.kz, %bb.jr
  %i.bnz = load i32, ptr %i.aoq, align 4, !tbaa !213 ; 2 uses
  %i.boa = add nsw i32 %i.bnz, -1
  store i32 %i.boa, ptr %i.aoq, align 4, !tbaa !213
  %i.bob = icmp slt i32 %i.bnz, 2
  br i1 %i.bob, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.boc = load i32, ptr %i.aoi, align 4, !tbaa !81
  %i.bod = icmp slt i32 %i.boc, 24
  br i1 %i.bod, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %calloc.i51)
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.boe = load i8, ptr %i.aop, align 8, !tbaa !72 ; 2 uses
  %i.bof = and i8 %i.boe, -8
  %or.cond232.i.i.i.i = icmp eq i8 %i.bof, -48
  br i1 %or.cond232.i.i.i.i, label %bb.mj, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.mj:                                            ; preds = %bb.mi
  store i32 0, ptr %i.aoi, align 4, !tbaa !81
  store i32 0, ptr %i.aoj, align 8, !tbaa !82
  store i32 0, ptr %i.aok, align 4, !tbaa !83
  store i32 0, ptr %i.aol, align 8, !tbaa !84
  store i32 0, ptr %i.aom, align 8, !tbaa !84
  store i32 0, ptr %i.aon, align 8, !tbaa !84
  store i32 0, ptr %i.aoo, align 8, !tbaa !84
  store i8 -1, ptr %i.aop, align 8, !tbaa !72
  %i.bog = load i32, ptr %i.any, align 8, !tbaa !73 ; 2 uses
  %.not.i241.i.i.i.i = icmp eq i32 %i.bog, 0
  %spec.select.i242.i.i.i.i = select i1 %.not.i241.i.i.i.i, i32 2147483647, i32 %i.bog
  store i32 %spec.select.i242.i.i.i.i, ptr %i.aoq, align 4, !tbaa !213
  store i32 0, ptr %i.aor, align 4, !tbaa !214
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.boh = add nuw nsw i32 %.0201293.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i54.i.i.i = icmp eq i32 %i.boh, %i.bea
  br i1 %exitcond.not.i54.i.i.i, label %._crit_edge295.i.i.i.i, label %bb.jq, !llvm.loop !167

._crit_edge295.i.i.i.i:                           ; preds = %bb.mk
  %i.boi = add nuw nsw i32 %.0200296.i.i.i.i, 1   ; 2 uses
  %exitcond338.not.i.i.i.i = icmp eq i32 %i.boi, %i.bee
  br i1 %exitcond338.not.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, label %.preheader263.i.i.i.i, !llvm.loop !168

.preheader268.i.i.i.i:                            ; preds = %.preheader268.lr.ph.i.i.i.i, %._crit_edge291.i.i.i.i
  %i.boj = phi i32 [ %i.bqs, %._crit_edge291.i.i.i.i ], [ %i.bdq, %.preheader268.lr.ph.i.i.i.i ]
  %i.bok = phi i32 [ %i.bqt, %._crit_edge291.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.bol = phi i32 [ %i.bqu, %._crit_edge291.i.i.i.i ], [ %i.bds, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %.0198292.i.i.i.i = phi i32 [ %i.bqv, %._crit_edge291.i.i.i.i ], [ 0, %.preheader268.lr.ph.i.i.i.i ] ; 2 uses
  %i.bom = icmp sgt i32 %i.bol, 0
  br i1 %i.bom, label %.preheader267.i.i.i.i, label %._crit_edge291.i.i.i.i

.preheader267.i.i.i.i:                            ; preds = %.preheader268.i.i.i.i, %bb.mq
  %i.bon = phi i32 [ %i.bqo, %bb.mq ], [ %i.bok, %.preheader268.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZL22stbi__resample_row_h_2PhS_S_ii:bb.a
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 3
  %i.ao = add nuw nsw i32 %i.an, 2                ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ak, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = shl nuw nsw i64 %indvars.iv, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ao, %i.az
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !35
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !474

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.be = shl nuw nsw i32 %i.n, 1
  %i.bf = zext nneg i32 %i.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.037.lcssa = phi i64 [ 2, %bb.c ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i8 %i.bj to i16
  %i.bl = mul nuw nsw i16 %i.bk, 3
  %i.bm = sext i32 %i.n to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, 2
  %i.br = add nuw nsw i16 %i.bq, %i.bl
  %i.bs = lshr i16 %i.br, 2
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.037.lcssa ; 2 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !35
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL26stbi__resample_row_genericPhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #13 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check24 = icmp ult i32 %4, 32
  %i.d = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483644             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1, !tbaa !35   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1, !tbaa !35
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1, !tbaa !35
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !479

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !480

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !81
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !82   ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35    ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread118.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8, !tbaa !82
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !81  ; 3 uses
  br i1 %i.ab, label %.thread118.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread118.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %7 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %i.ag = and i32 %8, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %i.ak = add i32 %i.ag, %i.aj                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ak, 255
  br i1 %or.cond.i, label %.thread118.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.al, ptr %i.a, align 4, !tbaa !81
  %i.am = shl i32 %i.f, %i.aa
  store i32 %i.am, ptr %i.e, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.ap, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !35 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread118.sink.split, label %bb.l

bb.l:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !81  ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.1.i
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !81
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = phi i32 [ %.pre.i, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.at = icmp slt i32 %i.as, %.1.i
  br i1 %i.at, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.aw = zext nneg i8 %.1.i.in to i64            ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.aw
  %10 = load i32, ptr %9, align 4, !tbaa !23      ; 2 uses
  %i.ax = xor i32 %10, -1
  %i.ay = and i32 %i.av, %i.ax
  store i32 %i.ay, ptr %i.e, align 8, !tbaa !82
  %i.az = and i32 %i.av, %10
  %i.ba = sub nuw nsw i32 %i.as, %.1.i
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !81
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %.inv.i = icmp slt i32 %i.au, 0
  %i.bd = select i1 %.inv.i, i32 0, i32 %i.bc
  %i.be = add i32 %i.bd, %i.az
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %bb.p, %bb.o, %bb.l
  %i.bf = phi i32 [ 0, %bb.l ], [ %i.be, %bb.p ], [ 0, %bb.o ] ; 5 uses
  %i.bg = sext i32 %5 to i64
  %i.bh = getelementptr [96 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 18104  ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !84 ; 5 uses
  %i.bk = xor i32 %i.bj, %i.bf
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %_ZL19stbi__addints_validii.exit, label %_ZL19stbi__addints_validii.exit.thread

_ZL19stbi__addints_validii.exit:                  ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %i.bm = and i32 %i.bj, %i.bf
  %i.bn = sub nsw i32 2147483647, %i.bf
  %i.bo = icmp sgt i32 %i.bj, %i.bn
  %i.bp = sub nsw i32 -2147483648, %i.bf
  %i.bq = icmp slt i32 %i.bj, %i.bp
  %or.cond.not.i121 = icmp slt i32 %i.bm, 0
  %.0.shrunk.i = select i1 %or.cond.not.i121, i1 %i.bq, i1 %i.bo
  br i1 %.0.shrunk.i, label %.thread118.sink.split, label %_ZL19stbi__addints_validii.exit.thread

_ZL19stbi__addints_validii.exit.thread:           ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, %_ZL19stbi__addints_validii.exit
  %i.br = add nsw i32 %i.bj, %i.bf                ; 3 uses
  store i32 %i.br, ptr %i.bi, align 8, !tbaa !84
  %i.bs = trunc i32 %i.br to i16                  ; 4 uses
  %i.bt = load i16, ptr %6, align 2, !tbaa !41    ; 7 uses
  %i.bu = add i16 %i.bt, 1
  %or.cond.i83 = icmp ult i16 %i.bu, 2
  br i1 %or.cond.i83, label %_ZL22stbi__mul2shorts_validss.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZL19stbi__addints_validii.exit.thread
  %sext = shl i32 %i.br, 16
  %i.bv = ashr exact i32 %sext, 16
  %i.bw = xor i16 %i.bt, %i.bs
  %i.bx = icmp sgt i16 %i.bw, -1
  br i1 %i.bx, label %_ZL22stbi__mul2shorts_validss.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = icmp slt i16 %i.bt, 0
  br i1 %i.by, label %.split147, label %.split

.split147:                                        ; preds = %bb.r
  %.nonneg15.i = sub i16 0, %i.bt
  %i.bz = udiv i16 -32768, %.nonneg15.i
  %.not149 = icmp slt i16 %i.bz, %i.bs
  br i1 %.not149, label %.thread118.sink.split, label %_ZL22stbi__mul2shorts_validss.exit.thread

.split:                                           ; preds = %bb.r
  %i.ca = udiv i16 -32768, %i.bt
  %.zext20.i = zext i16 %i.ca to i32
  %.neg.i = sub nsw i32 0, %.zext20.i
  %.not148 = icmp slt i32 %i.bv, %.neg.i
  br i1 %.not148, label %.thread118.sink.split, label %_ZL22stbi__mul2shorts_validss.exit.thread

_ZL22stbi__mul2shorts_validss.exit:               ; preds = %bb.q
  %i.cb = sdiv i16 32767, %i.bt
  %.not150 = icmp slt i16 %i.cb, %i.bs
  br i1 %.not150, label %.thread118.sink.split, label %_ZL22stbi__mul2shorts_validss.exit.thread

_ZL22stbi__mul2shorts_validss.exit.thread:        ; preds = %.split147, %.split, %_ZL19stbi__addints_validii.exit.thread, %_ZL22stbi__mul2shorts_validss.exit
  %i.cc = mul i16 %i.bt, %i.bs
  store i16 %i.cc, ptr %1, align 2, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %.pre = load i32, ptr %i.a, align 4, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.ao, %_ZL22stbi__mul2shorts_validss.exit.thread
  %i.ch = phi i32 [ %.pre, %_ZL22stbi__mul2shorts_validss.exit.thread ], [ %i.fq, %bb.ao ]
  %.066 = phi i32 [ 1, %_ZL22stbi__mul2shorts_validss.exit.thread ], [ %.4.ph, %bb.ao ] ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 16
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cj = load i32, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.ck = lshr i32 %i.cj, 23
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !41 ; 3 uses
  %.not80 = icmp eq i16 %i.cn, 0
  br i1 %.not80, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %i.cp = and i32 %i.co, 15                       ; 3 uses
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !81  ; 2 uses
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.thread118.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = lshr i32 %i.co, 4
  %i.ct = and i32 %i.cs, 15
  %i.cu = add nsw i32 %i.ct, %.066                ; 2 uses
  %i.cv = shl i32 %i.cj, %i.cp
  store i32 %i.cv, ptr %i.e, align 8, !tbaa !82
  %i.cw = sub nuw nsw i32 %i.cq, %i.cp            ; 2 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !81
  %i.cx = add nsw i32 %i.cu, 1
  %i.cy = sext i32 %i.cu to i64
  %i.cz = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !35
  %i.db = ashr i16 %i.cn, 8
  %i.dc = zext i8 %i.da to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !41
  %i.df = mul i16 %i.de, %i.db
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dc
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !41
  br label %bb.ao

bb.x:                                             ; preds = %bb.u
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !81
  %i.di = icmp slt i32 %i.dh, 16
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre122 = load i32, ptr %i.e, align 8, !tbaa !82 ; 2 uses
  %.pre123 = lshr i32 %.pre122, 23
  %.pre124 = zext nneg i32 %.pre123 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi125 = phi i64 [ %.pre124, %bb.y ], [ %i.cl, %bb.x ]
  %i.dj = phi i32 [ %.pre122, %bb.y ], [ %i.cj, %bb.x ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi125
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !35  ; 2 uses
  %.not.i86 = icmp eq i8 %i.dl, -1
  br i1 %.not.i86, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dp = zext i8 %i.do to i32                    ; 3 uses
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !81  ; 2 uses
  %i.dr = icmp slt i32 %i.dq, %i.dp
  br i1 %i.dr, label %.thread118.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = shl i32 %i.dj, %i.dp
  store i32 %i.ds, ptr %i.e, align 8, !tbaa !82
  %i.dt = sub nuw nsw i32 %i.dq, %i.dp            ; 2 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit91

bb.ac:                                            ; preds = %bb.z
  %i.du = lshr i32 %i.dj, 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %bb.ad ], [ 10, %bb.ac ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i88
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !23
  %i.dx = icmp ult i32 %i.du, %i.dw
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1
  br i1 %i.dx, label %bb.ae, label %bb.ad, !llvm.loop !3

bb.ae:                                            ; preds = %bb.ad
  %i.dy = trunc nuw nsw i64 %indvars.iv.i88 to i32 ; 4 uses
  %i.dz = icmp eq i64 %indvars.iv.i88, 17
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !81  ; 3 uses
  br i1 %i.dz, label %.thread118.sink.split.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = icmp slt i32 %i.ea, %i.dy
  br i1 %i.eb, label %.thread118.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = sub nuw nsw i32 32, %i.dy
  %i.ed = lshr i32 %i.dj, %i.ec
  %11 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i88
  %12 = load i32, ptr %11, align 4, !tbaa !23
  %i.ee = and i32 %12, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i88
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !23
  %i.eh = add i32 %i.ee, %i.eg                    ; 2 uses
  %or.cond.i90 = icmp ugt i32 %i.eh, 255
  br i1 %or.cond.i90, label %.thread118.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = sub nuw nsw i32 %i.ea, %i.dy            ; 2 uses
  store i32 %i.ei, ptr %i.a, align 4, !tbaa !81
  %i.ej = shl i32 %i.dj, %i.dy
  store i32 %i.ej, ptr %i.e, align 8, !tbaa !82
  %i.ek = zext nneg i32 %i.eh to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit91

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit91: ; preds = %bb.ah, %bb.ab
  %i.el = phi i32 [ %i.ei, %bb.ah ], [ %i.dt, %bb.ab ] ; 3 uses
  %.pn = phi i64 [ %i.ek, %bb.ah ], [ %i.dm, %bb.ab ]
  %.1.i87.in.in = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pn
  %.1.i87.in = load i8, ptr %.1.i87.in.in, align 1, !tbaa !35 ; 2 uses
  %.1.i87 = zext i8 %.1.i87.in to i32             ; 2 uses
  %i.em = and i32 %.1.i87, 15                     ; 6 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit91
  %.not81 = icmp eq i8 %.1.i87.in, -16
  br i1 %.not81, label %bb.aj, label %.thread118

bb.aj:                                            ; preds = %bb.ai
  %i.eo = add nsw i32 %.066, 16
  br label %bb.ao

bb.ak:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit91
  %i.ep = lshr i32 %.1.i87, 4
  %i.eq = add nsw i32 %i.ep, %.066                ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !35
  %i.ev = icmp slt i32 %i.el, %i.em
  br i1 %i.ev, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i94 = load i32, ptr %i.a, align 4, !tbaa !81
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ew = phi i32 [ %.pre.i94, %bb.al ], [ %i.el, %bb.ak ] ; 3 uses
  %i.ex = icmp slt i32 %i.ew, %i.em
  br i1 %i.ex, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit95, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = load i32, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 range(i32 1, 16) %i.em) ; 2 uses
  %i.fa = zext nneg i32 %i.em to i64              ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.fa
  %14 = load i32, ptr %13, align 4, !tbaa !23     ; 2 uses
  %i.fb = xor i32 %14, -1
  %i.fc = and i32 %i.ez, %i.fb
  store i32 %i.fc, ptr %i.e, align 8, !tbaa !82
  %i.fd = and i32 %i.ez, %14
  %i.fe = sub nuw nsw i32 %i.ew, %i.em            ; 2 uses
  store i32 %i.fe, ptr %i.a, align 4, !tbaa !81
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.fa
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !23
  %.inv.i92 = icmp slt i32 %i.ey, 0
  %i.fh = select i1 %.inv.i92, i32 0, i32 %i.fg
  %i.fi = add i32 %i.fh, %i.fd
  %i.fj = trunc i32 %i.fi to i16
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit95

_ZL20stbi__extend_receiveP10stbi__jpegi.exit95:   ; preds = %bb.am, %bb.an
  %i.fk = phi i32 [ %i.fe, %bb.an ], [ %i.ew, %bb.am ]
  %.0.i93 = phi i16 [ %i.fj, %bb.an ], [ 0, %bb.am ]
  %i.fl = zext i8 %i.eu to i64                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !41
  %i.fo = mul i16 %i.fn, %.0.i93
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fl
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.w, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit95, %bb.aj
  %i.fq = phi i32 [ %i.el, %bb.aj ], [ %i.fk, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit95 ], [ %i.cw, %bb.w ]
  %.4.ph = phi i32 [ %i.eo, %bb.aj ], [ %i.er, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit95 ], [ %i.cx, %bb.w ] ; 2 uses
  %i.fr = icmp slt i32 %.4.ph, 64
  br i1 %i.fr, label %bb.s, label %.thread118, !llvm.loop !481

.thread118.sink.split.sink.split:                 ; preds = %bb.ae, %bb.h
  %.lcssa.sink = phi i32 [ %i.ac, %bb.h ], [ %i.ea, %bb.ae ]
  %i.fs = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fs, ptr %i.a, align 4, !tbaa !81
  br label %.thread118.sink.split

.thread118.sink.split:                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.v, %.thread118.sink.split.sink.split, %_ZL22stbi__mul2shorts_validss.exit, %.split, %.split147, %_ZL19stbi__addints_validii.exit, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit, %bb.d, %bb.i, %bb.j
  %.str.67.sink = phi ptr [ @.str.69, %.split ], [ @.str.69, %_ZL22stbi__mul2shorts_validss.exit ], [ @.str.68, %_ZL19stbi__addints_validii.exit ], [ @.str.67, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ], [ @.str.67, %bb.j ], [ @.str.67, %bb.i ], [ @.str.67, %bb.d ], [ @.str.67, %.thread118.sink.split.sink.split ], [ @.str.69, %.split147 ], [ @.str.67, %bb.v ], [ @.str.67, %bb.aa ], [ @.str.67, %bb.af ], [ @.str.67, %bb.ag ]
  store ptr %.str.67.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.thread118

.thread118:                                       ; preds = %bb.ao, %bb.ai, %.thread118.sink.split
  %.472 = phi i32 [ 0, %.thread118.sink.split ], [ 1, %bb.ai ], [ 1, %bb.ao ]
  ret i32 %.472
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !83
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !81 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %i.f = add nuw i32 %smax, 7
  %i.g = sub i32 %i.f, %.promoted
  %i.h = and i32 %i.g, -8
  %i.i = add i32 %.promoted, %i.h
  %i.j = add i32 %i.i, 8
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  br label %.loopexit

.splitthread-pre-split:                           ; preds = %.thread
  %.pr = load i32, ptr %i.a, align 4, !tbaa !83
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split
  %i.l = load ptr, ptr %0, align 8, !tbaa !70     ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !33
  %i.s = load i8, ptr %i.n, align 1, !tbaa !35
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = tail call noundef i32 %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab), !inline_history !5 ; 2 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !31
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !31
  %i.an = icmp eq i32 %i.ac, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %i.z, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 %i.ap
  %.pre.i = load i8, ptr %i.z, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.g, %bb.f
  %i.ar = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.aq, %bb.g ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store ptr %i.as, ptr %i.m, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ %i.ar, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 2 uses
  %i.at = icmp eq i8 %.0.i, -1
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !70    ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !33
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !30
  %.not.i18 = icmp eq i32 %i.bd, 0
  br i1 %.not.i18, label %_ZL10stbi__get8P13stbi__context.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = tail call noundef i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.bk), !inline_history !5 ; 2 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !31
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !31
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store i8 0, ptr %i.bi, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.by = sext i32 %i.bl to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %.pre.i19 = load i8, ptr %i.bi, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

_ZL19stbi__refill_bufferP13stbi__context.exit.i20: ; preds = %bb.n, %bb.m
  %i.ca = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.ax, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store ptr %i.cb, ptr %i.av, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

_ZL10stbi__get8P13stbi__context.exit23.preheader: ; preds = %bb.j, %bb.k, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20
  %.016.in.ph = phi i8 [ %i.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20 ], [ %i.bb, %bb.j ], [ 0, %bb.k ]
  br label %_ZL10stbi__get8P13stbi__context.exit23

_ZL10stbi__get8P13stbi__context.exit23:           ; preds = %_ZL10stbi__get8P13stbi__context.exit23.backedge, %_ZL10stbi__get8P13stbi__context.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %_ZL10stbi__get8P13stbi__context.exit23.preheader ], [ %.016.in.be, %_ZL10stbi__get8P13stbi__context.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.cc = load ptr, ptr %0, align 8, !tbaa !70    ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !33
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

_ZL10stbi__get8P13stbi__context.exit23.backedge:  ; preds = %bb.p, %bb.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26
  %.016.in.be = phi i8 [ %i.cj, %bb.p ], [ %i.di, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26 ], [ 0, %bb.q ]
  br label %_ZL10stbi__get8P13stbi__context.exit23, !llvm.loop !482

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !30
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %_ZL10stbi__get8P13stbi__context.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.ct = tail call noundef i32 %i.cn(ptr noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.cs), !inline_history !5 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !32
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 184 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !31
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !31
  %i.de = icmp eq i32 %i.ct, 0
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store i8 0, ptr %i.cq, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.dg = sext i32 %i.ct to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %.pre.i25 = load i8, ptr %i.cq, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

_ZL19stbi__refill_bufferP13stbi__context.exit.i26: ; preds = %bb.t, %bb.s
  %i.di = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.cf, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store ptr %i.dj, ptr %i.cd, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

bb.u:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.dk, align 8, !tbaa !72
  store i32 1, ptr %i.a, align 4, !tbaa !83
  br label %.loopexit

.thread:                                          ; preds = %_ZL10stbi__get8P13stbi__context.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %_ZL10stbi__get8P13stbi__context.exit23 ]
  %i.dl = zext i8 %.shrunk to i32
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !81  ; 3 uses
  %i.dn = sub nsw i32 24, %i.dm
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !82
  %i.dq = or i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.c, align 8, !tbaa !82
  %i.dr = add nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !81
  %i.ds = icmp slt i32 %i.dm, 17
  br i1 %i.ds, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !483

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.69, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81
  %i.e = icmp slt i32 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !tbaa !81
  %i.j = icmp slt i32 %i.i, 16
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82   ; 5 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35    ; 2 uses
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.r = zext i8 %i.p to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !81   ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = shl i32 %i.l, %i.u
  store i32 %i.x, ptr %i.k, align 8, !tbaa !82
  %i.y = sub nuw nsw i32 %i.v, %i.u               ; 2 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = lshr i32 %i.l, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23
  %i.af = icmp ult i32 %i.ab, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.af, label %bb.m, label %bb.l, !llvm.loop !3

bb.m:                                             ; preds = %bb.l
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ah = icmp eq i64 %indvars.iv.i, 17
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !81  ; 3 uses
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ai, -16
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ak = icmp slt i32 %i.ai, %i.ag
  br i1 %i.ak, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i32 32, %i.ag
  %i.am = lshr i32 %i.l, %i.al
  %4 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i
  %5 = load i32, ptr %4, align 4, !tbaa !23
  %i.an = and i32 %5, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !23
  %i.ar = add i32 %i.an, %i.aq                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ar, 255
  br i1 %or.cond.i, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = sub nuw nsw i32 %i.ai, %i.ag            ; 2 uses
  store i32 %i.as, ptr %i.c, align 4, !tbaa !81
  %i.at = shl i32 %i.l, %i.ag
  store i32 %i.at, ptr %i.k, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.j, %bb.q
  %i.ax = phi i32 [ %i.as, %bb.q ], [ %i.y, %bb.j ] ; 2 uses
  %.1.i.in.in = phi ptr [ %i.aw, %bb.q ], [ %i.aa, %bb.j ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !35 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.r

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread: ; preds = %bb.p, %bb.o, %bb.i, %bb.n, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  store ptr @.str.69, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

bb.r:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  %.not32 = icmp eq i8 %.1.i.in, 0
  br i1 %.not32, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp slt i32 %i.ax, %.1.i
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = phi i32 [ %.pre.i, %bb.t ], [ %i.ax, %bb.s ] ; 2 uses
  %i.ba = icmp slt i32 %i.az, %.1.i
  br i1 %i.ba, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !82  ; 3 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.bd = zext nneg i8 %.1.i.in to i64            ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.bd
  %7 = load i32, ptr %6, align 4, !tbaa !23       ; 2 uses
  %i.be = xor i32 %7, -1
  %i.bf = and i32 %i.bc, %i.be
  store i32 %i.bf, ptr %i.k, align 8, !tbaa !82
  %i.bg = and i32 %i.bc, %7
  %i.bh = sub nuw nsw i32 %i.az, %.1.i
  store i32 %i.bh, ptr %i.c, align 4, !tbaa !81
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bd
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %.inv.i = icmp slt i32 %i.bb, 0
  %i.bk = select i1 %.inv.i, i32 0, i32 %i.bj
  %i.bl = add i32 %i.bk, %i.bg
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %bb.v, %bb.u, %bb.r
  %i.bm = phi i32 [ 0, %bb.r ], [ %i.bl, %bb.v ], [ 0, %bb.u ] ; 5 uses
  %i.bn = sext i32 %3 to i64
  %i.bo = getelementptr [96 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 18104  ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !84 ; 5 uses
  %i.br = xor i32 %i.bq, %i.bm
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %_ZL19stbi__addints_validii.exit, label %_ZL19stbi__addints_validii.exit.thread

_ZL19stbi__addints_validii.exit:                  ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %i.bt = and i32 %i.bq, %i.bm
  %i.bu = sub nsw i32 2147483647, %i.bm
  %i.bv = icmp sgt i32 %i.bq, %i.bu
  %i.bw = sub nsw i32 -2147483648, %i.bm
  %i.bx = icmp slt i32 %i.bq, %i.bw
  %or.cond.not.i50 = icmp slt i32 %i.bt, 0
  %.0.shrunk.i = select i1 %or.cond.not.i50, i1 %i.bx, i1 %i.bv
  br i1 %.0.shrunk.i, label %bb.w, label %_ZL19stbi__addints_validii.exit.thread

bb.w:                                             ; preds = %_ZL19stbi__addints_validii.exit
  store ptr @.str.68, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

_ZL19stbi__addints_validii.exit.thread:           ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit, %_ZL19stbi__addints_validii.exit
  %i.by = add nsw i32 %i.bq, %i.bm                ; 4 uses
  store i32 %i.by, ptr %i.bp, align 8, !tbaa !84
  %i.bz = trunc i32 %i.by to i16                  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !79 ; 4 uses
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = trunc i32 %i.cc to i16                  ; 4 uses
  %i.ce = add i16 %i.cd, 1
  %or.cond.i36 = icmp ult i16 %i.ce, 2
  br i1 %or.cond.i36, label %_ZL22stbi__mul2shorts_validss.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZL19stbi__addints_validii.exit.thread
  %sext = shl i32 %i.by, 16
  %i.cf = ashr exact i32 %sext, 16
  %i.cg = xor i16 %i.cd, %i.bz
  %i.ch = icmp sgt i16 %i.cg, -1
  br i1 %i.ch, label %_ZL22stbi__mul2shorts_validss.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp slt i16 %i.cd, 0
  br i1 %i.ci, label %.split61, label %.split

.split61:                                         ; preds = %bb.y
  %.nonneg15.i = sub i16 0, %i.cd
  %i.cj = udiv i16 -32768, %.nonneg15.i
  %.not63.a = icmp slt i16 %i.cj, %i.bz
  br i1 %.not63.a, label %bb.z, label %_ZL22stbi__mul2shorts_validss.exit.thread

.split:                                           ; preds = %bb.y
  %i.ck = trunc i32 %i.cb to i16
  %i.cl = lshr exact i16 -32768, %i.ck
  %.zext20.i = zext i16 %i.cl to i32
  %.neg.i = sub nsw i32 0, %.zext20.i
  %.not62 = icmp slt i32 %i.cf, %.neg.i
  br i1 %.not62, label %bb.z, label %_ZL22stbi__mul2shorts_validss.exit.thread

_ZL22stbi__mul2shorts_validss.exit:               ; preds = %bb.x
  %i.cm = trunc i32 %i.cb to i16
  %i.cn = lshr i16 32767, %i.cm
  %.not64 = icmp slt i16 %i.cn, %i.bz
  br i1 %.not64, label %bb.z, label %_ZL22stbi__mul2shorts_validss.exit.thread

bb.z:                                             ; preds = %.split61, %.split, %_ZL22stbi__mul2shorts_validss.exit
  store ptr @.str.69, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

_ZL22stbi__mul2shorts_validss.exit.thread:        ; preds = %.split61, %.split, %_ZL19stbi__addints_validii.exit.thread, %_ZL22stbi__mul2shorts_validss.exit
  %i.co = shl i32 %i.by, %i.cb
  %i.cp = trunc i32 %i.co to i16
  store i16 %i.cp, ptr %1, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

bb.aa:                                            ; preds = %bb.e
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !81  ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.c, align 4, !tbaa !81 ; 2 uses
  %i.cs = icmp slt i32 %.pr.i, 1
  br i1 %i.cs, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit:        ; preds = %bb.aa, %bb.ab
  %i.ct = phi i32 [ %.pr.i, %bb.ab ], [ %i.cq, %bb.aa ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !82 ; 2 uses
  %i.cw = shl i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !82
  %i.cx = add nsw i32 %i.ct, -1
  store i32 %i.cx, ptr %i.c, align 4, !tbaa !81
  %.not31 = icmp sgt i32 %i.cv, -1
  br i1 %.not31, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !79
  %i.da = shl nuw i32 1, %i.cz
  %i.db = load i16, ptr %1, align 2, !tbaa !41
  %i.dc = trunc i32 %i.da to i16
  %i.dd = add i16 %i.db, %i.dc
  store i16 %i.dd, ptr %1, align 2, !tbaa !41
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.thread: ; preds = %bb.ab, %_ZL22stbi__mul2shorts_validss.exit.thread, %bb.ac, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit, %bb.z, %bb.w, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread ], [ 0, %bb.w ], [ 0, %bb.z ], [ 1, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit ], [ 1, %bb.ac ], [ 1, %_ZL22stbi__mul2shorts_validss.exit.thread ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 17) i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef nonnull initializes((192, 208)) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %.not = icmp eq ptr %1, null
  %.not30 = icmp eq ptr %2, null
  %.not31 = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !36
  %i.h = icmp ult ptr %i.c, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !33
  %i.j = load i8, ptr %i.c, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = tail call noundef i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %i.s), !inline_history !5 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !31
  %i.ad = icmp eq i32 %i.t, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.q, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.af = sext i32 %i.t to i64
  %i.ag = getelementptr inbounds i8, ptr %i.q, i64 %i.af
  %.pre.i = load i8, ptr %i.q, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.ah = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.g, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.aj = phi ptr [ %i.c, %bb.b ], [ %i.v, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %i.f, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.i, %bb.b ], [ %i.ai, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.c, %bb.c ] ; 3 uses
end_hunk_2
