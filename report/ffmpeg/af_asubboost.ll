Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asubboost?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"asubboost\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Boost subwoofer frequencies.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_asubboost = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @asubboost_class, i32 131076, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 6, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, { i32, [4 x i8] } { i32 9, [4 x i8] zeroinitializer }, i32 184, i32 0, ptr @process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@asubboost_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @asubboost_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"dry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"set dry gain\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"wet\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"set wet gain\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"set max boost\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"decay\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"set decay\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"feedback\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"set feedback\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"cutoff\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"set cutoff\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"set slope\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"set delay\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"set channels to filter\00", align 1
@asubboost_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 8, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 16, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 32, i32 4, { double } { double 2.000000e+00 }, double 1.000000e+00, double 1.200000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 40, i32 4, { double } zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 24, i32 4, { double } { double 9.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 56, i32 4, { double } { double 1.000000e+02 }, double 5.000000e+01, double 9.000000e+02, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 64, i32 4, { double } { double 5.000000e-01 }, double 1.000000e-04, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 48, i32 4, { double } { double 2.000000e+01 }, double 1.000000e+00, double 1.000000e+02, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 120, i32 6, { ptr } { ptr @.str.3 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @av_frame_free(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val10 = load ptr, ptr %i.d, align 8, !tbaa !19 ; 8 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !22
  %i.e = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load i32, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %.val10, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !36
  %i.h = fmul nsz double %i.g, f0x401921FB54442D18
  %i.i = sitofp nsz i32 %.val.val.val to double   ; 2 uses
  %i.j = fdiv nsz double %i.h, %i.i
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.j) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.k = fmul nsz double %sin.i, 5.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %.val10, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !37
  %i.n = fdiv nsz double 1.000000e+00, %i.m
  %i.o = fadd nsz double %i.n, -1.000000e+00
  %i.p = tail call nsz double @llvm.fmuladd.f64(double %i.o, double 2.000000e+00, double 2.000000e+00)
  %i.q = tail call nsz double @llvm.sqrt.f64(double %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.val10, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %.val10, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 112
  %i.v = fmul nsz double %cos.i, -2.000000e+00
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = fmul nsz double %i.k, %i.q               ; 2 uses
  %i.y = fsub nsz double 1.000000e+00, %cos.i
  %6 = fadd nsz double %i.x, 1.000000e+00         ; 2 uses
  store double %6, ptr %i.r, align 8, !tbaa !38
  %7 = insertelement <2 x double> poison, double %i.y, i64 0
  %i.z = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul nsz <2 x double> %i.z, <double 5.000000e-01, double 1.000000e+00>
  %i.ab = fsub nsz double 1.000000e+00, %i.x
  %i.ac = insertelement <2 x double> %i.w, double %i.ab, i64 1
  %8 = insertelement <2 x double> poison, double %6, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fdiv nsz <2 x double> %i.ac, %9
  store <2 x double> %i.ad, ptr %i.s, align 8, !tbaa !39
  %i.ae = fdiv nsz <2 x double> %i.aa, %9         ; 2 uses
  store <2 x double> %i.ae, ptr %i.t, align 8, !tbaa !39
  %i.af = extractelement <2 x double> %i.ae, i64 0
  store double %i.af, ptr %i.u, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.val10, i64 48
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !41
  %i.ai = fmul nsz double %i.ah, %i.i
  %i.aj = fdiv nsz double %i.ai, 1.000000e+03
  %i.ak = fptosi double %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.val10, i64 160
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #8 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 2 uses
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(4) @.str.3) #9
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @av_channel_layout_from_string(ptr noundef nonnull %i.i, ptr noundef nonnull %i.n) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = tail call i32 @av_frame_is_writable(ptr noundef %1) #8
  %.not27 = icmp eq i32 %i.q, 0
  br i1 %.not27, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49
  %i.t = tail call ptr @ff_get_audio_buffer(ptr noundef %i.h, i32 noundef %i.s) #8 ; 3 uses
  %.not28 = icmp eq ptr %i.t, null
  br i1 %.not28, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.t, ptr noundef nonnull %1) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi ptr [ %i.t, %bb.g ], [ %1, %bb.d ]    ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.v, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !53
  %i.y = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #9
  %. = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.y)
  %i.z = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_channels, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #8 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !57
  %.not29 = icmp eq ptr %.0, %i.aa
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.f
  %.022 = phi i32 [ -12, %bb.f ], [ %i.ab, %bb.j ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = sdiv i32 %i.f, 10
  %i.h = tail call ptr @ff_get_audio_buffer(ptr noundef %0, i32 noundef %i.g) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !54
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef %0, i32 noundef 3) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_calloc(i64 noundef %i.n, i64 noundef 4) #8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !54
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !55
  %.not13 = icmp eq ptr %i.r, null
  %.not14 = icmp eq ptr %i.o, null
  %or.cond = select i1 %.not13, i1 true, i1 %.not14
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.s, align 8, !tbaa !20
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !19 ; 8 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !22
  %i.t = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load i32, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %.val15, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !36
  %i.w = fmul nsz double %i.v, f0x401921FB54442D18
  %i.x = sitofp nsz i32 %.val.val.val to double   ; 2 uses
  %i.y = fdiv nsz double %i.w, %i.x
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.y) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.z = fmul nsz double %sin.i, 5.000000e-01
  %i.aa = getelementptr inbounds nuw i8, ptr %.val15, i64 64
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !37
  %i.ac = fdiv nsz double 1.000000e+00, %i.ab
  %i.ad = fadd nsz double %i.ac, -1.000000e+00
  %i.ae = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double 2.000000e+00, double 2.000000e+00)
  %i.af = tail call nsz double @llvm.sqrt.f64(double %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val15, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %.val15, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %.val15, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.val15, i64 112
  %i.ak = fmul nsz double %cos.i, -2.000000e+00
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = fmul nsz double %i.z, %i.af             ; 2 uses
  %i.an = fsub nsz double 1.000000e+00, %cos.i
  %1 = fadd nsz double %i.am, 1.000000e+00        ; 2 uses
  store double %1, ptr %i.ag, align 8, !tbaa !38
  %2 = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ao = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul nsz <2 x double> %i.ao, <double 5.000000e-01, double 1.000000e+00>
  %i.aq = fsub nsz double 1.000000e+00, %i.am
  %i.ar = insertelement <2 x double> %i.al, double %i.aq, i64 1
  %3 = insertelement <2 x double> poison, double %1, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fdiv nsz <2 x double> %i.ar, %4
  store <2 x double> %i.as, ptr %i.ah, align 8, !tbaa !39
  %i.at = fdiv nsz <2 x double> %i.ap, %4         ; 2 uses
  store <2 x double> %i.at, ptr %i.ai, align 8, !tbaa !39
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.aj, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %.val15, i64 48
  %i.aw = load double, ptr %i.av, align 8, !tbaa !41
  %i.ax = fmul nsz double %i.aw, %i.x
  %i.ay = fdiv nsz double %i.ax, 1.000000e+03
  %i.az = fptosi double %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %.val15, i64 160
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_channel_layout_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @av_channel_layout_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !51     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  %i.h = select nsz i1 %.not, double 1.000000e+00, double 0.000000e+00
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi double [ %i.j, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.n = phi nsz double [ %i.l, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !67 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.x = load double, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !39
  %i.aa = fneg nsz <2 x double> %i.z              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 388
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = sext i32 %2 to i64
  %i.ag = mul nsw i64 %i.ae, %i.af
  %i.ah = sext i32 %3 to i64                      ; 2 uses
  %i.ai = sdiv i64 %i.ag, %i.ah                   ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add nsw i32 %2, 1
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.ae, %i.al
  %i.an = sdiv i64 %i.am, %i.ah
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !42
  %i.ar = icmp slt i32 %i.aj, %i.ao
  br i1 %i.ar, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %.not115 = icmp eq ptr %i.e, %i.d
  %sext = shl i64 %i.ai, 32
  %i.az = ashr exact i64 %sext, 32
  %i.ba = extractelement <2 x double> %i.aa, i64 0
  %shift = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.d

._crit_edge122:                                   ; preds = %bb.k, %bb.c
  ret i32 0

bb.d:                                             ; preds = %.lr.ph121, %bb.k
  %indvars.iv124 = phi i64 [ %i.az, %.lr.ph121 ], [ %indvars.iv.next125, %bb.k ] ; 10 uses
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %indvars.iv124
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !69
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv124
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !70
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv124
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !70
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv124
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70 ; 4 uses
  %i.br = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv124
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !71 ; 2 uses
  %i.bu = trunc nsw i64 %indvars.iv124 to i32
  %i.bv = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.ab, i32 noundef %i.bu) #8
  %i.bw = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.ax, i32 noundef %i.bv) #8
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.by = load i32, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.by to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not115, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cc = load ptr, ptr %i.at, align 8, !tbaa !69
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv124
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv124
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !70
  %i.ci = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.cj = sext i32 %i.ci to i64
  %i.ck = shl nsw i64 %i.cj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.ch, i64 %i.ck, i1 false)
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.0107.lcssa = phi i32 [ %i.bt, %.preheader ], [ %spec.store.select, %bb.j ]
  %i.cl = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv124
  store i32 %.0107.lcssa, ptr %i.cm, align 4, !tbaa !71
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.0107117 = phi i32 [ %i.bt, %.lr.ph ], [ %spec.store.select, %bb.j ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv ; 4 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !39
  %i.cp = load <2 x double>, ptr %i.bq, align 8, !tbaa !39
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.cr, <2 x double> %i.cp) ; 3 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0 ; 2 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = tail call nsz double @llvm.fmuladd.f64(double %i.ba, double %i.ct, double %i.cu)
  store double %i.cv, ptr %i.bq, align 8, !tbaa !39
  %i.cw = load double, ptr %i.cn, align 8, !tbaa !39
  %foldExtExtBinop = fmul nsz <2 x double> %i.cs, %shift
  %i.cx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cy = tail call nsz double @llvm.fmuladd.f64(double %i.x, double %i.cw, double %i.cx)
  store double %i.cy, ptr %i.ca, align 8, !tbaa !39
  %i.cz = sext i32 %.0107117 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cz ; 3 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !39
  %i.dc = fmul nsz double %i.p, %i.ct
  %i.dd = tail call nsz double @llvm.fmuladd.f64(double %i.db, double %i.r, double %i.dc) ; 2 uses
  store double %i.dd, ptr %i.da, align 8, !tbaa !39
  %i.de = load double, ptr %i.cn, align 8, !tbaa !39
  %i.df = fmul nsz double %i.n, %i.de
  %i.dg = tail call nsz double @llvm.fabs.f64(double %i.df)
  %i.dh = fsub nsz double 1.000000e+00, %i.dg
end_hunk_0
