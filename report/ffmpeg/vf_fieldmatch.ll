Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fieldmatch?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"fieldmatch\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Field matching for inverse telecine.\00", align 1
@fieldmatch_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_vf_fieldmatch = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr null, ptr @fieldmatch_outputs, ptr @fieldmatch_class, i32 1, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @fieldmatch_init, ptr @fieldmatch_uninit, %union.anon.0 { ptr @query_formats }, i32 304, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@fieldmatch_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @fieldmatch_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"specify the assumed field order\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"auto detect parity\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"assume bottom field first\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"assume top field first\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"set the matching mode or strategy to use\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"2-way match (p/c)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pc_n\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"2-way match + 3rd match on combed (p/c + u)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pc_u\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"2-way match + 3rd match (same order) on combed (p/c + u)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"pc_n_ub\00", align 1
@.str.21 = private unnamed_addr constant [84 x i8] c"2-way match + 3rd match on combed + 4th/5th matches if still combed (p/c + u + u/b)\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pcn\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"3-way match (p/c/n)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"pcn_ub\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"3-way match + 4th/5th matches on combed (p/c/n + u/b)\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ppsrc\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"mark main input as a pre-processed input and activate clean source input stream\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"set the field to match from\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"automatic (same value as 'order')\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"bottom field\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"top field\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"mchroma\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"set whether or not chroma is included during the match comparisons\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"y0\00", align 1
@.str.38 = private unnamed_addr constant [101 x i8] c"define an exclusion band which excludes the lines between y0 and y1 from the field matching decision\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"scthresh\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"set scene change detection threshold\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"combmatch\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"set combmatching mode\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"combmatching\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"disable combmatching\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"enable combmatching only on scene change\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"enable combmatching all the time\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"combdbg\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"enable comb debug\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"dbglvl\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"no forced calculation\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"calculate p/c/n\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"pcnub\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"calculate p/c/n/u/b\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"cthresh\00", align 1
@.str.59 = private unnamed_addr constant [63 x i8] c"set the area combing threshold used for combed frame detection\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"chroma\00", align 1
@.str.61 = private unnamed_addr constant [69 x i8] c"set whether or not chroma is considered in the combed frame decision\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"blockx\00", align 1
@.str.63 = private unnamed_addr constant [69 x i8] c"set the x-axis size of the window used during combed frame detection\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"blocky\00", align 1
@.str.65 = private unnamed_addr constant [69 x i8] c"set the y-axis size of the window used during combed frame detection\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"combpel\00", align 1
@.str.67 = private unnamed_addr constant [131 x i8] c"set the number of combed pixels inside any of the blocky by blockx size blocks on the frame for the frame to be detected as combed\00", align 1
@fieldmatch_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 104, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 0, i32 11, %union.anon.2 { i64 -1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 112, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 5.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 0, i32 11, %union.anon.2 { i64 3 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 0, i32 11, %union.anon.2 { i64 4 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 0, i32 11, %union.anon.2 { i64 5 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 108, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 116, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.28 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.30, i32 0, i32 11, %union.anon.2 { i64 -1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.28 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.28 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.34, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.28 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.36, i32 120, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr @.str.38, i32 124, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr @.str.38, i32 128, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.40, ptr @.str.41, i32 144, i32 4, { double } { double 1.200000e+01 }, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 152, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 2.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.44 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.46, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.44 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.47, ptr @.str.48, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.44 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.44 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr @.str.52, i32 156, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.54, i32 0, i32 11, %union.anon.2 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.55, i32 0, i32 11, %union.anon.2 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.56, ptr @.str.57, i32 0, i32 11, %union.anon.2 { i64 2 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.58, ptr @.str.59, i32 160, i32 2, %union.anon.2 { i64 9 }, double -1.000000e+00, double 2.550000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.60, ptr @.str.61, i32 164, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.62, ptr @.str.63, i32 168, i32 2, %union.anon.2 { i64 16 }, double 4.000000e+00, double 5.120000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.64, ptr @.str.65, i32 172, i32 2, %union.anon.2 { i64 16 }, double 4.000000e+00, double 5.120000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.66, ptr @.str.67, i32 176, i32 2, %union.anon.2 { i64 80 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.69 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@__const.fieldmatch_init.pad = private unnamed_addr constant %struct.AVFilterPad { ptr @.str.69, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"clean_src\00", align 1
@.str.71 = private unnamed_addr constant [49 x i8] c"blockx and blocky settings must be power of two\0A\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"Combed pixel should not be larger than blockx x blocky\0A\00", align 1
@query_formats.pix_fmts = internal constant [6 x i32] [i32 5, i32 4, i32 0, i32 7, i32 6, i32 -1], align 16
@query_formats.unproc_pix_fmts = internal constant [29 x i32] [i32 6, i32 7, i32 0, i32 4, i32 31, i32 5, i32 12, i32 13, i32 32, i32 14, i32 138, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 151, i32 131, i32 127, i32 123, i32 153, i32 133, i32 129, i32 125, i32 45, i32 47, i32 49, i32 -1], align 16
@.str.73 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"fm->got_frame[0] == 0\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"libavfilter/vf_fieldmatch.c\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"fm->prv && fm->src && fm->nxt\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"fm->got_frame[1] == 0\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"fm->prv2 && fm->src2 && fm->nxt2\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"order == 0 || order == 1 || field == 0 || field == 1\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"COMBS: %3d %3d %3d %3d %3d\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"Frame #%ld at %s is still interlaced\0A\00", align 1
@.str.83 = private unnamed_addr constant [68 x i8] c"SC:%d | COMBS: %3d %3d %3d %3d %3d (combpel=%d) match=%d combed=%s\0A\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@switch.table.compare_fields.3 = private unnamed_addr constant [5 x i8] c"\08\10\18\08\18", align 8

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @fieldmatch_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVFilterPad, align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @__const.fieldmatch_init.pad, i64 48, i1 false)
  %i.c = call i32 @ff_append_inpad(ptr noundef %0, ptr noundef nonnull %1) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.70, ptr %1, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !70
  %i.h = call i32 @ff_append_inpad(ptr noundef nonnull %0, ptr noundef nonnull %1) #10 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %.not17 = icmp samesign ult i32 %i.l, 2
  br i1 %.not17, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28   ; 2 uses
  %i.o = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %.not18 = icmp samesign ult i32 %i.o, 2
  br i1 %.not18, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = mul nsw i32 %i.n, %i.k
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.d, %bb.e
  %.str.72.sink = phi ptr [ @.str.71, %bb.d ], [ @.str.71, %bb.e ], [ @.str.72, %bb.f ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.72.sink) #10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.c, %bb.a
  %.0 = phi i32 [ %i.h, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.f ], [ -22, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @fieldmatch_uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #10
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %.not19 = icmp eq ptr %i.i, %i.g
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @av_frame_free(ptr noundef nonnull %i.h) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %.not20 = icmp eq ptr %i.k, %i.m
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @av_frame_free(ptr noundef nonnull %i.j) #10
  %.pre22 = load ptr, ptr %i.l, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %.pre22, %bb.f ], [ %i.k, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not21 = icmp eq ptr %i.p, %i.n
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @av_frame_free(ptr noundef nonnull %i.o) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @av_frame_free(ptr noundef nonnull %i.e) #10
  tail call void @av_frame_free(ptr noundef nonnull %i.l) #10
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  tail call void @av_freep(ptr noundef nonnull %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  tail call void @av_freep(ptr noundef nonnull %i.s) #10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @av_freep(ptr noundef nonnull %i.t) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.pix_fmts) #10 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ff_set_common_formats2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.c) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !72
  %i.h = tail call i32 @ff_formats_ref(ptr noundef nonnull %i.c, ptr noundef %i.g) #10 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.unproc_pix_fmts) #10 ; 3 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %2, align 8, !tbaa !72
  %i.l = tail call i32 @ff_formats_ref(ptr noundef nonnull %i.j, ptr noundef %i.k) #10 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = tail call i32 @ff_formats_ref(ptr noundef nonnull %i.j, ptr noundef %i.o) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.p, i32 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %.0 = phi i32 [ -12, %bb.a ], [ -12, %bb.e ], [ %., %bb.g ], [ %i.l, %bb.f ], [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = tail call i32 @ff_outlink_get_status(ptr noundef %i.h) #10 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
end_hunk_0
begin_hunk_1_@filter_frame:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 48
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 706) #10
  tail call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not228 = icmp eq ptr %i.y, %i.aa
  br i1 %.not228, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @av_frame_free(ptr noundef nonnull %i.x) #10
  %.pr = load ptr, ptr %i.z, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pr281 = phi ptr [ %.pr, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  store ptr %.pr281, ptr %i.x, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 5 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !31
  %.not229 = icmp eq ptr %1, null
  br i1 %.not229, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %1, ptr %i.ab, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %1, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.not230 = icmp eq ptr %.pr281, null
  br i1 %.not230, label %thread-pre-split, label %bb.i

thread-pre-split:                                 ; preds = %bb.h
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !30
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.bn, label %.thread339

bb.i:                                             ; preds = %bb.h
  %.not232 = icmp eq ptr %i.ac, null
  %.not233 = icmp eq ptr %i.ad, null
  %or.cond347 = or i1 %.not232, %.not233
  br i1 %or.cond347, label %bb.j, label %.thread344

.thread339:                                       ; preds = %thread-pre-split
  %.not233.old = icmp eq ptr %i.ad, null
  br i1 %.not233.old, label %bb.j, label %.thread344

bb.j:                                             ; preds = %.thread339, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef 707) #10
  tail call void @abort() #11
  unreachable

.thread344:                                       ; preds = %bb.i, %.thread339
  store i32 1, ptr %i.u, align 8, !tbaa !42
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 710) #10
  tail call void @abort() #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.al
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @av_frame_free(ptr noundef nonnull %i.ai) #10
  %.pr282 = load ptr, ptr %i.ak, align 8, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pr284 = phi ptr [ %.pr282, %bb.n ], [ %i.al, %bb.m ] ; 2 uses
  store ptr %.pr284, ptr %i.ai, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 5 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !34
  %.not223 = icmp eq ptr %1, null
  br i1 %.not223, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %1, ptr %i.am, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = phi ptr [ %1, %bb.p ], [ %i.an, %bb.o ] ; 2 uses
  %.not224 = icmp eq ptr %.pr284, null
  br i1 %.not224, label %thread-pre-split283, label %bb.r

thread-pre-split283:                              ; preds = %bb.q
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !33
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.bn, label %.thread342

bb.r:                                             ; preds = %bb.q
  %.not226 = icmp eq ptr %i.an, null
  %.not227 = icmp eq ptr %i.ao, null
  %or.cond348 = or i1 %.not226, %.not227
  br i1 %or.cond348, label %bb.s, label %bb.t

.thread342:                                       ; preds = %thread-pre-split283
  %.not227.old = icmp eq ptr %i.ao, null
  br i1 %.not227.old, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread342, %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, i32 noundef 711) #10
  tail call void @abort() #11
  unreachable

bb.t:                                             ; preds = %bb.r, %.thread342
  store i32 1, ptr %i.af, align 4, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !42
  %i.aq = icmp eq i32 %.pre, 0
  br i1 %i.aq, label %bb.bn, label %bb.u

bb.u:                                             ; preds = %.thread344, %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 108 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !26
  %.not235 = icmp eq i32 %i.at, 0
  br i1 %.not235, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %.not236 = icmp eq i32 %i.av, 0
  br i1 %.not236, label %bb.bn, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 0, ptr %i.aw, align 4, !tbaa !42
  store i32 0, ptr %i.ar, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 8 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !90 ; 4 uses
  %.not237 = icmp eq i32 %i.ba, -1
  br i1 %.not237, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 276
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !91 ; 2 uses
  %i.bd = and i32 %i.bc, 8
  %.not238 = icmp eq i32 %i.bd, 0
  %i.be = lshr i32 %i.bc, 4
  %.lobit = and i32 %i.be, 1
  %.ph = select i1 %.not238, i32 1, i32 %.lobit   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !92 ; 2 uses
  %.not239285 = icmp eq i32 %i.bg, -1
  %.286 = select i1 %.not239285, i32 %.ph, i32 %i.bg
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !92 ; 2 uses
  %.not239 = icmp eq i32 %i.bi, -1
  %. = select i1 %.not239, i32 %i.ba, i32 %i.bi   ; 2 uses
  %or.cond = icmp ult i32 %i.ba, 2
  %i.bj = icmp ult i32 %., 2
  %or.cond5 = or i1 %or.cond, %i.bj
  br i1 %or.cond5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.75, i32 noundef 723) #10
  tail call void @abort() #11
  unreachable

bb.z:                                             ; preds = %.thread, %bb.x
  %.289 = phi i32 [ %.286, %.thread ], [ %., %bb.x ] ; 20 uses
  %i.bk = phi i32 [ %.ph, %.thread ], [ %i.ba, %bb.x ]
  %.not240 = icmp eq i32 %.289, %i.bk             ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 156 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !93
  %.not241 = icmp eq i32 %i.bm, 0
  br i1 %.not241, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 5 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.br = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef %.289, ptr noundef %i.bp, ptr noundef %i.ay, ptr noundef %i.bq, i32 noundef 0) ; 3 uses
  store ptr %i.br, ptr %i.b, align 16, !tbaa !36
  %.not243 = icmp eq ptr %i.br, null
  br i1 %.not243, label %.loopexit304, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = tail call fastcc i32 @calc_combed_score(ptr noundef nonnull %i.j, ptr noundef nonnull %i.br) ; 2 uses
  store i32 %i.bs, ptr %i.a, align 16, !tbaa !42
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.bw = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef %.289, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bv, i32 noundef 0) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !36
  %.not243.1 = icmp eq ptr %i.bw, null
  br i1 %.not243.1, label %.loopexit304, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = tail call fastcc i32 @calc_combed_score(ptr noundef nonnull %i.j, ptr noundef nonnull %i.bw) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !42
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.cd = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %.289, ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef %i.cc, i32 noundef 0) ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.cd, ptr %i.ce, align 16, !tbaa !36
  %.not243.2 = icmp eq ptr %i.cd, null
  br i1 %.not243.2, label %.loopexit304, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = tail call fastcc i32 @calc_combed_score(ptr noundef nonnull %i.j, ptr noundef nonnull %i.cd) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !42
  %i.ch = load i32, ptr %i.bl, align 4, !tbaa !93
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.ck = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.cl = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.cm = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %i.e, i32 noundef 3, i32 noundef %.289, ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.cl, i32 noundef 0) ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !36
  %.not243.3 = icmp eq ptr %i.cm, null
  br i1 %.not243.3, label %.loopexit304, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = tail call fastcc i32 @calc_combed_score(ptr noundef nonnull %i.j, ptr noundef nonnull %i.cm) ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !42
  %i.cq = load i32, ptr %i.bl, align 4, !tbaa !93
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.ct = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.cv = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %i.e, i32 noundef 4, i32 noundef %.289, ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.cu, i32 noundef 0) ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.cv, ptr %i.cw, align 16, !tbaa !36
  %.not243.4 = icmp eq ptr %i.cv, null
  br i1 %.not243.4, label %.loopexit304, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = tail call fastcc i32 @calc_combed_score(ptr noundef nonnull %i.j, ptr noundef nonnull %i.cv) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.cx, ptr %i.cy, align 16, !tbaa !42
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad
  %i.cz = phi i32 [ %i.cx, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.ad ]
  %i.da = phi i32 [ %i.co, %bb.ah ], [ %i.co, %bb.af ], [ -1, %bb.ad ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 32, ptr noundef nonnull @.str.80, i32 noundef %i.bs, i32 noundef %i.by, i32 noundef %i.cf, i32 noundef %i.da, i32 noundef %i.cz) #10
  br label %bb.ak

bb.aj:                                            ; preds = %bb.z
  %i.db = tail call ptr @av_frame_clone(ptr noundef %i.ay) #10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !36
  %.not242 = icmp eq ptr %i.db, null
  br i1 %.not242, label %.loopexit304, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %2 = select i1 %.not240, i32 0, i32 2           ; 5 uses
  %i.dd = tail call fastcc i32 @compare_fields(ptr noundef nonnull %i.j, i32 noundef 1, i32 noundef %2, i32 noundef %.289) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !94
  %i.dg = and i32 %i.df, -2
  %switch = icmp eq i32 %i.dg, 4
  br i1 %switch, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %3 = select i1 %.not240, i32 2, i32 0
  %i.dh = tail call fastcc i32 @compare_fields(ptr noundef nonnull %i.j, i32 noundef %i.dd, i32 noundef %3, i32 noundef %.289)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0206 = phi i32 [ %i.dh, %bb.al ], [ %i.dd, %bb.ak ] ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !95 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 1                    ; 2 uses
  br i1 %i.dk, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !98 ; 2 uses
  %i.dp = add nsw i64 %i.do, -1
  %i.dq = icmp eq i64 %i.dm, %i.dp
  br i1 %i.dq, label %.split, label %bb.ao

.split:                                           ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !54 ; 2 uses
  %.not303 = icmp sgt i64 %i.ds, %i.du
  br i1 %.not303, label %.thread291, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre318 = load ptr, ptr %i.ax, align 8, !tbaa !31
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !30 ; 4 uses
  %i.dx = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 3 uses
  %.val262 = load ptr, ptr %i.dx, align 8, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !62 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 108
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !63 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %bb.ao
  %i.ed = getelementptr i8, ptr %i.dx, i64 64
  %.val263 = load i32, ptr %i.ed, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !42
  %i.eg = icmp sgt i32 %i.dz, 0
  %i.eh = sext i32 %i.ef to i64
  %i.ei = sext i32 %.val263 to i64
  br i1 %i.eg, label %.preheader.us.preheader.i, label %.loopexit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !61
  %wide.trip.count.i = zext nneg i32 %i.dz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ek = icmp eq i32 %i.dz, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod352 = trunc i32 %i.dz to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.06.us.i = phi i64 [ %.lcssa350, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %.0215.us.i = phi ptr [ %i.fq, %._crit_edge.us.i ], [ %.val262, %.preheader.us.preheader.i ] ; 4 uses
  %.0224.us.i = phi ptr [ %i.fp, %._crit_edge.us.i ], [ %i.ej, %.preheader.us.preheader.i ] ; 4 uses
  %.0233.us.i = phi i32 [ %i.fr, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  br i1 %i.ek, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %.12.us.i = phi i64 [ %i.fe, %.preheader.us.i.new ], [ %.06.us.i, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0224.us.i, i64 %indvars.iv.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !64
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.0215.us.i, i64 %indvars.iv.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !64
  %i.eq = zext i8 %i.ep to i32
  %i.er = sub nsw i32 %i.en, %i.eq
  %i.es = tail call i32 @llvm.abs.i32(i32 %i.er, i1 true)
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = add nsw i64 %.12.us.i, %i.et
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0224.us.i, i64 %indvars.iv.next.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !64
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0215.us.i, i64 %indvars.iv.next.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !64
  %i.fa = zext i8 %i.ez to i32
  %i.fb = sub nsw i32 %i.ex, %i.fa
  %i.fc = tail call i32 @llvm.abs.i32(i32 %i.fb, i1 true)
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = add nsw i64 %i.eu, %i.fd                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !86

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.12.us.i.epil.init = phi i64 [ %.06.us.i, %.preheader.us.i ], [ %i.fe, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod352)
  %i.ff = getelementptr inbounds nuw i8, ptr %.0224.us.i, i64 %indvars.iv.i.epil.init
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !64
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.0215.us.i, i64 %indvars.iv.i.epil.init
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !64
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.fh, %i.fk
  %i.fm = tail call i32 @llvm.abs.i32(i32 %i.fl, i1 true)
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = add nsw i64 %.12.us.i.epil.init, %i.fn
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa350 = phi i64 [ %i.fe, %._crit_edge.us.i.unr-lcssa ], [ %i.fo, %.epil.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.0224.us.i, i64 %i.eh
  %i.fq = getelementptr inbounds i8, ptr %.0215.us.i, i64 %i.ei
  %i.fr = add nuw nsw i32 %.0233.us.i, 1          ; 2 uses
  %exitcond11.not.i = icmp eq i32 %i.fr, %i.eb
  br i1 %exitcond11.not.i, label %.loopexit, label %.preheader.us.i, !llvm.loop !87

.loopexit:                                        ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i, %bb.ao
  %.0.lcssa.i = phi i64 [ 0, %bb.ao ], [ 0, %.preheader.lr.ph.i ], [ %.lcssa350, %._crit_edge.us.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !54 ; 2 uses
  %.not302 = icmp sgt i64 %.0.lcssa.i, %i.ft
  br i1 %.not302, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.split._crit_edge, %.loopexit
  %i.fu = phi i64 [ %i.du, %.split._crit_edge ], [ %i.ft, %.loopexit ]
  %i.fv = phi ptr [ %.pre318, %.split._crit_edge ], [ %i.dx, %.loopexit ] ; 4 uses
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !32 ; 2 uses
  %.val = load ptr, ptr %i.fx, align 8, !tbaa !61
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !62 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 108
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !63 ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.preheader.lr.ph.i266, label %luma_abs_diff.exit280

.preheader.lr.ph.i266:                            ; preds = %bb.ap
  %i.gd = getelementptr i8, ptr %i.fx, i64 64
  %.val261 = load i32, ptr %i.gd, align 8, !tbaa !42
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !42
  %i.gg = icmp sgt i32 %i.fz, 0
  %i.gh = sext i32 %i.gf to i64
  %i.gi = sext i32 %.val261 to i64
  br i1 %i.gg, label %.preheader.us.preheader.i267, label %luma_abs_diff.exit280

.preheader.us.preheader.i267:                     ; preds = %.preheader.lr.ph.i266
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !61
  %wide.trip.count.i268 = zext nneg i32 %i.fz to i64 ; 2 uses
  %xtraiter354 = and i64 %wide.trip.count.i268, 1
  %i.gk = icmp eq i32 %i.fz, 1
  %unroll_iter358 = and i64 %wide.trip.count.i268, 2147483646
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  %lcmp.mod357 = trunc i32 %i.fz to i1
  br label %.preheader.us.i269

.preheader.us.i269:                               ; preds = %._crit_edge.us.i278, %.preheader.us.preheader.i267
  %.06.us.i270 = phi i64 [ %.lcssa, %._crit_edge.us.i278 ], [ 0, %.preheader.us.preheader.i267 ] ; 2 uses
  %.0215.us.i271 = phi ptr [ %i.hq, %._crit_edge.us.i278 ], [ %.val, %.preheader.us.preheader.i267 ] ; 4 uses
  %.0224.us.i272 = phi ptr [ %i.hp, %._crit_edge.us.i278 ], [ %i.gj, %.preheader.us.preheader.i267 ] ; 4 uses
  %.0233.us.i273 = phi i32 [ %i.hr, %._crit_edge.us.i278 ], [ 0, %.preheader.us.preheader.i267 ]
  br i1 %i.gk, label %.epil.preheader353, label %.preheader.us.i269.new

.preheader.us.i269.new:                           ; preds = %.preheader.us.i269, %.preheader.us.i269.new
  %indvars.iv.i274 = phi i64 [ %indvars.iv.next.i276.1, %.preheader.us.i269.new ], [ 0, %.preheader.us.i269 ] ; 4 uses
  %.12.us.i275 = phi i64 [ %i.he, %.preheader.us.i269.new ], [ %.06.us.i270, %.preheader.us.i269 ]
  %niter359 = phi i64 [ %niter359.next.1, %.preheader.us.i269.new ], [ 0, %.preheader.us.i269 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0224.us.i272, i64 %indvars.iv.i274
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !64
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %.0215.us.i271, i64 %indvars.iv.i274
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !64
  %i.gq = zext i8 %i.gp to i32
  %i.gr = sub nsw i32 %i.gn, %i.gq
  %i.gs = tail call i32 @llvm.abs.i32(i32 %i.gr, i1 true)
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = add nsw i64 %.12.us.i275, %i.gt
  %indvars.iv.next.i276 = or disjoint i64 %indvars.iv.i274, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0224.us.i272, i64 %indvars.iv.next.i276
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !64
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %.0215.us.i271, i64 %indvars.iv.next.i276
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !64
  %i.ha = zext i8 %i.gz to i32
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = add nsw i64 %i.gu, %i.hd                ; 3 uses
  %indvars.iv.next.i276.1 = add nuw nsw i64 %indvars.iv.i274, 2 ; 2 uses
  %niter359.next.1 = add i64 %niter359, 2         ; 2 uses
  %niter359.ncmp.1 = icmp eq i64 %niter359.next.1, %unroll_iter358
  br i1 %niter359.ncmp.1, label %._crit_edge.us.i278.unr-lcssa, label %.preheader.us.i269.new, !llvm.loop !86

._crit_edge.us.i278.unr-lcssa:                    ; preds = %.preheader.us.i269.new
  br i1 %lcmp.mod355.not, label %._crit_edge.us.i278, label %.epil.preheader353

.epil.preheader353:                               ; preds = %._crit_edge.us.i278.unr-lcssa, %.preheader.us.i269
  %indvars.iv.i274.epil.init = phi i64 [ 0, %.preheader.us.i269 ], [ %indvars.iv.next.i276.1, %._crit_edge.us.i278.unr-lcssa ] ; 2 uses
  %.12.us.i275.epil.init = phi i64 [ %.06.us.i270, %.preheader.us.i269 ], [ %i.he, %._crit_edge.us.i278.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod357)
  %i.hf = getelementptr inbounds nuw i8, ptr %.0224.us.i272, i64 %indvars.iv.i274.epil.init
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !64
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %.0215.us.i271, i64 %indvars.iv.i274.epil.init
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !64
  %i.hk = zext i8 %i.hj to i32
  %i.hl = sub nsw i32 %i.hh, %i.hk
  %i.hm = tail call i32 @llvm.abs.i32(i32 %i.hl, i1 true)
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = add nsw i64 %.12.us.i275.epil.init, %i.hn
  br label %._crit_edge.us.i278

._crit_edge.us.i278:                              ; preds = %._crit_edge.us.i278.unr-lcssa, %.epil.preheader353
  %.lcssa = phi i64 [ %i.he, %._crit_edge.us.i278.unr-lcssa ], [ %i.ho, %.epil.preheader353 ] ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.0224.us.i272, i64 %i.gh
  %i.hq = getelementptr inbounds i8, ptr %.0215.us.i271, i64 %i.gi
  %i.hr = add nuw nsw i32 %.0233.us.i273, 1       ; 2 uses
  %exitcond11.not.i279 = icmp eq i32 %i.hr, %i.gb
  br i1 %exitcond11.not.i279, label %luma_abs_diff.exit280, label %.preheader.us.i269, !llvm.loop !87

luma_abs_diff.exit280:                            ; preds = %._crit_edge.us.i278, %bb.ap, %.preheader.lr.ph.i266
  %.0.lcssa.i265 = phi i64 [ 0, %bb.ap ], [ 0, %.preheader.lr.ph.i266 ], [ %.lcssa, %._crit_edge.us.i278 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 %.0.lcssa.i265, ptr %i.hs, align 8, !tbaa !99
  %i.ht = icmp sgt i64 %.0.lcssa.i265, %i.fu
  %i.hu = zext i1 %i.ht to i32
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %luma_abs_diff.exit280, %bb.am
  %.1205 = phi i32 [ 1, %.loopexit ], [ %i.hu, %luma_abs_diff.exit280 ], [ 0, %bb.am ] ; 2 uses
  %i.hv = icmp eq i32 %i.dj, 2
  br i1 %i.hv, label %bb.ar, label %.thread291

.thread291:                                       ; preds = %.split, %bb.aq
  %.1205295 = phi i32 [ %.1205, %bb.aq ], [ 1, %.split ] ; 2 uses
  %i.hw = icmp ne i32 %.1205295, 0
  %or.cond7 = select i1 %i.dk, i1 %i.hw, i1 false
  br i1 %or.cond7, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %.thread291, %bb.aq
  %.1205294 = phi i32 [ 1, %.thread291 ], [ %.1205, %bb.aq ] ; 6 uses
  %i.hx = load i32, ptr %i.de, align 8, !tbaa !94
  switch i32 %i.hx, label %bb.ay [
    i32 0, label %bb.as
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
    i32 4, label %bb.aw
    i32 5, label %bb.ax
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hy = icmp eq i32 %.0206, %2
  %i.hz = select i1 %i.hy, i32 1, i32 %2
  %i.ia = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %i.hz, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  %4 = select i1 %.not240, i32 2, i32 0
  %i.ib = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %4, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.au:                                            ; preds = %bb.ar
  %5 = select i1 %.not240, i32 4, i32 3
  %i.ic = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %5, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.av:                                            ; preds = %bb.ar
  %6 = select i1 %.not240, i32 2, i32 0
  %i.id = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %6, ptr noundef %i.b, i32 noundef %.289)
  %7 = select i1 %.not240, i32 4, i32 3
  %i.ie = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %i.id, i32 noundef %7, ptr noundef %i.b, i32 noundef %.289)
  %8 = select i1 %.not240, i32 3, i32 4
  %i.if = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %i.ie, i32 noundef %8, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.aw:                                            ; preds = %bb.ar
  %i.ig = icmp eq i32 %.0206, %2
  %i.ih = select i1 %i.ig, i32 1, i32 %2
  %i.ii = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %i.ih, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.ax:                                            ; preds = %bb.ar
  %9 = select i1 %.not240, i32 4, i32 3
  %i.ij = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %.0206, i32 noundef %9, ptr noundef %i.b, i32 noundef %.289)
  %10 = select i1 %.not240, i32 3, i32 4
  %i.ik = call fastcc i32 @checkmm(ptr noundef %i.e, ptr noundef %i.a, i32 noundef %i.ij, i32 noundef %10, ptr noundef %i.b, i32 noundef %.289)
  br label %bb.az

bb.ay:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef 796) #10
  tail call void @abort() #11
  unreachable

bb.az:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %.thread291
  %.1205293 = phi i32 [ %.1205294, %bb.as ], [ %.1205294, %bb.at ], [ %.1205294, %bb.au ], [ %.1205294, %bb.av ], [ %.1205294, %bb.aw ], [ %.1205294, %bb.ax ], [ %.1205295, %.thread291 ]
  %.1207 = phi i32 [ %i.ia, %bb.as ], [ %i.ib, %bb.at ], [ %i.ic, %bb.au ], [ %i.if, %bb.av ], [ %i.ii, %bb.aw ], [ %i.ik, %bb.ax ], [ %.0206, %.thread291 ] ; 3 uses
  %i.il = sext i32 %.1207 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !42
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !29
  %.not253 = icmp slt i32 %i.in, %i.ip            ; 2 uses
  br i1 %.not253, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iq = load i32, ptr %i.di, align 8, !tbaa !95
  %i.ir = icmp eq i32 %i.iq, 2
  %spec.select260 = select i1 %i.ir, i32 1, i32 %.1207
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2 = phi i32 [ %.1207, %bb.az ], [ %spec.select260, %bb.ba ] ; 4 uses
  %i.is = load i32, ptr %i.as, align 4, !tbaa !26
  %.not254 = icmp eq i32 %i.is, 0
  br i1 %.not254, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !33
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !34
  %i.ix = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !35
  %i.iz = tail call fastcc ptr @create_weave_frame(ptr noundef %i.e, i32 noundef %.2, i32 noundef %.289, ptr noundef %i.iu, ptr noundef %i.iw, ptr noundef %i.iy, i32 noundef 1)
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.ja = sext i32 %.2 to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ja ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !36 ; 2 uses
  %.not255 = icmp eq ptr %i.jc, null
  br i1 %.not255, label %bb.be, label %.thread296

bb.be:                                            ; preds = %bb.bd
  %i.jd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !30
  %i.jf = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !32
  %i.ji = tail call fastcc ptr @create_weave_frame(ptr noundef %i.e, i32 noundef %.2, i32 noundef %.289, ptr noundef %i.je, ptr noundef %i.jf, ptr noundef %i.jh, i32 noundef 0)
  br label %bb.bf

.thread296:                                       ; preds = %bb.bd
  store ptr null, ptr %i.jb, align 8, !tbaa !36
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %.0 = phi ptr [ %i.iz, %bb.bc ], [ %i.ji, %bb.be ] ; 2 uses
  %.not256 = icmp eq ptr %.0, null
  br i1 %.not256, label %.loopexit304, label %bb.bg

bb.bg:                                            ; preds = %.thread296, %bb.bf
  %.0299 = phi ptr [ %i.jc, %.thread296 ], [ %.0, %bb.bf ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0299, i64 276 ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !91 ; 2 uses
  br i1 %.not253, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jl = or i32 %i.jk, 8
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !91
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !100
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val264 = load i64, ptr %i.jq, align 8
  %i.jr = call ptr @av_ts_make_time_string2(ptr noundef nonnull %i.c, i64 noundef %i.jp, i64 %.val264) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 24, ptr noundef nonnull @.str.82, i64 noundef %i.jn, ptr noundef %i.jr) #10
  %.not257 = icmp eq i32 %.289, 0
  %i.js = load i32, ptr %i.jj, align 4, !tbaa !91 ; 2 uses
  br i1 %.not257, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jt = or i32 %i.js, 16
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ju = and i32 %i.js, -17
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.jv = and i32 %i.jk, -9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %bb.bk
  %.sink = phi i32 [ %i.jt, %bb.bi ], [ %i.ju, %bb.bj ], [ %i.jv, %bb.bk ] ; 2 uses
  store i32 %.sink, ptr %i.jj, align 4, !tbaa !91
  %i.jw = load i32, ptr %i.a, align 16, !tbaa !42
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !42
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ke = load i32, ptr %i.kd, align 16, !tbaa !42
  %i.kf = load i32, ptr %i.io, align 8, !tbaa !29
  %i.kg = and i32 %.sink, 8
  %.not258 = icmp eq i32 %i.kg, 0
  %i.kh = select i1 %.not258, ptr @.str.85, ptr @.str.84
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 48, ptr noundef nonnull @.str.83, i32 noundef %.1205293, i32 noundef %i.jw, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef %i.kc, i32 noundef %i.ke, i32 noundef %i.kf, i32 noundef %.2, ptr noundef nonnull %i.kh) #10
  br label %.loopexit304

.loopexit304:                                     ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.bf, %bb.aj, %bb.bl
  %i.ki = phi i1 [ true, %bb.bl ], [ false, %bb.aj ], [ false, %bb.bf ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ]
  %.0203 = phi i32 [ 0, %bb.bl ], [ -12, %bb.aj ], [ -12, %bb.bf ], [ -12, %bb.ag ], [ -12, %bb.ae ], [ -12, %bb.ac ], [ -12, %bb.ab ], [ -12, %bb.aa ]
  %.1 = phi ptr [ %.0299, %bb.bl ], [ null, %bb.aj ], [ null, %bb.bf ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ]
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @av_frame_free(ptr noundef nonnull %i.kj) #10
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @av_frame_free(ptr noundef nonnull %i.kk) #10
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @av_frame_free(ptr noundef nonnull %i.kl) #10
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @av_frame_free(ptr noundef nonnull %i.km) #10
  br i1 %i.ki, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit304
  %i.kn = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.1) #10
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit304, %bb.t, %bb.v, %thread-pre-split283, %thread-pre-split, %bb.bm
  %.0210 = phi i32 [ %i.kn, %bb.bm ], [ 0, %bb.t ], [ 0, %thread-pre-split283 ], [ 0, %thread-pre-split ], [ 0, %bb.v ], [ %.0203, %.loopexit304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0210
}

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_weave_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, -1) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @av_frame_clone(ptr noundef %4) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %.in.in.v = select i1 %.not, i64 32, i64 56
  %.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.in.v
  %.in = load ptr, ptr %.in.in, align 8, !tbaa !101
  %i.e = load ptr, ptr %.in, align 8, !tbaa !39   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103
  %i.j = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) #10 ; 14 uses
  %.not59.not = icmp eq ptr %i.j, null
  br i1 %.not59.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef %4) #10 ; 0 uses
  switch i32 %1, label %bb.i [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %i.l, i32 noundef %6)
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %3, i32 noundef %2, i32 noundef %6)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.m = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %i.m, i32 noundef %6)
end_hunk_1
