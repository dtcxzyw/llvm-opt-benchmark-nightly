inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Table = type { ptr, float, float, i32 }
%struct.AttenuateVars = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Params = type { ptr, ptr, ptr, ptr, ptr, %struct.Table }
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, ptr, i64 }
%struct.CommGrid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str.1 = private unnamed_addr constant [37 x i8] c"Error: invalid axial expansion order\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s%ld%s%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"2D Tracks Completed = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@str.2 = private unnamed_addr constant [29 x i8] c"Starting transport sweep ...\00", align 1
@str.3 = private unnamed_addr constant [22 x i8] c"\0A Please input 0 or 2\00", align 1
@str.4 = private unnamed_addr constant [22 x i8] c"Renormalizing Flux...\00", align 1
@str.5 = private unnamed_addr constant [29 x i8] c"Renormalizing Flux Complete.\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @attenuate_fluxes(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !4 ; 3 uses
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.7246.0.copyload = load i32, ptr %.sroa.7246.0..sroa_idx, align 4, !tbaa !4 ; 30 uses
  %.sroa.21260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.21260.0.copyload = load i32, ptr %.sroa.21260.0..sroa_idx, align 4, !tbaa !4
  %.sroa.22261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.sroa.22261.0.copyload = load float, ptr %.sroa.22261.0..sroa_idx, align 4, !tbaa !8
  %.sroa.3.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.3.0.copyload318 = load ptr, ptr %.sroa.3.0..sroa_idx317, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0.copyload320 = load float, ptr %.sroa.4.0..sroa_idx319, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.a = load ptr, ptr %8, align 8, !tbaa !13     ; 13 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 13 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 13 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 19 uses
  %i.k = ptrtoaddr ptr %i.j to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 20 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 19 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 20 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 11 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 9 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 15 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 9 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 9 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 9 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27 ; 9 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 3 uses
  %i.ap = mul i32 %.sroa.4.0.copyload, %.sroa.3.0.copyload
  %i.aq = mul i32 %i.ap, %.sroa.21260.0.copyload
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %.sroa.22261.0.copyload, %i.ar ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !28 ; 2 uses
  %i.av = fdiv float %i.au, %i.as
  %i.aw = fptosi float %i.av to i32               ; 2 uses
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fadd float %i.ax, 5.000000e-01
  %i.az = fneg float %i.as
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %i.au) ; 7 uses
  %i.bb = srem i32 %i.aw, %.sroa.4.0.copyload     ; 3 uses
  %i.bc = load float, ptr %0, align 8, !tbaa !31
  %i.bd = fmul float %7, %i.bc                    ; 6 uses
  %i.be = fmul float %6, %6                       ; 6 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !32
  %i.bg = sext i32 %i.bb to i64                   ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10 ; 8 uses
  %i.bj = icmp eq i32 %i.bb, 0
  br i1 %i.bj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bk = fsub float %i.ba, %i.as                 ; 5 uses
  %i.bl = icmp sgt i32 %.sroa.7246.0.copyload, 0
  br i1 %i.bl, label %.lr.ph336, label %._crit_edge360

.lr.ph336:                                        ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bg
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !10 ; 3 uses
  %i.bu = fmul float %i.as, 2.000000e+00          ; 3 uses
  %i.bv = fmul float %i.as, %i.bu                 ; 2 uses
  %wide.trip.count372 = zext nneg i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check555 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.memcheck530

vector.memcheck530:                               ; preds = %.lr.ph336
  %i.bw = ptrtoaddr ptr %i.bt to i64              ; 3 uses
  %i.bx = ptrtoaddr ptr %i.br to i64              ; 3 uses
  %i.by = ptrtoaddr ptr %i.bp to i64              ; 3 uses
  %i.bz = sub i64 %i.b, %i.e
  %diff.check531 = icmp ugt i64 %i.bz, -16
  %i.ca = sub i64 %i.b, %i.h
  %diff.check532 = icmp ugt i64 %i.ca, -16
  %conflict.rdx533 = or i1 %diff.check531, %diff.check532
  %i.cb = sub i64 %i.by, %i.b
  %diff.check534 = icmp ugt i64 %i.cb, -16
  %conflict.rdx535 = or i1 %conflict.rdx533, %diff.check534
  %i.cc = sub i64 %i.bx, %i.b
  %diff.check536 = icmp ugt i64 %i.cc, -16
  %conflict.rdx537 = or i1 %conflict.rdx535, %diff.check536
  %i.cd = sub i64 %i.bw, %i.b
  %diff.check538 = icmp ugt i64 %i.cd, -16
  %conflict.rdx539 = or i1 %conflict.rdx537, %diff.check538
  %i.ce = sub i64 %i.e, %i.h
  %diff.check540 = icmp ugt i64 %i.ce, -16
  %conflict.rdx541 = or i1 %conflict.rdx539, %diff.check540
  %i.cf = sub i64 %i.by, %i.e
  %diff.check542 = icmp ugt i64 %i.cf, -16
  %conflict.rdx543 = or i1 %conflict.rdx541, %diff.check542
  %i.cg = sub i64 %i.bx, %i.e
  %diff.check544 = icmp ugt i64 %i.cg, -16
  %conflict.rdx545 = or i1 %conflict.rdx543, %diff.check544
  %i.ch = sub i64 %i.bw, %i.e
  %diff.check546 = icmp ugt i64 %i.ch, -16
  %conflict.rdx547 = or i1 %conflict.rdx545, %diff.check546
  %i.ci = sub i64 %i.by, %i.h
  %diff.check548 = icmp ugt i64 %i.ci, -16
  %conflict.rdx549 = or i1 %conflict.rdx547, %diff.check548
  %i.cj = sub i64 %i.bx, %i.h
  %diff.check550 = icmp ugt i64 %i.cj, -16
  %conflict.rdx551 = or i1 %conflict.rdx549, %diff.check550
  %i.ck = sub i64 %i.bw, %i.h
  %diff.check552 = icmp ugt i64 %i.ck, -16
  %conflict.rdx553 = or i1 %conflict.rdx551, %diff.check552
  br i1 %conflict.rdx553, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %vector.memcheck530
  %n.vec558 = and i64 %wide.trip.count372, 2147483644 ; 3 uses
  %broadcast.splatinsert559 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat560 = shufflevector <4 x float> %broadcast.splatinsert559, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert561 = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat562 = shufflevector <4 x float> %broadcast.splatinsert561, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert563 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat564 = shufflevector <4 x float> %broadcast.splatinsert563, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph556
  %index566 = phi i64 [ 0, %vector.ph556 ], [ %index.next570, %vector.body565 ] ; 7 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %index566
  %wide.load567 = load <4 x float>, ptr %i.cl, align 4, !tbaa !8 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index566
  %wide.load568 = load <4 x float>, ptr %i.cm, align 4, !tbaa !8 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index566
  %wide.load569 = load <4 x float>, ptr %i.cn, align 4, !tbaa !8 ; 2 uses
  %i.co = fsub <4 x float> %wide.load567, %wide.load569
  %i.cp = fdiv <4 x float> %i.co, %broadcast.splat560 ; 2 uses
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load568, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load567)
  %i.cr = fadd <4 x float> %i.cq, %wide.load569
  %i.cs = fdiv <4 x float> %i.cr, %broadcast.splat562 ; 3 uses
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %broadcast.splat564, <4 x float> %wide.load568)
  %i.cu = fmul <4 x float> %broadcast.splat564, %i.cs
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat564, <4 x float> %i.ct)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index566
  store <4 x float> %i.cv, ptr %i.cw, align 4, !tbaa !8
  %i.cx = fmul <4 x float> %i.cs, splat (float 2.000000e+00)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %broadcast.splat564, <4 x float> %i.cp)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index566
  store <4 x float> %i.cy, ptr %i.cz, align 4, !tbaa !8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index566
  store <4 x float> %i.cs, ptr %i.da, align 4, !tbaa !8
  %index.next570 = add nuw i64 %index566, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next570, %n.vec558
  br i1 %i.db, label %middle.block571, label %vector.body565, !llvm.loop !37

middle.block571:                                  ; preds = %vector.body565
  %cmp.n572 = icmp eq i64 %n.vec558, %wide.trip.count372
  br i1 %cmp.n572, label %.lr.ph338, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %vector.memcheck530, %.lr.ph336, %middle.block571
  %indvars.iv369.ph = phi i64 [ 0, %vector.memcheck530 ], [ 0, %.lr.ph336 ], [ %n.vec558, %middle.block571 ]
  br label %scalar.ph554

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %scalar.ph554 ], [ %indvars.iv369.ph, %scalar.ph554.preheader ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv369
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !8 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv369
  %i.df = load float, ptr %i.de, align 4, !tbaa !8 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv369
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8 ; 2 uses
  %i.di = fsub float %i.dd, %i.dh
  %9 = fdiv float %i.di, %i.bu                    ; 2 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.df, float -2.000000e+00, float %i.dd)
  %10 = fadd float %i.dj, %i.dh
  %11 = fdiv float %10, %i.bv                     ; 3 uses
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %i.bk, float %i.df)
  %13 = fmul float %i.bk, %11
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %i.bk, float %12)
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  store float %14, ptr %15, align 4, !tbaa !8
  %16 = fmul float %11, 2.000000e+00
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %i.bk, float %9)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv369
  store float %17, ptr %i.dk, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv369
  store float %11, ptr %i.dl, align 4, !tbaa !8
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %.lr.ph338, label %scalar.ph554, !llvm.loop !40

bb.c:                                             ; preds = %bb.a
  %i.dm = add nsw i32 %.sroa.4.0.copyload, -1
  %i.dn = icmp eq i32 %i.bb, %i.dm
  br i1 %i.dn, label %bb.d, label %.preheader330

.preheader330:                                    ; preds = %bb.c
  %i.do = icmp sgt i32 %.sroa.7246.0.copyload, 0
  br i1 %i.do, label %.lr.ph, label %._crit_edge360

.lr.ph:                                           ; preds = %.preheader330
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.bg ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !10 ; 3 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !10 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !10 ; 3 uses
  %i.dx = fmul float %i.as, 2.000000e+00          ; 3 uses
  %i.dy = fmul float %i.as, %i.dx                 ; 2 uses
  %wide.trip.count = zext nneg i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dz = ptrtoaddr ptr %i.dw to i64              ; 3 uses
  %i.ea = ptrtoaddr ptr %i.du to i64              ; 3 uses
  %i.eb = ptrtoaddr ptr %i.dt to i64              ; 3 uses
  %i.ec = sub i64 %i.b, %i.e
  %diff.check = icmp ugt i64 %i.ec, -16
  %i.ed = sub i64 %i.b, %i.h
  %diff.check459 = icmp ugt i64 %i.ed, -16
  %conflict.rdx = or i1 %diff.check, %diff.check459
  %i.ee = sub i64 %i.eb, %i.b
  %diff.check460 = icmp ugt i64 %i.ee, -16
  %conflict.rdx461 = or i1 %conflict.rdx, %diff.check460
  %i.ef = sub i64 %i.ea, %i.b
  %diff.check462 = icmp ugt i64 %i.ef, -16
  %conflict.rdx463 = or i1 %conflict.rdx461, %diff.check462
  %i.eg = sub i64 %i.dz, %i.b
  %diff.check464 = icmp ugt i64 %i.eg, -16
  %conflict.rdx465 = or i1 %conflict.rdx463, %diff.check464
  %i.eh = sub i64 %i.e, %i.h
  %diff.check466 = icmp ugt i64 %i.eh, -16
  %conflict.rdx467 = or i1 %conflict.rdx465, %diff.check466
  %i.ei = sub i64 %i.eb, %i.e
  %diff.check468 = icmp ugt i64 %i.ei, -16
  %conflict.rdx469 = or i1 %conflict.rdx467, %diff.check468
  %i.ej = sub i64 %i.ea, %i.e
  %diff.check470 = icmp ugt i64 %i.ej, -16
  %conflict.rdx471 = or i1 %conflict.rdx469, %diff.check470
  %i.ek = sub i64 %i.dz, %i.e
  %diff.check472 = icmp ugt i64 %i.ek, -16
  %conflict.rdx473 = or i1 %conflict.rdx471, %diff.check472
  %i.el = sub i64 %i.eb, %i.h
  %diff.check474 = icmp ugt i64 %i.el, -16
  %conflict.rdx475 = or i1 %conflict.rdx473, %diff.check474
  %i.em = sub i64 %i.ea, %i.h
  %diff.check476 = icmp ugt i64 %i.em, -16
  %conflict.rdx477 = or i1 %conflict.rdx475, %diff.check476
  %i.en = sub i64 %i.dz, %i.h
  %diff.check478 = icmp ugt i64 %i.en, -16
  %conflict.rdx479 = or i1 %conflict.rdx477, %diff.check478
  br i1 %conflict.rdx479, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert480 = insertelement <4 x float> poison, float %i.dy, i64 0
  %broadcast.splat481 = shufflevector <4 x float> %broadcast.splatinsert480, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert482 = insertelement <4 x float> poison, float %i.ba, i64 0
  %broadcast.splat483 = shufflevector <4 x float> %broadcast.splatinsert482, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index
  %wide.load = load <4 x float>, ptr %i.eo, align 4, !tbaa !8 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index
  %wide.load484 = load <4 x float>, ptr %i.ep, align 4, !tbaa !8 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index
  %wide.load485 = load <4 x float>, ptr %i.eq, align 4, !tbaa !8 ; 2 uses
  %i.er = fsub <4 x float> %wide.load, %wide.load485
  %i.es = fdiv <4 x float> %i.er, %broadcast.splat ; 2 uses
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load484, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load)
  %i.eu = fadd <4 x float> %i.et, %wide.load485
  %i.ev = fdiv <4 x float> %i.eu, %broadcast.splat481 ; 3 uses
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %broadcast.splat483, <4 x float> %wide.load484)
  %i.ex = fmul <4 x float> %broadcast.splat483, %i.ev
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %broadcast.splat483, <4 x float> %i.ew)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.ey, ptr %i.ez, align 4, !tbaa !8
  %i.fa = fmul <4 x float> %i.ev, splat (float 2.000000e+00)
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %broadcast.splat483, <4 x float> %i.es)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  store <4 x float> %i.fb, ptr %i.fc, align 4, !tbaa !8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  store <4 x float> %i.ev, ptr %i.fd, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph338, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.d:                                             ; preds = %bb.c
  %i.ff = fadd float %i.as, %i.ba                 ; 5 uses
  %i.fg = icmp sgt i32 %.sroa.7246.0.copyload, 0
  br i1 %i.fg, label %.lr.ph334, label %._crit_edge360

.lr.ph334:                                        ; preds = %bb.d
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.bg ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !10 ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fj, i64 -8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !10 ; 3 uses
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !10 ; 3 uses
  %i.fp = fmul float %i.as, 2.000000e+00          ; 3 uses
  %i.fq = fmul float %i.as, %i.fp                 ; 2 uses
  %wide.trip.count367 = zext nneg i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check511 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check511, label %scalar.ph510.preheader, label %vector.memcheck486

vector.memcheck486:                               ; preds = %.lr.ph334
  %i.fr = ptrtoaddr ptr %i.fo to i64              ; 3 uses
  %i.fs = ptrtoaddr ptr %i.fn to i64              ; 3 uses
  %i.ft = ptrtoaddr ptr %i.fl to i64              ; 3 uses
  %i.fu = sub i64 %i.b, %i.e
  %diff.check487 = icmp ugt i64 %i.fu, -16
  %i.fv = sub i64 %i.b, %i.h
  %diff.check488 = icmp ugt i64 %i.fv, -16
  %conflict.rdx489 = or i1 %diff.check487, %diff.check488
  %i.fw = sub i64 %i.ft, %i.b
  %diff.check490 = icmp ugt i64 %i.fw, -16
  %conflict.rdx491 = or i1 %conflict.rdx489, %diff.check490
  %i.fx = sub i64 %i.fs, %i.b
  %diff.check492 = icmp ugt i64 %i.fx, -16
  %conflict.rdx493 = or i1 %conflict.rdx491, %diff.check492
  %i.fy = sub i64 %i.fr, %i.b
  %diff.check494 = icmp ugt i64 %i.fy, -16
  %conflict.rdx495 = or i1 %conflict.rdx493, %diff.check494
  %i.fz = sub i64 %i.e, %i.h
  %diff.check496 = icmp ugt i64 %i.fz, -16
  %conflict.rdx497 = or i1 %conflict.rdx495, %diff.check496
  %i.ga = sub i64 %i.ft, %i.e
  %diff.check498 = icmp ugt i64 %i.ga, -16
  %conflict.rdx499 = or i1 %conflict.rdx497, %diff.check498
  %i.gb = sub i64 %i.fs, %i.e
  %diff.check500 = icmp ugt i64 %i.gb, -16
  %conflict.rdx501 = or i1 %conflict.rdx499, %diff.check500
  %i.gc = sub i64 %i.fr, %i.e
  %diff.check502 = icmp ugt i64 %i.gc, -16
  %conflict.rdx503 = or i1 %conflict.rdx501, %diff.check502
  %i.gd = sub i64 %i.ft, %i.h
  %diff.check504 = icmp ugt i64 %i.gd, -16
  %conflict.rdx505 = or i1 %conflict.rdx503, %diff.check504
  %i.ge = sub i64 %i.fs, %i.h
  %diff.check506 = icmp ugt i64 %i.ge, -16
  %conflict.rdx507 = or i1 %conflict.rdx505, %diff.check506
  %i.gf = sub i64 %i.fr, %i.h
  %diff.check508 = icmp ugt i64 %i.gf, -16
  %conflict.rdx509 = or i1 %conflict.rdx507, %diff.check508
  br i1 %conflict.rdx509, label %scalar.ph510.preheader, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck486
  %n.vec514 = and i64 %wide.trip.count367, 2147483644 ; 3 uses
  %broadcast.splatinsert515 = insertelement <4 x float> poison, float %i.fp, i64 0
  %broadcast.splat516 = shufflevector <4 x float> %broadcast.splatinsert515, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert517 = insertelement <4 x float> poison, float %i.fq, i64 0
  %broadcast.splat518 = shufflevector <4 x float> %broadcast.splatinsert517, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat520 = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph512
  %index522 = phi i64 [ 0, %vector.ph512 ], [ %index.next526, %vector.body521 ] ; 7 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index522
  %wide.load523 = load <4 x float>, ptr %i.gg, align 4, !tbaa !8 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index522
  %wide.load524 = load <4 x float>, ptr %i.gh, align 4, !tbaa !8 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index522
  %wide.load525 = load <4 x float>, ptr %i.gi, align 4, !tbaa !8 ; 2 uses
  %i.gj = fsub <4 x float> %wide.load523, %wide.load525
  %i.gk = fdiv <4 x float> %i.gj, %broadcast.splat516 ; 2 uses
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load524, <4 x float> splat (float -2.000000e+00), <4 x float> %wide.load523)
  %i.gm = fadd <4 x float> %i.gl, %wide.load525
  %i.gn = fdiv <4 x float> %i.gm, %broadcast.splat518 ; 3 uses
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %broadcast.splat520, <4 x float> %wide.load524)
  %i.gp = fmul <4 x float> %broadcast.splat520, %i.gn
  %i.gq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %broadcast.splat520, <4 x float> %i.go)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index522
  store <4 x float> %i.gq, ptr %i.gr, align 4, !tbaa !8
  %i.gs = fmul <4 x float> %i.gn, splat (float 2.000000e+00)
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %broadcast.splat520, <4 x float> %i.gk)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index522
  store <4 x float> %i.gt, ptr %i.gu, align 4, !tbaa !8
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index522
  store <4 x float> %i.gn, ptr %i.gv, align 4, !tbaa !8
  %index.next526 = add nuw i64 %index522, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next526, %n.vec514
  br i1 %i.gw, label %middle.block527, label %vector.body521, !llvm.loop !42

middle.block527:                                  ; preds = %vector.body521
  %cmp.n528 = icmp eq i64 %n.vec514, %wide.trip.count367
  br i1 %cmp.n528, label %.lr.ph338, label %scalar.ph510.preheader

scalar.ph510.preheader:                           ; preds = %vector.memcheck486, %.lr.ph334, %middle.block527
  %indvars.iv364.ph = phi i64 [ 0, %vector.memcheck486 ], [ 0, %.lr.ph334 ], [ %n.vec514, %middle.block527 ]
  br label %scalar.ph510

scalar.ph510:                                     ; preds = %scalar.ph510.preheader, %scalar.ph510
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph510 ], [ %indvars.iv364.ph, %scalar.ph510.preheader ] ; 7 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv364
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !8 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv364
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !8 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv364
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !8 ; 2 uses
  %i.hd = fsub float %i.gy, %i.hc
  %18 = fdiv float %i.hd, %i.fp                   ; 2 uses
  %i.he = tail call float @llvm.fmuladd.f32(float %i.ha, float -2.000000e+00, float %i.gy)
  %19 = fadd float %i.he, %i.hc
  %20 = fdiv float %19, %i.fq                     ; 3 uses
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %i.ff, float %i.ha)
  %22 = fmul float %i.ff, %20
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %i.ff, float %21)
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv364
  store float %23, ptr %24, align 4, !tbaa !8
  %25 = fmul float %20, 2.000000e+00
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %i.ff, float %18)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv364
  store float %26, ptr %i.hf, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv364
  store float %20, ptr %i.hg, align 4, !tbaa !8
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %.lr.ph338, label %scalar.ph510, !llvm.loop !43

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !8 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !8 ; 2 uses
  %i.hn = fsub float %i.hi, %i.hm
  %27 = fdiv float %i.hn, %i.dx                   ; 2 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hk, float -2.000000e+00, float %i.hi)
  %28 = fadd float %i.ho, %i.hm
  %29 = fdiv float %28, %i.dy                     ; 3 uses
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %i.ba, float %i.hk)
  %31 = fmul float %i.ba, %29
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %i.ba, float %30)
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %32, ptr %33, align 4, !tbaa !8
  %34 = fmul float %29, 2.000000e+00
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %i.ba, float %27)
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %35, ptr %i.hp, align 4, !tbaa !8
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %29, ptr %i.hq, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph338, label %scalar.ph, !llvm.loop !44

.lr.ph338:                                        ; preds = %scalar.ph, %scalar.ph510, %scalar.ph554, %middle.block, %middle.block527, %middle.block571
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !45 ; 8 uses
  %wide.trip.count377 = zext i32 %.sroa.7246.0.copyload to i64 ; 27 uses
  %min.iters.check599 = icmp ult i32 %.sroa.7246.0.copyload, 24
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.memcheck574

vector.memcheck574:                               ; preds = %.lr.ph338
  %i.ht = shl nuw nsw i64 %wide.trip.count377, 2  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.ht ; 3 uses
  %scevgep575 = getelementptr i8, ptr %i.m, i64 %i.ht ; 3 uses
  %scevgep576 = getelementptr i8, ptr %i.p, i64 %i.ht ; 3 uses
  %scevgep577 = getelementptr i8, ptr %i.hs, i64 %i.ht ; 3 uses
  %bound0 = icmp ult ptr %i.j, %scevgep575
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0578 = icmp ult ptr %i.j, %scevgep576
  %bound1579 = icmp ult ptr %i.p, %scevgep
  %found.conflict580 = and i1 %bound0578, %bound1579
  %conflict.rdx581 = or i1 %found.conflict, %found.conflict580
  %bound0582 = icmp ult ptr %i.j, %scevgep577
  %bound1583 = icmp ult ptr %i.hs, %scevgep
  %found.conflict584 = and i1 %bound0582, %bound1583
  %conflict.rdx585 = or i1 %conflict.rdx581, %found.conflict584
  %bound0586 = icmp ult ptr %i.m, %scevgep576
  %bound1587 = icmp ult ptr %i.p, %scevgep575
  %found.conflict588 = and i1 %bound0586, %bound1587
  %conflict.rdx589 = or i1 %conflict.rdx585, %found.conflict588
  %bound0590 = icmp ult ptr %i.m, %scevgep577
  %bound1591 = icmp ult ptr %i.hs, %scevgep575
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx593 = or i1 %conflict.rdx589, %found.conflict592
  %bound0594 = icmp ult ptr %i.p, %scevgep577
  %bound1595 = icmp ult ptr %i.hs, %scevgep576
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict596
  br i1 %conflict.rdx597, label %scalar.ph598.preheader, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck574
  %n.vec602 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert603 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat604 = shufflevector <4 x float> %broadcast.splatinsert603, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph600
  %index606 = phi i64 [ 0, %vector.ph600 ], [ %index.next609, %vector.body605 ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %index606
  %wide.load607 = load <4 x float>, ptr %i.hu, align 4, !tbaa !8, !alias.scope !46 ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index606
  store <4 x float> %wide.load607, ptr %i.hv, align 4, !tbaa !8, !alias.scope !49, !noalias !51
  %i.hw = fmul <4 x float> %broadcast.splat604, %wide.load607
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index606
  store <4 x float> %i.hw, ptr %i.hx, align 4, !tbaa !8, !alias.scope !54, !noalias !55
  %i.hy = fmul <4 x float> %wide.load607, %wide.load607
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index606
  store <4 x float> %i.hy, ptr %i.hz, align 4, !tbaa !8, !alias.scope !56, !noalias !46
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.ia, label %middle.block610, label %vector.body605, !llvm.loop !57

middle.block610:                                  ; preds = %vector.body605
  %cmp.n611 = icmp eq i64 %n.vec602, %wide.trip.count377
  br i1 %cmp.n611, label %.lr.ph340.preheader, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck574, %.lr.ph338, %middle.block610
  %indvars.iv374.ph = phi i64 [ 0, %vector.memcheck574 ], [ 0, %.lr.ph338 ], [ %n.vec602, %middle.block610 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count377, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph598.prol.loopexit, label %scalar.ph598.prol

scalar.ph598.prol:                                ; preds = %scalar.ph598.preheader
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv374.ph
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !8 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374.ph ; 2 uses
  store float %i.ic, ptr %i.id, align 4, !tbaa !8
  %i.ie = fmul float %5, %i.ic
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374.ph
  store float %i.ie, ptr %i.if, align 4, !tbaa !8
  %i.ig = load float, ptr %i.id, align 4, !tbaa !8 ; 2 uses
  %i.ih = fmul float %i.ig, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374.ph
  store float %i.ih, ptr %i.ii, align 4, !tbaa !8
  %indvars.iv.next375.prol = or disjoint i64 %indvars.iv374.ph, 1
  br label %scalar.ph598.prol.loopexit

scalar.ph598.prol.loopexit:                       ; preds = %scalar.ph598.prol, %scalar.ph598.preheader
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %scalar.ph598.preheader ], [ %indvars.iv.next375.prol, %scalar.ph598.prol ]
  %i.ij = add nsw i64 %wide.trip.count377, -1
  %i.ik = icmp eq i64 %indvars.iv374.ph, %i.ij
  br i1 %i.ik, label %.lr.ph340.preheader, label %scalar.ph598

.lr.ph340.preheader:                              ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598, %middle.block610
  %wide.trip.count382 = zext nneg i32 %.sroa.7246.0.copyload to i64
  br label %.lr.ph340

scalar.ph598:                                     ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.1, %scalar.ph598 ], [ %indvars.iv374.unr, %scalar.ph598.prol.loopexit ] ; 6 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv374
  %i.im = load float, ptr %i.il, align 4, !tbaa !8 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374 ; 2 uses
  store float %i.im, ptr %i.in, align 4, !tbaa !8
  %i.io = fmul float %5, %i.im
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374
  store float %i.io, ptr %i.ip, align 4, !tbaa !8
  %i.iq = load float, ptr %i.in, align 4, !tbaa !8 ; 2 uses
  %i.ir = fmul float %i.iq, %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374
  store float %i.ir, ptr %i.is, align 4, !tbaa !8
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next375
  %i.iu = load float, ptr %i.it, align 4, !tbaa !8 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next375 ; 2 uses
  store float %i.iu, ptr %i.iv, align 4, !tbaa !8
  %i.iw = fmul float %5, %i.iu
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next375
  store float %i.iw, ptr %i.ix, align 4, !tbaa !8
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !8 ; 2 uses
  %i.iz = fmul float %i.iy, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next375
  store float %i.iz, ptr %i.ja, align 4, !tbaa !8
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %exitcond378.not.1 = icmp eq i64 %indvars.iv.next375.1, %wide.trip.count377
  br i1 %exitcond378.not.1, label %.lr.ph340.preheader, label %scalar.ph598, !llvm.loop !58

.lr.ph342.preheader:                              ; preds = %interpolateTable.exit
  %wide.trip.count387 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check622 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check622, label %.lr.ph342.preheader837, label %vector.memcheck613

vector.memcheck613:                               ; preds = %.lr.ph342.preheader
  %i.jb = sub i64 %i.n, %i.w
  %diff.check614 = icmp ugt i64 %i.jb, -16
  %i.jc = sub i64 %i.t, %i.w
  %diff.check615 = icmp ugt i64 %i.jc, -16
  %conflict.rdx616 = or i1 %diff.check614, %diff.check615
  %i.jd = sub i64 %i.k, %i.w
  %diff.check617 = icmp ugt i64 %i.jd, -16
  %conflict.rdx618 = or i1 %conflict.rdx616, %diff.check617
  %i.je = sub i64 %i.q, %i.w
  %diff.check619 = icmp ugt i64 %i.je, -16
  %conflict.rdx620 = or i1 %conflict.rdx618, %diff.check619
  br i1 %conflict.rdx620, label %.lr.ph342.preheader837, label %vector.ph623

vector.ph623:                                     ; preds = %vector.memcheck613
  %n.vec625 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph623
  %index627 = phi i64 [ 0, %vector.ph623 ], [ %index.next632, %vector.body626 ] ; 6 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index627
  %wide.load628 = load <4 x float>, ptr %i.jf, align 4, !tbaa !8 ; 2 uses
  %i.jg = fadd <4 x float> %wide.load628, splat (float -2.000000e+00)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index627
  %wide.load629 = load <4 x float>, ptr %i.jh, align 4, !tbaa !8
  %i.ji = fmul <4 x float> %wide.load629, splat (float 2.000000e+00)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index627
  %wide.load630 = load <4 x float>, ptr %i.jj, align 4, !tbaa !8
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index627
  %wide.load631 = load <4 x float>, ptr %i.jk, align 4, !tbaa !8
  %i.jl = fmul <4 x float> %wide.load630, %wide.load631
  %i.jm = fdiv <4 x float> %i.ji, %i.jl
  %i.jn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load628, <4 x float> %i.jg, <4 x float> %i.jm)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index627
  store <4 x float> %i.jn, ptr %i.jo, align 4, !tbaa !8
  %index.next632 = add nuw i64 %index627, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.jp, label %middle.block633, label %vector.body626, !llvm.loop !59

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %n.vec625, %wide.trip.count377
  br i1 %cmp.n634, label %.lr.ph345.preheader, label %.lr.ph342.preheader837

.lr.ph342.preheader837:                           ; preds = %vector.memcheck613, %.lr.ph342.preheader, %middle.block633
  %indvars.iv384.ph = phi i64 [ 0, %vector.memcheck613 ], [ 0, %.lr.ph342.preheader ], [ %n.vec625, %middle.block633 ] ; 8 uses
  %xtraiter840 = and i64 %wide.trip.count377, 1
  %lcmp.mod841.not = icmp eq i64 %xtraiter840, 0
  br i1 %lcmp.mod841.not, label %.lr.ph342.prol.loopexit, label %.lr.ph342.prol

.lr.ph342.prol:                                   ; preds = %.lr.ph342.preheader837
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384.ph
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !8 ; 2 uses
  %i.js = fadd float %i.jr, -2.000000e+00
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384.ph
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !8
  %i.jv = fmul float %i.ju, 2.000000e+00
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384.ph
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !8
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384.ph
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !8
  %i.ka = fmul float %i.jx, %i.jz
  %i.kb = fdiv float %i.jv, %i.ka
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.js, float %i.kb)
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384.ph
  store float %i.kc, ptr %i.kd, align 4, !tbaa !8
  %indvars.iv.next385.prol = or disjoint i64 %indvars.iv384.ph, 1
  br label %.lr.ph342.prol.loopexit

.lr.ph342.prol.loopexit:                          ; preds = %.lr.ph342.prol, %.lr.ph342.preheader837
  %indvars.iv384.unr = phi i64 [ %indvars.iv384.ph, %.lr.ph342.preheader837 ], [ %indvars.iv.next385.prol, %.lr.ph342.prol ]
  %i.ke = add nsw i64 %wide.trip.count377, -1
  %i.kf = icmp eq i64 %indvars.iv384.ph, %i.ke
  br i1 %i.kf, label %.lr.ph345.preheader, label %.lr.ph342

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %interpolateTable.exit
  %indvars.iv379 = phi i64 [ 0, %.lr.ph340.preheader ], [ %indvars.iv.next380, %interpolateTable.exit ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv379
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !8 ; 3 uses
  %i.ki = fcmp ogt float %i.kh, %.sroa.5.0.copyload
  br i1 %i.ki, label %interpolateTable.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph340
  %i.kj = fdiv float %i.kh, %.sroa.4.0.copyload320
  %i.kk = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload320, float 5.000000e-01, float %i.kj)
  %i.kl = fptosi float %i.kk to i32
  %i.km = shl nsw i32 %i.kl, 1
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %.sroa.3.0.copyload318, i64 %i.kn ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !8
  %i.kq = getelementptr i8, ptr %i.ko, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !8
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kp, float %i.kh, float %i.kr)
  br label %interpolateTable.exit

interpolateTable.exit:                            ; preds = %.lr.ph340, %bb.e
  %.0.i = phi float [ %i.ks, %bb.e ], [ 1.000000e+00, %.lr.ph340 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv379
  store float %.0.i, ptr %i.kt, align 4, !tbaa !8
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.lr.ph342.preheader, label %.lr.ph340

.lr.ph345.preheader:                              ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342, %middle.block633
  %.0309.in.v = select i1 %1, i64 24, i64 32
  %.0309.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0309.in.v
  %.0309 = load ptr, ptr %.0309.in, align 8, !tbaa !10 ; 11 uses
  %.0309642 = ptrtoaddr ptr %.0309 to i64         ; 6 uses
  %wide.trip.count392 = zext i32 %.sroa.7246.0.copyload to i64 ; 13 uses
  %min.iters.check656 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check656, label %.lr.ph345.preheader836, label %vector.memcheck636

vector.memcheck636:                               ; preds = %.lr.ph345.preheader
  %i.ku = sub i64 %i.b, %i.z
  %diff.check637 = icmp ugt i64 %i.ku, -16
  %i.kv = sub i64 %i.n, %i.z
  %diff.check638 = icmp ugt i64 %i.kv, -16
  %conflict.rdx639 = or i1 %diff.check637, %diff.check638
  %i.kw = sub i64 %i.k, %i.z
  %diff.check640 = icmp ugt i64 %i.kw, -16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.kx = sub i64 %.0309642, %i.z
  %diff.check643 = icmp ugt i64 %i.kx, -16
  %conflict.rdx644 = or i1 %conflict.rdx641, %diff.check643
  %i.ky = sub i64 %i.t, %i.z
  %diff.check645 = icmp ugt i64 %i.ky, -16
  %conflict.rdx646 = or i1 %conflict.rdx644, %diff.check645
  %i.kz = sub i64 %i.q, %i.z
  %diff.check647 = icmp ugt i64 %i.kz, -16
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  %i.la = sub i64 %i.e, %i.z
  %diff.check649 = icmp ugt i64 %i.la, -16
  %conflict.rdx650 = or i1 %conflict.rdx648, %diff.check649
  %i.lb = sub i64 %i.w, %i.z
  %diff.check651 = icmp ugt i64 %i.lb, -16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.lc = sub i64 %i.h, %i.z
  %diff.check653 = icmp ugt i64 %i.lc, -16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %.lr.ph345.preheader836, label %vector.ph657

vector.ph657:                                     ; preds = %vector.memcheck636
  %n.vec659 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert660 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat661 = shufflevector <4 x float> %broadcast.splatinsert660, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert662 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat663 = shufflevector <4 x float> %broadcast.splatinsert662, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph657
  %index665 = phi i64 [ 0, %vector.ph657 ], [ %index.next675, %vector.body664 ] ; 11 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index665
  %wide.load666 = load <4 x float>, ptr %i.ld, align 4, !tbaa !8 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index665
  %wide.load667 = load <4 x float>, ptr %i.le, align 4, !tbaa !8 ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index665
  %wide.load668 = load <4 x float>, ptr %i.lf, align 4, !tbaa !8
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index665
  %wide.load669 = load <4 x float>, ptr %i.lg, align 4, !tbaa !8
  %i.lh = fneg <4 x float> %wide.load666
  %i.li = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load668, <4 x float> %wide.load669, <4 x float> %i.lh)
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index665
  %wide.load670 = load <4 x float>, ptr %i.lj, align 4, !tbaa !8 ; 2 uses
  %i.lk = fmul <4 x float> %i.li, %wide.load670
  %i.ll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load666, <4 x float> %wide.load667, <4 x float> %i.lk)
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index665
  %wide.load671 = load <4 x float>, ptr %i.lm, align 4, !tbaa !8 ; 3 uses
  %i.ln = fdiv <4 x float> %i.ll, %wide.load671
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index665
  %wide.load672 = load <4 x float>, ptr %i.lo, align 4, !tbaa !8
  %i.lp = fmul <4 x float> %broadcast.splat661, %wide.load672
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index665
  %wide.load673 = load <4 x float>, ptr %i.lq, align 4, !tbaa !8
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lp, <4 x float> %wide.load673, <4 x float> %i.ln)
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index665
  %wide.load674 = load <4 x float>, ptr %i.ls, align 4, !tbaa !8
  %i.lt = fmul <4 x float> %broadcast.splat663, %wide.load674
  %i.lu = fadd <4 x float> %wide.load667, splat (float -3.000000e+00)
  %i.lv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.lu, <4 x float> splat (float 6.000000e+00))
  %i.lw = fmul <4 x float> %wide.load670, splat (float -6.000000e+00)
  %i.lx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.lv, <4 x float> %i.lw)
  %i.ly = fmul <4 x float> %i.lx, %i.lt
  %i.lz = fmul <4 x float> %wide.load671, splat (float 3.000000e+00)
  %i.ma = fmul <4 x float> %wide.load671, %i.lz
  %i.mb = fdiv <4 x float> %i.ly, %i.ma
  %i.mc = fadd <4 x float> %i.lr, %i.mb
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index665
  store <4 x float> %i.mc, ptr %i.md, align 4, !tbaa !8
  %index.next675 = add nuw i64 %index665, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next675, %n.vec659
  br i1 %i.me, label %middle.block676, label %vector.body664, !llvm.loop !60

middle.block676:                                  ; preds = %vector.body664
  %cmp.n677 = icmp eq i64 %n.vec659, %wide.trip.count377
  br i1 %cmp.n677, label %.lr.ph347.preheader, label %.lr.ph345.preheader836

.lr.ph345.preheader836:                           ; preds = %vector.memcheck636, %.lr.ph345.preheader, %middle.block676
  %indvars.iv389.ph = phi i64 [ 0, %vector.memcheck636 ], [ 0, %.lr.ph345.preheader ], [ %n.vec659, %middle.block676 ]
  br label %.lr.ph345

.lr.ph342:                                        ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342
  %indvars.iv384 = phi i64 [ %indvars.iv.next385.1, %.lr.ph342 ], [ %indvars.iv384.unr, %.lr.ph342.prol.loopexit ] ; 7 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !8 ; 2 uses
  %i.mh = fadd float %i.mg, -2.000000e+00
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !8
  %i.mk = fmul float %i.mj, 2.000000e+00
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !8
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !8
  %i.mp = fmul float %i.mm, %i.mo
  %i.mq = fdiv float %i.mk, %i.mp
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mh, float %i.mq)
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384
  store float %i.mr, ptr %i.ms, align 4, !tbaa !8
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 5 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next385
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !8 ; 2 uses
  %i.mv = fadd float %i.mu, -2.000000e+00
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next385
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !8
  %i.my = fmul float %i.mx, 2.000000e+00
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next385
  %i.na = load float, ptr %i.mz, align 4, !tbaa !8
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next385
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !8
  %i.nd = fmul float %i.na, %i.nc
  %i.ne = fdiv float %i.my, %i.nd
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.mu, float %i.mv, float %i.ne)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next385
  store float %i.nf, ptr %i.ng, align 4, !tbaa !8
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %exitcond388.not.1 = icmp eq i64 %indvars.iv.next385.1, %wide.trip.count387
  br i1 %exitcond388.not.1, label %.lr.ph345.preheader, label %.lr.ph342, !llvm.loop !61

.lr.ph347.preheader:                              ; preds = %.lr.ph345, %middle.block676
  %wide.trip.count397 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check682 = icmp ult i32 %.sroa.7246.0.copyload, 8
  %i.nh = sub i64 %i.z, %i.ac
  %diff.check680 = icmp ugt i64 %i.nh, -32
  %or.cond = select i1 %min.iters.check682, i1 true, i1 %diff.check680
  br i1 %or.cond, label %.lr.ph347.preheader835, label %vector.ph683

vector.ph683:                                     ; preds = %.lr.ph347.preheader
  %n.vec685 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert686 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat687 = shufflevector <4 x float> %broadcast.splatinsert686, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph683
  %index689 = phi i64 [ 0, %vector.ph683 ], [ %index.next692, %vector.body688 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index689 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %wide.load690 = load <4 x float>, ptr %i.ni, align 4, !tbaa !8
  %wide.load691 = load <4 x float>, ptr %i.nj, align 4, !tbaa !8
  %i.nk = fmul <4 x float> %broadcast.splat687, %wide.load690
  %i.nl = fmul <4 x float> %broadcast.splat687, %wide.load691
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index689 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <4 x float> %i.nk, ptr %i.nm, align 4, !tbaa !8
  store <4 x float> %i.nl, ptr %i.nn, align 4, !tbaa !8
  %index.next692 = add nuw i64 %index689, 8       ; 2 uses
  %i.no = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.no, label %middle.block693, label %vector.body688, !llvm.loop !62

middle.block693:                                  ; preds = %vector.body688
  %cmp.n694 = icmp eq i64 %n.vec685, %wide.trip.count377
  br i1 %cmp.n694, label %.lr.ph349.preheader, label %.lr.ph347.preheader835

.lr.ph347.preheader835:                           ; preds = %.lr.ph347.preheader, %middle.block693
  %indvars.iv394.ph = phi i64 [ 0, %.lr.ph347.preheader ], [ %n.vec685, %middle.block693 ] ; 3 uses
  %xtraiter842 = and i64 %wide.trip.count392, 3   ; 2 uses
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol

.lr.ph347.prol:                                   ; preds = %.lr.ph347.preheader835, %.lr.ph347.prol
  %indvars.iv394.prol = phi i64 [ %indvars.iv.next395.prol, %.lr.ph347.prol ], [ %indvars.iv394.ph, %.lr.ph347.preheader835 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph347.prol ], [ 0, %.lr.ph347.preheader835 ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394.prol
  %i.nq = load float, ptr %i.np, align 4, !tbaa !8
  %i.nr = fmul float %i.bd, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394.prol
  store float %i.nr, ptr %i.ns, align 4, !tbaa !8
  %indvars.iv.next395.prol = add nuw nsw i64 %indvars.iv394.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter842
  br i1 %prol.iter.cmp.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol, !llvm.loop !63

.lr.ph347.prol.loopexit:                          ; preds = %.lr.ph347.prol, %.lr.ph347.preheader835
  %indvars.iv394.unr = phi i64 [ %indvars.iv394.ph, %.lr.ph347.preheader835 ], [ %indvars.iv.next395.prol, %.lr.ph347.prol ]
  %i.nt = sub nsw i64 %indvars.iv394.ph, %wide.trip.count392
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %.lr.ph349.preheader, label %.lr.ph347

.lr.ph345:                                        ; preds = %.lr.ph345.preheader836, %.lr.ph345
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %.lr.ph345 ], [ %indvars.iv389.ph, %.lr.ph345.preheader836 ] ; 11 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv389
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !8 ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv389
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !8 ; 4 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv389
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !8
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv389
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !8
  %i.od = fneg float %i.nw
  %i.oe = tail call float @llvm.fmuladd.f32(float %i.oa, float %i.oc, float %i.od)
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv389
  %i.og = load float, ptr %i.of, align 4, !tbaa !8 ; 2 uses
  %i.oh = fmul float %i.oe, %i.og
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.ny, float %i.oh)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv389
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !8 ; 3 uses
  %i.ol = fdiv float %i.oi, %i.ok
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv389
  %i.on = load float, ptr %i.om, align 4, !tbaa !8
  %i.oo = fmul float %6, %i.on
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv389
  %i.oq = load float, ptr %i.op, align 4, !tbaa !8
  %i.or = tail call float @llvm.fmuladd.f32(float %i.oo, float %i.oq, float %i.ol)
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv389
  %i.ot = load float, ptr %i.os, align 4, !tbaa !8
  %i.ou = fmul float %i.be, %i.ot
  %i.ov = fadd float %i.ny, -3.000000e+00
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.ov, float 6.000000e+00)
  %i.ox = fmul float %i.og, -6.000000e+00
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.ow, float %i.ox)
  %i.oz = fmul float %i.oy, %i.ou
  %i.pa = fmul float %i.ok, 3.000000e+00
  %i.pb = fmul float %i.ok, %i.pa
  %i.pc = fdiv float %i.oz, %i.pb
  %i.pd = fadd float %i.or, %i.pc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv389
  store float %i.pd, ptr %i.pe, align 4, !tbaa !8
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.lr.ph347.preheader, label %.lr.ph345, !llvm.loop !65

.lr.ph349.preheader:                              ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347, %middle.block693
  %wide.trip.count402 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check703 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check703, label %.lr.ph349.preheader834, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph349.preheader
  %i.pf = shl nuw nsw i64 %wide.trip.count377, 2  ; 2 uses
  %scevgep697 = getelementptr i8, ptr %i.bi, i64 %i.pf
  %scevgep698 = getelementptr i8, ptr %i.ab, i64 %i.pf
  %bound0699 = icmp ult ptr %i.bi, %scevgep698
  %bound1700 = icmp ult ptr %i.ab, %scevgep697
  %found.conflict701 = and i1 %bound0699, %bound1700
  br i1 %found.conflict701, label %.lr.ph349.preheader834, label %vector.ph704

vector.ph704:                                     ; preds = %vector.memcheck696
  %n.vec706 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph704
  %index708 = phi i64 [ 0, %vector.ph704 ], [ %index.next713, %vector.body707 ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index708 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %wide.load709 = load <4 x float>, ptr %i.pg, align 4, !tbaa !8, !alias.scope !66
  %wide.load710 = load <4 x float>, ptr %i.ph, align 4, !tbaa !8, !alias.scope !66
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index708 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 2 uses
  %wide.load711 = load <4 x float>, ptr %i.pi, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %wide.load712 = load <4 x float>, ptr %i.pj, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %i.pk = fadd <4 x float> %wide.load709, %wide.load711
  %i.pl = fadd <4 x float> %wide.load710, %wide.load712
  store <4 x float> %i.pk, ptr %i.pi, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  store <4 x float> %i.pl, ptr %i.pj, align 4, !tbaa !8, !alias.scope !69, !noalias !66
  %index.next713 = add nuw i64 %index708, 8       ; 2 uses
  %i.pm = icmp eq i64 %index.next713, %n.vec706
  br i1 %i.pm, label %middle.block714, label %vector.body707, !llvm.loop !71

middle.block714:                                  ; preds = %vector.body707
  %cmp.n715 = icmp eq i64 %n.vec706, %wide.trip.count377
  br i1 %cmp.n715, label %.lr.ph351.preheader, label %.lr.ph349.preheader834

.lr.ph349.preheader834:                           ; preds = %vector.memcheck696, %.lr.ph349.preheader, %middle.block714
  %indvars.iv399.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph349.preheader ], [ %n.vec706, %middle.block714 ] ; 3 uses
  %xtraiter844 = and i64 %wide.trip.count392, 3   ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol

.lr.ph349.prol:                                   ; preds = %.lr.ph349.preheader834, %.lr.ph349.prol
  %indvars.iv399.prol = phi i64 [ %indvars.iv.next400.prol, %.lr.ph349.prol ], [ %indvars.iv399.ph, %.lr.ph349.preheader834 ] ; 3 uses
  %prol.iter846 = phi i64 [ %prol.iter846.next, %.lr.ph349.prol ], [ 0, %.lr.ph349.preheader834 ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399.prol
  %i.po = load float, ptr %i.pn, align 4, !tbaa !8
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399.prol ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !8
  %i.pr = fadd float %i.po, %i.pq
  store float %i.pr, ptr %i.pp, align 4, !tbaa !8
  %indvars.iv.next400.prol = add nuw nsw i64 %indvars.iv399.prol, 1 ; 2 uses
  %prol.iter846.next = add i64 %prol.iter846, 1   ; 2 uses
  %prol.iter846.cmp.not = icmp eq i64 %prol.iter846.next, %xtraiter844
  br i1 %prol.iter846.cmp.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol, !llvm.loop !72

.lr.ph349.prol.loopexit:                          ; preds = %.lr.ph349.prol, %.lr.ph349.preheader834
  %indvars.iv399.unr = phi i64 [ %indvars.iv399.ph, %.lr.ph349.preheader834 ], [ %indvars.iv.next400.prol, %.lr.ph349.prol ]
  %i.ps = sub nsw i64 %indvars.iv399.ph, %wide.trip.count392
  %i.pt = icmp ugt i64 %i.ps, -4
  br i1 %i.pt, label %.lr.ph351.preheader, label %.lr.ph349

.lr.ph347:                                        ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347
  %indvars.iv394 = phi i64 [ %indvars.iv.next395.3, %.lr.ph347 ], [ %indvars.iv394.unr, %.lr.ph347.prol.loopexit ] ; 6 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !8
  %i.pw = fmul float %i.bd, %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394
  store float %i.pw, ptr %i.px, align 4, !tbaa !8
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395
  %i.pz = load float, ptr %i.py, align 4, !tbaa !8
  %i.qa = fmul float %i.bd, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395
  store float %i.qa, ptr %i.qb, align 4, !tbaa !8
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.1
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !8
  %i.qe = fmul float %i.bd, %i.qd
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.1
  store float %i.qe, ptr %i.qf, align 4, !tbaa !8
  %indvars.iv.next395.2 = add nuw nsw i64 %indvars.iv394, 3 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next395.2
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !8
  %i.qi = fmul float %i.bd, %i.qh
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next395.2
  store float %i.qi, ptr %i.qj, align 4, !tbaa !8
  %indvars.iv.next395.3 = add nuw nsw i64 %indvars.iv394, 4 ; 2 uses
  %exitcond398.not.3 = icmp eq i64 %indvars.iv.next395.3, %wide.trip.count397
  br i1 %exitcond398.not.3, label %.lr.ph349.preheader, label %.lr.ph347, !llvm.loop !73

.lr.ph351.preheader:                              ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349, %middle.block714
  %wide.trip.count407 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check724 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check724, label %.lr.ph351.preheader833, label %vector.memcheck717

vector.memcheck717:                               ; preds = %.lr.ph351.preheader
  %i.qk = sub i64 %i.b, %i.af
  %diff.check718 = icmp ugt i64 %i.qk, -16
  %i.ql = sub i64 %i.t, %i.af
  %diff.check719 = icmp ugt i64 %i.ql, -16
  %conflict.rdx720 = or i1 %diff.check718, %diff.check719
  %i.qm = sub i64 %i.k, %i.af
  %diff.check721 = icmp ugt i64 %i.qm, -16
  %conflict.rdx722 = or i1 %conflict.rdx720, %diff.check721
  br i1 %conflict.rdx722, label %.lr.ph351.preheader833, label %vector.ph725

vector.ph725:                                     ; preds = %vector.memcheck717
  %n.vec727 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph725
  %index729 = phi i64 [ 0, %vector.ph725 ], [ %index.next733, %vector.body728 ] ; 5 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index729
  %wide.load730 = load <4 x float>, ptr %i.qn, align 4, !tbaa !8
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index729
  %wide.load731 = load <4 x float>, ptr %i.qo, align 4, !tbaa !8
  %i.qp = fmul <4 x float> %wide.load730, %wide.load731
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index729
  %wide.load732 = load <4 x float>, ptr %i.qq, align 4, !tbaa !8
  %i.qr = fdiv <4 x float> %i.qp, %wide.load732
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index729
  store <4 x float> %i.qr, ptr %i.qs, align 4, !tbaa !8
  %index.next733 = add nuw i64 %index729, 4       ; 2 uses
  %i.qt = icmp eq i64 %index.next733, %n.vec727
  br i1 %i.qt, label %middle.block734, label %vector.body728, !llvm.loop !74

middle.block734:                                  ; preds = %vector.body728
  %cmp.n735 = icmp eq i64 %n.vec727, %wide.trip.count377
  br i1 %cmp.n735, label %.lr.ph353.preheader, label %.lr.ph351.preheader833

.lr.ph351.preheader833:                           ; preds = %vector.memcheck717, %.lr.ph351.preheader, %middle.block734
  %indvars.iv404.ph = phi i64 [ 0, %vector.memcheck717 ], [ 0, %.lr.ph351.preheader ], [ %n.vec727, %middle.block734 ] ; 7 uses
  %xtraiter847 = and i64 %wide.trip.count392, 1
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.lr.ph351.prol.loopexit, label %.lr.ph351.prol

.lr.ph351.prol:                                   ; preds = %.lr.ph351.preheader833
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404.ph
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !8
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404.ph
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !8
  %i.qy = fmul float %i.qv, %i.qx
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404.ph
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !8
  %i.rb = fdiv float %i.qy, %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404.ph
  store float %i.rb, ptr %i.rc, align 4, !tbaa !8
  %indvars.iv.next405.prol = or disjoint i64 %indvars.iv404.ph, 1
  br label %.lr.ph351.prol.loopexit

.lr.ph351.prol.loopexit:                          ; preds = %.lr.ph351.prol, %.lr.ph351.preheader833
  %indvars.iv404.unr = phi i64 [ %indvars.iv404.ph, %.lr.ph351.preheader833 ], [ %indvars.iv.next405.prol, %.lr.ph351.prol ]
  %i.rd = add nsw i64 %wide.trip.count392, -1
  %i.re = icmp eq i64 %indvars.iv404.ph, %i.rd
  br i1 %i.re, label %.lr.ph353.preheader, label %.lr.ph351

.lr.ph349:                                        ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349
  %indvars.iv399 = phi i64 [ %indvars.iv.next400.3, %.lr.ph349 ], [ %indvars.iv399.unr, %.lr.ph349.prol.loopexit ] ; 6 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv399
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !8
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv399 ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !8
  %i.rj = fadd float %i.rg, %i.ri
  store float %i.rj, ptr %i.rh, align 4, !tbaa !8
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !8
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400 ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !8
  %i.ro = fadd float %i.rl, %i.rn
  store float %i.ro, ptr %i.rm, align 4, !tbaa !8
  %indvars.iv.next400.1 = add nuw nsw i64 %indvars.iv399, 2 ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.1
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !8
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.1 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !8
  %i.rt = fadd float %i.rq, %i.rs
  store float %i.rt, ptr %i.rr, align 4, !tbaa !8
  %indvars.iv.next400.2 = add nuw nsw i64 %indvars.iv399, 3 ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next400.2
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !8
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next400.2 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !8
  %i.ry = fadd float %i.rv, %i.rx
  store float %i.ry, ptr %i.rw, align 4, !tbaa !8
  %indvars.iv.next400.3 = add nuw nsw i64 %indvars.iv399, 4 ; 2 uses
  %exitcond403.not.3 = icmp eq i64 %indvars.iv.next400.3, %wide.trip.count402
  br i1 %exitcond403.not.3, label %.lr.ph351.preheader, label %.lr.ph349, !llvm.loop !75

.lr.ph353.preheader:                              ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351, %middle.block734
  %wide.trip.count412 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check746 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check746, label %.lr.ph353.preheader832, label %vector.memcheck737

vector.memcheck737:                               ; preds = %.lr.ph353.preheader
  %i.rz = sub i64 %i.e, %i.ai
  %diff.check738 = icmp ugt i64 %i.rz, -16
  %i.sa = sub i64 %i.n, %i.ai
  %diff.check739 = icmp ugt i64 %i.sa, -16
  %conflict.rdx740 = or i1 %diff.check738, %diff.check739
  %i.sb = sub i64 %i.t, %i.ai
  %diff.check741 = icmp ugt i64 %i.sb, -16
  %conflict.rdx742 = or i1 %conflict.rdx740, %diff.check741
  %i.sc = sub i64 %i.q, %i.ai
  %diff.check743 = icmp ugt i64 %i.sc, -16
  %conflict.rdx744 = or i1 %conflict.rdx742, %diff.check743
  br i1 %conflict.rdx744, label %.lr.ph353.preheader832, label %vector.ph747

vector.ph747:                                     ; preds = %vector.memcheck737
  %n.vec749 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert750 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat751 = shufflevector <4 x float> %broadcast.splatinsert750, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body752

vector.body752:                                   ; preds = %vector.body752, %vector.ph747
  %index753 = phi i64 [ 0, %vector.ph747 ], [ %index.next758, %vector.body752 ] ; 6 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index753
  %wide.load754 = load <4 x float>, ptr %i.sd, align 4, !tbaa !8
  %i.se = fmul <4 x float> %broadcast.splat751, %wide.load754
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index753
  %wide.load755 = load <4 x float>, ptr %i.sf, align 4, !tbaa !8
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index753
  %wide.load756 = load <4 x float>, ptr %i.sg, align 4, !tbaa !8
  %i.sh = fsub <4 x float> %wide.load755, %wide.load756
  %i.si = fmul <4 x float> %i.se, %i.sh
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index753
  %wide.load757 = load <4 x float>, ptr %i.sj, align 4, !tbaa !8
  %i.sk = fdiv <4 x float> %i.si, %wide.load757
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index753
  store <4 x float> %i.sk, ptr %i.sl, align 4, !tbaa !8
  %index.next758 = add nuw i64 %index753, 4       ; 2 uses
  %i.sm = icmp eq i64 %index.next758, %n.vec749
  br i1 %i.sm, label %middle.block759, label %vector.body752, !llvm.loop !76

middle.block759:                                  ; preds = %vector.body752
  %cmp.n760 = icmp eq i64 %n.vec749, %wide.trip.count377
  br i1 %cmp.n760, label %.lr.ph355.preheader, label %.lr.ph353.preheader832

.lr.ph353.preheader832:                           ; preds = %vector.memcheck737, %.lr.ph353.preheader, %middle.block759
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck737 ], [ 0, %.lr.ph353.preheader ], [ %n.vec749, %middle.block759 ] ; 8 uses
  %xtraiter850 = and i64 %wide.trip.count392, 1
  %lcmp.mod851.not = icmp eq i64 %xtraiter850, 0
  br i1 %lcmp.mod851.not, label %.lr.ph353.prol.loopexit, label %.lr.ph353.prol

.lr.ph353.prol:                                   ; preds = %.lr.ph353.preheader832
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409.ph
  %i.so = load float, ptr %i.sn, align 4, !tbaa !8
  %i.sp = fmul float %6, %i.so
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409.ph
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !8
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409.ph
  %i.st = load float, ptr %i.ss, align 4, !tbaa !8
  %i.su = fsub float %i.sr, %i.st
  %i.sv = fmul float %i.sp, %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409.ph
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !8
  %i.sy = fdiv float %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409.ph
  store float %i.sy, ptr %i.sz, align 4, !tbaa !8
  %indvars.iv.next410.prol = or disjoint i64 %indvars.iv409.ph, 1
  br label %.lr.ph353.prol.loopexit

.lr.ph353.prol.loopexit:                          ; preds = %.lr.ph353.prol, %.lr.ph353.preheader832
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %.lr.ph353.preheader832 ], [ %indvars.iv.next410.prol, %.lr.ph353.prol ]
  %i.ta = add nsw i64 %wide.trip.count392, -1
  %i.tb = icmp eq i64 %indvars.iv409.ph, %i.ta
  br i1 %i.tb, label %.lr.ph355.preheader, label %.lr.ph353

.lr.ph351:                                        ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351
  %indvars.iv404 = phi i64 [ %indvars.iv.next405.1, %.lr.ph351 ], [ %indvars.iv404.unr, %.lr.ph351.prol.loopexit ] ; 6 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv404
  %i.td = load float, ptr %i.tc, align 4, !tbaa !8
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv404
  %i.tf = load float, ptr %i.te, align 4, !tbaa !8
  %i.tg = fmul float %i.td, %i.tf
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv404
  %i.ti = load float, ptr %i.th, align 4, !tbaa !8
  %i.tj = fdiv float %i.tg, %i.ti
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv404
  store float %i.tj, ptr %i.tk, align 4, !tbaa !8
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 4 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next405
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !8
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next405
  %i.to = load float, ptr %i.tn, align 4, !tbaa !8
  %i.tp = fmul float %i.tm, %i.to
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next405
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !8
  %i.ts = fdiv float %i.tp, %i.tr
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next405
  store float %i.ts, ptr %i.tt, align 4, !tbaa !8
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404, 2 ; 2 uses
  %exitcond408.not.1 = icmp eq i64 %indvars.iv.next405.1, %wide.trip.count407
  br i1 %exitcond408.not.1, label %.lr.ph353.preheader, label %.lr.ph351, !llvm.loop !77

.lr.ph355.preheader:                              ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353, %middle.block759
  %wide.trip.count417 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check767 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check767, label %.lr.ph355.preheader831, label %vector.memcheck762

vector.memcheck762:                               ; preds = %.lr.ph355.preheader
  %i.tu = sub i64 %i.h, %i.al
  %diff.check763 = icmp ugt i64 %i.tu, -32
  %i.tv = sub i64 %i.w, %i.al
  %diff.check764 = icmp ugt i64 %i.tv, -32
  %conflict.rdx765 = or i1 %diff.check763, %diff.check764
  br i1 %conflict.rdx765, label %.lr.ph355.preheader831, label %vector.ph768

vector.ph768:                                     ; preds = %vector.memcheck762
  %n.vec770 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert771 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat772 = shufflevector <4 x float> %broadcast.splatinsert771, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph768
  %index774 = phi i64 [ 0, %vector.ph768 ], [ %index.next779, %vector.body773 ] ; 4 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index774 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %wide.load775 = load <4 x float>, ptr %i.tw, align 4, !tbaa !8
  %wide.load776 = load <4 x float>, ptr %i.tx, align 4, !tbaa !8
  %i.ty = fmul <4 x float> %broadcast.splat772, %wide.load775
  %i.tz = fmul <4 x float> %broadcast.splat772, %wide.load776
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index774 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %wide.load777 = load <4 x float>, ptr %i.ua, align 4, !tbaa !8
  %wide.load778 = load <4 x float>, ptr %i.ub, align 4, !tbaa !8
  %i.uc = fmul <4 x float> %i.ty, %wide.load777
  %i.ud = fmul <4 x float> %i.tz, %wide.load778
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index774 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store <4 x float> %i.uc, ptr %i.ue, align 4, !tbaa !8
  store <4 x float> %i.ud, ptr %i.uf, align 4, !tbaa !8
  %index.next779 = add nuw i64 %index774, 8       ; 2 uses
  %i.ug = icmp eq i64 %index.next779, %n.vec770
  br i1 %i.ug, label %middle.block780, label %vector.body773, !llvm.loop !78

middle.block780:                                  ; preds = %vector.body773
  %cmp.n781 = icmp eq i64 %n.vec770, %wide.trip.count377
  br i1 %cmp.n781, label %.lr.ph357.preheader, label %.lr.ph355.preheader831

.lr.ph355.preheader831:                           ; preds = %vector.memcheck762, %.lr.ph355.preheader, %middle.block780
  %indvars.iv414.ph = phi i64 [ 0, %vector.memcheck762 ], [ 0, %.lr.ph355.preheader ], [ %n.vec770, %middle.block780 ] ; 6 uses
  %xtraiter853 = and i64 %wide.trip.count392, 1
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %.lr.ph355.prol.loopexit, label %.lr.ph355.prol

.lr.ph355.prol:                                   ; preds = %.lr.ph355.preheader831
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414.ph
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !8
  %i.uj = fmul float %i.be, %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414.ph
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !8
  %i.um = fmul float %i.uj, %i.ul
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414.ph
  store float %i.um, ptr %i.un, align 4, !tbaa !8
  %indvars.iv.next415.prol = or disjoint i64 %indvars.iv414.ph, 1
  br label %.lr.ph355.prol.loopexit

.lr.ph355.prol.loopexit:                          ; preds = %.lr.ph355.prol, %.lr.ph355.preheader831
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %.lr.ph355.preheader831 ], [ %indvars.iv.next415.prol, %.lr.ph355.prol ]
  %i.uo = add nsw i64 %wide.trip.count392, -1
  %i.up = icmp eq i64 %indvars.iv414.ph, %i.uo
  br i1 %i.up, label %.lr.ph357.preheader, label %.lr.ph355

.lr.ph353:                                        ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %.lr.ph353 ], [ %indvars.iv409.unr, %.lr.ph353.prol.loopexit ] ; 7 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !8
  %i.us = fmul float %6, %i.ur
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !8
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !8
  %i.ux = fsub float %i.uu, %i.uw
  %i.uy = fmul float %i.us, %i.ux
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409
  %i.va = load float, ptr %i.uz, align 4, !tbaa !8
  %i.vb = fdiv float %i.uy, %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409
  store float %i.vb, ptr %i.vc, align 4, !tbaa !8
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 5 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next410
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !8
  %i.vf = fmul float %6, %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next410
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !8
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next410
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !8
  %i.vk = fsub float %i.vh, %i.vj
  %i.vl = fmul float %i.vf, %i.vk
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next410
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !8
  %i.vo = fdiv float %i.vl, %i.vn
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next410
  store float %i.vo, ptr %i.vp, align 4, !tbaa !8
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %wide.trip.count412
  br i1 %exitcond413.not.1, label %.lr.ph355.preheader, label %.lr.ph353, !llvm.loop !79

.lr.ph357.preheader:                              ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355, %middle.block780
  %wide.trip.count422 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check788 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check788, label %.lr.ph357.preheader830, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph357.preheader
  %i.vq = sub i64 %.0309642, %i.ao
  %diff.check784 = icmp ugt i64 %i.vq, -32
  %i.vr = sub i64 %i.t, %i.ao
  %diff.check785 = icmp ugt i64 %i.vr, -32
  %conflict.rdx786 = or i1 %diff.check784, %diff.check785
  br i1 %conflict.rdx786, label %.lr.ph357.preheader830, label %vector.ph789

vector.ph789:                                     ; preds = %vector.memcheck783
  %n.vec791 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph789
  %index793 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body792 ] ; 4 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index793 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load794 = load <4 x float>, ptr %i.vs, align 4, !tbaa !8
  %wide.load795 = load <4 x float>, ptr %i.vt, align 4, !tbaa !8
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index793 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %wide.load796 = load <4 x float>, ptr %i.vu, align 4, !tbaa !8
  %wide.load797 = load <4 x float>, ptr %i.vv, align 4, !tbaa !8
  %i.vw = fsub <4 x float> splat (float 1.000000e+00), %wide.load796
  %i.vx = fsub <4 x float> splat (float 1.000000e+00), %wide.load797
  %i.vy = fmul <4 x float> %wide.load794, %i.vw
  %i.vz = fmul <4 x float> %wide.load795, %i.vx
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index793 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <4 x float> %i.vy, ptr %i.wa, align 4, !tbaa !8
  store <4 x float> %i.vz, ptr %i.wb, align 4, !tbaa !8
  %index.next798 = add nuw i64 %index793, 8       ; 2 uses
  %i.wc = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.wc, label %middle.block799, label %vector.body792, !llvm.loop !80

middle.block799:                                  ; preds = %vector.body792
  %cmp.n800 = icmp eq i64 %n.vec791, %wide.trip.count377
  br i1 %cmp.n800, label %.lr.ph359.preheader, label %.lr.ph357.preheader830

.lr.ph357.preheader830:                           ; preds = %vector.memcheck783, %.lr.ph357.preheader, %middle.block799
  %indvars.iv419.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph357.preheader ], [ %n.vec791, %middle.block799 ] ; 6 uses
  %xtraiter856 = and i64 %wide.trip.count392, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader830
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419.ph
  %i.we = load float, ptr %i.wd, align 4, !tbaa !8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419.ph
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !8
  %i.wh = fsub float 1.000000e+00, %i.wg
  %i.wi = fmul float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419.ph
  store float %i.wi, ptr %i.wj, align 4, !tbaa !8
  %indvars.iv.next420.prol = or disjoint i64 %indvars.iv419.ph, 1
  br label %.lr.ph357.prol.loopexit

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader830
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph357.preheader830 ], [ %indvars.iv.next420.prol, %.lr.ph357.prol ]
  %i.wk = add nsw i64 %wide.trip.count392, -1
  %i.wl = icmp eq i64 %indvars.iv419.ph, %i.wk
  br i1 %i.wl, label %.lr.ph359.preheader, label %.lr.ph357

.lr.ph355:                                        ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.1, %.lr.ph355 ], [ %indvars.iv414.unr, %.lr.ph355.prol.loopexit ] ; 5 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !8
  %i.wo = fmul float %i.be, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !8
  %i.wr = fmul float %i.wo, %i.wq
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414
  store float %i.wr, ptr %i.ws, align 4, !tbaa !8
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 3 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next415
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !8
  %i.wv = fmul float %i.be, %i.wu
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next415
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !8
  %i.wy = fmul float %i.wv, %i.wx
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next415
  store float %i.wy, ptr %i.wz, align 4, !tbaa !8
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %exitcond418.not.1 = icmp eq i64 %indvars.iv.next415.1, %wide.trip.count417
  br i1 %exitcond418.not.1, label %.lr.ph357.preheader, label %.lr.ph355, !llvm.loop !81

.lr.ph359.preheader:                              ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %middle.block799
  %wide.trip.count427 = zext i32 %.sroa.7246.0.copyload to i64 ; 3 uses
  %min.iters.check811 = icmp ult i32 %.sroa.7246.0.copyload, 12
  br i1 %min.iters.check811, label %.lr.ph359.preheader829, label %vector.memcheck802

vector.memcheck802:                               ; preds = %.lr.ph359.preheader
  %i.xa = sub i64 %i.af, %.0309642
  %diff.check803 = icmp ugt i64 %i.xa, -32
  %i.xb = sub i64 %i.ai, %.0309642
  %diff.check804 = icmp ugt i64 %i.xb, -32
  %conflict.rdx805 = or i1 %diff.check803, %diff.check804
  %i.xc = sub i64 %i.al, %.0309642
  %diff.check806 = icmp ugt i64 %i.xc, -32
  %conflict.rdx807 = or i1 %conflict.rdx805, %diff.check806
  %i.xd = sub i64 %i.ao, %.0309642
  %diff.check808 = icmp ugt i64 %i.xd, -32
  %conflict.rdx809 = or i1 %conflict.rdx807, %diff.check808
  br i1 %conflict.rdx809, label %.lr.ph359.preheader829, label %vector.ph812

vector.ph812:                                     ; preds = %vector.memcheck802
  %n.vec814 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body815

vector.body815:                                   ; preds = %vector.body815, %vector.ph812
  %index816 = phi i64 [ 0, %vector.ph812 ], [ %index.next825, %vector.body815 ] ; 6 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index816 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %wide.load817 = load <4 x float>, ptr %i.xe, align 4, !tbaa !8
  %wide.load818 = load <4 x float>, ptr %i.xf, align 4, !tbaa !8
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index816 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %wide.load819 = load <4 x float>, ptr %i.xg, align 4, !tbaa !8
  %wide.load820 = load <4 x float>, ptr %i.xh, align 4, !tbaa !8
  %i.xi = fadd <4 x float> %wide.load817, %wide.load819
  %i.xj = fadd <4 x float> %wide.load818, %wide.load820
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index816 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load821 = load <4 x float>, ptr %i.xk, align 4, !tbaa !8
  %wide.load822 = load <4 x float>, ptr %i.xl, align 4, !tbaa !8
  %i.xm = fadd <4 x float> %i.xi, %wide.load821
  %i.xn = fadd <4 x float> %i.xj, %wide.load822
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index816 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %wide.load823 = load <4 x float>, ptr %i.xo, align 4, !tbaa !8
  %wide.load824 = load <4 x float>, ptr %i.xp, align 4, !tbaa !8
  %i.xq = fadd <4 x float> %i.xm, %wide.load823
  %i.xr = fadd <4 x float> %i.xn, %wide.load824
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index816 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store <4 x float> %i.xq, ptr %i.xs, align 4, !tbaa !8
  store <4 x float> %i.xr, ptr %i.xt, align 4, !tbaa !8
  %index.next825 = add nuw i64 %index816, 8       ; 2 uses
  %i.xu = icmp eq i64 %index.next825, %n.vec814
  br i1 %i.xu, label %middle.block826, label %vector.body815, !llvm.loop !82

middle.block826:                                  ; preds = %vector.body815
  %cmp.n827 = icmp eq i64 %n.vec814, %wide.trip.count377
  br i1 %cmp.n827, label %._crit_edge360, label %.lr.ph359.preheader829

.lr.ph359.preheader829:                           ; preds = %vector.memcheck802, %.lr.ph359.preheader, %middle.block826
  %indvars.iv424.ph = phi i64 [ 0, %vector.memcheck802 ], [ 0, %.lr.ph359.preheader ], [ %n.vec814, %middle.block826 ] ; 8 uses
  %xtraiter859 = and i64 %wide.trip.count427, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph359.prol.loopexit, label %.lr.ph359.prol

.lr.ph359.prol:                                   ; preds = %.lr.ph359.preheader829
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424.ph
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !8
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424.ph
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !8
  %i.xz = fadd float %i.xw, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424.ph
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !8
  %i.yc = fadd float %i.xz, %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424.ph
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !8
  %i.yf = fadd float %i.yc, %i.ye
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424.ph
  store float %i.yf, ptr %i.yg, align 4, !tbaa !8
  %indvars.iv.next425.prol = or disjoint i64 %indvars.iv424.ph, 1
  br label %.lr.ph359.prol.loopexit

.lr.ph359.prol.loopexit:                          ; preds = %.lr.ph359.prol, %.lr.ph359.preheader829
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %.lr.ph359.preheader829 ], [ %indvars.iv.next425.prol, %.lr.ph359.prol ]
  %i.yh = add nsw i64 %wide.trip.count427, -1
  %i.yi = icmp eq i64 %indvars.iv424.ph, %i.yh
  br i1 %i.yi, label %._crit_edge360, label %.lr.ph359

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.1, %.lr.ph357 ], [ %indvars.iv419.unr, %.lr.ph357.prol.loopexit ] ; 5 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !8
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !8
  %i.yn = fsub float 1.000000e+00, %i.ym
  %i.yo = fmul float %i.yk, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419
  store float %i.yo, ptr %i.yp, align 4, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 3 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next420
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !8
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next420
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !8
  %i.yu = fsub float 1.000000e+00, %i.yt
  %i.yv = fmul float %i.yr, %i.yu
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next420
  store float %i.yv, ptr %i.yw, align 4, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %exitcond423.not.1 = icmp eq i64 %indvars.iv.next420.1, %wide.trip.count422
  br i1 %exitcond423.not.1, label %.lr.ph359.preheader, label %.lr.ph357, !llvm.loop !83

._crit_edge360:                                   ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359, %middle.block826, %bb.b, %.preheader330, %bb.d
  ret void

.lr.ph359:                                        ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %.lr.ph359 ], [ %indvars.iv424.unr, %.lr.ph359.prol.loopexit ] ; 7 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !8
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424
  %i.za = load float, ptr %i.yz, align 4, !tbaa !8
  %i.zb = fadd float %i.yy, %i.za
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !8
  %i.ze = fadd float %i.zb, %i.zd
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !8
  %i.zh = fadd float %i.ze, %i.zg
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424
  store float %i.zh, ptr %i.zi, align 4, !tbaa !8
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 5 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next425
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !8
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next425
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !8
  %i.zn = fadd float %i.zk, %i.zm
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next425
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !8
  %i.zq = fadd float %i.zn, %i.zp
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next425
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !8
  %i.zt = fadd float %i.zq, %i.zs
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next425
  store float %i.zt, ptr %i.zu, align 4, !tbaa !8
  %indvars.iv.next425.1 = add nuw nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %indvars.iv.next425.1, %wide.trip.count427
  br i1 %exitcond428.not.1, label %._crit_edge360, label %.lr.ph359, !llvm.loop !84
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @interpolateTable(ptr nofree noundef readonly byval(%struct.Table) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !85
  %i.c = fcmp ogt float %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = fdiv float %1, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 5.000000e-01, float %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = load ptr, ptr %0, align 8, !tbaa !88
  %i.j = shl nsw i32 %i.h, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %1, float %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.p, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @transport_sweep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.AttenuateVars, align 8      ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %i.e, %i.h                    ; 2 uses
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.j, %i.p                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  %i.t = mul nsw i32 %i.s, 14
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 7 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.y = load i32, ptr %i.r, align 4, !tbaa !97
  %i.z = sext i32 %i.y to i64                     ; 18 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.z ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.z ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr [4 x i8], ptr %i.ag, i64 %i.z ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.z ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %i.z ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.z ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.z ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.z ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.z ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.au, ptr %i.av, align 8, !tbaa !25
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.z
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !98 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge223

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = fptrunc double %i.q to float            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !99 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.preheader.preheader, label %._crit_edge223
end_hunk_0
begin_hunk_1_@two_way_transport_sweep:bb.a
  br i1 %exitcond93.not.i341, label %.lr.ph81.i344.preheader, label %scalar.ph537, !llvm.loop !221

.lr.ph81.i344.preheader:                          ; preds = %scalar.ph537, %middle.block552
  %min.iters.check489 = icmp ult i32 %i.qz, 8
  br i1 %min.iters.check489, label %.lr.ph81.i344.preheader673, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81.i344.preheader
  %i.tz = shl nuw nsw i64 %wide.trip.count.i323, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.qy, i64 %i.tz
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.tz
  %bound0 = icmp ult ptr %i.qy, %scevgep487
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph81.i344.preheader673, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck
  %n.vec492 = and i64 %wide.trip.count.i323, 2147483640 ; 3 uses
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph490
  %index494 = phi i64 [ 0, %vector.ph490 ], [ %index.next498, %vector.body493 ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index494 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %wide.load = load <4 x float>, ptr %i.ua, align 4, !tbaa !8, !alias.scope !222
  %wide.load495 = load <4 x float>, ptr %i.ub, align 4, !tbaa !8, !alias.scope !222
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index494 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16 ; 2 uses
  %wide.load496 = load <4 x float>, ptr %i.uc, align 4, !tbaa !8, !alias.scope !225, !noalias !222
  %wide.load497 = load <4 x float>, ptr %i.ud, align 4, !tbaa !8, !alias.scope !225, !noalias !222
  %i.ue = fadd <4 x float> %wide.load, %wide.load496
  %i.uf = fadd <4 x float> %wide.load495, %wide.load497
  store <4 x float> %i.ue, ptr %i.uc, align 4, !tbaa !8, !alias.scope !225, !noalias !222
  store <4 x float> %i.uf, ptr %i.ud, align 4, !tbaa !8, !alias.scope !225, !noalias !222
  %index.next498 = add nuw i64 %index494, 8       ; 2 uses
  %i.ug = icmp eq i64 %index.next498, %n.vec492
  br i1 %i.ug, label %middle.block499, label %vector.body493, !llvm.loop !227

middle.block499:                                  ; preds = %vector.body493
  %cmp.n500 = icmp eq i64 %n.vec492, %wide.trip.count.i323
  br i1 %cmp.n500, label %attenuate_FSR_fluxes.exit348, label %.lr.ph81.i344.preheader673

.lr.ph81.i344.preheader673:                       ; preds = %vector.memcheck, %.lr.ph81.i344.preheader, %middle.block499
  %indvars.iv94.i345.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81.i344.preheader ], [ %n.vec492, %middle.block499 ] ; 3 uses
  %xtraiter684 = and i64 %wide.trip.count.i323, 3 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph81.i344.prol.loopexit, label %.lr.ph81.i344.prol

.lr.ph81.i344.prol:                               ; preds = %.lr.ph81.i344.preheader673, %.lr.ph81.i344.prol
  %indvars.iv94.i345.prol = phi i64 [ %indvars.iv.next95.i346.prol, %.lr.ph81.i344.prol ], [ %indvars.iv94.i345.ph, %.lr.ph81.i344.preheader673 ] ; 3 uses
  %prol.iter686 = phi i64 [ %prol.iter686.next, %.lr.ph81.i344.prol ], [ 0, %.lr.ph81.i344.preheader673 ]
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv94.i345.prol
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !8
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv94.i345.prol ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !8
  %i.ul = fadd float %i.ui, %i.uk
  store float %i.ul, ptr %i.uj, align 4, !tbaa !8
  %indvars.iv.next95.i346.prol = add nuw nsw i64 %indvars.iv94.i345.prol, 1 ; 2 uses
  %prol.iter686.next = add i64 %prol.iter686, 1   ; 2 uses
  %prol.iter686.cmp.not = icmp eq i64 %prol.iter686.next, %xtraiter684
  br i1 %prol.iter686.cmp.not, label %.lr.ph81.i344.prol.loopexit, label %.lr.ph81.i344.prol, !llvm.loop !228

.lr.ph81.i344.prol.loopexit:                      ; preds = %.lr.ph81.i344.prol, %.lr.ph81.i344.preheader673
  %indvars.iv94.i345.unr = phi i64 [ %indvars.iv94.i345.ph, %.lr.ph81.i344.preheader673 ], [ %indvars.iv.next95.i346.prol, %.lr.ph81.i344.prol ]
  %i.um = sub nsw i64 %indvars.iv94.i345.ph, %wide.trip.count.i323
  %i.un = icmp ugt i64 %i.um, -4
  br i1 %i.un, label %attenuate_FSR_fluxes.exit348, label %.lr.ph81.i344

.lr.ph81.i344:                                    ; preds = %.lr.ph81.i344.prol.loopexit, %.lr.ph81.i344
  %indvars.iv94.i345 = phi i64 [ %indvars.iv.next95.i346.3, %.lr.ph81.i344 ], [ %indvars.iv94.i345.unr, %.lr.ph81.i344.prol.loopexit ] ; 6 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv94.i345
  %i.up = load float, ptr %i.uo, align 4, !tbaa !8
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv94.i345 ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !8
  %i.us = fadd float %i.up, %i.ur
  store float %i.us, ptr %i.uq, align 4, !tbaa !8
  %indvars.iv.next95.i346 = add nuw nsw i64 %indvars.iv94.i345, 1 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i346
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !8
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next95.i346 ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !8
  %i.ux = fadd float %i.uu, %i.uw
  store float %i.ux, ptr %i.uv, align 4, !tbaa !8
  %indvars.iv.next95.i346.1 = add nuw nsw i64 %indvars.iv94.i345, 2 ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i346.1
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !8
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next95.i346.1 ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !8
  %i.vc = fadd float %i.uz, %i.vb
  store float %i.vc, ptr %i.va, align 4, !tbaa !8
  %indvars.iv.next95.i346.2 = add nuw nsw i64 %indvars.iv94.i345, 3 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next95.i346.2
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !8
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next95.i346.2 ; 2 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !8
  %i.vh = fadd float %i.ve, %i.vg
  store float %i.vh, ptr %i.vf, align 4, !tbaa !8
  %indvars.iv.next95.i346.3 = add nuw nsw i64 %indvars.iv94.i345, 4 ; 2 uses
  %exitcond98.not.i347.3 = icmp eq i64 %indvars.iv.next95.i346.3, %wide.trip.count.i323
  br i1 %exitcond98.not.i347.3, label %attenuate_FSR_fluxes.exit348, label %.lr.ph81.i344, !llvm.loop !229

attenuate_FSR_fluxes.exit348:                     ; preds = %.lr.ph81.i344.prol.loopexit, %.lr.ph81.i344, %middle.block499, %bb.aa, %bb.y, %bb.z
  %.8 = phi i64 [ %i.py, %bb.z ], [ %.7381, %bb.y ], [ %.7381, %bb.aa ], [ %.7381, %middle.block499 ], [ %.7381, %.lr.ph81.i344 ], [ %.7381, %.lr.ph81.i344.prol.loopexit ] ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !28
  %i.vk = fneg float %i.pk
  %i.vl = tail call float @llvm.fmuladd.f32(float %i.vk, float %i.ec, float %i.vj)
  store float %i.vl, ptr %i.vi, align 4, !tbaa !28
  %i.vm = icmp sgt i64 %indvars.iv425, 1
  br i1 %i.vm, label %bb.y, label %._crit_edge385.loopexit

._crit_edge394:                                   ; preds = %.lr.ph393.split, %.lr.ph393.split.us, %middle.block483, %middle.block, %.preheader352, %.preheader
  %.lcssa464 = phi i32 [ %i.pf, %middle.block ], [ %i.eo, %.preheader352 ], [ %i.pf, %.preheader ], [ %i.pf, %middle.block483 ], [ %i.pf, %.lr.ph393.split.us ], [ %i.pf, %.lr.ph393.split ]
  %.6.lcssa463 = phi i64 [ %.7.lcssa, %middle.block ], [ %.2.lcssa, %.preheader352 ], [ %.7.lcssa, %.preheader ], [ %.7.lcssa, %middle.block483 ], [ %.7.lcssa, %.lr.ph393.split.us ], [ %.7.lcssa, %.lr.ph393.split ] ; 2 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %i.vn = load i32, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next440, %i.vo
  br i1 %i.vp, label %.lr.ph398, label %.preheader354

.lr.ph393.split:                                  ; preds = %.lr.ph393.split.preheader675, %.lr.ph393.split
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %.lr.ph393.split ], [ %indvars.iv431.ph, %.lr.ph393.split.preheader675 ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [40 x i8], ptr %i.nj, i64 %indvars.iv431
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.vr = trunc nuw nsw i64 %indvars.iv.next432 to i32
  %i.vs = uitofp nneg i32 %i.vr to float
  %i.vt = fmul float %i.nl, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  store float %i.vt, ptr %i.vu, align 4, !tbaa !28
  %exitcond.not = icmp eq i64 %indvars.iv.next432, %wide.trip.count437
  br i1 %exitcond.not, label %._crit_edge394, label %.lr.ph393.split, !llvm.loop !230

._crit_edge402:                                   ; preds = %.lr.ph401, %.preheader354
  tail call void @free(ptr noundef %i.cm) #16
  tail call void @free(ptr noundef %i.cq) #16
  tail call void @free(ptr noundef %i.cu) #16
  tail call void @free(ptr noundef %i.cy) #16
  %i.vv = add nuw nsw i64 %.0278403, 1            ; 2 uses
  %i.vw = load i64, ptr %i.az, align 8, !tbaa !98 ; 2 uses
  %i.vx = icmp slt i64 %i.vv, %i.vw
  br i1 %i.vx, label %bb.d, label %._crit_edge407

.lr.ph401:                                        ; preds = %.preheader354, %.lr.ph401
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %.lr.ph401 ], [ 0, %.preheader354 ] ; 3 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv441
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !173
  tail call void @free(ptr noundef %i.vz) #16
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv441
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.wb) #16
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %i.wc = load i32, ptr %i.bd, align 8, !tbaa !109
  %i.wd = sext i32 %i.wc to i64
  %i.we = icmp slt i64 %indvars.iv.next442, %i.wd
  br i1 %i.we, label %.lr.ph401, label %._crit_edge402
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @calc_next_fai(float noundef %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 {
bb.a:
  %i.a = fdiv float %0, %1
  %i.b = fptosi float %i.a to i32
  %i.c = zext i1 %2 to i32
  %.0 = add nsw i32 %i.b, %i.c
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @alt_attenuate_fluxes(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.b = load float, ptr %i.a, align 4, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !94
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !95
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = sitofp i32 %i.j to float
  %i.l = fdiv float %i.b, %i.k                    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !28 ; 2 uses
  %i.o = fpext float %i.n to double
  %i.p = fpext float %i.l to double
  %i.q = fdiv float %i.n, %i.l
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %i.s = sitofp i32 %i.r to double
  %i.t = fadd double %i.s, 5.000000e-01
  %i.u = fneg double %i.p
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.t, double %i.o)
  %i.w = fptrunc double %i.v to float             ; 6 uses
  %i.x = srem i32 %i.r, %i.d                      ; 3 uses
  %i.y = load float, ptr %0, align 8, !tbaa !31
  %i.z = fmul float %7, %i.y
  %i.aa = fmul float %6, %6
  %i.ab = load ptr, ptr %2, align 8, !tbaa !32
  %i.ac = sext i32 %i.x to i64                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !97 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = icmp eq i32 %i.x, 0
  %i.al = add nsw i32 %i.d, -1
  %i.am = icmp eq i32 %i.x, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = fmul float %i.l, 2.000000e+00           ; 2 uses
  %i.ap = fmul float %i.l, %i.ao
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.0136.in.v = select i1 %1, i64 24, i64 32
  %.0136.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0136.in.v
  %.0136 = load ptr, ptr %.0136.in, align 8, !tbaa !10
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ac ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %interpolateTable.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %interpolateTable.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %interpolateTable.exit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !8 ; 6 uses
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !8 ; 2 uses
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !8
  %i.be = fsub float %i.bd, %i.ba
  %i.bf = fdiv float %i.be, %i.l                  ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.w, float %i.ba)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !8 ; 3 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !8 ; 4 uses
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = fsub float %i.bm, %i.bj
  %i.bo = fdiv float %i.bn, %i.l                  ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.w, float %i.bm)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load float, ptr %i.br, align 4, !tbaa !8 ; 2 uses
  %i.bt = fsub float %i.bj, %i.bs
  %8 = fdiv float %i.bt, %i.ao                    ; 2 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bm, float -2.000000e+00, float %i.bj)
  %9 = fadd float %i.bu, %i.bs
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %i.w, float %i.bm)
  %11 = fdiv float %9, %i.ap                      ; 3 uses
  %12 = fmul float %11, %i.w
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %i.w, float %10)
  %14 = fmul float %11, 2.000000e+00
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %i.w, float %8)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0139 = phi float [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.e ], [ %11, %bb.f ]
  %.0138 = phi float [ %i.bf, %bb.c ], [ %i.bo, %bb.e ], [ %15, %bb.f ]
  %.0137 = phi float [ %i.bg, %bb.c ], [ %i.bp, %bb.e ], [ %13, %bb.f ] ; 3 uses
  %i.bv = fmul float %5, %i.ax                    ; 9 uses
  %i.bw = fmul float %i.ax, %i.ax                 ; 4 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.bx = fcmp ogt float %i.bv, %.sroa.5.0.copyload
  br i1 %i.bx, label %interpolateTable.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.aq, align 8
  %i.by = fdiv float %i.bv, %.sroa.4.0.copyload
  %i.bz = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload, float 5.000000e-01, float %i.by)
  %i.ca = fptosi float %i.bz to i32
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !8
  %i.cf = getelementptr i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !8
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.bv, float %i.cg)
  br label %interpolateTable.exit

interpolateTable.exit:                            ; preds = %bb.g, %bb.h
  %.0.i = phi float [ %i.ch, %bb.h ], [ 1.000000e+00, %bb.g ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.0136, i64 %indvars.iv ; 3 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !8
  %i.ck = fneg float %.0137
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.cj, float %i.ck)
  %i.cm = fmul float %.0.i, %i.cl
  %i.cn = fmul float %6, %.0138                   ; 2 uses
  %i.co = fadd float %i.bv, -2.000000e+00
  %i.cp = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cq, <float -6.000000e+00, float 2.000000e+00>
  %i.cs = fmul float %i.aa, %.0139                ; 2 uses
  %i.ct = fadd float %i.bv, -3.000000e+00
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ct, float 6.000000e+00)
  %i.cv = fmul float %i.bw, 3.000000e+00
  %i.cw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.co, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cr) ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cn, i64 1
  %i.dd = fmul <2 x float> %i.dc, %i.da
  %i.de = fmul float %i.bw, %i.cv
  %i.df = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = fpext float %.0.i to double
  %i.dj = fsub double 1.000000e+00, %i.di
  %i.dk = fsub float %i.bv, %.0.i
  %i.dl = extractelement <2 x float> %i.da, i64 1
  %i.dm = tail call float @llvm.fmuladd.f32(float %.0137, float %i.bv, float %i.cm)
  %i.dn = fmul float %i.ax, %i.bw                 ; 2 uses
  %i.do = insertelement <2 x float> %i.df, float %i.dn, i64 1
  %i.dp = fdiv <2 x float> %i.dd, %i.do           ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 1
  %i.dr = fmul float %i.cs, %i.dl
  %i.ds = fmul float %i.cn, %i.dk
  %i.dt = fmul float %.0137, %.0.i
  %i.du = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.dt, i64 1
  %i.dw = insertelement <4 x float> %i.dv, float %i.ds, i64 2
  %i.dx = insertelement <4 x float> %i.dw, float %i.dr, i64 3
  %i.dy = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.ax, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dn, i64 3
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ec = fdiv <4 x float> %i.dx, %i.eb           ; 4 uses
  %i.ed = extractelement <4 x float> %i.ec, i64 0
  %i.ee = fadd float %i.dq, %i.ed
  %i.ef = extractelement <2 x float> %i.dp, i64 0
  %i.eg = fadd float %i.ef, %i.ee
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.z, float %i.eg, float %i.dh)
  store float %i.eh, ptr %i.dg, align 4, !tbaa !8
  %i.ei = load float, ptr %i.ci, align 4, !tbaa !8
  %i.ej = fpext float %i.ei to double
  %i.ek = extractelement <4 x float> %i.ec, i64 1
  %i.el = fpext float %i.ek to double
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.dj, double %i.el)
  %i.en = extractelement <4 x float> %i.ec, i64 2
  %i.eo = fpext float %i.en to double
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = extractelement <4 x float> %i.ec, i64 3
  %i.er = fpext float %i.eq to double
  %i.es = fadd double %i.ep, %i.er
  %i.et = fptrunc double %i.es to float
  store float %i.et, ptr %i.ci, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define dso_local void @renormalize_flux(ptr nofree noundef readonly byval(%struct.Params) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Input) align 8 captures(none) %1, ptr nofree noundef readnone byval(%struct.CommGrid) align 8 captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117  ; 7 uses
  %i.f = shl i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #17 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96   ; 6 uses
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #17 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !97   ; 11 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #17 ; 6 uses
  %i.r = icmp sgt i64 %i.e, 0                     ; 2 uses
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = icmp sgt i32 %i.i, 0
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = icmp sgt i32 %i.n, 0
  %wide.trip.count130 = zext nneg i32 %i.i to i64 ; 2 uses
  br i1 %i.v, label %.preheader75.lr.ph.us.us.preheader, label %.preheader75.lr.ph.us

.preheader75.lr.ph.us.us.preheader:               ; preds = %.lr.ph.split.us
  %wide.trip.count125 = zext nneg i32 %i.n to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count125, 1
  %i.w = icmp eq i32 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count125, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod199 = trunc i32 %i.n to i1
  br label %.preheader75.lr.ph.us.us

.preheader75.lr.ph.us.us:                         ; preds = %.preheader75.lr.ph.us.us.preheader, %._crit_edge78.split.us.us.us
  %indvars.iv132 = phi i64 [ 0, %.preheader75.lr.ph.us.us.preheader ], [ %indvars.iv.next133, %._crit_edge78.split.us.us.us ] ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv132 ; 3 uses
  %.sroa.0.0.copyload.us.us = load ptr, ptr %i.x, align 8, !tbaa !231
  %.sroa.440.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.440.0.copyload.us.us = load float, ptr %.sroa.440.0..sroa_idx.us.us, align 8, !tbaa !8 ; 3 uses
  %.sroa.541.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.541.0.copyload.us.us = load ptr, ptr %.sroa.541.0..sroa_idx.us.us, align 8, !tbaa !231 ; 3 uses
  br label %.preheader75.us.us.us

.preheader75.us.us.us:                            ; preds = %._crit_edge.us.us.us, %.preheader75.lr.ph.us.us
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %._crit_edge.us.us.us ], [ 0, %.preheader75.lr.ph.us.us ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.us.us, i64 %indvars.iv127
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader75.us.us.us.new

.preheader75.us.us.us.new:                        ; preds = %.preheader75.us.us.us, %.preheader75.us.us.us.new
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %.preheader75.us.us.us.new ], [ 0, %.preheader75.us.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader75.us.us.us.new ], [ 0, %.preheader75.us.us.us ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv122
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !8
  %i.ac = fmul float %.sroa.440.0.copyload.us.us, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.541.0.copyload.us.us, i64 %indvars.iv122
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = load float, ptr %i.ae, align 4, !tbaa !8
  %i.ag = fmul float %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv122
  store float %i.ag, ptr %i.ah, align 4, !tbaa !8
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next123
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8
  %i.ak = fmul float %.sroa.440.0.copyload.us.us, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.541.0.copyload.us.us, i64 %indvars.iv.next123
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10
  %i.an = load float, ptr %i.am, align 4, !tbaa !8
  %i.ao = fmul float %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next123
  store float %i.ao, ptr %i.ap, align 4, !tbaa !8
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader75.us.us.us.new

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader75.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader75.us.us.us
  %indvars.iv122.epil.init = phi i64 [ 0, %.preheader75.us.us.us ], [ %indvars.iv.next123.1, %._crit_edge.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv122.epil.init
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !8
  %i.as = fmul float %.sroa.440.0.copyload.us.us, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.541.0.copyload.us.us, i64 %indvars.iv122.epil.init
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10
  %i.av = load float, ptr %i.au, align 4, !tbaa !8
  %i.aw = fmul float %i.as, %i.av
end_hunk_1
