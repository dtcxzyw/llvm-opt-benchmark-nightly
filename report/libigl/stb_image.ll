Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], ptr, ptr, ptr, ptr }
%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__gif = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x [4 x i8]], [256 x [4 x i8]], [8192 x %struct.stbi__gif_lzw], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__gif_lzw = type { i16, i8, i8 }
%struct.stbi__zbuf = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.stbi__zhuffman, %struct.stbi__zhuffman }
%struct.stbi__zhuffman = type { [512 x i16], [16 x i16], [17 x i32], [16 x i16], [288 x i8], [288 x i16] }
%struct.stbi__bmp_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__png = type { ptr, ptr, ptr, ptr, i32 }
%struct.stbi__write_context = type { ptr, ptr }
%struct.stbi__resample = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stbi__pic_packet = type { i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@_ZL22stbi__g_failure_reason = internal unnamed_addr global ptr null, align 8
@_ZL29stbi__vertically_flip_on_load = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"can't fopen\00", align 1
@_ZL15stbi__l2h_gamma = internal unnamed_addr global float 2.200000e+00, align 4
@_ZL15stbi__l2h_scale = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL17stbi__h2l_gamma_i = internal unnamed_addr global float f0x3EE8BA2E, align 4
@_ZL17stbi__h2l_scale_i = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL27stbi__unpremultiply_on_load = internal unnamed_addr global i32 0, align 4
@_ZL20stbi__de_iphone_flag = internal unnamed_addr global i32 0, align 4
@stbi_write_png_compression_level = dso_local local_unnamed_addr global i32 8, align 4
@stbi__flip_vertically_on_write = dso_local local_unnamed_addr global i32 0, align 4
@stbi_write_tga_with_rle = dso_local local_unnamed_addr global i32 1, align 4
@stbi_write_force_png_filter = dso_local local_unnamed_addr global i32 -1, align 4
@_ZZ18stbi_zlib_compressE7lengthc = internal unnamed_addr constant [30 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 259], align 16
@_ZZ18stbi_zlib_compressE8lengtheb = internal unnamed_addr constant [29 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\03\03\03\03\04\04\04\04\05\05\05\05\00", align 16
@_ZZ18stbi_zlib_compressE5distc = internal unnamed_addr constant [31 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 -32768], align 16
@_ZZ18stbi_zlib_compressE6disteb = internal unnamed_addr constant [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D", align 16
@__const.stbi_write_png_to_mem.ctype = private unnamed_addr constant [5 x i32] [i32 -1, i32 0, i32 4, i32 2, i32 6], align 16
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZL21stbi__stdio_callbacks = internal unnamed_addr constant %struct.stbi_io_callbacks { ptr @_ZL16stbi__stdio_readPvPci, ptr @_ZL16stbi__stdio_skipPvi, ptr @_ZL15stbi__stdio_eofPv }, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"no SOI\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"no SOF\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@_ZL19stbi__jpeg_dezigzag = internal unnamed_addr constant [79 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>????????????????", align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"bad COM len\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"bad APP len\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"unknown marker\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"bad code lengths\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"bad SOF len\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"only 8-bit\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"no header height\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"0 width\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"bad component count\00", align 1
@_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb = internal unnamed_addr constant [3 x i8] c"RGB", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"bad H\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"bad V\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"bad TQ\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"bad DNL len\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"bad DNL height\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"bad SOS component count\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"bad SOS len\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"bad DC huff\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"bad AC huff\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"bad SOS\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@_ZL11stbi__bmask = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@_ZL11stbi__jbias = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@.str.37 = private unnamed_addr constant [22 x i8] c"can't merge dc and ac\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"bad png sig\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"multiple IHDR\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"bad IHDR len\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"1/2/4/8/16-bit only\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"bad ctype\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"bad comp method\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"bad filter method\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"bad interlace method\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"0-pixel image\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"first not IHDR\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"invalid PLTE\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"tRNS after IDAT\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"tRNS before PLTE\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"bad tRNS len\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"tRNS with alpha\00", align 1
@_ZL23stbi__depth_scale_table = internal unnamed_addr constant [9 x i8] c"\00\FFU\00\11\00\00\00\01", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"no PLTE\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"outofdata\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"no IDAT\00", align 1
@_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk = internal global [25 x i8] c"XXXX PNG chunk not known\00", align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@.str.56 = private unnamed_addr constant [18 x i8] c"not enough pixels\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"invalid filter\00", align 1
@_ZL16first_row_filter = internal unnamed_addr constant [5 x i8] c"\00\01\00\05\06", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"bad bpp\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"bad masks\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"not BMP\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"unknown BMP\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"bad BMP\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"BMP RLE\00", align 1
@_ZZL17stbi__shiftsignedjiiE9mul_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 255, i32 85, i32 73, i32 17, i32 33, i32 65, i32 129, i32 1], align 16
@_ZZL17stbi__shiftsignedjiiE11shift_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 4, i32 6, i32 0], align 16
@.str.65 = private unnamed_addr constant [21 x i8] c"bad Image Descriptor\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"missing color table\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"not GIF\00", align 1
@.str.69 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"no clear code\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"too many codes\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"illegal code in raster\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"not PSD\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"wrong version\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"wrong channel count\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"unsupported bit depth\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"wrong color format\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"corrupt\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"S\80\F64\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"PICT\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"bad file\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"max value > 255\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"not HDR\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"unsupported format\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"unsupported data layout\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"invalid decoded scanline length\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"bad palette\00", align 1
@_ZL21stbi__zdefault_length = internal constant [288 x i8] c"\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08", align 16
@_ZL23stbi__zdefault_distance = internal constant [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@.str.95 = private unnamed_addr constant [16 x i8] c"bad zlib header\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"no preset dict\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"zlib corrupt\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"read past buffer\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"output buffer limit\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"bad sizes\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@_ZL18stbi__zlength_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@_ZL19stbi__zlength_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@_ZL16stbi__zdist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@_ZL17stbi__zdist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@.str.102 = private unnamed_addr constant [9 x i8] c"bad dist\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"#?RADIANCE\0A\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"11 4 22 44 44 22 444444\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"111 221 2222 11\00", align 1
@__const._ZL19stbi_write_hdr_coreP19stbi__write_contextiiiPf.header = private unnamed_addr constant [66 x i8] c"#?RADIANCE\0A# Written by stb_image_write.h\0AFORMAT=32-bit_rle_rgbe\0A\00", align 16
@.str.107 = private unnamed_addr constant [49 x i8] c"EXPOSURE=          1.0000000000000\0A\0A-Y %d +X %d\0A\00", align 1
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
@switch.table._ZL14stbi__tga_testP13stbi__context = private unnamed_addr constant [25 x i8] c"\01\00\00\00\00\00\00\01\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01", align 4
@switch.table._ZL14stbi__tga_infoP13stbi__contextPiS1_S1_ = private unnamed_addr constant [25 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @stbi_failure_reason() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL29stbi__vertically_flip_on_load, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 13 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !26
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = call noundef i32 %i.h(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !139 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  store ptr %i.f, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 208
  store ptr %.sink.i.i.i.i, ptr %i.p, align 8, !tbaa !37
  %i.q = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %.neg.i = sub i64 %i.u, %i.t
  %sext.i = shl i64 %.neg.i, 32
  %i.v = ashr exact i64 %sext.i, 32
  %i.w = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.v, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file.exit

stbi_load_from_file.exit:                         ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.x = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %spec.select.i239.i.i.i.i = select i1 %.not.i238.i.i.i.i, i32 2147483647, i32 %i.ox ; 2 uses
  store i32 %spec.select.i239.i.i.i.i, ptr %i.au, align 4, !tbaa !335
  store i32 0, ptr %i.av, align 4, !tbaa !336
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge304.i.i.i.i
  %i.oy = phi i32 [ %i.or, %._crit_edge304.i.i.i.i ], [ %spec.select.i239.i.i.i.i, %bb.bu ] ; 2 uses
  %i.oz = add nuw nsw i32 %.0206305.i.i.i.i, 1    ; 2 uses
  %i.pa = load i32, ptr %i.ax, align 8, !tbaa !100 ; 2 uses
  %i.pb = icmp slt i32 %i.oz, %i.pa
  br i1 %i.pb, label %.preheader256.i.i.i.i, label %._crit_edge306.loopexit.i.i.i.i, !llvm.loop !266

._crit_edge306.loopexit.i.i.i.i:                  ; preds = %bb.bv
  %.pre354.i.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !99
  br label %._crit_edge306.i.i.i.i

._crit_edge306.i.i.i.i:                           ; preds = %._crit_edge306.loopexit.i.i.i.i, %.preheader257.i.i.i.i
  %i.pc = phi i32 [ %.pre354.i.i.i.i, %._crit_edge306.loopexit.i.i.i.i ], [ %i.mh, %.preheader257.i.i.i.i ] ; 2 uses
  %i.pd = phi i32 [ %i.oy, %._crit_edge306.loopexit.i.i.i.i ], [ %i.mi, %.preheader257.i.i.i.i ]
  %i.pe = phi i32 [ %i.pa, %._crit_edge306.loopexit.i.i.i.i ], [ %i.mj, %.preheader257.i.i.i.i ]
  %i.pf = add nuw nsw i32 %.0205307.i.i.i.i, 1    ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.pc
  br i1 %i.pg, label %.preheader257.i.i.i.i, label %.critedge.i57.i.i.i, !llvm.loop !267

.critedge.i57.i.i.i:                              ; preds = %._crit_edge306.i.i.i.i, %bb.bt, %.lr.ph298.i.i.i.i, %.preheader257.lr.ph.i.i.i.i, %bb.bp
  %.11.i.i.i.i = phi i32 [ 1, %bb.bp ], [ 1, %.preheader257.lr.ph.i.i.i.i ], [ 1, %bb.bt ], [ 0, %.lr.ph298.i.i.i.i ], [ 1, %._crit_edge306.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i

bb.bw:                                            ; preds = %_ZL25stbi__process_scan_headerP10stbi__jpeg.exit.i.i.i
  br i1 %i.kh, label %bb.bx, label %.preheader269.i.i.i.i

.preheader269.i.i.i.i:                            ; preds = %bb.bw
  %i.ph = load i32, ptr %i.aw, align 4, !tbaa !99 ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.preheader267.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader267.lr.ph.i.i.i.i:                      ; preds = %.preheader269.i.i.i.i
  %i.pj = load i32, ptr %i.ax, align 8, !tbaa !100 ; 2 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %.preheader267.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.pl = load i32, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [96 x i8], ptr %i.x, i64 %i.pm ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !94
  %i.pq = add nsw i32 %i.pp, 7
  %i.pr = ashr i32 %i.pq, 3                       ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !95
  %i.pu = add nsw i32 %i.pt, 7
  %i.pv = ashr i32 %i.pu, 3                       ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.preheader262.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader262.lr.ph.i.i.i.i:                      ; preds = %bb.bx
  %i.px = icmp sgt i32 %i.pr, 0
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 80
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pn, i64 88
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  br i1 %i.px, label %.preheader262.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader262.i.i.i.i:                            ; preds = %.preheader262.lr.ph.i.i.i.i, %._crit_edge295.i.i.i.i
  %.0200296.i.i.i.i = phi i32 [ %i.zt, %._crit_edge295.i.i.i.i ], [ 0, %.preheader262.lr.ph.i.i.i.i ] ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.em, %.preheader262.i.i.i.i
  %.0201293.i.i.i.i = phi i32 [ 0, %.preheader262.i.i.i.i ], [ %i.zs, %bb.em ] ; 2 uses
  %i.qc = load ptr, ptr %i.py, align 8, !tbaa !104
  %i.qd = load i32, ptr %i.pz, align 8, !tbaa !105
  %i.qe = mul nsw i32 %i.qd, %.0200296.i.i.i.i
  %i.qf = add nsw i32 %i.qe, %.0201293.i.i.i.i
  %i.qg = shl nsw i32 %i.qf, 6
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qh ; 5 uses
  %i.qj = load i32, ptr %i.ah, align 4, !tbaa !334 ; 5 uses
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ql = load i32, ptr %i.qb, align 8, !tbaa !332
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [1680 x i8], ptr %i.ay, i64 %i.qm
  %i.qo = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %i.s, ptr noundef %i.qi, ptr noundef nonnull %i.qn, i32 noundef %i.pl)
  %.not229.i.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not229.i.i.i.i, label %.loopexit353.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.qp = load i32, ptr %i.qa, align 4, !tbaa !333
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = getelementptr inbounds [1680 x i8], ptr %i.az, i64 %i.qq ; 10 uses
  %i.qs = getelementptr inbounds [1024 x i8], ptr %i.ba, i64 %i.qq
  %i.qt = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.qu = icmp eq i32 %i.qt, 0
  %i.qv = load i32, ptr %i.ak, align 8, !tbaa !88 ; 5 uses
  %i.qw = load i32, ptr %i.av, align 4, !tbaa !336 ; 3 uses
  %.not163.i.i.i.i.i = icmp eq i32 %i.qw, 0       ; 2 uses
  br i1 %i.qu, label %bb.cb, label %bb.da

bb.cb:                                            ; preds = %bb.ca
  br i1 %.not163.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.cc

.preheader.i.i.i.i.i:                             ; preds = %bb.cb
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  %.pre250.i.i.i.i.i.a = load i32, ptr %i.am, align 4, !tbaa !90
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rb = add nsw i32 %i.qw, -1
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.cd:                                            ; preds = %bb.cz, %.preheader.i.i.i.i.i
  %i.rc = phi i32 [ %i.uu, %bb.cz ], [ %.pre250.i.i.i.i.i.a, %.preheader.i.i.i.i.i ]
  %.0118.i.i.i.i.i = phi i32 [ %.4122.ph.i.i.i.i.i, %bb.cz ], [ %i.qj, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.rd = icmp slt i32 %i.rc, 16
  br i1 %i.rd, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.re = load i32, ptr %i.an, align 8, !tbaa !91 ; 3 uses
  %i.rf = lshr i32 %i.re, 23
  %i.rg = zext nneg i32 %i.rf to i64              ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !41 ; 2 uses
  %.not164.i.i.i.i.i = icmp eq i16 %i.ri, 0
  br i1 %.not164.i.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rj = sext i16 %i.ri to i32                   ; 3 uses
  %i.rk = lshr i32 %i.rj, 4
  %i.rl = and i32 %i.rk, 15
  %i.rm = add nsw i32 %i.rl, %.0118.i.i.i.i.i     ; 2 uses
  %i.rn = and i32 %i.rj, 15                       ; 2 uses
  %i.ro = shl i32 %i.re, %i.rn
  store i32 %i.ro, ptr %i.an, align 8, !tbaa !91
  %i.rp = load i32, ptr %i.am, align 4, !tbaa !90
  %i.rq = sub nsw i32 %i.rp, %i.rn                ; 2 uses
  store i32 %i.rq, ptr %i.am, align 4, !tbaa !90
  %i.rr = add nsw i32 %i.rm, 1
  %i.rs = sext i32 %i.rm to i64
  %i.rt = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !34
  %i.rv = lshr i32 %i.rj, 8
  %i.rw = shl i32 %i.rv, %i.qv
  %i.rx = trunc i32 %i.rw to i16
  %i.ry = zext i8 %i.ru to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.ry
  store i16 %i.rx, ptr %i.rz, align 2, !tbaa !41
  br label %bb.cz

bb.ch:                                            ; preds = %bb.cf
  %i.sa = load i32, ptr %i.am, align 4, !tbaa !90
  %i.sb = icmp slt i32 %i.sa, 16
  br i1 %i.sb, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre251.i.i.i.i.i.a = load i32, ptr %i.an, align 8, !tbaa !91 ; 2 uses
  %.pre255.i.i.i.i.i = lshr i32 %.pre251.i.i.i.i.i.a, 23
  %.pre256.i.i.i.i.i.a = zext nneg i32 %.pre255.i.i.i.i.i to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pre-phi257.i.i.i.i.i = phi i64 [ %.pre256.i.i.i.i.i.a, %bb.ci ], [ %i.rg, %bb.ch ]
  %i.sc = phi i32 [ %.pre251.i.i.i.i.i.a, %bb.ci ], [ %i.re, %bb.ch ] ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.pre-phi257.i.i.i.i.i
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !34  ; 2 uses
  %.not.i.i.i55.i.i.i = icmp eq i8 %i.se, -1
  br i1 %.not.i.i.i55.i.i.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sf = zext i8 %i.se to i64                    ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !34
  %i.si = zext i8 %i.sh to i32                    ; 3 uses
  %i.sj = load i32, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.sk = icmp slt i32 %i.sj, %i.si
  br i1 %i.sk, label %.critedge.sink.split.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sl = shl i32 %i.sc, %i.si                    ; 2 uses
  store i32 %i.sl, ptr %i.an, align 8, !tbaa !91
  %i.sm = sub nuw nsw i32 %i.sj, %i.si            ; 2 uses
  store i32 %i.sm, ptr %i.am, align 4, !tbaa !90
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cj
  %i.sn = lshr i32 %i.sc, 16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.cn ], [ 10, %bb.cm ] ; 6 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.i.i.i.i.i.i
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !24
  %i.sq = icmp ult i32 %i.sn, %i.sp
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1
  br i1 %i.sq, label %bb.co, label %bb.cn, !llvm.loop !6

bb.co:                                            ; preds = %bb.cn
  %i.sr = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32 ; 4 uses
  %i.ss = icmp eq i64 %indvars.iv.i.i.i.i.i.i, 17
  %i.st = load i32, ptr %i.am, align 4, !tbaa !90 ; 3 uses
  br i1 %i.ss, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.su = add nsw i32 %i.st, -16
  store i32 %i.su, ptr %i.am, align 4, !tbaa !90
  br label %.critedge.sink.split.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.sv = icmp slt i32 %i.st, %i.sr
  br i1 %i.sv, label %.critedge.sink.split.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.sw = sub nuw nsw i32 32, %i.sr
  %i.sx = lshr i32 %i.sc, %i.sw
  %11 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i.i.i.i.i.i
  %12 = load i32, ptr %11, align 4, !tbaa !24
  %i.sy = and i32 %12, %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv.i.i.i.i.i.i
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !24
  %i.tb = add i32 %i.sy, %i.ta
  %i.tc = sub nuw nsw i32 %i.st, %i.sr            ; 2 uses
  store i32 %i.tc, ptr %i.am, align 4, !tbaa !90
  %i.td = shl i32 %i.sc, %i.sr                    ; 2 uses
  store i32 %i.td, ptr %i.an, align 8, !tbaa !91
  %i.te = sext i32 %i.tb to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i: ; preds = %bb.cr, %bb.cl
  %i.tf = phi i32 [ %i.td, %bb.cr ], [ %i.sl, %bb.cl ] ; 2 uses
  %i.tg = phi i32 [ %i.tc, %bb.cr ], [ %i.sm, %bb.cl ] ; 5 uses
  %.pn286.i.i.i.i.i = phi i64 [ %i.te, %bb.cr ], [ %i.sf, %bb.cl ]
  %.1.i.in.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.qy, i64 %.pn286.i.i.i.i.i
  %.1.i.in.i.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i.i, align 1, !tbaa !34 ; 2 uses
  %.1.i.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i.i to i32 ; 2 uses
  %i.th = and i32 %.1.i.i.i.i.i.i, 15             ; 5 uses
  %i.ti = lshr i32 %.1.i.i.i.i.i.i, 4             ; 7 uses
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.tk = icmp ult i8 %.1.i.in.i.i.i.i.i, -16
  br i1 %i.tk, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.tl = shl nuw nsw i32 1, %i.ti                ; 2 uses
  store i32 %i.tl, ptr %i.av, align 4, !tbaa !336
  %.not165.i.i.i.i.i = icmp eq i32 %i.ti, 0
  br i1 %.not165.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tm = icmp samesign ult i32 %i.tg, %i.ti
  br i1 %i.tm, label %bb.cv, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i.i.i56.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  %.pre253.i.i.i.i.i.a = load i32, ptr %i.an, align 8, !tbaa !91
  %.pre254.i.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !336
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %i.tn = phi i32 [ %.pre254.i.i.i.i.i, %bb.cv ], [ %i.tl, %bb.cu ]
  %i.to = phi i32 [ %.pre253.i.i.i.i.i.a, %bb.cv ], [ %i.tf, %bb.cu ] ; 2 uses
  %i.tp = phi i32 [ %.pre.i.i.i56.i.i.i, %bb.cv ], [ %i.tg, %bb.cu ]
  %i.tq = call i32 @llvm.fshl.i32(i32 %i.to, i32 %i.to, i32 range(i32 1, 15) %i.ti) ; 2 uses
  %13 = zext nneg i32 %i.ti to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !24     ; 2 uses
  %i.tr = xor i32 %15, -1
  %i.ts = and i32 %i.tq, %i.tr
  store i32 %i.ts, ptr %i.an, align 8, !tbaa !91
  %i.tt = and i32 %15, %i.tq
  %i.tu = sub nsw i32 %i.tp, %i.ti
  store i32 %i.tu, ptr %i.am, align 4, !tbaa !90
  %i.tv = add i32 %i.tn, -1
  %i.tw = add i32 %i.tv, %i.tt
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.cw:                                            ; preds = %bb.cs
  %i.tx = add nsw i32 %.0118.i.i.i.i.i, 16
  br label %bb.cz

bb.cx:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.ty = add nsw i32 %i.ti, %.0118.i.i.i.i.i     ; 2 uses
  %i.tz = add nsw i32 %i.ty, 1
  %i.ua = sext i32 %i.ty to i64
  %i.ub = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !34
  %i.ud = icmp samesign ult i32 %i.tg, %i.th
  br i1 %i.ud, label %bb.cy, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i168.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  %.pre252.i.i.i.i.i.a = load i32, ptr %i.an, align 8, !tbaa !91
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.cy, %bb.cx
  %i.ue = phi i32 [ %.pre252.i.i.i.i.i.a, %bb.cy ], [ %i.tf, %bb.cx ] ; 3 uses
  %i.uf = phi i32 [ %.pre.i168.i.i.i.i.i, %bb.cy ], [ %i.tg, %bb.cx ]
  %i.ug = call i32 @llvm.fshl.i32(i32 %i.ue, i32 %i.ue, i32 %i.th) ; 2 uses
  %i.uh = zext nneg i32 %i.th to i64              ; 2 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.uh
  %17 = load i32, ptr %16, align 4, !tbaa !24     ; 2 uses
  %i.ui = xor i32 %17, -1
  %i.uj = and i32 %i.ug, %i.ui
  store i32 %i.uj, ptr %i.an, align 8, !tbaa !91
  %i.uk = and i32 %17, %i.ug
  %i.ul = sub nsw i32 %i.uf, %i.th                ; 2 uses
  store i32 %i.ul, ptr %i.am, align 4, !tbaa !90
  %i.um = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.uh
  %i.un = load i32, ptr %i.um, align 4, !tbaa !24
  %isnotneg.inv.i.i.i.i.i.i = icmp slt i32 %i.ue, 0
  %i.uo = select i1 %isnotneg.inv.i.i.i.i.i.i, i32 0, i32 %i.un
  %i.up = add i32 %i.uo, %i.uk
  %i.uq = shl i32 %i.up, %i.qv
  %i.ur = trunc i32 %i.uq to i16
  %i.us = zext i8 %i.uc to i64
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.us
  store i16 %i.ur, ptr %i.ut, align 2, !tbaa !41
  br label %bb.cz

bb.cz:                                            ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, %bb.cw, %bb.cg
  %i.uu = phi i32 [ %i.tg, %bb.cw ], [ %i.ul, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.rq, %bb.cg ]
  %.4122.ph.i.i.i.i.i = phi i32 [ %i.tx, %bb.cw ], [ %i.tz, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.rr, %bb.cg ] ; 2 uses
  %i.uv = load i32, ptr %i.ai, align 8, !tbaa !86
  %.not166.i.i.i.i.i = icmp sgt i32 %.4122.ph.i.i.i.i.i, %i.uv
  br i1 %.not166.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.cd, !llvm.loop !268

bb.da:                                            ; preds = %bb.ca
  br i1 %.not163.i.i.i.i.i, label %.preheader204.i.i.i.i.i, label %bb.db

.preheader204.i.i.i.i.i:                          ; preds = %bb.da
  %i.uw = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.ux = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.uy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.uz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  %sext157.i.i.i.i.i = shl i32 65536, %i.qv
  %i.va = ashr exact i32 %sext157.i.i.i.i.i, 16   ; 2 uses
  %i.vb = trunc nsw i32 %i.va to i16              ; 2 uses
  %.pre.i.i53.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  br label %bb.dh

bb.db:                                            ; preds = %bb.da
  %i.vc = add nsw i32 %i.qw, -1
  store i32 %i.vc, ptr %i.av, align 4, !tbaa !336
  %i.vd = load i32, ptr %i.ai, align 8, !tbaa !86
  %.not159227.i.i.i.i.i = icmp sgt i32 %i.qj, %i.vd
  br i1 %.not159227.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.db
  %sext162.i.i.i.i.i = shl i32 65536, %i.qv
  %i.ve = ashr exact i32 %sext162.i.i.i.i.i, 16   ; 2 uses
  %i.vf = trunc nsw i32 %i.ve to i16              ; 2 uses
  %i.vg = sext i32 %i.qj to i64
  %i.vh = sub i16 0, %i.vf
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dg, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.vg, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.dg ] ; 3 uses
  %i.vi = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i.i
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !34
  %i.vk = zext i8 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.vk ; 3 uses
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !41
  %.not160.i.i.i.i.i = icmp eq i16 %i.vm, 0
  br i1 %.not160.i.i.i.i.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vn = load i32, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.vo = icmp slt i32 %i.vn, 1
  br i1 %i.vo, label %bb.de, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i169.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  %i.vp = phi i32 [ %.pre.i169.i.i.i.i.i, %bb.de ], [ %i.vn, %bb.dd ]
  %i.vq = load i32, ptr %i.an, align 8, !tbaa !91 ; 2 uses
  %i.vr = shl i32 %i.vq, 1
  store i32 %i.vr, ptr %i.an, align 8, !tbaa !91
  %i.vs = add nsw i32 %i.vp, -1
  store i32 %i.vs, ptr %i.am, align 4, !tbaa !90
  %.not161.i.i.i.i.i = icmp sgt i32 %i.vq, -1
  br i1 %.not161.i.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i
  %i.vt = load i16, ptr %i.vl, align 2, !tbaa !41 ; 3 uses
  %i.vu = sext i16 %i.vt to i32
  %i.vv = and i32 %i.ve, %i.vu
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %.sink.split.i.i.i.i.i, label %bb.dg

.sink.split.i.i.i.i.i:                            ; preds = %bb.df
  %i.vx = icmp sgt i16 %i.vt, 0
  %.sink.p.i.i.i.i.i = select i1 %i.vx, i16 %i.vf, i16 %i.vh
  %.sink.i.i.i.i.i = add i16 %.sink.p.i.i.i.i.i, %i.vt
  store i16 %.sink.i.i.i.i.i, ptr %i.vl, align 2, !tbaa !41
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.df, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i, %bb.dc
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.vy = load i32, ptr %i.ai, align 8, !tbaa !86
  %i.vz = sext i32 %i.vy to i64
  %.not159.not.i.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i.i, %i.vz
  br i1 %.not159.not.i.i.i.i.i, label %bb.dc, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, !llvm.loop !269

bb.dh:                                            ; preds = %.loopexit.i.i.i.i.i, %.preheader204.i.i.i.i.i
  %i.wa = phi i32 [ %i.zj, %.loopexit.i.i.i.i.i ], [ %.pre.i.i53.i.i.i, %.preheader204.i.i.i.i.i ]
  %.6.i.i.i.i.i = phi i32 [ %.9.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %i.qj, %.preheader204.i.i.i.i.i ] ; 3 uses
  %i.wb = icmp slt i32 %i.wa, 16
  br i1 %i.wb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.wc = load i32, ptr %i.an, align 8, !tbaa !91 ; 5 uses
  %i.wd = lshr i32 %i.wc, 23
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !34  ; 2 uses
  %.not.i170.i.i.i.i.i = icmp eq i8 %i.wg, -1
  br i1 %.not.i170.i.i.i.i.i, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wh = zext i8 %i.wg to i64                    ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !34
  %i.wk = zext i8 %i.wj to i32                    ; 3 uses
  %i.wl = load i32, ptr %i.am, align 4, !tbaa !90 ; 2 uses
  %i.wm = icmp slt i32 %i.wl, %i.wk
  br i1 %i.wm, label %.critedge.sink.split.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wn = shl i32 %i.wc, %i.wk                    ; 2 uses
  store i32 %i.wn, ptr %i.an, align 8, !tbaa !91
  %i.wo = sub nuw nsw i32 %i.wl, %i.wk            ; 2 uses
  store i32 %i.wo, ptr %i.am, align 4, !tbaa !90
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dj
  %i.wp = lshr i32 %i.wc, 16
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %bb.dm
  %indvars.iv.i172.i.i.i.i.i = phi i64 [ %indvars.iv.next.i173.i.i.i.i.i, %bb.dn ], [ 10, %bb.dm ] ; 6 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv.i172.i.i.i.i.i
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !24
  %i.ws = icmp ult i32 %i.wp, %i.wr
  %indvars.iv.next.i173.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i172.i.i.i.i.i, 1
  br i1 %i.ws, label %bb.do, label %bb.dn, !llvm.loop !6

bb.do:                                            ; preds = %bb.dn
  %i.wt = trunc nuw nsw i64 %indvars.iv.i172.i.i.i.i.i to i32 ; 4 uses
  %i.wu = icmp eq i64 %indvars.iv.i172.i.i.i.i.i, 17
  %i.wv = load i32, ptr %i.am, align 4, !tbaa !90 ; 3 uses
  br i1 %i.wu, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ww = add nsw i32 %i.wv, -16
  store i32 %i.ww, ptr %i.am, align 4, !tbaa !90
  br label %.critedge.sink.split.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.wx = icmp slt i32 %i.wv, %i.wt
  br i1 %i.wx, label %.critedge.sink.split.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wy = sub nuw nsw i32 32, %i.wt
  %i.wz = lshr i32 %i.wc, %i.wy
  %18 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i172.i.i.i.i.i
  %19 = load i32, ptr %18, align 4, !tbaa !24
  %i.xa = and i32 %19, %i.wz
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv.i172.i.i.i.i.i
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !24
  %i.xd = add i32 %i.xa, %i.xc
  %i.xe = sub nuw nsw i32 %i.wv, %i.wt            ; 2 uses
  store i32 %i.xe, ptr %i.am, align 4, !tbaa !90
  %i.xf = shl i32 %i.wc, %i.wt                    ; 2 uses
  store i32 %i.xf, ptr %i.an, align 8, !tbaa !91
  %i.xg = sext i32 %i.xd to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i: ; preds = %bb.dr, %bb.dl
  %i.xh = phi i32 [ %i.xf, %bb.dr ], [ %i.wn, %bb.dl ] ; 4 uses
  %i.xi = phi i32 [ %i.xe, %bb.dr ], [ %i.wo, %bb.dl ] ; 6 uses
  %.pn.i.i.i.i.i = phi i64 [ %i.xg, %bb.dr ], [ %i.wh, %bb.dl ]
  %.1.i171.in.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ux, i64 %.pn.i.i.i.i.i
  %.1.i171.in.i.i.i.i.i = load i8, ptr %.1.i171.in.in.i.i.i.i.i, align 1, !tbaa !34 ; 2 uses
  %.1.i171.i.i.i.i.i = zext i8 %.1.i171.in.i.i.i.i.i to i32 ; 2 uses
  %i.xj = and i32 %.1.i171.i.i.i.i.i, 15
  %i.xk = lshr i32 %.1.i171.i.i.i.i.i, 4          ; 7 uses
  switch i32 %i.xj, label %.critedge.sink.split.i.i.i [
    i32 0, label %bb.ds
    i32 1, label %bb.dw
  ]

bb.ds:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i
  %i.xl = icmp ult i8 %.1.i171.in.i.i.i.i.i, -16
  br i1 %i.xl, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.xk
  %i.xm = xor i32 %notmask.i.i.i.i.i, -1          ; 2 uses
  store i32 %i.xm, ptr %i.av, align 4, !tbaa !336
  %.not153.i.i.i.i.i = icmp eq i32 %i.xk, 0
  br i1 %.not153.i.i.i.i.i, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xn = icmp samesign ult i32 %i.xi, %i.xk
  br i1 %i.xn, label %bb.dv, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i175.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  %.pre247.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !91
  %.pre248.i.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !336
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i: ; preds = %bb.dv, %bb.du
  %i.xo = phi i32 [ %.pre248.i.i.i.i.i, %bb.dv ], [ %i.xm, %bb.du ]
  %i.xp = phi i32 [ %.pre247.i.i.i.i.i, %bb.dv ], [ %i.xh, %bb.du ] ; 2 uses
  %i.xq = phi i32 [ %.pre.i175.i.i.i.i.i, %bb.dv ], [ %i.xi, %bb.du ]
  %i.xr = call i32 @llvm.fshl.i32(i32 %i.xp, i32 %i.xp, i32 range(i32 1, 15) %i.xk) ; 2 uses
  %20 = zext nneg i32 %i.xk to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !24     ; 2 uses
  %23 = xor i32 %22, -1
  %i.xs = and i32 %i.xr, %23                      ; 2 uses
  store i32 %i.xs, ptr %i.an, align 8, !tbaa !91
  %i.xt = and i32 %22, %i.xr
  %i.xu = sub nsw i32 %i.xq, %i.xk                ; 2 uses
  store i32 %i.xu, ptr %i.am, align 4, !tbaa !90
  %i.xv = add nsw i32 %i.xt, %i.xo
  store i32 %i.xv, ptr %i.av, align 4, !tbaa !336
  br label %bb.dy

bb.dw:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i
  %i.xw = icmp eq i32 %i.xi, 0
  br i1 %i.xw, label %bb.dx, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i177.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  %.pre246.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !91
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i: ; preds = %bb.dx, %bb.dw
  %i.xx = phi i32 [ %.pre246.i.i.i.i.i, %bb.dx ], [ %i.xh, %bb.dw ] ; 2 uses
  %i.xy = phi i32 [ %.pre.i177.i.i.i.i.i, %bb.dx ], [ %i.xi, %bb.dw ]
  %i.xz = shl i32 %i.xx, 1                        ; 2 uses
  store i32 %i.xz, ptr %i.an, align 8, !tbaa !91
  %i.ya = add nsw i32 %i.xy, -1                   ; 2 uses
  store i32 %i.ya, ptr %i.am, align 4, !tbaa !90
  %.not151233.inv.i.i.i.i.i = icmp sgt i32 %i.xx, -1
  %..v.i.i.i.i.i = select i1 %.not151233.inv.i.i.i.i.i, i32 -1, i32 1
  %..i.i.i.i.i = shl i32 %..v.i.i.i.i.i, %i.qv
  %i.yb = trunc i32 %..i.i.i.i.i to i16
  br label %bb.dy

bb.dy:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i, %bb.dt, %bb.ds
  %i.yc = phi i32 [ %i.xh, %bb.dt ], [ %i.xh, %bb.ds ], [ %i.xz, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ %i.xs, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %i.yd = phi i32 [ %i.xi, %bb.dt ], [ %i.xi, %bb.ds ], [ %i.ya, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ %i.xu, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ] ; 2 uses
  %.0113.i.i.i.i.i = phi i32 [ 64, %bb.dt ], [ 15, %bb.ds ], [ %i.xk, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ 64, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %.0.i.i54.i.i.i = phi i16 [ 0, %bb.dt ], [ 0, %bb.ds ], [ %i.yb, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ 0, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %i.ye = load i32, ptr %i.ai, align 8, !tbaa !86 ; 3 uses
  %.not154229.i.i.i.i.i = icmp sgt i32 %.6.i.i.i.i.i, %i.ye
  br i1 %.not154229.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph232.preheader.i.i.i.i.i

.lr.ph232.preheader.i.i.i.i.i:                    ; preds = %bb.dy
  %i.yf = sext i32 %.6.i.i.i.i.i to i64
  br label %.lr.ph232.i.i.i.i.i

.lr.ph232.i.i.i.i.i:                              ; preds = %bb.eh, %.lr.ph232.preheader.i.i.i.i.i
  %i.yg = phi i32 [ %i.ye, %.lr.ph232.preheader.i.i.i.i.i ], [ %i.zf, %bb.eh ]
  %i.yh = phi i32 [ %i.yc, %.lr.ph232.preheader.i.i.i.i.i ], [ %i.zd, %bb.eh ] ; 2 uses
  %i.yi = phi i32 [ %i.yd, %.lr.ph232.preheader.i.i.i.i.i ], [ %i.ze, %bb.eh ] ; 4 uses
  %indvars.iv243.i.i.i.i.i = phi i64 [ %i.yf, %.lr.ph232.preheader.i.i.i.i.i ], [ %indvars.iv.next244.i.i.i.i.i, %bb.eh ] ; 3 uses
  %.1231.i.i.i.i.i = phi i32 [ %.0113.i.i.i.i.i, %.lr.ph232.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %bb.eh ] ; 6 uses
  %indvars.iv.next244.i.i.i.i.i = add nsw i64 %indvars.iv243.i.i.i.i.i, 1 ; 3 uses
  %i.yj = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv243.i.i.i.i.i
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !34
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.yl ; 5 uses
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !41
  %.not155.i.i.i.i.i = icmp eq i16 %i.yn, 0
  br i1 %.not155.i.i.i.i.i, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph232.i.i.i.i.i
  %i.yo = icmp slt i32 %i.yi, 1
  br i1 %i.yo, label %bb.ea, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i

bb.ea:                                            ; preds = %bb.dz
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  %.pre.i179.i.i.i.i.i = load i32, ptr %i.am, align 4, !tbaa !90
  %.pre249.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !91
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %i.yp = phi i32 [ %.pre249.i.i.i.i.i, %bb.ea ], [ %i.yh, %bb.dz ] ; 2 uses
  %i.yq = phi i32 [ %.pre.i179.i.i.i.i.i, %bb.ea ], [ %i.yi, %bb.dz ]
  %i.yr = shl i32 %i.yp, 1                        ; 5 uses
  store i32 %i.yr, ptr %i.an, align 8, !tbaa !91
  %i.ys = add nsw i32 %i.yq, -1                   ; 5 uses
  store i32 %i.ys, ptr %i.am, align 4, !tbaa !90
  %.not156.i.i.i.i.i = icmp sgt i32 %i.yp, -1
  br i1 %.not156.i.i.i.i.i, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i
  %i.yt = load i16, ptr %i.ym, align 2, !tbaa !41 ; 4 uses
  %i.yu = sext i16 %i.yt to i32
  %i.yv = and i32 %i.va, %i.yu
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %bb.ec, label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  %i.yx = icmp sgt i16 %i.yt, 0
  br i1 %i.yx, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.yy = add i16 %i.yt, %i.vb
  store i16 %i.yy, ptr %i.ym, align 2, !tbaa !41
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.yz = sub i16 %i.yt, %i.vb
  store i16 %i.yz, ptr %i.ym, align 2, !tbaa !41
  br label %bb.eh

bb.ef:                                            ; preds = %.lr.ph232.i.i.i.i.i
  %i.za = icmp eq i32 %.1231.i.i.i.i.i, 0
  br i1 %i.za, label %.thread201.i.i.i.i.i, label %bb.eg

.thread201.i.i.i.i.i:                             ; preds = %bb.ef
  %i.zb = trunc nsw i64 %indvars.iv.next244.i.i.i.i.i to i32
  store i16 %.0.i.i54.i.i.i, ptr %i.ym, align 2, !tbaa !41
  br label %.loopexit.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.zc = add nsw i32 %.1231.i.i.i.i.i, -1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ee, %bb.ed, %bb.eb, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i
  %i.zd = phi i32 [ %i.yh, %bb.eg ], [ %i.yr, %bb.ed ], [ %i.yr, %bb.ee ], [ %i.yr, %bb.eb ], [ %i.yr, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ]
  %i.ze = phi i32 [ %i.yi, %bb.eg ], [ %i.ys, %bb.ed ], [ %i.ys, %bb.ee ], [ %i.ys, %bb.eb ], [ %i.ys, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i.i = phi i32 [ %i.zc, %bb.eg ], [ %.1231.i.i.i.i.i, %bb.ed ], [ %.1231.i.i.i.i.i, %bb.ee ], [ %.1231.i.i.i.i.i, %bb.eb ], [ %.1231.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ]
  %i.zf = load i32, ptr %i.ai, align 8, !tbaa !86 ; 3 uses
  %i.zg = sext i32 %i.zf to i64
  %.not154.not.i.i.i.i.i = icmp slt i64 %indvars.iv243.i.i.i.i.i, %i.zg
  br i1 %.not154.not.i.i.i.i.i, label %.lr.ph232.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.eh
  %i.zh = trunc nsw i64 %indvars.iv.next244.i.i.i.i.i to i32
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %.thread201.i.i.i.i.i, %bb.dy
  %i.zi = phi i32 [ %i.yg, %.thread201.i.i.i.i.i ], [ %i.ye, %bb.dy ], [ %i.zf, %.loopexit.loopexit.i.i.i.i.i ]
  %i.zj = phi i32 [ %i.yi, %.thread201.i.i.i.i.i ], [ %i.yd, %bb.dy ], [ %i.ze, %.loopexit.loopexit.i.i.i.i.i ]
  %.9.i.i.i.i.i = phi i32 [ %i.zb, %.thread201.i.i.i.i.i ], [ %.6.i.i.i.i.i, %bb.dy ], [ %i.zh, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %.not158.i.i.i.i.i = icmp sgt i32 %.9.i.i.i.i.i, %i.zi
  br i1 %.not158.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.dh, !llvm.loop !270

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i: ; preds = %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, %bb.ct, %bb.cc
  %.sink.i.i.i.i = phi i32 [ %i.rb, %bb.cc ], [ 0, %bb.ct ], [ %i.tw, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i ]
  store i32 %.sink.i.i.i.i, ptr %i.av, align 4, !tbaa !336
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i: ; preds = %bb.dg, %.loopexit.i.i.i.i.i, %bb.cz, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, %bb.db, %bb.bz
  %i.zk = load i32, ptr %i.au, align 4, !tbaa !335 ; 2 uses
  %i.zl = add nsw i32 %i.zk, -1
  store i32 %i.zl, ptr %i.au, align 4, !tbaa !335
  %i.zm = icmp slt i32 %i.zk, 2
  br i1 %i.zm, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.zn = load i32, ptr %i.am, align 4, !tbaa !90
  %i.zo = icmp slt i32 %i.zn, 24
  br i1 %i.zo, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.s)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.zp = load i8, ptr %i.at, align 8, !tbaa !81  ; 2 uses
  %i.zq = and i8 %i.zp, -8
  %or.cond232.i.i.i.i = icmp eq i8 %i.zq, -48
  br i1 %or.cond232.i.i.i.i, label %bb.el, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.am, align 4, !tbaa !90
  store i32 0, ptr %i.an, align 8, !tbaa !91
  store i32 0, ptr %i.ao, align 4, !tbaa !92
  store i32 0, ptr %i.ap, align 8, !tbaa !93
  store i32 0, ptr %i.aq, align 8, !tbaa !93
  store i32 0, ptr %i.ar, align 8, !tbaa !93
  store i32 0, ptr %i.as, align 8, !tbaa !93
  store i8 -1, ptr %i.at, align 8, !tbaa !81
  %i.zr = load i32, ptr %i.ac, align 8, !tbaa !82 ; 2 uses
  %.not.i240.i.i.i.i = icmp eq i32 %i.zr, 0
  %spec.select.i241.i.i.i.i = select i1 %.not.i240.i.i.i.i, i32 2147483647, i32 %i.zr
  store i32 %spec.select.i241.i.i.i.i, ptr %i.au, align 4, !tbaa !335
  store i32 0, ptr %i.av, align 4, !tbaa !336
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.zs = add nuw nsw i32 %.0201293.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i52.i.i.i = icmp eq i32 %i.zs, %i.pr
  br i1 %exitcond.not.i52.i.i.i, label %._crit_edge295.i.i.i.i, label %bb.by, !llvm.loop !271

._crit_edge295.i.i.i.i:                           ; preds = %bb.em
  %i.zt = add nuw nsw i32 %.0200296.i.i.i.i, 1    ; 2 uses
  %exitcond339.not.i.i.i.i = icmp eq i32 %i.zt, %i.pv
  br i1 %exitcond339.not.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, label %.preheader262.i.i.i.i, !llvm.loop !272

.preheader267.i.i.i.i:                            ; preds = %.preheader267.lr.ph.i.i.i.i, %._crit_edge291.i.i.i.i
  %i.zu = phi i32 [ %i.acd, %._crit_edge291.i.i.i.i ], [ %i.ph, %.preheader267.lr.ph.i.i.i.i ]
  %i.zv = phi i32 [ %i.ace, %._crit_edge291.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %i.zw = phi i32 [ %i.acf, %._crit_edge291.i.i.i.i ], [ %i.pj, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %.0198292.i.i.i.i = phi i32 [ %i.acg, %._crit_edge291.i.i.i.i ], [ 0, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %i.zx = icmp sgt i32 %i.zw, 0
  br i1 %i.zx, label %.preheader266.i.i.i.i, label %._crit_edge291.i.i.i.i

.preheader266.i.i.i.i:                            ; preds = %.preheader267.i.i.i.i, %bb.es
  %i.zy = phi i32 [ %i.abz, %bb.es ], [ %i.zv, %.preheader267.i.i.i.i ]
  %.0199290.i.i.i.i = phi i32 [ %i.aca, %bb.es ], [ 0, %.preheader267.i.i.i.i ] ; 2 uses
  %i.zz = load i32, ptr %i.af, align 4, !tbaa !331 ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  br i1 %i.aaa, label %.lr.ph288.i.i.i.i, label %._crit_edge289.i.i.i.i

.lr.ph288.i.i.i.i:                                ; preds = %.preheader266.i.i.i.i, %.critedge234.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZL22stbi__resample_row_h_2PhS_S_ii:bb.a
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 3
  %i.ao = add nuw nsw i32 %i.an, 2                ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ak, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !34
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = shl nuw nsw i64 %indvars.iv, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ao, %i.az
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !34
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !465

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.be = shl nuw nsw i32 %i.n, 1
  %i.bf = zext nneg i32 %i.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.037.lcssa = phi i64 [ 2, %bb.c ], [ %i.bf, %._crit_edge.loopexit ]
  %i.bg = sext i32 %3 to i64
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34
  %i.bk = zext i8 %i.bj to i16
  %i.bl = mul nuw nsw i16 %i.bk, 3
  %i.bm = sext i32 %i.n to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !34
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, 2
  %i.br = add nuw nsw i16 %i.bq, %i.bl
  %i.bs = lshr i16 %i.br, 2
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.037.lcssa ; 2 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !34
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL26stbi__resample_row_genericPhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #21 {
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
  %.pre = load i8, ptr %i.e, align 1, !tbaa !34   ; 3 uses
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
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1, !tbaa !34
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !469

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !470

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !471

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 19 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !90
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !90
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91   ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !34    ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !90   ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8, !tbaa !91
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4, !tbaa !90
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g, !llvm.loop !6

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !90  ; 3 uses
  br i1 %i.ab, label %.loopexit.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nuw nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %7 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i
  %8 = load i32, ptr %7, align 4, !tbaa !24
  %i.ag = and i32 %8, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24
  %i.ak = add i32 %i.ag, %i.aj
  %i.al = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.al, ptr %i.a, align 4, !tbaa !90
  %i.am = shl i32 %i.f, %i.aa
  store i32 %i.am, ptr %i.e, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.j, %bb.e
  %.1.i.in.in = phi ptr [ %i.ap, %bb.j ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !34 ; 3 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !90 ; 3 uses
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  %i.aq = icmp slt i32 %.pre.pre, %.1.i
  br i1 %i.aq, label %bb.l, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !90
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %bb.k, %bb.l
  %i.ar = phi i32 [ %.pre.i, %bb.l ], [ %.pre.pre, %bb.k ]
  %i.as = load i32, ptr %i.e, align 8, !tbaa !91  ; 3 uses
  %i.at = shl i32 %i.as, %.1.i
  %i.au = sub nuw nsw i32 32, %.1.i
  %i.av = lshr i32 %i.as, %i.au
  %i.aw = or disjoint i32 %i.at, %i.av            ; 2 uses
  %i.ax = zext i8 %.1.i.in to i64                 ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.ax
  %10 = load i32, ptr %9, align 4, !tbaa !24      ; 2 uses
  %i.ay = xor i32 %10, -1
  %i.az = and i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.e, align 8, !tbaa !91
  %i.ba = and i32 %i.aw, %10
  %i.bb = sub nsw i32 %i.ar, %.1.i                ; 2 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !90
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %isnotneg.inv.i = icmp slt i32 %i.as, 0
  %i.be = select i1 %isnotneg.inv.i, i32 0, i32 %i.bd
  %i.bf = add i32 %i.be, %i.ba
  br label %bb.m

bb.m:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %.pre = phi i32 [ %i.bb, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ %.pre.pre, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ]
  %i.bg = phi i32 [ %i.bf, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ 0, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ]
  %i.bh = sext i32 %5 to i64
  %i.bi = getelementptr [96 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 18104  ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !93
  %i.bl = add nsw i32 %i.bk, %i.bg                ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !93
  %i.bm = load i16, ptr %6, align 2, !tbaa !41
  %i.bn = trunc i32 %i.bl to i16
  %i.bo = mul i16 %i.bm, %i.bn
  store i16 %i.bo, ptr %1, align 2, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 1612
  br label %bb.n

bb.n:                                             ; preds = %bb.af, %bb.m
  %i.bt = phi i32 [ %.pre, %bb.m ], [ %i.fa, %bb.af ]
  %.057 = phi i32 [ 1, %bb.m ], [ %.4.ph, %bb.af ] ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 16
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = load i32, ptr %i.e, align 8, !tbaa !91  ; 3 uses
  %i.bw = lshr i32 %i.bv, 23
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !41 ; 3 uses
  %.not68 = icmp eq i16 %i.bz, 0
  br i1 %.not68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = and i32 %i.cb, 15
  %i.cd = add nsw i32 %i.cc, %.057                ; 2 uses
  %i.ce = and i32 %i.ca, 15                       ; 2 uses
  %i.cf = shl i32 %i.bv, %i.ce
  store i32 %i.cf, ptr %i.e, align 8, !tbaa !91
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !90
  %i.ch = sub nsw i32 %i.cg, %i.ce                ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !90
  %i.ci = add nsw i32 %i.cd, 1
  %i.cj = sext i32 %i.cd to i64
  %i.ck = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34
  %i.cm = ashr i16 %i.bz, 8
  %i.cn = zext i8 %i.cl to i64                    ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !41
  %i.cq = mul i16 %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cn
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !41
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !90
  %i.ct = icmp slt i32 %i.cs, 16
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre94 = load i32, ptr %i.e, align 8, !tbaa !91 ; 2 uses
  %.pre97 = lshr i32 %.pre94, 23
  %.pre98.a = zext nneg i32 %.pre97 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi99 = phi i64 [ %.pre98.a, %bb.s ], [ %i.bx, %bb.r ]
  %i.cu = phi i32 [ %.pre94, %bb.s ], [ %i.bv, %bb.r ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi99
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !34  ; 2 uses
  %.not.i70 = icmp eq i8 %i.cw, -1
  br i1 %.not.i70, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = zext i8 %i.cw to i64                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !34
  %i.da = zext i8 %i.cz to i32                    ; 3 uses
  %i.db = load i32, ptr %i.a, align 4, !tbaa !90  ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.da
  br i1 %i.dc, label %.loopexit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = shl i32 %i.cu, %i.da                    ; 2 uses
  store i32 %i.dd, ptr %i.e, align 8, !tbaa !91
  %i.de = sub nuw nsw i32 %i.db, %i.da            ; 2 uses
  store i32 %i.de, ptr %i.a, align 4, !tbaa !90
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit74

bb.w:                                             ; preds = %bb.t
  %i.df = lshr i32 %i.cu, 16
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %bb.x ], [ 10, %bb.w ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i72
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.di = icmp ult i32 %i.df, %i.dh
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1
  br i1 %i.di, label %bb.y, label %bb.x, !llvm.loop !6

bb.y:                                             ; preds = %bb.x
  %i.dj = trunc nuw nsw i64 %indvars.iv.i72 to i32 ; 4 uses
  %i.dk = icmp eq i64 %indvars.iv.i72, 17
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !90  ; 3 uses
  br i1 %i.dk, label %.loopexit.sink.split.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp slt i32 %i.dl, %i.dj
  br i1 %i.dm, label %.loopexit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = sub nuw nsw i32 32, %i.dj
  %i.do = lshr i32 %i.cu, %i.dn
  %11 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i72
  %12 = load i32, ptr %11, align 4, !tbaa !24
  %i.dp = and i32 %12, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i72
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.ds = add i32 %i.dp, %i.dr
  %i.dt = sub nuw nsw i32 %i.dl, %i.dj            ; 2 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !90
  %i.du = shl i32 %i.cu, %i.dj                    ; 2 uses
  store i32 %i.du, ptr %i.e, align 8, !tbaa !91
  %i.dv = sext i32 %i.ds to i64
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit74

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit74: ; preds = %bb.aa, %bb.v
  %i.dw = phi i32 [ %i.du, %bb.aa ], [ %i.dd, %bb.v ]
  %i.dx = phi i32 [ %i.dt, %bb.aa ], [ %i.de, %bb.v ] ; 3 uses
  %.pn = phi i64 [ %i.dv, %bb.aa ], [ %i.cx, %bb.v ]
  %.1.i71.in.in = getelementptr inbounds i8, ptr %i.bq, i64 %.pn
  %.1.i71.in = load i8, ptr %.1.i71.in.in, align 1, !tbaa !34 ; 2 uses
  %.1.i71 = zext i8 %.1.i71.in to i32             ; 2 uses
  %i.dy = and i32 %.1.i71, 15                     ; 5 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit74
  %.not69 = icmp eq i8 %.1.i71.in, -16
  br i1 %.not69, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ea = add nsw i32 %.057, 16
  br label %bb.af

bb.ad:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit74
  %i.eb = lshr i32 %.1.i71, 4
  %i.ec = add nsw i32 %i.eb, %.057                ; 2 uses
  %i.ed = add nsw i32 %i.ec, 1
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !34
  %i.eh = icmp samesign ult i32 %i.dx, %i.dy
  br i1 %i.eh, label %bb.ae, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit77

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i76 = load i32, ptr %i.a, align 4, !tbaa !90
  %.pre95 = load i32, ptr %i.e, align 8, !tbaa !91
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit77

_ZL20stbi__extend_receiveP10stbi__jpegi.exit77:   ; preds = %bb.ad, %bb.ae
  %i.ei = phi i32 [ %.pre95, %bb.ae ], [ %i.dw, %bb.ad ] ; 3 uses
  %i.ej = phi i32 [ %.pre.i76, %bb.ae ], [ %i.dx, %bb.ad ]
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 %i.dy) ; 2 uses
  %i.el = zext nneg i32 %i.dy to i64              ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.el
  %14 = load i32, ptr %13, align 4, !tbaa !24     ; 2 uses
  %i.em = xor i32 %14, -1
  %i.en = and i32 %i.ek, %i.em
  store i32 %i.en, ptr %i.e, align 8, !tbaa !91
  %i.eo = and i32 %i.ek, %14
  %i.ep = sub nsw i32 %i.ej, %i.dy                ; 2 uses
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !90
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.el
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !24
  %isnotneg.inv.i75 = icmp slt i32 %i.ei, 0
  %i.es = select i1 %isnotneg.inv.i75, i32 0, i32 %i.er
  %i.et = add i32 %i.es, %i.eo
  %i.eu = zext i8 %i.eg to i64                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !41
  %i.ex = trunc i32 %i.et to i16
  %i.ey = mul i16 %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eu
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !41
  br label %bb.af

bb.af:                                            ; preds = %bb.q, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit77, %bb.ac
  %i.fa = phi i32 [ %i.dx, %bb.ac ], [ %i.ep, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit77 ], [ %i.ch, %bb.q ]
  %.4.ph = phi i32 [ %i.ea, %bb.ac ], [ %i.ed, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit77 ], [ %i.ci, %bb.q ] ; 2 uses
  %i.fb = icmp slt i32 %.4.ph, 64
  br i1 %i.fb, label %bb.n, label %.loopexit, !llvm.loop !472

.loopexit.sink.split.sink.split:                  ; preds = %bb.y, %bb.h
  %.lcssa.sink = phi i32 [ %i.ac, %bb.h ], [ %i.dl, %bb.y ]
  %i.fc = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !90
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.u, %bb.z, %.loopexit.sink.split.sink.split, %bb.i, %bb.d
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.ab, %.loopexit.sink.split
  %.463 = phi i32 [ 0, %.loopexit.sink.split ], [ 1, %bb.ab ], [ 1, %bb.af ]
  ret i32 %.463
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !92
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !90 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %i.f = add nuw i32 %smax, 7
  %i.g = sub i32 %i.f, %.promoted
  %i.h = and i32 %i.g, -8
  %i.i = add i32 %.promoted, %i.h
  %i.j = add i32 %i.i, 8
  store i32 %i.j, ptr %i.b, align 4, !tbaa !90
  br label %.loopexit

.splitthread-pre-split:                           ; preds = %.thread
  %.pr = load i32, ptr %i.a, align 4, !tbaa !92
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split
  %i.l = load ptr, ptr %0, align 8, !tbaa !65     ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !35
  %i.s = load i8, ptr %i.n, align 1, !tbaa !34
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ac = tail call noundef i32 %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab), !inline_history !9 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %i.z, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds i8, ptr %i.z, i64 %i.af
  %.pre.i = load i8, ptr %i.z, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.g, %bb.f
  %i.ah = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.ag, %bb.g ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ %i.ah, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 2 uses
  %i.aj = icmp eq i8 %.0.i, -1
  br i1 %i.aj, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !65    ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 184 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !35
  %i.ar = load i8, ptr %i.am, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !31
  %.not.i18 = icmp eq i32 %i.at, 0
  br i1 %.not.i18, label %_ZL10stbi__get8P13stbi__context.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %i.bb = tail call noundef i32 %i.av(ptr noundef %i.ax, ptr noundef nonnull %i.ay, i32 noundef %i.ba), !inline_history !9 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.as, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 57
  store i8 0, ptr %i.ay, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be
  %.pre.i19 = load i8, ptr %i.ay, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

_ZL19stbi__refill_bufferP13stbi__context.exit.i20: ; preds = %bb.n, %bb.m
  %i.bg = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bd, %bb.m ], [ %i.bf, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.an, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 57
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

_ZL10stbi__get8P13stbi__context.exit23.preheader: ; preds = %bb.j, %bb.k, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20
  %.016.in.ph = phi i8 [ %i.bg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20 ], [ %i.ar, %bb.j ], [ 0, %bb.k ]
  br label %_ZL10stbi__get8P13stbi__context.exit23

_ZL10stbi__get8P13stbi__context.exit23:           ; preds = %_ZL10stbi__get8P13stbi__context.exit23.backedge, %_ZL10stbi__get8P13stbi__context.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %_ZL10stbi__get8P13stbi__context.exit23.preheader ], [ %.016.in.be, %_ZL10stbi__get8P13stbi__context.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.bi = load ptr, ptr %0, align 8, !tbaa !65    ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !35
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

_ZL10stbi__get8P13stbi__context.exit23.backedge:  ; preds = %bb.p, %bb.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26
  %.016.in.be = phi i8 [ %i.bp, %bb.p ], [ %i.ce, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26 ], [ 0, %bb.q ]
  br label %_ZL10stbi__get8P13stbi__context.exit23, !llvm.loop !473

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !31
  %.not.i24 = icmp eq i32 %i.br, 0
  br i1 %.not.i24, label %_ZL10stbi__get8P13stbi__context.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !30
  %i.bz = tail call noundef i32 %i.bt(ptr noundef %i.bv, ptr noundef nonnull %i.bw, i32 noundef %i.by), !inline_history !9 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bq, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 57
  store i8 0, ptr %i.bw, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bw, i64 %i.cc
  %.pre.i25 = load i8, ptr %i.bw, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

_ZL19stbi__refill_bufferP13stbi__context.exit.i26: ; preds = %bb.t, %bb.s
  %i.ce = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.cb, %bb.s ], [ %i.cd, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.bl, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 57
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

bb.u:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.cg, align 8, !tbaa !81
  store i32 1, ptr %i.a, align 4, !tbaa !92
  br label %.loopexit

.thread:                                          ; preds = %_ZL10stbi__get8P13stbi__context.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %_ZL10stbi__get8P13stbi__context.exit23 ]
  %i.ch = zext i8 %.shrunk to i32
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !90  ; 3 uses
  %i.cj = sub nsw i32 24, %i.ci
  %i.ck = shl i32 %i.ch, %i.cj
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !91
  %i.cm = or i32 %i.ck, %i.cl
  store i32 %i.cm, ptr %i.c, align 8, !tbaa !91
  %i.cn = add nsw i32 %i.ci, 8
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !90
  %i.co = icmp slt i32 %i.ci, 17
  br i1 %i.co, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !474

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.37, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !90
  %i.e = icmp slt i32 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !tbaa !90
  %i.j = icmp slt i32 %i.i, 16
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !91   ; 8 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34    ; 2 uses
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.r = zext i8 %i.p to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !90   ; 3 uses
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = shl i32 %i.l, %i.u                       ; 2 uses
  store i32 %i.x, ptr %i.k, align 8, !tbaa !91
  %i.y = sub nuw nsw i32 %i.v, %i.u               ; 2 uses
  store i32 %i.y, ptr %i.c, align 4, !tbaa !90
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
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !24
  %i.af = icmp ult i32 %i.ab, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.af, label %bb.m, label %bb.l, !llvm.loop !6

bb.m:                                             ; preds = %bb.l
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ah = icmp eq i64 %indvars.iv.i, 17
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !90  ; 4 uses
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ai, -16                  ; 2 uses
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !90
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ak = icmp slt i32 %i.ai, %i.ag
  br i1 %i.ak, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i32 32, %i.ag
  %i.am = lshr i32 %i.l, %i.al
  %4 = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__bmask, i64 %indvars.iv.i
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %i.an = and i32 %5, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !24
  %i.ar = add i32 %i.an, %i.aq
  %i.as = sub nuw nsw i32 %i.ai, %i.ag            ; 2 uses
  store i32 %i.as, ptr %i.c, align 4, !tbaa !90
  %i.at = shl i32 %i.l, %i.ag                     ; 2 uses
  store i32 %i.at, ptr %i.k, align 8, !tbaa !91
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.av = sext i32 %i.ar to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.j, %bb.p
  %i.ax = phi i32 [ %i.at, %bb.p ], [ %i.x, %bb.j ]
  %i.ay = phi i32 [ %i.as, %bb.p ], [ %i.y, %bb.j ]
  %.1.i.in.in = phi ptr [ %i.aw, %bb.p ], [ %i.aa, %bb.j ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !34 ; 2 uses
  %.1.i = zext i8 %.1.i.in to i32
  %.not24 = icmp eq i8 %.1.i.in, 0
  br i1 %.not24, label %bb.r, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread: ; preds = %bb.o, %bb.i, %bb.n, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  %i.az = phi i32 [ %i.ax, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ], [ %i.l, %bb.n ], [ %i.l, %bb.i ], [ %i.l, %bb.o ]
  %i.ba = phi i32 [ %i.ay, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ], [ %i.aj, %bb.n ], [ %i.v, %bb.i ], [ %i.ai, %bb.o ] ; 2 uses
  %.1.i28 = phi i32 [ %.1.i, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ], [ -1, %bb.n ], [ -1, %bb.i ], [ -1, %bb.o ] ; 5 uses
  %i.bb = icmp slt i32 %i.ba, %.1.i28
  br i1 %i.bb, label %bb.q, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

bb.q:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !90
  %.pre = load i32, ptr %i.k, align 8, !tbaa !91
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, %bb.q
  %i.bc = phi i32 [ %.pre, %bb.q ], [ %i.az, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread ] ; 3 uses
  %i.bd = phi i32 [ %.pre.i, %bb.q ], [ %i.ba, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread ]
  %i.be = shl i32 %i.bc, %.1.i28
  %i.bf = sub nsw i32 32, %.1.i28
  %i.bg = lshr i32 %i.bc, %i.bf
  %i.bh = or disjoint i32 %i.be, %i.bg            ; 2 uses
  %i.bi = sext i32 %.1.i28 to i64                 ; 2 uses
  %6 = getelementptr inbounds [4 x i8], ptr @_ZL11stbi__bmask, i64 %i.bi
  %7 = load i32, ptr %6, align 4, !tbaa !24       ; 2 uses
  %i.bj = xor i32 %7, -1
  %i.bk = and i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.k, align 8, !tbaa !91
  %i.bl = and i32 %i.bh, %7
  %i.bm = sub nsw i32 %i.bd, %.1.i28
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !90
  %i.bn = getelementptr inbounds [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24
  %isnotneg.inv.i = icmp slt i32 %i.bc, 0
  %i.bp = select i1 %isnotneg.inv.i, i32 0, i32 %i.bo
  %i.bq = add i32 %i.bp, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %i.br = phi i32 [ %i.bq, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ 0, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit ]
  %i.bs = sext i32 %3 to i64
  %i.bt = getelementptr [96 x i8], ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 18104  ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !93
  %i.bw = add nsw i32 %i.bv, %i.br                ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !88
  %i.bz = shl i32 %i.bw, %i.by
  %i.ca = trunc i32 %i.bz to i16
  store i16 %i.ca, ptr %1, align 2, !tbaa !41
  br label %bb.v

bb.s:                                             ; preds = %bb.e
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !90  ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %bb.t, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i25 = load i32, ptr %i.c, align 4, !tbaa !90
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit:        ; preds = %bb.s, %bb.t
  %i.cd = phi i32 [ %.pre.i25, %bb.t ], [ %i.cb, %bb.s ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !91 ; 2 uses
  %i.cg = shl i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !91
  %i.ch = add nsw i32 %i.cd, -1
  store i32 %i.ch, ptr %i.c, align 4, !tbaa !90
  %.not23 = icmp sgt i32 %i.cf, -1
  br i1 %.not23, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !88
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = load i16, ptr %1, align 2, !tbaa !41
  %i.cm = trunc i32 %i.ck to i16
  %i.cn = add i16 %i.cl, %i.cm
  store i16 %i.cn, ptr %1, align 2, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit ], [ 1, %bb.u ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL22stbi__check_png_headerP13stbi__context(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 23 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.k = icmp ult ptr %i.i, %i.j
  br i1 %i.k, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.l = icmp ult ptr %i.dp, %i.do
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.1, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.p = load i32, ptr %i.g, align 4, !tbaa !30
  %i.q = tail call noundef i32 %i.n(ptr noundef %i.o, ptr noundef nonnull %i.f, i32 noundef %i.p), !inline_history !9 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 %i.s
  %.pre.i.1 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1

_ZL19stbi__refill_bufferP13stbi__context.exit.i.1: ; preds = %bb.f, %bb.e
  %i.u = phi i8 [ 0, %bb.f ], [ %.pre.i.1, %bb.e ]
  %.sink.i.i.1 = phi ptr [ %i.h, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.1, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.1

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !35
  %i.w = load i8, ptr %i.dp, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.1

_ZL10stbi__get8P13stbi__context.exit.1:           ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1
  %i.x = phi ptr [ %i.do, %bb.g ], [ %.sink.i.i.1, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1 ] ; 2 uses
  %i.y = phi ptr [ %i.v, %bb.g ], [ %i.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1 ] ; 3 uses
  %.0.i.1 = phi i8 [ %i.w, %bb.g ], [ %i.u, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.1 ]
  %.not.1 = icmp eq i8 %.0.i.1, 80
  br i1 %.not.1, label %bb.h, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.1
  %i.z = icmp ult ptr %i.y, %i.x
  br i1 %i.z, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.2, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !30
  %i.ae = tail call noundef i32 %i.ab(ptr noundef %i.ac, ptr noundef nonnull %i.f, i32 noundef %i.ad), !inline_history !9 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %i.f, i64 %i.ag
  %.pre.i.2 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2

_ZL19stbi__refill_bufferP13stbi__context.exit.i.2: ; preds = %bb.l, %bb.k
  %i.ai = phi i8 [ 0, %bb.l ], [ %.pre.i.2, %bb.k ]
  %.sink.i.i.2 = phi ptr [ %i.h, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.2, ptr %i.b, align 8, !tbaa !36
  store ptr %i.h, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.2

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !35
  %i.ak = load i8, ptr %i.y, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.2

_ZL10stbi__get8P13stbi__context.exit.2:           ; preds = %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2
  %i.al = phi ptr [ %i.x, %bb.m ], [ %.sink.i.i.2, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2 ] ; 2 uses
  %i.am = phi ptr [ %i.aj, %bb.m ], [ %i.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2 ] ; 3 uses
  %.0.i.2 = phi i8 [ %i.ak, %bb.m ], [ %i.ai, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.2 ]
  %.not.2 = icmp eq i8 %.0.i.2, 78
  br i1 %.not.2, label %bb.n, label %_ZL10stbi__get8P13stbi__context.exit.1.thread

bb.n:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.2
  %i.an = icmp ult ptr %i.am, %i.al
  br i1 %i.an, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !31
  %.not.i.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.3, label %_ZL10stbi__get8P13stbi__context.exit.1.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !30
  %i.as = tail call noundef i32 %i.ap(ptr noundef %i.aq, ptr noundef nonnull %i.f, i32 noundef %i.ar), !inline_history !9 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %i.f, i64 %i.au
  %.pre.i.3 = load i8, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.3

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.3

end_hunk_2
