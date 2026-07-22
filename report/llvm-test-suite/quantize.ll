inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@convert_mdct = external local_unnamed_addr global i32, align 4
@reduce_sidechannel = external local_unnamed_addr global i32, align 4
@masking_lower = external local_unnamed_addr global float, align 4
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 16
@outer_loop.OldValue = internal unnamed_addr global [2 x i32] [i32 180, i32 180], align 4
@pretab = external local_unnamed_addr global [21 x i32], align 16
@pow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@pow43 = external local_unnamed_addr global [8208 x double], align 16

; Function Attrs: nounwind uwtable
define dso_local void @iteration_loop(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 3 uses
  %8 = alloca [2 x %struct.III_psy_xmin], align 16 ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #11
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.e = load i32, ptr %i.c, align 4, !tbaa !4
  %i.f = load i32, ptr %i.b, align 4, !tbaa !4
  %i.g = call i32 @ResvFrameBegin(ptr noundef %0, ptr noundef %5, i32 noundef %i.e, i32 noundef %i.f) #11 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 276
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph105, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next114, %._crit_edge ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.o = load i32, ptr @convert_mdct, align 4, !tbaa !4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv113 ; 2 uses
  call void @ms_convert(ptr noundef %i.p, ptr noundef %i.p) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load i32, ptr %i.c, align 4, !tbaa !4
  %i.r = trunc nuw nsw i64 %indvars.iv113 to i32  ; 3 uses
  call void @on_pe(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, ptr noundef nonnull %i.d, i32 noundef %i.q, i32 noundef %i.r) #11
  %i.s = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %.not91 = icmp eq i32 %i.s, 0
  br i1 %.not91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv113
  %i.u = load double, ptr %i.t, align 8, !tbaa !14
  %i.v = load i32, ptr %i.c, align 4, !tbaa !4
  call void @reduce_side(ptr noundef nonnull %i.d, double noundef %i.u, i32 noundef %i.v) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load i32, ptr %i.k, align 4, !tbaa !16
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [240 x i8], ptr %i.l, i64 %indvars.iv113
  %i.z = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv113
  %i.aa = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv113 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv113 ; 4 uses
  %i.ac = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv113
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv110 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next111, %bb.s ] ; 14 uses
  %i.ad = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %indvars.iv110 ; 17 uses
  %i.ae = getelementptr inbounds nuw [4608 x i8], ptr %i.z, i64 %indvars.iv110 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store ptr @nr_of_sfb_block, ptr %i.ag, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 76
  store i32 0, ptr %i.ak, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.ad, align 8, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i32 0, ptr %i.al, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i32 0, ptr %i.am, align 8, !tbaa !23
  %i.an = load i32, ptr %i.m, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %.thread.i.preheader, label %bb.h

.thread.i.preheader:                              ; preds = %bb.h, %bb.g
  br label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !25
  %.not79.i = icmp eq i32 %i.ap, 2
  br i1 %.not79.i, label %.preheader84.i, label %.thread.i.preheader

.preheader84.i:                                   ; preds = %bb.h, %.preheader84.i
  %.sroa.11.0.i = phi double [ %i.bg, %.preheader84.i ], [ 0.000000e+00, %bb.h ]
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.1, %.preheader84.i ], [ 0, %bb.h ] ; 3 uses
  %.07092.i = phi i32 [ %9, %.preheader84.i ], [ 0, %bb.h ]
  %i.aq = phi <2 x double> [ %i.bl, %.preheader84.i ], [ zeroinitializer, %bb.h ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.a ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %.sroa.11.0.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.as, i64 1 ; 2 uses
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> %i.aq)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.a ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.bg = call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.av) ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bd, i64 1 ; 2 uses
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> %i.ba) ; 5 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.a, 6
  %9 = add nuw nsw i32 %.07092.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %9, 192
  br i1 %exitcond.not.i.1, label %init_outer_loop.exit, label %.preheader84.i, !llvm.loop !26

.thread.i.1:                                      ; preds = %.thread.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv118.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  %i.bp = call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ogt double %i.bp, 1.000000e-99
  br i1 %i.bq, label %init_outer_loop.exit.thread95, label %.thread.i.2

.thread.i.2:                                      ; preds = %.thread.i.1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv118.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14
  %i.bu = call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ogt double %i.bu, 1.000000e-99
  br i1 %i.bv, label %init_outer_loop.exit.thread95, label %.thread.i.3

.thread.i.3:                                      ; preds = %.thread.i.2
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv118.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !14
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, 1.000000e-99
  br i1 %i.ca, label %init_outer_loop.exit.thread95, label %bb.i

bb.i:                                             ; preds = %.thread.i.3
  %indvars.iv.next119.i.3 = add nuw nsw i64 %indvars.iv118.i, 4 ; 2 uses
  %exitcond121.not.i.3 = icmp eq i64 %indvars.iv.next119.i.3, 576
  br i1 %exitcond121.not.i.3, label %init_outer_loop.exit.thread, label %.thread.i, !llvm.loop !28

.thread.i:                                        ; preds = %bb.i, %.thread.i.preheader
  %indvars.iv118.i = phi i64 [ 0, %.thread.i.preheader ], [ %indvars.iv.next119.i.3, %bb.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv118.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !14
  %i.cd = call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp ogt double %i.cd, 1.000000e-99
  br i1 %i.ce, label %init_outer_loop.exit.thread95, label %.thread.i.1

init_outer_loop.exit:                             ; preds = %.preheader84.i
  %i.cf = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.cg = fcmp olt double %i.cf, f0x3D719799812DEA11
  %.068..i = select i1 %i.cg, double f0x3D719799812DEA11, double %i.cf ; 2 uses
  %i.ch = fcmp ogt double %.068..i, %i.bg
  %.068..1.i = select i1 %i.ch, double %.068..i, double %i.bg ; 2 uses
  %i.ci = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.cj = fcmp ogt double %.068..1.i, %i.ci
  %.068..2.i = select i1 %i.cj, double %.068..1.i, double %i.ci ; 2 uses
  %i.ck = fcmp ogt <2 x double> %i.bl, splat (double f0x3D719799812DEA11)
  %i.cl = fcmp ogt double %i.bg, f0x3D719799812DEA11
  %i.cm = select i1 %i.cl, double %i.bg, double f0x3D719799812DEA11
  %i.cn = fdiv double %i.cm, %.068..2.i           ; 2 uses
  %i.co = select <2 x i1> %i.ck, <2 x double> %i.bl, <2 x double> splat (double f0x3D719799812DEA11)
  %i.cp = insertelement <2 x double> poison, double %.068..2.i, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x double> %i.co, %i.cq          ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.ct = call double @log(double noundef %i.cs) #11, !tbaa !4
  %i.cu = fmul double %i.ct, 5.000000e-01
  %i.cv = fdiv double %i.cu, f0x3FE62E42FEFA39EF
  %i.cw = fsub double 5.000000e-01, %i.cv
  %i.cx = fptosi double %i.cw to i32
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 0)
  %i.cz = call i32 @llvm.umin.i32(i32 %i.cy, i32 2)
  store i32 %i.cz, ptr %i.aj, align 4, !tbaa !4
  %i.da = call double @log(double noundef %i.cn) #11, !tbaa !4
  %i.db = fmul double %i.da, 5.000000e-01
  %i.dc = fdiv double %i.db, f0x3FE62E42FEFA39EF
  %i.dd = fsub double 5.000000e-01, %i.dc
  %i.de = fptosi double %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.dg = call i32 @llvm.smax.i32(i32 %i.de, i32 0)
  %i.dh = call i32 @llvm.umin.i32(i32 %i.dg, i32 2)
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !4
  %i.di = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.dj = call double @log(double noundef %i.di) #11, !tbaa !4
  %i.dk = fmul double %i.dj, 5.000000e-01
  %i.dl = fdiv double %i.dk, f0x3FE62E42FEFA39EF
  %i.dm = fsub double 5.000000e-01, %i.dl
  %i.dn = fptosi double %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.dp = call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 2)
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !4
  %i.dr = fadd double %i.cs, %i.cn
  %i.ds = fadd double %i.di, %i.dr
  %i.dt = fcmp ule double %i.ds, 1.000000e-99
  br i1 %i.dt, label %init_outer_loop.exit.thread, label %init_outer_loop.exit.thread95

init_outer_loop.exit.thread:                      ; preds = %bb.i, %init_outer_loop.exit
  %i.du = getelementptr inbounds nuw [244 x i8], ptr %i.aa, i64 %indvars.iv110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.du, i8 0, i64 244, i1 false)
  %i.dv = getelementptr inbounds nuw [2304 x i8], ptr %i.ab, i64 %indvars.iv110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.dv, i8 0, i64 2304, i1 false)
  %.pre = trunc nuw nsw i64 %indvars.iv110 to i32
  br label %bb.j

init_outer_loop.exit.thread95:                    ; preds = %.thread.i, %.thread.i.1, %.thread.i.2, %.thread.i.3, %init_outer_loop.exit
  %i.dw = getelementptr inbounds nuw [976 x i8], ptr %i.ac, i64 %indvars.iv110
  %i.dx = getelementptr inbounds nuw [488 x i8], ptr %8, i64 %indvars.iv110 ; 2 uses
  %i.dy = call i32 @calc_xmin(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.dw, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.dx) #11 ; 0 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv110
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw [2304 x i8], ptr %i.ab, i64 %indvars.iv110
  %i.ec = getelementptr inbounds nuw [244 x i8], ptr %i.aa, i64 %indvars.iv110
  %i.ed = trunc nuw nsw i64 %indvars.iv110 to i32 ; 2 uses
  call void @outer_loop(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i32 noundef %i.ea, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dx, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef nonnull %i.ad, ptr nonnull poison, i32 noundef %i.ed)
  br label %bb.j

bb.j:                                             ; preds = %init_outer_loop.exit.thread95, %init_outer_loop.exit.thread
  %.pre-phi = phi i32 [ %i.ed, %init_outer_loop.exit.thread95 ], [ %.pre, %init_outer_loop.exit.thread ] ; 2 uses
  call void @best_scalefac_store(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %.pre-phi, ptr noundef %6, ptr noundef %5, ptr noundef %7) #11
  %i.ee = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !25
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw [2304 x i8], ptr %i.ab, i64 %indvars.iv110
  call void @best_huffman_divide(i32 noundef %i.r, i32 noundef %.pre-phi, ptr noundef nonnull %i.ad, ptr noundef %i.ej) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !4
  call void @ResvAdjust(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef %5, i32 noundef %i.ek) #11
  %i.el = getelementptr inbounds nuw [2304 x i8], ptr %i.ab, i64 %indvars.iv110 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.en = load double, ptr %i.em, align 8, !tbaa !14
  %i.eo = fcmp olt double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = sub nsw i32 0, %i.eq
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.et = load double, ptr %i.es, align 8, !tbaa !14
  %i.eu = fcmp olt double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = sub nsw i32 0, %i.ew
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 576
  br i1 %exitcond.not.1, label %bb.s, label %bb.n, !llvm.loop !30

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ey = load i32, ptr %i.k, align 4, !tbaa !16
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next111, %i.ez
  br i1 %i.fa, label %bb.g, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.s, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.fb = load i32, ptr %i.h, align 8, !tbaa !8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next114, %i.fc
  br i1 %i.fd, label %bb.b, label %._crit_edge106, !llvm.loop !32

._crit_edge106:                                   ; preds = %._crit_edge, %bb.a
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !4
  call void @ResvFrameEnd(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.fe) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ResvFrameBegin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @on_pe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @reduce_side(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local range(i32 0, 2) i32 @init_outer_loop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20), (32, 80), (88, 92), (96, 120)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr @nr_of_sfb_block, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 0, ptr %i.f, align 4, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %2, align 8, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 0, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 0, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread.preheader, label %bb.b

.thread.preheader:                                ; preds = %bb.b, %bb.a
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  %.not79 = icmp eq i32 %i.l, 2
  br i1 %.not79, label %.preheader84, label %.thread.preheader

.preheader84:                                     ; preds = %bb.b, %.preheader84
  %.sroa.11.0 = phi double [ %i.ae, %.preheader84 ], [ 0.000000e+00, %bb.b ]
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1, %.preheader84 ], [ 0, %bb.b ] ; 5 uses
  %.07092 = phi i32 [ %3, %.preheader84 ], [ 0, %bb.b ]
  %i.m = phi <2 x double> [ %i.ak, %.preheader84 ], [ zeroinitializer, %bb.b ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.a
  %i.o = load double, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %.sroa.11.0)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !14
  %i.w = insertelement <2 x double> poison, double %i.o, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1 ; 2 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.x, <2 x double> %i.m)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 3 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.s) ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !14
  %i.ai = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1 ; 2 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.aj, <2 x double> %i.y) ; 5 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.a, 6
  %3 = add nuw nsw i32 %.07092, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %3, 192
  br i1 %exitcond.not.1, label %.preheader83.preheader, label %.preheader84, !llvm.loop !26

.preheader83.preheader:                           ; preds = %.preheader84
  %i.al = extractelement <2 x double> %i.ak, i64 0 ; 2 uses
  %i.am = fcmp olt double %i.al, f0x3D719799812DEA11
  %.068. = select i1 %i.am, double f0x3D719799812DEA11, double %i.al ; 2 uses
  %i.an = fcmp ogt double %.068., %i.ae
  %.068..1 = select i1 %i.an, double %.068., double %i.ae ; 2 uses
  %i.ao = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  %i.ap = fcmp ogt double %.068..1, %i.ao
  %.068..2 = select i1 %i.ap, double %.068..1, double %i.ao ; 2 uses
  %i.aq = fcmp ogt <2 x double> %i.ak, splat (double f0x3D719799812DEA11)
  %i.ar = fcmp ogt double %i.ae, f0x3D719799812DEA11
  %i.as = select i1 %i.ar, double %i.ae, double f0x3D719799812DEA11
  %i.at = fdiv double %i.as, %.068..2             ; 2 uses
  %i.au = select <2 x i1> %i.aq, <2 x double> %i.ak, <2 x double> splat (double f0x3D719799812DEA11)
  %i.av = insertelement <2 x double> poison, double %.068..2, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x double> %i.au, %i.aw          ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  %i.az = tail call double @log(double noundef %i.ay) #11, !tbaa !4
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = fdiv double %i.ba, f0x3FE62E42FEFA39EF
  %i.bc = fsub double 5.000000e-01, %i.bb
  %i.bd = fptosi double %i.bc to i32
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 2)
  store i32 %i.bf, ptr %i.e, align 4, !tbaa !4
  %i.bg = tail call double @log(double noundef %i.at) #11, !tbaa !4
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = fdiv double %i.bh, f0x3FE62E42FEFA39EF
  %i.bj = fsub double 5.000000e-01, %i.bi
  %i.bk = fptosi double %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 2)
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !4
  %i.bo = extractelement <2 x double> %i.ax, i64 1 ; 2 uses
  %i.bp = tail call double @log(double noundef %i.bo) #11, !tbaa !4
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = fdiv double %i.bq, f0x3FE62E42FEFA39EF
  %i.bs = fsub double 5.000000e-01, %i.br
  %i.bt = fptosi double %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 2)
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !4
  %i.bx = fadd double %i.ay, %i.at
  %i.by = fadd double %i.bx, %i.bo
  %i.bz = fcmp ogt double %i.by, 1.000000e-99
  %. = zext i1 %i.bz to i32
  br label %.loopexit

.thread.1:                                        ; preds = %.thread
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !14
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp ogt double %i.cd, 1.000000e-99
  br i1 %i.ce, label %.loopexit, label %.thread.2

.thread.2:                                        ; preds = %.thread.1
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !14
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ogt double %i.ci, 1.000000e-99
  br i1 %i.cj, label %.loopexit, label %.thread.3

.thread.3:                                        ; preds = %.thread.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !14
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp ogt double %i.cn, 1.000000e-99
  br i1 %i.co, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread.3
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond121.not.3 = icmp eq i64 %indvars.iv.next119.3, 576
  br i1 %exitcond121.not.3, label %.loopexit, label %.thread, !llvm.loop !28

.thread:                                          ; preds = %bb.c, %.thread.preheader
  %indvars.iv118 = phi i64 [ 0, %.thread.preheader ], [ %indvars.iv.next119.3, %bb.c ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !14
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp ogt double %i.cr, 1.000000e-99
  br i1 %i.cs, label %.loopexit, label %.thread.1

.loopexit:                                        ; preds = %.thread, %.thread.1, %.thread.2, %.thread.3, %bb.c, %.preheader83.preheader
  %.176 = phi i32 [ %., %.preheader83.preheader ], [ 0, %bb.c ], [ 1, %.thread ], [ 1, %.thread.1 ], [ 1, %.thread.3 ], [ 1, %.thread.2 ]
  ret i32 %.176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @outer_loop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr noundef %7, ptr nofree readnone captures(none) %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.III_scalefac_t, align 4    ; 9 uses
  %11 = alloca %struct.gr_info, align 8           ; 4 uses
  %i.a = alloca [576 x i32], align 16             ; 6 uses
  %i.b = alloca [576 x double], align 16          ; 7 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca [4 x [21 x double]], align 16     ; 3 uses
  %i.g = alloca [4 x [21 x double]], align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.h = sext i32 %9 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr @outer_loop.OldValue, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.thread

.thread:                                          ; preds = %.thread.backedge, %bb.a
  %.pre129136 = phi double [ undef, %bb.a ], [ %.pre129, %.thread.backedge ]
  %.pre128133 = phi double [ undef, %bb.a ], [ %.pre128, %.thread.backedge ]
  %.pre130 = phi double [ undef, %bb.a ], [ %.pre, %.thread.backedge ]
  %.not106 = phi i1 [ false, %bb.a ], [ %.not109, %.thread.backedge ]
  %.082125 = phi double [ 0.000000e+00, %bb.a ], [ %.284, %.thread.backedge ] ; 3 uses
  %.085124 = phi double [ 0.000000e+00, %bb.a ], [ %.287, %.thread.backedge ] ; 3 uses
  %.088123 = phi double [ 0.000000e+00, %bb.a ], [ %.290, %.thread.backedge ] ; 3 uses
  %.091122 = phi i32 [ 100, %bb.a ], [ %.293, %.thread.backedge ] ; 3 uses
  %.099120 = phi i32 [ 0, %bb.a ], [ %i.r, %.thread.backedge ] ; 2 uses
  %.0100119 = phi i32 [ 0, %bb.a ], [ %.1101, %.thread.backedge ]
  %i.r = add nuw nsw i32 %.099120, 1
  br i1 %.not106, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %10, i8 0, i64 244, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !14
  %i.u = call double @llvm.fabs.f64(double %i.t)  ; 2 uses
  %sqrt = call double @llvm.sqrt.f64(double %i.u)
  %i.v = fmul double %i.u, %sqrt
  %i.w = call double @sqrt(double noundef %i.v) #11, !tbaa !4
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.w, ptr %i.x, align 16, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !14
  %i.aa = call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %sqrt.1 = call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fmul double %i.aa, %sqrt.1
  %i.ac = call double @sqrt(double noundef %i.ab) #11, !tbaa !4
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 576
  br i1 %exitcond.not.1, label %bb.d, label %bb.c, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !4
  %i.af = call i32 @bin_search_StepSize2(ptr noundef %0, i32 noundef %2, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %7) #11
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !34
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.1101 = phi i32 [ %i.af, %bb.d ], [ %.0100119, %.thread ] ; 3 uses
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !21
  %i.ai = sub i32 %2, %i.ah                       ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread140, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %.099120, 0                 ; 2 uses
  br i1 %i.ak, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %.1101, %i.ai
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.j, align 4, !tbaa !34
  %i.an = add i32 %i.am, 1
end_hunk_0
begin_hunk_1_@outer_loop:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_masking_lower(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = add nsw i32 %i.a, -6
  %i.c = sitofp i32 %i.b to float
  %i.d = add nsw i32 %1, -125
  %i.e = sitofp i32 %i.d to double
  %i.f = fdiv nnan double %i.e, 2.375000e+03
  %i.g = fptrunc nnan double %i.f to float
  %i.h = fadd nnan float %i.g, -1.000000e+00
  %i.i = fmul nnan float %i.h, 4.000000e+00
  %i.j = fadd float %i.i, %i.c
  %i.k = fdiv float %i.j, 1.000000e+01
  %i.l = fpext float %i.k to double
  %i.m = tail call double @pow(double noundef 1.000000e+01, double noundef %i.l) #11, !tbaa !4
  %i.n = fptrunc double %i.m to float
  store float %i.n, ptr @masking_lower, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.gr_info, align 8            ; 4 uses
  %9 = alloca %struct.gr_info, align 8            ; 4 uses
  %10 = alloca %struct.III_scalefac_t, align 4    ; 4 uses
  %i.a = alloca [576 x i32], align 16             ; 4 uses
  %11 = alloca %struct.III_psy_xmin, align 8      ; 7 uses
  %i.b = alloca [2 x [2 x i32]], align 16         ; 10 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %i.d = alloca [15 x i32], align 16              ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  store i32 1, ptr %i.g, align 4, !tbaa !44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 2 uses
  %.not391 = icmp slt i32 %i.i, 1
  br i1 %.not391, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0300392 = phi i32 [ 0, %.lr.ph ], [ %.1301, %bb.d ]
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.l = load i32, ptr %i.g, align 4, !tbaa !44
  %i.m = load i32, ptr %i.j, align 8, !tbaa !46
  %i.n = icmp eq i32 %i.l, %i.m
  %.pre = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.k, align 4, !tbaa !16
  %i.p = sdiv i32 %.pre, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1301 = phi i32 [ %i.p, %bb.c ], [ %.0300392, %bb.b ] ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !4
  %i.r = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %.pre, i32 noundef %i.q) #11
  %i.s = load i32, ptr %i.g, align 4, !tbaa !44   ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.t
  store i32 %i.r, ptr %i.u, align 4, !tbaa !4
  %i.v = add nsw i32 %i.s, 1
  store i32 %i.v, ptr %i.g, align 4, !tbaa !44
  %i.w = load i32, ptr %i.h, align 4, !tbaa !45   ; 2 uses
  %.not.not = icmp slt i32 %i.s, %i.w
  br i1 %.not.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.x = call i32 @llvm.smax.i32(i32 %.1301, i32 125)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0300.lcssa = phi i32 [ 125, %bb.a ], [ %i.x, %._crit_edge.loopexit ]
  %.lcssa389 = phi i32 [ %i.i, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  store i32 %.lcssa389, ptr %i.g, align 4, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !8
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph407, label %.loopexit380.thread

.lr.ph407:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph407, %._crit_edge400
  %indvars.iv466 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next467, %._crit_edge400 ] ; 9 uses
  %.0284405 = phi i32 [ 0, %.lr.ph407 ], [ %.1285.lcssa, %._crit_edge400 ] ; 2 uses
  %.0304403 = phi i32 [ 0, %.lr.ph407 ], [ %.1305.lcssa, %._crit_edge400 ] ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.aj = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %.not322 = icmp eq i32 %i.aj, 0
  %spec.store.select = select i1 %.not322, i32 %i.ai, i32 1 ; 2 uses
  %i.ak = load i32, ptr @convert_mdct, align 4, !tbaa !4
  %.not323 = icmp eq i32 %i.ak, 0
  br i1 %.not323, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv466 ; 2 uses
  call void @ms_convert(ptr noundef %i.al, ptr noundef %i.al) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = icmp sgt i32 %spec.store.select, 0
  br i1 %i.am, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [240 x i8], ptr %i.ac, i64 %indvars.iv466
  %i.ao = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv466
  %i.ap = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv466 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv466 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv466 ; 2 uses
  %i.as = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv466
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv466
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph399, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next, %bb.v ] ; 12 uses
  %.1285397 = phi i32 [ %.0284405, %.lr.ph399 ], [ %.3, %bb.v ]
  %.1305394 = phi i32 [ %.0304403, %.lr.ph399 ], [ %.2306, %bb.v ] ; 2 uses
  %i.au = getelementptr inbounds nuw [120 x i8], ptr %i.an, i64 %indvars.iv ; 22 uses
  %i.av = getelementptr inbounds nuw [4608 x i8], ptr %i.ao, i64 %indvars.iv ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store ptr @nr_of_sfb_block, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 0, ptr %i.ay, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  store i32 0, ptr %i.bb, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.au, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 0, ptr %i.bc, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i32 0, ptr %i.bd, align 8, !tbaa !23
  %i.be = load i32, ptr %i.ad, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %.thread.i.preheader, label %bb.i

.thread.i.preheader:                              ; preds = %bb.i, %bb.h
  br label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25
  %.not79.i = icmp eq i32 %i.bg, 2
  br i1 %.not79.i, label %.preheader84.i, label %.thread.i.preheader

.preheader84.i:                                   ; preds = %bb.i, %.preheader84.i
  %.sroa.11.0.i = phi double [ %i.bx, %.preheader84.i ], [ 0.000000e+00, %bb.i ]
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.1, %.preheader84.i ], [ 0, %bb.i ] ; 3 uses
  %.07092.i = phi i32 [ %12, %.preheader84.i ], [ 0, %bb.i ]
  %i.bh = phi <2 x double> [ %i.cc, %.preheader84.i ], [ zeroinitializer, %bb.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i.a ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bm = call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %.sroa.11.0.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bj, i64 1 ; 2 uses
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bh)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i.a ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bm) ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !14
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bu, i64 1 ; 2 uses
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cb, <2 x double> %i.br) ; 5 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.a, 6
  %12 = add nuw nsw i32 %.07092.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %12, 192
  br i1 %exitcond.not.i.1, label %init_outer_loop.exit, label %.preheader84.i, !llvm.loop !26

.thread.i.1:                                      ; preds = %.thread.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv118.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !14
  %i.cg = call double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp ogt double %i.cg, 1.000000e-99
  br i1 %i.ch, label %init_outer_loop.exit.thread354, label %.thread.i.2

.thread.i.2:                                      ; preds = %.thread.i.1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv118.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !14
  %i.cl = call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, 1.000000e-99
  br i1 %i.cm, label %init_outer_loop.exit.thread354, label %.thread.i.3

.thread.i.3:                                      ; preds = %.thread.i.2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv118.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !14
  %i.cq = call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ogt double %i.cq, 1.000000e-99
  br i1 %i.cr, label %init_outer_loop.exit.thread354, label %bb.j

bb.j:                                             ; preds = %.thread.i.3
  %indvars.iv.next119.i.3 = add nuw nsw i64 %indvars.iv118.i, 4 ; 2 uses
  %exitcond121.not.i.3 = icmp eq i64 %indvars.iv.next119.i.3, 576
  br i1 %exitcond121.not.i.3, label %init_outer_loop.exit.thread, label %.thread.i, !llvm.loop !28

.thread.i:                                        ; preds = %bb.j, %.thread.i.preheader
  %indvars.iv118.i = phi i64 [ 0, %.thread.i.preheader ], [ %indvars.iv.next119.i.3, %bb.j ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv118.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !14
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ogt double %i.cu, 1.000000e-99
  br i1 %i.cv, label %init_outer_loop.exit.thread354, label %.thread.i.1

init_outer_loop.exit:                             ; preds = %.preheader84.i
  %i.cw = extractelement <2 x double> %i.cc, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cw, f0x3D719799812DEA11
  %.068..i = select i1 %i.cx, double f0x3D719799812DEA11, double %i.cw ; 2 uses
  %i.cy = fcmp ogt double %.068..i, %i.bx
  %.068..1.i = select i1 %i.cy, double %.068..i, double %i.bx ; 2 uses
  %i.cz = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.da = fcmp ogt double %.068..1.i, %i.cz
  %.068..2.i = select i1 %i.da, double %.068..1.i, double %i.cz ; 2 uses
  %i.db = fcmp ogt <2 x double> %i.cc, splat (double f0x3D719799812DEA11)
  %i.dc = fcmp ogt double %i.bx, f0x3D719799812DEA11
  %i.dd = select i1 %i.dc, double %i.bx, double f0x3D719799812DEA11
  %i.de = fdiv double %i.dd, %.068..2.i           ; 2 uses
  %i.df = select <2 x i1> %i.db, <2 x double> %i.cc, <2 x double> splat (double f0x3D719799812DEA11)
  %i.dg = insertelement <2 x double> poison, double %.068..2.i, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fdiv <2 x double> %i.df, %i.dh          ; 2 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1 ; 2 uses
  %i.dk = call double @log(double noundef %i.dj) #11, !tbaa !4
  %i.dl = fmul double %i.dk, 5.000000e-01
  %i.dm = fdiv double %i.dl, f0x3FE62E42FEFA39EF
  %i.dn = fsub double 5.000000e-01, %i.dm
  %i.do = fptosi double %i.dn to i32
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 2)
  store i32 %i.dq, ptr %i.ba, align 4, !tbaa !4
  %i.dr = call double @log(double noundef %i.de) #11, !tbaa !4
  %i.ds = fmul double %i.dr, 5.000000e-01
  %i.dt = fdiv double %i.ds, f0x3FE62E42FEFA39EF
  %i.du = fsub double 5.000000e-01, %i.dt
  %i.dv = fptosi double %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.dx = call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dy = call i32 @llvm.umin.i32(i32 %i.dx, i32 2)
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !4
  %i.dz = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.ea = call double @log(double noundef %i.dz) #11, !tbaa !4
  %i.eb = fmul double %i.ea, 5.000000e-01
  %i.ec = fdiv double %i.eb, f0x3FE62E42FEFA39EF
  %i.ed = fsub double 5.000000e-01, %i.ec
  %i.ee = fptosi double %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.eg = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eh = call i32 @llvm.umin.i32(i32 %i.eg, i32 2)
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !4
  %i.ei = fadd double %i.dj, %i.de
  %i.ej = fadd double %i.dz, %i.ei
  %i.ek = fcmp ule double %i.ej, 1.000000e-99
  br i1 %i.ek, label %init_outer_loop.exit.thread, label %init_outer_loop.exit.thread354

init_outer_loop.exit.thread:                      ; preds = %bb.j, %init_outer_loop.exit
  %i.el = getelementptr inbounds nuw [244 x i8], ptr %i.ap, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.el, i8 0, i64 244, i1 false)
  %i.em = getelementptr inbounds nuw [2304 x i8], ptr %i.aq, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.em, i8 0, i64 2304, i1 false)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 0, ptr %i.en, align 4, !tbaa !4
  br label %bb.v

init_outer_loop.exit.thread354:                   ; preds = %.thread.i, %.thread.i.1, %.thread.i.2, %.thread.i.3, %init_outer_loop.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(120) %i.au, i64 120, i1 false)
  %i.eo = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ep = shl nsw i32 %i.eo, 1
  %i.eq = add nsw i32 %i.ep, -6
  %i.er = sitofp i32 %i.eq to float
  %i.es = fdiv float %i.er, 1.000000e+01
  %i.et = fpext float %i.es to double
  %i.eu = call double @pow(double noundef 1.000000e+01, double noundef %i.et) #11, !tbaa !4
  %i.ev = fptrunc double %i.eu to float
  store float %i.ev, ptr @masking_lower, align 4, !tbaa !43
  %i.ew = getelementptr inbounds nuw [976 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.ex = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.av, ptr noundef %i.ew, ptr noundef nonnull %i.au, ptr noundef nonnull %11) #11
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  %spec.select = select i1 %i.ey, i32 125, i32 %.0300.lcssa ; 2 uses
  %spec.select328 = select i1 %i.ey, i32 1, i32 %.1285397
  %i.ez = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !25
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %init_outer_loop.exit.thread354
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = fcmp olt double %i.fd, 1.100000e+03
  %i.ff = select i1 %i.fe, double 1.100000e+03, double %i.fd
  %i.fg = uitofp nneg i32 %spec.select to double
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = fptosi double %i.fh to i32
  %i.fj = call i32 @llvm.smin.i32(i32 %i.fi, i32 1800)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %init_outer_loop.exit.thread354
  %.1303 = phi i32 [ %i.fj, %bb.k ], [ %spec.select, %init_outer_loop.exit.thread354 ] ; 3 uses
  %i.fk = load i32, ptr %i.h, align 4, !tbaa !45
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.fp = load i32, ptr %i.y, align 8, !tbaa !8
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = sdiv i32 %i.fn, %i.fq
  %i.fs = call i32 @llvm.smin.i32(i32 %i.fr, i32 1300)
  %i.ft = add nsw i32 %i.fs, 1200
  %i.fu = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.1303) ; 4 uses
  %i.fv = sub nsw i32 %i.fu, %.1303
  %i.fw = sdiv i32 %i.fv, 4
  %i.fx = add nsw i32 %i.fu, %.1303
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = add nsw i32 %i.fu, 1
  %i.ga = getelementptr inbounds nuw [2304 x i8], ptr %i.aq, i64 %indvars.iv ; 3 uses
  %i.gb = getelementptr inbounds nuw [244 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %.0298 = phi i32 [ %i.fw, %bb.l ], [ %.1299362369, %bb.r ] ; 5 uses
  %.0280 = phi i32 [ %i.fz, %bb.l ], [ %.2282, %bb.r ] ; 3 uses
  %.0 = phi i32 [ %i.fy, %bb.l ], [ %.2, %bb.r ]  ; 6 uses
  %.not325 = icmp slt i32 %.0, %.0280
  br i1 %.not325, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = sub nsw i32 %.0, %.0298
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %9, i64 120, i1 false)
  %i.ge = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = add nsw i32 %i.gf, -6
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = add nsw i32 %.0, -125
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fdiv nnan double %i.gj, 2.375000e+03
  %i.gl = fptrunc nnan double %i.gk to float
  %i.gm = fadd nnan float %i.gl, -1.000000e+00
  %i.gn = fmul nnan float %i.gm, 4.000000e+00
  %i.go = fadd float %i.gn, %i.gh
  %i.gp = fdiv float %i.go, 1.000000e+01
  %i.gq = fpext float %i.gp to double
  %i.gr = call double @pow(double noundef 1.000000e+01, double noundef %i.gq) #11, !tbaa !4
  %i.gs = fptrunc double %i.gr to float
  store float %i.gs, ptr @masking_lower, align 4, !tbaa !43
  %i.gt = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.av, ptr noundef %i.ew, ptr noundef nonnull %i.au, ptr noundef nonnull %11) #11 ; 0 uses
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.av, i32 noundef %.0, ptr noundef nonnull %i.c, ptr noundef nonnull %11, ptr noundef %i.ga, ptr noundef %i.gb, ptr noundef nonnull %i.au, ptr nonnull poison, i32 noundef %i.gc)
  %i.gu = load double, ptr %i.c, align 16, !tbaa !14
  %i.gv = fptosi double %i.gu to i32
  %i.gw = load double, ptr %i.af, align 8, !tbaa !14
  %i.gx = load double, ptr %i.ag, align 16, !tbaa !14
  %i.gy = load double, ptr %i.ah, align 8, !tbaa !14
  %.not.i330 = icmp sgt i32 %i.gv, 0
  %i.gz = fcmp ugt double %i.gx, 0.000000e+00
  %or.cond.not11.i.not365 = or i1 %.not.i330, %i.gz
  %i.ha = fcmp ugt double %i.gw, 0.000000e+00
  %i.hb = fcmp ugt double %i.gy, 0.000000e+00
  %.not368 = or i1 %i.ha, %i.hb
  %narrow.i.not = or i1 %or.cond.not11.i.not365, %.not368
  br i1 %narrow.i.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@VBR_iteration_loop:bb.a
.loopexit380:                                     ; preds = %.lr.ph415, %._crit_edge408
  %.4308 = phi i32 [ %.1305.lcssa, %._crit_edge408 ], [ %i.jv, %.lr.ph415 ] ; 2 uses
  br i1 %i.hm, label %.loopexit380.thread, label %bb.w

.loopexit380.thread:                              ; preds = %._crit_edge, %.loopexit380
  %.4308544 = phi i32 [ %.4308, %.loopexit380 ], [ 0, %._crit_edge ]
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %.loopexit380, %.loopexit380.thread
  %.4308543 = phi i32 [ %.4308544, %.loopexit380.thread ], [ %.4308, %.loopexit380 ] ; 5 uses
  %i.jy = phi i32 [ %i.jx, %.loopexit380.thread ], [ 1, %.loopexit380 ] ; 3 uses
  %i.jz = load i32, ptr %i.h, align 4, !tbaa !45  ; 3 uses
  %i.ka = icmp slt i32 %i.jy, %i.jz
  br i1 %i.ka, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.w
  %i.kb = sext i32 %i.jy to i64
  br label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.x
  %indvars.iv474 = phi i64 [ %i.kb, %.lr.ph419.preheader ], [ %indvars.iv.next475, %bb.x ] ; 3 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv474
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  %.not318 = icmp sgt i32 %.4308543, %i.kd
  br i1 %.not318, label %bb.x, label %._crit_edge420.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph419
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next475 to i32
  %exitcond477.not = icmp eq i32 %i.jz, %lftr.wideiv
  br i1 %exitcond477.not, label %._crit_edge420, label %.lr.ph419, !llvm.loop !56

._crit_edge420.loopexit.split.loop.exit:          ; preds = %.lr.ph419
  %i.ke = trunc nsw i64 %indvars.iv474 to i32
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.x, %._crit_edge420.loopexit.split.loop.exit, %bb.w
  %storemerge317.lcssa = phi i32 [ %i.jy, %bb.w ], [ %i.ke, %._crit_edge420.loopexit.split.loop.exit ], [ %i.jz, %bb.x ]
  store i32 %storemerge317.lcssa, ptr %i.g, align 4, !tbaa !44
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.kf = load i32, ptr %i.f, align 4, !tbaa !4
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !4
  %i.kh = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.kf, i32 noundef %i.kg) #11
  %.not320 = icmp sgt i32 %.4308543, %i.kh        ; 2 uses
  %.pre516 = load i32, ptr %i.y, align 8, !tbaa !8 ; 4 uses
  %i.ki = icmp sgt i32 %.pre516, 0                ; 2 uses
  br i1 %.not320, label %.preheader378, label %.loopexit

.preheader378:                                    ; preds = %._crit_edge420
  br i1 %i.ki, label %.preheader377.lr.ph, label %._crit_edge449

.preheader377.lr.ph:                              ; preds = %.preheader378
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !16 ; 4 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.preheader377.lr.ph.split.us, label %.preheader374.lr.ph

.preheader377.lr.ph.split.us:                     ; preds = %.preheader377.lr.ph
  %i.km = load i32, ptr %i.g, align 4, !tbaa !44
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !4  ; 3 uses
  %wide.trip.count481 = zext nneg i32 %i.kk to i64 ; 2 uses
  %i.kq = zext nneg i32 %.pre516 to i64
  %xtraiter = and i64 %wide.trip.count481, 1
  %i.kr = icmp eq i32 %i.kk, 1
  %unroll_iter = and i64 %wide.trip.count481, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod599 = trunc i32 %i.kk to i1
  br label %.preheader377.us

.preheader377.us:                                 ; preds = %._crit_edge426.us, %.preheader377.lr.ph.split.us
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge426.us ], [ 0, %.preheader377.lr.ph.split.us ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv483 ; 3 uses
  br i1 %i.kr, label %.epil.preheader, label %.preheader377.us.new

.preheader377.us.new:                             ; preds = %.preheader377.us, %.preheader377.us.new
  %indvars.iv478 = phi i64 [ %indvars.iv.next479.1, %.preheader377.us.new ], [ 0, %.preheader377.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader377.us.new ], [ 0, %.preheader377.us ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv478 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !4
  %i.kv = mul nsw i32 %i.kp, %i.ku
  %i.kw = sdiv i32 %i.kv, %.4308543
  store i32 %i.kw, ptr %i.kt, align 8, !tbaa !4
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv478
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4
  %i.la = mul nsw i32 %i.kp, %i.kz
  %i.lb = sdiv i32 %i.la, %.4308543
  store i32 %i.lb, ptr %i.ky, align 4, !tbaa !4
  %indvars.iv.next479.1 = add nuw nsw i64 %indvars.iv478, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge426.us.unr-lcssa, label %.preheader377.us.new, !llvm.loop !57

._crit_edge426.us.unr-lcssa:                      ; preds = %.preheader377.us.new
  br i1 %lcmp.mod.not, label %._crit_edge426.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge426.us.unr-lcssa, %.preheader377.us
  %indvars.iv478.epil.init = phi i64 [ 0, %.preheader377.us ], [ %indvars.iv.next479.1, %._crit_edge426.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv478.epil.init ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4
  %i.le = mul nsw i32 %i.kp, %i.ld
  %i.lf = sdiv i32 %i.le, %.4308543
  store i32 %i.lf, ptr %i.lc, align 4, !tbaa !4
  br label %._crit_edge426.us

._crit_edge426.us:                                ; preds = %._crit_edge426.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.lg = icmp samesign ult i64 %indvars.iv.next484, %i.kq
  br i1 %i.lg, label %.preheader377.us, label %.preheader374.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %._crit_edge420
  br i1 %i.ki, label %.preheader374.lr.ph, label %._crit_edge449

.preheader374.lr.ph:                              ; preds = %._crit_edge426.us, %.preheader377.lr.ph, %.loopexit
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ll = load i32, ptr %i.lh, align 4, !tbaa !16 ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.preheader374, label %.preheader372.lr.ph

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge439
  %i.ln = phi i32 [ %i.qx, %._crit_edge439 ], [ %.pre516, %.preheader374.lr.ph ]
  %i.lo = phi i32 [ %i.qy, %._crit_edge439 ], [ %i.ll, %.preheader374.lr.ph ] ; 2 uses
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %._crit_edge439 ], [ 0, %.preheader374.lr.ph ] ; 7 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %.preheader374
  %i.lq = getelementptr inbounds nuw [240 x i8], ptr %i.li, i64 %indvars.iv497
  %i.lr = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv497
  %i.ls = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv497 ; 2 uses
  %i.lt = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv497 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv497
  %i.lv = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv497
  br label %bb.y

.preheader373:                                    ; preds = %._crit_edge439
  %i.lw = icmp sgt i32 %i.qx, 0
  br i1 %i.lw, label %.preheader372.lr.ph, label %._crit_edge449

.preheader372.lr.ph:                              ; preds = %.preheader374.lr.ph, %.preheader373
  %i.lx = phi i32 [ %i.qx, %.preheader373 ], [ %.pre516, %.preheader374.lr.ph ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ma = load i32, ptr %i.ly, align 4, !tbaa !16 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %.preheader372, label %.preheader370.lr.ph

bb.y:                                             ; preds = %.lr.ph438, %bb.ad
  %indvars.iv494 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next495, %bb.ad ] ; 11 uses
  br i1 %.not320, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mc = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %i.md = icmp ne i32 %i.mc, 0
  %i.me = icmp eq i64 %indvars.iv494, 1
  %or.cond = and i1 %i.me, %i.md
  br i1 %or.cond, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mf = getelementptr inbounds nuw [120 x i8], ptr %i.lq, i64 %indvars.iv494 ; 14 uses
  %i.mg = getelementptr inbounds nuw [4608 x i8], ptr %i.lr, i64 %indvars.iv494 ; 8 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mh, i8 0, i64 16, i1 false), !tbaa !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 96
  store ptr @nr_of_sfb_block, ptr %i.mi, align 8, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store i32 0, ptr %i.mj, align 8, !tbaa !20
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 44
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 76
  store i32 0, ptr %i.mm, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mk, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.mf, align 8, !tbaa !4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 72
  store i32 0, ptr %i.mn, align 8, !tbaa !22
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 88
  store i32 0, ptr %i.mo, align 8, !tbaa !23
  %i.mp = load i32, ptr %i.lj, align 4, !tbaa !24
  %.not.i331 = icmp eq i32 %i.mp, 0
  br i1 %.not.i331, label %.thread.i333.preheader, label %bb.ab

.thread.i333.preheader:                           ; preds = %bb.ab, %bb.aa
  br label %.thread.i333

bb.ab:                                            ; preds = %bb.aa
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !25
  %.not79.i332 = icmp eq i32 %i.mr, 2
  br i1 %.not79.i332, label %.preheader84.i338, label %.thread.i333.preheader

.preheader84.i338:                                ; preds = %bb.ab, %.preheader84.i338
  %.sroa.11.0.i340 = phi double [ %i.ni, %.preheader84.i338 ], [ 0.000000e+00, %bb.ab ]
  %indvars.iv.i342 = phi i64 [ %indvars.iv.next.i344.1, %.preheader84.i338 ], [ 0, %bb.ab ] ; 3 uses
  %.07092.i343 = phi i32 [ %13, %.preheader84.i338 ], [ 0, %bb.ab ]
  %i.ms = phi <2 x double> [ %i.nn, %.preheader84.i338 ], [ zeroinitializer, %bb.ab ]
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv.i342 ; 3 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !14
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !14 ; 2 uses
  %i.mx = call double @llvm.fmuladd.f64(double %i.mw, double %i.mw, double %.sroa.11.0.i340)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mz = load double, ptr %i.my, align 8, !tbaa !14
  %i.na = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.nb = insertelement <2 x double> %i.na, double %i.mu, i64 1 ; 2 uses
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.nb, <2 x double> %i.ms)
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv.i342 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !14
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !14 ; 2 uses
  %i.ni = call double @llvm.fmuladd.f64(double %i.nh, double %i.nh, double %i.mx) ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !14
  %i.nl = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nm = insertelement <2 x double> %i.nl, double %i.nf, i64 1 ; 2 uses
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nm, <2 x double> %i.nc) ; 5 uses
  %indvars.iv.next.i344.1 = add nuw nsw i64 %indvars.iv.i342, 6
  %13 = add nuw nsw i32 %.07092.i343, 2           ; 2 uses
  %exitcond.not.i345.1 = icmp eq i32 %13, 192
  br i1 %exitcond.not.i345.1, label %init_outer_loop.exit351, label %.preheader84.i338, !llvm.loop !26

.thread.i333.1:                                   ; preds = %.thread.i333
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv118.i334
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load double, ptr %i.np, align 8, !tbaa !14
  %i.nr = call double @llvm.fabs.f64(double %i.nq)
  %i.ns = fcmp ogt double %i.nr, 1.000000e-99
  br i1 %i.ns, label %init_outer_loop.exit351.thread359, label %.thread.i333.2

.thread.i333.2:                                   ; preds = %.thread.i333.1
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv118.i334
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !14
  %i.nw = call double @llvm.fabs.f64(double %i.nv)
  %i.nx = fcmp ogt double %i.nw, 1.000000e-99
  br i1 %i.nx, label %init_outer_loop.exit351.thread359, label %.thread.i333.3

.thread.i333.3:                                   ; preds = %.thread.i333.2
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv118.i334
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !14
  %i.ob = call double @llvm.fabs.f64(double %i.oa)
  %i.oc = fcmp ogt double %i.ob, 1.000000e-99
  br i1 %i.oc, label %init_outer_loop.exit351.thread359, label %bb.ac

bb.ac:                                            ; preds = %.thread.i333.3
  %indvars.iv.next119.i335.3 = add nuw nsw i64 %indvars.iv118.i334, 4 ; 2 uses
  %exitcond121.not.i336.3 = icmp eq i64 %indvars.iv.next119.i335.3, 576
  br i1 %exitcond121.not.i336.3, label %init_outer_loop.exit351.thread, label %.thread.i333, !llvm.loop !28

.thread.i333:                                     ; preds = %bb.ac, %.thread.i333.preheader
  %indvars.iv118.i334 = phi i64 [ 0, %.thread.i333.preheader ], [ %indvars.iv.next119.i335.3, %bb.ac ] ; 5 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv118.i334
  %i.oe = load double, ptr %i.od, align 8, !tbaa !14
  %i.of = call double @llvm.fabs.f64(double %i.oe)
  %i.og = fcmp ogt double %i.of, 1.000000e-99
  br i1 %i.og, label %init_outer_loop.exit351.thread359, label %.thread.i333.1

init_outer_loop.exit351:                          ; preds = %.preheader84.i338
  %i.oh = extractelement <2 x double> %i.nn, i64 1 ; 2 uses
  %i.oi = fcmp olt double %i.oh, f0x3D719799812DEA11
  %.068..i347 = select i1 %i.oi, double f0x3D719799812DEA11, double %i.oh ; 2 uses
  %i.oj = fcmp ogt double %.068..i347, %i.ni
  %.068..1.i348 = select i1 %i.oj, double %.068..i347, double %i.ni ; 2 uses
  %i.ok = extractelement <2 x double> %i.nn, i64 0 ; 2 uses
  %i.ol = fcmp ogt double %.068..1.i348, %i.ok
  %.068..2.i349 = select i1 %i.ol, double %.068..1.i348, double %i.ok ; 2 uses
  %i.om = fcmp ogt <2 x double> %i.nn, splat (double f0x3D719799812DEA11)
  %i.on = fcmp ogt double %i.ni, f0x3D719799812DEA11
  %i.oo = select i1 %i.on, double %i.ni, double f0x3D719799812DEA11
  %i.op = fdiv double %i.oo, %.068..2.i349        ; 2 uses
  %i.oq = select <2 x i1> %i.om, <2 x double> %i.nn, <2 x double> splat (double f0x3D719799812DEA11)
  %i.or = insertelement <2 x double> poison, double %.068..2.i349, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = fdiv <2 x double> %i.oq, %i.os          ; 2 uses
  %i.ou = extractelement <2 x double> %i.ot, i64 1 ; 2 uses
  %i.ov = call double @log(double noundef %i.ou) #11, !tbaa !4
  %i.ow = fmul double %i.ov, 5.000000e-01
  %i.ox = fdiv double %i.ow, f0x3FE62E42FEFA39EF
  %i.oy = fsub double 5.000000e-01, %i.ox
  %i.oz = fptosi double %i.oy to i32
  %i.pa = call i32 @llvm.smax.i32(i32 %i.oz, i32 0)
  %i.pb = call i32 @llvm.umin.i32(i32 %i.pa, i32 2)
  store i32 %i.pb, ptr %i.ml, align 4, !tbaa !4
  %i.pc = call double @log(double noundef %i.op) #11, !tbaa !4
  %i.pd = fmul double %i.pc, 5.000000e-01
  %i.pe = fdiv double %i.pd, f0x3FE62E42FEFA39EF
  %i.pf = fsub double 5.000000e-01, %i.pe
  %i.pg = fptosi double %i.pf to i32
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.pi = call i32 @llvm.smax.i32(i32 %i.pg, i32 0)
  %i.pj = call i32 @llvm.umin.i32(i32 %i.pi, i32 2)
  store i32 %i.pj, ptr %i.ph, align 8, !tbaa !4
  %i.pk = extractelement <2 x double> %i.ot, i64 0 ; 2 uses
  %i.pl = call double @log(double noundef %i.pk) #11, !tbaa !4
  %i.pm = fmul double %i.pl, 5.000000e-01
  %i.pn = fdiv double %i.pm, f0x3FE62E42FEFA39EF
  %i.po = fsub double 5.000000e-01, %i.pn
  %i.pp = fptosi double %i.po to i32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mf, i64 52
  %i.pr = call i32 @llvm.smax.i32(i32 %i.pp, i32 0)
  %i.ps = call i32 @llvm.umin.i32(i32 %i.pr, i32 2)
  store i32 %i.ps, ptr %i.pq, align 4, !tbaa !4
  %i.pt = fadd double %i.ou, %i.op
  %i.pu = fadd double %i.pk, %i.pt
  %i.pv = fcmp ule double %i.pu, 1.000000e-99
  br i1 %i.pv, label %init_outer_loop.exit351.thread, label %init_outer_loop.exit351.thread359

init_outer_loop.exit351.thread:                   ; preds = %bb.ac, %init_outer_loop.exit351
  %i.pw = getelementptr inbounds nuw [244 x i8], ptr %i.ls, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.pw, i8 0, i64 244, i1 false)
  %i.px = getelementptr inbounds nuw [2304 x i8], ptr %i.lt, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.px, i8 0, i64 2304, i1 false)
  br label %bb.ad

init_outer_loop.exit351.thread359:                ; preds = %.thread.i333, %.thread.i333.1, %.thread.i333.2, %.thread.i333.3, %init_outer_loop.exit351
  %i.py = load i32, ptr %i.lk, align 4, !tbaa !48
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv494
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !4  ; 2 uses
  %i.qb = shl nsw i32 %i.py, 1
  %i.qc = add nsw i32 %i.qb, -6
  %i.qd = sitofp i32 %i.qc to float
  %i.qe = add nsw i32 %i.qa, -125
  %i.qf = sitofp i32 %i.qe to double
  %i.qg = fdiv nnan double %i.qf, 2.375000e+03
  %i.qh = fptrunc nnan double %i.qg to float
  %i.qi = fadd nnan float %i.qh, -1.000000e+00
  %i.qj = fmul nnan float %i.qi, 4.000000e+00
  %i.qk = fadd float %i.qj, %i.qd
  %i.ql = fdiv float %i.qk, 1.000000e+01
  %i.qm = fpext float %i.ql to double
  %i.qn = call double @pow(double noundef 1.000000e+01, double noundef %i.qm) #11, !tbaa !4
  %i.qo = fptrunc double %i.qn to float
  store float %i.qo, ptr @masking_lower, align 4, !tbaa !43
  %i.qp = getelementptr inbounds nuw [976 x i8], ptr %i.lv, i64 %indvars.iv494
  %i.qq = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.mg, ptr noundef %i.qp, ptr noundef nonnull %i.mf, ptr noundef nonnull %11) #11 ; 0 uses
  %i.qr = getelementptr inbounds nuw [2304 x i8], ptr %i.lt, i64 %indvars.iv494
  %i.qs = getelementptr inbounds nuw [244 x i8], ptr %i.ls, i64 %indvars.iv494
  %i.qt = trunc nuw nsw i64 %indvars.iv494 to i32
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.mg, i32 noundef %i.qa, ptr noundef nonnull %i.c, ptr noundef nonnull %11, ptr noundef %i.qr, ptr noundef %i.qs, ptr noundef nonnull %i.mf, ptr nonnull poison, i32 noundef %i.qt)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %init_outer_loop.exit351.thread359, %init_outer_loop.exit351.thread
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.qu = load i32, ptr %i.lh, align 4, !tbaa !16 ; 2 uses
  %i.qv = sext i32 %i.qu to i64
  %i.qw = icmp slt i64 %indvars.iv.next495, %i.qv
  br i1 %i.qw, label %bb.y, label %._crit_edge439.loopexit, !llvm.loop !59

._crit_edge439.loopexit:                          ; preds = %bb.ad
  %.pre517 = load i32, ptr %i.y, align 8, !tbaa !8
  br label %._crit_edge439

._crit_edge439:                                   ; preds = %._crit_edge439.loopexit, %.preheader374
  %i.qx = phi i32 [ %.pre517, %._crit_edge439.loopexit ], [ %i.ln, %.preheader374 ] ; 4 uses
  %i.qy = phi i32 [ %i.qu, %._crit_edge439.loopexit ], [ %i.lo, %.preheader374 ]
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.qz = sext i32 %i.qx to i64
  %i.ra = icmp slt i64 %indvars.iv.next498, %i.qz
  br i1 %i.ra, label %.preheader374, label %.preheader373, !llvm.loop !60

.preheader372:                                    ; preds = %.preheader372.lr.ph, %._crit_edge443
  %i.rb = phi i32 [ %i.rw, %._crit_edge443 ], [ %i.lx, %.preheader372.lr.ph ]
  %i.rc = phi i32 [ %i.rx, %._crit_edge443 ], [ %i.ma, %.preheader372.lr.ph ] ; 2 uses
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %._crit_edge443 ], [ 0, %.preheader372.lr.ph ] ; 4 uses
  %i.rd = icmp sgt i32 %i.rc, 0
  br i1 %i.rd, label %.lr.ph442, label %._crit_edge443

.lr.ph442:                                        ; preds = %.preheader372
  %i.re = getelementptr inbounds nuw [240 x i8], ptr %i.lz, i64 %indvars.iv503
  %i.rf = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv503
  %i.rg = trunc nuw nsw i64 %indvars.iv503 to i32 ; 2 uses
  br label %bb.ae

.preheader371:                                    ; preds = %._crit_edge443
  %i.rh = icmp sgt i32 %i.rw, 0
  br i1 %i.rh, label %.preheader370.lr.ph, label %._crit_edge449

.preheader370.lr.ph:                              ; preds = %.preheader372.lr.ph, %.preheader371
  %i.ri = phi i32 [ %i.rw, %.preheader371 ], [ %i.lx, %.preheader372.lr.ph ]
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !16 ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.preheader370, label %._crit_edge449

bb.ae:                                            ; preds = %.lr.ph442, %bb.ag
  %indvars.iv500 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next501, %bb.ag ] ; 4 uses
  %i.rm = getelementptr inbounds nuw [120 x i8], ptr %i.re, i64 %indvars.iv500 ; 3 uses
  %i.rn = trunc nuw nsw i64 %indvars.iv500 to i32 ; 2 uses
  call void @best_scalefac_store(ptr noundef nonnull %0, i32 noundef %i.rg, i32 noundef %i.rn, ptr noundef %6, ptr noundef %5, ptr noundef %7) #11
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !25
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.rr = getelementptr inbounds nuw [2304 x i8], ptr %i.rf, i64 %indvars.iv500
  call void @best_huffman_divide(i32 noundef %i.rg, i32 noundef %i.rn, ptr noundef nonnull %i.rm, ptr noundef %i.rr) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.rs = load i32, ptr %i.f, align 4, !tbaa !4
  call void @ResvAdjust(ptr noundef nonnull %0, ptr noundef nonnull %i.rm, ptr noundef nonnull %5, i32 noundef %i.rs) #11
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.rt = load i32, ptr %i.ly, align 4, !tbaa !16 ; 2 uses
  %i.ru = sext i32 %i.rt to i64
  %i.rv = icmp slt i64 %indvars.iv.next501, %i.ru
  br i1 %i.rv, label %bb.ae, label %._crit_edge443.loopexit, !llvm.loop !62

._crit_edge443.loopexit:                          ; preds = %bb.ag
  %.pre518 = load i32, ptr %i.y, align 8, !tbaa !8
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %._crit_edge443.loopexit, %.preheader372
  %i.rw = phi i32 [ %.pre518, %._crit_edge443.loopexit ], [ %i.rb, %.preheader372 ] ; 4 uses
  %i.rx = phi i32 [ %i.rt, %._crit_edge443.loopexit ], [ %i.rc, %.preheader372 ]
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.ry = sext i32 %i.rw to i64
end_hunk_2
