Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_bilateral?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"bilateral\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Apply Bilateral filter.\00", align 1
@bilateral_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [56 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 93, i32 95, i32 97, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 -1], align 16
@ff_vf_bilateral = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @bilateral_inputs, ptr @ff_video_default_filterpad, ptr @bilateral_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 262472, i32 0, ptr @process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@bilateral_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @bilateral_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"sigmaS\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"set spatial sigma\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sigmaR\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"set range sigma\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"set planes to filter\00", align 1
@bilateral_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 5, { double } { double 1.000000e-01 }, double 0.000000e+00, double 5.120000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 12, i32 5, { double } { double 1.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 16, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 262216
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 262248
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 262280
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 262312
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 262344
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 262376
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 262408
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 262440
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.n) #9
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.o) #9
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.p) #9
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.q) #9
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.r) #9
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.s) #9
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.t) #9
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.u) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !20
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #9 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %config_params.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !27
  %6 = fdiv nsz float f0xBFB504F3, %i.i
  %i.j = tail call nsz float @llvm.exp.f32(float %6) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 64
  store float %i.j, ptr %i.k, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.g, 31
  br i1 %.not.i, label %config_params.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %notmask.i = shl nsw i32 -1, %i.g
  %7 = xor i32 %notmask.i, -1
  %8 = uitofp nneg i32 %7 to float
  %9 = fmul nsz float %i.e, %8
  %10 = fdiv nsz float 1.000000e+00, %9
  %i.l = shl nuw nsw i32 1, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 68 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 2 uses
  %11 = fmul nsz float %10, 0.000000e+00
  %12 = fadd nsz float %11, 1.000000e+00
  %13 = fmul nsz float %i.j, %12                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  %broadcast.splatinsert = insertelement <4 x float> poison, float %13, i64 0
  %broadcast.splat.a = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x float> %broadcast.splat.a, ptr %14, align 4, !tbaa !29
  store <4 x float> %broadcast.splat.a, ptr %15, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %config_params.exit, label %vector.body, !llvm.loop !30

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  store float %13, ptr %i.o, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %config_params.exit, label %scalar.ph, !llvm.loop !33

config_params.exit:                               ; preds = %vector.body, %scalar.ph, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ 0, %scalar.ph ], [ 0, %vector.body ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.i = tail call i32 @av_frame_is_writable(ptr noundef %1) #9
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  %i.n = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.k, i32 noundef %i.m) #9 ; 3 uses
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.n, ptr noundef %1) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @bilateralh_planes, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.r) #9 ; 0 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !53
  %i.u = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @bilateralv_planes, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.t) #9 ; 0 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !53
  %i.w = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @bilateralo_planes, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.v) #9 ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not21 = icmp eq ptr %.0, %i.x
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.018 = phi i32 [ %i.y, %bb.g ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.i, ptr %i.j, align 4, !tbaa !26
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !27
  %1 = fdiv nsz float f0xBFB504F3, %i.p
  %i.q = tail call nsz float @llvm.exp.f32(float %1) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 64
  store float %i.q, ptr %i.r, align 8, !tbaa !28
  %.not.i = icmp eq i32 %i.n, 31
  br i1 %.not.i, label %config_params.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %notmask.i = shl nsw i32 -1, %i.n
  %2 = xor i32 %notmask.i, -1
  %3 = uitofp nneg i32 %2 to float
  %4 = fmul nsz float %i.l, %3
  %5 = fdiv nsz float 1.000000e+00, %4
  %i.s = shl nuw nsw i32 1, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 68 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 2 uses
  %6 = fmul nsz float %5, 0.000000e+00
  %7 = fadd nsz float %6, 1.000000e+00
  %8 = fmul nsz float %i.q, %7                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 3
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat.a = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> %broadcast.splat.a, ptr %9, align 4, !tbaa !29
  store <4 x float> %broadcast.splat.a, ptr %10, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %config_params.exit, label %vector.body, !llvm.loop !57

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  store float %8, ptr %i.v, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %config_params.exit, label %scalar.ph, !llvm.loop !58

config_params.exit:                               ; preds = %vector.body, %scalar.ph, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !48
  %i.y = sub nsw i32 0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !59
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = ashr i32 %i.y, %i.ab
  %i.ad = sub nsw i32 0, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !62
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !49
  %i.am = sub nsw i32 0, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = ashr i32 %i.am, %i.ap
  %i.ar = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !49 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !62
  store i32 %i.aw, ptr %i.as, align 8, !tbaa !62
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !54
  %i.az = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ay) #9 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !20
  %i.bb = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.b) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !53
  %.not9495 = icmp sgt i32 %i.az, 0
  br i1 %.not9495, label %.lr.ph, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %config_params.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 262216
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 262248
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 262280
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 262312
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 262344
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 262376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 262408
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 262440
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load i32, ptr %i.ba, align 8, !tbaa !20
  %i.bm = sext i32 %i.bl to i64
  %.not94 = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %.not94, label %bb.c, label %.critedge._crit_edge, !llvm.loop !64

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 11 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !62 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !62
  %i.br = mul nsw i32 %i.bq, %i.bo
  %i.bs = sext i32 %i.br to i64                   ; 4 uses
  %i.bt = tail call noalias ptr @av_calloc(i64 noundef %i.bs, i64 noundef 4) #9
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !65
  %i.bv = tail call noalias ptr @av_calloc(i64 noundef %i.bs, i64 noundef 4) #9
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !65
  %i.bx = tail call noalias ptr @av_calloc(i64 noundef %i.bs, i64 noundef 4) #9
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !65
  %i.bz = tail call noalias ptr @av_calloc(i64 noundef %i.bs, i64 noundef 4) #9
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !65
  %i.cb = sext i32 %i.bo to i64                   ; 4 uses
  %i.cc = tail call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !65
  %i.ce = tail call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !65
  %i.cg = tail call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !65
  %i.ci = tail call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !65
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !65
  %.not = icmp eq ptr %i.ck, null
  br i1 %.not, label %.critedge._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cl = load ptr, ptr %i.bw, align 8, !tbaa !65
  %.not89 = icmp eq ptr %i.cl, null
  br i1 %.not89, label %.critedge._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !65
  %.not90 = icmp eq ptr %i.cm, null
  br i1 %.not90, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !65
  %.not91 = icmp eq ptr %i.cn, null
  br i1 %.not91, label %.critedge._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !65
  %.not92 = icmp eq ptr %i.co, null
  br i1 %.not92, label %.critedge._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.g
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !65
  %.not93 = icmp eq ptr %i.cp, null
  br i1 %.not93, label %.critedge._crit_edge, label %bb.b

.critedge._crit_edge:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.critedge, %config_params.exit
  %spec.select = phi i32 [ 0, %config_params.exit ], [ -12, %.critedge ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ -12, %bb.d ], [ -12, %bb.c ], [ 0, %bb.b ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bilateralh_planes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 262248
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 262280
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bilateralh_byte.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bilateralh_byte.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bilateralh_byte.exit ] ; 9 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.h, %i.v
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bilateralh_byte.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.i, align 4, !tbaa !26
  %i.y = icmp slt i32 %i.x, 9
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !62  ; 12 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.ad, %i.l
  %i.af = sdiv i64 %i.ae, %i.m                    ; 3 uses
  %i.ag = trunc i64 %i.af to i32
end_hunk_0
begin_hunk_1_@bilateralo_planes:bb.a
bb.g:                                             ; preds = %bb.g, %.epil.preheader81
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader81 ], [ %indvars.iv.next.i.epil, %bb.g ] ; 3 uses
  %epil.iter83 = phi i64 [ 0, %.epil.preheader81 ], [ %epil.iter83.next, %bb.g ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !29
  %i.cg = tail call i64 @llvm.lrint.i64.f32(float %i.cf)
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.i.epil
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !69
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter83.next = add i64 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i64 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %._crit_edge.i, label %bb.g, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.g, %._crit_edge.i.unr-lcssa
  %indvars.iv.next8.i = add nsw i64 %indvars.iv7.i, 1 ; 2 uses
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next8.i, %wide.trip.count10.i
  br i1 %exitcond11.not.i, label %bilateralo_byte.exit, label %.lr.ph.i, !llvm.loop !143

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 6 uses
  %niter87 = phi i64 [ %niter87.next.3, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = tail call i64 @llvm.lrint.i64.f32(float %i.ck)
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !69
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = tail call i64 @llvm.lrint.i64.f32(float %i.cp)
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next.i
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !69
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.1
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !29
  %i.cv = tail call i64 @llvm.lrint.i64.f32(float %i.cu)
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next.i.1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !69
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.i.2
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !29
  %i.da = tail call i64 @llvm.lrint.i64.f32(float %i.cz)
  %i.db = trunc i64 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next.i.2
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !69
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter87.next.3 = add i64 %niter87, 4           ; 2 uses
  %niter87.ncmp.3 = icmp eq i64 %niter87.next.3, %unroll_iter86
  br i1 %niter87.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !144

bb.h:                                             ; preds = %bb.e
  %i.dd = ashr i32 %i.bp, 1
  %i.de = icmp slt i32 %i.bk, %i.bn
  br i1 %i.de, label %.lr.ph4.i56, label %bilateralo_byte.exit

.lr.ph4.i56:                                      ; preds = %bb.h
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !68
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !65
  %i.dj = icmp sgt i32 %i.be, 0
  br i1 %i.dj, label %.lr.ph.preheader.i57, label %bilateralo_byte.exit

.lr.ph.preheader.i57:                             ; preds = %.lr.ph4.i56
  %sext.i58 = shl i64 %i.bj, 32
  %i.dk = ashr exact i64 %sext.i58, 32
  %i.dl = sext i32 %i.dd to i64
  %i.dm = zext nneg i32 %i.be to i64              ; 3 uses
  %sext14.i59 = shl i64 %i.bm, 32
  %wide.trip.count10.i60 = ashr exact i64 %sext14.i59, 32
  %xtraiter = and i64 %i.dm, 3                    ; 3 uses
  %i.dn = icmp ult i32 %i.be, 4
  %unroll_iter = and i64 %i.dm, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %._crit_edge.i67, %.lr.ph.preheader.i57
  %indvars.iv7.i63 = phi i64 [ %i.dk, %.lr.ph.preheader.i57 ], [ %indvars.iv.next8.i68, %._crit_edge.i67 ] ; 3 uses
  %i.do = mul nsw i64 %indvars.iv7.i63, %i.dl
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.do ; 5 uses
  %i.dq = mul nsw i64 %indvars.iv7.i63, %i.dm
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dq ; 5 uses
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i62.new

._crit_edge.i67.unr-lcssa:                        ; preds = %.lr.ph.i62.new
  br i1 %lcmp.mod.not, label %._crit_edge.i67, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i67.unr-lcssa, %.lr.ph.i62
  %indvars.iv.i64.epil.init = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i65.3, %._crit_edge.i67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i64.epil = phi i64 [ %indvars.iv.i64.epil.init, %.epil.preheader ], [ %indvars.iv.next.i65.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i64.epil
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !29
  %i.du = tail call i64 @llvm.lrint.i64.f32(float %i.dt)
  %i.dv = trunc i64 %i.du to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.i64.epil
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !83
  %indvars.iv.next.i65.epil = add nuw nsw i64 %indvars.iv.i64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i67, label %bb.i, !llvm.loop !145

._crit_edge.i67:                                  ; preds = %bb.i, %._crit_edge.i67.unr-lcssa
  %indvars.iv.next8.i68 = add nsw i64 %indvars.iv7.i63, 1 ; 2 uses
  %exitcond11.not.i69 = icmp eq i64 %indvars.iv.next8.i68, %wide.trip.count10.i60
  br i1 %exitcond11.not.i69, label %bilateralo_byte.exit, label %.lr.ph.i62, !llvm.loop !146

.lr.ph.i62.new:                                   ; preds = %.lr.ph.i62, %.lr.ph.i62.new
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65.3, %.lr.ph.i62.new ], [ 0, %.lr.ph.i62 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i62.new ], [ 0, %.lr.ph.i62 ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i64
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !29
  %i.dz = tail call i64 @llvm.lrint.i64.f32(float %i.dy)
  %i.ea = trunc i64 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.i64
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !83
  %indvars.iv.next.i65 = or disjoint i64 %indvars.iv.i64, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i65
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !29
  %i.ee = tail call i64 @llvm.lrint.i64.f32(float %i.ed)
  %i.ef = trunc i64 %i.ee to i16
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.next.i65
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !83
  %indvars.iv.next.i65.1 = or disjoint i64 %indvars.iv.i64, 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i65.1
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !29
  %i.ej = tail call i64 @llvm.lrint.i64.f32(float %i.ei)
  %i.ek = trunc i64 %i.ej to i16
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.next.i65.1
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !83
  %indvars.iv.next.i65.2 = or disjoint i64 %indvars.iv.i64, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i65.2
  %i.en = load float, ptr %i.em, align 4, !tbaa !29
  %i.eo = tail call i64 @llvm.lrint.i64.f32(float %i.en)
  %i.ep = trunc i64 %i.eo to i16
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.next.i65.2
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !83
  %indvars.iv.next.i65.3 = add nuw nsw i64 %indvars.iv.i64, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i67.unr-lcssa, label %.lr.ph.i62.new, !llvm.loop !147

bilateralo_byte.exit:                             ; preds = %._crit_edge.i67, %._crit_edge.i, %.lr.ph4.i56, %bb.h, %.lr.ph4.i, %bb.f, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = load i32, ptr %i.f, align 8, !tbaa !20
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.b, label %._crit_edge, !llvm.loop !148
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #7

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !6, i64 24}
!21 = !{!"BilateralContext", !11, i64 0, !22, i64 8, !22, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 48, !22, i64 64, !7, i64 68, !7, i64 262216, !7, i64 262248, !7, i64 262280, !7, i64 262312, !7, i64 262344, !7, i64 262376, !7, i64 262408, !7, i64 262440}
!22 = !{!"float", !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !22, i64 12}
!26 = !{!21, !6, i64 28}
!27 = !{!21, !22, i64 8}
!28 = !{!21, !22, i64 64}
!29 = !{!22, !22, i64 0}
!30 = distinct !{!30, !24, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !24, !32, !31}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!36 = !{!37, !38, i64 16}
!37 = !{!"AVFilterLink", !38, i64 0, !15, i64 8, !38, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !39, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !40, i64 72, !39, i64 96, !41, i64 104, !6, i64 112, !6, i64 116, !42, i64 120, !42, i64 168}
!38 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!39 = !{!"AVRational", !6, i64 0, !6, i64 4}
!40 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!41 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!42 = !{!"AVFilterFormatsConfig", !43, i64 0, !43, i64 8, !44, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!43 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!44 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!45 = !{!10, !16, i64 56}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!48 = !{!37, !6, i64 40}
!49 = !{!37, !6, i64 44}
!50 = !{!51, !35, i64 0}
!51 = !{!"ThreadData", !35, i64 0, !35, i64 8}
!52 = !{!51, !35, i64 8}
!53 = !{!21, !6, i64 20}
!54 = !{!37, !6, i64 36}
!55 = !{!56, !6, i64 16}
!56 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!57 = distinct !{!57, !24, !31, !32}
!58 = distinct !{!58, !24, !32, !31}
!59 = !{!60, !7, i64 9}
!60 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !61, i64 16, !7, i64 24, !14, i64 104}
!61 = !{!"long", !7, i64 0}
!62 = !{!6, !6, i64 0}
!63 = !{!60, !7, i64 10}
!64 = distinct !{!64, !24}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 float", !12, i64 0}
!67 = !{!21, !6, i64 16}
!68 = !{!14, !14, i64 0}
!69 = !{!7, !7, i64 0}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = !{!79, !74}
!79 = distinct !{!79, !75}
!80 = !{!79}
!81 = distinct !{!81, !24, !31, !32}
!82 = distinct !{!82, !24, !31}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !7, i64 0}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !24, !31, !32}
!94 = distinct !{!94, !24, !31}
!95 = distinct !{!95, !24}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !24, !31, !32}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !24}
!105 = distinct !{!105, !24}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110, !111}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = !{!110}
!113 = !{!111}
!114 = distinct !{!114, !24, !31, !32}
!115 = distinct !{!115, !24, !31}
!116 = distinct !{!116, !24, !31}
!117 = distinct !{!117, !24}
!118 = distinct !{!118, !24}
!119 = !{!120}
!120 = distinct !{!120, !121}
!121 = distinct !{!121, !"LVerDomain"}
!122 = !{!123}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !24, !31, !32}
!125 = distinct !{!125, !103}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !24}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132, !133}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !130}
!134 = !{!132}
!135 = !{!133}
!136 = distinct !{!136, !24, !31, !32}
!137 = distinct !{!137, !24, !31}
!138 = distinct !{!138, !24, !31}
!139 = distinct !{!139, !24}
!140 = distinct !{!140, !24}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !103}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24}
!145 = distinct !{!145, !103}
!146 = distinct !{!146, !24}
!147 = distinct !{!147, !24}
!148 = distinct !{!148, !24}
end_hunk_1
