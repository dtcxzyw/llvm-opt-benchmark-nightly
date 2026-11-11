Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h265_metadata?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVBitStreamFilter = type { ptr, ptr, ptr }
%union.anon = type { i64 }
%struct.AVRational = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"hevc_metadata\00", align 1
@h265_metadata_codec_ids = internal constant [2 x i32] [i32 172, i32 0], align 4
@ff_hevc_metadata_bsf = local_unnamed_addr constant { %struct.AVBitStreamFilter, i32, [4 x i8], ptr, ptr, ptr, ptr } { %struct.AVBitStreamFilter { ptr @.str, ptr @h265_metadata_codec_ids, ptr @h265_metadata_class }, i32 176, [4 x i8] zeroinitializer, ptr @h265_metadata_init, ptr @ff_cbs_bsf_generic_filter, ptr @ff_cbs_bsf_generic_close, ptr null }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"h265_metadata_bsf\00", align 1
@h265_metadata_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.1, ptr @av_default_item_name, ptr @h265_metadata_options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Access Unit Delimiter NAL units\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"sample_aspect_ratio\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Set sample aspect ratio (table E-1)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"video_format\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Set video format (table E-2)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"video_full_range_flag\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Set video full range flag\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"colour_primaries\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Set colour primaries (table E-3)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"transfer_characteristics\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Set transfer characteristics (table E-4)\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"matrix_coefficients\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Set matrix coefficients (table E-5)\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"chroma_sample_loc_type\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Set chroma sample location type (figure E-1)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"tick_rate\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"Set VPS and VUI tick rate (time_scale / num_units_in_tick)\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"num_ticks_poc_diff_one\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Set VPS and VUI number of ticks per POC increment\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"crop_left\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Set left border crop offset\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"crop_right\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Set right border crop offset\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"crop_top\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Set top border crop offset\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"crop_bottom\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Set bottom border crop offset\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Set width after crop\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Set height after crop\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Set level (tables A.6 and A.7)\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"Attempt to guess level from stream properties\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"6.1\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"6.2\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"8.5\00", align 1
@h265_metadata_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.3, ptr @.str.4, i32 84, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr null, i32 0, i32 11, %union.anon zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr null, i32 0, i32 11, %union.anon { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr null, i32 0, i32 11, %union.anon { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.3 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 88, i32 7, { double } zeroinitializer, double 0.000000e+00, double 6.553500e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 96, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 7.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 100, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 104, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 108, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 112, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 116, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 5.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 120, i32 7, { double } zeroinitializer, double 0.000000e+00, double f0x41EFFFFFFFE00000, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 132, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 136, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 140, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.31, i32 144, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.32, ptr @.str.33, i32 148, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.34, ptr @.str.35, i32 152, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.36, ptr @.str.37, i32 156, i32 2, %union.anon { i64 -1 }, double -1.000000e+00, double 1.688800e+04, i32 272, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 160, i32 2, %union.anon { i64 -2 }, double -2.000000e+00, double 2.550000e+02, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.40, ptr @.str.41, i32 0, i32 11, %union.anon { i64 -1 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr null, i32 0, i32 11, %union.anon { i64 30 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr null, i32 0, i32 11, %union.anon { i64 60 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.44, ptr null, i32 0, i32 11, %union.anon { i64 63 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr null, i32 0, i32 11, %union.anon { i64 90 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr null, i32 0, i32 11, %union.anon { i64 93 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.47, ptr null, i32 0, i32 11, %union.anon { i64 120 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr null, i32 0, i32 11, %union.anon { i64 123 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr null, i32 0, i32 11, %union.anon { i64 150 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.50, ptr null, i32 0, i32 11, %union.anon { i64 153 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr null, i32 0, i32 11, %union.anon { i64 156 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.52, ptr null, i32 0, i32 11, %union.anon { i64 180 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.53, ptr null, i32 0, i32 11, %union.anon { i64 183 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.54, ptr null, i32 0, i32 11, %union.anon { i64 186 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.55, ptr null, i32 0, i32 11, %union.anon { i64 255 }, double 0.000000e+00, double 0.000000e+00, i32 272, [4 x i8] zeroinitializer, ptr @.str.38 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.57 = private unnamed_addr constant [12 x i8] c"access unit\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"NAL unit\00", align 1
@h265_metadata_type = internal constant { i32, [4 x i8], ptr, ptr, ptr } { i32 172, [4 x i8] zeroinitializer, ptr @.str.57, ptr @.str.58, ptr @h265_metadata_update_fragment }, align 8
@.str.60 = private unnamed_addr constant [23 x i8] c"Failed to insert AUD.\0A\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Stream appears to conform to level %s.\0A\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"Unable to determine level of stream: using level 8.5.\0A\00", align 1
@ff_h2645_pixel_aspect = external local_unnamed_addr constant [17 x %struct.AVRational], align 16
@.str.63 = private unnamed_addr constant [54 x i8] c"Invalid value for crop_%s: must be a multiple of %d.\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.68 = private unnamed_addr constant [59 x i8] c"The width option value %d is larger than picture width %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [91 x i8] c"Invalid value for crop_left %d, crop_right %d, width after crop %d, with picture width %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"The height option value %d is larger than picture height %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [93 x i8] c"Invalid value for crop_top %d, crop_bottom %d, height after crop %d, with picture height %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @h265_metadata_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ff_cbs_bsf_generic_init(ptr noundef %0, ptr noundef nonnull @h265_metadata_type) #5
  ret i32 %i.a
}

declare i32 @ff_cbs_bsf_generic_filter(ptr noundef, ptr noundef) #1

declare void @ff_cbs_bsf_generic_close(ptr noundef) #1

declare ptr @av_default_item_name(ptr noundef) #1

declare i32 @ff_cbs_bsf_generic_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @h265_metadata_update_fragment(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27
  %i.n = icmp eq i32 %i.m, 35
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  tail call void @ff_cbs_delete_unit(ptr noundef nonnull %2, i32 noundef 0) #5
  br label %.critedge

bb.e:                                             ; preds = %bb.b, %bb.a
  %.not76 = icmp eq ptr %1, null
  br i1 %.not76, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.v = icmp sgt i32 %i.j, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.065157 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.067156 = phi i32 [ 8, %.lr.ph ], [ %.269, %bb.k ] ; 2 uses
  %.070155 = phi i32 [ 0, %.lr.ph ], [ %.272, %bb.k ] ; 4 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 4 uses
  %.not77 = icmp eq ptr %i.aa, null
  br i1 %.not77, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !36
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.067156, i32 %i.ae) ; 2 uses
  %i.af = load i32, ptr %i.y, align 8, !tbaa !27
  %i.ag = icmp ult i32 %i.af, 32
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !42  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  %spec.store.select = select i1 %i.al, i32 2, i32 %.070155
  %i.am = icmp eq i8 %i.ak, 1
  %3 = icmp slt i32 %.070155, 1
  %or.cond3 = select i1 %i.am, i1 %3, i1 false
  %spec.store.select4 = select i1 %or.cond3, i32 1, i32 %spec.store.select
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.272 = phi i32 [ %.070155, %bb.h ], [ %spec.store.select4, %bb.j ], [ %.070155, %bb.i ] ; 2 uses
  %.269 = phi i32 [ %.067156, %bb.h ], [ %spec.select, %bb.j ], [ %spec.select, %bb.i ] ; 2 uses
  %.2 = phi i8 [ %.065157, %bb.h ], [ %i.ai, %bb.j ], [ %.065157, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.an = trunc nsw i32 %.269 to i8
  %i.ao = add nsw i8 %i.an, 1
  %i.ap = trunc nuw nsw i32 %.272 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.070.lcssa = phi i8 [ 0, %bb.g ], [ %i.ap, %._crit_edge.loopexit ]
  %.067.lcssa = phi i8 [ 9, %bb.g ], [ %i.ao, %._crit_edge.loopexit ]
  %.065.lcssa = phi i8 [ 0, %bb.g ], [ %.2, %._crit_edge.loopexit ]
  store i8 35, ptr %i.u, align 4, !tbaa !44
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  store i8 %.065.lcssa, ptr %.sroa.2.0..sroa_idx, align 1, !tbaa !44
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 82
  store i8 %.067.lcssa, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 83
  store i8 %.070.lcssa, ptr %i.aq, align 1, !tbaa !45
  %i.ar = tail call i32 @ff_cbs_insert_unit_content(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 35, ptr noundef nonnull %i.u, ptr noundef null) #5 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %.critedge, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.60) #5
  br label %h265_metadata_update_sps.exit.thread

.critedge:                                        ; preds = %._crit_edge, %bb.e, %bb.f, %bb.c, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.au = load i32, ptr %i.at, align 8, !tbaa !46
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.m, label %h265_metadata_guess_level.exit

bb.m:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %.not79 = icmp eq i32 %i.ax, 0
  br i1 %.not79, label %bb.n, label %h265_metadata_guess_level.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.az = load i32, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %.04474.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.u ] ; 3 uses
  %.04573.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.u ] ; 5 uses
  %.04772.i = phi i32 [ 0, %.lr.ph.i ], [ %.249.i, %bb.u ] ; 5 uses
  %.05071.i = phi i32 [ 0, %.lr.ph.i ], [ %.151.i, %bb.u ] ; 5 uses
  %.05270.i = phi i32 [ 0, %.lr.ph.i ], [ %.153.i, %bb.u ] ; 5 uses
  %.05569.i = phi ptr [ null, %.lr.ph.i ], [ %.3.i, %bb.u ] ; 5 uses
  %.05868.i = phi ptr [ null, %.lr.ph.i ], [ %.159.i, %bb.u ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %indvars.iv.i ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  switch i32 %i.be, label %bb.u [
    i32 32, label %bb.p
    i32 33, label %bb.r
    i32 34, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 432
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !44
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 65012
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !52
  %.not67.i = icmp eq i16 %i.bn, 0
  br i1 %.not67.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 68088
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 452
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !44
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 434
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !58
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 436
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !59
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 11004
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !60
  %.not66.i = icmp eq i8 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 11008
  %spec.select.i = select i1 %.not66.i, ptr %.05569.i, ptr %i.cf
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 23
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62
  %.not65.i = icmp eq i8 %i.cj, 0
  br i1 %.not65.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !63
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 26
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !64
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.159.i = phi ptr [ %.05868.i, %bb.o ], [ %i.bs, %bb.r ], [ %i.bh, %bb.p ], [ %i.bh, %bb.q ], [ %.05868.i, %bb.t ], [ %.05868.i, %bb.s ] ; 5 uses
  %.3.i = phi ptr [ %.05569.i, %bb.o ], [ %spec.select.i, %bb.r ], [ %.05569.i, %bb.p ], [ %i.bp, %bb.q ], [ %.05569.i, %bb.t ], [ %.05569.i, %bb.s ] ; 8 uses
  %.153.i = phi i32 [ %.05270.i, %bb.o ], [ %i.bz, %bb.r ], [ %.05270.i, %bb.p ], [ %.05270.i, %bb.q ], [ %.05270.i, %bb.t ], [ %.05270.i, %bb.s ] ; 5 uses
  %.151.i = phi i32 [ %.05071.i, %bb.o ], [ %i.cc, %bb.r ], [ %.05071.i, %bb.p ], [ %.05071.i, %bb.q ], [ %.05071.i, %bb.t ], [ %.05071.i, %bb.s ] ; 5 uses
  %.249.i = phi i32 [ %.04772.i, %bb.o ], [ %.04772.i, %bb.r ], [ %.04772.i, %bb.p ], [ %.04772.i, %bb.q ], [ %i.cn, %bb.t ], [ %.04772.i, %bb.s ] ; 5 uses
  %.2.i = phi i32 [ %.04573.i, %bb.o ], [ %.04573.i, %bb.r ], [ %.04573.i, %bb.p ], [ %.04573.i, %bb.q ], [ %i.cr, %bb.t ], [ %.04573.i, %bb.s ] ; 5 uses
  %.1.i = phi i32 [ %.04474.i, %bb.o ], [ %i.bw, %bb.r ], [ %i.bl, %bb.p ], [ %i.bl, %bb.q ], [ %.04474.i, %bb.t ], [ %.04474.i, %bb.s ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.u
  %.not.i = icmp eq ptr %.3.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.cs = load i8, ptr %.3.i, align 4, !tbaa !65
  %.not62.i = icmp eq i8 %i.cs, 0
  br i1 %.not62.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %.3.i, i64 56
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !66
  %i.cv = add i32 %i.cu, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.3.i, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !67
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 6
  %i.db = shl i64 %i.cw, %i.da
  br label %._crit_edge.thread.i

bb.x:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !68
  %.not63.i = icmp eq i8 %i.dd, 0
  br i1 %.not63.i, label %._crit_edge.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %.3.i, i64 3864
  %i.df = load i32, ptr %i.de, align 4, !tbaa !66
  %i.dg = add i32 %i.df, 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.3.i, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !67
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 6
  %i.dm = shl i64 %i.dh, %i.dl
  %i.dn = mul nsw i64 %i.dm, 11
  %i.do = sdiv i64 %i.dn, 10
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.y, %bb.x, %bb.w, %._crit_edge.i, %bb.n
  %.044.lcssa97.i = phi i32 [ %.1.i, %bb.w ], [ %.1.i, %bb.y ], [ %.1.i, %bb.x ], [ %.1.i, %._crit_edge.i ], [ 0, %bb.n ]
  %.045.lcssa96.i = phi i32 [ %.2.i, %bb.w ], [ %.2.i, %bb.y ], [ %.2.i, %bb.x ], [ %.2.i, %._crit_edge.i ], [ 0, %bb.n ]
  %.047.lcssa95.i = phi i32 [ %.249.i, %bb.w ], [ %.249.i, %bb.y ], [ %.249.i, %bb.x ], [ %.249.i, %._crit_edge.i ], [ 0, %bb.n ]
  %.050.lcssa94.i = phi i32 [ %.151.i, %bb.w ], [ %.151.i, %bb.y ], [ %.151.i, %bb.x ], [ %.151.i, %._crit_edge.i ], [ 0, %bb.n ]
  %.052.lcssa93.i = phi i32 [ %.153.i, %bb.w ], [ %.153.i, %bb.y ], [ %.153.i, %bb.x ], [ %.153.i, %._crit_edge.i ], [ 0, %bb.n ]
  %.058.lcssa92.i = phi ptr [ %.159.i, %bb.w ], [ %.159.i, %bb.y ], [ %.159.i, %bb.x ], [ %.159.i, %._crit_edge.i ], [ null, %bb.n ]
  %.054.i = phi i64 [ %i.db, %bb.w ], [ %i.do, %bb.y ], [ 0, %bb.x ], [ 0, %._crit_edge.i ], [ 0, %bb.n ]
  %i.dp = tail call ptr @ff_h265_guess_level(ptr noundef %.058.lcssa92.i, i64 noundef %.054.i, i32 noundef %.052.lcssa93.i, i32 noundef %.050.lcssa94.i, i32 noundef 0, i32 noundef %.045.lcssa96.i, i32 noundef %.047.lcssa95.i, i32 noundef %.044.lcssa97.i) #5 ; 3 uses
  %.not64.i = icmp eq ptr %i.dp, null
  br i1 %.not64.i, label %h265_metadata_guess_level.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread.i
end_hunk_0
begin_hunk_1_@h265_metadata_update_fragment:bb.a

bb.dh:                                            ; preds = %bb.dg, %bb.df
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.71, i32 noundef %i.lz, i32 noundef %i.mb, i32 noundef %i.mv, i32 noundef %i.mz) #5
  br label %h265_metadata_update_sps.exit.thread

h265_metadata_deduce_crop.exit.i:                 ; preds = %bb.dg, %bb.cy
  %.0143.i = phi i32 [ %.06892.i.i, %bb.dg ], [ %i.lz, %bb.cy ] ; 3 uses
  %.0142.i = phi i32 [ %.0.i.i, %bb.dg ], [ %i.mb, %bb.cy ] ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gs, i64 433
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !113
  %.not133.i = icmp eq i8 %i.nn, 0
  br i1 %.not133.i, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %h265_metadata_deduce_crop.exit.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.gs, i64 432
  %i.np = load i8, ptr %i.no, align 8, !tbaa !114 ; 3 uses
  %i.nq = icmp eq i8 %i.np, 0
  br i1 %i.nq, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nr = icmp ult i8 %i.np, 3
  %i.ns = select i1 %i.nr, i32 2, i32 1
  %i.nt = icmp eq i8 %i.np, 1
  %i.nu = select i1 %i.nt, i32 2, i32 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %h265_metadata_deduce_crop.exit.i
  %.0107.i = phi i32 [ %i.ns, %bb.dj ], [ 1, %bb.di ], [ 1, %h265_metadata_deduce_crop.exit.i ] ; 6 uses
  %.0106.i = phi i32 [ %i.nu, %bb.dj ], [ 1, %bb.di ], [ 1, %h265_metadata_deduce_crop.exit.i ] ; 6 uses
  %i.nv = icmp sgt i32 %.173.i.i, -1
  br i1 %i.nv, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.nw = add nuw i32 %.0107.i, 2147483647
  %i.nx = and i32 %i.nw, %.173.i.i
  %.not134.i = icmp eq i32 %i.nx, 0
  br i1 %.not134.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %.0107.i) #5
  br label %h265_metadata_update_sps.exit.thread

bb.dn:                                            ; preds = %bb.dl
  %i.ny = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0107.i, i1 true)
  %i.nz = lshr i32 %.173.i.i, %i.ny
  %i.oa = trunc i32 %i.nz to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gs, i64 440
  store i16 %i.oa, ptr %i.ob, align 8, !tbaa !115
  %i.oc = getelementptr inbounds nuw i8, ptr %i.gs, i64 438
  store i8 1, ptr %i.oc, align 2, !tbaa !116
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %i.od = icmp sgt i32 %.171.i.i, -1
  br i1 %i.od, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.oe = add nuw i32 %.0107.i, 2147483647
  %i.of = and i32 %i.oe, %.171.i.i
  %.not135.i = icmp eq i32 %i.of, 0
  br i1 %.not135.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.65, i32 noundef %.0107.i) #5
  br label %h265_metadata_update_sps.exit.thread

bb.dr:                                            ; preds = %bb.dp
  %i.og = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0107.i, i1 true)
  %i.oh = lshr i32 %.171.i.i, %i.og
  %i.oi = trunc i32 %i.oh to i16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.gs, i64 442
  store i16 %i.oi, ptr %i.oj, align 2, !tbaa !117
  %i.ok = getelementptr inbounds nuw i8, ptr %i.gs, i64 438
  store i8 1, ptr %i.ok, align 2, !tbaa !116
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.do
  %i.ol = icmp sgt i32 %.0143.i, -1
  br i1 %i.ol, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.om = add nuw i32 %.0106.i, 2147483647
  %i.on = and i32 %i.om, %.0143.i
  %.not136.i = icmp eq i32 %i.on, 0
  br i1 %.not136.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.66, i32 noundef %.0106.i) #5
  br label %h265_metadata_update_sps.exit.thread

bb.dv:                                            ; preds = %bb.dt
  %i.oo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0106.i, i1 true)
  %i.op = lshr i32 %.0143.i, %i.oo
  %i.oq = trunc i32 %i.op to i16
  %i.or = getelementptr inbounds nuw i8, ptr %i.gs, i64 444
  store i16 %i.oq, ptr %i.or, align 4, !tbaa !118
  %i.os = getelementptr inbounds nuw i8, ptr %i.gs, i64 438
  store i8 1, ptr %i.os, align 2, !tbaa !116
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ds
  %i.ot = icmp sgt i32 %.0142.i, -1
  br i1 %i.ot, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.ou = add nuw i32 %.0106.i, 2147483647
  %i.ov = and i32 %i.ou, %.0142.i
  %.not137.i = icmp eq i32 %i.ov, 0
  br i1 %.not137.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.67, i32 noundef %.0106.i) #5
  br label %h265_metadata_update_sps.exit.thread

bb.dz:                                            ; preds = %bb.dx
  %i.ow = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0106.i, i1 true)
  %i.ox = lshr i32 %.0142.i, %i.ow
  %i.oy = trunc i32 %i.ox to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.gs, i64 446
  store i16 %i.oy, ptr %i.oz, align 2, !tbaa !119
  %i.pa = getelementptr inbounds nuw i8, ptr %i.gs, i64 438
  store i8 1, ptr %i.pa, align 2, !tbaa !116
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dw
  %.not138.i = icmp eq i32 %.3.i84, 0
  br i1 %.not138.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pb = getelementptr inbounds nuw i8, ptr %i.gs, i64 10952
  store i8 1, ptr %i.pb, align 8, !tbaa !120
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.pc = getelementptr inbounds nuw i8, ptr %i.gs, i64 57
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lt, i64 160
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !46 ; 2 uses
  switch i32 %i.pe, label %bb.eh [
    i32 -2, label %h265_metadata_update_sps.exit
    i32 -1, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.pf = getelementptr inbounds nuw i8, ptr %i.lt, i64 164
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !47 ; 2 uses
  %.not13.i.i85 = icmp eq i32 %i.pg, 0
  br i1 %.not13.i.i85, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ph = trunc i32 %i.pg to i8
  br label %.sink.split.i.i86

bb.ef:                                            ; preds = %bb.ed
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lt, i64 168 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !79
  %.not14.i.i88 = icmp eq i32 %i.pj, 0
  br i1 %.not14.i.i88, label %bb.eg, label %.sink.split.i.i86

bb.eg:                                            ; preds = %bb.ef
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.62) #5
  store i32 1, ptr %i.pi, align 8, !tbaa !79
  br label %.sink.split.i.i86

bb.eh:                                            ; preds = %bb.ec
  %i.pk = trunc i32 %i.pe to i8
  br label %.sink.split.i.i86

.sink.split.i.i86:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %.sink.i.i87 = phi i8 [ %i.pk, %bb.eh ], [ %i.ph, %bb.ee ], [ -1, %bb.eg ], [ -1, %bb.ef ]
  store i8 %.sink.i.i87, ptr %i.pc, align 1, !tbaa !44
  br label %h265_metadata_update_sps.exit

h265_metadata_update_sps.exit:                    ; preds = %.sink.split.i.i86, %bb.ec, %h265_metadata_update_vps.exit
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.pl = load i32, ptr %i.i, align 8, !tbaa !24
  %i.pm = sext i32 %i.pl to i64
  %i.pn = icmp slt i64 %indvars.iv.next219, %i.pm
  br i1 %i.pn, label %bb.aa, label %h265_metadata_update_sps.exit.thread, !llvm.loop !11

h265_metadata_update_sps.exit.thread:             ; preds = %h265_metadata_update_sps.exit, %h265_metadata_guess_level.exit, %bb.dh, %bb.da, %bb.cx, %bb.cq, %bb.dy, %bb.du, %bb.dq, %bb.dm, %bb.l
  %.1 = phi i32 [ %i.ar, %bb.l ], [ -22, %bb.dh ], [ -22, %bb.dm ], [ -22, %bb.dq ], [ -22, %bb.du ], [ -22, %bb.dy ], [ -22, %bb.cq ], [ -22, %bb.cx ], [ -22, %bb.da ], [ 0, %h265_metadata_guess_level.exit ], [ 0, %h265_metadata_update_sps.exit ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_cbs_delete_unit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_cbs_insert_unit_content(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @ff_h265_guess_level(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !43}
!10 = distinct !{!10, !43}
!11 = distinct !{!11, !43}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!14 = !{!"p1 _ZTS17AVBitStreamFilter", !12, i64 0}
!15 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!16 = !{!"AVRational", !6, i64 0, !6, i64 4}
!17 = !{!"AVBSFContext", !13, i64 0, !14, i64 8, !12, i64 16, !15, i64 24, !15, i64 32, !16, i64 40, !16, i64 48}
!18 = !{!17, !12, i64 16}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!22 = !{!"p1 _ZTS18CodedBitstreamUnit", !12, i64 0}
!23 = !{!"CodedBitstreamFragment", !19, i64 0, !20, i64 8, !20, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !22, i64 40}
!24 = !{!23, !6, i64 32}
!25 = !{!23, !22, i64 40}
!26 = !{!"CodedBitstreamUnit", !6, i64 0, !19, i64 8, !20, i64 16, !20, i64 24, !21, i64 32, !12, i64 40, !12, i64 48}
!27 = !{!26, !6, i64 0}
!28 = !{!"p1 _ZTS10CBSBSFType", !12, i64 0}
!29 = !{!"p1 _ZTS21CodedBitstreamContext", !12, i64 0}
!30 = !{!"CBSBSFContext", !13, i64 0, !28, i64 8, !29, i64 16, !29, i64 24, !23, i64 32}
!31 = !{!"H265RawNALUnitHeader", !5, i64 0, !5, i64 1, !5, i64 2}
!32 = !{!"H265RawAUD", !31, i64 0, !5, i64 3}
!33 = !{!"H265MetadataContext", !30, i64 0, !32, i64 80, !6, i64 84, !16, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !16, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168}
!34 = !{!33, !6, i64 84}
!35 = !{!26, !12, i64 40}
!36 = !{!31, !5, i64 2}
!37 = !{!31, !5, i64 1}
!38 = !{!"short", !5, i64 0}
!39 = !{!"H265RawSTRefPicSet", !5, i64 0, !5, i64 1, !5, i64 2, !38, i64 4, !5, i64 6, !5, i64 22, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 72, !5, i64 88, !5, i64 120}
!40 = !{!"H265RawSliceHeader", !31, i64 0, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !38, i64 8, !5, i64 10, !5, i64 18, !5, i64 19, !5, i64 20, !38, i64 22, !5, i64 24, !39, i64 26, !5, i64 162, !5, i64 163, !5, i64 164, !5, i64 165, !5, i64 181, !5, i64 197, !5, i64 213, !5, i64 232, !5, i64 296, !5, i64 297, !5, i64 298, !5, i64 299, !5, i64 300, !5, i64 301, !5, i64 302, !5, i64 303, !5, i64 319, !5, i64 320, !5, i64 336, !5, i64 337, !5, i64 338, !5, i64 339, !5, i64 340, !5, i64 341, !5, i64 342, !5, i64 358, !5, i64 374, !5, i64 390, !5, i64 422, !5, i64 454, !5, i64 518, !5, i64 534, !5, i64 550, !5, i64 566, !5, i64 598, !5, i64 630, !5, i64 694, !5, i64 695, !5, i64 696, !5, i64 697, !5, i64 698, !5, i64 699, !5, i64 700, !5, i64 701, !5, i64 702, !5, i64 703, !5, i64 704, !5, i64 705, !5, i64 706, !5, i64 707, !38, i64 708, !5, i64 710, !5, i64 712, !38, i64 11512, !5, i64 11514}
!41 = !{!"H265RawSlice", !40, i64 0, !19, i64 11776, !21, i64 11784, !20, i64 11792, !6, i64 11800}
!42 = !{!41, !5, i64 18}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!5, !5, i64 0}
!45 = !{!32, !5, i64 3}
!46 = !{!33, !6, i64 160}
!47 = !{!33, !6, i64 164}
!48 = !{!"H265RawProfileTierLevel", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 45, !5, i64 46, !5, i64 47, !5, i64 48, !5, i64 49, !5, i64 50, !5, i64 51, !5, i64 58, !5, i64 65, !5, i64 72, !5, i64 79, !5, i64 86, !5, i64 310, !5, i64 317, !5, i64 324, !5, i64 331, !5, i64 338, !5, i64 345, !5, i64 352, !5, i64 359, !5, i64 366, !5, i64 373, !5, i64 380, !5, i64 387, !5, i64 394, !5, i64 401, !5, i64 408, !5, i64 415}
!49 = !{!"p1 _ZTS20H265RawHRDParameters", !12, i64 0}
!50 = !{!"H265RawExtensionData", !19, i64 0, !21, i64 8, !20, i64 16}
!51 = !{!"H265RawVPS", !31, i64 0, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !48, i64 9, !5, i64 431, !5, i64 432, !5, i64 439, !5, i64 448, !5, i64 476, !38, i64 478, !5, i64 480, !5, i64 64992, !6, i64 64996, !6, i64 65000, !5, i64 65004, !6, i64 65008, !38, i64 65012, !5, i64 65014, !5, i64 67062, !49, i64 68088, !21, i64 68096, !5, i64 68104, !50, i64 68112}
!52 = !{!51, !38, i64 65012}
!53 = !{!51, !49, i64 68088}
!54 = !{!"H265RawScalingList", !5, i64 0, !5, i64 24, !5, i64 48, !5, i64 96}
!55 = !{!"H265RawHRDParameters", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 20, !5, i64 28, !5, i64 42, !5, i64 49, !5, i64 56, !5, i64 3864}
!56 = !{!"H265RawVUI", !5, i64 0, !5, i64 1, !38, i64 2, !38, i64 4, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !38, i64 22, !38, i64 24, !38, i64 26, !38, i64 28, !5, i64 30, !6, i64 32, !6, i64 36, !5, i64 40, !6, i64 44, !5, i64 48, !55, i64 52, !5, i64 7724, !5, i64 7725, !5, i64 7726, !5, i64 7727, !38, i64 7728, !5, i64 7730, !5, i64 7731, !5, i64 7732, !5, i64 7733}
!57 = !{!"H265RawSPS", !31, i64 0, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !48, i64 7, !5, i64 429, !5, i64 430, !5, i64 431, !5, i64 432, !5, i64 433, !38, i64 434, !38, i64 436, !5, i64 438, !38, i64 440, !38, i64 442, !38, i64 444, !38, i64 446, !5, i64 448, !5, i64 449, !5, i64 450, !5, i64 451, !5, i64 452, !5, i64 459, !5, i64 468, !5, i64 496, !5, i64 497, !5, i64 498, !5, i64 499, !5, i64 500, !5, i64 501, !5, i64 502, !5, i64 503, !5, i64 504, !5, i64 505, !54, i64 506, !5, i64 2138, !5, i64 2139, !5, i64 2140, !5, i64 2141, !5, i64 2142, !5, i64 2143, !5, i64 2144, !5, i64 2145, !5, i64 2146, !5, i64 2148, !5, i64 10852, !5, i64 10853, !5, i64 10854, !5, i64 10918, !5, i64 10950, !5, i64 10951, !5, i64 10952, !56, i64 10956, !5, i64 18692, !5, i64 18693, !5, i64 18694, !5, i64 18695, !5, i64 18696, !5, i64 18697, !50, i64 18704, !5, i64 18728, !5, i64 18729, !5, i64 18730, !5, i64 18731, !5, i64 18732, !5, i64 18733, !5, i64 18734, !5, i64 18735, !5, i64 18736, !5, i64 18737, !5, i64 18738, !5, i64 18739, !5, i64 18740, !5, i64 18741, !5, i64 18742, !5, i64 18744, !5, i64 19512, !5, i64 19513, !5, i64 19514}
!58 = !{!57, !38, i64 434}
!59 = !{!57, !38, i64 436}
!60 = !{!57, !5, i64 11004}
!61 = !{!"H265RawPPS", !31, i64 0, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !5, i64 24, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 68, !5, i64 112, !5, i64 113, !5, i64 114, !5, i64 115, !5, i64 116, !5, i64 117, !5, i64 118, !5, i64 119, !54, i64 120, !5, i64 1752, !5, i64 1753, !5, i64 1754, !5, i64 1755, !5, i64 1756, !5, i64 1757, !5, i64 1758, !5, i64 1759, !5, i64 1760, !50, i64 1768, !5, i64 1792, !5, i64 1793, !5, i64 1794, !5, i64 1795, !5, i64 1796, !5, i64 1797, !5, i64 1803, !5, i64 1809, !5, i64 1810, !5, i64 1811, !5, i64 1812, !5, i64 1813, !5, i64 1814, !5, i64 1815, !5, i64 1816, !5, i64 1817, !5, i64 1818, !5, i64 1819, !5, i64 1820, !5, i64 1821, !5, i64 1822, !5, i64 2590, !5, i64 2591, !5, i64 2592, !5, i64 2593, !5, i64 2594, !5, i64 2658, !5, i64 2722, !5, i64 2850, !5, i64 2978, !5, i64 3106, !5, i64 3234, !5, i64 3298, !5, i64 3426, !5, i64 3554, !5, i64 3682, !5, i64 3810, !5, i64 3874, !5, i64 3938, !5, i64 4002, !5, i64 4066, !5, i64 4130, !5, i64 4131, !5, i64 4132, !5, i64 4194, !5, i64 4195, !5, i64 4196, !5, i64 4197, !5, i64 4198, !5, i64 4199, !5, i64 4200, !5, i64 4201, !38, i64 4202, !38, i64 4204, !5, i64 4206, !5, i64 4208, !5, i64 4400, !5, i64 4976, !5, i64 7280}
!62 = !{!61, !5, i64 23}
!63 = !{!61, !5, i64 25}
!64 = !{!61, !5, i64 26}
!65 = !{!55, !5, i64 0}
!66 = !{!6, !6, i64 0}
!67 = !{!55, !5, i64 7}
!68 = !{!55, !5, i64 1}
!69 = !{!"H265LevelDescriptor", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !38, i64 20, !5, i64 22, !5, i64 23, !6, i64 24, !6, i64 28, !6, i64 32, !5, i64 36, !5, i64 37}
!70 = !{!69, !5, i64 4}
!71 = !{!33, !6, i64 120}
!72 = !{!33, !6, i64 124}
!73 = !{!51, !6, i64 65000}
!74 = !{!51, !6, i64 64996}
!75 = !{!51, !5, i64 64992}
!76 = !{!33, !6, i64 132}
!77 = !{!51, !6, i64 65008}
!78 = !{!51, !5, i64 65004}
!79 = !{!33, !6, i64 168}
!80 = !{!33, !6, i64 88}
!81 = !{!33, !6, i64 92}
!82 = !{!57, !5, i64 10957}
!83 = !{!57, !38, i64 10958}
!84 = !{!57, !38, i64 10960}
!85 = !{!57, !5, i64 10956}
!86 = !{!33, !6, i64 96}
!87 = !{!33, !6, i64 100}
!88 = !{!33, !6, i64 104}
!89 = !{!33, !6, i64 108}
!90 = !{!33, !6, i64 112}
!91 = !{!57, !5, i64 10965}
!92 = !{!57, !5, i64 10964}
!93 = !{!57, !5, i64 10966}
!94 = !{!57, !5, i64 10968}
!95 = !{!57, !5, i64 10967}
!96 = !{!57, !5, i64 10969}
!97 = !{!57, !5, i64 10970}
!98 = !{!33, !6, i64 116}
!99 = !{!57, !5, i64 10972}
!100 = !{!57, !5, i64 10973}
!101 = !{!57, !5, i64 10971}
!102 = !{!57, !6, i64 10992}
!103 = !{!57, !6, i64 10988}
!104 = !{!57, !5, i64 10986}
!105 = !{!57, !6, i64 11000}
!106 = !{!57, !5, i64 10996}
!107 = !{!33, !6, i64 136}
!108 = !{!33, !6, i64 140}
!109 = !{!33, !6, i64 144}
!110 = !{!33, !6, i64 148}
!111 = !{!33, !6, i64 152}
!112 = !{!33, !6, i64 156}
!113 = !{!57, !5, i64 433}
!114 = !{!57, !5, i64 432}
!115 = !{!57, !38, i64 440}
!116 = !{!57, !5, i64 438}
!117 = !{!57, !38, i64 442}
!118 = !{!57, !38, i64 444}
!119 = !{!57, !38, i64 446}
!120 = !{!57, !5, i64 10952}
end_hunk_1
