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
  %i.h = zext i32 %i.be to i64
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
  %.05870 = phi i32 [ %i.be, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
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
  %i.be = add nuw i32 %.05870, 8                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16269, i64 8 ; 2 uses
  %3 = add nuw i32 %.05870, 15
  %i.bg = icmp ult i32 %3, %i.g
  br i1 %i.bg, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !182

.lr.ph80:                                         ; preds = %.lr.ph80.prol.loopexit, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph80 ], [ %indvars.iv.unr, %.lr.ph80.prol.loopexit ]
  %.279 = phi i32 [ %i.ca, %.lr.ph80 ], [ %.279.unr, %.lr.ph80.prol.loopexit ]
  %.25778 = phi i32 [ %i.bz, %.lr.ph80 ], [ %.25778.unr, %.lr.ph80.prol.loopexit ]
  %.26376 = phi ptr [ %i.bw, %.lr.ph80 ], [ %.26376.unr, %.lr.ph80.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.26376, i64 1
  %i.bi = load i8, ptr %.26376, align 1, !tbaa !19
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %.25778, %i.bj                  ; 2 uses
  %i.bl = add i32 %i.bk, %.279
  %i.bm = getelementptr inbounds nuw i8, ptr %.26376, i64 2
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = add i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %.26376, i64 3
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !19
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bp, %i.bt                    ; 2 uses
  %i.bv = add i32 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %.26376, i64 4
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !19
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %i.bu, %i.by                    ; 3 uses
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.089
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph80, !llvm.loop !183

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
  br i1 %.not66, label %._crit_edge90, label %.preheader67, !llvm.loop !184

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
define hidden range(i64 0, 4294967296) i64 @mz_crc32(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %0 to i32                      ; 2 uses
  %.not1617 = icmp eq i64 %2, 0
  br i1 %.not1617, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = xor i32 %i.a, -1                         ; 3 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.c = add nsw i64 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %1, align 1, !tbaa !19
  %i.f = lshr i32 %i.b, 4
  %i.g = zext i8 %i.e to i32                      ; 2 uses
  %i.h = xor i32 %i.b, %i.g
  %i.i = and i32 %i.h, 15
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = xor i32 %i.l, %i.f                       ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.m, 15
  %i.p = lshr i32 %i.g, 4
  %i.q = xor i32 %i.o, %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = xor i32 %i.n, %i.t                       ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01220.unr = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01319.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.01418.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %i.v = icmp eq i64 %2, 1
  br i1 %i.v, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01220 = phi i32 [ %i.bg, %.lr.ph ], [ %.01220.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01319 = phi i64 [ %i.ao, %.lr.ph ], [ %.01319.unr, %.lr.ph.prol.loopexit ]
  %.01418 = phi ptr [ %i.ap, %.lr.ph ], [ %.01418.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01418, i64 1
  %i.x = load i8, ptr %.01418, align 1, !tbaa !19
  %i.y = lshr i32 %.01220, 4
  %i.z = zext i8 %i.x to i32                      ; 2 uses
  %i.aa = xor i32 %.01220, %i.z
  %i.ab = and i32 %i.aa, 15
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = xor i32 %i.ae, %i.y                     ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.af, 15
  %i.ai = lshr i32 %i.z, 4
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18
  %i.an = xor i32 %i.ag, %i.am                    ; 2 uses
  %i.ao = add i64 %.01319, -2                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418, i64 2
  %i.aq = load i8, ptr %i.w, align 1, !tbaa !19
  %i.ar = lshr i32 %i.an, 4
  %i.as = zext i8 %i.aq to i32                    ; 2 uses
  %i.at = xor i32 %i.an, %i.as
  %i.au = and i32 %i.at, 15
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = xor i32 %i.ax, %i.ar                    ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = and i32 %i.ay, 15
  %i.bb = lshr i32 %i.as, 4
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = xor i32 %i.az, %i.bf                    ; 2 uses
  %.not16.1 = icmp eq i64 %i.ao, 0
  br i1 %.not16.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bh = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.012.lcssa = phi i32 [ %i.a, %bb.b ], [ %i.bh, %._crit_edge.loopexit ]
  %i.bi = zext i32 %.012.lcssa to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %i.bi, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @mz_free(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @mz_version() local_unnamed_addr #4 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -10000, 1) i32 @mz_deflateInit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mz_deflateInit2(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 9, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -10000, 1) i32 @mz_deflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
end_hunk_0
begin_hunk_1_@tinfl_decompress:bb.a
  %.911441 = phi ptr [ %.901440, %bb.gq ], [ %.931443, %bb.gv ] ; 4 uses
  %.921342 = phi ptr [ %.911341, %bb.gq ], [ %.941344, %bb.gv ] ; 2 uses
  %.831242 = phi i64 [ %.821241, %bb.gq ], [ %.851244, %bb.gv ] ; 2 uses
  %.911145 = phi i32 [ %.901144, %bb.gq ], [ %.931147, %bb.gv ] ; 2 uses
  %.881037 = phi i32 [ %.871036, %bb.gq ], [ %.901039, %bb.gv ] ; 2 uses
  %.93 = phi i32 [ %.92, %bb.gq ], [ %i.ajk, %bb.gv ] ; 3 uses
  %.not1841 = icmp ult ptr %.911441, %i.d
  br i1 %.not1841, label %.thread1897, label %bb.gs

bb.gs:                                            ; preds = %bb.gt, %bb.gr
  %.911641 = phi i32 [ %.901640, %bb.gr ], [ %i.z, %bb.gt ] ; 2 uses
  %.941543 = phi i64 [ %.931542, %bb.gr ], [ %i.t, %bb.gt ] ; 2 uses
  %.921442 = phi ptr [ %.911441, %bb.gr ], [ %1, %bb.gt ] ; 2 uses
  %.931343 = phi ptr [ %.921342, %bb.gr ], [ %4, %bb.gt ] ; 2 uses
  %.841243 = phi i64 [ %.831242, %bb.gr ], [ %i.ab, %bb.gt ] ; 2 uses
  %.921146 = phi i32 [ %.911145, %bb.gr ], [ %i.x, %bb.gt ] ; 2 uses
  %.891038 = phi i32 [ %.881037, %bb.gr ], [ %i.v, %bb.gt ] ; 2 uses
  %.94 = phi i32 [ %.93, %bb.gr ], [ %i.r, %bb.gt ] ; 2 uses
  %i.aiw = and i32 %6, 2
  %.not1842 = icmp eq i32 %i.aiw, 0
  br i1 %.not1842, label %bb.gv, label %.sink.split2208

bb.gt:                                            ; preds = %bb.c
  %.not1767 = icmp eq i64 %i.c, 0
  br i1 %.not1767, label %bb.gs, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aiy = load i8, ptr %1, align 1, !tbaa !19
  %i.aiz = zext i8 %i.aiy to i64
  br label %bb.gv

.thread1897:                                      ; preds = %bb.gr
  %i.aja = getelementptr inbounds nuw i8, ptr %.911441, i64 1
  %i.ajb = load i8, ptr %.911441, align 1, !tbaa !19
  %i.ajc = zext i8 %i.ajb to i64
  %i.ajd = zext nneg i32 %.93 to i64
  %i.aje = shl nuw nsw i64 %i.ajc, %i.ajd
  %i.ajf = or i64 %i.aje, %.931542
  %i.ajg = add nuw nsw i32 %.93, 8
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gs, %bb.gu
  %.921642 = phi i32 [ %i.z, %bb.gu ], [ %.911641, %bb.gs ] ; 2 uses
  %.951544 = phi i64 [ %i.t, %bb.gu ], [ %.941543, %bb.gs ]
  %.931443 = phi ptr [ %i.aix, %bb.gu ], [ %.921442, %bb.gs ] ; 2 uses
  %.941344 = phi ptr [ %4, %bb.gu ], [ %.931343, %bb.gs ] ; 2 uses
  %.851244 = phi i64 [ %i.ab, %bb.gu ], [ %.841243, %bb.gs ] ; 2 uses
  %.931147 = phi i32 [ %i.x, %bb.gu ], [ %.921146, %bb.gs ] ; 2 uses
  %.901039 = phi i32 [ %i.v, %bb.gu ], [ %.891038, %bb.gs ] ; 2 uses
  %.95 = phi i32 [ %i.r, %bb.gu ], [ %.94, %bb.gs ] ; 3 uses
  %.0884.shrunk = phi i64 [ %i.aiz, %bb.gu ], [ 0, %bb.gs ]
  %i.ajh = zext nneg i32 %.95 to i64
  %i.aji = shl i64 %.0884.shrunk, %i.ajh
  %i.ajj = or i64 %i.aji, %.951544                ; 2 uses
  %i.ajk = add i32 %.95, 8                        ; 2 uses
  %i.ajl = icmp ugt i32 %.95, -9
  br i1 %i.ajl, label %bb.gr, label %bb.gw, !llvm.loop !240

bb.gw:                                            ; preds = %.thread1897, %bb.gv, %bb.gq
  %.931643 = phi i32 [ %.921642, %bb.gv ], [ %.891639, %bb.gq ], [ %.901640, %.thread1897 ]
  %.961545 = phi i64 [ %i.ajj, %bb.gv ], [ %.921541, %bb.gq ], [ %i.ajf, %.thread1897 ] ; 2 uses
  %.941444 = phi ptr [ %.931443, %bb.gv ], [ %.901440, %bb.gq ], [ %i.aja, %.thread1897 ]
  %.951345 = phi ptr [ %.941344, %bb.gv ], [ %.911341, %bb.gq ], [ %.921342, %.thread1897 ]
  %.861245 = phi i64 [ %.851244, %bb.gv ], [ %.821241, %bb.gq ], [ %.831242, %.thread1897 ]
  %.941148 = phi i32 [ %.931147, %bb.gv ], [ %.901144, %bb.gq ], [ %.911145, %.thread1897 ]
  %.911040 = phi i32 [ %.901039, %bb.gv ], [ %.871036, %bb.gq ], [ %.881037, %.thread1897 ]
  %.96 = phi i32 [ %i.ajk, %bb.gv ], [ %.92, %bb.gq ], [ %i.ajg, %.thread1897 ]
  %i.ajm = trunc i64 %.961545 to i32
  %i.ajn = and i32 %i.ajm, 255
  %i.ajo = lshr i64 %.961545, 8
  %i.ajp = add i32 %.96, -8
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gp
  %.not1839 = icmp ult ptr %.901440, %i.d
  br i1 %.not1839, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %bb.gz, %bb.gx
  %.941644 = phi i32 [ %.891639, %bb.gx ], [ %i.z, %bb.gz ] ; 2 uses
  %.971546 = phi i64 [ %.921541, %bb.gx ], [ %i.t, %bb.gz ] ; 2 uses
  %.951445 = phi ptr [ %.901440, %bb.gx ], [ %1, %bb.gz ] ; 2 uses
  %.961346 = phi ptr [ %.911341, %bb.gx ], [ %4, %bb.gz ] ; 2 uses
  %.871246 = phi i64 [ %.821241, %bb.gx ], [ %i.ab, %bb.gz ] ; 2 uses
  %.951149 = phi i32 [ %.901144, %bb.gx ], [ %i.x, %bb.gz ] ; 2 uses
  %.921041 = phi i32 [ %.871036, %bb.gx ], [ %i.v, %bb.gz ] ; 2 uses
  %.97 = phi i32 [ 0, %bb.gx ], [ %i.r, %bb.gz ]  ; 2 uses
  %i.ajq = and i32 %6, 2
  %.not1840 = icmp eq i32 %i.ajq, 0
  br i1 %.not1840, label %bb.hc, label %.sink.split2208

bb.gz:                                            ; preds = %bb.c
  %.not1766 = icmp eq i64 %i.c, 0
  br i1 %.not1766, label %bb.gy, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ajs = load i8, ptr %1, align 1, !tbaa !19
  %i.ajt = zext i8 %i.ajs to i32
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gx
  %i.aju = getelementptr inbounds nuw i8, ptr %.901440, i64 1
  %i.ajv = load i8, ptr %.901440, align 1, !tbaa !19
  %i.ajw = zext i8 %i.ajv to i32
  br label %bb.hc

bb.hc:                                            ; preds = %bb.gy, %bb.hb, %bb.ha, %bb.gw
  %.951645 = phi i32 [ %.931643, %bb.gw ], [ %i.z, %bb.ha ], [ %.891639, %bb.hb ], [ %.941644, %bb.gy ]
  %.981547 = phi i64 [ %i.ajo, %bb.gw ], [ %i.t, %bb.ha ], [ %.921541, %bb.hb ], [ %.971546, %bb.gy ]
  %.961446 = phi ptr [ %.941444, %bb.gw ], [ %i.ajr, %bb.ha ], [ %i.aju, %bb.hb ], [ %.951445, %bb.gy ]
  %.971347 = phi ptr [ %.951345, %bb.gw ], [ %4, %bb.ha ], [ %.911341, %bb.hb ], [ %.961346, %bb.gy ]
  %.881247 = phi i64 [ %.861245, %bb.gw ], [ %i.ab, %bb.ha ], [ %.821241, %bb.hb ], [ %.871246, %bb.gy ]
  %.961150 = phi i32 [ %.941148, %bb.gw ], [ %i.x, %bb.ha ], [ %.901144, %bb.hb ], [ %.951149, %bb.gy ]
  %.931042 = phi i32 [ %.911040, %bb.gw ], [ %i.v, %bb.ha ], [ %.871036, %bb.hb ], [ %.921041, %bb.gy ]
  %.98 = phi i32 [ %i.ajp, %bb.gw ], [ %i.r, %bb.ha ], [ 0, %bb.hb ], [ %.97, %bb.gy ]
  %.0885 = phi i32 [ %i.ajn, %bb.gw ], [ %i.ajt, %bb.ha ], [ %i.ajw, %bb.hb ], [ 0, %bb.gy ]
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !255
  %i.ajz = shl i32 %i.ajy, 8
  %i.aka = or disjoint i32 %i.ajz, %.0885
  store i32 %i.aka, ptr %i.ajx, align 8, !tbaa !255
  %i.akb = add i32 %.961150, 1
  br label %bb.go, !llvm.loop !241

bb.hd:                                            ; preds = %bb.c
  br label %.sink.split2208

.sink.split2208:                                  ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.go, %bb.gi, %bb.gy, %bb.gs, %bb.gj, %bb.fu, %bb.fr, %bb.fn, %bb.fe, %bb.es, %bb.ee, %bb.dx, %bb.dl, %bb.df, %bb.dc, %bb.cu, %._crit_edge, %bb.bu, %bb.bm, %bb.u, %bb.bf, %bb.bc, %bb.az, %bb.au, %bb.aq, %bb.ak, %bb.ae, %bb.v, %bb.r, %bb.o, %bb.c, %.split, %bb.l, %bb.f, %bb.bg, %bb.hd
  %.sink2210 = phi i32 [ 42, %bb.gy ], [ 41, %bb.gs ], [ 32, %bb.gj ], [ 53, %bb.fu ], [ %i.ac, %bb.c ], [ 27, %bb.fn ], [ 26, %bb.fe ], [ 25, %bb.es ], [ 24, %bb.ee ], [ 23, %bb.dx ], [ %i.ac, %bb.c ], [ 18, %bb.df ], [ %i.ac, %bb.c ], [ 16, %bb.cu ], [ %i.ac, %bb.c ], [ 14, %bb.bu ], [ 11, %bb.bm ], [ %i.ac, %bb.c ], [ 38, %bb.bf ], [ 40, %bb.bg ], [ 9, %bb.bc ], [ 52, %bb.az ], [ 51, %bb.au ], [ %i.ac, %bb.hd ], [ 7, %bb.ak ], [ 6, %bb.ae ], [ 5, %bb.v ], [ 3, %bb.r ], [ 36, %bb.o ], [ 2, %bb.l ], [ 1, %bb.f ], [ 36, %.split ], [ %i.ac, %bb.c ], [ 39, %bb.aq ], [ 10, %bb.u ], [ 35, %._crit_edge ], [ 17, %bb.dc ], [ 21, %bb.dl ], [ 37, %bb.fr ], [ 34, %bb.gi ], [ 34, %bb.go ], [ %i.ac, %bb.c ]
  %.971647.ph = phi i32 [ %.941644, %bb.gy ], [ %.911641, %bb.gs ], [ %i.z, %bb.gj ], [ %.831633, %bb.fu ], [ %i.z, %bb.c ], [ %.771627, %bb.fn ], [ %.741624, %bb.fe ], [ %.691619, %bb.es ], [ %.651615, %bb.ee ], [ %.621612, %bb.dx ], [ %i.z, %bb.c ], [ %.541604, %bb.df ], [ %i.z, %bb.c ], [ %.491599, %bb.cu ], [ %i.z, %bb.c ], [ %.411591, %bb.bu ], [ %.361586, %bb.bm ], [ %i.z, %bb.c ], [ %.311581, %bb.bf ], [ %.321582, %bb.bg ], [ %.301580, %bb.bc ], [ %.281578, %bb.az ], [ %.251575, %bb.au ], [ %i.z, %bb.hd ], [ %.201570, %bb.ak ], [ %.171567, %bb.ae ], [ %i.z, %bb.v ], [ %.81558, %bb.r ], [ %.31553, %bb.o ], [ %.21552, %bb.l ], [ %.01550, %bb.f ], [ %.31553, %.split ], [ %i.z, %bb.c ], [ %.151565, %bb.aq ], [ %.101560, %bb.u ], [ %.451595, %._crit_edge ], [ %.511601, %bb.dc ], [ %.471597, %bb.dl ], [ %.801630, %bb.fr ], [ %.841634, %bb.gi ], [ %.891639, %bb.go ], [ %i.z, %bb.c ]
  %.1001549.ph = phi i64 [ %.971546, %bb.gy ], [ %.941543, %bb.gs ], [ %i.t, %bb.gj ], [ %.861535, %bb.fu ], [ %i.t, %bb.c ], [ %.801529, %bb.fn ], [ %.761525, %bb.fe ], [ %.711520, %bb.es ], [ %.651514, %bb.ee ], [ %.621511, %bb.dx ], [ %i.t, %bb.c ], [ %.541503, %bb.df ], [ %i.t, %bb.c ], [ %.491498, %bb.cu ], [ %i.t, %bb.c ], [ %.411490, %bb.bu ], [ %.361485, %bb.bm ], [ %i.t, %bb.c ], [ %.311480, %bb.bf ], [ %.321481, %bb.bg ], [ %.301479, %bb.bc ], [ %.281477, %bb.az ], [ %.251474, %bb.au ], [ %i.t, %bb.hd ], [ %.201469, %bb.ak ], [ %.171466, %bb.ae ], [ %i.t, %bb.v ], [ %.81457, %bb.r ], [ %.31452, %bb.o ], [ %.21451, %bb.l ], [ %.01449, %bb.f ], [ %.31452, %.split ], [ %i.t, %bb.c ], [ %.151464, %bb.aq ], [ %i.by, %bb.u ], [ %.451494, %._crit_edge ], [ %i.sp, %bb.dc ], [ %.471496, %bb.dl ], [ %.831532, %bb.fr ], [ %.871536, %bb.gi ], [ %.921541, %bb.go ], [ %i.t, %bb.c ]
  %.981448.ph = phi ptr [ %.951445, %bb.gy ], [ %.921442, %bb.gs ], [ %1, %bb.gj ], [ %.841434, %bb.fu ], [ %1, %bb.c ], [ %.781428, %bb.fn ], [ %.741424, %bb.fe ], [ %.691419, %bb.es ], [ %.641414, %bb.ee ], [ %.611411, %bb.dx ], [ %1, %bb.c ], [ %.531403, %bb.df ], [ %1, %bb.c ], [ %.481398, %bb.cu ], [ %1, %bb.c ], [ %.401390, %bb.bu ], [ %.351385, %bb.bm ], [ %1, %bb.c ], [ %.301380, %bb.bf ], [ %.311381, %bb.bg ], [ %.291379, %bb.bc ], [ %.271377, %bb.az ], [ %.241374, %bb.au ], [ %1, %bb.hd ], [ %.191369, %bb.ak ], [ %.161366, %bb.ae ], [ %1, %bb.v ], [ %.71357, %bb.r ], [ %.21352, %bb.o ], [ %.11351, %bb.l ], [ %1, %bb.f ], [ %.21352, %.split ], [ %1, %bb.c ], [ %.141364, %bb.aq ], [ %.91359, %bb.u ], [ %.441394, %._crit_edge ], [ %.501400, %bb.dc ], [ %.461396, %bb.dl ], [ %.811431, %bb.fr ], [ %.851435, %bb.gi ], [ %.901440, %bb.go ], [ %1, %bb.c ]
  %.991349.ph = phi ptr [ %.961346, %bb.gy ], [ %.931343, %bb.gs ], [ %4, %bb.gj ], [ %.791329, %bb.fu ], [ %4, %bb.c ], [ %.731323, %bb.fn ], [ %.691319, %bb.fe ], [ %.641314, %bb.es ], [ %.591309, %bb.ee ], [ %.561306, %bb.dx ], [ %4, %bb.c ], [ %.481298, %bb.df ], [ %4, %bb.c ], [ %.431293, %bb.cu ], [ %4, %bb.c ], [ %.351285, %bb.bu ], [ %.301280, %bb.bm ], [ %4, %bb.c ], [ %.251275, %bb.bf ], [ %.261276, %bb.bg ], [ %.241274, %bb.bc ], [ %.221272, %bb.az ], [ %.191269, %bb.au ], [ %4, %bb.hd ], [ %.141264, %bb.ak ], [ %.111261, %bb.ae ], [ %4, %bb.v ], [ %.21252, %bb.r ], [ %4, %bb.o ], [ %4, %bb.l ], [ %4, %bb.f ], [ %4, %.split ], [ %4, %bb.c ], [ %.91259, %bb.aq ], [ %.41254, %bb.u ], [ %.391289, %._crit_edge ], [ %.451295, %bb.dc ], [ %.411291, %bb.dl ], [ %.761326, %bb.fr ], [ %.861336, %bb.gi ], [ %.911341, %bb.go ], [ %4, %bb.c ]
  %.901249.ph = phi i64 [ %.871246, %bb.gy ], [ %.841243, %bb.gs ], [ %i.ab, %bb.gj ], [ %.761235, %bb.fu ], [ %i.ab, %bb.c ], [ %.721231, %bb.fn ], [ %.681227, %bb.fe ], [ %.631222, %bb.es ], [ %.591218, %bb.ee ], [ %.561215, %bb.dx ], [ %i.ab, %bb.c ], [ %.481207, %bb.df ], [ %i.ab, %bb.c ], [ %.431202, %bb.cu ], [ %i.ab, %bb.c ], [ %.351194, %bb.bu ], [ %.301189, %bb.bm ], [ %i.ab, %bb.c ], [ %.251184, %bb.bf ], [ %.261185, %bb.bg ], [ %.241183, %bb.bc ], [ %.221181, %bb.az ], [ %.191178, %bb.au ], [ %i.ab, %bb.hd ], [ %.141173, %bb.ak ], [ %.111170, %bb.ae ], [ %i.ab, %bb.v ], [ %.21161, %bb.r ], [ %i.ab, %bb.o ], [ %i.ab, %bb.l ], [ %i.ab, %bb.f ], [ %i.ab, %.split ], [ %i.ab, %bb.c ], [ %.91168, %bb.aq ], [ %.41163, %bb.u ], [ %.391198, %._crit_edge ], [ %.451204, %bb.dc ], [ %.411200, %bb.dl ], [ %i.afd, %bb.fr ], [ %.771236, %bb.gi ], [ %.821241, %bb.go ], [ %i.ab, %bb.c ]
  %.981152.ph = phi i32 [ %.951149, %bb.gy ], [ %.921146, %bb.gs ], [ %i.x, %bb.gj ], [ %.831137, %bb.fu ], [ %i.x, %bb.c ], [ %.771131, %bb.fn ], [ %.731127, %bb.fe ], [ %.681122, %bb.es ], [ %.631117, %bb.ee ], [ %.611115, %bb.dx ], [ %i.x, %bb.c ], [ %.531107, %bb.df ], [ %i.x, %bb.c ], [ %.481102, %bb.cu ], [ %i.x, %bb.c ], [ %.401094, %bb.bu ], [ %.351089, %bb.bm ], [ %i.x, %bb.c ], [ %.301084, %bb.bf ], [ %.311085, %bb.bg ], [ %.291083, %bb.bc ], [ %.271081, %bb.az ], [ %.241078, %bb.au ], [ %i.x, %bb.hd ], [ %.191073, %bb.ak ], [ %.161070, %bb.ae ], [ %i.x, %bb.v ], [ %.81062, %bb.r ], [ 1, %bb.o ], [ %.21056, %bb.l ], [ %.01054, %bb.f ], [ 1, %.split ], [ %i.x, %bb.c ], [ %i.ed, %bb.aq ], [ %.101064, %bb.u ], [ %.441098, %._crit_edge ], [ 0, %bb.dc ], [ %.461100, %bb.dl ], [ %.801134, %bb.fr ], [ %.861140, %bb.gi ], [ %.901144, %bb.go ], [ %i.x, %bb.c ]
  %.951044.ph = phi i32 [ %.921041, %bb.gy ], [ %.891038, %bb.gs ], [ %i.v, %bb.gj ], [ %.811030, %bb.fu ], [ %i.v, %bb.c ], [ %.751024, %bb.fn ], [ %.721021, %bb.fe ], [ %.671016, %bb.es ], [ %.631012, %bb.ee ], [ %.601009, %bb.dx ], [ %i.v, %bb.c ], [ %.521001, %bb.df ], [ %i.v, %bb.c ], [ %.48997, %bb.cu ], [ %i.v, %bb.c ], [ %.40989, %bb.bu ], [ %.35984, %bb.bm ], [ %i.v, %bb.c ], [ %.30979, %bb.bf ], [ %.31980, %bb.bg ], [ %.29978, %bb.bc ], [ %.27976, %bb.az ], [ %.25974, %bb.au ], [ %i.v, %bb.hd ], [ %.20969, %bb.ak ], [ %.17966, %bb.ae ], [ %i.v, %bb.v ], [ %.8957, %bb.r ], [ %.3952, %bb.o ], [ %.2951, %bb.l ], [ %.0949, %bb.f ], [ %.3952, %.split ], [ %i.v, %bb.c ], [ %.15964, %bb.aq ], [ %.10959, %bb.u ], [ %.44993, %._crit_edge ], [ 16, %bb.dc ], [ %.46995, %bb.dl ], [ %.781027, %bb.fr ], [ %.821031, %bb.gi ], [ %.871036, %bb.go ], [ %i.v, %bb.c ]
  %.100.ph = phi i32 [ %.97, %bb.gy ], [ %.94, %bb.gs ], [ %i.r, %bb.gj ], [ %.86, %bb.fu ], [ %i.r, %bb.c ], [ %.80, %bb.fn ], [ %.76, %bb.fe ], [ %.71, %bb.es ], [ %.65, %bb.ee ], [ %.62, %bb.dx ], [ %i.r, %bb.c ], [ %.54, %bb.df ], [ %i.r, %bb.c ], [ %.49, %bb.cu ], [ %i.r, %bb.c ], [ %.41, %bb.bu ], [ %.36, %bb.bm ], [ %i.r, %bb.c ], [ %.31, %bb.bf ], [ %.32, %bb.bg ], [ %.30, %bb.bc ], [ %.28, %bb.az ], [ %.25, %bb.au ], [ %i.r, %bb.hd ], [ %.20, %bb.ak ], [ %.17, %bb.ae ], [ %i.r, %bb.v ], [ %.8, %bb.r ], [ %.3939, %bb.o ], [ %.2938, %bb.l ], [ %.0936, %bb.f ], [ %.3939, %.split ], [ %i.r, %bb.c ], [ %.15, %bb.aq ], [ %i.bz, %bb.u ], [ %.45, %._crit_edge ], [ %i.sq, %bb.dc ], [ %.47, %bb.dl ], [ %.83, %bb.fr ], [ %.87, %bb.gi ], [ %.92, %bb.go ], [ %i.r, %bb.c ]
  %.ph = phi i1 [ true, %bb.gy ], [ true, %bb.gs ], [ true, %bb.gj ], [ true, %bb.fu ], [ false, %bb.c ], [ true, %bb.fn ], [ true, %bb.fe ], [ true, %bb.es ], [ true, %bb.ee ], [ true, %bb.dx ], [ false, %bb.c ], [ true, %bb.df ], [ false, %bb.c ], [ true, %bb.cu ], [ false, %bb.c ], [ true, %bb.bu ], [ true, %bb.bm ], [ false, %bb.c ], [ true, %bb.bf ], [ false, %bb.bg ], [ true, %bb.bc ], [ true, %bb.az ], [ true, %bb.au ], [ true, %bb.hd ], [ true, %bb.ak ], [ true, %bb.ae ], [ true, %bb.v ], [ true, %bb.r ], [ false, %bb.o ], [ true, %bb.l ], [ true, %bb.f ], [ false, %.split ], [ false, %bb.c ], [ false, %bb.aq ], [ false, %bb.u ], [ false, %._crit_edge ], [ false, %bb.dc ], [ false, %bb.dl ], [ false, %bb.fr ], [ true, %bb.gi ], [ true, %bb.go ], [ false, %bb.c ]
  %.ph2209 = phi i1 [ false, %bb.gy ], [ false, %bb.gs ], [ false, %bb.gj ], [ false, %bb.fu ], [ false, %bb.c ], [ false, %bb.fn ], [ false, %bb.fe ], [ false, %bb.es ], [ false, %bb.ee ], [ false, %bb.dx ], [ false, %bb.c ], [ false, %bb.df ], [ false, %bb.c ], [ false, %bb.cu ], [ false, %bb.c ], [ false, %bb.bu ], [ false, %bb.bm ], [ false, %bb.c ], [ false, %bb.bf ], [ false, %bb.bg ], [ false, %bb.bc ], [ false, %bb.az ], [ false, %bb.au ], [ true, %bb.hd ], [ false, %bb.ak ], [ false, %bb.ae ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.f ], [ false, %.split ], [ false, %bb.c ], [ false, %bb.aq ], [ false, %bb.u ], [ false, %._crit_edge ], [ false, %bb.dc ], [ false, %bb.dl ], [ false, %bb.fr ], [ true, %bb.gi ], [ true, %bb.go ], [ false, %bb.c ]
  %.0897.ph = phi i32 [ 1, %bb.gy ], [ 1, %bb.gs ], [ 1, %bb.gj ], [ 2, %bb.fu ], [ -1, %bb.c ], [ 1, %bb.fn ], [ 1, %bb.fe ], [ 1, %bb.es ], [ 2, %bb.ee ], [ 1, %bb.dx ], [ -1, %bb.c ], [ 1, %bb.df ], [ -1, %bb.c ], [ 1, %bb.cu ], [ -1, %bb.c ], [ 1, %bb.bu ], [ 1, %bb.bm ], [ -1, %bb.c ], [ 1, %bb.bf ], [ -1, %bb.bg ], [ 2, %bb.bc ], [ 2, %bb.az ], [ 1, %bb.au ], [ 0, %bb.hd ], [ 1, %bb.ak ], [ 1, %bb.ae ], [ 1, %bb.v ], [ 1, %bb.r ], [ -1, %bb.o ], [ 1, %bb.l ], [ 1, %bb.f ], [ -1, %.split ], [ -1, %bb.c ], [ -1, %bb.aq ], [ -1, %bb.u ], [ -1, %._crit_edge ], [ -1, %bb.dc ], [ -1, %bb.dl ], [ -1, %bb.fr ], [ 0, %bb.gi ], [ 0, %bb.go ], [ -1, %bb.c ]
  store i32 %.sink2210, ptr %0, align 8, !tbaa !77
  br label %bb.he

bb.he:                                            ; preds = %.sink.split2208, %bb.c
  %.971647 = phi i32 [ %i.z, %bb.c ], [ %.971647.ph, %.sink.split2208 ]
  %.1001549 = phi i64 [ %i.t, %bb.c ], [ %.1001549.ph, %.sink.split2208 ]
  %.981448 = phi ptr [ %1, %bb.c ], [ %.981448.ph, %.sink.split2208 ]
  %.991349 = phi ptr [ %4, %bb.c ], [ %.991349.ph, %.sink.split2208 ]
  %.901249 = phi i64 [ %i.ab, %bb.c ], [ %.901249.ph, %.sink.split2208 ]
  %.981152 = phi i32 [ %i.x, %bb.c ], [ %.981152.ph, %.sink.split2208 ]
  %.951044 = phi i32 [ %i.v, %bb.c ], [ %.951044.ph, %.sink.split2208 ]
  %.100 = phi i32 [ %i.r, %bb.c ], [ %.100.ph, %.sink.split2208 ]
  %i.akc = phi i1 [ false, %bb.c ], [ %.ph, %.sink.split2208 ]
  %i.akd = phi i1 [ false, %bb.c ], [ %.ph2209, %.sink.split2208 ]
  %.0897 = phi i32 [ -1, %bb.c ], [ %.0897.ph, %.sink.split2208 ] ; 2 uses
  store i32 %.100, ptr %i.q, align 4, !tbaa !246
  store i64 %.1001549, ptr %i.s, align 8, !tbaa !247
  store i32 %.951044, ptr %i.u, align 8, !tbaa !248
  store i32 %.981152, ptr %i.w, align 4, !tbaa !249
  store i32 %.971647, ptr %i.y, align 8, !tbaa !250
  store i64 %.901249, ptr %i.aa, align 8, !tbaa !251
  %i.ake = ptrtoint ptr %.981448 to i64
  %i.akf = ptrtoint ptr %1 to i64
  %i.akg = sub i64 %i.ake, %i.akf
  store i64 %i.akg, ptr %2, align 8, !tbaa !56
  %i.akh = ptrtoint ptr %.991349 to i64
  %i.aki = sub i64 %i.akh, %i.h                   ; 4 uses
  store i64 %i.aki, ptr %5, align 8, !tbaa !56
  %i.akj = and i32 %6, 9
  %i.akk = icmp ne i32 %i.akj, 0
  %or.cond5 = and i1 %i.akk, %i.akc
  br i1 %or.cond5, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %bb.he
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !254 ; 2 uses
  %i.akn = and i32 %i.akm, 65535                  ; 2 uses
  %i.ako = lshr i32 %i.akm, 16                    ; 2 uses
  %.not18542002 = icmp eq i64 %i.aki, 0
  br i1 %.not18542002, label %._crit_edge2008, label %.preheader1908.preheader

.preheader1908.preheader:                         ; preds = %bb.hf
  %i.akp = urem i64 %i.aki, 5552
  br label %.preheader1908

.preheader1908:                                   ; preds = %.preheader1908.preheader, %._crit_edge1998
  %.02007 = phi i64 [ 5552, %._crit_edge1998 ], [ %i.akp, %.preheader1908.preheader ] ; 8 uses
  %.08742006 = phi i32 [ %i.ano, %._crit_edge1998 ], [ %i.ako, %.preheader1908.preheader ] ; 2 uses
  %.08752005 = phi i32 [ %i.ann, %._crit_edge1998 ], [ %i.akn, %.preheader1908.preheader ] ; 2 uses
  %.08802004 = phi i64 [ %i.anp, %._crit_edge1998 ], [ %i.aki, %.preheader1908.preheader ]
  %.08812003 = phi ptr [ %.2883.lcssa, %._crit_edge1998 ], [ %4, %.preheader1908.preheader ] ; 2 uses
  %i.akq = icmp samesign ugt i64 %.02007, 7
  br i1 %i.akq, label %.lr.ph1988.preheader, label %.preheader

.lr.ph1988.preheader:                             ; preds = %.preheader1908
  %i.akr = trunc nuw nsw i64 %.02007 to i32
  br label %.lr.ph1988

.preheader.loopexit:                              ; preds = %.lr.ph1988
  %i.aks = zext i32 %i.amp to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1908
  %.1882.lcssa = phi ptr [ %.08812003, %.preheader1908 ], [ %i.amq, %.preheader.loopexit ] ; 4 uses
  %.0878.lcssa = phi i64 [ 0, %.preheader1908 ], [ %i.aks, %.preheader.loopexit ] ; 6 uses
  %.1876.lcssa = phi i32 [ %.08752005, %.preheader1908 ], [ %i.amn, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.08742006, %.preheader1908 ], [ %i.amo, %.preheader.loopexit ] ; 3 uses
  %i.akt = icmp samesign ugt i64 %.02007, %.0878.lcssa
  br i1 %i.akt, label %.lr.ph1997.preheader, label %._crit_edge1998

.lr.ph1997.preheader:                             ; preds = %.preheader
  %i.aku = sub nuw nsw i64 %.02007, %.0878.lcssa
  %xtraiter2338 = and i64 %i.aku, 3               ; 2 uses
  %lcmp.mod2339.not = icmp eq i64 %xtraiter2338, 0
  br i1 %lcmp.mod2339.not, label %.lr.ph1997.prol.loopexit, label %.lr.ph1997.prol

.lr.ph1997.prol:                                  ; preds = %.lr.ph1997.preheader, %.lr.ph1997.prol
  %indvars.iv2066.prol = phi i64 [ %indvars.iv.next2067.prol, %.lr.ph1997.prol ], [ %.0878.lcssa, %.lr.ph1997.preheader ]
  %.21996.prol = phi i32 [ %i.akz, %.lr.ph1997.prol ], [ %.1.lcssa, %.lr.ph1997.preheader ]
  %.28771995.prol = phi i32 [ %i.aky, %.lr.ph1997.prol ], [ %.1876.lcssa, %.lr.ph1997.preheader ]
  %.28831993.prol = phi ptr [ %i.akv, %.lr.ph1997.prol ], [ %.1882.lcssa, %.lr.ph1997.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1997.prol ], [ 0, %.lr.ph1997.preheader ]
  %i.akv = getelementptr inbounds nuw i8, ptr %.28831993.prol, i64 1 ; 2 uses
  %i.akw = load i8, ptr %.28831993.prol, align 1, !tbaa !19
  %i.akx = zext i8 %i.akw to i32
  %i.aky = add i32 %.28771995.prol, %i.akx        ; 4 uses
  %i.akz = add i32 %i.aky, %.21996.prol           ; 3 uses
  %indvars.iv.next2067.prol = add nuw nsw i64 %indvars.iv2066.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2338
  br i1 %prol.iter.cmp.not, label %.lr.ph1997.prol.loopexit, label %.lr.ph1997.prol, !llvm.loop !242

.lr.ph1997.prol.loopexit:                         ; preds = %.lr.ph1997.prol, %.lr.ph1997.preheader
  %.lcssa2279.unr = phi i32 [ poison, %.lr.ph1997.preheader ], [ %i.aky, %.lr.ph1997.prol ]
  %.lcssa2278.unr = phi i32 [ poison, %.lr.ph1997.preheader ], [ %i.akz, %.lr.ph1997.prol ]
  %indvars.iv2066.unr = phi i64 [ %.0878.lcssa, %.lr.ph1997.preheader ], [ %indvars.iv.next2067.prol, %.lr.ph1997.prol ]
  %.21996.unr = phi i32 [ %.1.lcssa, %.lr.ph1997.preheader ], [ %i.akz, %.lr.ph1997.prol ]
  %.28771995.unr = phi i32 [ %.1876.lcssa, %.lr.ph1997.preheader ], [ %i.aky, %.lr.ph1997.prol ]
  %.28831993.unr = phi ptr [ %.1882.lcssa, %.lr.ph1997.preheader ], [ %i.akv, %.lr.ph1997.prol ]
  %i.ala = sub nsw i64 %.0878.lcssa, %.02007
  %i.alb = icmp ugt i64 %i.ala, -4
  br i1 %i.alb, label %._crit_edge1998.loopexit, label %.lr.ph1997

.lr.ph1988:                                       ; preds = %.lr.ph1988.preheader, %.lr.ph1988
  %.11987 = phi i32 [ %i.amo, %.lr.ph1988 ], [ %.08742006, %.lr.ph1988.preheader ]
  %.18761986 = phi i32 [ %i.amn, %.lr.ph1988 ], [ %.08752005, %.lr.ph1988.preheader ]
  %.08781985 = phi i32 [ %i.amp, %.lr.ph1988 ], [ 0, %.lr.ph1988.preheader ] ; 2 uses
  %.18821984 = phi ptr [ %i.amq, %.lr.ph1988 ], [ %.08812003, %.lr.ph1988.preheader ] ; 9 uses
  %i.alc = load i8, ptr %.18821984, align 1, !tbaa !19
  %i.ald = zext i8 %i.alc to i32
  %i.ale = add i32 %.18761986, %i.ald             ; 2 uses
  %i.alf = add i32 %i.ale, %.11987
  %i.alg = getelementptr inbounds nuw i8, ptr %.18821984, i64 1
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !19
  %i.ali = zext i8 %i.alh to i32
  %i.alj = add i32 %i.ale, %i.ali                 ; 2 uses
  %i.alk = add i32 %i.alf, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %.18821984, i64 2
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !19
  %i.aln = zext i8 %i.alm to i32
  %i.alo = add i32 %i.alj, %i.aln                 ; 2 uses
  %i.alp = add i32 %i.alk, %i.alo
  %i.alq = getelementptr inbounds nuw i8, ptr %.18821984, i64 3
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !19
  %i.als = zext i8 %i.alr to i32
  %i.alt = add i32 %i.alo, %i.als                 ; 2 uses
  %i.alu = add i32 %i.alp, %i.alt
  %i.alv = getelementptr inbounds nuw i8, ptr %.18821984, i64 4
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !19
  %i.alx = zext i8 %i.alw to i32
  %i.aly = add i32 %i.alt, %i.alx                 ; 2 uses
  %i.alz = add i32 %i.alu, %i.aly
  %i.ama = getelementptr inbounds nuw i8, ptr %.18821984, i64 5
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !19
  %i.amc = zext i8 %i.amb to i32
  %i.amd = add i32 %i.aly, %i.amc                 ; 2 uses
  %i.ame = add i32 %i.alz, %i.amd
  %i.amf = getelementptr inbounds nuw i8, ptr %.18821984, i64 6
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !19
  %i.amh = zext i8 %i.amg to i32
  %i.ami = add i32 %i.amd, %i.amh                 ; 2 uses
  %i.amj = add i32 %i.ame, %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr %.18821984, i64 7
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !19
  %i.amm = zext i8 %i.aml to i32
  %i.amn = add i32 %i.ami, %i.amm                 ; 3 uses
  %i.amo = add i32 %i.amj, %i.amn                 ; 2 uses
  %i.amp = add nuw i32 %.08781985, 8              ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.18821984, i64 8 ; 2 uses
  %7 = add nuw i32 %.08781985, 15
  %i.amr = icmp ult i32 %7, %i.akr
  br i1 %i.amr, label %.lr.ph1988, label %.preheader.loopexit, !llvm.loop !243

.lr.ph1997:                                       ; preds = %.lr.ph1997.prol.loopexit, %.lr.ph1997
  %indvars.iv2066 = phi i64 [ %indvars.iv.next2067.3, %.lr.ph1997 ], [ %indvars.iv2066.unr, %.lr.ph1997.prol.loopexit ]
  %.21996 = phi i32 [ %i.anl, %.lr.ph1997 ], [ %.21996.unr, %.lr.ph1997.prol.loopexit ]
  %.28771995 = phi i32 [ %i.ank, %.lr.ph1997 ], [ %.28771995.unr, %.lr.ph1997.prol.loopexit ]
  %.28831993 = phi ptr [ %i.anh, %.lr.ph1997 ], [ %.28831993.unr, %.lr.ph1997.prol.loopexit ] ; 5 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.28831993, i64 1
  %i.amt = load i8, ptr %.28831993, align 1, !tbaa !19
  %i.amu = zext i8 %i.amt to i32
  %i.amv = add i32 %.28771995, %i.amu             ; 2 uses
  %i.amw = add i32 %i.amv, %.21996
  %i.amx = getelementptr inbounds nuw i8, ptr %.28831993, i64 2
  %i.amy = load i8, ptr %i.ams, align 1, !tbaa !19
  %i.amz = zext i8 %i.amy to i32
  %i.ana = add i32 %i.amv, %i.amz                 ; 2 uses
  %i.anb = add i32 %i.ana, %i.amw
  %i.anc = getelementptr inbounds nuw i8, ptr %.28831993, i64 3
  %i.and = load i8, ptr %i.amx, align 1, !tbaa !19
  %i.ane = zext i8 %i.and to i32
  %i.anf = add i32 %i.ana, %i.ane                 ; 2 uses
  %i.ang = add i32 %i.anf, %i.anb
  %i.anh = getelementptr inbounds nuw i8, ptr %.28831993, i64 4
  %i.ani = load i8, ptr %i.anc, align 1, !tbaa !19
  %i.anj = zext i8 %i.ani to i32
  %i.ank = add i32 %i.anf, %i.anj                 ; 3 uses
  %i.anl = add i32 %i.ank, %i.ang                 ; 2 uses
  %indvars.iv.next2067.3 = add nuw nsw i64 %indvars.iv2066, 4 ; 2 uses
  %exitcond2070.not.3 = icmp eq i64 %indvars.iv.next2067.3, %.02007
  br i1 %exitcond2070.not.3, label %._crit_edge1998.loopexit, label %.lr.ph1997, !llvm.loop !244

._crit_edge1998.loopexit:                         ; preds = %.lr.ph1997, %.lr.ph1997.prol.loopexit
  %.lcssa2279 = phi i32 [ %.lcssa2279.unr, %.lr.ph1997.prol.loopexit ], [ %i.ank, %.lr.ph1997 ]
  %.lcssa2278 = phi i32 [ %.lcssa2278.unr, %.lr.ph1997.prol.loopexit ], [ %i.anl, %.lr.ph1997 ]
  %i.anm = sub nsw i64 %.02007, %.0878.lcssa
  %scevgep2068 = getelementptr i8, ptr %.1882.lcssa, i64 %i.anm
  br label %._crit_edge1998

._crit_edge1998:                                  ; preds = %._crit_edge1998.loopexit, %.preheader
  %.2883.lcssa = phi ptr [ %.1882.lcssa, %.preheader ], [ %scevgep2068, %._crit_edge1998.loopexit ]
  %.2877.lcssa = phi i32 [ %.1876.lcssa, %.preheader ], [ %.lcssa2279, %._crit_edge1998.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa2278, %._crit_edge1998.loopexit ]
  %i.ann = urem i32 %.2877.lcssa, 65521           ; 2 uses
  %i.ano = urem i32 %.2.lcssa, 65521              ; 2 uses
  %i.anp = sub i64 %.08802004, %.02007            ; 2 uses
  %.not1854 = icmp eq i64 %i.anp, 0
  br i1 %.not1854, label %._crit_edge2008, label %.preheader1908, !llvm.loop !245

._crit_edge2008:                                  ; preds = %._crit_edge1998, %bb.hf
  %.0875.lcssa = phi i32 [ %i.akn, %bb.hf ], [ %i.ann, %._crit_edge1998 ]
  %.0874.lcssa = phi i32 [ %i.ako, %bb.hf ], [ %i.ano, %._crit_edge1998 ]
  %i.anq = shl nuw i32 %.0874.lcssa, 16
  %i.anr = or disjoint i32 %i.anq, %.0875.lcssa   ; 2 uses
  store i32 %i.anr, ptr %i.akl, align 4, !tbaa !254
  br i1 %i.akd, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %._crit_edge2008
  %i.ans = and i32 %6, 1
  %.not1855 = icmp eq i32 %i.ans, 0
  br i1 %.not1855, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anu = load i32, ptr %i.ant, align 8, !tbaa !255
  %.not1856 = icmp eq i32 %i.anr, %i.anu
  %spec.select = select i1 %.not1856, i32 0, i32 -2
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.he, %bb.hg, %._crit_edge2008, %bb.b
  %.0888 = phi i32 [ -3, %bb.b ], [ %.0897, %bb.he ], [ %.0897, %._crit_edge2008 ], [ %spec.select, %bb.hh ], [ 0, %bb.hg ]
  ret i32 %.0888
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @mz_inflateEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.b) #33
  store ptr null, ptr %i.a, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -10000, 1) i32 @mz_uncompress(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.mz_stream_s, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i8 0, i64 88, i1 false)
  %i.b = load i64, ptr %1, align 8, !tbaa !56     ; 2 uses
  %i.c = or i64 %i.b, %3
  %i.d = icmp ugt i64 %i.c, 4294967295
  br i1 %i.d, label %mz_inflateInit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !55
  %i.e = trunc nuw i64 %3 to i32
  store i32 %i.e, ptr %i.a, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.f, align 8, !tbaa !52
  %i.g = trunc nuw i64 %i.b to i32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.g, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr @def_alloc_func, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr @def_free_func, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.n = tail call noalias noundef dereferenceable_or_null(43792) ptr @malloc(i64 noundef 43792) #34 ; 6 uses
  %.not33.i.i = icmp eq ptr %i.n, null
  br i1 %.not33.i.i, label %mz_inflateInit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 11000
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 43788
  store i32 1, ptr %i.q, align 4, !tbaa !75
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 11016
  store i32 15, ptr %i.r, align 8, !tbaa !76
  %i.s = call i32 @mz_inflate(ptr noundef nonnull %4, i32 noundef 4) ; 3 uses
  %.not16 = icmp eq i32 %i.s, 1
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not8.i = icmp eq ptr %i.t, null
  br i1 %.not8.i, label %mz_inflateEnd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !33
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.t) #33, !inline_history !260
  br label %mz_inflateEnd.exit

mz_inflateEnd.exit:                               ; preds = %bb.d, %bb.e
  %i.w = icmp ne i32 %i.s, -5
  %i.x = load i32, ptr %i.a, align 8
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  %i.z = select i1 %or.cond, i32 %i.s, i32 -3
  br label %mz_inflateInit.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !50
  store i64 %i.aa, ptr %1, align 8, !tbaa !56
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
  %.not8.i17 = icmp eq ptr %i.ab, null
  br i1 %.not8.i17, label %mz_inflateInit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !33
  call void %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.ab) #33, !inline_history !260
  br label %mz_inflateInit.exit

mz_inflateInit.exit:                              ; preds = %bb.g, %bb.f, %bb.b, %bb.a, %mz_inflateEnd.exit
  %.0 = phi i32 [ -4, %bb.b ], [ -10000, %bb.a ], [ %i.z, %mz_inflateEnd.exit ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mz_error(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.fold.split
    i32 2, label %.fold.split10
    i32 -1, label %.fold.split11
    i32 -2, label %.fold.split12
    i32 -3, label %.fold.split13
    i32 -4, label %.fold.split14
    i32 -5, label %.fold.split15
end_hunk_1
