Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_apulsator?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.AVChannelLayout = type { i32, i32, %union.anon.1, ptr }
%union.anon.1 = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"apulsator\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Audio pulsator.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_apulsator = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @apulsator_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, %union.anon.0 { ptr @query_formats }, i32 184, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"libavfilter/af_apulsator.c\00", align 1
@apulsator_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @apulsator_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"level_in\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"set input gain\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"level_out\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"set output gain\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"set mode\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"sine\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"triangle\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"sawup\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sawdown\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"set modulation\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"offset_l\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"set offset L\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"offset_r\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"set offset R\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"set pulse width\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"set timing\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"bpm\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"set BPM\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"set ms\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"set frequency\00", align 1
@apulsator_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 16, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 24, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 8, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 4.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr null, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr null, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 32, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 40, i32 4, { double } zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 48, i32 4, { double } { double 5.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 56, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 2.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 84, i32 2, %union.anon.2 { i64 2 }, double 0.000000e+00, double 2.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.26 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.26 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.29, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.26 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.26 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.31, i32 64, i32 4, { double } { double 1.200000e+02 }, double 3.000000e+01, double 3.000000e+02, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.29, ptr @.str.32, i32 80, i32 2, %union.anon.2 { i64 500 }, double 1.000000e+01, double 2.000000e+03, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.33, i32 72, i32 4, { double } { double 2.000000e+00 }, double 1.000000e-02, double 1.000000e+02, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.formats = internal constant [2 x i32] [i32 4, i32 -1], align 4
@query_formats.layouts = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 2, %union.anon.1 { i64 3 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.formats) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.layouts) #4
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %3 = load double, ptr %i.l, align 8, !tbaa !47
  %4 = load double, ptr %2, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !49 ; 2 uses
  %i.o = tail call i32 @av_frame_is_writable(ptr noundef nonnull %1) #4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.j, align 8, !tbaa !46
  %i.q = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.p) #4 ; 3 uses
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.q, ptr noundef nonnull %1) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.049 = phi ptr [ %i.q, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %.049, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 3 uses
  %i.v = fmul nsz double %i.n, 5.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 3 uses
  %i.x = fsub nsz double 1.000000e+00, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 180
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x double> poison, double %3, i64 0
  %i.aa = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.04656 = phi ptr [ %i.i, %.lr.ph ], [ %i.bm, %bb.f ] ; 2 uses
  %.04755 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.f ]
  %.04854 = phi ptr [ %i.t, %.lr.ph ], [ %i.bl, %bb.f ] ; 2 uses
  %i.af = load <2 x double>, ptr %.04656, align 8, !tbaa !32
  %i.ag = fmul nsz <2 x double> %i.aa, %i.af      ; 2 uses
  %i.ah = tail call nsz fastcc double @lfo_get_value(ptr noundef nonnull %i.u)
  %i.ai = tail call nsz fastcc double @lfo_get_value(ptr noundef nonnull %i.w)
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ai, i64 1
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ae)
  %i.am = fmul nsz <2 x double> %i.ag, %i.al
  %i.an = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ac, <2 x double> %i.am)
  %i.ao = fmul nsz <2 x double> %6, %i.an
  store <2 x double> %i.ao, ptr %.04854, align 8, !tbaa !32
  %i.ap = load i32, ptr %i.y, align 4, !tbaa !50
  %i.aq = load i32, ptr %i.z, align 4, !tbaa !50
  %i.ar = load <2 x double>, ptr %i.u, align 8, !tbaa !32 ; 2 uses
  %i.as = load <2 x double>, ptr %i.w, align 8, !tbaa !32 ; 2 uses
  %i.at = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %i.ap, i64 1
  %i.av = sitofp <2 x i32> %i.au to <2 x double>
  %i.aw = shufflevector <2 x double> %i.as, <2 x double> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.ax = fdiv nsz <2 x double> %i.aw, %i.av
  %i.ay = shufflevector <2 x double> %i.as, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.az = fadd nsz <2 x double> %i.ay, %i.ax
  %i.ba = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.az) ; 4 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 1
  %i.bc = fcmp nsz ult <2 x double> %i.ba, splat (double 1.000000e+00)
  %i.bd = extractelement <2 x double> %i.ba, i64 0
  %i.be = frem nsz double %i.bd, 1.000000e+00
  %i.bf = frem nsz double %i.bb, 1.000000e+00
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = select <2 x i1> %i.bc, <2 x double> %i.ba, <2 x double> %i.bh ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  store double %i.bj, ptr %i.u, align 8, !tbaa !33
  %i.bk = extractelement <2 x double> %i.bi, i64 0
  store double %i.bk, ptr %i.w, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.04854, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.04656, i64 16
  %i.bn = add nuw nsw i32 %.04755, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.not52 = icmp eq ptr %1, %.049
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @av_frame_free(ptr noundef nonnull %i.a) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.bo = call i32 @ff_filter_frame(ptr noundef %i.f, ptr noundef nonnull %.049) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.0 = phi i32 [ %i.bo, %bb.h ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load double, ptr %i.g, align 8, !tbaa !53
  %i.i = fdiv nsz double %i.h, 6.000000e+01
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = sitofp nsz i32 %i.k to double
  %i.m = fdiv nsz double %i.l, 1.000000e+03
  %i.n = fdiv nsz double 1.000000e+00, %i.m
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 224) #4
  tail call void @abort() #5
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi nsz double [ %i.i, %bb.b ], [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store double %.0, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store double %.0, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %i.t, ptr %i.u, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store i32 %i.t, ptr %i.v, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store double %i.y, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.af = load <2 x double>, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ag, ptr %i.w, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ai = extractelement <2 x double> %i.af, i64 0
  store double %i.ai, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store double %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.ak, ptr %i.am, align 8, !tbaa !69
  ret i32 0
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #1

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc double @lfo_get_value(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !33  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !70 ; 4 uses
  %i.d = fcmp nsz olt double %i.c, 1.000000e-02   ; 2 uses
  %i.e = fcmp nsz olt double %i.c, 1.990000e+00
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = select nsz i1 %i.d, double 1.000000e-02, double %i.c
  %i.g = fdiv nsz double %i.a, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !71 ; 3 uses
  %i.j = fadd nsz double %i.g, %i.i
  %i.k = fcmp nsz olt double %i.j, 1.000000e+02
  br i1 %i.k, label %bb.c, label %bb.e

.thread:                                          ; preds = %bb.a
  %i.l = fdiv nsz double %i.a, 1.990000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !71 ; 2 uses
  %i.o = fadd nsz double %i.l, %i.n
  %i.p = fcmp nsz olt double %i.o, 1.000000e+02
  br i1 %i.p, label %.thread33, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %.thread33

.thread33:                                        ; preds = %bb.c, %.thread, %bb.d
  %i.q = phi double [ %i.n, %.thread ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  %i.r = phi nsz double [ 1.990000e+00, %.thread ], [ %i.c, %bb.d ], [ 1.000000e-02, %bb.c ]
  %i.s = fdiv nsz double %i.a, %i.r
  %i.t = fadd nsz double %i.q, %i.s
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.b, %.thread33
  %i.u = phi nsz double [ %i.t, %.thread33 ], [ 1.000000e+02, %bb.b ], [ 1.000000e+02, %.thread ] ; 3 uses
  %i.v = fcmp nsz ogt double %i.u, 1.000000e+00
  %i.w = frem nsz double %i.u, 1.000000e+00
  %.026 = select nsz i1 %i.v, double %i.w, double %i.u ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !72
  switch i32 %i.y, label %bb.o [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = fmul nsz double %.026, 2.000000e+00
  %i.aa = fmul nsz double %i.z, f0x400921FB54442D18
  %i.ab = tail call nsz double @llvm.sin.f64(double %i.aa)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ac = fcmp nsz ogt double %.026, 7.500000e-01
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fadd nnan nsz double %.026, -7.500000e-01
  %i.ae = tail call nnan nsz double @llvm.fmuladd.f64(double %i.ad, double 4.000000e+00, double -1.000000e+00)
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.af = fcmp nsz ogt double %.026, 2.500000e-01
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call nnan nsz double @llvm.fmuladd.f64(double %.026, double -4.000000e+00, double 2.000000e+00)
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ah = fmul nsz double %.026, 4.000000e+00
  br label %bb.p

bb.l:                                             ; preds = %bb.e
  %i.ai = fcmp nsz olt double %.026, 5.000000e-01
  %i.aj = select i1 %i.ai, double -1.000000e+00, double 1.000000e+00
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.ak = tail call nsz double @llvm.fmuladd.f64(double %.026, double 2.000000e+00, double -1.000000e+00)
  br label %bb.p

bb.n:                                             ; preds = %bb.e
  %i.al = fneg nsz double %.026
  %i.am = tail call nsz double @llvm.fmuladd.f64(double %i.al, double 2.000000e+00, double 1.000000e+00)
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 123) #4
  tail call void @abort() #5
  unreachable

bb.p:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.n, %bb.m, %bb.l, %bb.f
  %.0 = phi nsz double [ %i.ab, %bb.f ], [ %i.ae, %bb.h ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.aj, %bb.l ], [ %i.ak, %bb.m ], [ %i.am, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !73
  %i.ap = fmul nsz double %.0, %i.ao
  ret double %i.ap
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #1

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
!10 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!11 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!16 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!17 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!18 = !{!"AVFilterFormatsConfig", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!19 = !{!"AVFilterLink", !10, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !13, i64 72, !12, i64 96, !15, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!20 = !{!19, !10, i64 16}
!21 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!22 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!23 = !{!"p1 omnipotent char", !9, i64 0}
!24 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!25 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!27 = !{!"AVFilterContext", !21, i64 0, !22, i64 8, !23, i64 16, !11, i64 24, !24, i64 32, !6, i64 40, !11, i64 48, !24, i64 56, !6, i64 64, !9, i64 72, !25, i64 80, !6, i64 88, !6, i64 92, !23, i64 96, !6, i64 104, !26, i64 112, !6, i64 120}
!28 = !{!27, !9, i64 72}
!29 = !{!"double", !5, i64 0}
!30 = !{!"SimpleLFO", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !6, i64 40, !6, i64 44}
!31 = !{!"AudioPulsatorContext", !21, i64 0, !6, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !6, i64 80, !6, i64 84, !30, i64 88, !30, i64 136}
!32 = !{!29, !29, i64 0}
!33 = !{!30, !29, i64 0}
!34 = distinct !{!34, !51}
!35 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!27, !24, i64 56}
!38 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!23, !23, i64 0}
!41 = !{!"p2 omnipotent char", !14, i64 0}
!42 = !{!"long", !5, i64 0}
!43 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!44 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!45 = !{!"AVFrame", !5, i64 0, !5, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 124, !42, i64 136, !42, i64 144, !12, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !43, i64 248, !6, i64 256, !15, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !42, i64 304, !44, i64 312, !6, i64 320, !26, i64 328, !26, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !9, i64 376, !13, i64 384, !42, i64 408, !6, i64 416}
!46 = !{!45, !6, i64 112}
!47 = !{!31, !29, i64 16}
!48 = !{!31, !29, i64 24}
!49 = !{!31, !29, i64 32}
!50 = !{!30, !6, i64 44}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!31, !6, i64 84}
!53 = !{!31, !29, i64 64}
!54 = !{!31, !6, i64 80}
!55 = !{!31, !29, i64 72}
!56 = !{!31, !29, i64 96}
!57 = !{!31, !29, i64 144}
!58 = !{!31, !6, i64 8}
!59 = !{!31, !6, i64 128}
!60 = !{!31, !6, i64 176}
!61 = !{!31, !29, i64 48}
!62 = !{!31, !29, i64 152}
!63 = !{!19, !6, i64 64}
!64 = !{!31, !6, i64 132}
!65 = !{!31, !6, i64 180}
!66 = !{!31, !29, i64 160}
!67 = !{!31, !29, i64 56}
!68 = !{!31, !29, i64 120}
!69 = !{!31, !29, i64 168}
!70 = !{!30, !29, i64 32}
!71 = !{!30, !29, i64 16}
!72 = !{!30, !6, i64 40}
!73 = !{!30, !29, i64 24}
end_hunk_0
