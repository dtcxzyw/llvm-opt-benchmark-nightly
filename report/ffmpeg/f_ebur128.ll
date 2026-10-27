Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_ebur128?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"ebur128\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"EBU R128 scanner.\00", align 1
@ebur128_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_audio_input }], align 16
@ff_af_ebur128 = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @ebur128_inputs, ptr null, ptr @ebur128_class, i32 2, [4 x i8] zeroinitializer }, i8 1, i8 0, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 528, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@ebur128_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @ebur128_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"set video output\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"set video size\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"640x480\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"meter\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"set scale meter (+9 to +18)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"framelog\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"force frame logging level\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"logging disabled\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"information logging level\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"verbose logging level\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"inject metadata in the filtergraph\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"peak\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"set peak mode\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"disable any peak mode\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"enable peak-sample mode\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"enable true-peak mode\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"dualmono\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"treat mono input files as dual-mono\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"panlaw\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"set a specific pan law for dual-mono files\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"set a specific target level in LUFS (-23 to 0)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"gauge\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"set gauge display type\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"gaugetype\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"momentary\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"display momentary value\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"shortterm\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"display short-term value\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"sets display method for the stats\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"scaletype\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"display absolute values (LUFS)\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"LUFS\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"display values relative to target (LU)\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"LU\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"integrated\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"integrated loudness (LUFS)\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"loudness range (LU)\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"lra_low\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"LRA low (LUFS)\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"lra_high\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"LRA high (LUFS)\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"sample_peak\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"sample peak (dBFS)\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"true_peak\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"true peak (dBFS)\00", align 1
@ebur128_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 188, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 192, i32 12, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 256, i32 2, %union.anon.2 { i64 9 }, double 9.000000e+00, double 1.800000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 488, i32 2, %union.anon.2 { i64 -1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65560, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 0, i32 11, %union.anon.2 { i64 -8 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65560, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 0, i32 11, %union.anon.2 { i64 32 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65560, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 0, i32 11, %union.anon.2 { i64 40 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65560, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 492, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65560, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 120, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.29, ptr @.str.30, i32 0, i32 11, %union.anon.2 { i64 4 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr @.str.24 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 496, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.34, i32 504, i32 4, { double } { double f0xC008151824C75837 }, double -1.000000e+01, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.36, i32 512, i32 2, %union.anon.2 { i64 -23 }, double -2.300000e+01, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr @.str.38, i32 516, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.40, ptr @.str.41, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.41, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr @.str.44, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.44, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.39 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 520, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.48 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.48 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr @.str.50, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.48 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.52, ptr @.str.53, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.48 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.54, ptr @.str.53, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.48 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.55, ptr @.str.56, i32 456, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.57, ptr @.str.58, i32 464, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.59, ptr @.str.60, i32 472, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.61, ptr @.str.62, i32 480, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.63, ptr @.str.64, i32 144, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.65, ptr @.str.66, i32 128, i32 4, { double } zeroinitializer, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF, i32 65736, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.68 = private unnamed_addr constant [5 x i8] c"out0\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"out1\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"EBU +%d scale\0A\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"Video size %dx%d is too small, minimum size is 640x480\0A\00", align 1
@font_colors = internal constant [6 x i8] c"\DD\DD\00\00\96\96", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c" LU\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@graph_colors = internal unnamed_addr constant [48 x i8] c"\DDffff\DD\963333\96\DD\96\96\96\96\DD\DD3333\DD\DDfff\DDf\96333\963\DD\96\96\96\DD\96\DD333\DD3", align 16
@.str.78 = private unnamed_addr constant [4 x i8] c"\00\FF\00\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"in_chlayout\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"in_sample_rate\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"in_sample_fmt\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"out_chlayout\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"out_sample_rate\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"out_sample_fmt\00", align 1
@.str.85 = private unnamed_addr constant [206 x i8] c"Summary:\0A\0A  Integrated loudness:\0A    I:         %5.1f LUFS\0A    Threshold: %5.1f LUFS\0A\0A  Loudness range:\0A    LRA:       %5.1f LU\0A    Threshold: %5.1f LUFS\0A    LRA low:   %5.1f LUFS\0A    LRA high:  %5.1f LUFS\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"\0A\0A  Sample peak:\0A    Peak:      %5.1f dBFS\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"\0A\0A  True peak:\0A    Peak:      %5.1f dBFS\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@query_formats.sample_fmts = internal constant [2 x i32] [i32 4, i32 -1], align 4
@query_formats.pix_fmts = internal constant [2 x i32] [i32 2, i32 -1], align 4
@.str.89 = private unnamed_addr constant [73 x i8] c"TARGET:%d LUFS    M:%6.1f S:%6.1f     I:%6.1f %s       LRA:%6.1f LU     \00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"lavfi.r128.M\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"lavfi.r128.S\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"lavfi.r128.I\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"lavfi.r128.LRA\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"lavfi.r128.LRA.low\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"lavfi.r128.LRA.high\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"lavfi.r128.sample_peaks_ch%d\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"lavfi.r128.sample_peak\00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"lavfi.r128.true_peaks_ch%d\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"lavfi.r128.true_peak\00", align 1
@.str.101 = private unnamed_addr constant [77 x i8] c"t: %-10s TARGET:%d LUFS    M:%6.1f S:%6.1f     I:%6.1f %s       LRA:%6.1f LU\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"  SPK:\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c" %5.1f\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c" dBFS\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"  FTPK:\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"  TPK:\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_ebur128_filter_channels_c(ptr nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef captures(none) %3, ptr noalias nofree noundef captures(none) %4, ptr noalias nofree noundef captures(none) %5, i32 noundef %6) #0 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !10 ; 3 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.537.0.copyload = load double, ptr %.sroa.537.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.739.0.copyload = load double, ptr %.sroa.739.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %i.c = icmp sgt i32 %6, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.638.0.copyload = load double, ptr %.sroa.638.0..sroa_idx, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 5 uses
  %i.h = fneg nsz double %.sroa.638.0.copyload    ; 2 uses
  %i.i = fneg nsz double %.sroa.6.0.copyload      ; 2 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %6, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.j = insertelement <2 x double> poison, double %i.h, i64 0
  %i.k = insertelement <2 x double> %i.j, double %.sroa.537.0.copyload, i64 1
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = mul nuw nsw i64 %wide.trip.count, 24     ; 2 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr i8, ptr %i.g, i64 %i.l
  %bound0 = icmp ult ptr %i.e, %i.n
  %bound1 = icmp ult ptr %i.g, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.o = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %i.o, -2                       ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.h, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat56 = shufflevector <2 x double> %broadcast.splatinsert55, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat58 = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert61 = insertelement <2 x double> poison, double %.sroa.739.0.copyload, i64 0
  %broadcast.splat62 = shufflevector <2 x double> %broadcast.splatinsert61, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %.sroa.537.0.copyload, i64 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %broadcast.splat66 = shufflevector <2 x double> %broadcast.splatinsert65, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <2 x double> poison, double %.sroa.4.0.copyload, i64 0
  %broadcast.splat68 = shufflevector <2 x double> %broadcast.splatinsert67, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %.sroa.5.0.copyload, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !10 ; 3 uses
  %i.q = mul nuw nsw i64 %index, 3                ; 2 uses
  %i.r = mul nuw i64 %index, 3
  %i.s = add nuw i64 %i.r, 3                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.s ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.q ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.aa = load double, ptr %i.y, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1
  %i.ad = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat58, <2 x double> %wide.load, <2 x double> %i.ac) ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.ah = load double, ptr %i.af, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat60, <2 x double> %wide.load, <2 x double> %i.aj)
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ad, <2 x double> %i.ak) ; 2 uses
  %i.am = fneg nsz <2 x double> %i.ad
  %i.an = fmul nsz <2 x double> %broadcast.splat62, %i.am
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat64, <2 x double> %wide.load, <2 x double> %i.an) ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ad, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> %i.ad, <2 x i32> <i32 0, i32 3>
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ar, ptr %i.t, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.as = shufflevector <2 x double> %i.al, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.as, ptr %i.y, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.av = load double, ptr %i.at, align 8, !tbaa !10, !alias.scope !103
  %i.aw = load double, ptr %i.au, align 8, !tbaa !10, !alias.scope !103
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat66, <2 x double> %i.ad, <2 x double> %i.ay) ; 5 uses
  %i.ba = load <2 x double>, ptr %i.t, align 8
  %i.bb = load double, ptr %i.u, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %i.bc = insertelement <2 x double> %i.ba, double %i.bb, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !10, !alias.scope !103
  %i.bg = load double, ptr %i.be, align 8, !tbaa !10, !alias.scope !103
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat68, <2 x double> %i.bc, <2 x double> %i.bi)
  %i.bk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat56, <2 x double> %i.az, <2 x double> %i.bj)
  %7 = load <2 x double>, ptr %i.t, align 8
  %8 = load double, ptr %i.u, align 8, !tbaa !10, !alias.scope !102, !noalias !103
  %9 = insertelement <2 x double> %7, double %8, i64 1
  %i.bl = fneg nsz <2 x double> %i.az
  %i.bm = fmul nsz <2 x double> %broadcast.splat70, %i.bl
  %i.bn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat72, <2 x double> %9, <2 x double> %i.bm)
  %i.bo = shufflevector <2 x double> %i.az, <2 x double> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.v, align 8, !tbaa !10, !alias.scope !103
  %i.bq = fmul nsz <2 x double> %i.az, %i.az      ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.br, align 8, !tbaa !10
  %i.bs = fsub nsz <2 x double> %i.bq, %wide.load73
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load74 = load <2 x double>, ptr %i.bt, align 8, !tbaa !10
  %i.bu = fadd nsz <2 x double> %wide.load74, %i.bs
  store <2 x double> %i.bu, ptr %i.bt, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load75 = load <2 x double>, ptr %i.bv, align 8, !tbaa !10
  %i.bw = fsub nsz <2 x double> %i.bq, %wide.load75
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.bx, align 8, !tbaa !10
  %i.by = fadd nsz <2 x double> %wide.load76, %i.bw
  store <2 x double> %i.by, ptr %i.bx, align 8, !tbaa !10
  store <2 x double> %i.bq, ptr %i.bv, align 8, !tbaa !10
  store <2 x double> %i.bq, ptr %i.br, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %scalar.ph.preheader, label %vector.body, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cb = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cb ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load double, ptr %i.ca, align 8, !tbaa !10 ; 2 uses
  %i.ch = load double, ptr %i.ce, align 8, !tbaa !10
  %i.ci = load double, ptr %i.cf, align 8, !tbaa !10
  %i.cj = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ci, i64 1
  %i.cn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.a, <2 x double> %i.ck, <2 x double> %i.cm) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 3 uses
  store double %i.co, ptr %i.cc, align 8, !tbaa !10
  %i.cp = fneg nsz double %i.co
  %i.cq = fmul nsz double %.sroa.739.0.copyload, %i.cp
  %i.cr = insertelement <2 x double> %i.cn, double %i.cg, i64 1
  %i.cs = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ct = insertelement <2 x double> %i.cs, double %i.cq, i64 1
  %i.cu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.cr, <2 x double> %i.ct)
  store <2 x double> %i.cu, ptr %i.ce, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !10
  %i.cx = tail call nsz double @llvm.fmuladd.f64(double %.sroa.0.0.copyload, double %i.co, double %i.cw) ; 5 uses
  store double %i.cx, ptr %i.cd, align 8, !tbaa !10
  %i.cy = load double, ptr %i.cc, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !10
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %.sroa.4.0.copyload, double %i.cy, double %i.da)
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.i, double %i.cx, double %i.db)
  store double %i.dc, ptr %i.cv, align 8, !tbaa !10
  %i.dd = load double, ptr %i.cc, align 8, !tbaa !10
  %i.de = fneg nsz double %i.cx
  %i.df = fmul nsz double %.sroa.7.0.copyload, %i.de
  %i.dg = tail call nsz double @llvm.fmuladd.f64(double %.sroa.5.0.copyload, double %i.dd, double %i.df)
  store double %i.dg, ptr %i.cz, align 8, !tbaa !10
  %i.dh = fmul nsz double %i.cx, %i.cx            ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10
  %i.dk = fsub nsz double %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !10
  %i.dn = fadd nsz double %i.dm, %i.dk
  store double %i.dn, ptr %i.dl, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !10
  %i.dq = fsub nsz double %i.dh, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !10
  %i.dt = fadd nsz double %i.ds, %i.dq
  store double %i.dt, ptr %i.dr, align 8, !tbaa !10
  store double %i.dh, ptr %i.do, align 8, !tbaa !10
  store double %i.dh, ptr %i.di, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !99
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define double @ff_ebur128_find_peak_c(ptr noalias nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = zext nneg i32 %1 to i64                  ; 6 uses
  br i1 %i.b, label %.lr.ph.us.preheader, label %.lr.ph32.split.preheader

.lr.ph32.split.preheader:                         ; preds = %.lr.ph32
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.lr.ph32.split.epil.preheader, label %.lr.ph32.split.preheader.new

.lr.ph32.split.preheader.new:                     ; preds = %.lr.ph32.split.preheader
  %unroll_iter = and i64 %i.c, 2147483644
  br label %.lr.ph32.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph32
  %wide.trip.count42 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter61 = and i64 %wide.trip.count42, 1
  %i.e = icmp eq i32 %3, 1
  %unroll_iter66 = and i64 %wide.trip.count42, 2147483646
  %lcmp.mod63.not = icmp eq i64 %xtraiter61, 0
  %lcmp.mod65 = trunc i32 %3 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv44 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next45, %._crit_edge.us ] ; 3 uses
  %.030.us = phi double [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.x, %._crit_edge.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv44 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv44 ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 3 uses
  %.02427.us = phi double [ %i.q, %.lr.ph.us.new ], [ %i.g, %.lr.ph.us ] ; 2 uses
  %niter67 = phi i64 [ %niter67.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.h = mul nuw nsw i64 %indvars.iv39, %i.c
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.h
  %i.i = load double, ptr %gep, align 8, !tbaa !10
  %i.j = tail call nsz double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = fcmp nsz ogt double %.02427.us, %i.j
  %i.l = select nsz i1 %i.k, double %.02427.us, double %i.j ; 2 uses
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1
  %i.m = mul nuw nsw i64 %indvars.iv.next40, %i.c
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.m
  %i.n = load double, ptr %gep.1, align 8, !tbaa !10
  %i.o = tail call nsz double @llvm.fabs.f64(double %i.n) ; 2 uses
  %i.p = fcmp nsz ogt double %i.l, %i.o
  %i.q = select nsz i1 %i.p, double %i.l, double %i.o ; 3 uses
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !104

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod63.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next40.1, %._crit_edge.us.unr-lcssa ]
  %.02427.us.epil.init = phi double [ %i.g, %.lr.ph.us ], [ %i.q, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.r = mul nuw nsw i64 %indvars.iv39.epil.init, %i.c
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.r
  %i.s = load double, ptr %gep.epil, align 8, !tbaa !10
  %i.t = tail call nsz double @llvm.fabs.f64(double %i.s) ; 2 uses
  %i.u = fcmp nsz ogt double %.02427.us.epil.init, %i.t
  %i.v = select nsz i1 %i.u, double %.02427.us.epil.init, double %i.t
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.q, %._crit_edge.us.unr-lcssa ], [ %i.v, %.epil.preheader ] ; 3 uses
  %i.w = fcmp nsz ogt double %.030.us, %.lcssa
  %i.x = select nsz i1 %i.w, double %.030.us, double %.lcssa ; 2 uses
  store double %.lcssa, ptr %i.f, align 8, !tbaa !10
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %i.c
  br i1 %exitcond48.not, label %._crit_edge33, label %.lr.ph.us, !llvm.loop !105

._crit_edge33.loopexit57.unr-lcssa:               ; preds = %.lr.ph32.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge33, label %.lr.ph32.split.epil.preheader

.lr.ph32.split.epil.preheader:                    ; preds = %._crit_edge33.loopexit57.unr-lcssa, %.lr.ph32.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph32.split.preheader ], [ %indvars.iv.next.3, %._crit_edge33.loopexit57.unr-lcssa ]
  %.030.epil.init = phi double [ 0.000000e+00, %.lr.ph32.split.preheader ], [ %i.au, %._crit_edge33.loopexit57.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph32.split.epil

.lr.ph32.split.epil:                              ; preds = %.lr.ph32.split.epil, %.lr.ph32.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph32.split.epil ], [ %indvars.iv.epil.init, %.lr.ph32.split.epil.preheader ] ; 2 uses
  %.030.epil = phi double [ %i.ab, %.lr.ph32.split.epil ], [ %.030.epil.init, %.lr.ph32.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph32.split.epil ], [ 0, %.lr.ph32.split.epil.preheader ]
end_hunk_0
