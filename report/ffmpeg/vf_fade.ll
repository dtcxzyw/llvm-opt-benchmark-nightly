Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fade?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"fade\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Fade in/out input video.\00", align 1
@avfilter_vf_fade_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 1, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_fade = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_vf_fade_inputs, ptr @ff_video_default_filterpad, ptr @fade_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr null, %union.anon.0 { ptr @query_formats }, i32 144, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"libavfilter/vf_fade.c\00", align 1
@studio_level_pix_fmts = internal constant [34 x i32] [i32 5, i32 4, i32 0, i32 7, i32 6, i32 31, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 -1], align 16
@fade_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @fade_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"set the fade direction\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"fade-in\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"fade-out\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"start_frame\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Number of the first frame to which to apply the effect.\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"nb_frames\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Number of frames to which the effect should be applied.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"fade alpha if it is available on the input\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"start_time\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"Number of seconds of the beginning of the effect.\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Duration of the effect in seconds.\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"set color\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@fade_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.8, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.7 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.15, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 24, i32 2, %union.anon.2 { i64 25 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.18, i32 24, i32 2, %union.anon.2 { i64 25 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 60, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 72, i32 16, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.23, i32 72, i32 16, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 80, i32 16, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.26, i32 80, i32 16, %union.anon.2 zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 108, i32 17, { ptr } { ptr @.str.30 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.29, i32 108, i32 17, { ptr } { ptr @.str.30 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.33 = private unnamed_addr constant [46 x i8] c"type:%s start_frame:%d nb_frames:%d alpha:%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"type:%s start_time:%f duration:%f alpha:%d\0A\00", align 1
@query_formats.pix_fmts = internal constant [49 x i32] [i32 5, i32 4, i32 0, i32 7, i32 6, i32 14, i32 13, i32 12, i32 31, i32 32, i32 33, i32 78, i32 79, i32 2, i32 3, i32 25, i32 27, i32 26, i32 28, i32 71, i32 111, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 -1], align 16
@query_formats.pix_fmts_rgb = internal constant [8 x i32] [i32 2, i32 3, i32 25, i32 27, i32 26, i32 28, i32 71, i32 -1], align 16
@query_formats.pix_fmts_alpha = internal constant [20 x i32] [i32 33, i32 78, i32 79, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 25, i32 27, i32 26, i32 28, i32 111, i32 -1], align 16
@query_formats.pix_fmts_rgba = internal constant [6 x i32] [i32 25, i32 27, i32 26, i32 28, i32 111, i32 -1], align 16
@query_formats.straight_alpha = internal constant [3 x i32] [i32 0, i32 2, i32 -1], align 4

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = sdiv i32 65536, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 0, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  br label %bb.c

.thread:                                          ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26   ; 2 uses
  %.not2228 = icmp eq i32 %i.m, 0
  br i1 %.not2228, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.n = phi i32 [ %i.m, %.thread ], [ %i.k, %bb.b ]
  %i.o = phi i32 [ 0, %.thread ], [ %i.d, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %i.r = icmp eq i32 %i.q, 0
  %i.s = select i1 %i.r, ptr @.str.10, ptr @.str.12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.s, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.u) #9
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !25
  br label %.thread29

.thread29:                                        ; preds = %.thread, %bb.c
  %.pre = phi i64 [ %.pre.pre, %bb.c ], [ %i.i, %.thread ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %.not24 = icmp eq i64 %i.w, 0
  %.not25 = icmp eq i64 %.pre, 0
  %or.cond = select i1 %.not24, i1 %.not25, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread29
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = select i1 %i.z, ptr @.str.10, ptr @.str.12
  %1 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %2 = insertelement <2 x i64> %1, i64 %.pre, i64 1
  %3 = uitofp <2 x i64> %2 to <2 x double>
  %4 = fdiv nsz <2 x double> %3, splat (double 1.000000e+06) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28
  %5 = extractelement <2 x double> %4, i64 0
  %6 = extractelement <2 x double> %4, i64 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.aa, double noundef %5, double noundef %6, i32 noundef %i.ac) #9
  br label %bb.e

bb.e:                                             ; preds = %.thread29, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = icmp ne i32 %i.ae, -16777216
  %i.ag = zext i1 %i.af to i32
  %.not26 = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not26 to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !30
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %.not17.not = icmp eq i32 %i.f, 0               ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %query_formats.pix_fmts_rgba.query_formats.pix_fmts_alpha = select i1 %.not17.not, ptr @query_formats.pix_fmts_rgba, ptr @query_formats.pix_fmts_alpha
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not17.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %.122 = phi ptr [ %query_formats.pix_fmts_rgba.query_formats.pix_fmts_alpha, %.thread ], [ @query_formats.pix_fmts_rgb, %bb.b ]
  %i.g = tail call i32 @ff_set_common_alpha_modes_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.straight_alpha) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123 = phi ptr [ %.122, %bb.c ], [ @query_formats.pix_fmts, %bb.b ]
  %i.i = tail call i32 @ff_set_pixel_formats_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.123) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.015 = phi i32 [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  switch i32 %i.f, label %._crit_edge [
    i32 0, label %bb.b
    i32 1, label %thread-pre-split99.thread
    i32 2, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %.not = icmp ult i64 %i.i, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.not87 = icmp slt i64 %i.m, %i.p
  br i1 %.not87, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 8, !tbaa !24
  %i.q = icmp ne i64 %i.k, 0
  %.not88 = icmp eq i32 %i.o, 0                   ; 2 uses
  %or.cond = or i1 %i.q, %.not88
  br i1 %or.cond, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.d
  store i64 %i.i, ptr %i.j, align 8, !tbaa !46
  br label %thread-pre-split99.thread

thread-pre-split:                                 ; preds = %bb.d
  %.not89 = icmp ne i64 %i.k, 0
  %or.cond103 = and i1 %.not88, %.not89
  br i1 %or.cond103, label %bb.e, label %thread-pre-split99.thread

bb.e:                                             ; preds = %thread-pre-split
  %i.r = trunc i64 %i.m to i32
  store i32 %i.r, ptr %i.n, align 4, !tbaa !26
  br label %thread-pre-split99.thread

thread-pre-split99.thread:                        ; preds = %bb.a, %thread-pre-split.thread, %bb.e, %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49   ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %thread-pre-split99.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !23
  %i.ab = trunc i64 %i.w to i32
  %i.ac = sub i32 %i.ab, %i.y
  %i.ad = mul i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ah = add nsw i32 %i.ag, %i.y
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp sgt i64 %i.w, %i.ai
  br i1 %i.aj, label %.thread.sink.split, label %._crit_edge

bb.g:                                             ; preds = %thread-pre-split99.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = mul i64 %i.ao, 65535
  %i.aq = udiv i64 %i.ap, %i.t
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !40
  %i.at = add i64 %i.an, %i.t
  %i.au = icmp ugt i64 %i.al, %i.at
  br i1 %i.au, label %.thread.sink.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.g, %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %i.av = tail call i32 @llvm.smax.i32(i32 %.pre, i32 0)
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.av, i32 65535)
  br label %.thread

.thread.sink.split:                               ; preds = %bb.g, %bb.f
  store i32 2, ptr %i.e, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread.sink.split, %._crit_edge
  %i.ax = phi i32 [ %i.aw, %._crit_edge ], [ 65535, %.thread.sink.split ], [ 65535, %bb.a ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !27
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.bc = xor i32 %i.ax, 65535                    ; 2 uses
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %i.bd = phi i32 [ %i.bc, %bb.h ], [ %i.ax, %.thread ]
  %i.be = icmp samesign ult i32 %i.bd, 65535
  br i1 %i.be, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28
  %.not90 = icmp eq i32 %i.bg, 0
  br i1 %.not90, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 108
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !51
  %.not91 = icmp eq i8 %i.bl, 0
  br i1 %.not91, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !30
  %.not92 = icmp eq i32 %i.bn, 0
  br i1 %.not92, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_0
