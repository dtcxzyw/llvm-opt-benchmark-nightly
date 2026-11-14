Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_testsrc?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.3 = type { i64 }
%struct.ColorChartPreset = type { i32, i32, ptr }
%struct.FFDrawColor = type { [4 x i8], [4 x %union.anon.2] }
%union.anon.2 = type { [4 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Provide an uniformly colored input.\00", align 1
@color_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @color_config_props }], align 16
@ff_vsrc_color = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr null, ptr @color_outputs, ptr @color_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @color_init, ptr @uninit, %union.anon.0 { ptr @color_query_formats }, i32 416, i32 0, ptr @color_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"haldclutsrc\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Provide an identity Hald CLUT.\00", align 1
@haldclutsrc_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @haldclutsrc_config_props }], align 16
@haldclutsrc_pix_fmts = internal constant [25 x i32] [i32 2, i32 3, i32 26, i32 28, i32 25, i32 27, i32 118, i32 120, i32 119, i32 121, i32 35, i32 58, i32 105, i32 107, i32 71, i32 111, i32 73, i32 75, i32 163, i32 135, i32 161, i32 137, i32 77, i32 113, i32 -1], align 16
@ff_vsrc_haldclutsrc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr null, ptr @haldclutsrc_outputs, ptr @haldclutsrc_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @haldclutsrc_init, ptr @uninit, %union.anon.0 { ptr @haldclutsrc_pix_fmts }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"nullsrc\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Null video source, return unprocessed video frames.\00", align 1
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_props }], align 16
@ff_vsrc_nullsrc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr null, ptr @outputs, ptr @nullsrc_yuvtestsrc_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @nullsrc_init, ptr @uninit, %union.anon.0 zeroinitializer, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"testsrc\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Generate test pattern.\00", align 1
@ff_vsrc_testsrc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr null, ptr @outputs, ptr @testsrc_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr @test_init, ptr @uninit, { i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"testsrc2\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Generate another test pattern.\00", align 1
@avfilter_vsrc_testsrc2_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @test2_config_props }], align 16
@ff_vsrc_testsrc2 = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr null, ptr @avfilter_vsrc_testsrc2_outputs, ptr @testsrc2_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @test2_init, ptr @uninit, %union.anon.0 { ptr @test2_query_formats }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"rgbtestsrc\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Generate RGB test pattern.\00", align 1
@avfilter_vsrc_rgbtestsrc_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @rgbtest_config_props }], align 16
@rgbtest_pix_fmts = internal constant [30 x i32] [i32 26, i32 25, i32 28, i32 27, i32 3, i32 2, i32 52, i32 54, i32 37, i32 41, i32 39, i32 43, i32 35, i32 58, i32 105, i32 107, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 226, i32 113, i32 193, i32 195, i32 -1], align 16
@ff_vsrc_rgbtestsrc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr null, ptr @avfilter_vsrc_rgbtestsrc_outputs, ptr @rgbtestsrc_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @rgbtest_init, ptr @uninit, %union.anon.0 { ptr @rgbtest_pix_fmts }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"yuvtestsrc\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Generate YUV test pattern.\00", align 1
@avfilter_vsrc_yuvtestsrc_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @yuvtest_config_props }], align 16
@yuvtest_pix_fmts = internal constant [30 x i32] [i32 5, i32 14, i32 66, i32 68, i32 131, i32 133, i32 49, i32 230, i32 79, i32 85, i32 91, i32 187, i32 97, i32 259, i32 261, i32 228, i32 229, i32 155, i32 205, i32 208, i32 242, i32 214, i32 232, i32 216, i32 188, i32 189, i32 200, i32 224, i32 204, i32 -1], align 16
@ff_vsrc_yuvtestsrc = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr null, ptr @avfilter_vsrc_yuvtestsrc_outputs, ptr @nullsrc_yuvtestsrc_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @yuvtest_init, ptr @uninit, %union.anon.0 { ptr @yuvtest_pix_fmts }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"pal75bars\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Generate PAL 75% color bars.\00", align 1
@ff_vsrc_pal75bars = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr null, ptr @outputs, ptr @palbars_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @pal75bars_init, ptr @uninit, %union.anon.0 { ptr @smptebars_query_formats }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"pal100bars\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Generate PAL 100% color bars.\00", align 1
@ff_vsrc_pal100bars = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr null, ptr @outputs, ptr @palbars_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @pal100bars_init, ptr @uninit, %union.anon.0 { ptr @smptebars_query_formats }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"smptebars\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Generate SMPTE color bars.\00", align 1
@ff_vsrc_smptebars = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr null, ptr @outputs, ptr @smptebars_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @smptebars_init, ptr @uninit, %union.anon.0 { ptr @smptebars_query_formats }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"smptehdbars\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Generate SMPTE HD color bars.\00", align 1
@ff_vsrc_smptehdbars = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr null, ptr @outputs, ptr @smptebars_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @smptehdbars_init, ptr @uninit, %union.anon.0 { ptr @smptebars_query_formats }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"allyuv\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Generate all yuv colors.\00", align 1
@.compoundliteral = internal constant [3 x i32] [i32 5, i32 71, i32 -1], align 4
@ff_vsrc_allyuv = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr null, ptr @outputs, ptr @allyuv_allrgb_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @allyuv_init, ptr @uninit, %union.anon.0 { ptr @.compoundliteral }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"allrgb\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Generate all RGB colors.\00", align 1
@avfilter_vsrc_allrgb_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @allrgb_config_props }], align 16
@ff_vsrc_allrgb = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr null, ptr @avfilter_vsrc_allrgb_outputs, ptr @allyuv_allrgb_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr @allrgb_init, ptr @uninit, { i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"colorspectrum\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Generate colors spectrum.\00", align 1
@ff_vsrc_colorspectrum = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr null, ptr @outputs, ptr @colorspectrum_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr @colorspectrum_init, ptr @uninit, { i32, [4 x i8] } { i32 175, [4 x i8] zeroinitializer }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.28 = private unnamed_addr constant [11 x i8] c"colorchart\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Generate color checker chart.\00", align 1
@avfilter_vsrc_colorchart_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @colorchart_config_props }], align 16
@ff_vsrc_colorchart = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr null, ptr @avfilter_vsrc_colorchart_outputs, ptr @colorchart_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 5, [5 x i8] zeroinitializer, ptr null, ptr @colorchart_init, ptr @uninit, { i32, [4 x i8] } { i32 71, [4 x i8] zeroinitializer }, i32 416, i32 0, ptr null, ptr @activate }, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"zoneplate\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Generate zone-plate.\00", align 1
@avfilter_vsrc_zoneplate_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.32, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @zoneplate_config_props }], align 16
@ff_vsrc_zoneplate = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr null, ptr @avfilter_vsrc_zoneplate_outputs, ptr @zoneplate_class, i32 4, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @zoneplate_query_formats }, i32 416, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Failed to initialize FFDrawContext\0A\00", align 1
@color_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @color_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"set color\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"set video size\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"320x240\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"set video rate\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"set video duration\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"set video sample aspect ratio\00", align 1
@color_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str, ptr @.str.35, i32 316, i32 17, { ptr } { ptr @.str.36 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr @.str.35, i32 316, i32 17, { ptr } { ptr @.str.36 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@haldclutsrc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @haldclutsrc_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.53 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"set level\00", align 1
@haldclutsrc_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.53, ptr @.str.54, i32 332, i32 2, %union.anon.3 { i64 6 }, double 2.000000e+00, double 1.600000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.56 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"w == h && w == level*level*level\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"libavfilter/vsrc_testsrc.c\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"nullsrc/yuvtestsrc\00", align 1
@nullsrc_yuvtestsrc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.59, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@testsrc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.6, ptr @av_default_item_name, ptr @testsrc_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.63 = private unnamed_addr constant [9 x i8] c"decimals\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"set number of decimals to show\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@testsrc_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.63, ptr @.str.64, i32 96, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.700000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.65, ptr @.str.64, i32 96, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.700000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@draw_digit.masks = internal unnamed_addr constant [10 x i8] c"}`7gjO_a\7Fo", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"ff_draw_init_from_link(&s->draw, inlink, 0) >= 0\00", align 1
@testsrc2_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.8, ptr @av_default_item_name, ptr @testsrc2_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.69 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"set global alpha (opacity)\00", align 1
@testsrc2_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.69, ptr @.str.70, i32 100, i32 2, %union.anon.3 { i64 255 }, double 0.000000e+00, double 2.550000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.72 = private unnamed_addr constant [26 x i8] c"%02d:%02d:%02d.%03d\0A%12li\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@rgbtestsrc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.10, ptr @av_default_item_name, ptr @rgbtestsrc_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.75 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"set complement colors\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@rgbtestsrc_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.75, ptr @.str.76, i32 324, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.77, ptr @.str.76, i32 324, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.79 = private unnamed_addr constant [16 x i8] c"pal(75|100)bars\00", align 1
@palbars_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.79, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@white = internal constant [4 x i8] c"\EB\80\80\FF", align 1
@rainbow = internal constant [7 x [4 x i8]] [[4 x i8] c"\B4\80\80\FF", [4 x i8] c"\A2,\8E\FF", [4 x i8] c"\83\9C,\FF", [4 x i8] c"pH:\FF", [4 x i8] c"T\B8\C6\FF", [4 x i8] c"Ad\D4\FF", [4 x i8] c"#\D4r\FF"], align 16
@black0 = internal constant [4 x i8] c"\10\80\80\FF", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"x + w <= test->w\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"y + h <= test->h\00", align 1
@smptebars_pix_fmts = internal constant [7 x i32] [i32 0, i32 4, i32 31, i32 5, i32 6, i32 7, i32 -1], align 16
@rainbow100 = internal constant [7 x [4 x i8]] [[4 x i8] c"\EB\80\80\FF", [4 x i8] c"\D2\10\92\FF", [4 x i8] c"\AA\A6\10\FF", [4 x i8] c"\916\22\FF", [4 x i8] c"j\CA\DE\FF", [4 x i8] c"QZ\F0\FF", [4 x i8] c")\F0n\FF"], align 16
@.str.83 = private unnamed_addr constant [14 x i8] c"smpte(hd)bars\00", align 1
@smptebars_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.83, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@wobnair = internal constant [7 x [4 x i8]] [[4 x i8] c"#\D4r\FF", [4 x i8] c"\13\80\80\FF", [4 x i8] c"T\B8\C6\FF", [4 x i8] c"\13\80\80\FF", [4 x i8] c"\83\9C,\FF", [4 x i8] c"\13\80\80\FF", [4 x i8] c"\B4\80\80\FF"], align 16
@i_pixel = internal constant [4 x i8] c"9\9Ca\FF", align 1
@q_pixel = internal constant [4 x i8] c",\AB\93\FF", align 1
@neg4ire = internal constant [4 x i8] c"\07\80\80\FF", align 1
@pos4ire = internal constant [4 x i8] c"\18\80\80\FF", align 1
@gray40 = internal constant [4 x i8] c"h\80\80\FF", align 1
@rainbowhd = internal constant [7 x [4 x i8]] [[4 x i8] c"\B4\80\80\FF", [4 x i8] c"\A8,\88\FF", [4 x i8] c"\91\93,\FF", [4 x i8] c"\85?4\FF", [4 x i8] c"?\C1\CC\FF", [4 x i8] c"3m\D4\FF", [4 x i8] c"\1C\D4x\FF"], align 16
@cyan = internal constant [4 x i8] c"\BC\9A\10\FF", align 1
@blue = internal constant [4 x i8] c" \F0v\FF", align 1
@yellow = internal constant [4 x i8] c"\DB\10\8A\FF", align 1
@red = internal constant [4 x i8] c"?f\F0\FF", align 1
@gray15 = internal constant [4 x i8] c"1\80\80\FF", align 1
@neg2 = internal constant [4 x i8] c"\0C\80\80\FF", align 1
@black2 = internal constant [4 x i8] c"\14\80\80\FF", align 1
@black4 = internal constant [4 x i8] c"\19\80\80\FF", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"allyuv/allrgb\00", align 1
@allyuv_allrgb_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.85, ptr @av_default_item_name, ptr getelementptr (i8, ptr @options, i64 128), i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@colorspectrum_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.26, ptr @av_default_item_name, ptr @colorspectrum_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.88 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"set the color spectrum type\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"fade to black\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"fade to white\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"white to black\00", align 1
@colorspectrum_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.88, ptr @.str.89, i32 108, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double 2.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.88 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.36, ptr @.str.90, i32 0, i32 11, %union.anon.3 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.88 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.91, ptr @.str.92, i32 0, i32 11, %union.anon.3 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.88 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.93, ptr @.str.94, i32 0, i32 11, %union.anon.3 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.88 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@colorchart_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.28, ptr @av_default_item_name, ptr @colorchart_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.97 = private unnamed_addr constant [11 x i8] c"patch_size\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"set the single patch size\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"64x64\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"set the color checker chart preset\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"skintones\00", align 1
@colorchart_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.97, ptr @.str.98, i32 16, i32 12, { ptr } { ptr @.str.99 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.100, ptr @.str.101, i32 108, i32 2, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.100 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.102, ptr @.str.102, i32 0, i32 11, %union.anon.3 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.100 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.103, ptr @.str.103, i32 0, i32 11, %union.anon.3 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.100 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@colorchart_presets = internal unnamed_addr constant [2 x %struct.ColorChartPreset] [%struct.ColorChartPreset { i32 6, i32 4, ptr @reference_colors }, %struct.ColorChartPreset { i32 6, i32 4, ptr @skintones_colors }], align 16
@reference_colors = internal constant [24 x [3 x i8]] [[3 x i8] c"sRD", [3 x i8] c"\C2\96\82", [3 x i8] c"bz\9D", [3 x i8] c"WlC", [3 x i8] c"\85\80\B1", [3 x i8] c"g\BD\AA", [3 x i8] c"\D6~,", [3 x i8] c"P[\A6", [3 x i8] c"\C1Zc", [3 x i8] c"^<l", [3 x i8] c"\9D\BC@", [3 x i8] c"\E0\A3.", [3 x i8] c"8=\96", [3 x i8] c"F\94I", [3 x i8] c"\AF6<", [3 x i8] c"\E7\C7\1F", [3 x i8] c"\BBV\95", [3 x i8] c"\08\85\A1", [3 x i8] c"\F3\F3\F2", [3 x i8] c"\C8\C8\C8", [3 x i8] c"\A0\A0\A0", [3 x i8] c"zzy", [3 x i8] c"UUU", [3 x i8] c"444"], align 16
@skintones_colors = internal constant [24 x [3 x i8]] [[3 x i8] c"6&+", [3 x i8] c"i+*", [3 x i8] c"\93++", [3 x i8] c"M)*", [3 x i8] c"\86+)", [3 x i8] c"\C9\86v", [3 x i8] c";))", [3 x i8] c"\C0gL", [3 x i8] c"\D0\9C\8D", [3 x i8] c"\98R=", [3 x i8] c"\A2\84v", [3 x i8] c"\D4\AB\96", [3 x i8] c"\CD[\1F", [3 x i8] c"\A4d7", [3 x i8] c"\CC\88_", [3 x i8] c"\B2\8Et", [3 x i8] c"\D2\98l", [3 x i8] c"\D9\A7\83", [3 x i8] c"\CE\A6~", [3 x i8] c"\D0\A3a", [3 x i8] c"\F5\B4\00", [3 x i8] c"\D4\B8}", [3 x i8] c"\B3\A5\96", [3 x i8] c"\C4\B8i"], align 16
@zoneplate_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.30, ptr @av_default_item_name, ptr @zoneplate_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.106 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"set LUT precision\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"set X-axis offset\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"yo\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"set Y-axis offset\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"set T-axis offset\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"k0\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"set 0-order phase\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"kx\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"set 1-order X-axis phase\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"ky\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"set 1-order Y-axis phase\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"set 1-order T-axis phase\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"kxt\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"set X-axis*T-axis product phase\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"kyt\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"set Y-axis*T-axis product phase\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"kxy\00", align 1
@.str.127 = private unnamed_addr constant [32 x i8] c"set X-axis*Y-axis product phase\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"kx2\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"set 2-order X-axis phase\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"ky2\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"set 2-order Y-axis phase\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"kt2\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"set 2-order T-axis phase\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"ku\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"set 0-order U-color phase\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"set 0-order V-color phase\00", align 1
@zoneplate_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.39, i32 8, i32 12, { ptr } { ptr @.str.40 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.43, i32 36, i32 15, { ptr } { ptr @.str.44 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.47, i32 56, i32 16, %union.anon.3 { i64 -1 }, double -1.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr @.str.50, i32 64, i32 7, { double } { double 1.000000e+00 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.106, ptr @.str.107, i32 396, i32 2, %union.anon.3 { i64 10 }, double 4.000000e+00, double 1.600000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.108, ptr @.str.109, i32 376, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.110, ptr @.str.111, i32 380, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.112, ptr @.str.113, i32 384, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.114, ptr @.str.115, i32 336, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.116, ptr @.str.117, i32 340, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.118, ptr @.str.119, i32 344, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.120, ptr @.str.121, i32 348, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.122, ptr @.str.123, i32 352, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.124, ptr @.str.125, i32 356, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.126, ptr @.str.127, i32 360, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.128, ptr @.str.129, i32 364, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.130, ptr @.str.131, i32 368, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.132, ptr @.str.133, i32 372, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.134, ptr @.str.135, i32 388, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.136, ptr @.str.137, i32 392, i32 2, %union.anon.3 zeroinitializer, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.139 = private unnamed_addr constant [45 x i8] c"size:%dx%d rate:%d/%d duration:%f sar:%d/%d\0A\00", align 1
@zoneplate_pix_fmts = internal constant [7 x i32] [i32 5, i32 66, i32 68, i32 131, i32 133, i32 49, i32 -1], align 16
@switch.table.zoneplate_config_props = private unnamed_addr constant [8 x ptr] [ptr @zoneplate_fill_slice_9, ptr @zoneplate_fill_slice_10, ptr poison, ptr @zoneplate_fill_slice_12, ptr poison, ptr @zoneplate_fill_slice_14, ptr poison, ptr @zoneplate_fill_slice_16], align 8

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @color_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @color_fill_picture, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.d, align 8, !tbaa !28
  %i.e = tail call i32 @init(ptr noundef %0) #18  ; 0 uses
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  tail call void @av_freep(ptr noundef nonnull %i.d) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @color_query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_draw_supported_pixel_formats(i32 noundef 0) #19
  %i.b = tail call i32 @ff_set_common_formats2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a) #19
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @color_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #19 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  tail call void @ff_draw_color(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #19
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 1, ptr %i.h, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 16 uses
  %i.f = tail call i32 @ff_outlink_frame_wanted(ptr noundef %i.c) #19
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.m = load i64, ptr %i.l, align 4
  %i.n = tail call i64 @av_rescale_q(i64 noundef %i.k, i64 %i.m, i64 4294967296000001) #20
  %.not46 = icmp slt i64 %i.n, %i.h
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ff_avfilter_link_set_in_status(ptr noundef %i.c, i32 noundef -541478725, i64 noundef %i.k) #19
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %.not47 = icmp eq i32 %i.p, 0
  br i1 %.not47, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29
  %.not48 = icmp eq i32 %i.r, 0
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  tail call void @av_frame_free(ptr noundef nonnull %i.s) #19
  store i32 0, ptr %i.q, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 2 uses
  %.not49 = icmp eq ptr %i.u, null
  br i1 %.not49, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = tail call ptr @ff_get_video_buffer(ptr noundef %i.c, i32 noundef %i.w, i32 noundef %i.y) #19 ; 3 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !93
  %.not50 = icmp eq ptr %i.z, null
end_hunk_0
begin_hunk_1_@yuvtest_fill_picture:bb.a
  %i.je = shl i32 %.035, %i.jd
  %i.jf = trunc i32 %i.je to i16
  %i.jg = load ptr, ptr %1, align 8, !tbaa !56
  %i.jh = shl nuw nsw i32 %.03742, 1              ; 3 uses
  %i.ji = load i32, ptr %i.t, align 8, !tbaa !49
  %i.jj = mul nsw i32 %i.ji, %.03643
  %i.jk = add nsw i32 %i.jj, %i.jh
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %i.jg, i64 %i.jl
  store i16 %i.jf, ptr %i.jm, align 2, !tbaa !61
  %i.jn = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !69
  %i.jp = shl i32 %.034, %i.jo
  %i.jq = trunc i32 %i.jp to i16
  %i.jr = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.js = load i32, ptr %i.w, align 4, !tbaa !49
  %i.jt = mul nsw i32 %i.js, %.03643
  %i.ju = add nsw i32 %i.jt, %i.jh
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds i8, ptr %i.jr, i64 %i.jv
  store i16 %i.jq, ptr %i.jw, align 2, !tbaa !61
  %i.jx = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !69
  %i.jz = shl i32 %.0, %i.jy
  %i.ka = trunc i32 %i.jz to i16
  %i.kb = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.kc = load i32, ptr %i.y, align 8, !tbaa !49
  %i.kd = mul nsw i32 %i.kc, %.03643
  %i.ke = add nsw i32 %i.kd, %i.jh
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds i8, ptr %i.kb, i64 %i.kf
  store i16 %i.ka, ptr %i.kg, align 2, !tbaa !61
  br label %yuvtest_put_pixel.exit

bb.n:                                             ; preds = %bb.b
  %i.kh = trunc i32 %.035 to i8
  %i.ki = load ptr, ptr %1, align 8, !tbaa !56
  %i.kj = load i32, ptr %i.t, align 8, !tbaa !49
  %i.kk = mul nsw i32 %i.kj, %.03643
  %i.kl = add nsw i32 %i.kk, %.03742
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.ki, i64 %i.km
  store i8 %i.kh, ptr %i.kn, align 1, !tbaa !61
  %i.ko = trunc i32 %.034 to i8
  %i.kp = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.kq = shl nuw nsw i32 %.03742, 1              ; 2 uses
  %i.kr = load i32, ptr %i.w, align 4, !tbaa !49
  %i.ks = mul nsw i32 %i.kr, %.03643
  %i.kt = add nsw i32 %i.ks, %i.kq
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kp, i64 %i.ku
  store i8 %i.ko, ptr %i.kv, align 1, !tbaa !61
  %i.kw = trunc i32 %.0 to i8
  %i.kx = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.ky = load i32, ptr %i.w, align 4, !tbaa !49
  %i.kz = mul nsw i32 %i.ky, %.03643
  %i.la = add nsw i32 %i.kz, %i.kq
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr i8, ptr %i.kx, i64 %i.lb
  %i.ld = getelementptr i8, ptr %i.lc, i64 1
  store i8 %i.kw, ptr %i.ld, align 1, !tbaa !61
  br label %yuvtest_put_pixel.exit

bb.o:                                             ; preds = %bb.b
  %i.le = trunc i32 %.035 to i8
  %i.lf = load ptr, ptr %1, align 8, !tbaa !56
  %i.lg = load i32, ptr %i.t, align 8, !tbaa !49
  %i.lh = mul nsw i32 %i.lg, %.03643
  %i.li = add nsw i32 %i.lh, %.03742
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds i8, ptr %i.lf, i64 %i.lj
  store i8 %i.le, ptr %i.lk, align 1, !tbaa !61
  %i.ll = trunc i32 %.034 to i8
  %i.lm = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.ln = shl nuw nsw i32 %.03742, 1              ; 2 uses
  %i.lo = load i32, ptr %i.w, align 4, !tbaa !49
  %i.lp = mul nsw i32 %i.lo, %.03643
  %i.lq = add nsw i32 %i.lp, %i.ln
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr i8, ptr %i.lm, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 1
  store i8 %i.ll, ptr %i.lt, align 1, !tbaa !61
  %i.lu = trunc i32 %.0 to i8
  %i.lv = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.lw = load i32, ptr %i.w, align 4, !tbaa !49
  %i.lx = mul nsw i32 %i.lw, %.03643
  %i.ly = add nsw i32 %i.lx, %i.ln
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds i8, ptr %i.lv, i64 %i.lz
  store i8 %i.lu, ptr %i.ma, align 1, !tbaa !61
  br label %yuvtest_put_pixel.exit

bb.p:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.mb = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !59
  %i.md = sub nsw i32 16, %i.mc
  %i.me = shl i32 %.035, %i.md
  %i.mf = trunc i32 %i.me to i16
  %i.mg = load ptr, ptr %1, align 8, !tbaa !56
  %i.mh = shl nuw nsw i32 %.03742, 1
  %i.mi = load i32, ptr %i.t, align 8, !tbaa !49
  %i.mj = mul nsw i32 %i.mi, %.03643
  %i.mk = add nsw i32 %i.mj, %i.mh
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %i.mg, i64 %i.ml
  store i16 %i.mf, ptr %i.mm, align 2, !tbaa !61
  %i.mn = getelementptr inbounds nuw i8, ptr %i.aq, i64 60 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !59
  %i.mp = sub nsw i32 16, %i.mo
  %i.mq = shl i32 %.034, %i.mp
  %i.mr = trunc i32 %i.mq to i16
  %i.ms = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.mt = shl nuw nsw i32 %.03742, 2              ; 2 uses
  %i.mu = load i32, ptr %i.w, align 4, !tbaa !49
  %i.mv = mul nsw i32 %i.mu, %.03643
  %i.mw = add nsw i32 %i.mv, %i.mt
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.ms, i64 %i.mx
  store i16 %i.mr, ptr %i.my, align 2, !tbaa !61
  %i.mz = load i32, ptr %i.mn, align 4, !tbaa !59
  %i.na = sub nsw i32 16, %i.mz
  %i.nb = shl i32 %.0, %i.na
  %i.nc = trunc i32 %i.nb to i16
  %i.nd = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.ne = load i32, ptr %i.w, align 4, !tbaa !49
  %i.nf = mul nsw i32 %i.ne, %.03643
  %i.ng = add nsw i32 %i.nf, %i.mt
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr i8, ptr %i.nd, i64 %i.nh
  %i.nj = getelementptr i8, ptr %i.ni, i64 2
  store i16 %i.nc, ptr %i.nj, align 2, !tbaa !61
  br label %yuvtest_put_pixel.exit

yuvtest_put_pixel.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %i.nk = add nuw nsw i32 %.03742, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.nk, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !138

._crit_edge:                                      ; preds = %yuvtest_put_pixel.exit
  %i.nl = add nuw nsw i32 %.03643, 1              ; 2 uses
  %exitcond45.not = icmp eq i32 %i.nl, %i.f
  br i1 %exitcond45.not, label %._crit_edge44.split, label %.preheader, !llvm.loop !139

._crit_edge44.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pal75bars_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = add nsw i32 %i.g, 7
  %i.i = sdiv i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !70
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = add nsw i32 %i.i, -1
  %i.o = add i32 %i.n, %i.m
  %i.p = sub i32 0, %i.m
  %i.q = and i32 %i.o, %i.p                       ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 8 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef %i.b, ptr noundef nonnull @white, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %1)
  %i.t = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 4), i32 noundef %i.q, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.t, ptr noundef %1)
  %i.u = shl nsw i32 %i.q, 1
  %i.v = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 8), i32 noundef %i.u, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.v, ptr noundef %1)
  %i.w = mul nsw i32 %i.q, 3
  %i.x = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 12), i32 noundef %i.w, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.x, ptr noundef %1)
  %i.y = shl nsw i32 %i.q, 2
  %i.z = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 16), i32 noundef %i.y, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.z, ptr noundef %1)
  %i.aa = mul nsw i32 %i.q, 5
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 20), i32 noundef %i.aa, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ab, ptr noundef %1)
  %i.ac = mul nsw i32 %i.q, 6
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 24), i32 noundef %i.ac, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ad, ptr noundef %1)
  %i.ae = mul nsw i32 %i.q, 7
  %i.af = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull @black0, i32 noundef %i.ae, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.af, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_bar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 3 uses
  %i.j = add nsw i32 %i.i, -1
  %i.k = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.j) ; 4 uses
  %i.l = sub nsw i32 %i.e, %i.g
  %i.m = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.l)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0) ; 3 uses
  %i.n = sub nsw i32 %i.i, %i.k
  %.107 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.n)
  %i.o = tail call i32 @llvm.smax.i32(i32 %.107, i32 0) ; 3 uses
  %i.p = add nsw i32 %spec.select, %i.g
  %.not104 = icmp sgt i32 %i.p, %i.e
  br i1 %.not104, label %7, label %8

7:                                                ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58, i32 noundef 1443) #19
  tail call void @abort() #22
  unreachable

8:                                                ; preds = %bb.a
  %9 = add nsw i32 %i.o, %i.k
  %.not105 = icmp sgt i32 %9, %i.i
  br i1 %.not105, label %bb.b, label %.preheader

.preheader:                                       ; preds = %8
  %i.q = load ptr, ptr %6, align 8, !tbaa !56     ; 2 uses
  %.not106111 = icmp eq ptr %i.q, null
  br i1 %.not106111, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.t = sub nsw i32 0, %spec.select
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.v = sub nsw i32 0, %i.o
  br label %bb.c

bb.b:                                             ; preds = %8
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.58, i32 noundef 1444) #19
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %.lr.ph113, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.w = phi ptr [ %i.q, %.lr.ph113 ], [ %i.az, %._crit_edge ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !61
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = sext i32 %i.aa to i64                   ; 6 uses
  %i.ac = trunc i64 %indvars.iv to i32
  %i.ad = add i32 %i.ac, -1
  %or.cond = icmp ult i32 %i.ad, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.s, align 1, !tbaa !70
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = ashr i32 %i.g, %i.af
  %i.ah = ashr i32 %i.t, %i.af
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = load i8, ptr %i.u, align 2, !tbaa !71
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = ashr i32 %i.k, %i.ak
  %i.am = ashr i32 %i.v, %i.ak
  %i.an = sub nsw i32 0, %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.088 = phi i32 [ %i.ag, %bb.d ], [ %i.g, %bb.c ]
  %.087 = phi i32 [ %i.al, %bb.d ], [ %i.k, %bb.c ]
  %.086 = phi i32 [ %i.ai, %bb.d ], [ %spec.select, %bb.c ]
  %.0 = phi i32 [ %i.an, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.ao = sext i32 %.087 to i64
  %i.ap = mul nsw i64 %i.ao, %i.ab
  %i.aq = getelementptr inbounds i8, ptr %i.w, i64 %i.ap
  %i.ar = sext i32 %.088 to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar ; 8 uses
  %i.at = sext i32 %.086 to i64                   ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 %i.y, i64 %i.at, i1 false)
  %i.au = icmp sgt i32 %.0, 1
  br i1 %i.au, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.av = add nsw i32 %.0, -1                     ; 2 uses
  %i.aw = add nsw i32 %.0, -2
  %xtraiter = and i32 %i.av, 3                    ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.av, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn109 = phi ptr [ %i.as, %.lr.ph.preheader.new ], [ %.091.3, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.091 = getelementptr inbounds i8, ptr %.pn109, i64 %i.ab ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.091, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %.091.1 = getelementptr inbounds i8, ptr %.091, i64 %i.ab ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.091.1, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %.091.2 = getelementptr inbounds i8, ptr %.091.1, i64 %i.ab ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.091.2, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %.091.3 = getelementptr inbounds i8, ptr %.091.2, i64 %i.ab ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.091.3, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !140

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn109.epil.init = phi ptr [ %i.as, %.lr.ph.preheader ], [ %.091.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.pn109.epil = phi ptr [ %.091.epil, %.lr.ph.epil ], [ %.pn109.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.091.epil = getelementptr inbounds i8, ptr %.pn109.epil, i64 %i.ab ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.091.epil, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !141

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !56 ; 2 uses
  %.not106 = icmp eq ptr %i.az, null
  br i1 %.not106, label %._crit_edge114, label %bb.c, !llvm.loop !142

._crit_edge114:                                   ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

declare i32 @ff_set_common_color_spaces2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_formats_list_singleton(i32 noundef) local_unnamed_addr #2

declare i32 @ff_set_common_color_ranges2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_pixel_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pal100bars_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = add nsw i32 %i.g, 7
  %i.i = sdiv i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !70
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = add nsw i32 %i.i, -1
  %i.o = add i32 %i.n, %i.m
  %i.p = sub i32 0, %i.m
  %i.q = and i32 %i.o, %i.p                       ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 8 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull @rainbow100, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %1)
  %i.t = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 4), i32 noundef %i.q, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.t, ptr noundef %1)
  %i.u = shl nsw i32 %i.q, 1
  %i.v = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 8), i32 noundef %i.u, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.v, ptr noundef %1)
  %i.w = mul nsw i32 %i.q, 3
  %i.x = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 12), i32 noundef %i.w, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.x, ptr noundef %1)
  %i.y = shl nsw i32 %i.q, 2
  %i.z = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 16), i32 noundef %i.y, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.z, ptr noundef %1)
  %i.aa = mul nsw i32 %i.q, 5
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 20), i32 noundef %i.aa, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ab, ptr noundef %1)
  %i.ac = mul nsw i32 %i.q, 6
  %i.ad = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow100, i64 24), i32 noundef %i.ac, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ad, ptr noundef %1)
  %i.ae = mul nsw i32 %i.q, 7
  %i.af = load i32, ptr %i.r, align 4, !tbaa !36
  tail call fastcc void @draw_bar(ptr noundef nonnull %i.b, ptr noundef nonnull @black0, i32 noundef %i.ae, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.af, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smptebars_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.d) #19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = add nsw i32 %i.g, 6
  %i.i = sdiv i32 %i.h, 7
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 9 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !70
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = add i32 %i.n, %i.i
  %i.p = sub i32 0, %i.m                          ; 2 uses
  %i.q = and i32 %i.o, %i.p                       ; 23 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36   ; 3 uses
  %i.t = shl nsw i32 %i.s, 1
  %i.u = sdiv i32 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.w = load i8, ptr %i.v, align 2, !tbaa !71
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw i32 1, %i.x                      ; 2 uses
  %i.z = add i32 %i.y, -1                         ; 2 uses
  %i.aa = add i32 %i.z, %i.u
  %i.ab = sub i32 0, %i.y                         ; 2 uses
  %i.ac = and i32 %i.aa, %i.ab                    ; 16 uses
  %i.ad = mul nsw i32 %i.s, 3
  %i.ae = sdiv i32 %i.ad, 4
  %i.af = add i32 %i.z, %i.ae
  %i.ag = sub i32 %i.af, %i.ac
  %i.ah = and i32 %i.ag, %i.ab                    ; 8 uses
  tail call fastcc void @draw_bar(ptr noundef %i.b, ptr noundef nonnull @rainbow, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ac, ptr noundef %1)
  tail call fastcc void @draw_bar(ptr noundef %i.b, ptr noundef nonnull @wobnair, i32 noundef 0, i32 noundef %i.ac, i32 noundef %i.q, i32 noundef %i.ah, ptr noundef %1)
  tail call fastcc void @draw_bar(ptr noundef %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rainbow, i64 4), i32 noundef %i.q, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.ac, ptr noundef %1)
  tail call fastcc void @draw_bar(ptr noundef %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @wobnair, i64 4), i32 noundef %i.q, i32 noundef %i.ac, i32 noundef %i.q, i32 noundef %i.ah, ptr noundef %1)
  %i.ai = shl nsw i32 %i.q, 1                     ; 2 uses
end_hunk_1
