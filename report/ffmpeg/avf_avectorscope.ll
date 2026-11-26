Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_avectorscope?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.AVChannelLayout = type { i32, i32, %union.anon.1, ptr }
%union.anon.1 = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"avectorscope\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Convert input audio to vectorscope video output.\00", align 1
@audiovectorscope_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }], align 16
@audiovectorscope_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_avf_avectorscope = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @audiovectorscope_inputs, ptr @audiovectorscope_outputs, ptr @avectorscope_class, i32 4, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 120, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@avectorscope_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @avectorscope_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"set mode\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"lissajous\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"lissajous_xy\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"polar\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"set video rate\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"set video size\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"400x400\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"set red contrast\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"set green contrast\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"set blue contrast\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"set alpha contrast\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"set red fade\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"gf\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"set green fade\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"set blue fade\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"set alpha fade\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"set zoom factor\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"set draw mode\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"draw dots\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"draw lines\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"aaline\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"draw anti-aliased lines\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"set amplitude scale mode\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"lin\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"square root\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"cbrt\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"cube root\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"logarithmic\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"swap x axis with y axis\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"mirror axis\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"no mirror\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"mirror x\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"mirror y\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"mirror both\00", align 1
@avectorscope_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 32, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.5, i32 32, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.8, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.8, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 104, i32 15, { ptr } { ptr @.str.13 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.12, i32 104, i32 15, { ptr } { ptr @.str.13 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 16, i32 12, { ptr } { ptr @.str.17 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.16, i32 16, i32 12, { ptr } { ptr @.str.17 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 44, i32 2, %union.anon.2 { i64 40 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 48, i32 2, %union.anon.2 { i64 160 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 52, i32 2, %union.anon.2 { i64 80 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 56, i32 2, %union.anon.2 { i64 255 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 60, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.29, ptr @.str.30, i32 64, i32 2, %union.anon.2 { i64 10 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 68, i32 2, %union.anon.2 { i64 5 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.34, i32 72, i32 2, %union.anon.2 { i64 5 }, double 0.000000e+00, double 2.550000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.36, i32 80, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr @.str.38, i32 36, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.37 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr @.str.40, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.37 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.42, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.37 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr @.str.44, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.37 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.46, i32 40, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.47, ptr @.str.48, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr @.str.52, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.53, ptr @.str.54, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.45 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.55, ptr @.str.56, i32 88, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.57, ptr @.str.58, i32 92, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.57 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.59, ptr @.str.60, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.57 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.61, ptr @.str.62, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.57 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.63, ptr @.str.64, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.57 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.65, ptr @.str.66, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.57 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.sample_fmts = internal constant [3 x i32] [i32 1, i32 3, i32 -1], align 4
@query_formats.pix_fmts = internal constant [2 x i32] [i32 26, i32 -1], align 4
@query_formats.layouts = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 2, %union.anon.1 { i64 3 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_make_sample_format_list(ptr noundef nonnull @query_formats.sample_fmts) #14
  %i.b = load ptr, ptr %1, align 8, !tbaa !52
  %i.c = tail call i32 @ff_formats_ref(ptr noundef %i.a, ptr noundef %i.b) #14 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @query_formats.layouts) #14 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.pix_fmts) #14
  %i.h = load ptr, ptr %2, align 8, !tbaa !52
  %i.i = tail call i32 @ff_formats_ref(ptr noundef %i.g, ptr noundef %i.h) #14
  %. = tail call i32 @llvm.smin.i32(i32 %i.i, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.c, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #14 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #14
  br label %bb.bs

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.g, i32 noundef %i.o, i32 noundef %i.o, ptr noundef nonnull %i.b) #14 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.bs, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !61   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59   ; 9 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !33   ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 17 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !tbaa !34
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 6 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !62 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 12 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = load i32, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !63
  %.not206.i = icmp eq i32 %i.am, %i.ao
  br i1 %.not206.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 108
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !64
  %.not207.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not207.i, label %.loopexit230.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.aj) #14
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !64
  %i.ax = call ptr @ff_get_video_buffer(ptr noundef %i.w, i32 noundef %i.au, i32 noundef %i.aw) #14 ; 5 uses
  store ptr %i.ax, ptr %i.aj, align 8, !tbaa !38
  %.not208.i = icmp eq ptr %i.ax, null
  br i1 %.not208.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %filter_frame.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 124
  store i32 1, ptr %i.ay, align 4, !tbaa !34
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !34
  %i.az = load i32, ptr %i.av, align 4, !tbaa !64
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit230.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.0182231.i = phi i32 [ %i.bl, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !34
  %i.bf = mul nsw i32 %i.be, %.0182231.i
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = load i32, ptr %i.at, align 8, !tbaa !63
  %i.bj = shl nsw i32 %i.bi, 2
  %i.bk = sext i32 %i.bj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bk, i1 false)
  %i.bl = add nuw nsw i32 %.0182231.i, 1          ; 2 uses
  %i.bm = load i32, ptr %i.av, align 4, !tbaa !64
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %.loopexit230.loopexit.i, !llvm.loop !53

.loopexit230.loopexit.i:                          ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !38
  br label %.loopexit230.i

.loopexit230.i:                                   ; preds = %.loopexit230.loopexit.i, %bb.i, %bb.f
  %i.bo = phi ptr [ %.pre.i, %.loopexit230.loopexit.i ], [ %i.ax, %bb.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = call i64 @av_rescale_q(i64 noundef %i.bq, i64 %i.bt, i64 %i.bu) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
  store i64 1, ptr %i.bx, align 8, !tbaa !66
  %i.by = call i32 @ff_inlink_make_frame_writable(ptr noundef nonnull %i.w, ptr noundef nonnull %i.aj) #14 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit230.i
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %filter_frame.exit

bb.k:                                             ; preds = %.loopexit230.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !64
  %i.cc = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.t) #16
  %..i = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc)
  %i.cd = call i32 @ff_filter_execute(ptr noundef nonnull %i.t, ptr noundef nonnull @fade, ptr noundef null, ptr noundef null, i32 noundef %..i) #14 ; 0 uses
  %i.ce = fcmp nsz olt double %i.ai, 1.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  switch i32 %i.cg, label %.loopexit.i [
    i32 1, label %.preheader.i
    i32 3, label %.preheader228.i
  ]

.preheader228.i:                                  ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph234.preheader.i, label %.loopexit.i

.lr.ph234.preheader.i:                            ; preds = %.preheader228.i
  %i.ck = shl nuw i32 %i.ci, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ck, i32 1) ; 3 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %smax.i, 1
  br i1 %i.cl, label %.lr.ph234.i.epil.preheader, label %.lr.ph234.preheader.i.new

.lr.ph234.preheader.i.new:                        ; preds = %.lr.ph234.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph234.i

.preheader.i:                                     ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !68 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph237.preheader.i, label %.loopexit.i

.lr.ph237.preheader.i:                            ; preds = %.preheader.i
  %i.cp = shl nuw i32 %i.cn, 1
  %smax251.i = call i32 @llvm.smax.i32(i32 %i.cp, i32 1) ; 3 uses
  %wide.trip.count252.i = zext nneg i32 %smax251.i to i64 ; 2 uses
  %xtraiter65 = and i64 %wide.trip.count252.i, 1
  %1 = icmp eq i32 %smax251.i, 1
  br i1 %1, label %.lr.ph237.i.epil.preheader, label %.lr.ph237.preheader.i.new

.lr.ph237.preheader.i.new:                        ; preds = %.lr.ph237.preheader.i
  %unroll_iter69 = and i64 %wide.trip.count252.i, 2147483646
  br label %.lr.ph237.i.a

.lr.ph237.i.a:                                    ; preds = %.lr.ph237.i.a, %.lr.ph237.preheader.i.new
  %indvars.iv248.i.a = phi i64 [ 0, %.lr.ph237.preheader.i.new ], [ %indvars.iv.next249.i.1, %.lr.ph237.i.a ] ; 3 uses
  %.0181235.i = phi float [ 0.000000e+00, %.lr.ph237.preheader.i.new ], [ %..0181.i.1, %.lr.ph237.i.a ] ; 2 uses
  %niter70 = phi i64 [ 0, %.lr.ph237.preheader.i.new ], [ %niter70.next.1, %.lr.ph237.i.a ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i.a
  %2 = load i16, ptr %i.cq, align 2, !tbaa !70
  %3 = sitofp i16 %2 to float
  %4 = fdiv nsz float %3, 3.276700e+04            ; 3 uses
  %5 = fcmp nsz oge float %4, 0.000000e+00
  %6 = fneg nsz float %4
  %7 = select nsz i1 %5, float %4, float %6       ; 2 uses
  %8 = fcmp nsz ogt float %7, %.0181235.i
  %..0181.i = select nsz i1 %8, float %7, float %.0181235.i ; 2 uses
  %9 = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i.a
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !70
  %12 = sitofp i16 %11 to float
  %13 = fdiv nsz float %12, 3.276700e+04          ; 3 uses
  %14 = fcmp nsz oge float %13, 0.000000e+00
  %15 = fneg nsz float %13
  %16 = select nsz i1 %14, float %13, float %15   ; 2 uses
  %17 = fcmp nsz ogt float %16, %..0181.i
  %..0181.i.1 = select nsz i1 %17, float %16, float %..0181.i ; 3 uses
  %indvars.iv.next249.i.1 = add nuw nsw i64 %indvars.iv248.i.a, 2 ; 2 uses
  %niter70.next.1 = add i64 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph237.i.a, !llvm.loop !54

.lr.ph234.i:                                      ; preds = %.lr.ph234.i, %.lr.ph234.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph234.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph234.i ] ; 3 uses
  %.1232.i = phi float [ 0.000000e+00, %.lr.ph234.preheader.i.new ], [ %i.df, %.lr.ph234.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph234.preheader.i.new ], [ %niter.next.1, %.lr.ph234.i ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !72 ; 4 uses
  %i.ct = fcmp nsz oge float %i.cs, 0.000000e+00
  %i.cu = fneg nsz float %i.cs
  %i.cv = call nsz float @llvm.fabs.f32(float %i.cs)
  %i.cw = fcmp nsz ule float %i.cv, %.1232.i
  %.1.mux.i = select i1 %i.ct, float %i.cs, float %i.cu
  %i.cx = select i1 %i.cw, float %.1232.i, float %.1.mux.i ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !72 ; 4 uses
  %i.db = fcmp nsz oge float %i.da, 0.000000e+00
  %i.dc = fneg nsz float %i.da
  %i.dd = call nsz float @llvm.fabs.f32(float %i.da)
  %i.de = fcmp nsz ule float %i.dd, %i.cx
  %.1.mux.i.1 = select i1 %i.db, float %i.da, float %i.dc
  %i.df = select i1 %i.de, float %i.cx, float %.1.mux.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit61.unr-lcssa, label %.lr.ph234.i, !llvm.loop !55

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph237.i.a
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.loopexit.i, label %.lr.ph237.i.epil.preheader

.lr.ph237.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph237.preheader.i
  %indvars.iv248.i.epil.init = phi i64 [ 0, %.lr.ph237.preheader.i ], [ %indvars.iv.next249.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.0181235.i.epil.init = phi float [ 0.000000e+00, %.lr.ph237.preheader.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %smax251.i to i1
  call void @llvm.assume(i1 %lcmp.mod68)
  %18 = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i.epil.init
  %19 = load i16, ptr %18, align 2, !tbaa !70
  %20 = sitofp i16 %19 to float
  %21 = fdiv nsz float %20, 3.276700e+04          ; 3 uses
  %22 = fcmp nsz oge float %21, 0.000000e+00
  %23 = fneg nsz float %21
  %24 = select nsz i1 %22, float %21, float %23   ; 2 uses
  %25 = fcmp nsz ogt float %24, %.0181235.i.epil.init
  %..0181.i.epil = select nsz i1 %25, float %24, float %.0181235.i.epil.init
  br label %.loopexit.i

.loopexit.i.loopexit61.unr-lcssa:                 ; preds = %.lr.ph234.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph234.i.epil.preheader

.lr.ph234.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit61.unr-lcssa, %.lr.ph234.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph234.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit61.unr-lcssa ]
  %.1232.i.epil.init = phi float [ 0.000000e+00, %.lr.ph234.preheader.i ], [ %i.df, %.loopexit.i.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !72 ; 4 uses
  %i.di = fcmp nsz oge float %i.dh, 0.000000e+00
  %i.dj = fneg nsz float %i.dh
  %i.dk = call nsz float @llvm.fabs.f32(float %i.dh)
  %i.dl = fcmp nsz ule float %i.dk, %.1232.i.epil.init
  %.1.mux.i.epil = select i1 %i.di, float %i.dh, float %i.dj
  %i.dm = select i1 %i.dl, float %.1232.i.epil.init, float %.1.mux.i.epil
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph234.i.epil.preheader, %.loopexit.i.loopexit61.unr-lcssa, %.lr.ph237.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %.preheader228.i, %bb.l
  %.2.i = phi nsz float [ 0.000000e+00, %bb.l ], [ %..0181.i.epil, %.lr.ph237.i.epil.preheader ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %.preheader228.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.df, %.loopexit.i.loopexit61.unr-lcssa ], [ %i.dm, %.lr.ph234.i.epil.preheader ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !73
  switch i32 %i.do, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %.loopexit.i
  %i.dp = call nsz float @llvm.sqrt.f32(float %.2.i)
  br label %bb.p

bb.n:                                             ; preds = %.loopexit.i
  %i.dq = call nsz float @cbrtf(float noundef %.2.i) #15
  br label %bb.p

bb.o:                                             ; preds = %.loopexit.i
  %i.dr = fadd nsz float %.2.i, 1.000000e+00
  %i.ds = call nsz float @llvm.log.f32(float %i.dr)
  %i.dt = fdiv nsz float %i.ds, f0x3F317218
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.loopexit.i
  %.3.i = phi nsz float [ %.2.i, %.loopexit.i ], [ %i.dp, %bb.m ], [ %i.dq, %bb.n ], [ %i.dt, %bb.o ] ; 2 uses
  %i.du = fcmp nsz ogt float %.3.i, 0.000000e+00
  %i.dv = fpext nsz float %.3.i to double
  %i.dw = fdiv nsz double 1.000000e+00, %i.dv
  %.0183.i = select nsz i1 %i.du, double %i.dw, double %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.1184.i = phi nsz double [ %.0183.i, %bb.p ], [ %i.ai, %bb.k ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !68
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph242.i, label %._crit_edge.i

.lr.ph242.i:                                      ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 92
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ee = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = sitofp nsz <2 x i32> %i.ee to <2 x double> ; 3 uses
  %i.eg = sub nsw i32 0, %i.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 52 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 5 uses
  %i.eo = insertelement <2 x double> poison, double %.1184.i, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.r

._crit_edge.i.loopexit:                           ; preds = %draw_dot.exit.i
  %i.eq = shufflevector <2 x i32> %i.il, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.q
  %i.er = phi <2 x i32> [ undef, %bb.q ], [ %i.eq, %._crit_edge.i.loopexit ]
  store <2 x i32> %i.er, ptr %i.ad, align 8, !tbaa !34
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  %i.es = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.et = call ptr @av_frame_clone(ptr noundef %i.es) #14 ; 2 uses
  %.not209.i = icmp eq ptr %i.et, null
  br i1 %.not209.i, label %filter_frame.exit, label %bb.bm

bb.r:                                             ; preds = %draw_dot.exit.i, %.lr.ph242.i
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph242.i ], [ %indvars.iv.next255.i, %draw_dot.exit.i ] ; 3 uses
  %i.eu = phi ptr [ %i.r, %.lr.ph242.i ], [ %i.tx, %draw_dot.exit.i ]
  %.0185240.i = phi i32 [ %i.ag, %.lr.ph242.i ], [ %i.uc, %draw_dot.exit.i ] ; 6 uses
  %.0186239.i = phi i32 [ %i.ae, %.lr.ph242.i ], [ %i.ud, %draw_dot.exit.i ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 116
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !67
  switch i32 %i.ew, label %bb.u [
    i32 1, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %.idx266.i = shl nuw nsw i64 %indvars.iv254.i, 2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx266.i
  %i.ey = load <2 x i16>, ptr %i.ex, align 2, !tbaa !70
  %i.ez = sitofp <2 x i16> %i.ey to <2 x float>
  %i.fa = fdiv nsz <2 x float> %i.ez, splat (float 3.276700e+04)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.idx.i = shl nuw nsw i64 %indvars.iv254.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.fc = load <2 x float>, ptr %i.fb, align 4, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.fd = phi <2 x float> [ undef, %bb.r ], [ %i.fa, %bb.s ], [ %i.fc, %bb.t ] ; 9 uses
  %i.fe = load i32, ptr %i.ea, align 8, !tbaa !73
  switch i32 %i.fe, label %bb.y [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.ff = fcmp nsz ogt <2 x float> %i.fd, zeroinitializer
  %i.fg = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fd)
  %i.fh = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fg) ; 2 uses
  %i.fi = fneg nsz <2 x float> %i.fh
  %i.fj = select <2 x i1> %i.ff, <2 x float> %i.fh, <2 x float> %i.fi
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fk = fcmp nsz ogt <2 x float> %i.fd, zeroinitializer
  %i.fl = fcmp nsz oge <2 x float> %i.fd, zeroinitializer
  %i.fm = fneg nsz <2 x float> %i.fd
  %i.fn = select <2 x i1> %i.fl, <2 x float> %i.fd, <2 x float> %i.fm ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0
  %i.fp = call nsz float @cbrtf(float noundef %i.fo) #15
  %i.fq = extractelement <2 x float> %i.fn, i64 1
  %i.fr = call nsz float @cbrtf(float noundef %i.fq) #15
  %i.fs = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fr, i64 1 ; 2 uses
  %i.fu = fneg nsz <2 x float> %i.ft
  %i.fv = select <2 x i1> %i.fk, <2 x float> %i.ft, <2 x float> %i.fu
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.fw = fcmp nsz ogt <2 x float> %i.fd, zeroinitializer
  %i.fx = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fd)
  %i.fy = fadd nsz <2 x float> %i.fx, splat (float 1.000000e+00)
  %i.fz = call nsz <2 x float> @llvm.log.v2f32(<2 x float> %i.fy) ; 2 uses
  %i.ga = fneg nsz <2 x float> %i.fz
  %i.gb = select <2 x i1> %i.fw, <2 x float> %i.fz, <2 x float> %i.ga
  %i.gc = fdiv nsz <2 x float> %i.gb, splat (float f0x3F317218)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.gd = phi <2 x float> [ %i.fd, %bb.u ], [ %i.fj, %bb.v ], [ %i.fv, %bb.w ], [ %i.gc, %bb.x ] ; 2 uses
  %i.ge = load i32, ptr %i.eb, align 4, !tbaa !74
  %i.gf = fneg nsz <2 x float> %i.gd
  %i.gg = insertelement <2 x i32> poison, i32 %i.ge, i64 0
  %i.gh = shufflevector <2 x i32> %i.gg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gi = and <2 x i32> %i.gh, <i32 1, i32 2>
  %i.gj = icmp eq <2 x i32> %i.gi, zeroinitializer
  %i.gk = select <2 x i1> %i.gj, <2 x float> %i.gd, <2 x float> %i.gf ; 3 uses
  %i.gl = load i32, ptr %i.ec, align 8, !tbaa !75
  %.not212.i = icmp eq i32 %i.gl, 0
  %i.gm = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.gn = shufflevector <2 x i1> %i.gm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.go = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = select <2 x i1> %i.gn, <2 x float> %i.gk, <2 x float> %i.go ; 4 uses
  %i.gq = load i32, ptr %i.ed, align 8, !tbaa !47
  switch i32 %i.gq, label %bb.ab [
    i32 0, label %bb.z
    i32 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %shift = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %shift, %i.gp
  %i.gr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gs = fpext nsz float %i.gr to double
  %i.gt = fmul nsz double %.1184.i, %i.gs
  %i.gu = fmul nsz double %i.gt, 5.000000e-01
  %i.gv = call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gk)
  %i.gw = fpext nsz float %i.gv to double
  %i.gx = fmul nsz double %.1184.i, %i.gw
  %i.gy = fmul nsz double %i.gx, 5.000000e-01
  %i.gz = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.gu, i64 1
  %i.ha = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.gy, i64 0
  %i.hb = fsub nsz <2 x double> %i.gz, %i.ha
  %i.hc = fmul nsz <2 x double> %i.hb, %i.ef
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.hd = fpext nsz <2 x float> %i.gp to <2 x double>
  %i.he = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.ep, <2 x double> splat (double 1.000000e+00))
  %i.hf = fmul nsz <2 x double> %i.he, %i.ef
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.hg = fpext nsz <2 x float> %i.gp to <2 x double>
  %i.hh = fmul nsz <2 x double> %i.ep, %i.hg
  %i.hi = fptrunc nsz <2 x double> %i.hh to <2 x float> ; 2 uses
  %i.hj = fpext nsz <2 x float> %i.hi to <2 x double> ; 2 uses
  %i.hk = fmul nsz <2 x double> %i.hj, splat (double -5.000000e-01)
  %i.hl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hj, <2 x double> splat (double 1.000000e+00))
  %i.hm = fptrunc nsz <2 x double> %i.hl to <2 x float>
  %i.hn = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.hm)
  %i.ho = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hp = fmul nsz <2 x float> %i.hn, %i.ho       ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0 ; 2 uses
  %i.hr = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.hs = fadd nsz float %i.hq, %i.hr             ; 2 uses
  %i.ht = fcmp nsz ogt float %i.hs, 0.000000e+00
  %i.hu = select i1 %i.ht, i32 %i.ac, i32 %i.eg
  %i.hv = sitofp nsz i32 %i.hu to float
  %i.hw = fsub nsz float %i.hq, %i.hr
  %i.hx = fmul nsz float %i.hw, %i.hv
  %i.hy = fpext nsz float %i.hx to double
  %i.hz = load i32, ptr %i.eh, align 4, !tbaa !48 ; 2 uses
  %i.ia = sitofp nsz i32 %i.hz to double
  %i.ib = sitofp nsz i32 %i.hz to float
  %i.ic = call nsz float @llvm.fabs.f32(float %i.hs)
  %i.id = fmul nsz float %i.ic, %i.ib
  %i.ie = fpext nsz float %i.id to double
  %i.if = fneg nsz double %i.ie
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.hy, i64 1
  %i.ii = insertelement <2 x double> %i.ef, double %i.ia, i64 0
  %i.ij = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> splat (double f0x3FE6666666666666), <2 x double> %i.ii)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ik = phi <2 x double> [ %i.hc, %bb.z ], [ %i.hf, %bb.aa ], [ %i.ij, %bb.ab ]
  %i.il = fptoui <2 x double> %i.ik to <2 x i32>  ; 11 uses
  %i.im = load i32, ptr %i.ei, align 4, !tbaa !76
  switch i32 %i.im, label %bb.ap [
    i32 0, label %bb.ad
    i32 1, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.in = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !34
  %i.iq = sext i32 %i.ip to i64
  %i.ir = load double, ptr %i.ah, align 8, !tbaa !62
  %i.is = fcmp nsz ogt double %i.ir, 1.000000e+00
  br i1 %i.is, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.it = load i32, ptr %i.eh, align 4, !tbaa !48
  %i.iu = extractelement <2 x i32> %i.il, i64 0
  %.not.i.i = icmp ugt i32 %i.it, %i.iu
  br i1 %.not.i.i, label %bb.af, label %draw_dot.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.iv = load i32, ptr %i.ej, align 8, !tbaa !49
  %i.iw = extractelement <2 x i32> %i.il, i64 1
  %.not57.i.i = icmp ugt i32 %i.iv, %i.iw
  br i1 %.not57.i.i, label %bb.ah, label %draw_dot.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.ix = load <2 x i32>, ptr %i.ej, align 8, !tbaa !34
  %i.iy = add nsw <2 x i32> %i.ix, splat (i32 -1)
  %i.iz = shufflevector <2 x i32> %i.iy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.il, <2 x i32> %i.iz)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jb = phi <2 x i32> [ %i.il, %bb.af ], [ %i.ja, %bb.ag ] ; 2 uses
  %i.jc = load ptr, ptr %i.in, align 8, !tbaa !33
  %i.jd = extractelement <2 x i32> %i.jb, i64 0
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul nsw i64 %i.je, %i.iq
  %i.jg = getelementptr inbounds i8, ptr %i.jc, i64 %i.jf
  %i.jh = extractelement <2 x i32> %i.jb, i64 1
  %i.ji = shl i32 %i.jh, 2
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jj ; 5 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !50
  %i.jm = zext i8 %i.jl to i32
  %i.jn = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.jo = add nsw i32 %i.jn, %i.jm
  %.58.i.i = call i32 @llvm.smin.i32(i32 %i.jo, i32 255)
  %i.jp = trunc i32 %.58.i.i to i8
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !50
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !50
  %i.js = zext i8 %i.jr to i32
  %i.jt = load i32, ptr %i.el, align 8, !tbaa !34
  %i.ju = add nsw i32 %i.jt, %i.js
  %i.jv = call i32 @llvm.smin.i32(i32 %i.ju, i32 255)
  %i.jw = trunc i32 %i.jv to i8
  store i8 %i.jw, ptr %i.jq, align 1, !tbaa !50
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 2 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !50
  %i.jz = zext i8 %i.jy to i32
  %i.ka = load i32, ptr %i.em, align 4, !tbaa !34
  %i.kb = add nsw i32 %i.ka, %i.jz
  %i.kc = call i32 @llvm.smin.i32(i32 %i.kb, i32 255)
  %i.kd = trunc i32 %i.kc to i8
  store i8 %i.kd, ptr %i.jx, align 1, !tbaa !50
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jk, i64 3 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !50
  %i.kg = zext i8 %i.kf to i32
  %i.kh = load i32, ptr %i.en, align 8, !tbaa !34
  %i.ki = add nsw i32 %i.kh, %i.kg
  %i.kj = call i32 @llvm.smin.i32(i32 %i.ki, i32 255)
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %i.ke, align 1, !tbaa !50
  br label %draw_dot.exit.i

bb.ai:                                            ; preds = %bb.ac
  %i.kl = extractelement <2 x i32> %i.il, i64 1   ; 3 uses
  %i.km = sub nsw i32 %.0186239.i, %i.kl
  %i.kn = call i32 @llvm.abs.i32(i32 %i.km, i1 true) ; 4 uses
  %i.ko = icmp sgt i32 %.0186239.i, %i.kl
  %i.kp = select i1 %i.ko, i32 1, i32 -1
  %i.kq = extractelement <2 x i32> %i.il, i64 0   ; 3 uses
  %i.kr = sub nsw i32 %.0185240.i, %i.kq
  %i.ks = call i32 @llvm.abs.i32(i32 %i.kr, i1 true) ; 4 uses
  %i.kt = icmp sgt i32 %.0185240.i, %i.kq
  %i.ku = select i1 %i.kt, i32 1, i32 -1
  %i.kv = icmp samesign ugt i32 %i.kn, %i.ks
  %i.kw = sub nsw i32 0, %i.ks
  %i.kx = select i1 %i.kv, i32 %i.kn, i32 %i.kw
  %i.ky = sdiv i32 %i.kx, 2
  %i.kz = sub nsw i32 0, %i.kn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %.041.i.i = phi i32 [ %i.kq, %bb.ai ], [ %.142.i.i, %bb.ao ] ; 5 uses
  %.039.i.i = phi i32 [ %i.kl, %bb.ai ], [ %.140.i.i, %bb.ao ] ; 5 uses
  %.0.i213.i = phi i32 [ %i.ky, %bb.ai ], [ %.2.i.i, %bb.ao ] ; 3 uses
  %i.la = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !34
  %i.ld = sext i32 %i.lc to i64
  %i.le = load double, ptr %i.ah, align 8, !tbaa !62
  %i.lf = fcmp nsz ogt double %i.le, 1.000000e+00
  %i.lg = load i32, ptr %i.eh, align 4, !tbaa !48 ; 2 uses
  br i1 %i.lf, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp ult i32 %.041.i.i, %i.lg
  br i1 %.not.i.i.i, label %bb.al, label %draw_dot.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.lh = load i32, ptr %i.ej, align 8, !tbaa !49
  %.not57.i.i.i = icmp ult i32 %.039.i.i, %i.lh
  br i1 %.not57.i.i.i, label %bb.an, label %draw_dot.exit.i.i

bb.am:                                            ; preds = %bb.aj
  %i.li = add nsw i32 %i.lg, -1
  %..i.i.i = call i32 @llvm.umin.i32(i32 %.041.i.i, i32 %i.li)
  %i.lj = load i32, ptr %i.ej, align 8, !tbaa !49
  %i.lk = add nsw i32 %i.lj, -1
  %i.ll = call i32 @llvm.umin.i32(i32 %.039.i.i, i32 %i.lk)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.045.i.i.i = phi i32 [ %.041.i.i, %bb.al ], [ %..i.i.i, %bb.am ]
  %.0.i.i.i = phi i32 [ %.039.i.i, %bb.al ], [ %i.ll, %bb.am ]
  %i.lm = load ptr, ptr %i.la, align 8, !tbaa !33
  %i.ln = zext i32 %.045.i.i.i to i64
  %i.lo = mul nsw i64 %i.ln, %i.ld
  %i.lp = getelementptr inbounds i8, ptr %i.lm, i64 %i.lo
  %i.lq = shl i32 %.0.i.i.i, 2
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lr ; 5 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !50
  %i.lu = zext i8 %i.lt to i32
  %i.lv = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.lw = add nsw i32 %i.lv, %i.lu
  %.58.i.i.i = call i32 @llvm.smin.i32(i32 %i.lw, i32 255)
  %i.lx = trunc i32 %.58.i.i.i to i8
  store i8 %i.lx, ptr %i.ls, align 1, !tbaa !50
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !50
  %i.ma = zext i8 %i.lz to i32
  %i.mb = load i32, ptr %i.el, align 8, !tbaa !34
  %i.mc = add nsw i32 %i.mb, %i.ma
  %i.md = call i32 @llvm.smin.i32(i32 %i.mc, i32 255)
  %i.me = trunc i32 %i.md to i8
  store i8 %i.me, ptr %i.ly, align 1, !tbaa !50
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 2 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !50
  %i.mh = zext i8 %i.mg to i32
  %i.mi = load i32, ptr %i.em, align 4, !tbaa !34
  %i.mj = add nsw i32 %i.mi, %i.mh
  %i.mk = call i32 @llvm.smin.i32(i32 %i.mj, i32 255)
  %i.ml = trunc i32 %i.mk to i8
  store i8 %i.ml, ptr %i.mf, align 1, !tbaa !50
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ls, i64 3 ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !50
  %i.mo = zext i8 %i.mn to i32
  %i.mp = load i32, ptr %i.en, align 8, !tbaa !34
  %i.mq = add nsw i32 %i.mp, %i.mo
  %i.mr = call i32 @llvm.smin.i32(i32 %i.mq, i32 255)
  %i.ms = trunc i32 %i.mr to i8
  store i8 %i.ms, ptr %i.mm, align 1, !tbaa !50
  br label %draw_dot.exit.i.i

draw_dot.exit.i.i:                                ; preds = %bb.an, %bb.al, %bb.ak
  %i.mt = icmp eq i32 %.039.i.i, %.0186239.i
  %i.mu = icmp eq i32 %.041.i.i, %.0185240.i
  %or.cond.i.i = and i1 %i.mu, %i.mt
  br i1 %or.cond.i.i, label %draw_dot.exit.i, label %bb.ao

bb.ao:                                            ; preds = %draw_dot.exit.i.i
  %i.mv = icmp sgt i32 %.0.i213.i, %i.kz          ; 2 uses
  %i.mw = select i1 %i.mv, i32 %i.kp, i32 0
  %.140.i.i = add nsw i32 %i.mw, %.039.i.i
  %i.mx = select i1 %i.mv, i32 %i.ks, i32 0
  %.1.i.i = sub i32 %.0.i213.i, %i.mx
  %i.my = icmp slt i32 %.0.i213.i, %i.ks          ; 2 uses
  %i.mz = select i1 %i.my, i32 %i.ku, i32 0
  %.142.i.i = add nsw i32 %i.mz, %.041.i.i
  %i.na = select i1 %i.my, i32 %i.kn, i32 0
  %.2.i.i = add nsw i32 %.1.i.i, %i.na
  br label %bb.aj

bb.ap:                                            ; preds = %bb.ac
  %i.nb = extractelement <2 x i32> %i.il, i64 1   ; 3 uses
  %i.nc = icmp sgt i32 %.0186239.i, %i.nb
  %i.nd = select i1 %i.nc, i32 1, i32 -1          ; 2 uses
  %i.ne = extractelement <2 x i32> %i.il, i64 0   ; 3 uses
  %i.nf = icmp sgt i32 %.0185240.i, %i.ne
  %i.ng = select i1 %i.nf, i32 1, i32 -1          ; 2 uses
  %i.nh = sub nsw i32 %.0186239.i, %i.nb          ; 3 uses
  %i.ni = call i32 @llvm.abs.i32(i32 %i.nh, i1 true) ; 2 uses
  %i.nj = sub nsw i32 %.0185240.i, %i.ne          ; 3 uses
  %i.nk = call i32 @llvm.abs.i32(i32 %i.nj, i1 true) ; 2 uses
  %i.nl = mul i32 %i.nh, %i.nh
  %i.nm = mul i32 %i.nj, %i.nj
  %i.nn = or i32 %i.nm, %i.nl
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.np = add nuw nsw i32 %i.nk, %i.ni
  %i.nq = udiv i32 16777215, %i.np
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.nr = phi i32 [ %i.nq, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  %i.ns = mul nuw nsw i32 %i.nr, %i.ni            ; 5 uses
  %i.nt = sub nsw i32 0, %i.ns
  %i.nu = mul nuw nsw i32 %i.nr, %i.nk            ; 5 uses
  %i.nv = sub nsw i32 %i.ns, %i.nu
  %i.nw = sub nsw i32 %i.nu, %i.ns
  br label %.outer

.outer:                                           ; preds = %draw_dot.exit100.i.i, %bb.ar
  %.076.i.i.ph = phi i32 [ %i.tw, %draw_dot.exit100.i.i ], [ %i.ne, %bb.ar ] ; 9 uses
  %.074.i.i.ph = phi i32 [ %.175.i.i, %draw_dot.exit100.i.i ], [ %i.nb, %bb.ar ]
  %.0.i214.i.ph = phi i32 [ %i.tv, %draw_dot.exit100.i.i ], [ %i.nv, %bb.ar ]
  %i.nx = add nsw i32 %.076.i.i.ph, %i.ng         ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.outer, %bb.be
  %.074.i.i = phi i32 [ %.175.i.i, %bb.be ], [ %.074.i.i.ph, %.outer ] ; 10 uses
  %.0.i214.i = phi i32 [ %.1.i221.i, %bb.be ], [ %.0.i214.i.ph, %.outer ] ; 6 uses
  %i.ny = add i32 %i.nw, %.0.i214.i
  %i.nz = call i32 @llvm.abs.i32(i32 %i.ny, i1 true)
  %i.oa = lshr i32 %i.nz, 16
  %i.ob = sub nsw i32 255, %i.oa                  ; 4 uses
  %i.oc = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !34
  %i.of = sext i32 %i.oe to i64
  %i.og = load double, ptr %i.ah, align 8, !tbaa !62
  %i.oh = fcmp nsz ogt double %i.og, 1.000000e+00
  %i.oi = load i32, ptr %i.eh, align 4, !tbaa !48 ; 2 uses
  br i1 %i.oh, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not.i.i223.i = icmp ult i32 %.076.i.i.ph, %i.oi
  br i1 %.not.i.i223.i, label %bb.au, label %draw_dot.exit.i219.i

bb.au:                                            ; preds = %bb.at
  %i.oj = load i32, ptr %i.ej, align 8, !tbaa !49
  %.not57.i.i224.i = icmp ult i32 %.074.i.i, %i.oj
  br i1 %.not57.i.i224.i, label %bb.aw, label %draw_dot.exit.i219.i

bb.av:                                            ; preds = %bb.as
  %i.ok = add nsw i32 %i.oi, -1
  %..i.i215.i = call i32 @llvm.umin.i32(i32 %.076.i.i.ph, i32 %i.ok)
  %i.ol = load i32, ptr %i.ej, align 8, !tbaa !49
  %i.om = add nsw i32 %i.ol, -1
  %i.on = call i32 @llvm.umin.i32(i32 %.074.i.i, i32 %i.om)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.045.i.i216.i = phi i32 [ %.076.i.i.ph, %bb.au ], [ %..i.i215.i, %bb.av ]
  %.0.i.i217.i = phi i32 [ %.074.i.i, %bb.au ], [ %i.on, %bb.av ]
  %i.oo = load ptr, ptr %i.oc, align 8, !tbaa !33
  %i.op = zext i32 %.045.i.i216.i to i64
  %i.oq = mul nsw i64 %i.op, %i.of
  %i.or = getelementptr inbounds i8, ptr %i.oo, i64 %i.oq
  %i.os = shl i32 %.0.i.i217.i, 2
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ot ; 5 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !50
  %i.ow = zext i8 %i.ov to i32
  %i.ox = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.oy = add nsw i32 %i.ox, %i.ow
  %.58.i.i218.i = call i32 @llvm.smin.i32(i32 %i.oy, i32 range(i32 -32512, 33024) %i.ob)
  %i.oz = trunc i32 %.58.i.i218.i to i8
  store i8 %i.oz, ptr %i.ou, align 1, !tbaa !50
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 1 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !50
  %i.pc = zext i8 %i.pb to i32
  %i.pd = load i32, ptr %i.el, align 8, !tbaa !34
  %i.pe = add nsw i32 %i.pd, %i.pc
  %i.pf = call i32 @llvm.smin.i32(i32 %i.pe, i32 range(i32 -32512, 33024) %i.ob)
  %i.pg = trunc i32 %i.pf to i8
  store i8 %i.pg, ptr %i.pa, align 1, !tbaa !50
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 2 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !50
  %i.pj = zext i8 %i.pi to i32
  %i.pk = load i32, ptr %i.em, align 4, !tbaa !34
  %i.pl = add nsw i32 %i.pk, %i.pj
  %i.pm = call i32 @llvm.smin.i32(i32 %i.pl, i32 range(i32 -32512, 33024) %i.ob)
  %i.pn = trunc i32 %i.pm to i8
  store i8 %i.pn, ptr %i.ph, align 1, !tbaa !50
  %i.po = getelementptr inbounds nuw i8, ptr %i.ou, i64 3 ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !50
  %i.pq = zext i8 %i.pp to i32
  %i.pr = load i32, ptr %i.en, align 8, !tbaa !34
  %i.ps = add nsw i32 %i.pr, %i.pq
  %i.pt = call i32 @llvm.smin.i32(i32 %i.ps, i32 range(i32 -32512, 33024) %i.ob)
  %i.pu = trunc i32 %i.pt to i8
  store i8 %i.pu, ptr %i.po, align 1, !tbaa !50
  br label %draw_dot.exit.i219.i

draw_dot.exit.i219.i:                             ; preds = %bb.aw, %bb.au, %bb.at
  %i.pv = shl nsw i32 %.0.i214.i, 1               ; 2 uses
  %.not.i220.i = icmp slt i32 %i.pv, %i.nt
  br i1 %.not.i220.i, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %draw_dot.exit.i219.i
  %i.pw = icmp eq i32 %.074.i.i, %.0186239.i
  br i1 %i.pw, label %draw_dot.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.px = add nsw i32 %.0.i214.i, %i.nu           ; 2 uses
  %i.py = icmp slt i32 %i.px, 16711680
  br i1 %i.py, label %bb.az, label %draw_dot.exit93.i.i

bb.az:                                            ; preds = %bb.ay
  %i.pz = ashr i32 %i.px, 16
  %i.qa = sub nsw i32 255, %i.pz                  ; 4 uses
  %i.qb = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !34
  %i.qe = sext i32 %i.qd to i64
  %i.qf = load double, ptr %i.ah, align 8, !tbaa !62
  %i.qg = fcmp nsz ogt double %i.qf, 1.000000e+00
  %i.qh = load i32, ptr %i.eh, align 4, !tbaa !48 ; 2 uses
  br i1 %i.qg, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not.i91.i.i = icmp ult i32 %i.nx, %i.qh
  br i1 %.not.i91.i.i, label %bb.bb, label %draw_dot.exit93.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.qi = load i32, ptr %i.ej, align 8, !tbaa !49
  %.not57.i92.i.i = icmp ult i32 %.074.i.i, %i.qi
  br i1 %.not57.i92.i.i, label %bb.bd, label %draw_dot.exit93.i.i

bb.bc:                                            ; preds = %bb.az
  %i.qj = add nsw i32 %i.qh, -1
  %..i87.i.i = call i32 @llvm.umin.i32(i32 %i.nx, i32 %i.qj)
  %i.qk = load i32, ptr %i.ej, align 8, !tbaa !49
  %i.ql = add nsw i32 %i.qk, -1
  %i.qm = call i32 @llvm.umin.i32(i32 %.074.i.i, i32 %i.ql)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i88.i.i = phi i32 [ %i.nx, %bb.bb ], [ %..i87.i.i, %bb.bc ]
  %.0.i89.i.i = phi i32 [ %.074.i.i, %bb.bb ], [ %i.qm, %bb.bc ]
  %i.qn = load ptr, ptr %i.qb, align 8, !tbaa !33
  %i.qo = zext i32 %.045.i88.i.i to i64
  %i.qp = mul nsw i64 %i.qo, %i.qe
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 %i.qp
  %i.qr = shl i32 %.0.i89.i.i, 2
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qs ; 5 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !50
  %i.qv = zext i8 %i.qu to i32
  %i.qw = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.qx = add nsw i32 %i.qw, %i.qv
  %.58.i90.i.i = call i32 @llvm.smin.i32(i32 %i.qx, i32 range(i32 -32512, 33024) %i.qa)
  %i.qy = trunc i32 %.58.i90.i.i to i8
  store i8 %i.qy, ptr %i.qt, align 1, !tbaa !50
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 1 ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !50
  %i.rb = zext i8 %i.ra to i32
  %i.rc = load i32, ptr %i.el, align 8, !tbaa !34
  %i.rd = add nsw i32 %i.rc, %i.rb
  %i.re = call i32 @llvm.smin.i32(i32 %i.rd, i32 range(i32 -32512, 33024) %i.qa)
  %i.rf = trunc i32 %i.re to i8
  store i8 %i.rf, ptr %i.qz, align 1, !tbaa !50
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qt, i64 2 ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !50
  %i.ri = zext i8 %i.rh to i32
  %i.rj = load i32, ptr %i.em, align 4, !tbaa !34
  %i.rk = add nsw i32 %i.rj, %i.ri
  %i.rl = call i32 @llvm.smin.i32(i32 %i.rk, i32 range(i32 -32512, 33024) %i.qa)
  %i.rm = trunc i32 %i.rl to i8
  store i8 %i.rm, ptr %i.rg, align 1, !tbaa !50
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qt, i64 3 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !50
  %i.rp = zext i8 %i.ro to i32
  %i.rq = load i32, ptr %i.en, align 8, !tbaa !34
  %i.rr = add nsw i32 %i.rq, %i.rp
  %i.rs = call i32 @llvm.smin.i32(i32 %i.rr, i32 range(i32 -32512, 33024) %i.qa)
  %i.rt = trunc i32 %i.rs to i8
  store i8 %i.rt, ptr %i.rn, align 1, !tbaa !50
  br label %draw_dot.exit93.i.i

draw_dot.exit93.i.i:                              ; preds = %bb.bd, %bb.bb, %bb.ba, %bb.ay
  %i.ru = sub nsw i32 %.0.i214.i, %i.nu
  %i.rv = add nsw i32 %.074.i.i, %i.nd
  br label %bb.be

bb.be:                                            ; preds = %draw_dot.exit93.i.i, %draw_dot.exit.i219.i
  %.175.i.i = phi i32 [ %i.rv, %draw_dot.exit93.i.i ], [ %.074.i.i, %draw_dot.exit.i219.i ] ; 2 uses
  %.1.i221.i = phi i32 [ %i.ru, %draw_dot.exit93.i.i ], [ %.0.i214.i, %draw_dot.exit.i219.i ] ; 2 uses
  %.not86.i.i = icmp sgt i32 %i.pv, %i.nu
  br i1 %.not86.i.i, label %bb.as, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rw = icmp eq i32 %.076.i.i.ph, %.0185240.i
  br i1 %i.rw, label %draw_dot.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rx = sub nsw i32 %i.ns, %.0.i214.i           ; 2 uses
  %i.ry = icmp slt i32 %i.rx, 16711680
  br i1 %i.ry, label %bb.bh, label %draw_dot.exit100.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.rz = add nsw i32 %.074.i.i, %i.nd            ; 3 uses
  %i.sa = ashr i32 %i.rx, 16
  %i.sb = sub nsw i32 255, %i.sa                  ; 4 uses
  %i.sc = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !34
  %i.sf = sext i32 %i.se to i64
  %i.sg = load double, ptr %i.ah, align 8, !tbaa !62
  %i.sh = fcmp nsz ogt double %i.sg, 1.000000e+00
  %i.si = load i32, ptr %i.eh, align 4, !tbaa !48 ; 2 uses
  br i1 %i.sh, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %.not.i98.i.i = icmp ult i32 %.076.i.i.ph, %i.si
  br i1 %.not.i98.i.i, label %bb.bj, label %draw_dot.exit100.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.sj = load i32, ptr %i.ej, align 8, !tbaa !49
  %.not57.i99.i.i = icmp ult i32 %i.rz, %i.sj
  br i1 %.not57.i99.i.i, label %bb.bl, label %draw_dot.exit100.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.sk = add nsw i32 %i.si, -1
  %..i94.i.i = call i32 @llvm.umin.i32(i32 %.076.i.i.ph, i32 %i.sk)
  %i.sl = load i32, ptr %i.ej, align 8, !tbaa !49
  %i.sm = add nsw i32 %i.sl, -1
  %i.sn = call i32 @llvm.umin.i32(i32 %i.rz, i32 %i.sm)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.045.i95.i.i = phi i32 [ %.076.i.i.ph, %bb.bj ], [ %..i94.i.i, %bb.bk ]
  %.0.i96.i.i = phi i32 [ %i.rz, %bb.bj ], [ %i.sn, %bb.bk ]
  %i.so = load ptr, ptr %i.sc, align 8, !tbaa !33
  %i.sp = zext i32 %.045.i95.i.i to i64
  %i.sq = mul nsw i64 %i.sp, %i.sf
  %i.sr = getelementptr inbounds i8, ptr %i.so, i64 %i.sq
  %i.ss = shl i32 %.0.i96.i.i, 2
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.st ; 5 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !50
  %i.sw = zext i8 %i.sv to i32
  %i.sx = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.sy = add nsw i32 %i.sx, %i.sw
  %.58.i97.i.i = call i32 @llvm.smin.i32(i32 %i.sy, i32 range(i32 -32512, 33024) %i.sb)
  %i.sz = trunc i32 %.58.i97.i.i to i8
  store i8 %i.sz, ptr %i.su, align 1, !tbaa !50
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 1 ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !50
  %i.tc = zext i8 %i.tb to i32
  %i.td = load i32, ptr %i.el, align 8, !tbaa !34
  %i.te = add nsw i32 %i.td, %i.tc
  %i.tf = call i32 @llvm.smin.i32(i32 %i.te, i32 range(i32 -32512, 33024) %i.sb)
  %i.tg = trunc i32 %i.tf to i8
  store i8 %i.tg, ptr %i.ta, align 1, !tbaa !50
  %i.th = getelementptr inbounds nuw i8, ptr %i.su, i64 2 ; 2 uses
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !50
  %i.tj = zext i8 %i.ti to i32
  %i.tk = load i32, ptr %i.em, align 4, !tbaa !34
  %i.tl = add nsw i32 %i.tk, %i.tj
  %i.tm = call i32 @llvm.smin.i32(i32 %i.tl, i32 range(i32 -32512, 33024) %i.sb)
  %i.tn = trunc i32 %i.tm to i8
  store i8 %i.tn, ptr %i.th, align 1, !tbaa !50
  %i.to = getelementptr inbounds nuw i8, ptr %i.su, i64 3 ; 2 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !50
  %i.tq = zext i8 %i.tp to i32
  %i.tr = load i32, ptr %i.en, align 8, !tbaa !34
  %i.ts = add nsw i32 %i.tr, %i.tq
  %i.tt = call i32 @llvm.smin.i32(i32 %i.ts, i32 range(i32 -32512, 33024) %i.sb)
  %i.tu = trunc i32 %i.tt to i8
  store i8 %i.tu, ptr %i.to, align 1, !tbaa !50
  br label %draw_dot.exit100.i.i

draw_dot.exit100.i.i:                             ; preds = %bb.bl, %bb.bj, %bb.bi, %bb.bg
  %i.tv = add nsw i32 %.1.i221.i, %i.ns
  %i.tw = add nsw i32 %.076.i.i.ph, %i.ng
  br label %.outer

draw_dot.exit.i:                                  ; preds = %draw_dot.exit.i.i, %bb.ax, %bb.bf, %bb.ah, %bb.af, %bb.ae
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %i.tx = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 112
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !68
  %i.ua = sext i32 %i.tz to i64
  %i.ub = icmp slt i64 %indvars.iv.next255.i, %i.ua
  %i.uc = extractelement <2 x i32> %i.il, i64 0
  %i.ud = extractelement <2 x i32> %i.il, i64 1
  br i1 %i.ub, label %bb.r, label %._crit_edge.i.loopexit, !llvm.loop !56

bb.bm:                                            ; preds = %._crit_edge.i
  %i.ue = call i32 @ff_filter_frame(ptr noundef nonnull %i.w, ptr noundef nonnull %i.et) #14
  br label %filter_frame.exit

filter_frame.exit:                                ; preds = %bb.h, %bb.j, %._crit_edge.i, %bb.bm
  %.0.i = phi i32 [ %i.by, %bb.j ], [ %i.ue, %bb.bm ], [ -12, %bb.h ], [ -12, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bs

bb.bn:                                            ; preds = %bb.c
  %i.uf = call i32 @ff_inlink_queued_samples(ptr noundef %i.g) #14
  %i.ug = load i32, ptr %i.n, align 8, !tbaa !24
  %.not30 = icmp slt i32 %i.uf, %i.ug
  br i1 %.not30, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.uh = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #14
  %.not31 = icmp eq i32 %i.uh, 0
  br i1 %.not31, label %.critedge34, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ui = load i32, ptr %i.c, align 4, !tbaa !34
  %i.uj = load i64, ptr %i.d, align 8, !tbaa !77
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef %i.ui, i64 noundef %i.uj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.bs

.critedge34:                                      ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.uk = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #14
  %.not32 = icmp eq i32 %i.uk, 0
  br i1 %.not32, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.critedge34
  call void @ff_inlink_request_frame(ptr noundef %i.g) #14
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.b, %.critedge34, %.critedge, %bb.br, %bb.bo, %filter_frame.exit
  %.2 = phi i32 [ 0, %bb.b ], [ %.0.i, %filter_frame.exit ], [ 0, %bb.bo ], [ 0, %bb.br ], [ %i.p, %.critedge ], [ 0, %bb.bq ], [ -1497649742, %.critedge34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = sext i32 %i.j to i64
  %i.l = load i32, ptr %i.h, align 8, !tbaa !80
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i64 @av_rescale(i64 noundef %i.g, i64 noundef %i.k, i64 noundef %i.m) #15
  %spec.select9 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 1)
  %spec.select = trunc i64 %spec.select9 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %spec.select, ptr %i.o, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.g = load <2 x i32>, ptr %i.d, align 8, !tbaa !34
  store <2 x i32> %i.g, ptr %i.e, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.h, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 32)
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.l, align 8, !tbaa !34
  %i.m = load i32, ptr %i.d, align 8, !tbaa !49
  %i.n = sdiv i32 %i.m, 2                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %i.n, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq i32 %i.r, 2
  %i.t = load i32, ptr %i.f, align 4, !tbaa !48   ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.t, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = sdiv i32 %i.t, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.u, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.w, ptr %i.x, align 4, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 %i.w, ptr %i.y, align 4, !tbaa !37
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #2

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #2

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare i32 @ff_inlink_make_frame_writable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fade(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 5 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  switch i32 %i.u, label %.thread [
    i32 255, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  %i.x = icmp eq i32 %i.w, 255
  br i1 %i.x, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = icmp eq i32 %i.z, 255
  br i1 %i.aa, label %.preheader101, label %.thread

.preheader101:                                    ; preds = %bb.c
  %i.ab = icmp slt i32 %i.n, %i.s
  br i1 %i.ab, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader101
  %sext = shl i64 %i.m, 32
  %i.ac = ashr exact i64 %sext, 32                ; 4 uses
  %i.ad = sext i32 %i.f to i64                    ; 3 uses
  %sext122 = shl i64 %i.r, 32
  %wide.trip.count = ashr exact i64 %sext122, 32  ; 2 uses
  %i.ae = sub i64 %i.r, %i.m
  %.neg = add nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ah = mul nsw i64 %i.ac, %i.ad
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !44
  %i.al = shl nsw i32 %i.ak, 2
  %i.am = sext i32 %i.al to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.am, i1 false)
  %indvars.iv.next.prol = add nsw i64 %i.ac, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.an, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = mul nsw i64 %indvars.iv, %i.ad
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !44
  %i.au = shl nsw i32 %i.at, 2
  %i.av = sext i32 %i.au to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 0, i64 %i.av, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = mul nsw i64 %indvars.iv.next, %i.ad
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.bc = shl nsw i32 %i.bb, 2
  %i.bd = sext i32 %i.bc to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.bd, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !83

bb.d:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !34
  %.not87 = icmp eq i32 %i.bf, 0
  br i1 %.not87, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !34
  %.not88 = icmp ne i32 %i.bh, 0
  %i.bi = icmp slt i32 %i.n, %i.s
  %or.cond = select i1 %.not88, i1 %i.bi, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.old = icmp slt i32 %i.n, %i.s
  br i1 %.old, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e, %.thread
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bk = mul nsw i32 %i.f, %i.n
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.br = sext i32 %i.f to i64
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !49
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bs = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.bu, %._crit_edge ] ; 2 uses
  %.075107 = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.bw, %._crit_edge ]
  %.076106 = phi ptr [ %i.bm, %.preheader.lr.ph ], [ %i.bv, %._crit_edge ] ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph105, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.bu = phi i32 [ %i.bs, %.preheader ], [ %i.cr, %bb.m ]
  %i.bv = getelementptr inbounds i8, ptr %.076106, i64 %i.br
  %i.bw = add nsw i32 %.075107, 1                 ; 2 uses
  %exitcond113.not = icmp eq i32 %i.bw, %i.s
  br i1 %exitcond113.not, label %.loopexit, label %.preheader, !llvm.loop !84

.lr.ph105:                                        ; preds = %.preheader, %bb.m
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.076106, i64 %indvars.iv110 ; 5 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50  ; 2 uses
  %.not89 = icmp eq i8 %i.by, 0
  br i1 %.not89, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph105
  %i.bz = zext i8 %i.by to i32
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !34
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %spec.select97 = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %spec.select = trunc i32 %spec.select97 to i8
  store i8 %spec.select, ptr %i.bx, align 1, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph105
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !50  ; 2 uses
  %.not90 = icmp eq i8 %i.cd, 0
  br i1 %.not90, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i32, ptr %i.bo, align 8, !tbaa !34
  %i.cg = sub nsw i32 %i.ce, %i.cf
  %spec.select9398 = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %spec.select93 = trunc i32 %spec.select9398 to i8
  store i8 %spec.select93, ptr %i.cc, align 1, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50  ; 2 uses
  %.not91 = icmp eq i8 %i.ci, 0
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.cl = sub nsw i32 %i.cj, %i.ck
  %spec.select9499 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %spec.select94 = trunc i32 %spec.select9499 to i8
  store i8 %spec.select94, ptr %i.ch, align 1, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 3 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !50  ; 2 uses
  %.not92 = icmp eq i8 %i.cn, 0
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !34
  %i.cq = sub nsw i32 %i.co, %i.cp
  %spec.select95100 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %spec.select95 = trunc i32 %spec.select95100 to i8
  store i8 %spec.select95, ptr %i.cm, align 1, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %i.cr = load i32, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.cs = shl nsw i32 %i.cr, 2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next111, %i.ct
  br i1 %i.cu, label %.lr.ph105, label %._crit_edge, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %._crit_edge, %.preheader101, %.thread, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"double", !5, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AudioVectorScopeContext", !10, i64 0, !20, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !5, i64 44, !5, i64 60, !21, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !22, i64 104, !6, i64 112}
!24 = !{!23, !6, i64 112}
!25 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!26 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!27 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!28 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!29 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!30 = !{!"AVFilterFormatsConfig", !28, i64 0, !28, i64 8, !29, i64 16, !28, i64 24, !28, i64 32, !28, i64 40}
!31 = !{!"AVFilterLink", !25, i64 0, !13, i64 8, !25, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !26, i64 72, !22, i64 96, !27, i64 104, !6, i64 112, !6, i64 116, !30, i64 120, !30, i64 168}
!32 = !{!31, !25, i64 16}
!33 = !{!12, !12, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!23, !6, i64 24}
!36 = !{!23, !6, i64 96}
!37 = !{!23, !6, i64 100}
!38 = !{!23, !20, i64 8}
!39 = !{!"p2 omnipotent char", !14, i64 0}
!40 = !{!"long", !5, i64 0}
!41 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!42 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!43 = !{!"AVFrame", !5, i64 0, !5, i64 64, !39, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !40, i64 136, !40, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !41, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !40, i64 304, !42, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !9, i64 376, !26, i64 384, !40, i64 408, !6, i64 416}
!44 = !{!43, !6, i64 104}
!45 = !{!43, !6, i64 108}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!23, !6, i64 32}
!48 = !{!23, !6, i64 20}
!49 = !{!23, !6, i64 16}
!50 = !{!5, !5, i64 0}
!51 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!18, !15, i64 32}
!58 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!18, !15, i64 56}
!61 = !{!20, !20, i64 0}
!62 = !{!23, !21, i64 80}
!63 = !{!31, !6, i64 40}
!64 = !{!31, !6, i64 44}
!65 = !{!43, !40, i64 136}
!66 = !{!43, !40, i64 408}
!67 = !{!43, !6, i64 116}
!68 = !{!43, !6, i64 112}
!69 = !{!"short", !5, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"float", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!23, !6, i64 40}
!74 = !{!23, !6, i64 92}
!75 = !{!23, !6, i64 88}
!76 = !{!23, !6, i64 36}
!77 = !{!40, !40, i64 0}
!78 = !{!31, !6, i64 64}
!79 = !{!23, !6, i64 108}
!80 = !{!23, !6, i64 104}
!81 = !{!31, !25, i64 0}
!82 = !{!23, !6, i64 28}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
end_hunk_0
