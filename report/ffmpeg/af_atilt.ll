inline.NumInlined: 14
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"atilt\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Apply spectral tilt to audio.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@.compoundliteral = internal constant [3 x i32] [i32 8, i32 9, i32 -1], align 4
@ff_af_atilt = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @atilt_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 4, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @.compoundliteral }, i32 1024, i32 0, ptr @process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@atilt_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @atilt_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"set central frequency\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"set filter slope\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"set filter width\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"set filter order\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"set input level\00", align 1
@atilt_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 4, { double } { double 1.000000e+04 }, double 2.000000e+01, double 1.920000e+05, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 24, i32 4, { double } zeroinitializer, double -1.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 32, i32 4, { double } { double 1.000000e+03 }, double 1.000000e+02, double 1.000000e+04, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 40, i32 2, %union.anon.2 { i64 5 }, double 2.000000e+00, double 3.000000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 16, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 4.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %get_coeffs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val10 = load ptr, ptr %i.d, align 8, !tbaa !9 ; 5 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load i32, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %.val10, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  %i.h = sitofp nsz i32 %.val.val.val to double   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val10, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !38 ; 2 uses
  %i.o = fmul nsz double %i.j, f0x401921FB54442D18 ; 3 uses
  %i.p = fadd nsz double %i.j, %i.l
  %i.q = fdiv nsz double %i.p, %i.j
  %i.r = sitofp nsz i32 %i.g to double
  %i.s = fadd nsz double %i.r, -1.000000e+00
  %i.t = fdiv nsz double 1.000000e+00, %i.s
  %i.u = tail call nsz double @llvm.pow.f64(double %i.q, double %i.t) ; 6 uses
  %i.v = fdiv nsz double 1.000000e+00, %i.h       ; 3 uses
  %i.w = icmp sgt i32 %i.g, 0
  br i1 %i.w, label %.lr.ph.i.i, label %get_coeffs.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.val10, i64 48 ; 2 uses
  %i.y = fmul nsz double %i.v, %i.o
  %i.z = fmul nsz double %i.y, 5.000000e-01
  %i.aa = tail call nsz double @llvm.tan.f64(double %i.z) ; 2 uses
  %i.ab = fdiv nsz double 5.000000e-01, %i.h
  %i.ac = tail call nsz double @llvm.tan.f64(double %i.ab)
  %i.ad = fdiv nsz double 1.000000e+00, %i.ac     ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.g, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert15 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat16 = shufflevector <2 x double> %broadcast.splatinsert15, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %i.o, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert19 = insertelement <2 x double> poison, double %i.v, i64 0
  %broadcast.splat20 = shufflevector <2 x double> %broadcast.splatinsert19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %index
  %i.af = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.ag = fsub nsz <2 x double> %i.af, %broadcast.splat16 ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = tail call nsz double @llvm.pow.f64(double %i.u, double %i.ah)
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = tail call nsz double @llvm.pow.f64(double %i.u, double %i.aj)
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = fmul nsz <2 x double> %broadcast.splat18, %i.am
  %i.ao = fmul nsz <2 x double> %broadcast.splat20, %i.an
  %i.ap = fmul nsz <2 x double> %i.ao, splat (double 5.000000e-01)
  %i.aq = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.ap)
  %i.ar = fmul nsz <2 x double> %broadcast.splat18, %i.aq
  %i.as = fdiv nsz <2 x double> %i.ar, %broadcast.splat ; 3 uses
  %i.at = extractelement <2 x double> %i.af, i64 0
  %i.au = tail call nsz double @llvm.pow.f64(double %i.u, double %i.at)
  %i.av = extractelement <2 x double> %i.af, i64 1
  %i.aw = tail call nsz double @llvm.pow.f64(double %i.u, double %i.av)
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = fmul nsz <2 x double> %broadcast.splat18, %i.ay
  %i.ba = fmul nsz <2 x double> %broadcast.splat20, %i.az
  %i.bb = fmul nsz <2 x double> %i.ba, splat (double 5.000000e-01)
  %i.bc = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.bb)
  %i.bd = fmul nsz <2 x double> %broadcast.splat18, %i.bc
  %i.be = fdiv nsz <2 x double> %i.bd, %broadcast.splat ; 3 uses
  %i.bf = fadd nsz <2 x double> %broadcast.splat14, %i.be ; 2 uses
  %i.bg = fsub nsz <2 x double> %i.as, %broadcast.splat14
  %i.bh = fadd nsz <2 x double> %broadcast.splat14, %i.as
  %i.bi = fsub nsz <2 x double> %i.be, %broadcast.splat14
  %6 = shufflevector <2 x double> %i.be, <2 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <2 x double> %i.as, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = fdiv nsz <4 x double> %6, %7
  %i.bj = shufflevector <2 x double> %i.bh, <2 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bl = fdiv nsz <4 x double> %i.bj, %i.bk
  %interleaved.vec = shufflevector <4 x double> %8, <4 x double> %i.bl, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ae, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %get_coeffs.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %i.bn = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.v, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i ; 2 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bv = uitofp nneg i32 %i.bu to double         ; 2 uses
  %i.bw = fsub nsz double %i.bv, %i.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.by = tail call nsz double @llvm.pow.f64(double %i.u, double %i.bw)
  %i.bz = tail call nsz double @llvm.pow.f64(double %i.u, double %i.bv)
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.by, i64 1
  %i.cc = fmul nsz <2 x double> %i.bo, %i.cb
  %i.cd = fmul nsz <2 x double> %i.bq, %i.cc
  %i.ce = fmul nsz <2 x double> %i.cd, splat (double 5.000000e-01)
  %i.cf = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.ce)
  %i.cg = fmul nsz <2 x double> %i.bo, %i.cf
  %i.ch = fdiv nsz <2 x double> %i.cg, %i.bs      ; 4 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0 ; 2 uses
  %i.cj = fadd nsz double %i.ad, %i.ci            ; 2 uses
  %i.ck = extractelement <2 x double> %i.ch, i64 1 ; 2 uses
  %i.cl = fsub nsz double %i.ck, %i.ad
  %i.cm = fadd nsz double %i.ad, %i.ck
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cl, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv nsz <2 x double> %i.co, %i.cq
  store <2 x double> %i.cr, ptr %i.bx, align 8, !tbaa !39
  %i.cs = fsub nsz double %i.ci, %i.ad
  %i.ct = insertelement <2 x double> %i.ch, double %i.cs, i64 1
  %i.cu = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x double> %i.cu, double %i.cj, i64 1
  %i.cw = fdiv nsz <2 x double> %i.ct, %i.cv
  store <2 x double> %i.cw, ptr %i.bt, align 8, !tbaa !39
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_coeffs.exit, label %scalar.ph, !llvm.loop !44

get_coeffs.exit:                                  ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ 0, %middle.block ], [ 0, %scalar.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.i = tail call i32 @av_frame_is_writable(ptr noundef %1) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call ptr @ff_get_audio_buffer(ptr noundef %i.h, i32 noundef %i.k) #8 ; 3 uses
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.m = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.l, ptr noundef nonnull %1) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ %1, %bb.a ]    ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1016
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58
  %i.s = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #9
  %. = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.p, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #8 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not21 = icmp eq ptr %.0, %i.u
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.016 = phi i32 [ %i.v, %bb.g ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  switch i32 %i.f, label %bb.c [
    i32 8, label %.sink.split
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %filter_channels_dblp.sink = phi ptr [ @filter_channels_dblp, %bb.b ], [ @filter_channels_fltp, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1016
  store ptr %filter_channels_dblp.sink, ptr %i.g, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.h = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef 60) #8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  store ptr %i.h, ptr %i.i, align 8, !tbaa !60
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %get_coeffs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.j, align 8, !tbaa !20
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !9  ; 5 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !21
  %i.k = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load i32, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  %i.n = sitofp nsz i32 %.val.val.val to double   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !36 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val9, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !38 ; 2 uses
  %i.u = fmul nsz double %i.p, f0x401921FB54442D18 ; 3 uses
  %i.v = fadd nsz double %i.p, %i.r
  %i.w = fdiv nsz double %i.v, %i.p
  %i.x = sitofp nsz i32 %i.m to double
  %i.y = fadd nsz double %i.x, -1.000000e+00
  %i.z = fdiv nsz double 1.000000e+00, %i.y
  %i.aa = tail call nsz double @llvm.pow.f64(double %i.w, double %i.z) ; 6 uses
  %i.ab = fdiv nsz double 1.000000e+00, %i.n      ; 3 uses
  %i.ac = icmp sgt i32 %i.m, 0
  br i1 %i.ac, label %.lr.ph.i.i, label %get_coeffs.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.val9, i64 48 ; 2 uses
  %i.ae = fmul nsz double %i.ab, %i.u
  %i.af = fmul nsz double %i.ae, 5.000000e-01
  %i.ag = tail call nsz double @llvm.tan.f64(double %i.af) ; 2 uses
  %i.ah = fdiv nsz double 5.000000e-01, %i.n
  %i.ai = tail call nsz double @llvm.tan.f64(double %i.ah)
  %i.aj = fdiv nsz double 1.000000e+00, %i.ai     ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.m, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat16 = shufflevector <2 x double> %broadcast.splatinsert15, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %index
  %i.al = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 3 uses
  %i.am = fsub nsz <2 x double> %i.al, %broadcast.splat14 ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.an)
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.ap)
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fmul nsz <2 x double> %broadcast.splat16, %i.as
  %i.au = fmul nsz <2 x double> %broadcast.splat18, %i.at
  %i.av = fmul nsz <2 x double> %i.au, splat (double 5.000000e-01)
  %i.aw = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.av)
  %i.ax = fmul nsz <2 x double> %broadcast.splat16, %i.aw
  %i.ay = fdiv nsz <2 x double> %i.ax, %broadcast.splat ; 3 uses
  %i.az = extractelement <2 x double> %i.al, i64 0
  %i.ba = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.az)
  %i.bb = extractelement <2 x double> %i.al, i64 1
  %i.bc = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.bb)
  %i.bd = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fmul nsz <2 x double> %broadcast.splat16, %i.be
  %i.bg = fmul nsz <2 x double> %broadcast.splat18, %i.bf
  %i.bh = fmul nsz <2 x double> %i.bg, splat (double 5.000000e-01)
  %i.bi = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.bh)
  %i.bj = fmul nsz <2 x double> %broadcast.splat16, %i.bi
  %i.bk = fdiv nsz <2 x double> %i.bj, %broadcast.splat ; 3 uses
  %i.bl = fadd nsz <2 x double> %broadcast.splat12, %i.bk ; 2 uses
  %i.bm = fsub nsz <2 x double> %i.ay, %broadcast.splat12
  %i.bn = fadd nsz <2 x double> %broadcast.splat12, %i.ay
  %i.bo = fsub nsz <2 x double> %i.bk, %broadcast.splat12
  %1 = shufflevector <2 x double> %i.bk, <2 x double> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <2 x double> %i.ay, <2 x double> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = fdiv nsz <4 x double> %1, %2
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = fdiv nsz <4 x double> %i.bp, %i.bq
  %interleaved.vec = shufflevector <4 x double> %3, <4 x double> %i.br, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ak, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %get_coeffs.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %i.bt = insertelement <2 x double> poison, double %i.u, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i.i ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.cb = uitofp nneg i32 %i.ca to double         ; 2 uses
  %i.cc = fsub nsz double %i.cb, %i.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.cc)
  %i.cf = tail call nsz double @llvm.pow.f64(double %i.aa, double %i.cb)
  %i.cg = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.ce, i64 1
  %i.ci = fmul nsz <2 x double> %i.bu, %i.ch
  %i.cj = fmul nsz <2 x double> %i.bw, %i.ci
  %i.ck = fmul nsz <2 x double> %i.cj, splat (double 5.000000e-01)
  %i.cl = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.ck)
  %i.cm = fmul nsz <2 x double> %i.bu, %i.cl
  %i.cn = fdiv nsz <2 x double> %i.cm, %i.by      ; 4 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fadd nsz double %i.aj, %i.co            ; 2 uses
  %i.cq = extractelement <2 x double> %i.cn, i64 1 ; 2 uses
  %i.cr = fsub nsz double %i.cq, %i.aj
  %i.cs = fadd nsz double %i.aj, %i.cq
  %i.ct = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cr, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv nsz <2 x double> %i.cu, %i.cw
  store <2 x double> %i.cx, ptr %i.cd, align 8, !tbaa !39
  %i.cy = fsub nsz double %i.co, %i.aj
  %i.cz = insertelement <2 x double> %i.cn, double %i.cy, i64 1
  %i.da = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %i.da, double %i.cp, i64 1
  %i.dc = fdiv nsz <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.bz, align 8, !tbaa !39
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_coeffs.exit, label %scalar.ph, !llvm.loop !62

get_coeffs.exit:                                  ; preds = %scalar.ph, %middle.block, %bb.d, %bb.c
  %.0 = phi i32 [ -12, %bb.c ], [ 0, %bb.d ], [ 0, %middle.block ], [ 0, %scalar.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_channels_fltp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.e = load i32, ptr %i.d, align 4, !tbaa !63
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i                      ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !64
  %i.s = fptrunc nsz double %i.r to float
  %i.t = icmp slt i32 %i.k, %i.p
  br i1 %i.t, label %.lr.ph62, label %._crit_edge63.split

.lr.ph62:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br i1 %i.ac, label %.lr.ph62.split, label %._crit_edge63.split

.lr.ph62.split:                                   ; preds = %.lr.ph62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !48 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph58.preheader, label %._crit_edge63.split

.lr.ph58.preheader:                               ; preds = %.lr.ph62.split
  %sext = shl i64 %i.j, 32
  %i.al = ashr exact i64 %sext, 32
  %sext85 = shl i64 %i.o, 32
  %wide.trip.count80 = ashr exact i64 %sext85, 32
  %wide.trip.count75 = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %wide.trip.count70 = zext nneg i32 %i.aj to i64
  br label %.lr.ph58

._crit_edge63.split:                              ; preds = %._crit_edge59, %.lr.ph62, %.lr.ph62.split, %bb.a
  ret i32 0

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %._crit_edge59
  %indvars.iv77 = phi i64 [ %i.al, %.lr.ph58.preheader ], [ %indvars.iv.next78, %._crit_edge59 ] ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv77
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !66 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv77
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  br label %.lr.ph

._crit_edge59:                                    ; preds = %._crit_edge
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge63.split, label %.lr.ph58, !llvm.loop !67

.lr.ph:                                           ; preds = %.lr.ph58, %._crit_edge
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next73, %._crit_edge ] ; 4 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv72 ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !68
  %i.au = fptrunc nsz double %i.at to float       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !70
  %i.ax = fptrunc nsz double %i.aw to float       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !71
  %i.ba = fptrunc nsz double %i.az to float       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !72
  %i.bd = fptrunc nsz double %i.bc to float       ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv72, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx ; 5 uses
  %.not = icmp eq i64 %indvars.iv72, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv67
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !73
  %i.bi = fmul nsz float %i.bh, %i.s              ; 2 uses
  %i.bj = load float, ptr %i.be, align 4, !tbaa !73
  %i.bk = fmul nsz float %i.bj, %i.bd
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bi, float %i.ba, float %i.bk)
  %i.bm = load float, ptr %i.bf, align 4, !tbaa !73
  %i.bn = fneg nsz float %i.bm
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %i.ax, float %i.bl) ; 2 uses
  store float %i.bi, ptr %i.be, align 4, !tbaa !73
  store float %i.bo, ptr %i.bf, align 4, !tbaa !73
  %i.bp = fmul nsz float %i.bo, %i.au
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv67
  store float %i.bp, ptr %i.bq, align 4, !tbaa !73
end_hunk_0
