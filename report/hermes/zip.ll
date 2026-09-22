Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mz_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.tinfl_decompressor_tag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i64, i64, [3 x %struct.tinfl_huff_table], [4 x i8], [457 x i8] }
%struct.tinfl_huff_table = type { [288 x i8], [1024 x i16], [576 x i16] }
%struct.tdefl_output_buffer = type { i64, i64, ptr, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.mz_zip_archive_file_stat = type { i32, i32, i16, i16, i16, i16, i64, i32, i64, i64, i16, i32, i64, i32, [260 x i8], [256 x i8] }
%struct.utimbuf = type { i64, i64 }
%struct.mz_zip_writer_add_state = type { ptr, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mz_zip_archive = type { i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tdefl_sym_freq = type { i16, i16 }

@mz_crc32.s_crc32 = internal unnamed_addr constant [16 x i32] [i32 0, i32 498536548, i32 997073096, i32 651767980, i32 1994146192, i32 1802195444, i32 1303535960, i32 1342533948, i32 -306674912, i32 -267414716, i32 -690576408, i32 -882789492, i32 -1687895376, i32 -2032938284, i32 -1609899400, i32 -1111625188], align 16
@.str = private unnamed_addr constant [7 x i8] c"9.1.15\00", align 1
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
@tinfl_decompress.s_length_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@tinfl_decompress.s_length_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@tinfl_decompress.s_dist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@tinfl_decompress.s_dist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@tinfl_decompress.s_min_table_sizes = internal unnamed_addr constant [3 x i32] [i32 257, i32 1, i32 4], align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"\05\05\04\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\02\03\07\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\03\03\0B\00", align 1
@tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 6, i32 32, i32 16, i32 32, i32 128, i32 256, i32 512, i32 768, i32 1500], align 16
@tdefl_write_image_to_png_file_in_memory_ex.chans = internal unnamed_addr constant [5 x i8] c"\00\00\04\02\06", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00IEND\AEB`\82\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@zip_errlist = internal unnamed_addr constant [30 x ptr] [ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null, ptr null, ptr null], align 16
@s_tdefl_small_dist_sym = internal unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@s_tdefl_large_dist_sym = internal unnamed_addr constant [128 x i8] c"\00\00\12\13\14\14\15\15\16\16\16\16\17\17\17\17\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@s_tdefl_len_sym = internal unnamed_addr constant [256 x i16] [i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 265, i16 266, i16 266, i16 267, i16 267, i16 268, i16 268, i16 269, i16 269, i16 269, i16 269, i16 270, i16 270, i16 270, i16 270, i16 271, i16 271, i16 271, i16 271, i16 272, i16 272, i16 272, i16 272, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 273, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 274, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 275, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 277, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 278, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 279, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 280, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 281, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 282, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 283, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 284, i16 285], align 16
@s_tdefl_packed_code_size_syms_swizzle = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@mz_bitmasks = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@s_tdefl_len_extra = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00", align 16
@s_tdefl_small_dist_extra = internal unnamed_addr constant [512 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", align 16
@s_tdefl_large_dist_extra = internal unnamed_addr constant [128 x i8] c"\00\00\08\08\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@.str.18 = private unnamed_addr constant [17 x i8] c"not initialized\00\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"invalid entry name\00\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"entry not found\00\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"invalid zip mode\00\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"invalid compression level\00\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"no zip 64 support\00\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"memset error\00\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"cannot write data to entry\00\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"cannot initialize tdefl compressor\00\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid index\00\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"header not found\00\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"cannot flush tdefl buffer\00\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"cannot write entry header\00\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"cannot create entry header\00\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"cannot write to central dir\00\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"cannot open file\00\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"invalid entry type\00\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"extracting data using no memory allocation\00\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"file not found\00\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"no permission\00\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"out of memory\00\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"invalid zip archive name\00\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c"make dir error\00symlink error\00close archive error\00capacity size too small\00\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"fseek error\00\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"fread error\00\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"fwrite error\00\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i64 0, 4294967296) i64 @mz_adler32(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %i.l = load i8, ptr %.26376.prol, align 1, !tbaa !19
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.25778.prol, %i.m               ; 4 uses
  %i.o = add i32 %i.n, %.279.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph80.prol.loopexit, label %.lr.ph80.prol, !llvm.loop !181

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
  %i.r = load i8, ptr %.16269, align 1, !tbaa !19
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.15671, %i.s                    ; 2 uses
  %i.u = add i32 %i.t, %.172
  %i.v = getelementptr inbounds nuw i8, ptr %.16269, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.16269, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.16269, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.16269, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.16269, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.16269, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.16269, i64 7
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = add nuw nsw i32 %.05870, 8              ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16269, i64 8 ; 2 uses
  %i.bg = or disjoint i32 %i.be, 7
  %i.bh = icmp samesign ult i32 %i.bg, %i.g
  br i1 %i.bh, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !182

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph80 ], [ %indvars.iv.unr, %.lr.ph80.prol.loopexit ]
  %.279 = phi i32 [ %i.cb, %.lr.ph80 ], [ %.279.unr, %.lr.ph80.prol.loopexit ]
  %.25778 = phi i32 [ %i.ca, %.lr.ph80 ], [ %.25778.unr, %.lr.ph80.prol.loopexit ]
  %.26376 = phi ptr [ %i.bx, %.lr.ph80 ], [ %.26376.unr, %.lr.ph80.prol.loopexit ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.26376, i64 1
  %i.bj = load i8, ptr %.26376, align 1, !tbaa !19
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i32 %.25778, %i.bk                  ; 2 uses
  %i.bm = add i32 %i.bl, %.279
  %i.bn = getelementptr inbounds nuw i8, ptr %.26376, i64 2
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add i32 %i.bl, %i.bp                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %.26376, i64 3
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %.26376, i64 4
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !19
  %i.bz = zext i8 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz                    ; 3 uses
  %i.cb = add i32 %i.ca, %i.bw                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.089
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph80, !llvm.loop !183

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
end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a
  %i.ahh = load ptr, ptr %i.aeb, align 8, !tbaa !43
  %i.ahi = icmp ult ptr %i.ahg, %i.ahh
  br i1 %i.ahi, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph366.split.i
  %i.ahj = trunc i32 %i.ahf to i8
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahg, i64 1
  store ptr %i.ahk, ptr %i.aea, align 8, !tbaa !42
  store i8 %i.ahj, ptr %i.ahg, align 1, !tbaa !19
  %.pre427.i = load i32, ptr %i.aae, align 8, !tbaa !84
  %.pre428.i = load i32, ptr %i.aab, align 4, !tbaa !83
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph366.split.i
  %i.ahl = phi i32 [ %.pre428.i, %bb.dy ], [ %i.ahe, %.lr.ph366.split.i ]
  %i.ahm = phi i32 [ %.pre427.i, %bb.dy ], [ %i.ahf, %.lr.ph366.split.i ]
  %i.ahn = lshr i32 %i.ahm, 8                     ; 3 uses
  store i32 %i.ahn, ptr %i.aae, align 8, !tbaa !84
  %i.aho = add i32 %i.ahl, -8                     ; 4 uses
  store i32 %i.aho, ptr %i.aab, align 4, !tbaa !83
  %i.ahp = icmp ugt i32 %i.aho, 7
  br i1 %i.ahp, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !356

._crit_edge367.i:                                 ; preds = %bb.dz, %._crit_edge367.split.us.i, %bb.dx
  %i.ahq = phi i32 [ %i.agm, %bb.dx ], [ %.lcssa223, %._crit_edge367.split.us.i ], [ %i.ahn, %bb.dz ] ; 2 uses
  %i.ahr = phi i32 [ %i.agn, %bb.dx ], [ %.lcssa222, %._crit_edge367.split.us.i ], [ %i.aho, %bb.dz ] ; 4 uses
  %i.ahs = icmp ugt i8 %i.agd, 15
  br i1 %i.ahs, label %bb.ea, label %.loopexit.i

bb.ea:                                            ; preds = %._crit_edge367.i
  %i.aht = add nuw i32 %.0261379.i, 2             ; 3 uses
  %i.ahu = zext i32 %i.aga to i64
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahu
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !19
  %i.ahx = zext i8 %i.ahw to i32
  %i.ahy = getelementptr i8, ptr @.str.12, i64 %i.age
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 -16
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !19
  %i.aib = sext i8 %i.aia to i32                  ; 2 uses
  %i.aic = shl nuw nsw i32 %i.ahx, %i.ahr
  %i.aid = or i32 %i.aic, %i.ahq                  ; 4 uses
  store i32 %i.aid, ptr %i.aae, align 8, !tbaa !84
  %i.aie = add nsw i32 %i.ahr, %i.aib             ; 6 uses
  store i32 %i.aie, ptr %i.aab, align 4, !tbaa !83
  %i.aif = icmp ugt i32 %i.aie, 7
  br i1 %i.aif, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ea
  %i.aig = load ptr, ptr %i.aea, align 8, !tbaa !42
  %i.aih = load ptr, ptr %i.aeb, align 8, !tbaa !43
  %i.aii = icmp ult ptr %i.aig, %i.aih
  br i1 %i.aii, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aij = add i32 %i.ahr, -8
  %i.aik = add i32 %i.aij, %i.aib                 ; 2 uses
  %i.ail = lshr i32 %i.aik, 3
  %i.aim = add nuw nsw i32 %i.ail, 1
  %xtraiter267 = and i32 %i.aim, 7                ; 2 uses
  %lcmp.mod268.not = icmp eq i32 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.ain = phi i32 [ %i.aiq, %.lr.ph374.split.us.i.prol ], [ %i.aie, %.lr.ph374.split.us.i.preheader ]
  %i.aio = phi i32 [ %i.aip, %.lr.ph374.split.us.i.prol ], [ %i.aid, %.lr.ph374.split.us.i.preheader ]
  %prol.iter269 = phi i32 [ %prol.iter269.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.aip = lshr i32 %i.aio, 8                     ; 2 uses
  %i.aiq = add i32 %i.ain, -8                     ; 3 uses
  %prol.iter269.next = add i32 %prol.iter269, 1   ; 2 uses
  %prol.iter269.cmp.not = icmp eq i32 %prol.iter269.next, %xtraiter267
  br i1 %prol.iter269.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !357

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr270 = phi i32 [ %i.aie, %.lr.ph374.split.us.i.preheader ], [ %i.aiq, %.lr.ph374.split.us.i.prol ]
  %.lcssa227.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aip, %.lr.ph374.split.us.i.prol ]
  %.lcssa226.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aiq, %.lr.ph374.split.us.i.prol ]
  %i.air = icmp ult i32 %i.aik, 56
  br i1 %i.air, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.ais = phi i32 [ %i.ait, %.lr.ph374.split.us.i ], [ %.unr270, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ait = add i32 %i.ais, -64                    ; 3 uses
  %i.aiu = icmp ugt i32 %i.ait, 7
  br i1 %i.aiu, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !358

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa227 = phi i32 [ %.lcssa227.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa226 = phi i32 [ %.lcssa226.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ait, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa227, ptr %i.aae, align 8, !tbaa !84
  store i32 %.lcssa226, ptr %i.aab, align 4, !tbaa !83
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.ec
  %i.aiv = phi i32 [ %i.ajf, %bb.ec ], [ %i.aie, %.lr.ph374.i ]
  %i.aiw = phi i32 [ %i.aje, %bb.ec ], [ %i.aid, %.lr.ph374.i ] ; 2 uses
  %i.aix = load ptr, ptr %i.aea, align 8, !tbaa !42 ; 3 uses
  %i.aiy = load ptr, ptr %i.aeb, align 8, !tbaa !43
  %i.aiz = icmp ult ptr %i.aix, %i.aiy
  br i1 %i.aiz, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.lr.ph374.split.i
  %i.aja = trunc i32 %i.aiw to i8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aix, i64 1
  store ptr %i.ajb, ptr %i.aea, align 8, !tbaa !42
  store i8 %i.aja, ptr %i.aix, align 1, !tbaa !19
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
  br i1 %i.ajg, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !359

.loopexit.i:                                      ; preds = %bb.ec, %..loopexit_crit_edge.split.us.i, %bb.ea, %._crit_edge367.i
  %i.ajh = phi i32 [ %i.ahq, %._crit_edge367.i ], [ %.lcssa227, %..loopexit_crit_edge.split.us.i ], [ %i.aid, %bb.ea ], [ %i.aje, %bb.ec ] ; 2 uses
  %i.aji = phi i32 [ %i.ahr, %._crit_edge367.i ], [ %.lcssa226, %..loopexit_crit_edge.split.us.i ], [ %i.aie, %bb.ea ], [ %i.ajf, %bb.ec ] ; 2 uses
  %.1.i = phi i32 [ %i.aga, %._crit_edge367.i ], [ %i.aht, %..loopexit_crit_edge.split.us.i ], [ %i.aht, %bb.ea ], [ %i.aht, %bb.ec ] ; 2 uses
  %i.ajj = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajj, label %bb.dx, label %tdefl_start_dynamic_block.exit, !llvm.loop !360

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %i.ajk = phi i32 [ %i.afx, %.preheader.i ], [ %i.aji, %.loopexit.i ]
  %i.ajl = phi i32 [ %i.afw, %.preheader.i ], [ %i.ajh, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %i.ajm = phi i32 [ %i.ajk, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajn = phi i32 [ %i.ajl, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ]
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !42 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !39 ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.ajt = zext i32 %i.ajn to i64                 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajw = icmp ult ptr %i.ajv, %i.ajr
  br i1 %i.ajw, label %.lr.ph.i9, label %._crit_edge.i5

.lr.ph.i9:                                        ; preds = %tdefl_start_static_block.exit
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 4 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 4 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !43
  br label %bb.ed

bb.ed:                                            ; preds = %bb.el, %.lr.ph.i9
  %.0133166.i = phi i32 [ 1, %.lr.ph.i9 ], [ %i.aos, %bb.el ] ; 2 uses
  %.0134165.i = phi ptr [ %i.ajv, %.lr.ph.i9 ], [ %.3137.i, %bb.el ] ; 3 uses
  %.0138164.i = phi ptr [ %i.ajp, %.lr.ph.i9 ], [ %i.aon, %bb.el ] ; 3 uses
  %.0139163.i = phi i64 [ %i.ajt, %.lr.ph.i9 ], [ %i.aoq, %bb.el ] ; 2 uses
  %.0143162.i = phi i32 [ %i.ajm, %.lr.ph.i9 ], [ %i.aor, %bb.el ] ; 4 uses
  %i.akd = icmp eq i32 %.0133166.i, 1
  br i1 %i.akd, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ake = getelementptr inbounds nuw i8, ptr %.0134165.i, i64 1
  %i.akf = load i8, ptr %.0134165.i, align 1, !tbaa !19
  %i.akg = zext i8 %i.akf to i32
  %i.akh = or disjoint i32 %i.akg, 256
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.1135.i = phi ptr [ %i.ake, %bb.ee ], [ %.0134165.i, %bb.ed ] ; 7 uses
  %.1.i10 = phi i32 [ %i.akh, %bb.ee ], [ %.0133166.i, %bb.ed ] ; 7 uses
  %i.aki = and i32 %.1.i10, 1
  %.not155.i = icmp eq i32 %i.aki, 0
  br i1 %.not155.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.akj = load i8, ptr %.1135.i, align 1, !tbaa !19 ; 2 uses
  %i.akk = zext i8 %i.akj to i32
  %i.akl = getelementptr inbounds nuw i8, ptr %.1135.i, i64 1
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !78 ; 2 uses
  %i.akn = zext i16 %i.akm to i32                 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.1135.i, i64 3
  %i.akp = zext i8 %i.akj to i64                  ; 2 uses
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !78
  %i.aks = zext i16 %i.akr to i64                 ; 2 uses
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.aks
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !78
  %i.akv = zext i16 %i.aku to i64
  %i.akw = zext nneg i32 %.0143162.i to i64
  %i.akx = shl i64 %i.akv, %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.aks
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !19
  %i.ala = zext i8 %i.akz to i32
  %i.alb = add i32 %.0143162.i, %i.ala            ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr @s_tdefl_len_extra, i64 %i.akp
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !19 ; 2 uses
  %2 = zext i8 %i.ald to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !18
  %i.ale = and i32 %4, %i.akk
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = zext nneg i32 %i.alb to i64
  %i.alh = shl i64 %i.alf, %i.alg
  %5 = zext i8 %i.ald to i32
  %i.ali = add i32 %i.alb, %5                     ; 2 uses
  %i.alj = and i32 %i.akn, 511
  %i.alk = zext nneg i32 %i.alj to i64            ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.alk
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !19
  %i.aln = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_extra, i64 %i.alk
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !19
  %i.alp = lshr i32 %i.akn, 8
  %i.alq = zext nneg i32 %i.alp to i64            ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.alq
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !19
  %i.alt = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_extra, i64 %i.alq
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !19
  %i.alv = icmp ult i16 %i.akm, 512               ; 2 uses
  %.v.i = select i1 %i.alv, i8 %i.alm, i8 %i.als
  %.v156.i = select i1 %i.alv, i8 %i.alo, i8 %i.alu ; 2 uses
  %i.alw = zext i8 %.v156.i to i32
  %i.alx = zext i8 %.v.i to i64                   ; 2 uses
  %i.aly = getelementptr inbounds nuw [2 x i8], ptr %i.ajz, i64 %i.alx
  %i.alz = load i16, ptr %i.aly, align 2, !tbaa !78
  %i.ama = zext i16 %i.alz to i64
  %i.amb = zext nneg i32 %i.ali to i64
  %i.amc = shl i64 %i.ama, %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.alx
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !19
  %i.amf = zext i8 %i.ame to i32
  %i.amg = add i32 %i.ali, %i.amf                 ; 2 uses
  %6 = zext i8 %.v156.i to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !18
  %i.amh = and i32 %8, %i.akn
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = zext nneg i32 %i.amg to i64
  %i.amk = shl i64 %i.ami, %i.amj
  %i.aml = or i64 %i.akx, %i.alh
  %i.amm = or i64 %i.aml, %i.amc
  %i.amn = or i64 %i.amm, %i.amk
  %i.amo = or i64 %i.amn, %.0139163.i
  %i.amp = add i32 %i.amg, %i.alw
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ef
  %i.amq = getelementptr inbounds nuw i8, ptr %.1135.i, i64 1 ; 3 uses
  %i.amr = load i8, ptr %.1135.i, align 1, !tbaa !19
  %i.ams = zext i8 %i.amr to i64                  ; 2 uses
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.ams
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !78
  %i.amv = zext i16 %i.amu to i64
  %i.amw = zext nneg i32 %.0143162.i to i64
  %i.amx = shl i64 %i.amv, %i.amw
  %i.amy = or i64 %i.amx, %.0139163.i             ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ams
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !19
  %i.anb = zext i8 %i.ana to i32
  %i.anc = add i32 %.0143162.i, %i.anb            ; 3 uses
  %i.and = and i32 %.1.i10, 2
  %i.ane = icmp eq i32 %i.and, 0
  %i.anf = icmp ult ptr %i.amq, %i.ajr
  %or.cond.i = select i1 %i.ane, i1 %i.anf, i1 false
  br i1 %or.cond.i, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.ang = lshr exact i32 %.1.i10, 1
  %i.anh = getelementptr inbounds nuw i8, ptr %.1135.i, i64 2 ; 3 uses
  %i.ani = load i8, ptr %i.amq, align 1, !tbaa !19
  %i.anj = zext i8 %i.ani to i64                  ; 2 uses
  %i.ank = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.anj
  %i.anl = load i16, ptr %i.ank, align 2, !tbaa !78
  %i.anm = zext i16 %i.anl to i64
  %i.ann = zext nneg i32 %i.anc to i64
  %i.ano = shl i64 %i.anm, %i.ann
  %i.anp = or i64 %i.ano, %i.amy                  ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.anj
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !19
  %i.ans = zext i8 %i.anr to i32
  %i.ant = add i32 %i.anc, %i.ans                 ; 3 uses
  %i.anu = and i32 %.1.i10, 4
  %i.anv = icmp eq i32 %i.anu, 0
  %i.anw = icmp ult ptr %i.anh, %i.ajr
  %or.cond158.i = select i1 %i.anv, i1 %i.anw, i1 false
  br i1 %or.cond158.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.anx = lshr exact i32 %.1.i10, 2
  %i.any = getelementptr inbounds nuw i8, ptr %.1135.i, i64 3
  %i.anz = load i8, ptr %i.anh, align 1, !tbaa !19
  %i.aoa = zext i8 %i.anz to i64                  ; 2 uses
  %i.aob = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.aoa
  %i.aoc = load i16, ptr %i.aob, align 2, !tbaa !78
  %i.aod = zext i16 %i.aoc to i64
  %i.aoe = zext nneg i32 %i.ant to i64
  %i.aof = shl i64 %i.aod, %i.aoe
  %i.aog = or i64 %i.aof, %i.anp
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.aoa
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !19
  %i.aoj = zext i8 %i.aoi to i32
  %i.aok = add i32 %i.ant, %i.aoj
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.2145.i = phi i32 [ %i.amp, %bb.eg ], [ %i.aok, %bb.ej ], [ %i.anc, %bb.eh ], [ %i.ant, %bb.ei ] ; 3 uses
  %.2141.i = phi i64 [ %i.amo, %bb.eg ], [ %i.aog, %bb.ej ], [ %i.amy, %bb.eh ], [ %i.anp, %bb.ei ] ; 2 uses
  %.3137.i = phi ptr [ %i.ako, %bb.eg ], [ %i.any, %bb.ej ], [ %i.amq, %bb.eh ], [ %i.anh, %bb.ei ] ; 2 uses
  %.3.i = phi i32 [ %.1.i10, %bb.eg ], [ %i.anx, %bb.ej ], [ %.1.i10, %bb.eh ], [ %i.ang, %bb.ei ]
  %.not157.i = icmp ult ptr %.0138164.i, %i.akc
  br i1 %.not157.i, label %bb.el, label %tdefl_compress_lz_codes.exit

bb.el:                                            ; preds = %bb.ek
  store i64 %.2141.i, ptr %.0138164.i, align 8, !tbaa !137
  %i.aol = lshr i32 %.2145.i, 3
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw i8, ptr %.0138164.i, i64 %i.aom ; 2 uses
  %i.aoo = and i32 %.2145.i, -8
  %i.aop = zext nneg i32 %i.aoo to i64
  %i.aoq = lshr i64 %.2141.i, %i.aop              ; 2 uses
  %i.aor = and i32 %.2145.i, 7                    ; 2 uses
  %i.aos = lshr i32 %.3.i, 1
  %i.aot = icmp ult ptr %.3137.i, %i.ajr
  br i1 %i.aot, label %bb.ed, label %._crit_edge.i5, !llvm.loop !361

._crit_edge.i5:                                   ; preds = %bb.el, %tdefl_start_static_block.exit
  %.0143.lcssa.i = phi i32 [ %i.ajm, %tdefl_start_static_block.exit ], [ %i.aor, %bb.el ] ; 2 uses
  %.0139.lcssa.i = phi i64 [ %i.ajt, %tdefl_start_static_block.exit ], [ %i.aoq, %bb.el ]
  %.0138.lcssa.i = phi ptr [ %i.ajp, %tdefl_start_static_block.exit ], [ %i.aon, %bb.el ] ; 2 uses
  store ptr %.0138.lcssa.i, ptr %i.ajo, align 8, !tbaa !42
  %.not174.i = icmp eq i32 %.0143.lcssa.i, 0
  br i1 %.not174.i, label %._crit_edge179.i, label %.lr.ph178.i

.lr.ph178.i:                                      ; preds = %._crit_edge.i5
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.em

bb.em:                                            ; preds = %._crit_edge171.i, %.lr.ph178.i
  %i.aov = phi i32 [ 0, %.lr.ph178.i ], [ %i.aqg, %._crit_edge171.i ]
  %i.aow = phi i32 [ 0, %.lr.ph178.i ], [ %i.aqh, %._crit_edge171.i ] ; 3 uses
  %.3142176.i = phi i64 [ %.0139.lcssa.i, %.lr.ph178.i ], [ %i.aqi, %._crit_edge171.i ] ; 2 uses
  %.3146175.i = phi i32 [ %.0143.lcssa.i, %.lr.ph178.i ], [ %i.aqj, %._crit_edge171.i ] ; 2 uses
  %i.aox = tail call i32 @llvm.umin.i32(i32 %.3146175.i, i32 16) ; 4 uses
  %i.aoy = trunc i64 %.3142176.i to i32
  %i.aoz = zext nneg i32 %i.aox to i64            ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %i.aoz
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %i.apa = and i32 %10, %i.aoy
  %i.apb = shl i32 %i.apa, %i.aow
  %i.apc = or i32 %i.apb, %i.aov                  ; 4 uses
  store i32 %i.apc, ptr %i.ajs, align 8, !tbaa !84
  %i.apd = add nuw nsw i32 %i.aox, %i.aow         ; 6 uses
  store i32 %i.apd, ptr %i.aju, align 4, !tbaa !83
  %i.ape = icmp samesign ugt i32 %i.apd, 7
  br i1 %i.ape, label %.lr.ph170.i, label %._crit_edge171.i

.lr.ph170.i:                                      ; preds = %bb.em
  %i.apf = load ptr, ptr %i.ajo, align 8, !tbaa !42
  %i.apg = load ptr, ptr %i.aou, align 8, !tbaa !43
  %i.aph = icmp ult ptr %i.apf, %i.apg
  br i1 %i.aph, label %.lr.ph170.split.i, label %.lr.ph170.split.us.i.preheader

.lr.ph170.split.us.i.preheader:                   ; preds = %.lr.ph170.i
  %i.api = add i32 %i.aow, -8
  %i.apj = add i32 %i.api, %i.aox                 ; 2 uses
  %i.apk = lshr i32 %i.apj, 3
  %i.apl = add nuw nsw i32 %i.apk, 1
  %xtraiter272 = and i32 %i.apl, 7                ; 2 uses
  %lcmp.mod273.not = icmp eq i32 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph170.split.us.i.prol.loopexit, label %.lr.ph170.split.us.i.prol

.lr.ph170.split.us.i.prol:                        ; preds = %.lr.ph170.split.us.i.preheader, %.lr.ph170.split.us.i.prol
  %i.apm = phi i32 [ %i.app, %.lr.ph170.split.us.i.prol ], [ %i.apd, %.lr.ph170.split.us.i.preheader ]
  %i.apn = phi i32 [ %i.apo, %.lr.ph170.split.us.i.prol ], [ %i.apc, %.lr.ph170.split.us.i.preheader ]
  %prol.iter274 = phi i32 [ %prol.iter274.next, %.lr.ph170.split.us.i.prol ], [ 0, %.lr.ph170.split.us.i.preheader ]
  %i.apo = lshr i32 %i.apn, 8                     ; 2 uses
  %i.app = add i32 %i.apm, -8                     ; 3 uses
  %prol.iter274.next = add i32 %prol.iter274, 1   ; 2 uses
  %prol.iter274.cmp.not = icmp eq i32 %prol.iter274.next, %xtraiter272
  br i1 %prol.iter274.cmp.not, label %.lr.ph170.split.us.i.prol.loopexit, label %.lr.ph170.split.us.i.prol, !llvm.loop !362

.lr.ph170.split.us.i.prol.loopexit:               ; preds = %.lr.ph170.split.us.i.prol, %.lr.ph170.split.us.i.preheader
  %.unr275 = phi i32 [ %i.apd, %.lr.ph170.split.us.i.preheader ], [ %i.app, %.lr.ph170.split.us.i.prol ]
  %.lcssa214.unr = phi i32 [ poison, %.lr.ph170.split.us.i.preheader ], [ %i.apo, %.lr.ph170.split.us.i.prol ]
  %.lcssa213.unr = phi i32 [ poison, %.lr.ph170.split.us.i.preheader ], [ %i.app, %.lr.ph170.split.us.i.prol ]
  %i.apq = icmp ult i32 %i.apj, 56
  br i1 %i.apq, label %._crit_edge171.split.us.i, label %.lr.ph170.split.us.i

.lr.ph170.split.us.i:                             ; preds = %.lr.ph170.split.us.i.prol.loopexit, %.lr.ph170.split.us.i
  %i.apr = phi i32 [ %i.aps, %.lr.ph170.split.us.i ], [ %.unr275, %.lr.ph170.split.us.i.prol.loopexit ]
  %i.aps = add i32 %i.apr, -64                    ; 3 uses
  %i.apt = icmp ugt i32 %i.aps, 7
  br i1 %i.apt, label %.lr.ph170.split.us.i, label %._crit_edge171.split.us.i, !llvm.loop !363

._crit_edge171.split.us.i:                        ; preds = %.lr.ph170.split.us.i, %.lr.ph170.split.us.i.prol.loopexit
  %.lcssa214 = phi i32 [ %.lcssa214.unr, %.lr.ph170.split.us.i.prol.loopexit ], [ 0, %.lr.ph170.split.us.i ] ; 2 uses
  %.lcssa213 = phi i32 [ %.lcssa213.unr, %.lr.ph170.split.us.i.prol.loopexit ], [ %i.aps, %.lr.ph170.split.us.i ] ; 2 uses
  store i32 %.lcssa214, ptr %i.ajs, align 8, !tbaa !84
  store i32 %.lcssa213, ptr %i.aju, align 4, !tbaa !83
  br label %._crit_edge171.i

.lr.ph170.split.i:                                ; preds = %.lr.ph170.i, %bb.eo
  %i.apu = phi i32 [ %i.aqe, %bb.eo ], [ %i.apd, %.lr.ph170.i ]
  %i.apv = phi i32 [ %i.aqd, %bb.eo ], [ %i.apc, %.lr.ph170.i ] ; 2 uses
  %i.apw = load ptr, ptr %i.ajo, align 8, !tbaa !42 ; 3 uses
  %i.apx = load ptr, ptr %i.aou, align 8, !tbaa !43
  %i.apy = icmp ult ptr %i.apw, %i.apx
  br i1 %i.apy, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.lr.ph170.split.i
  %i.apz = trunc i32 %i.apv to i8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apw, i64 1
  store ptr %i.aqa, ptr %i.ajo, align 8, !tbaa !42
  store i8 %i.apz, ptr %i.apw, align 1, !tbaa !19
  %.pre.i8 = load i32, ptr %i.ajs, align 8, !tbaa !84
  %.pre193.i = load i32, ptr %i.aju, align 4, !tbaa !83
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph170.split.i
  %i.aqb = phi i32 [ %.pre193.i, %bb.en ], [ %i.apu, %.lr.ph170.split.i ]
  %i.aqc = phi i32 [ %.pre.i8, %bb.en ], [ %i.apv, %.lr.ph170.split.i ]
  %i.aqd = lshr i32 %i.aqc, 8                     ; 3 uses
  store i32 %i.aqd, ptr %i.ajs, align 8, !tbaa !84
  %i.aqe = add i32 %i.aqb, -8                     ; 4 uses
  store i32 %i.aqe, ptr %i.aju, align 4, !tbaa !83
  %i.aqf = icmp ugt i32 %i.aqe, 7
  br i1 %i.aqf, label %.lr.ph170.split.i, label %._crit_edge171.i, !llvm.loop !364

._crit_edge171.i:                                 ; preds = %bb.eo, %._crit_edge171.split.us.i, %bb.em
  %i.aqg = phi i32 [ %i.apc, %bb.em ], [ %.lcssa214, %._crit_edge171.split.us.i ], [ %i.aqd, %bb.eo ] ; 2 uses
  %i.aqh = phi i32 [ %i.apd, %bb.em ], [ %.lcssa213, %._crit_edge171.split.us.i ], [ %i.aqe, %bb.eo ] ; 2 uses
  %i.aqi = lshr i64 %.3142176.i, %i.aoz
  %i.aqj = sub nuw i32 %.3146175.i, %i.aox        ; 2 uses
  %.not.i6 = icmp eq i32 %i.aqj, 0
  br i1 %.not.i6, label %._crit_edge179.loopexit.i, label %bb.em, !llvm.loop !365

._crit_edge179.loopexit.i:                        ; preds = %._crit_edge171.i
  %.pre197.pre.i = load ptr, ptr %i.ajo, align 8, !tbaa !42
  br label %._crit_edge179.i

._crit_edge179.i:                                 ; preds = %._crit_edge179.loopexit.i, %._crit_edge.i5
  %.pre197.i.a = phi ptr [ %.pre197.pre.i, %._crit_edge179.loopexit.i ], [ %.0138.lcssa.i, %._crit_edge.i5 ] ; 3 uses
  %i.aqk = phi i32 [ %i.aqg, %._crit_edge179.loopexit.i ], [ 0, %._crit_edge.i5 ]
  %i.aql = phi i32 [ %i.aqh, %._crit_edge179.loopexit.i ], [ 0, %._crit_edge.i5 ] ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 35466
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !78
  %i.aqo = zext i16 %i.aqn to i32
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 36938
  %i.aqq = load i8, ptr %i.aqp, align 2, !tbaa !19
  %i.aqr = zext i8 %i.aqq to i32                  ; 2 uses
  %i.aqs = shl nuw nsw i32 %i.aqo, %i.aql
  %i.aqt = or i32 %i.aqs, %i.aqk                  ; 3 uses
  store i32 %i.aqt, ptr %i.ajs, align 8, !tbaa !84
  %i.aqu = add nuw nsw i32 %i.aql, %i.aqr         ; 5 uses
  store i32 %i.aqu, ptr %i.aju, align 4, !tbaa !83
  %i.aqv = icmp samesign ugt i32 %i.aqu, 7
  br i1 %i.aqv, label %.lr.ph181.i, label %._crit_edge182.i

.lr.ph181.i:                                      ; preds = %._crit_edge179.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !43
  %i.aqy = icmp ult ptr %.pre197.i.a, %i.aqx
  br i1 %i.aqy, label %.lr.ph181.split.i, label %.lr.ph181.split.us.i.preheader

.lr.ph181.split.us.i.preheader:                   ; preds = %.lr.ph181.i
  %i.aqz = add i32 %i.aql, %i.aqr
  %i.ara = add i32 %i.aqz, -8                     ; 2 uses
  %i.arb = lshr i32 %i.ara, 3
  %i.arc = add nuw nsw i32 %i.arb, 1
  %xtraiter277 = and i32 %i.arc, 7                ; 2 uses
  %lcmp.mod278.not = icmp eq i32 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %.lr.ph181.split.us.i.prol.loopexit, label %.lr.ph181.split.us.i.prol

.lr.ph181.split.us.i.prol:                        ; preds = %.lr.ph181.split.us.i.preheader, %.lr.ph181.split.us.i.prol
  %i.ard = phi i32 [ %i.arg, %.lr.ph181.split.us.i.prol ], [ %i.aqu, %.lr.ph181.split.us.i.preheader ]
  %i.are = phi i32 [ %i.arf, %.lr.ph181.split.us.i.prol ], [ %i.aqt, %.lr.ph181.split.us.i.preheader ]
  %prol.iter279 = phi i32 [ %prol.iter279.next, %.lr.ph181.split.us.i.prol ], [ 0, %.lr.ph181.split.us.i.preheader ]
  %i.arf = lshr i32 %i.are, 8                     ; 2 uses
  %i.arg = add i32 %i.ard, -8                     ; 3 uses
  %prol.iter279.next = add i32 %prol.iter279, 1   ; 2 uses
  %prol.iter279.cmp.not = icmp eq i32 %prol.iter279.next, %xtraiter277
  br i1 %prol.iter279.cmp.not, label %.lr.ph181.split.us.i.prol.loopexit, label %.lr.ph181.split.us.i.prol, !llvm.loop !366

.lr.ph181.split.us.i.prol.loopexit:               ; preds = %.lr.ph181.split.us.i.prol, %.lr.ph181.split.us.i.preheader
  %.unr280 = phi i32 [ %i.aqu, %.lr.ph181.split.us.i.preheader ], [ %i.arg, %.lr.ph181.split.us.i.prol ]
  %.lcssa212.unr = phi i32 [ poison, %.lr.ph181.split.us.i.preheader ], [ %i.arf, %.lr.ph181.split.us.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph181.split.us.i.preheader ], [ %i.arg, %.lr.ph181.split.us.i.prol ]
  %i.arh = icmp ult i32 %i.ara, 56
  br i1 %i.arh, label %._crit_edge182.split.us.i, label %.lr.ph181.split.us.i

.lr.ph181.split.us.i:                             ; preds = %.lr.ph181.split.us.i.prol.loopexit, %.lr.ph181.split.us.i
  %i.ari = phi i32 [ %i.arj, %.lr.ph181.split.us.i ], [ %.unr280, %.lr.ph181.split.us.i.prol.loopexit ]
  %i.arj = add i32 %i.ari, -64                    ; 3 uses
  %i.ark = icmp ugt i32 %i.arj, 7
  br i1 %i.ark, label %.lr.ph181.split.us.i, label %._crit_edge182.split.us.i, !llvm.loop !367

._crit_edge182.split.us.i:                        ; preds = %.lr.ph181.split.us.i, %.lr.ph181.split.us.i.prol.loopexit
  %.lcssa212 = phi i32 [ %.lcssa212.unr, %.lr.ph181.split.us.i.prol.loopexit ], [ 0, %.lr.ph181.split.us.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph181.split.us.i.prol.loopexit ], [ %i.arj, %.lr.ph181.split.us.i ]
  store i32 %.lcssa212, ptr %i.ajs, align 8, !tbaa !84
  store i32 %.lcssa, ptr %i.aju, align 4, !tbaa !83
  br label %._crit_edge182.i

.lr.ph181.split.i:                                ; preds = %.lr.ph181.i, %bb.eq
  %i.arl = phi i32 [ %i.arv, %bb.eq ], [ %i.aqu, %.lr.ph181.i ]
  %i.arm = phi i32 [ %i.aru, %bb.eq ], [ %i.aqt, %.lr.ph181.i ] ; 2 uses
  %i.arn = load ptr, ptr %i.ajo, align 8, !tbaa !42 ; 3 uses
  %i.aro = load ptr, ptr %i.aqw, align 8, !tbaa !43
  %i.arp = icmp ult ptr %i.arn, %i.aro
  br i1 %i.arp, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.lr.ph181.split.i
  %i.arq = trunc i32 %i.arm to i8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 1
  store ptr %i.arr, ptr %i.ajo, align 8, !tbaa !42
  store i8 %i.arq, ptr %i.arn, align 1, !tbaa !19
  %.pre194.i = load i32, ptr %i.ajs, align 8, !tbaa !84
  %.pre195.i = load i32, ptr %i.aju, align 4, !tbaa !83
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph181.split.i
  %i.ars = phi i32 [ %.pre195.i, %bb.ep ], [ %i.arl, %.lr.ph181.split.i ]
  %i.art = phi i32 [ %.pre194.i, %bb.ep ], [ %i.arm, %.lr.ph181.split.i ]
  %i.aru = lshr i32 %i.art, 8                     ; 2 uses
  store i32 %i.aru, ptr %i.ajs, align 8, !tbaa !84
  %i.arv = add i32 %i.ars, -8                     ; 3 uses
  store i32 %i.arv, ptr %i.aju, align 4, !tbaa !83
  %i.arw = icmp ugt i32 %i.arv, 7
  br i1 %i.arw, label %.lr.ph181.split.i, label %._crit_edge182.loopexit.i, !llvm.loop !368

._crit_edge182.loopexit.i:                        ; preds = %bb.eq
  %.pre196.i = load ptr, ptr %i.ajo, align 8, !tbaa !42
  br label %._crit_edge182.i

._crit_edge182.i:                                 ; preds = %._crit_edge182.loopexit.i, %._crit_edge182.split.us.i, %._crit_edge179.i
  %i.arx = phi ptr [ %.pre196.i, %._crit_edge182.loopexit.i ], [ %.pre197.i.a, %._crit_edge182.split.us.i ], [ %.pre197.i.a, %._crit_edge179.i ]
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !43
  %i.asa = icmp ult ptr %i.arx, %i.arz
  %i.asb = zext i1 %i.asa to i32
  br label %tdefl_compress_lz_codes.exit

tdefl_compress_lz_codes.exit:                     ; preds = %bb.ek, %._crit_edge182.i
  %.0.i = phi i32 [ %i.asb, %._crit_edge182.i ], [ 0, %bb.ek ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #26 {
end_hunk_1
