Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], i32, ptr, ptr, ptr, ptr }
%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%struct.stbi__nv12 = type { i32, i32, i32, ptr, ptr }
%struct.tdefl_output_buffer = type { i64, i64, ptr, i32 }
%struct.stbi__resample = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stbi__zhuffman = type { [512 x i16], [16 x i16], [17 x i32], [16 x i16], [288 x i8], [288 x i16] }
%struct.stbi__zbuf = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.stbi__zhuffman, %struct.stbi__zhuffman }
%struct.stbi__png = type { ptr, ptr, ptr, ptr, i32 }
%struct.tdefl_sym_freq = type { i16, i16 }

@.str = private unnamed_addr constant [45 x i8] c"Expected image size %dx%d, actual size %dx%d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"File is not a PNG file\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Indexed surfaces must have a palette\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to convert and save image\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Unexpected size\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Can't convert RGB to NV12\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"JPEG format not supported: 8-bit only\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"JPEG format not supported: delayed height\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Very large image (corrupt?)\00", align 1
@stbi__process_frame_header.rgb = internal unnamed_addr constant [3 x i8] c"RGB", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Image too large to decode\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Combined length longer than code bits available\00", align 1
@stbi__jpeg_dezigzag = internal unnamed_addr constant [79 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>????????????????", align 16
@stbi__jbias = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@.str.22 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Not a PNG\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"req_comp must be 1 if loading paletted image without expansion\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"PNG not supported: unsupported color depth\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"palette buffer len must be 256\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"req_comp must be 1 when loading paletted\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"PNG not supported: 1/2/4/8/16-bit only\00", align 1
@stbi__depth_scale_table = internal unnamed_addr constant [9 x i8] c"\00\FFU\00\11\00\00\00\01", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"IDAT section larger than 2^30 bytes\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"PNG not supported: unknown PNG chunk type\00", align 1
@stbi__zdefault_length = internal constant [288 x i8] c"\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08", align 16
@stbi__zdefault_distance = internal constant [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@stbi__zlength_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@stbi__zlength_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@stbi__zdist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@stbi__zdist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@__const.stbi__create_png_image.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const.stbi__create_png_image.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const.stbi__create_png_image.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const.stbi__create_png_image.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@first_row_filter = internal unnamed_addr constant [5 x i8] c"\00\01\00\05\01", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Unsupported format conversion\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Unknown image format: %d\00", align 1
@tdefl_write_image_to_png_file_in_memory_ex.chans = internal unnamed_addr constant [5 x i8] c"\00\00\04\02\06", align 1
@__const.tdefl_write_image_to_png_file_in_memory_ex.pnghdr = private unnamed_addr constant <{ [25 x i8], [8 x i8] }> <{ [25 x i8] c"\89PNG\0D\0A\1A\0A\00\00\00\0DIHDR\00\00\00\00\00\00\00\00\08", [8 x i8] zeroinitializer }>, align 16
@.str.37 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00IEND\AEB`\82\00", align 1
@mz_crc32.s_crc32 = internal unnamed_addr constant [16 x i32] [i32 0, i32 498536548, i32 997073096, i32 651767980, i32 1994146192, i32 1802195444, i32 1303535960, i32 1342533948, i32 -306674912, i32 -267414716, i32 -690576408, i32 -882789492, i32 -1687895376, i32 -2032938284, i32 -1609899400, i32 -1111625188], align 16
@s_tdefl_small_dist_sym = internal unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@s_tdefl_large_dist_sym = internal unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@s_tdefl_len_sym = internal unnamed_addr constant [256 x i16] [i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 265, i16 266, i16 266, i16 267, i16 267, i16 268, i16 268, i16 269, i16 269, i16 269, i16 269, i16 270, i16 270, i16 270, i16 270, i16 271, i16 271, i16 271, i16 271, i16 272, i16 272, i16 272, i16 272, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 285], align 16
@s_tdefl_packed_code_size_syms_swizzle = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@.str.38 = private unnamed_addr constant [4 x i8] c"\02\03\07\00", align 1
@s_tdefl_len_extra = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 16
@s_tdefl_small_dist_extra = internal unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@s_tdefl_large_dist_extra = internal unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ConvertPixels_STB(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #0 {
bb.a:
  %12 = alloca %struct.stbi__result_info, align 4 ; 5 uses
  %13 = alloca %struct.stbi__context, align 8     ; 11 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %14 = alloca %struct.stbi__context, align 8     ; 10 uses
  %15 = alloca %struct.stbi__nv12, align 8        ; 8 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %16 = alloca %struct.stbi__context, align 8     ; 10 uses
  %17 = alloca %struct.stbi__nv12, align 8        ; 8 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = icmp eq i32 %2, 1196444237
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i32 %7, label %bb.i [
    i32 842094158, label %bb.c
    i32 1498831189, label %bb.d
    i32 1448433993, label %bb.d
    i32 1431918169, label %bb.d
    i32 844715353, label %bb.d
    i32 842094169, label %bb.d
    i32 825382478, label %bb.d
    i32 808530000, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 184
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 192
  store ptr %5, ptr %i.q, align 8
  %i.r = sext i32 %6 to i64
  %i.s = getelementptr inbounds i8, ptr %5, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 200
  store ptr %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store i32 %0, ptr %17, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %11, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %10, ptr %i.x, align 8
  %i.y = mul nsw i32 %11, %1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %10, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = call fastcc ptr @stbi__jpeg_load(ptr noundef %16, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, i32 noundef 4, ptr noundef nonnull %17)
  %.not.i = icmp ne ptr %i.ac, null
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.r

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i64 0, ptr %i.h, align 8
  %i.ad = call zeroext i1 @SDL_CalculateYUVSize(i32 noundef %7, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #13
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.g, align 8
  %i.af = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ae) #13 ; 5 uses
  %.not74 = icmp eq ptr %i.af, null
  br i1 %.not74, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.h, align 8
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 184
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 192
  store ptr %5, ptr %i.am, align 8
  %i.an = sext i32 %6 to i64
  %i.ao = getelementptr inbounds i8, ptr %5, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 216
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 200
  store ptr %i.ao, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store i32 %0, ptr %15, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.ah, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.af, ptr %i.at, align 8
  %i.au = mul nsw i32 %1, %i.ah
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.af, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = call fastcc ptr @stbi__jpeg_load(ptr noundef %14, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef 4, ptr noundef nonnull %15)
  %.not.i75.not = icmp eq ptr %i.ay, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not.i75.not, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.h, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = call zeroext i1 @SDL_ConvertPixelsAndColorspace_REAL(i32 noundef %0, i32 noundef %1, i32 noundef 842094158, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.af, i32 noundef %i.ba, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11) #13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.1.ph = phi i1 [ %i.bb, %bb.g ], [ false, %bb.f ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.af) #13
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.r

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.bc = phi i32 [ 1, %bb.b ], [ %1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i32 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.bd = mul nsw i32 %i.bc, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 184
  store i32 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 192
  store ptr %5, ptr %i.bi, align 8
  %i.bj = sext i32 %i.bd to i64
  %i.bk = getelementptr inbounds i8, ptr %5, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 216
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 200
  store ptr %i.bk, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.bn = call fastcc ptr @stbi__load_main(ptr noundef nonnull %13, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef %12, ptr noundef null, i32 noundef 0) ; 11 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %stbi_load_from_memory.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %12, align 4
  %.not.i.i = icmp eq i32 %i.bp, 8
  %.pre = load i32, ptr %i.i, align 4             ; 3 uses
  %.pre79.pre = load i32, ptr %i.j, align 4       ; 3 uses
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = mul nsw i32 %.pre79.pre, %.pre          ; 2 uses
  %i.br = shl nsw i32 %i.bq, 2                    ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.bs) #13 ; 10 uses
end_hunk_0
begin_hunk_1_@stbi__jpeg_load:bb.a
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge298.i.i.i
  %i.oy = phi i32 [ %i.or, %._crit_edge298.i.i.i ], [ %spec.select.i239.i.i.i, %bb.bi ] ; 2 uses
  %i.oz = add nuw nsw i32 %.0206299.i.i.i, 1      ; 2 uses
  %i.pa = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.pb = icmp slt i32 %i.oz, %i.pa
  br i1 %i.pb, label %.preheader256.i.i.i, label %._crit_edge300.loopexit.i.i.i, !llvm.loop !50

._crit_edge300.loopexit.i.i.i:                    ; preds = %bb.bj
  %.pre342.i.i.i = load i32, ptr %i.aj, align 4
  br label %._crit_edge300.i.i.i

._crit_edge300.i.i.i:                             ; preds = %._crit_edge300.loopexit.i.i.i, %.preheader257.i.i.i
  %i.pc = phi i32 [ %.pre342.i.i.i, %._crit_edge300.loopexit.i.i.i ], [ %i.mh, %.preheader257.i.i.i ] ; 2 uses
  %i.pd = phi i32 [ %i.oy, %._crit_edge300.loopexit.i.i.i ], [ %i.mi, %.preheader257.i.i.i ]
  %i.pe = phi i32 [ %i.pa, %._crit_edge300.loopexit.i.i.i ], [ %i.mj, %.preheader257.i.i.i ]
  %i.pf = add nuw nsw i32 %.0205301.i.i.i, 1      ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.pc
  br i1 %i.pg, label %.preheader257.i.i.i, label %.critedge.i56.i.i, !llvm.loop !51

.critedge.i56.i.i:                                ; preds = %._crit_edge300.i.i.i, %bb.bh, %.lr.ph292.i.i.i, %.preheader257.lr.ph.i.i.i, %bb.bd
  %.11.i.i.i = phi i32 [ 1, %bb.bd ], [ 1, %.preheader257.lr.ph.i.i.i ], [ 1, %bb.bh ], [ 0, %.lr.ph292.i.i.i ], [ 1, %._crit_edge300.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %stbi__parse_entropy_coded_data.exit.i.i

bb.bk:                                            ; preds = %stbi__process_scan_header.exit.i.i
  br i1 %i.kh, label %bb.bl, label %.preheader269.i.i.i

.preheader269.i.i.i:                              ; preds = %bb.bk
  %i.ph = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.preheader267.lr.ph.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader267.lr.ph.i.i.i:                        ; preds = %.preheader269.i.i.i
  %i.pj = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %.preheader267.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.pl = load i32, ptr %i.t, align 8             ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.pm ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = add nsw i32 %i.pp, 7
  %i.pr = ashr i32 %i.pq, 3                       ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  %i.pt = load i32, ptr %i.ps, align 8
  %i.pu = add nsw i32 %i.pt, 7
  %i.pv = ashr i32 %i.pu, 3                       ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.preheader262.lr.ph.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader262.lr.ph.i.i.i:                        ; preds = %bb.bl
  %i.px = icmp sgt i32 %i.pr, 0
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 80
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pn, i64 88
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  br i1 %i.px, label %.preheader262.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i

.preheader262.i.i.i:                              ; preds = %.preheader262.lr.ph.i.i.i, %._crit_edge289.i.i.i
  %.0200290.i.i.i = phi i32 [ %i.zs, %._crit_edge289.i.i.i ], [ 0, %.preheader262.lr.ph.i.i.i ] ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.eh, %.preheader262.i.i.i
  %.0201287.i.i.i = phi i32 [ 0, %.preheader262.i.i.i ], [ %i.zr, %bb.eh ] ; 2 uses
  %i.qc = load ptr, ptr %i.py, align 8
  %i.qd = load i32, ptr %i.pz, align 8
  %i.qe = mul nsw i32 %i.qd, %.0200290.i.i.i
  %i.qf = add nsw i32 %i.qe, %.0201287.i.i.i
  %i.qg = shl nsw i32 %i.qf, 6
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qh ; 5 uses
  %i.qj = load i32, ptr %i.u, align 4             ; 5 uses
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ql = load i32, ptr %i.qb, align 8
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.qm
  %i.qo = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %i.d, ptr noundef %i.qi, ptr noundef %i.qn, i32 noundef %i.pl)
  %.not229.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not229.i.i.i, label %.loopexit401.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.qp = load i32, ptr %i.qa, align 4
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = getelementptr inbounds [1680 x i8], ptr %i.am, i64 %i.qq ; 10 uses
  %i.qs = getelementptr inbounds [1024 x i8], ptr %i.an, i64 %i.qq
  %i.qt = load i32, ptr %i.w, align 4
  %i.qu = icmp eq i32 %i.qt, 0
  %i.qv = load i32, ptr %i.x, align 8             ; 4 uses
  %i.qw = load i32, ptr %i.ai, align 4            ; 3 uses
  %.not166.i.i.i.i = icmp eq i32 %i.qw, 0         ; 2 uses
  br i1 %i.qu, label %bb.bp, label %bb.cu

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not166.i.i.i.i, label %.preheader.i.i.i.i, label %bb.bq

.preheader.i.i.i.i:                               ; preds = %bb.bp
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.rb = add nsw i32 %i.qw, -1
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i

bb.br:                                            ; preds = %bb.ct, %.preheader.i.i.i.i
  %.0120.i.i.i.i = phi i32 [ %.4124.ph.i.i.i.i, %bb.ct ], [ %i.qj, %.preheader.i.i.i.i ] ; 3 uses
  %i.rc = load i32, ptr %i.z, align 4
  %i.rd = icmp slt i32 %i.rc, 16
  br i1 %i.rd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.re = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.rf = lshr i32 %i.re, 23
  %i.rg = zext nneg i32 %i.rf to i64              ; 2 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2            ; 2 uses
  %i.rj = sext i16 %i.ri to i32                   ; 3 uses
  %.not167.i.i.i.i = icmp eq i16 %i.ri, 0
  br i1 %.not167.i.i.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rk = and i32 %i.rj, 15                       ; 3 uses
  %i.rl = load i32, ptr %i.z, align 4             ; 2 uses
  %i.rm = icmp sgt i32 %i.rk, %i.rl
  br i1 %i.rm, label %.critedge.sink.split.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rn = lshr i32 %i.rj, 4
  %i.ro = and i32 %i.rn, 15
  %i.rp = add nsw i32 %i.ro, %.0120.i.i.i.i       ; 2 uses
  %i.rq = shl i32 %i.re, %i.rk
  store i32 %i.rq, ptr %i.aa, align 8
  %i.rr = sub nuw nsw i32 %i.rl, %i.rk
  store i32 %i.rr, ptr %i.z, align 4
  %i.rs = add nsw i32 %i.rp, 1
  %i.rt = sext i32 %i.rp to i64
  %i.ru = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1
  %i.rw = lshr i32 %i.rj, 8
  %i.rx = shl i32 %i.rw, %i.qv
  %i.ry = trunc i32 %i.rx to i16
  %i.rz = zext i8 %i.rv to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.rz
  store i16 %i.ry, ptr %i.sa, align 2
  br label %bb.ct

bb.bw:                                            ; preds = %bb.bt
  %i.sb = load i32, ptr %i.z, align 4
  %i.sc = icmp slt i32 %i.sb, 16
  br i1 %i.sc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre267.i.i.i.i = load i32, ptr %i.aa, align 8 ; 2 uses
  %.pre268.i.i.i.i = lshr i32 %.pre267.i.i.i.i, 23
  %.pre269.i.i.i.i = zext nneg i32 %.pre268.i.i.i.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pre-phi270.i.i.i.i = phi i64 [ %.pre269.i.i.i.i, %bb.bx ], [ %i.rg, %bb.bw ]
  %i.sd = phi i32 [ %.pre267.i.i.i.i, %bb.bx ], [ %i.re, %bb.bw ] ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.pre-phi270.i.i.i.i
  %i.sf = load i8, ptr %i.se, align 1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.sf, -1
  br i1 %.not.i.i.i.i.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sg = zext i8 %i.sf to i64                    ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1
  %i.sj = zext i8 %i.si to i32                    ; 3 uses
  %i.sk = load i32, ptr %i.z, align 4             ; 2 uses
  %i.sl = icmp slt i32 %i.sk, %i.sj
  br i1 %i.sl, label %.critedge.sink.split.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sm = shl i32 %i.sd, %i.sj
  store i32 %i.sm, ptr %i.aa, align 8
  %i.sn = sub nuw nsw i32 %i.sk, %i.sj            ; 2 uses
  store i32 %i.sn, ptr %i.z, align 4
  br label %stbi__jpeg_huff_decode.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.by
  %i.so = lshr i32 %i.sd, 16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.cc ], [ 10, %bb.cb ] ; 5 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.i.i.i.i.i
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = icmp ult i32 %i.so, %i.sq
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1
  br i1 %i.sr, label %bb.cd, label %bb.cc

bb.cd:                                            ; preds = %bb.cc
  %i.ss = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32 ; 5 uses
  %i.st = icmp eq i64 %indvars.iv.i.i.i.i.i, 17
  %i.su = load i32, ptr %i.z, align 4             ; 3 uses
  br i1 %i.st, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sv = add nsw i32 %i.su, -16
  store i32 %i.sv, ptr %i.z, align 4
  br label %.critedge.sink.split.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.sw = icmp slt i32 %i.su, %i.ss
  br i1 %i.sw, label %.critedge.sink.split.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = sub nsw i32 32, %i.ss
  %i.sy = lshr i32 %i.sd, %i.sx
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.ss
  %7 = xor i32 %notmask.i.i.i.i.i, -1
  %i.sz = and i32 %i.sy, %7
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv.i.i.i.i.i
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %or.cond.i.i.i.i.i = icmp ugt i32 %i.tc, 255
  br i1 %or.cond.i.i.i.i.i, label %.critedge.sink.split.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.td = sub nuw nsw i32 %i.su, %i.ss            ; 2 uses
  store i32 %i.td, ptr %i.z, align 4
  %i.te = shl i32 %i.sd, %i.ss
  store i32 %i.te, ptr %i.aa, align 8
  %i.tf = zext nneg i32 %i.tc to i64
  br label %stbi__jpeg_huff_decode.exit.i.i.i.i

stbi__jpeg_huff_decode.exit.i.i.i.i:              ; preds = %bb.ch, %bb.ca
  %i.tg = phi i32 [ %i.td, %bb.ch ], [ %i.sn, %bb.ca ] ; 4 uses
  %.pn304.i.i.i.i = phi i64 [ %i.tf, %bb.ch ], [ %i.sg, %bb.ca ]
  %.1.i.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.pn304.i.i.i.i
  %.1.i.in.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i, align 1 ; 2 uses
  %.1.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i to i32 ; 2 uses
  %i.th = and i32 %.1.i.i.i.i.i, 15               ; 7 uses
  %i.ti = lshr i32 %.1.i.i.i.i.i, 4               ; 8 uses
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %stbi__jpeg_huff_decode.exit.i.i.i.i
  %i.tk = icmp ult i8 %.1.i.in.i.i.i.i, -16
  br i1 %i.tk, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.tl = shl nuw nsw i32 1, %i.ti
  store i32 %i.tl, ptr %i.ai, align 4
  %.not168.i.i.i.i = icmp eq i32 %i.ti, 0
  br i1 %.not168.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tm = icmp slt i32 %i.tg, %i.ti
  br i1 %i.tm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.tn = phi i32 [ %.pre.i.i.i.i.i, %bb.cl ], [ %i.tg, %bb.ck ] ; 2 uses
  %i.to = icmp slt i32 %i.tn, %i.ti
  br i1 %i.to, label %stbi__jpeg_get_bits.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tp = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.tq = call i32 @llvm.fshl.i32(i32 %i.tp, i32 %i.tp, i32 range(i32 1, 15) %i.ti) ; 2 uses
  %notmask.i171.i.i.i.i = shl nsw i32 -1, %i.ti   ; 2 uses
  %i.tr = xor i32 %notmask.i171.i.i.i.i, -1
  %i.ts = and i32 %i.tq, %notmask.i171.i.i.i.i
  store i32 %i.ts, ptr %i.aa, align 8
  %i.tt = and i32 %i.tq, %i.tr
  %i.tu = sub nuw nsw i32 %i.tn, %i.ti
  store i32 %i.tu, ptr %i.z, align 4
  %i.tv = add nsw i32 %i.tt, -1
  br label %stbi__jpeg_get_bits.exit.i.i.i.i

stbi__jpeg_get_bits.exit.i.i.i.i:                 ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i = phi i32 [ %i.tv, %bb.cn ], [ -1, %bb.cm ]
  %i.tw = load i32, ptr %i.ai, align 4
  %i.tx = add i32 %i.tw, %.0.i.i.i.i.i
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i

bb.co:                                            ; preds = %bb.ci
  %i.ty = add nsw i32 %.0120.i.i.i.i, 16
  br label %bb.ct

bb.cp:                                            ; preds = %stbi__jpeg_huff_decode.exit.i.i.i.i
  %i.tz = add nsw i32 %i.ti, %.0120.i.i.i.i       ; 2 uses
  %i.ua = add nsw i32 %i.tz, 1
  %i.ub = sext i32 %i.tz to i64
  %i.uc = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1
  %i.ue = icmp slt i32 %i.tg, %i.th
  br i1 %i.ue, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i172.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.uf = phi i32 [ %.pre.i172.i.i.i.i, %bb.cq ], [ %i.tg, %bb.cp ] ; 2 uses
  %i.ug = icmp slt i32 %i.uf, %i.th
  br i1 %i.ug, label %stbi__extend_receive.exit.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uh = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ui = call i32 @llvm.fshl.i32(i32 %i.uh, i32 %i.uh, i32 range(i32 1, 16) %i.th) ; 2 uses
  %i.uj = zext nneg i32 %i.th to i64
  %notmask.i172.i.i.i.i = shl nsw i32 -1, %i.th   ; 2 uses
  %i.uk = xor i32 %notmask.i172.i.i.i.i, -1
  %i.ul = and i32 %i.ui, %notmask.i172.i.i.i.i
  store i32 %i.ul, ptr %i.aa, align 8
  %i.um = and i32 %i.ui, %i.uk
  %i.un = sub nuw nsw i32 %i.uf, %i.th
  store i32 %i.un, ptr %i.z, align 4
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.uj
  %i.up = load i32, ptr %i.uo, align 4
  %.inv.i.i.i.i.i = icmp slt i32 %i.uh, 0
  %i.uq = select i1 %.inv.i.i.i.i.i, i32 0, i32 %i.up
  %i.ur = add i32 %i.uq, %i.um
  br label %stbi__extend_receive.exit.i.i.i.i

stbi__extend_receive.exit.i.i.i.i:                ; preds = %bb.cs, %bb.cr
  %.0.i171.i.i.i.i = phi i32 [ %i.ur, %bb.cs ], [ 0, %bb.cr ]
  %i.us = shl i32 %.0.i171.i.i.i.i, %i.qv
  %i.ut = trunc i32 %i.us to i16
  %i.uu = zext i8 %i.ud to i64
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.uu
  store i16 %i.ut, ptr %i.uv, align 2
  br label %bb.ct

bb.ct:                                            ; preds = %stbi__extend_receive.exit.i.i.i.i, %bb.co, %bb.bv
  %.4124.ph.i.i.i.i = phi i32 [ %i.ty, %bb.co ], [ %i.ua, %stbi__extend_receive.exit.i.i.i.i ], [ %i.rs, %bb.bv ] ; 2 uses
  %i.uw = load i32, ptr %i.v, align 8
  %.not169.i.i.i.i = icmp sgt i32 %.4124.ph.i.i.i.i, %i.uw
  br i1 %.not169.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %bb.br, !llvm.loop !52

bb.cu:                                            ; preds = %bb.bo
  br i1 %.not166.i.i.i.i, label %.preheader223.i.i.i.i, label %bb.cv

.preheader223.i.i.i.i:                            ; preds = %bb.cu
  %i.ux = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.uy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.uz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.va = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  %sext155.i.i.i.i = shl i32 65536, %i.qv
  %i.vb = ashr exact i32 %sext155.i.i.i.i, 16     ; 4 uses
  %i.vc = sub nsw i32 0, %i.vb
  %i.vd = trunc nsw i32 %i.vb to i16              ; 2 uses
  br label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.ve = add nsw i32 %i.qw, -1
  store i32 %i.ve, ptr %i.ai, align 4
  %i.vf = load i32, ptr %i.v, align 8
  %.not162248.i.i.i.i = icmp sgt i32 %i.qj, %i.vf
  br i1 %.not162248.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cv
  %sext165.i.i.i.i = shl i32 65536, %i.qv
  %i.vg = ashr exact i32 %sext165.i.i.i.i, 16     ; 2 uses
  %i.vh = trunc nsw i32 %i.vg to i16              ; 2 uses
  %i.vi = sext i32 %i.qj to i64
  %i.vj = sub i16 0, %i.vh
  br label %bb.cw

bb.cw:                                            ; preds = %stbi__jpeg_get_bit.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.vi, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %stbi__jpeg_get_bit.exit.thread.i.i.i.i ] ; 3 uses
  %i.vk = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.vm ; 3 uses
  %i.vo = load i16, ptr %i.vn, align 2
  %.not163.i.i.i.i = icmp eq i16 %i.vo, 0
  br i1 %.not163.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vp = load i32, ptr %i.z, align 4             ; 2 uses
  %i.vq = icmp slt i32 %i.vp, 1
  br i1 %i.vq, label %bb.cy, label %stbi__jpeg_get_bit.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i.i.i.i.i = load i32, ptr %i.z, align 4    ; 2 uses
  %i.vr = icmp slt i32 %.pr.i.i.i.i.i, 1
  br i1 %i.vr, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %stbi__jpeg_get_bit.exit.i.i.i.i

stbi__jpeg_get_bit.exit.i.i.i.i:                  ; preds = %bb.cy, %bb.cx
  %i.vs = phi i32 [ %.pr.i.i.i.i.i, %bb.cy ], [ %i.vp, %bb.cx ]
  %i.vt = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.vu = shl i32 %i.vt, 1
  store i32 %i.vu, ptr %i.aa, align 8
  %i.vv = add nsw i32 %i.vs, -1
  store i32 %i.vv, ptr %i.z, align 4
  %.not164.i.i.i.i = icmp sgt i32 %i.vt, -1
  br i1 %.not164.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbi__jpeg_get_bit.exit.i.i.i.i
  %i.vw = load i16, ptr %i.vn, align 2            ; 3 uses
  %i.vx = sext i16 %i.vw to i32
  %i.vy = and i32 %i.vg, %i.vx
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i

stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i: ; preds = %bb.cz
  %i.wa = icmp sgt i16 %i.vw, 0
  %.sink.p.i.i.i.i = select i1 %i.wa, i16 %i.vh, i16 %i.vj
  %.sink.i.i.i.i = add i16 %.sink.p.i.i.i.i, %i.vw
  store i16 %.sink.i.i.i.i, ptr %i.vn, align 2
  br label %stbi__jpeg_get_bit.exit.thread.i.i.i.i

stbi__jpeg_get_bit.exit.thread.i.i.i.i:           ; preds = %stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i, %bb.cz, %stbi__jpeg_get_bit.exit.i.i.i.i, %bb.cy, %bb.cw
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1
  %i.wb = load i32, ptr %i.v, align 8
  %i.wc = sext i32 %i.wb to i64
  %.not162.not.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i, %i.wc
  br i1 %.not162.not.i.i.i.i, label %bb.cw, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, !llvm.loop !53

bb.da:                                            ; preds = %.loopexit222.i.i.i.i, %.preheader223.i.i.i.i
  %.6.i.i.i.i = phi i32 [ %.9.i.i.i.i, %.loopexit222.i.i.i.i ], [ %i.qj, %.preheader223.i.i.i.i ] ; 3 uses
  %i.wd = load i32, ptr %i.z, align 4
  %i.we = icmp slt i32 %i.wd, 16
  br i1 %i.we, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.wf = load i32, ptr %i.aa, align 8            ; 5 uses
  %i.wg = lshr i32 %i.wf, 23
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1             ; 2 uses
  %.not.i174.i.i.i.i = icmp eq i8 %i.wj, -1
  br i1 %.not.i174.i.i.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wk = zext i8 %i.wj to i64                    ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = zext i8 %i.wm to i32                    ; 3 uses
  %i.wo = load i32, ptr %i.z, align 4             ; 2 uses
  %i.wp = icmp slt i32 %i.wo, %i.wn
  br i1 %i.wp, label %.critedge.sink.split.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wq = shl i32 %i.wf, %i.wn                    ; 2 uses
  store i32 %i.wq, ptr %i.aa, align 8
  %i.wr = sub nuw nsw i32 %i.wo, %i.wn            ; 2 uses
  store i32 %i.wr, ptr %i.z, align 4
  br label %stbi__jpeg_huff_decode.exit179.i.i.i.i

bb.df:                                            ; preds = %bb.dc
  %i.ws = lshr i32 %i.wf, 16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %bb.df
  %indvars.iv.i176.i.i.i.i = phi i64 [ %indvars.iv.next.i177.i.i.i.i, %bb.dg ], [ 10, %bb.df ] ; 5 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv.i176.i.i.i.i
  %i.wu = load i32, ptr %i.wt, align 4
  %i.wv = icmp ult i32 %i.ws, %i.wu
  %indvars.iv.next.i177.i.i.i.i = add nuw nsw i64 %indvars.iv.i176.i.i.i.i, 1
  br i1 %i.wv, label %bb.dh, label %bb.dg

bb.dh:                                            ; preds = %bb.dg
  %i.ww = trunc nuw nsw i64 %indvars.iv.i176.i.i.i.i to i32 ; 5 uses
  %i.wx = icmp eq i64 %indvars.iv.i176.i.i.i.i, 17
  %i.wy = load i32, ptr %i.z, align 4             ; 3 uses
  br i1 %i.wx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.wz = add nsw i32 %i.wy, -16
  store i32 %i.wz, ptr %i.z, align 4
  br label %.critedge.sink.split.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.xa = icmp slt i32 %i.wy, %i.ww
  br i1 %i.xa, label %.critedge.sink.split.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xb = sub nsw i32 32, %i.ww
  %i.xc = lshr i32 %i.wf, %i.xb
  %notmask.i180.i.i.i.i = shl nsw i32 -1, %i.ww
  %8 = xor i32 %notmask.i180.i.i.i.i, -1
  %i.xd = and i32 %i.xc, %8
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv.i176.i.i.i.i
  %i.xf = load i32, ptr %i.xe, align 4
  %i.xg = add i32 %i.xf, %i.xd                    ; 2 uses
  %or.cond.i178.i.i.i.i = icmp ugt i32 %i.xg, 255
  br i1 %or.cond.i178.i.i.i.i, label %.critedge.sink.split.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.xh = sub nuw nsw i32 %i.wy, %i.ww            ; 2 uses
  store i32 %i.xh, ptr %i.z, align 4
  %i.xi = shl i32 %i.wf, %i.ww                    ; 2 uses
  store i32 %i.xi, ptr %i.aa, align 8
  %i.xj = zext nneg i32 %i.xg to i64
  br label %stbi__jpeg_huff_decode.exit179.i.i.i.i

stbi__jpeg_huff_decode.exit179.i.i.i.i:           ; preds = %bb.dl, %bb.de
  %i.xk = phi i32 [ %i.xi, %bb.dl ], [ %i.wq, %bb.de ]
  %i.xl = phi i32 [ %i.xh, %bb.dl ], [ %i.wr, %bb.de ] ; 4 uses
  %.pn.i.i.i.i = phi i64 [ %i.xj, %bb.dl ], [ %i.wk, %bb.de ]
  %.1.i175.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uy, i64 %.pn.i.i.i.i
  %.1.i175.in.i.i.i.i = load i8, ptr %.1.i175.in.in.i.i.i.i, align 1 ; 2 uses
  %.1.i175.i.i.i.i = zext i8 %.1.i175.in.i.i.i.i to i32 ; 2 uses
  %i.xm = and i32 %.1.i175.i.i.i.i, 15
  %i.xn = lshr i32 %.1.i175.i.i.i.i, 4            ; 8 uses
  switch i32 %i.xm, label %.critedge.sink.split.i.i [
    i32 0, label %bb.dm
    i32 1, label %bb.ds
  ]

bb.dm:                                            ; preds = %stbi__jpeg_huff_decode.exit179.i.i.i.i
  %i.xo = icmp ult i8 %.1.i175.in.i.i.i.i, -16
  br i1 %i.xo, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %notmask.i.i.i.i = shl nsw i32 -1, %i.xn        ; 2 uses
  %i.xp = xor i32 %notmask.i.i.i.i, -1            ; 2 uses
  store i32 %i.xp, ptr %i.ai, align 4
  %.not156.i.i.i.i = icmp eq i32 %i.xn, 0
  br i1 %.not156.i.i.i.i, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xq = icmp slt i32 %i.xl, %i.xn
  br i1 %i.xq, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i181.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.xr = phi i32 [ %.pre.i181.i.i.i.i, %bb.dp ], [ %i.xl, %bb.do ] ; 2 uses
  %i.xs = icmp slt i32 %i.xr, %i.xn
  br i1 %i.xs, label %stbi__jpeg_get_bits.exit182.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xt = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.xu = call i32 @llvm.fshl.i32(i32 %i.xt, i32 %i.xt, i32 range(i32 1, 15) %i.xn) ; 2 uses
  %i.xv = and i32 %i.xu, %notmask.i.i.i.i
  store i32 %i.xv, ptr %i.aa, align 8
  %i.xw = and i32 %i.xu, %i.xp
  %i.xx = sub nuw nsw i32 %i.xr, %i.xn
  store i32 %i.xx, ptr %i.z, align 4
  br label %stbi__jpeg_get_bits.exit182.i.i.i.i

stbi__jpeg_get_bits.exit182.i.i.i.i:              ; preds = %bb.dr, %bb.dq
  %.0.i180.i.i.i.i = phi i32 [ %i.xw, %bb.dr ], [ 0, %bb.dq ]
  %i.xy = load i32, ptr %i.ai, align 4
  %i.xz = add nsw i32 %i.xy, %.0.i180.i.i.i.i
  store i32 %i.xz, ptr %i.ai, align 4
  br label %bb.du

bb.ds:                                            ; preds = %stbi__jpeg_huff_decode.exit179.i.i.i.i
  %i.ya = icmp slt i32 %i.xl, 1
  br i1 %i.ya, label %bb.dt, label %stbi__jpeg_get_bit.exit186.i.i.i.i

bb.dt:                                            ; preds = %bb.ds
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i185.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.yb = icmp slt i32 %.pr.i185.i.i.i.i, 1
  br i1 %i.yb, label %stbi__jpeg_get_bit.exit186.thread.i.i.i.i, label %.stbi__jpeg_get_bit.exit186_crit_edge.i.i.i.i

.stbi__jpeg_get_bit.exit186_crit_edge.i.i.i.i:    ; preds = %bb.dt
  %.pre.i.i55.i.i = load i32, ptr %i.aa, align 8
  br label %stbi__jpeg_get_bit.exit186.i.i.i.i

stbi__jpeg_get_bit.exit186.i.i.i.i:               ; preds = %.stbi__jpeg_get_bit.exit186_crit_edge.i.i.i.i, %bb.ds
  %i.yc = phi i32 [ %.pre.i.i55.i.i, %.stbi__jpeg_get_bit.exit186_crit_edge.i.i.i.i ], [ %i.xk, %bb.ds ] ; 2 uses
  %i.yd = phi i32 [ %.pr.i185.i.i.i.i, %.stbi__jpeg_get_bit.exit186_crit_edge.i.i.i.i ], [ %i.xl, %bb.ds ]
  %i.ye = shl i32 %i.yc, 1
  store i32 %i.ye, ptr %i.aa, align 8
  %i.yf = add nsw i32 %i.yd, -1
  store i32 %i.yf, ptr %i.z, align 4
  %.not154.i.i.i.i = icmp sgt i32 %i.yc, -1
  br i1 %.not154.i.i.i.i, label %stbi__jpeg_get_bit.exit186.thread.i.i.i.i, label %bb.du

stbi__jpeg_get_bit.exit186.thread.i.i.i.i:        ; preds = %stbi__jpeg_get_bit.exit186.i.i.i.i, %bb.dt
  br label %bb.du

bb.du:                                            ; preds = %stbi__jpeg_get_bit.exit186.thread.i.i.i.i, %stbi__jpeg_get_bit.exit186.i.i.i.i, %stbi__jpeg_get_bits.exit182.i.i.i.i, %bb.dn, %bb.dm
  %.0115.i.i.i.i = phi i32 [ %i.xn, %stbi__jpeg_get_bit.exit186.thread.i.i.i.i ], [ 15, %bb.dm ], [ 64, %bb.dn ], [ 64, %stbi__jpeg_get_bits.exit182.i.i.i.i ], [ %i.xn, %stbi__jpeg_get_bit.exit186.i.i.i.i ]
  %.0.i.i54.i.i = phi i32 [ %i.vc, %stbi__jpeg_get_bit.exit186.thread.i.i.i.i ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %stbi__jpeg_get_bits.exit182.i.i.i.i ], [ %i.vb, %stbi__jpeg_get_bit.exit186.i.i.i.i ]
  %i.yg = load i32, ptr %i.v, align 8             ; 2 uses
  %.not157250.i.i.i.i = icmp sgt i32 %.6.i.i.i.i, %i.yg
  br i1 %.not157250.i.i.i.i, label %.loopexit222.i.i.i.i, label %.lr.ph253.preheader.i.i.i.i

.lr.ph253.preheader.i.i.i.i:                      ; preds = %bb.du
  %i.yh = sext i32 %.6.i.i.i.i to i64
  br label %.lr.ph253.i.i.i.i

.lr.ph253.i.i.i.i:                                ; preds = %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, %.lr.ph253.preheader.i.i.i.i
  %indvars.iv263.i.i.i.i = phi i64 [ %i.yh, %.lr.ph253.preheader.i.i.i.i ], [ %indvars.iv.next264.i.i.i.i, %stbi__jpeg_get_bit.exit190.thread.i.i.i.i ] ; 3 uses
  %.1252.i.i.i.i = phi i32 [ %.0115.i.i.i.i, %.lr.ph253.preheader.i.i.i.i ], [ %.3.i.i.i.i, %stbi__jpeg_get_bit.exit190.thread.i.i.i.i ] ; 7 uses
  %indvars.iv.next264.i.i.i.i = add nsw i64 %indvars.iv263.i.i.i.i, 1 ; 3 uses
  %i.yi = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv263.i.i.i.i
  %i.yj = load i8, ptr %i.yi, align 1
  %i.yk = zext i8 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.yk ; 5 uses
  %i.ym = load i16, ptr %i.yl, align 2
  %.not158.i.i.i.i = icmp eq i16 %i.ym, 0
  br i1 %.not158.i.i.i.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph253.i.i.i.i
  %i.yn = load i32, ptr %i.z, align 4             ; 2 uses
  %i.yo = icmp slt i32 %i.yn, 1
  br i1 %i.yo, label %bb.dw, label %stbi__jpeg_get_bit.exit190.i.i.i.i

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i189.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.yp = icmp slt i32 %.pr.i189.i.i.i.i, 1
  br i1 %i.yp, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, label %stbi__jpeg_get_bit.exit190.i.i.i.i

stbi__jpeg_get_bit.exit190.i.i.i.i:               ; preds = %bb.dw, %bb.dv
  %i.yq = phi i32 [ %.pr.i189.i.i.i.i, %bb.dw ], [ %i.yn, %bb.dv ]
  %i.yr = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ys = shl i32 %i.yr, 1
  store i32 %i.ys, ptr %i.aa, align 8
  %i.yt = add nsw i32 %i.yq, -1
  store i32 %i.yt, ptr %i.z, align 4
  %.not159.i.i.i.i = icmp sgt i32 %i.yr, -1
  br i1 %.not159.i.i.i.i, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %stbi__jpeg_get_bit.exit190.i.i.i.i
  %i.yu = load i16, ptr %i.yl, align 2            ; 4 uses
  %i.yv = sext i16 %i.yu to i32
  %i.yw = and i32 %i.vb, %i.yv
  %i.yx = icmp eq i32 %i.yw, 0
  br i1 %i.yx, label %bb.dy, label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.yy = icmp sgt i16 %i.yu, 0
  br i1 %i.yy, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.yz = add i16 %i.yu, %i.vd
  store i16 %i.yz, ptr %i.yl, align 2
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.za = sub i16 %i.yu, %i.vd
  store i16 %i.za, ptr %i.yl, align 2
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

bb.eb:                                            ; preds = %.lr.ph253.i.i.i.i
  %i.zb = icmp eq i32 %.1252.i.i.i.i, 0
  br i1 %i.zb, label %.thread219.i.i.i.i, label %bb.ec

.thread219.i.i.i.i:                               ; preds = %bb.eb
  %i.zc = trunc nsw i64 %indvars.iv.next264.i.i.i.i to i32
  %i.zd = trunc i32 %.0.i.i54.i.i to i16
  store i16 %i.zd, ptr %i.yl, align 2
  %.pre266.i.i.i.i = load i32, ptr %i.v, align 8
  br label %.loopexit222.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.ze = add nsw i32 %.1252.i.i.i.i, -1
  br label %stbi__jpeg_get_bit.exit190.thread.i.i.i.i

stbi__jpeg_get_bit.exit190.thread.i.i.i.i:        ; preds = %bb.ec, %bb.ea, %bb.dz, %bb.dx, %stbi__jpeg_get_bit.exit190.i.i.i.i, %bb.dw
  %.3.i.i.i.i = phi i32 [ %i.ze, %bb.ec ], [ %.1252.i.i.i.i, %bb.dz ], [ %.1252.i.i.i.i, %bb.ea ], [ %.1252.i.i.i.i, %bb.dx ], [ %.1252.i.i.i.i, %stbi__jpeg_get_bit.exit190.i.i.i.i ], [ %.1252.i.i.i.i, %bb.dw ]
  %i.zf = load i32, ptr %i.v, align 8             ; 2 uses
  %i.zg = sext i32 %i.zf to i64
  %.not157.not.i.i.i.i = icmp slt i64 %indvars.iv263.i.i.i.i, %i.zg
  br i1 %.not157.not.i.i.i.i, label %.lr.ph253.i.i.i.i, label %.loopexit222.loopexit.i.i.i.i

.loopexit222.loopexit.i.i.i.i:                    ; preds = %stbi__jpeg_get_bit.exit190.thread.i.i.i.i
  %i.zh = trunc nsw i64 %indvars.iv.next264.i.i.i.i to i32
  br label %.loopexit222.i.i.i.i

.loopexit222.i.i.i.i:                             ; preds = %.loopexit222.loopexit.i.i.i.i, %.thread219.i.i.i.i, %bb.du
  %i.zi = phi i32 [ %.pre266.i.i.i.i, %.thread219.i.i.i.i ], [ %i.yg, %bb.du ], [ %i.zf, %.loopexit222.loopexit.i.i.i.i ]
  %.9.i.i.i.i = phi i32 [ %i.zc, %.thread219.i.i.i.i ], [ %.6.i.i.i.i, %bb.du ], [ %i.zh, %.loopexit222.loopexit.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i = icmp sgt i32 %.9.i.i.i.i, %i.zi
  br i1 %.not161.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %bb.da, !llvm.loop !54

stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i: ; preds = %stbi__jpeg_get_bits.exit.i.i.i.i, %bb.cj, %bb.bq
  %.sink.i.i.i = phi i32 [ %i.rb, %bb.bq ], [ 0, %bb.cj ], [ %i.tx, %stbi__jpeg_get_bits.exit.i.i.i.i ]
  store i32 %.sink.i.i.i, ptr %i.ai, align 4
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i

stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i: ; preds = %stbi__jpeg_get_bit.exit.thread.i.i.i.i, %.loopexit222.i.i.i.i, %bb.ct, %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i, %bb.cv, %bb.bn
  %i.zj = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.zk = add nsw i32 %i.zj, -1
  store i32 %i.zk, ptr %i.ah, align 4
  %i.zl = icmp slt i32 %i.zj, 2
  br i1 %i.zl, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.zm = load i32, ptr %i.z, align 4
  %i.zn = icmp slt i32 %i.zm, 24
  br i1 %i.zn, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.zo = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.zp = and i8 %i.zo, -8
  %or.cond232.i.i.i = icmp eq i8 %i.zp, -48
  br i1 %or.cond232.i.i.i, label %bb.eg, label %stbi__parse_entropy_coded_data.exit.thread.i.i

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.zq = load i32, ptr %i.p, align 8             ; 2 uses
  %.not.i240.i.i.i = icmp eq i32 %i.zq, 0
  %spec.select.i241.i.i.i = select i1 %.not.i240.i.i.i, i32 2147483647, i32 %i.zq
  store i32 %spec.select.i241.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.zr = add nuw nsw i32 %.0201287.i.i.i, 1      ; 2 uses
  %exitcond.not.i53.i.i = icmp eq i32 %i.zr, %i.pr
  br i1 %exitcond.not.i53.i.i, label %._crit_edge289.i.i.i, label %bb.bm, !llvm.loop !55

._crit_edge289.i.i.i:                             ; preds = %bb.eh
  %i.zs = add nuw nsw i32 %.0200290.i.i.i, 1      ; 2 uses
  %exitcond327.not.i.i.i = icmp eq i32 %i.zs, %i.pv
  br i1 %exitcond327.not.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i, label %.preheader262.i.i.i, !llvm.loop !56

.preheader267.i.i.i:                              ; preds = %.preheader267.lr.ph.i.i.i, %._crit_edge285.i.i.i
  %i.zt = phi i32 [ %i.acc, %._crit_edge285.i.i.i ], [ %i.ph, %.preheader267.lr.ph.i.i.i ]
  %i.zu = phi i32 [ %i.acd, %._crit_edge285.i.i.i ], [ %spec.select.i.i.i.i, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.zv = phi i32 [ %i.ace, %._crit_edge285.i.i.i ], [ %i.pj, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %.0198286.i.i.i = phi i32 [ %i.acf, %._crit_edge285.i.i.i ], [ 0, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.zw = icmp sgt i32 %i.zv, 0
  br i1 %i.zw, label %.preheader266.i.i.i, label %._crit_edge285.i.i.i

.preheader266.i.i.i:                              ; preds = %.preheader267.i.i.i, %bb.en
  %i.zx = phi i32 [ %i.aby, %bb.en ], [ %i.zu, %.preheader267.i.i.i ]
  %.0199284.i.i.i = phi i32 [ %i.abz, %bb.en ], [ 0, %.preheader267.i.i.i ] ; 2 uses
  %i.zy = load i32, ptr %i.s, align 4             ; 2 uses
end_hunk_1
begin_hunk_2_@stbi__get8:bb.a
stbi__refill_buffer.exit:                         ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %stbi__refill_buffer.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__mad3sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #5 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread15, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15

stbi__mul2sizes_valid.exit.thread15:              ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %stbi__mul2sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit12.thread20, label %stbi__mul2sizes_valid.exit12

stbi__mul2sizes_valid.exit12:                     ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit12.thread20

stbi__mul2sizes_valid.exit12.thread20:            ; preds = %bb.c, %stbi__mul2sizes_valid.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15, %bb.a, %stbi__mul2sizes_valid.exit12.thread20, %stbi__mul2sizes_valid.exit12, %stbi__mul2sizes_valid.exit
  %i.l = phi i32 [ 0, %stbi__mul2sizes_valid.exit12 ], [ 0, %stbi__mul2sizes_valid.exit ], [ %i.k, %stbi__mul2sizes_valid.exit12.thread20 ], [ 0, %bb.a ], [ 0, %stbi__mul2sizes_valid.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @stbi__malloc_mad2(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %stbi__mad2sizes_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.f = add nsw i32 %i.d, %2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.g) #13
  br label %stbi__mad2sizes_valid.exit.thread

stbi__mad2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mad2sizes_valid.exit, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %stbi__mad2sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbi__free_jpeg_components(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.h) #13
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #13
  store ptr null, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0)
  %.pr = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread118.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %stbi__jpeg_huff_decode.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %i.ab, label %.thread118.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread118.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %notmask.i = shl nsw i32 -1, %i.aa
  %7 = xor i32 %notmask.i, -1
  %i.ag = and i32 %i.af, %7
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ak, 255
  br i1 %or.cond.i, label %.thread118.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.al, ptr %i.a, align 4
  %i.am = shl i32 %i.f, %i.aa
  store i32 %i.am, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.ap, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1    ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 5 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread118.sink.split, label %bb.l

bb.l:                                             ; preds = %stbi__jpeg_huff_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %stbi__extend_receive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.1.i
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = phi i32 [ %.pre.i, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.at = icmp slt i32 %i.as, %.1.i
  br i1 %i.at, label %stbi__extend_receive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %i.e, align 8             ; 3 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.aw = zext nneg i8 %.1.i.in to i64
  %notmask.i82 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.ax = xor i32 %notmask.i82, -1
  %i.ay = and i32 %i.av, %notmask.i82
  store i32 %i.ay, ptr %i.e, align 8
  %i.az = and i32 %i.av, %i.ax
  %i.ba = sub nuw nsw i32 %i.as, %.1.i
  store i32 %i.ba, ptr %i.a, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4
  %.inv.i = icmp slt i32 %i.au, 0
  %i.bd = select i1 %.inv.i, i32 0, i32 %i.bc
  %i.be = add i32 %i.bd, %i.az
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.p, %bb.o, %bb.l
  %i.bf = phi i32 [ 0, %bb.l ], [ %i.be, %bb.p ], [ 0, %bb.o ] ; 5 uses
  %i.bg = sext i32 %5 to i64
  %i.bh = getelementptr [96 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 18104  ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8            ; 5 uses
  %i.bk = xor i32 %i.bj, %i.bf
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bm = and i32 %i.bj, %i.bf
  %i.bn = sub nsw i32 2147483647, %i.bf
  %i.bo = icmp sgt i32 %i.bj, %i.bn
  %i.bp = sub nsw i32 -2147483648, %i.bf
  %i.bq = icmp slt i32 %i.bj, %i.bp
  %or.cond.not.i123 = icmp slt i32 %i.bm, 0
  %.0.shrunk.i = select i1 %or.cond.not.i123, i1 %i.bq, i1 %i.bo
  br i1 %.0.shrunk.i, label %.thread118.sink.split, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.br = add nsw i32 %i.bj, %i.bf                ; 5 uses
  store i32 %i.br, ptr %i.bi, align 8
  %i.bs = load i16, ptr %6, align 2               ; 4 uses
  %or.cond.i83 = icmp eq i16 %i.bs, 0
  br i1 %or.cond.i83, label %stbi__mul2shorts_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.bt = icmp sgt i32 %i.br, -1
  br i1 %i.bt, label %stbi__mul2shorts_valid.exit, label %.split

.split:                                           ; preds = %bb.q
  %i.bu = udiv i16 -32768, %i.bs
  %.zext122 = zext i16 %i.bu to i32
  %.neg.i = sub nsw i32 0, %.zext122
  %.not148 = icmp slt i32 %i.br, %.neg.i
  br i1 %.not148, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %bb.q
  %i.bv = udiv i16 32767, %i.bs
  %.zext = zext nneg i16 %i.bv to i32
  %.not149 = icmp samesign ugt i32 %i.br, %.zext
  br i1 %.not149, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split, %stbi__addints_valid.exit.thread, %stbi__mul2shorts_valid.exit
  %i.bw = trunc i32 %i.br to i16
  %i.bx = mul i16 %i.bs, %i.bw
  store i16 %i.bx, ptr %1, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 1612
  br label %bb.r

bb.r:                                             ; preds = %bb.an, %stbi__mul2shorts_valid.exit.thread
  %.066 = phi i32 [ 1, %stbi__mul2shorts_valid.exit.thread ], [ %.4.ph, %bb.an ] ; 3 uses
  %i.cc = load i32, ptr %i.a, align 4
  %i.cd = icmp slt i32 %i.cc, 16
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = load i32, ptr %i.e, align 8             ; 3 uses
  %i.cf = lshr i32 %i.ce, 23
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2            ; 3 uses
  %.not80 = icmp eq i16 %i.ci, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = and i32 %i.cj, 15                       ; 3 uses
  %i.cl = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.thread118.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = lshr i32 %i.cj, 4
  %i.co = and i32 %i.cn, 15
  %i.cp = add nsw i32 %i.co, %.066                ; 2 uses
  %i.cq = shl i32 %i.ce, %i.ck
  store i32 %i.cq, ptr %i.e, align 8
  %i.cr = sub nuw nsw i32 %i.cl, %i.ck
  store i32 %i.cr, ptr %i.a, align 4
  %i.cs = add nsw i32 %i.cp, 1
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = ashr i16 %i.ci, 8
  %i.cx = zext i8 %i.cv to i64                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = mul i16 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cx
  store i16 %i.da, ptr %i.db, align 2
  br label %bb.an

bb.w:                                             ; preds = %bb.t
  %i.dc = load i32, ptr %i.a, align 4
  %i.dd = icmp slt i32 %i.dc, 16
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.e, align 8             ; 2 uses
  %.pre124 = lshr i32 %.pre, 23
  %.pre125 = zext nneg i32 %.pre124 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi126 = phi i64 [ %.pre125, %bb.x ], [ %i.cg, %bb.w ]
  %i.de = phi i32 [ %.pre, %bb.x ], [ %i.ce, %bb.w ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi126
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %.not.i86 = icmp eq i8 %i.dg, -1
  br i1 %.not.i86, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = zext i8 %i.dg to i64                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32                    ; 3 uses
  %i.dl = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.dk
  br i1 %i.dm, label %.thread118.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = shl i32 %i.de, %i.dk
  store i32 %i.dn, ptr %i.e, align 8
  %i.do = sub nuw nsw i32 %i.dl, %i.dk            ; 2 uses
  store i32 %i.do, ptr %i.a, align 4
  br label %stbi__jpeg_huff_decode.exit91

bb.ab:                                            ; preds = %bb.y
  %i.dp = lshr i32 %i.de, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %bb.ac ], [ 10, %bb.ab ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i88
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1
  br i1 %i.ds, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.dt = trunc nuw nsw i64 %indvars.iv.i88 to i32 ; 5 uses
  %i.du = icmp eq i64 %indvars.iv.i88, 17
  %i.dv = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %i.du, label %.thread118.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = icmp slt i32 %i.dv, %i.dt
  br i1 %i.dw, label %.thread118.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = sub nsw i32 32, %i.dt
  %i.dy = lshr i32 %i.de, %i.dx
  %notmask.i91 = shl nsw i32 -1, %i.dt
  %8 = xor i32 %notmask.i91, -1
  %i.dz = and i32 %i.dy, %8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i88
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = add i32 %i.eb, %i.dz                    ; 2 uses
  %or.cond.i90 = icmp ugt i32 %i.ec, 255
  br i1 %or.cond.i90, label %.thread118.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = sub nuw nsw i32 %i.dv, %i.dt            ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4
  %i.ee = shl i32 %i.de, %i.dt
  store i32 %i.ee, ptr %i.e, align 8
  %i.ef = zext nneg i32 %i.ec to i64
  br label %stbi__jpeg_huff_decode.exit91

stbi__jpeg_huff_decode.exit91:                    ; preds = %bb.ag, %bb.aa
  %i.eg = phi i32 [ %i.ed, %bb.ag ], [ %i.do, %bb.aa ] ; 2 uses
  %.pn = phi i64 [ %i.ef, %bb.ag ], [ %i.dh, %bb.aa ]
  %.1.i87.in.in = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.pn
  %.1.i87.in = load i8, ptr %.1.i87.in.in, align 1 ; 2 uses
  %.1.i87 = zext i8 %.1.i87.in to i32             ; 2 uses
  %i.eh = and i32 %.1.i87, 15                     ; 7 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %.not81 = icmp eq i8 %.1.i87.in, -16
  br i1 %.not81, label %bb.ai, label %.thread118

bb.ai:                                            ; preds = %bb.ah
  %i.ej = add nsw i32 %.066, 16
  br label %bb.an

bb.aj:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %i.ek = lshr i32 %.1.i87, 4
  %i.el = add nsw i32 %i.ek, %.066                ; 2 uses
  %i.em = add nsw i32 %i.el, 1
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = icmp slt i32 %i.eg, %i.eh
  br i1 %i.eq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i94 = load i32, ptr %i.a, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.er = phi i32 [ %.pre.i94, %bb.ak ], [ %i.eg, %bb.aj ] ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.eh
  br i1 %i.es, label %stbi__extend_receive.exit95, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load i32, ptr %i.e, align 8             ; 3 uses
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %i.et, i32 %i.et, i32 range(i32 1, 16) %i.eh) ; 2 uses
  %i.ev = zext nneg i32 %i.eh to i64
  %notmask.i94 = shl nsw i32 -1, %i.eh            ; 2 uses
  %i.ew = xor i32 %notmask.i94, -1
  %i.ex = and i32 %i.eu, %notmask.i94
  store i32 %i.ex, ptr %i.e, align 8
  %i.ey = and i32 %i.eu, %i.ew
  %i.ez = sub nuw nsw i32 %i.er, %i.eh
  store i32 %i.ez, ptr %i.a, align 4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.ev
  %i.fb = load i32, ptr %i.fa, align 4
  %.inv.i92 = icmp slt i32 %i.et, 0
  %i.fc = select i1 %.inv.i92, i32 0, i32 %i.fb
  %i.fd = add i32 %i.fc, %i.ey
  %i.fe = trunc i32 %i.fd to i16
  br label %stbi__extend_receive.exit95

stbi__extend_receive.exit95:                      ; preds = %bb.al, %bb.am
  %.0.i93 = phi i16 [ %i.fe, %bb.am ], [ 0, %bb.al ]
  %i.ff = zext i8 %i.ep to i64                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = mul i16 %i.fh, %.0.i93
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ff
  store i16 %i.fi, ptr %i.fj, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %stbi__extend_receive.exit95, %bb.ai
  %.4.ph = phi i32 [ %i.ej, %bb.ai ], [ %i.em, %stbi__extend_receive.exit95 ], [ %i.cs, %bb.v ] ; 2 uses
  %i.fk = icmp slt i32 %.4.ph, 64
  br i1 %i.fk, label %bb.r, label %.thread118, !llvm.loop !139

.thread118.sink.split.sink.split:                 ; preds = %bb.ad, %bb.h
  %.lcssa.sink = phi i32 [ %i.ac, %bb.h ], [ %i.dv, %bb.ad ]
  %i.fl = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fl, ptr %i.a, align 4
  br label %.thread118.sink.split

.thread118.sink.split:                            ; preds = %bb.af, %bb.ae, %bb.z, %bb.u, %.thread118.sink.split.sink.split, %stbi__mul2shorts_valid.exit, %.split, %stbi__addints_valid.exit, %stbi__jpeg_huff_decode.exit, %bb.d, %bb.i, %bb.j
  %.str.15.sink = phi ptr [ @.str.15, %.split ], [ @.str.15, %stbi__mul2shorts_valid.exit ], [ @.str.15, %stbi__addints_valid.exit ], [ @.str.15, %stbi__jpeg_huff_decode.exit ], [ @.str.15, %bb.j ], [ @.str.15, %bb.i ], [ @.str.15, %bb.d ], [ @.str.15, %.thread118.sink.split.sink.split ], [ @.str.20, %bb.u ], [ @.str.15, %bb.af ], [ @.str.15, %bb.z ], [ @.str.15, %bb.ae ]
  %i.fm = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.15.sink) #13 ; 0 uses
  br label %.thread118

.thread118:                                       ; preds = %bb.an, %bb.ah, %.thread118.sink.split
  %.472 = phi i32 [ 0, %.thread118.sink.split ], [ 1, %bb.ah ], [ 1, %bb.an ]
  ret i32 %.472
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbi__grow_buffer_unsafe(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  %.promoted = load i32, ptr %i.b, align 4        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %i.f = add nuw i32 %smax, 7
  %i.g = sub i32 %i.f, %.promoted
  %i.h = and i32 %i.g, -8
  %i.i = add i32 %.promoted, %i.h
  %i.j = add i32 %i.i, 8
  store i32 %i.j, ptr %i.b, align 4
  br label %.loopexit

.splitthread-pre-split:                           ; preds = %.thread
  %.pr = load i32, ptr %i.a, align 4
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split
  %i.l = load ptr, ptr %0, align 8                ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8
  %i.s = load i8, ptr %i.n, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = tail call i32 %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab) #13, !inline_history !3 ; 2 uses
  %i.ad = load ptr, ptr %i.m, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8
  %i.an = icmp eq i32 %i.ac, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %i.z, align 8
  br label %stbi__refill_buffer.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 %i.ap
  %.pre.i = load i8, ptr %i.z, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.g, %bb.f
  %i.ar = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.aq, %bb.g ]
  store ptr %.sink.i.i, ptr %i.o, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store ptr %i.as, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %stbi__refill_buffer.exit.i, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ %i.ar, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.at = icmp eq i8 %.0.i, -1
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8               ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ba, ptr %i.av, align 8
  %i.bb = load i8, ptr %i.aw, align 1
  br label %stbi__get8.exit23.preheader

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %.not.i18 = icmp eq i32 %i.bd, 0
  br i1 %.not.i18, label %stbi__get8.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = tail call i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.bk) #13, !inline_history !3 ; 2 uses
  %i.bm = load ptr, ptr %i.av, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store i8 0, ptr %i.bi, align 8
  br label %stbi__refill_buffer.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.by = sext i32 %i.bl to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %.pre.i19 = load i8, ptr %i.bi, align 8
  br label %stbi__refill_buffer.exit.i20

stbi__refill_buffer.exit.i20:                     ; preds = %bb.n, %bb.m
  %i.ca = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.ax, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store ptr %i.cb, ptr %i.av, align 8
  br label %stbi__get8.exit23.preheader

stbi__get8.exit23.preheader:                      ; preds = %bb.j, %bb.k, %stbi__refill_buffer.exit.i20
  %.016.in.ph = phi i8 [ %i.ca, %stbi__refill_buffer.exit.i20 ], [ %i.bb, %bb.j ], [ 0, %bb.k ]
  br label %stbi__get8.exit23

stbi__get8.exit23:                                ; preds = %stbi__get8.exit23.backedge, %stbi__get8.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %stbi__get8.exit23.preheader ], [ %.016.in.be, %stbi__get8.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %stbi__get8.exit23
  %i.cc = load ptr, ptr %0, align 8               ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.ci, ptr %i.cd, align 8
  %i.cj = load i8, ptr %i.ce, align 1
  br label %stbi__get8.exit23.backedge

stbi__get8.exit23.backedge:                       ; preds = %bb.p, %bb.q, %stbi__refill_buffer.exit.i26
  %.016.in.be = phi i8 [ %i.cj, %bb.p ], [ %i.di, %stbi__refill_buffer.exit.i26 ], [ 0, %bb.q ]
  br label %stbi__get8.exit23, !llvm.loop !140

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %stbi__get8.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = tail call i32 %i.cn(ptr noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.cs) #13, !inline_history !3 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 184 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 8
  %i.de = icmp eq i32 %i.ct, 0
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store i8 0, ptr %i.cq, align 8
  br label %stbi__refill_buffer.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.dg = sext i32 %i.ct to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %.pre.i25 = load i8, ptr %i.cq, align 8
  br label %stbi__refill_buffer.exit.i26

stbi__refill_buffer.exit.i26:                     ; preds = %bb.t, %bb.s
  %i.di = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.cf, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store ptr %i.dj, ptr %i.cd, align 8
  br label %stbi__get8.exit23.backedge

bb.u:                                             ; preds = %stbi__get8.exit23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.dk, align 8
  store i32 1, ptr %i.a, align 4
  br label %.loopexit

.thread:                                          ; preds = %stbi__get8.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %stbi__get8.exit23 ]
  %i.dl = zext i8 %.shrunk to i32
  %i.dm = load i32, ptr %i.b, align 4             ; 3 uses
  %i.dn = sub nsw i32 24, %i.dm
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.c, align 8
  %i.dq = or i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.c, align 8
  %i.dr = add nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %i.b, align 4
  %i.ds = icmp slt i32 %i.dm, 17
  br i1 %i.ds, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_dc(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %stbi__jpeg_get_bit.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 16
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.j = load i32, ptr %i.d, align 4
  %i.k = icmp slt i32 %i.j, 16
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 5 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.s = zext i8 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = load i32, ptr %i.d, align 4              ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %stbi__jpeg_huff_decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = shl i32 %i.m, %i.v
  store i32 %i.y, ptr %i.l, align 8
  %i.z = sub nuw nsw i32 %i.w, %i.v               ; 2 uses
  store i32 %i.z, ptr %i.d, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  br label %stbi__jpeg_huff_decode.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = lshr i32 %i.m, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.ac, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ai = icmp eq i64 %indvars.iv.i, 17
  %i.aj = load i32, ptr %i.d, align 4             ; 3 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -16
  store i32 %i.ak, ptr %i.d, align 4
  br label %stbi__jpeg_huff_decode.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.al = icmp slt i32 %i.aj, %i.ah
  br i1 %i.al, label %stbi__jpeg_huff_decode.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = sub nsw i32 32, %i.ah
  %i.an = lshr i32 %i.m, %i.am
  %notmask.i = shl nsw i32 -1, %i.ah
  %4 = xor i32 %notmask.i, -1
  %i.ao = and i32 %i.an, %4
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %i.ao                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.as, 255
  br i1 %or.cond.i, label %stbi__jpeg_huff_decode.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = sub nuw nsw i32 %i.aj, %i.ah            ; 2 uses
  store i32 %i.at, ptr %i.d, align 4
  %i.au = shl i32 %i.m, %i.ah
  store i32 %i.au, ptr %i.l, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.j, %bb.q
  %i.ay = phi i32 [ %i.at, %bb.q ], [ %i.z, %bb.j ] ; 2 uses
  %.1.i.in.in = phi ptr [ %i.ax, %bb.q ], [ %i.ab, %bb.j ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1    ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 5 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %stbi__jpeg_huff_decode.exit.thread, label %bb.r

stbi__jpeg_huff_decode.exit.thread:               ; preds = %bb.p, %bb.o, %bb.i, %bb.n, %stbi__jpeg_huff_decode.exit
  %i.az = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %stbi__jpeg_get_bit.exit.thread

bb.r:                                             ; preds = %stbi__jpeg_huff_decode.exit
  %.not32 = icmp eq i8 %.1.i.in, 0
  br i1 %.not32, label %stbi__extend_receive.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp slt i32 %i.ay, %.1.i
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.d, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = phi i32 [ %.pre.i, %bb.t ], [ %i.ay, %bb.s ] ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %.1.i
  br i1 %i.bc, label %stbi__extend_receive.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load i32, ptr %i.l, align 8             ; 3 uses
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.bf = zext nneg i8 %.1.i.in to i64
  %notmask.i35 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.bg = xor i32 %notmask.i35, -1
  %i.bh = and i32 %i.be, %notmask.i35
  store i32 %i.bh, ptr %i.l, align 8
  %i.bi = and i32 %i.be, %i.bg
  %i.bj = sub nuw nsw i32 %i.bb, %.1.i
  store i32 %i.bj, ptr %i.d, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4
  %.inv.i = icmp slt i32 %i.bd, 0
  %i.bm = select i1 %.inv.i, i32 0, i32 %i.bl
  %i.bn = add i32 %i.bm, %i.bi
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.v, %bb.u, %bb.r
  %i.bo = phi i32 [ 0, %bb.r ], [ %i.bn, %bb.v ], [ 0, %bb.u ] ; 5 uses
  %i.bp = sext i32 %3 to i64
  %i.bq = getelementptr [96 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 18104  ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 5 uses
  %i.bt = xor i32 %i.bs, %i.bo
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bv = and i32 %i.bs, %i.bo
  %i.bw = sub nsw i32 2147483647, %i.bo
  %i.bx = icmp sgt i32 %i.bs, %i.bw
  %i.by = sub nsw i32 -2147483648, %i.bo
  %i.bz = icmp slt i32 %i.bs, %i.by
  %or.cond.not.i50 = icmp slt i32 %i.bv, 0
  %.0.shrunk.i = select i1 %or.cond.not.i50, i1 %i.bz, i1 %i.bx
  br i1 %.0.shrunk.i, label %bb.w, label %stbi__addints_valid.exit.thread

bb.w:                                             ; preds = %stbi__addints_valid.exit
  %i.ca = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %stbi__jpeg_get_bit.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.cb = add nsw i32 %i.bs, %i.bo                ; 6 uses
  store i32 %i.cb, ptr %i.br, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cd = load i32, ptr %i.cc, align 8            ; 5 uses
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = xor i32 %i.ce, %i.cb
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %stbi__mul2shorts_valid.exit, label %bb.x

bb.x:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.ch = icmp eq i32 %i.cd, 31
  br i1 %i.ch, label %.split61, label %.split

.split61:                                         ; preds = %bb.x
  %i.ci = icmp slt i32 %i.cb, 1
  br i1 %i.ci, label %stbi__mul2shorts_valid.exit.thread, label %bb.y

.split:                                           ; preds = %bb.x
  %i.cj = lshr i32 32768, %i.cd
  %.neg.i = sub nsw i32 0, %i.cj
  %.not62 = icmp slt i32 %i.cb, %.neg.i
  br i1 %.not62, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %stbi__addints_valid.exit.thread
  %i.ck = lshr i32 32767, %i.cd
  %.not63 = icmp sgt i32 %i.cb, %i.ck
  br i1 %.not63, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

bb.y:                                             ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cl = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %stbi__jpeg_get_bit.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cm = shl i32 %i.cb, %i.cd
  %i.cn = trunc i32 %i.cm to i16
  store i16 %i.cn, ptr %1, align 2
  br label %stbi__jpeg_get_bit.exit.thread

bb.z:                                             ; preds = %bb.e
  %i.co = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.aa, label %stbi__jpeg_get_bit.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.d, align 4            ; 2 uses
  %i.cq = icmp slt i32 %.pr.i, 1
  br i1 %i.cq, label %stbi__jpeg_get_bit.exit.thread, label %stbi__jpeg_get_bit.exit

stbi__jpeg_get_bit.exit:                          ; preds = %bb.z, %bb.aa
  %i.cr = phi i32 [ %.pr.i, %bb.aa ], [ %i.co, %bb.z ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8            ; 2 uses
  %i.cu = shl i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8
  %i.cv = add nsw i32 %i.cr, -1
  store i32 %i.cv, ptr %i.d, align 4
  %.not31 = icmp sgt i32 %i.ct, -1
  br i1 %.not31, label %stbi__jpeg_get_bit.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %stbi__jpeg_get_bit.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = load i16, ptr %1, align 2
  %i.da = trunc i32 %i.cy to i16
  %i.db = add i16 %i.cz, %i.da
  store i16 %i.db, ptr %1, align 2
  br label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread:                   ; preds = %bb.aa, %stbi__mul2shorts_valid.exit.thread, %bb.ab, %stbi__jpeg_get_bit.exit, %bb.y, %bb.w, %stbi__jpeg_huff_decode.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %stbi__jpeg_huff_decode.exit.thread ], [ 0, %bb.w ], [ 0, %bb.y ], [ 1, %stbi__jpeg_get_bit.exit ], [ 1, %bb.ab ], [ 1, %stbi__mul2shorts_valid.exit.thread ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__build_huffman(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 6 uses
  br label %.preheader66

.preheader66:                                     ; preds = %bb.a, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next93, %._crit_edge ] ; 3 uses
  %.05474 = phi i32 [ 0, %bb.a ], [ %.155.lcssa, %._crit_edge ] ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv92 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader66
  %i.e = trunc i64 %indvars.iv92 to i8
  %i.f = add nuw nsw i8 %i.e, 1                   ; 2 uses
  %i.g = sext i32 %.05474 to i64                  ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.05474, i32 256)
  %i.h = sub i32 %smax, %.05474
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i8 %i.f, ptr %i.i, align 1
  %exitcond113 = icmp sgt i32 %.05474, 255
  br i1 %exitcond113, label %.loopexit65.sink.split, label %.lr.ph116

bb.b:                                             ; preds = %.lr.ph116
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.f, ptr %i.j, align 1
  %exitcond = icmp eq i32 %i.k, %i.h
  br i1 %exitcond, label %.loopexit65.sink.split, label %.lr.ph116, !llvm.loop !142

.lr.ph116:                                        ; preds = %.lr.ph, %bb.b
  %.05771115 = phi i32 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv114 = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.g, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv114, 1 ; 3 uses
  %i.k = add nuw nsw i32 %.05771115, 1            ; 3 uses
  %i.l = load i32, ptr %i.b, align 4
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %.lr.ph116
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader66
  %.155.lcssa = phi i32 [ %.05474, %.preheader66 ], [ %i.n, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, 16
  br i1 %exitcond95.not, label %bb.c, label %.preheader66, !llvm.loop !143

bb.c:                                             ; preds = %._crit_edge
  %i.o = sext i32 %.155.lcssa to i64
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %indvars.iv99 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next100, %bb.e ] ; 7 uses
  %.083 = phi i32 [ 0, %bb.c ], [ %i.an, %bb.e ]  ; 3 uses
  %.25682 = phi i32 [ 0, %bb.c ], [ %.4, %bb.e ]  ; 3 uses
  %i.t = sub i32 %.25682, %.083
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv99
  store i32 %i.t, ptr %i.u, align 4
  %i.v = sext i32 %.25682 to i64                  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = icmp eq i64 %indvars.iv99, %i.y
  br i1 %i.z, label %.lr.ph77, label %bb.e

.lr.ph77:                                         ; preds = %bb.d, %.lr.ph77
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph77 ], [ %i.v, %bb.d ] ; 2 uses
  %.176 = phi i32 [ %i.aa, %.lr.ph77 ], [ %.083, %bb.d ] ; 3 uses
  %i.aa = add i32 %.176, 1                        ; 2 uses
  %i.ab = trunc i32 %.176 to i16
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 3 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv96
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next97
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp eq i64 %indvars.iv99, %i.af
  br i1 %i.ag, label %.lr.ph77, label %._crit_edge78, !llvm.loop !144

._crit_edge78:                                    ; preds = %.lr.ph77
  %i.ah = trunc nsw i64 %indvars.iv.next97 to i32
  %i.ai = trunc nuw nsw i64 %indvars.iv99 to i32
  %.highbits = lshr i32 %.176, %i.ai
end_hunk_2
begin_hunk_3_@tdefl_compress_block:bb.a
  %i.ahw = load i8, ptr %i.ahv, align 1
  %i.ahx = zext i8 %i.ahw to i32
  %i.ahy = getelementptr i8, ptr @.str.38, i64 %i.age
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 -16
  %i.aia = load i8, ptr %i.ahz, align 1
  %i.aib = sext i8 %i.aia to i32                  ; 2 uses
  %i.aic = shl nuw nsw i32 %i.ahx, %i.ahr
  %i.aid = or i32 %i.aic, %i.ahq                  ; 4 uses
  store i32 %i.aid, ptr %i.aae, align 8
  %i.aie = add nsw i32 %i.ahr, %i.aib             ; 6 uses
  store i32 %i.aie, ptr %i.aab, align 4
  %i.aif = icmp ugt i32 %i.aie, 7
  br i1 %i.aif, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ea
  %i.aig = load ptr, ptr %i.aea, align 8
  %i.aih = load ptr, ptr %i.aeb, align 8
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
  br i1 %prol.iter308.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !311

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
  br i1 %i.aiu, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !312

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa266 = phi i32 [ %.lcssa266.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa265 = phi i32 [ %.lcssa265.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ait, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa266, ptr %i.aae, align 8
  store i32 %.lcssa265, ptr %i.aab, align 4
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.ec
  %i.aiv = phi i32 [ %i.ajf, %bb.ec ], [ %i.aie, %.lr.ph374.i ]
  %i.aiw = phi i32 [ %i.aje, %bb.ec ], [ %i.aid, %.lr.ph374.i ] ; 2 uses
  %i.aix = load ptr, ptr %i.aea, align 8          ; 3 uses
  %i.aiy = load ptr, ptr %i.aeb, align 8
  %i.aiz = icmp ult ptr %i.aix, %i.aiy
  br i1 %i.aiz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.lr.ph374.split.i
  %i.aja = trunc i32 %i.aiw to i8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aix, i64 1
  store ptr %i.ajb, ptr %i.aea, align 8
  store i8 %i.aja, ptr %i.aix, align 1
  %.pre429.i = load i32, ptr %i.aae, align 8
  %.pre430.i = load i32, ptr %i.aab, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.lr.ph374.split.i
  %i.ajc = phi i32 [ %.pre430.i, %bb.eb ], [ %i.aiv, %.lr.ph374.split.i ]
  %i.ajd = phi i32 [ %.pre429.i, %bb.eb ], [ %i.aiw, %.lr.ph374.split.i ]
  %i.aje = lshr i32 %i.ajd, 8                     ; 3 uses
  store i32 %i.aje, ptr %i.aae, align 8
  %i.ajf = add i32 %i.ajc, -8                     ; 4 uses
  store i32 %i.ajf, ptr %i.aab, align 4
  %i.ajg = icmp ugt i32 %i.ajf, 7
  br i1 %i.ajg, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !313

.loopexit.i:                                      ; preds = %bb.ec, %..loopexit_crit_edge.split.us.i, %bb.ea, %._crit_edge367.i
  %i.ajh = phi i32 [ %i.ahq, %._crit_edge367.i ], [ %.lcssa266, %..loopexit_crit_edge.split.us.i ], [ %i.aid, %bb.ea ], [ %i.aje, %bb.ec ] ; 2 uses
  %i.aji = phi i32 [ %i.ahr, %._crit_edge367.i ], [ %.lcssa265, %..loopexit_crit_edge.split.us.i ], [ %i.aie, %bb.ea ], [ %i.ajf, %bb.ec ] ; 2 uses
  %.1.i = phi i32 [ %i.aga, %._crit_edge367.i ], [ %i.aht, %..loopexit_crit_edge.split.us.i ], [ %i.aht, %bb.ea ], [ %i.aht, %bb.ec ] ; 2 uses
  %i.ajj = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajj, label %bb.dx, label %tdefl_start_dynamic_block.exit, !llvm.loop !314

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %.pre168.i92 = phi i32 [ %i.afw, %.preheader.i ], [ %i.ajh, %.loopexit.i ]
  %.pre166.i90 = phi i32 [ %i.afx, %.preheader.i ], [ %i.aji, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %.pre168.i = phi i32 [ %.pre168.i92, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ] ; 2 uses
  %.pre166.i.a = phi i32 [ %.pre166.i90, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %i.ajn = icmp ult ptr %i.ajk, %i.ajm
  br i1 %i.ajn, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %tdefl_start_static_block.exit
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
  %i.aka = load i8, ptr %.0111143.i, align 1
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
  %i.ake = load i8, ptr %.1.i5, align 1           ; 2 uses
  %i.akf = zext i8 %i.ake to i32
  %i.akg = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1
  %i.akh = load i16, ptr %i.akg, align 1          ; 4 uses
  %i.aki = zext i16 %i.akh to i32
  %i.akj = lshr i16 %i.akh, 8
  %i.akk = zext nneg i16 %i.akj to i64            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.1.i5, i64 3 ; 2 uses
  %i.akm = zext i8 %i.ake to i64                  ; 2 uses
  %i.akn = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.akm
  %i.ako = load i16, ptr %i.akn, align 2
  %i.akp = zext i16 %i.ako to i64                 ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2
  %i.aks = zext i16 %i.akr to i32
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.akp
  %i.aku = load i8, ptr %i.akt, align 1
  %i.akv = zext i8 %i.aku to i32
  %i.akw = shl nuw nsw i32 %i.aks, %i.ajx
  %i.akx = or i32 %i.ajw, %i.akw                  ; 3 uses
  store i32 %i.akx, ptr %i.ajr, align 8
  %i.aky = add nuw nsw i32 %i.ajx, %i.akv         ; 4 uses
  store i32 %i.aky, ptr %i.ajq, align 4
  %i.akz = icmp samesign ugt i32 %i.aky, 7
  br i1 %i.akz, label %.lr.ph.i9, label %._crit_edge.i7

.lr.ph.i9:                                        ; preds = %bb.eg, %bb.ei
  %i.ala = phi i32 [ %i.alk, %bb.ei ], [ %i.aky, %bb.eg ]
  %i.alb = phi i32 [ %i.alj, %bb.ei ], [ %i.akx, %bb.eg ] ; 2 uses
  %i.alc = load ptr, ptr %i.ajs, align 8          ; 3 uses
  %i.ald = load ptr, ptr %i.ajt, align 8
  %i.ale = icmp ult ptr %i.alc, %i.ald
  br i1 %i.ale, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i9
  %i.alf = trunc i32 %i.alb to i8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  store ptr %i.alg, ptr %i.ajs, align 8
  store i8 %i.alf, ptr %i.alc, align 1
  %.pre.i10 = load i32, ptr %i.ajr, align 8
  %.pre157.i = load i32, ptr %i.ajq, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i9
  %i.alh = phi i32 [ %.pre157.i, %bb.eh ], [ %i.ala, %.lr.ph.i9 ]
  %i.ali = phi i32 [ %.pre.i10, %bb.eh ], [ %i.alb, %.lr.ph.i9 ]
  %i.alj = lshr i32 %i.ali, 8                     ; 3 uses
  store i32 %i.alj, ptr %i.ajr, align 8
  %i.alk = add i32 %i.alh, -8                     ; 4 uses
  store i32 %i.alk, ptr %i.ajq, align 4
  %i.all = icmp ugt i32 %i.alk, 7
  br i1 %i.all, label %.lr.ph.i9, label %._crit_edge.i7, !llvm.loop !315

._crit_edge.i7:                                   ; preds = %bb.ei, %bb.eg
  %i.alm = phi i32 [ %i.akx, %bb.eg ], [ %i.alj, %bb.ei ]
  %storemerge125.lcssa.i = phi i32 [ %i.aky, %bb.eg ], [ %i.alk, %bb.ei ] ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr @s_tdefl_len_extra, i64 %i.akm
  %i.alo = load i8, ptr %i.aln, align 1
  %2 = zext i8 %i.alo to i32                      ; 2 uses
  %notmask.i = shl nsw i32 -1, %2
  %3 = xor i32 %notmask.i, -1
  %i.alp = and i32 %3, %i.akf
  %i.alq = shl nuw nsw i32 %i.alp, %storemerge125.lcssa.i
  %i.alr = or i32 %i.alq, %i.alm                  ; 3 uses
  store i32 %i.alr, ptr %i.ajr, align 8
  %i.als = add nuw nsw i32 %storemerge125.lcssa.i, %2 ; 4 uses
  store i32 %i.als, ptr %i.ajq, align 4
  %i.alt = icmp samesign ugt i32 %i.als, 7
  br i1 %i.alt, label %.lr.ph131.i, label %._crit_edge132.i

.lr.ph131.i:                                      ; preds = %._crit_edge.i7, %bb.ek
  %i.alu = phi i32 [ %i.ame, %bb.ek ], [ %i.als, %._crit_edge.i7 ]
  %i.alv = phi i32 [ %i.amd, %bb.ek ], [ %i.alr, %._crit_edge.i7 ] ; 2 uses
  %i.alw = load ptr, ptr %i.ajs, align 8          ; 3 uses
  %i.alx = load ptr, ptr %i.ajt, align 8
  %i.aly = icmp ult ptr %i.alw, %i.alx
  br i1 %i.aly, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph131.i
  %i.alz = trunc i32 %i.alv to i8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  store ptr %i.ama, ptr %i.ajs, align 8
  store i8 %i.alz, ptr %i.alw, align 1
  %.pre158.i = load i32, ptr %i.ajr, align 8
  %.pre159.i = load i32, ptr %i.ajq, align 4
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph131.i
  %i.amb = phi i32 [ %.pre159.i, %bb.ej ], [ %i.alu, %.lr.ph131.i ]
  %i.amc = phi i32 [ %.pre158.i, %bb.ej ], [ %i.alv, %.lr.ph131.i ]
  %i.amd = lshr i32 %i.amc, 8                     ; 3 uses
  store i32 %i.amd, ptr %i.ajr, align 8
  %i.ame = add i32 %i.amb, -8                     ; 4 uses
  store i32 %i.ame, ptr %i.ajq, align 4
  %i.amf = icmp ugt i32 %i.ame, 7
  br i1 %i.amf, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !316

._crit_edge132.i:                                 ; preds = %bb.ek, %._crit_edge.i7
  %i.amg = phi i32 [ %i.alr, %._crit_edge.i7 ], [ %i.amd, %bb.ek ]
  %storemerge126.lcssa.i = phi i32 [ %i.als, %._crit_edge.i7 ], [ %i.ame, %bb.ek ] ; 2 uses
  %i.amh = icmp ult i16 %i.akh, 512               ; 2 uses
  %i.ami = zext i16 %i.akh to i64                 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_extra, i64 %i.ami
  %i.aml = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.akk
  %i.amm = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_extra, i64 %i.akk
  %.0110.in.in.i = select i1 %i.amh, ptr %i.amj, ptr %i.aml
  %.0.in.in.i = select i1 %i.amh, ptr %i.amk, ptr %i.amm
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1
  %.0.i = zext i8 %.0.in.i to i32                 ; 2 uses
  %.0110.in.i = load i8, ptr %.0110.in.in.i, align 1
  %i.amn = zext i8 %.0110.in.i to i64             ; 2 uses
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.aju, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2
  %i.amq = zext i16 %i.amp to i32
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.amn
  %i.ams = load i8, ptr %i.amr, align 1
  %i.amt = zext i8 %i.ams to i32
  %i.amu = shl nuw nsw i32 %i.amq, %storemerge126.lcssa.i
  %i.amv = or i32 %i.amu, %i.amg                  ; 3 uses
  store i32 %i.amv, ptr %i.ajr, align 8
  %i.amw = add nuw nsw i32 %storemerge126.lcssa.i, %i.amt ; 4 uses
  store i32 %i.amw, ptr %i.ajq, align 4
  %i.amx = icmp samesign ugt i32 %i.amw, 7
  br i1 %i.amx, label %.lr.ph135.i, label %._crit_edge136.i

.lr.ph135.i:                                      ; preds = %._crit_edge132.i, %bb.em
  %i.amy = phi i32 [ %i.ani, %bb.em ], [ %i.amw, %._crit_edge132.i ]
  %i.amz = phi i32 [ %i.anh, %bb.em ], [ %i.amv, %._crit_edge132.i ] ; 2 uses
  %i.ana = load ptr, ptr %i.ajs, align 8          ; 3 uses
  %i.anb = load ptr, ptr %i.ajt, align 8
  %i.anc = icmp ult ptr %i.ana, %i.anb
  br i1 %i.anc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph135.i
  %i.and = trunc i32 %i.amz to i8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.ana, i64 1
  store ptr %i.ane, ptr %i.ajs, align 8
  store i8 %i.and, ptr %i.ana, align 1
  %.pre160.i = load i32, ptr %i.ajr, align 8
  %.pre161.i = load i32, ptr %i.ajq, align 4
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph135.i
  %i.anf = phi i32 [ %.pre161.i, %bb.el ], [ %i.amy, %.lr.ph135.i ]
  %i.ang = phi i32 [ %.pre160.i, %bb.el ], [ %i.amz, %.lr.ph135.i ]
  %i.anh = lshr i32 %i.ang, 8                     ; 3 uses
  store i32 %i.anh, ptr %i.ajr, align 8
  %i.ani = add i32 %i.anf, -8                     ; 4 uses
  store i32 %i.ani, ptr %i.ajq, align 4
  %i.anj = icmp ugt i32 %i.ani, 7
  br i1 %i.anj, label %.lr.ph135.i, label %._crit_edge136.i, !llvm.loop !317

._crit_edge136.i:                                 ; preds = %bb.em, %._crit_edge132.i
  %i.ank = phi i32 [ %i.amv, %._crit_edge132.i ], [ %i.anh, %bb.em ]
  %storemerge127.lcssa.i = phi i32 [ %i.amw, %._crit_edge132.i ], [ %i.ani, %bb.em ] ; 2 uses
  %notmask152.i = shl nsw i32 -1, %.0.i
  %4 = xor i32 %notmask152.i, -1
  %i.anl = and i32 %4, %i.aki
  %i.anm = shl nuw nsw i32 %i.anl, %storemerge127.lcssa.i
  %i.ann = or i32 %i.anm, %i.ank                  ; 3 uses
  store i32 %i.ann, ptr %i.ajr, align 8
  %i.ano = add nuw nsw i32 %storemerge127.lcssa.i, %.0.i ; 4 uses
  store i32 %i.ano, ptr %i.ajq, align 4
  %i.anp = icmp samesign ugt i32 %i.ano, 7
  br i1 %i.anp, label %.lr.ph139.i, label %.loopexit.i8

.lr.ph139.i:                                      ; preds = %._crit_edge136.i, %bb.eo
  %i.anq = phi i32 [ %i.aoa, %bb.eo ], [ %i.ano, %._crit_edge136.i ]
  %i.anr = phi i32 [ %i.anz, %bb.eo ], [ %i.ann, %._crit_edge136.i ] ; 2 uses
  %i.ans = load ptr, ptr %i.ajs, align 8          ; 3 uses
  %i.ant = load ptr, ptr %i.ajt, align 8
  %i.anu = icmp ult ptr %i.ans, %i.ant
  br i1 %i.anu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.lr.ph139.i
  %i.anv = trunc i32 %i.anr to i8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  store ptr %i.anw, ptr %i.ajs, align 8
  store i8 %i.anv, ptr %i.ans, align 1
  %.pre162.i = load i32, ptr %i.ajr, align 8
  %.pre163.i = load i32, ptr %i.ajq, align 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph139.i
  %i.anx = phi i32 [ %.pre163.i, %bb.en ], [ %i.anq, %.lr.ph139.i ]
  %i.any = phi i32 [ %.pre162.i, %bb.en ], [ %i.anr, %.lr.ph139.i ]
  %i.anz = lshr i32 %i.any, 8                     ; 3 uses
  store i32 %i.anz, ptr %i.ajr, align 8
  %i.aoa = add i32 %i.anx, -8                     ; 4 uses
  store i32 %i.aoa, ptr %i.ajq, align 4
  %i.aob = icmp ugt i32 %i.aoa, 7
  br i1 %i.aob, label %.lr.ph139.i, label %.loopexit.i8, !llvm.loop !318

bb.ep:                                            ; preds = %bb.ef
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1.i5, i64 1 ; 2 uses
  %i.aod = load i8, ptr %.1.i5, align 1
  %i.aoe = zext i8 %i.aod to i64                  ; 2 uses
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.ajo, i64 %i.aoe
  %i.aog = load i16, ptr %i.aof, align 2
  %i.aoh = zext i16 %i.aog to i32
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.aoe
  %i.aoj = load i8, ptr %i.aoi, align 1
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = shl i32 %i.aoh, %i.ajx
  %i.aom = or i32 %i.ajw, %i.aol                  ; 3 uses
  store i32 %i.aom, ptr %i.ajr, align 8
  %i.aon = add i32 %i.ajx, %i.aok                 ; 4 uses
  store i32 %i.aon, ptr %i.ajq, align 4
  %i.aoo = icmp ugt i32 %i.aon, 7
  br i1 %i.aoo, label %.lr.ph141.i, label %.loopexit.i8

.lr.ph141.i:                                      ; preds = %bb.ep, %bb.er
  %i.aop = phi i32 [ %i.aoz, %bb.er ], [ %i.aon, %bb.ep ]
  %i.aoq = phi i32 [ %i.aoy, %bb.er ], [ %i.aom, %bb.ep ] ; 2 uses
  %i.aor = load ptr, ptr %i.ajs, align 8          ; 3 uses
  %i.aos = load ptr, ptr %i.ajt, align 8
  %i.aot = icmp ult ptr %i.aor, %i.aos
  br i1 %i.aot, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.lr.ph141.i
  %i.aou = trunc i32 %i.aoq to i8
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aor, i64 1
  store ptr %i.aov, ptr %i.ajs, align 8
  store i8 %i.aou, ptr %i.aor, align 1
  %.pre164.i = load i32, ptr %i.ajr, align 8
  %.pre165.i = load i32, ptr %i.ajq, align 4
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.lr.ph141.i
  %i.aow = phi i32 [ %.pre165.i, %bb.eq ], [ %i.aop, %.lr.ph141.i ]
  %i.aox = phi i32 [ %.pre164.i, %bb.eq ], [ %i.aoq, %.lr.ph141.i ]
  %i.aoy = lshr i32 %i.aox, 8                     ; 3 uses
  store i32 %i.aoy, ptr %i.ajr, align 8
  %i.aoz = add i32 %i.aow, -8                     ; 4 uses
  store i32 %i.aoz, ptr %i.ajq, align 4
  %i.apa = icmp ugt i32 %i.aoz, 7
  br i1 %i.apa, label %.lr.ph141.i, label %.loopexit.i8, !llvm.loop !319

.loopexit.i8:                                     ; preds = %bb.eo, %bb.er, %bb.ep, %._crit_edge136.i
  %i.apb = phi i32 [ %i.aom, %bb.ep ], [ %i.ann, %._crit_edge136.i ], [ %i.aoy, %bb.er ], [ %i.anz, %bb.eo ] ; 2 uses
  %i.apc = phi i32 [ %i.aon, %bb.ep ], [ %i.ano, %._crit_edge136.i ], [ %i.aoz, %bb.er ], [ %i.aoa, %bb.eo ] ; 2 uses
  %.2.i = phi ptr [ %i.aoc, %bb.ep ], [ %i.akl, %._crit_edge136.i ], [ %i.aoc, %bb.er ], [ %i.akl, %bb.eo ] ; 2 uses
  %i.apd = lshr i32 %.1113.i, 1
  %i.ape = load ptr, ptr %i.ajl, align 8
  %i.apf = icmp ult ptr %.2.i, %i.ape
  br i1 %i.apf, label %bb.ed, label %._crit_edge146.i, !llvm.loop !320

._crit_edge146.i:                                 ; preds = %.loopexit.i8, %tdefl_start_static_block.exit
  %i.apg = phi i32 [ %.pre168.i, %tdefl_start_static_block.exit ], [ %i.apb, %.loopexit.i8 ]
  %i.aph = phi i32 [ %.pre166.i.a, %tdefl_start_static_block.exit ], [ %i.apc, %.loopexit.i8 ] ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 35466
  %i.apj = load i16, ptr %i.api, align 2
  %i.apk = zext i16 %i.apj to i32
  %i.apl = getelementptr inbounds nuw i8, ptr %0, i64 36938
  %i.apm = load i8, ptr %i.apl, align 2
  %i.apn = zext i8 %i.apm to i32                  ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.app = shl nuw nsw i32 %i.apk, %i.aph
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.apr = or i32 %i.app, %i.apg                  ; 3 uses
  store i32 %i.apr, ptr %i.apq, align 8
  %i.aps = add nuw nsw i32 %i.aph, %i.apn         ; 5 uses
  store i32 %i.aps, ptr %i.apo, align 4
  %i.apt = icmp samesign ugt i32 %i.aps, 7
  br i1 %i.apt, label %.lr.ph148.i, label %tdefl_compress_lz_codes.exit

.lr.ph148.i:                                      ; preds = %._crit_edge146.i
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.apw = load ptr, ptr %i.apu, align 8
  %i.apx = load ptr, ptr %i.apv, align 8
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
  br i1 %prol.iter313.cmp.not, label %.lr.ph148.split.us.i.prol.loopexit, label %.lr.ph148.split.us.i.prol, !llvm.loop !321

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
  br i1 %i.aqk, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i, !llvm.loop !322

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa247 = phi i32 [ %.lcssa247.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.aqj, %.lr.ph148.split.us.i ]
  store i32 %.lcssa247, ptr %i.apq, align 8
  store i32 %.lcssa, ptr %i.apo, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aql = phi i32 [ %i.aqv, %bb.et ], [ %i.aps, %.lr.ph148.i ]
  %i.aqm = phi i32 [ %i.aqu, %bb.et ], [ %i.apr, %.lr.ph148.i ] ; 2 uses
  %i.aqn = load ptr, ptr %i.apu, align 8          ; 3 uses
  %i.aqo = load ptr, ptr %i.apv, align 8
  %i.aqp = icmp ult ptr %i.aqn, %i.aqo
  br i1 %i.aqp, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.aqq = trunc i32 %i.aqm to i8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store ptr %i.aqr, ptr %i.apu, align 8
  store i8 %i.aqq, ptr %i.aqn, align 1
  %.pre169.i = load i32, ptr %i.apq, align 8
  %.pre170.i = load i32, ptr %i.apo, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.aqs = phi i32 [ %.pre170.i, %bb.es ], [ %i.aql, %.lr.ph148.split.i ]
  %i.aqt = phi i32 [ %.pre169.i, %bb.es ], [ %i.aqm, %.lr.ph148.split.i ]
  %i.aqu = lshr i32 %i.aqt, 8                     ; 2 uses
  store i32 %i.aqu, ptr %i.apq, align 8
  %i.aqv = add i32 %i.aqs, -8                     ; 3 uses
  store i32 %i.aqv, ptr %i.apo, align 4
  %i.aqw = icmp ugt i32 %i.aqv, 7
  br i1 %i.aqw, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !323

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.i, %._crit_edge149.split.us.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aqy = load ptr, ptr %i.aqx, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ara = load ptr, ptr %i.aqz, align 8
  %i.arb = icmp ult ptr %i.aqy, %i.ara
  %i.arc = zext i1 %i.arb to i32
  ret i32 %i.arc
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
end_hunk_3
