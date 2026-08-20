begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DGSVJ0\00", align 1
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = internal global i32 0, align 4
@c_b42 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dgsvj0_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca double, align 8                   ; 81 uses
  %i.e = alloca double, align 8                   ; 51 uses
  %i.f = alloca double, align 8                   ; 32 uses
  %i.g = alloca i32, align 4                      ; 15 uses
  %i.h = alloca double, align 8                   ; 14 uses
  %i.i = alloca double, align 8                   ; 31 uses
  %i.j = alloca [5 x double], align 16            ; 12 uses
  %i.k = alloca i32, align 4                      ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.l = getelementptr inbounds i8, ptr %6, i64 -8 ; 12 uses
  %i.m = getelementptr inbounds i8, ptr %5, i64 -8 ; 10 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !8      ; 8 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %3, i64 %i.o ; 37 uses
  %i.q = load i32, ptr %9, align 4, !tbaa !8      ; 5 uses
  %narrow1352 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow1352 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %8, i64 %i.r ; 18 uses
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.u = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.v = icmp ne i32 %i.u, 0                      ; 4 uses
  %i.w = icmp ne i32 %i.t, 0                      ; 3 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.w     ; 16 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %or.cond1384 = icmp ugt i32 %i.aa, %i.y
  br i1 %or.cond1384, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %4, align 4, !tbaa !8
  %i.ac = icmp slt i32 %i.ab, %i.y
  br i1 %i.ac, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond, label %bb.g, label %.thread1404

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %9, align 4, !tbaa !8
  %i.ag = icmp slt i32 %i.af, %i.aa
  br i1 %i.ag, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.w, label %bb.k, label %.thread1404

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %9, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ah, %i.ad
  br i1 %i.ai, label %bb.n, label %.thread1404

.thread1404:                                      ; preds = %bb.f, %bb.k, %bb.j
  %i.aj = load double, ptr %12, align 8, !tbaa !9 ; 2 uses
  %i.ak = load double, ptr %10, align 8, !tbaa !9 ; 3 uses
  %i.al = fcmp ugt double %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread1404
  %i.am = load i32, ptr %13, align 4, !tbaa !8
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %15, align 4, !tbaa !8
  %i.ap = icmp slt i32 %i.ao, %i.y
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread1404, %bb.i, %bb.k, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ -8, %bb.g ], [ -13, %.thread1404 ], [ -14, %bb.l ], [ -10, %bb.i ], [ -5, %bb.e ], [ -2, %bb.c ], [ -10, %bb.k ], [ -16, %bb.m ]
  %.ph.neg = phi i32 [ 1, %bb.b ], [ 3, %bb.d ], [ 8, %bb.g ], [ 13, %.thread1404 ], [ 14, %bb.l ], [ 10, %bb.i ], [ 5, %bb.e ], [ 2, %bb.c ], [ 10, %bb.k ], [ 16, %bb.m ]
  store i32 %.sink, ptr %16, align 4, !tbaa !8
  store i32 %.ph.neg, ptr %i.a, align 4, !tbaa !8
  %i.aq = call i32 @xerbla_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %16, align 4, !tbaa !8
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o
  %.mux = select i1 %i.v, ptr %2, ptr %7
  %i.ar = load i32, ptr %.mux, align 4, !tbaa !8
  store i32 %i.ar, ptr %i.k, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.sink.split
  %i.as = tail call double @sqrt(double noundef %i.ak) #5 ; 5 uses
  %i.at = load double, ptr %11, align 8, !tbaa !9 ; 3 uses
  %i.au = tail call double @sqrt(double noundef %i.at) #5 ; 7 uses
  %i.av = fdiv double %i.at, %i.ak                ; 7 uses
  %i.aw = fdiv double 1.000000e+00, %i.at         ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.as, i64 1
  %i.az = fdiv <2 x double> splat (double 1.000000e+00), %i.ay ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 6 uses
  %i.bb = tail call double @sqrt(double noundef %i.aj) #5
  %i.bc = load i32, ptr %2, align 4, !tbaa !8     ; 7 uses
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = sdiv i32 %i.be, 2                       ; 2 uses
  store double 0.000000e+00, ptr %i.j, align 16, !tbaa !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 8) ; 16 uses
  %i.bg = sdiv i32 %i.bc, %spec.select            ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %spec.select
  %.not1354 = icmp ne i32 %i.bh, %i.bc
  %i.bi = zext i1 %.not1354 to i32
  %.0 = add i32 %i.bg, %i.bi                      ; 6 uses
  %i.bj = mul nsw i32 %spec.select, %spec.select
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 5) ; 2 uses
  %i.bl = load i32, ptr %13, align 4, !tbaa !8    ; 4 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !8
  %.not13551532 = icmp slt i32 %i.bl, 1
  br i1 %.not13551532, label %._crit_edge1537, label %.lr.ph1536

.lr.ph1536:                                       ; preds = %bb.p
  %i.bm = add i32 %spec.select, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.bo = sext i32 %i.n to i64                    ; 30 uses
  %i.bp = sext i32 %i.q to i64                    ; 15 uses
  %.not13561519 = icmp slt i32 %.0, 1
  %i.bq = extractelement <2 x double> %i.az, i64 1
  %i.br = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = extractelement <2 x double> %i.az, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1536, %bb.eh
  %i.bu = phi i32 [ %i.bc, %.lr.ph1536 ], [ %i.aeu, %bb.eh ]
  %.012871534 = phi i32 [ 0, %.lr.ph1536 ], [ %.11288, %bb.eh ] ; 3 uses
  %.013051533 = phi i32 [ 1, %.lr.ph1536 ], [ %i.afm, %bb.eh ] ; 6 uses
  store i32 %.0, ptr %i.b, align 4, !tbaa !8
  br i1 %.not13561519, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.q
  %.not1383 = icmp samesign ule i32 %.013051533, %.012871534 ; 3 uses
  br label %bb.r

..loopexit1415_crit_edge:                         ; preds = %.lr.ph1517, %vec.epilog.middle.block, %middle.block
  %.lcssa1688 = phi double [ %i.adv, %vec.epilog.middle.block ], [ %i.adp, %middle.block ], [ %i.adx, %.lr.ph1517 ]
  store double %.lcssa1688, ptr %i.d, align 8, !tbaa !9
  br label %.loopexit1415

.loopexit1415:                                    ; preds = %..loopexit1415_crit_edge, %.loopexit1416
  %indvars.iv.next = add i32 %indvars.iv, %spec.select
  %indvars.iv.next1574.a = add i32 %indvars.iv1573.a, %spec.select
  br i1 %.not13621502.not, label %bb.r, label %._crit_edge1527, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph1526, %.loopexit1415
  %indvars.iv1573.a = phi i32 [ %spec.select, %.lr.ph1526 ], [ %indvars.iv.next1574.a, %.loopexit1415 ] ; 2 uses
  %indvars.iv1571.in = phi i32 [ %.0, %.lr.ph1526 ], [ %indvars.iv1571, %.loopexit1415 ]
  %indvars.iv = phi i32 [ 1, %.lr.ph1526 ], [ %indvars.iv.next, %.loopexit1415 ] ; 4 uses
  %.012361524 = phi i32 [ 1, %.lr.ph1526 ], [ %i.pp, %.loopexit1415 ] ; 5 uses
  %.012391523 = phi i32 [ 0, %.lr.ph1526 ], [ %.14, %.loopexit1415 ] ; 2 uses
  %.012401522 = phi i32 [ 0, %.lr.ph1526 ], [ %.17, %.loopexit1415 ] ; 2 uses
  %.012561521 = phi double [ 0.000000e+00, %.lr.ph1526 ], [ %.151271, %.loopexit1415 ] ; 2 uses
  %.012731520 = phi double [ 0.000000e+00, %.lr.ph1526 ], [ %.131286, %.loopexit1415 ] ; 2 uses
  %i.bv = sext i32 %indvars.iv to i64             ; 2 uses
  %indvars.iv1571 = add i32 %indvars.iv1571.in, -1 ; 2 uses
  %i.bw = sext i32 %indvars.iv to i64             ; 6 uses
  %.inv1617 = icmp slt i32 %indvars.iv1571, 1
  %17 = select i1 %.inv1617, i32 1, i32 2
  %i.bx = add nsw i32 %.012361524, -1
  %i.by = mul nsw i32 %i.bx, %spec.select         ; 3 uses
  %i.bz = sub nsw i32 %.0, %.012361524            ; 2 uses
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !8
  %.not13611455 = icmp slt i32 %i.bz, 0
  br i1 %.not13611455, label %._crit_edge1464, label %.lr.ph1463.preheader

.lr.ph1463.preheader:                             ; preds = %bb.r
  %i.ca = add nsw i32 %i.by, 1
  br label %.lr.ph1463

.lr.ph1463:                                       ; preds = %.lr.ph1463.preheader, %._crit_edge
  %indvars.iv1563 = phi i32 [ %indvars.iv, %.lr.ph1463.preheader ], [ %indvars.iv.next1564, %._crit_edge ] ; 2 uses
  %indvars.iv1561 = phi i32 [ %spec.select, %.lr.ph1463.preheader ], [ %indvars.iv.next1562, %._crit_edge ] ; 2 uses
  %.012371461 = phi i32 [ %i.ca, %.lr.ph1463.preheader ], [ %i.cc, %._crit_edge ]
  %.11460 = phi i32 [ %.012391523, %.lr.ph1463.preheader ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.112411459 = phi i32 [ %.012401522, %.lr.ph1463.preheader ], [ %.21242.lcssa, %._crit_edge ] ; 2 uses
  %.012551458 = phi i32 [ 0, %.lr.ph1463.preheader ], [ %i.po, %._crit_edge ] ; 3 uses
  %.112571457 = phi double [ %.012561521, %.lr.ph1463.preheader ], [ %.21258.lcssa, %._crit_edge ] ; 2 uses
  %.112741456 = phi double [ %.012731520, %.lr.ph1463.preheader ], [ %.21275.lcssa, %._crit_edge ] ; 2 uses
  %i.cb = mul nuw nsw i32 %.012551458, %spec.select
  %i.cc = add nsw i32 %.012371461, %i.cb          ; 3 uses
  %i.cd = add i32 %i.bm, %i.cc                    ; 5 uses
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !8
  %i.ce = load i32, ptr %2, align 4, !tbaa !8
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.cf) ; 2 uses
  %.not13741445 = icmp sgt i32 %i.cc, %i.cg
  br i1 %.not13741445, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1463
  %i.ch = sext i32 %indvars.iv1563 to i64
  %i.ci = icmp eq i32 %.012551458, 0              ; 6 uses
  %i.cj = zext i1 %i.ci to i32                    ; 3 uses
  %i.ck = sext i32 %i.cg to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.bw
  %indvars.iv1565 = phi i64 [ %i.ch, %.lr.ph ], [ %indvars.iv.next1566, %bb.bw ] ; 14 uses
  %.21450 = phi i32 [ %.11460, %.lr.ph ], [ %.7, %bb.bw ] ; 3 uses
  %.212421449 = phi i32 [ %.112411459, %.lr.ph ], [ %.91249, %bb.bw ] ; 3 uses
  %.212581448 = phi double [ %.112571457, %.lr.ph ], [ %.71263, %bb.bw ] ; 3 uses
  %.212751447 = phi double [ %.112741456, %.lr.ph ], [ %.61279, %bb.bw ] ; 3 uses
  %i.cl = load i32, ptr %2, align 4, !tbaa !8
  %i.cm = trunc nsw i64 %indvars.iv1565 to i32    ; 4 uses
  %reass.sub = sub i32 %i.cl, %i.cm
  %i.cn = add i32 %reass.sub, 1
  store i32 %i.cn, ptr %i.c, align 4, !tbaa !8
  %i.co = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1565 ; 7 uses
  %i.cp = call i32 @idamax_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.co, ptr noundef nonnull @c__1) #5
  %i.cq = add i32 %i.cm, -1
  %i.cr = add i32 %i.cq, %i.cp                    ; 4 uses
  %.not1375 = icmp eq i32 %i.cr, %i.cm
  br i1 %.not1375, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = mul nsw i64 %indvars.iv1565, %i.bo
  %i.ct = getelementptr [8 x i8], ptr %i.p, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = mul nsw i32 %i.cr, %i.n
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.p, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  call void @dswap_(ptr noundef nonnull %1, ptr noundef %i.cu, ptr noundef nonnull @c__1, ptr noundef %i.cy, ptr noundef nonnull @c__1) #5
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = mul nsw i64 %indvars.iv1565, %i.bp
  %i.da = getelementptr [8 x i8], ptr %i.s, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %i.dc = mul nsw i32 %i.cr, %i.q
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.s, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8
  call void @dswap_(ptr noundef nonnull %i.k, ptr noundef %i.db, ptr noundef nonnull @c__1, ptr noundef %i.df, ptr noundef nonnull @c__1) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = load double, ptr %i.co, align 8, !tbaa !9
  %i.dh = sext i32 %i.cr to i64                   ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !9
  store double %i.dj, ptr %i.co, align 8, !tbaa !9
  store double %i.dg, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9 ; 2 uses
  store double %i.dl, ptr %i.h, align 8, !tbaa !9
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dh ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !9
  store double %i.dn, ptr %i.dk, align 8, !tbaa !9
  store double %i.dl, ptr %i.dm, align 8, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.do = load double, ptr %i.co, align 8, !tbaa !9 ; 3 uses
  br i1 %i.ci, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.dp = fcmp olt double %i.do, %i.ba
  %i.dq = fcmp ogt double %i.do, %i.au
  %or.cond1385 = and i1 %i.dp, %i.dq
  br i1 %or.cond1385, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dr = mul nsw i64 %indvars.iv1565, %i.bo
  %i.ds = getelementptr [8 x i8], ptr %i.p, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.dt, ptr noundef nonnull @c__1) #5
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.dv = mul nsw i64 %indvars.iv1565, %i.bo
  %i.dw = getelementptr [8 x i8], ptr %i.p, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.dx, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %i.dy = load double, ptr %i.h, align 8, !tbaa !9
  %i.dz = load double, ptr %i.e, align 8, !tbaa !9
  %i.ea = call double @sqrt(double noundef %i.dz) #5
  %i.eb = fmul double %i.dy, %i.ea
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink1638 = phi double [ %i.eb, %bb.z ], [ %i.du, %bb.y ]
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !9
  %i.ee = fmul double %.sink1638, %i.ed           ; 2 uses
  store double %i.ee, ptr %i.co, align 8, !tbaa !9
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.aa
  %storemerge1376 = phi double [ %i.ee, %bb.aa ], [ %i.do, %bb.w ] ; 3 uses
  store double %storemerge1376, ptr %i.e, align 8, !tbaa !9
  %i.ef = fcmp ogt double %storemerge1376, 0.000000e+00
  br i1 %i.ef, label %bb.ab, label %bb.bu

bb.ab:                                            ; preds = %thread-pre-split
  %i.eg = load i32, ptr %2, align 4, !tbaa !8
  %. = call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.eg)
  store i32 %., ptr %i.c, align 4, !tbaa !8
  %i.eh = mul nsw i64 %indvars.iv1565, %i.bo
  %i.ei = getelementptr [8 x i8], ptr %i.p, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 8      ; 17 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565 ; 17 uses
  %i.el = mul nsw i64 %indvars.iv1565, %i.bp
  %i.em = getelementptr [8 x i8], ptr %i.s, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 8      ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.br, %bb.ab
  %indvars.iv1567 = phi i64 [ %indvars.iv.next1568, %bb.br ], [ %indvars.iv1565, %bb.ab ] ; 10 uses
  %.01306 = phi i32 [ %.21308, %bb.br ], [ 0, %bb.ab ] ; 3 uses
  %.31276 = phi double [ %.41277, %bb.br ], [ %.212751447, %bb.ab ] ; 5 uses
  %.31259 = phi double [ %.51261, %bb.br ], [ %.212581448, %bb.ab ] ; 9 uses
  %.31243 = phi i32 [ %.71247, %bb.br ], [ %.212421449, %bb.ab ] ; 4 uses
  %.3 = phi i32 [ %.5, %bb.br ], [ %.21450, %bb.ab ] ; 4 uses
  %indvars.iv.next1568 = add nsw i64 %indvars.iv1567, 1 ; 19 uses
  %i.eo = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64
  %.not1380.not = icmp slt i64 %indvars.iv1567, %i.ep
  br i1 %.not1380.not, label %bb.ad, label %.loopexit1414.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.eq = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1567 ; 6 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !9 ; 7 uses
  store double %i.er, ptr %i.f, align 8, !tbaa !9
  %i.es = fcmp ogt double %i.er, 0.000000e+00
  br i1 %i.es, label %bb.ae, label %bb.bq

bb.ae:                                            ; preds = %bb.ad
  %i.et = load double, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  %i.eu = fcmp ult double %i.er, 1.000000e+00
  br i1 %i.eu, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = fmul double %i.av, %i.et
  %i.ew = fcmp ole double %i.ev, %i.er            ; 2 uses
  %i.ex = fdiv double %i.aw, %i.er
  %i.ey = fcmp olt double %i.et, %i.ex
  %i.ez = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567 ; 2 uses
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fa = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fb = getelementptr [8 x i8], ptr %i.p, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
  %i.fd = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.ej, ptr noundef nonnull @c__1, ptr noundef %i.fc, ptr noundef nonnull @c__1) #5
  %i.fe = load double, ptr %i.ek, align 8, !tbaa !9
  %i.ff = fmul double %i.fd, %i.fe
  %i.fg = load double, ptr %i.ez, align 8, !tbaa !9
  %i.fh = fmul double %i.ff, %i.fg
  %i.fi = load double, ptr %i.f, align 8, !tbaa !9
  %i.fj = fdiv double %i.fh, %i.fi
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.ej, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ek, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.fk = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fl = getelementptr [8 x i8], ptr %i.p, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.fm, ptr noundef nonnull @c__1) #5
  %i.fo = load double, ptr %i.ez, align 8, !tbaa !9
  %i.fp = fmul double %i.fn, %i.fo
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.fq = fdiv double %i.er, %i.av
  %i.fr = fcmp ole double %i.et, %i.fq            ; 2 uses
  %i.fs = fdiv double %i.av, %i.er
  %i.ft = fcmp ogt double %i.et, %i.fs
  %i.fu = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fv = getelementptr [8 x i8], ptr %i.p, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 8      ; 2 uses
  br i1 %i.ft, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@dgsvj0_:bb.a
  %i.mx = fneg double %sqrt
  %i.my = fmul double %i.jb, %i.mx
  %i.mz = fmul double %i.my, %i.kd                ; 2 uses
  store double %i.mz, ptr %i.d, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef %i.mw, ptr noundef nonnull @c__1, ptr noundef %i.ej, ptr noundef nonnull @c__1) #5
  %i.na = load double, ptr %i.ek, align 8, !tbaa !9
  %i.nb = fdiv double %i.na, %sqrt
  store double %i.nb, ptr %i.ek, align 8, !tbaa !9
  %i.nc = load double, ptr %i.jv, align 8, !tbaa !9
  %i.nd = fmul double %sqrt, %i.nc
  store double %i.nd, ptr %i.jv, align 8, !tbaa !9
  br i1 %or.cond, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ne = load double, ptr %i.i, align 8, !tbaa !9
  %i.nf = fmul double %i.kc, %i.ne
  store double %i.nf, ptr %i.d, align 8, !tbaa !9
  %i.ng = mul nsw i64 %indvars.iv.next1568, %i.bp
  %i.nh = getelementptr [8 x i8], ptr %i.s, i64 %i.ng
  %i.ni = getelementptr i8, ptr %i.nh, i64 8      ; 2 uses
  call void @daxpy_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, ptr noundef %i.en, ptr noundef nonnull @c__1, ptr noundef %i.ni, ptr noundef nonnull @c__1) #5
  store double %i.mz, ptr %i.d, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, ptr noundef %i.ni, ptr noundef nonnull @c__1, ptr noundef %i.en, ptr noundef nonnull @c__1) #5
  br label %bb.bg

bb.bf:                                            ; preds = %bb.am
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.ej, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.nj = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.nk = getelementptr [8 x i8], ptr %i.p, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 8      ; 3 uses
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.nl, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.nm = load double, ptr %i.ek, align 8, !tbaa !9
  %i.nn = fmul double %i.nm, %i.gm
  %i.no = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567
  %i.np = load double, ptr %i.no, align 8, !tbaa !9
  %i.nq = fdiv double %i.nn, %i.np
  store double %i.nq, ptr %i.h, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.nl, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b42, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.nl, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.nr = call double @llvm.fmuladd.f64(double %i.gm, double %i.gk, double 1.000000e+00) ; 2 uses
  %i.ns = load double, ptr %i.f, align 8, !tbaa !9
  %i.nt = fcmp ole double %i.nr, 0.000000e+00
  %i.nu = select i1 %i.nt, double 0.000000e+00, double %i.nr
  %i.nv = call double @sqrt(double noundef %i.nu) #5
  %i.nw = fmul double %i.ns, %i.nv
  store double %i.nw, ptr %i.eq, align 8, !tbaa !9
  %i.nx = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv = fcmp oge double %.31259, %i.nx
  %..31259 = select i1 %.inv, double %.31259, double %i.nx
  br label %bb.bg

bb.bg:                                            ; preds = %bb.aq, %bb.az, %bb.ay, %bb.bd, %bb.be, %bb.bb, %bb.bc, %bb.au, %bb.at, %bb.aw, %bb.av, %bb.bf
  %.41260 = phi double [ %i.ir, %bb.aq ], [ %i.jg, %bb.au ], [ %i.jg, %bb.at ], [ %i.jg, %bb.aw ], [ %i.jg, %bb.av ], [ %i.jg, %bb.az ], [ %i.jg, %bb.ay ], [ %i.jg, %bb.bc ], [ %i.jg, %bb.bb ], [ %i.jg, %bb.be ], [ %i.jg, %bb.bd ], [ %..31259, %bb.bf ] ; 2 uses
  %i.ny = load double, ptr %i.eq, align 8, !tbaa !9
  %i.nz = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.oa = fdiv double %i.ny, %i.nz                ; 3 uses
  store double %i.oa, ptr %i.d, align 8, !tbaa !9
  %i.ob = fmul double %i.oa, %i.oa
  %i.oc = fcmp ugt double %i.ob, %i.as
  br i1 %i.oc, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.od = fcmp olt double %i.nz, %i.ba
  %i.oe = fcmp ogt double %i.nz, %i.au
  %or.cond1386 = and i1 %i.od, %i.oe
  br i1 %or.cond1386, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.of = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.og = getelementptr [8 x i8], ptr %i.p, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 8
  %i.oi = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.oh, ptr noundef nonnull @c__1) #5
  br label %.sink.split1644

bb.bj:                                            ; preds = %bb.bh
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.oj = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.ok = getelementptr [8 x i8], ptr %i.p, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.ol, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #5
  %i.om = load double, ptr %i.i, align 8, !tbaa !9
  %i.on = load double, ptr %i.f, align 8, !tbaa !9
  %i.oo = call double @sqrt(double noundef %i.on) #5
  %i.op = fmul double %i.om, %i.oo
  br label %.sink.split1644

.sink.split1644:                                  ; preds = %bb.bj, %bb.bi
  %.sink1646 = phi double [ %i.oi, %bb.bi ], [ %i.op, %bb.bj ]
  %i.oq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567
  %i.or = load double, ptr %i.oq, align 8, !tbaa !9
  %i.os = fmul double %.sink1646, %i.or
  store double %i.os, ptr %i.eq, align 8, !tbaa !9
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split1644, %bb.bg
  %i.ot = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.ou = fdiv double %i.ot, %i.et
  %i.ov = fcmp ugt double %i.ou, %i.as
  br i1 %i.ov, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ow = fcmp olt double %i.ot, %i.ba
  %i.ox = fcmp ogt double %i.ot, %i.au
  %or.cond1387 = and i1 %i.ow, %i.ox
  br i1 %or.cond1387, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oy = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.ej, ptr noundef nonnull @c__1) #5
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.ej, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.oz = load double, ptr %i.i, align 8, !tbaa !9
  %i.pa = load double, ptr %i.e, align 8, !tbaa !9
  %i.pb = call double @sqrt(double noundef %i.pa) #5
  %i.pc = fmul double %i.oz, %i.pb
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink1649 = phi double [ %i.pc, %bb.bn ], [ %i.oy, %bb.bm ]
  %i.pd = load double, ptr %i.ek, align 8, !tbaa !9
  %i.pe = fmul double %.sink1649, %i.pd           ; 2 uses
  store double %i.pe, ptr %i.e, align 8, !tbaa !9
  store double %i.pe, ptr %i.co, align 8, !tbaa !9
  br label %bb.br

bb.bp:                                            ; preds = %bb.al
  %spec.select1388 = add nsw i32 %.31243, %i.cj
  %i.pf = add nsw i32 %.01306, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.ad
  %spec.select1389 = add nsw i32 %.31243, %i.cj
  %i.pg = add nsw i32 %.01306, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bk, %bb.bq
  %.21308 = phi i32 [ %.11307, %bb.bo ], [ %.11307, %bb.bk ], [ %i.pf, %bb.bp ], [ %i.pg, %bb.bq ] ; 2 uses
  %.41277 = phi double [ %i.gp, %bb.bo ], [ %i.gp, %bb.bk ], [ %i.gp, %bb.bp ], [ %.31276, %bb.bq ] ; 3 uses
  %.51261 = phi double [ %.41260, %bb.bo ], [ %.41260, %bb.bk ], [ %.31259, %bb.bp ], [ %.31259, %bb.bq ] ; 3 uses
  %.71247 = phi i32 [ %.41244, %bb.bo ], [ %.41244, %bb.bk ], [ %spec.select1388, %bb.bp ], [ %spec.select1389, %bb.bq ]
  %.5 = phi i32 [ %.4, %bb.bo ], [ %.4, %bb.bk ], [ %.3, %bb.bp ], [ %.3, %bb.bq ] ; 3 uses
  %i.ph = icmp sgt i32 %.21308, %i.bk
  %or.cond1390 = select i1 %.not1383, i1 %i.ph, i1 false
  br i1 %or.cond1390, label %bb.bs, label %bb.ac, !llvm.loop !13

bb.bs:                                            ; preds = %bb.br
  %.pre1593 = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  br i1 %i.ci, label %bb.bt, label %.loopexit1414

bb.bt:                                            ; preds = %bb.bs
  %i.pi = fneg double %.pre1593                   ; 2 uses
  store double %i.pi, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1414

.loopexit1414.loopexit:                           ; preds = %bb.ac
  %.pre = load double, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1414

.loopexit1414:                                    ; preds = %.loopexit1414.loopexit, %bb.bs, %bb.bt
  %i.pj = phi double [ %.pre1593, %bb.bs ], [ %i.pi, %bb.bt ], [ %.pre, %.loopexit1414.loopexit ]
  %.51278 = phi double [ %.41277, %bb.bs ], [ %.41277, %bb.bt ], [ %.31276, %.loopexit1414.loopexit ]
  %.61262 = phi double [ %.51261, %bb.bs ], [ %.51261, %bb.bt ], [ %.31259, %.loopexit1414.loopexit ]
  %.81248 = phi i32 [ 0, %bb.bs ], [ 0, %bb.bt ], [ %.31243, %.loopexit1414.loopexit ]
  %.6 = phi i32 [ %.5, %bb.bs ], [ %.5, %bb.bt ], [ %.3, %.loopexit1414.loopexit ]
  store double %i.pj, ptr %i.co, align 8, !tbaa !9
  br label %bb.bw

bb.bu:                                            ; preds = %thread-pre-split
  %i.pk = fcmp oeq double %storemerge1376, 0.000000e+00
  %or.cond5 = and i1 %i.ci, %i.pk
  br i1 %or.cond5, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !8
  %i.pl = load i32, ptr %2, align 4, !tbaa !8
  %.1391 = call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.pl)
  %i.pm = sub i32 %.212421449, %i.cm
  %i.pn = add i32 %i.pm, %.1391
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit1414, %bb.bv, %bb.bu
  %.61279 = phi double [ %.51278, %.loopexit1414 ], [ %.212751447, %bb.bv ], [ %.212751447, %bb.bu ] ; 2 uses
  %.71263 = phi double [ %.61262, %.loopexit1414 ], [ %.212581448, %bb.bv ], [ %.212581448, %bb.bu ] ; 2 uses
  %.91249 = phi i32 [ %.81248, %.loopexit1414 ], [ %i.pn, %bb.bv ], [ %.212421449, %bb.bu ] ; 2 uses
  %.7 = phi i32 [ %.6, %.loopexit1414 ], [ %.21450, %bb.bv ], [ %.21450, %bb.bu ] ; 2 uses
  %indvars.iv.next1566 = add nsw i64 %indvars.iv1565, 1
  %.not1374.not = icmp slt i64 %indvars.iv1565, %i.ck
  br i1 %.not1374.not, label %bb.s, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.bw, %.lr.ph1463
  %.21275.lcssa = phi double [ %.112741456, %.lr.ph1463 ], [ %.61279, %bb.bw ] ; 2 uses
  %.21258.lcssa = phi double [ %.112571457, %.lr.ph1463 ], [ %.71263, %bb.bw ] ; 2 uses
  %.21242.lcssa = phi i32 [ %.112411459, %.lr.ph1463 ], [ %.91249, %bb.bw ] ; 2 uses
  %.2.lcssa = phi i32 [ %.11460, %.lr.ph1463 ], [ %.7, %bb.bw ] ; 2 uses
  %i.po = add nuw nsw i32 %.012551458, 1          ; 2 uses
  %indvars.iv.next1562 = add i32 %indvars.iv1561, %spec.select
  %indvars.iv.next1564 = add i32 %indvars.iv1563, %indvars.iv1561
  %exitcond.not = icmp eq i32 %i.po, %17
  br i1 %exitcond.not, label %._crit_edge1464, label %.lr.ph1463, !llvm.loop !15

._crit_edge1464:                                  ; preds = %._crit_edge, %bb.r
  %.11274.lcssa = phi double [ %.012731520, %bb.r ], [ %.21275.lcssa, %._crit_edge ] ; 2 uses
  %.11257.lcssa = phi double [ %.012561521, %bb.r ], [ %.21258.lcssa, %._crit_edge ] ; 2 uses
  %.11241.lcssa = phi i32 [ %.012401522, %bb.r ], [ %.21242.lcssa, %._crit_edge ] ; 2 uses
  %.1.lcssa = phi i32 [ %.012391523, %bb.r ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.pp = add nuw nsw i32 %.012361524, 1          ; 2 uses
  %.not13621502.not = icmp slt i32 %.012361524, %.0 ; 2 uses
  %i.pq = mul i32 %.012361524, %spec.select       ; 3 uses
  br i1 %.not13621502.not, label %.lr.ph1509, label %.loopexit1416

.lr.ph1509:                                       ; preds = %._crit_edge1464, %._crit_edge1497
  %indvars.iv1575.a = phi i32 [ %indvars.iv.next1576, %._crit_edge1497 ], [ %indvars.iv1573.a, %._crit_edge1464 ] ; 2 uses
  %.012381507 = phi i32 [ %i.acs, %._crit_edge1497 ], [ %i.pp, %._crit_edge1464 ] ; 4 uses
  %.81506 = phi i32 [ %.9.lcssa, %._crit_edge1497 ], [ %.1.lcssa, %._crit_edge1464 ] ; 2 uses
  %.1012501505 = phi i32 [ %.111251.lcssa, %._crit_edge1497 ], [ %.11241.lcssa, %._crit_edge1464 ] ; 2 uses
  %.812641504 = phi double [ %.91265.lcssa, %._crit_edge1497 ], [ %.11257.lcssa, %._crit_edge1464 ] ; 2 uses
  %.712801503 = phi double [ %.81281.lcssa, %._crit_edge1497 ], [ %.11274.lcssa, %._crit_edge1464 ] ; 2 uses
  %i.pr = sext i32 %indvars.iv1575.a to i64
  %i.ps = add nsw i32 %.012381507, -1
  %i.pt = mul nsw i32 %i.ps, %spec.select         ; 2 uses
  store i32 %i.pq, ptr %i.c, align 4, !tbaa !8
  %i.pu = load i32, ptr %2, align 4, !tbaa !8
  %.1392 = call i32 @llvm.smin.i32(i32 %i.pq, i32 %i.pu) ; 2 uses
  %.not13641486.not = icmp slt i32 %i.by, %.1392
  br i1 %.not13641486.not, label %.lr.ph1496, label %._crit_edge1497

.lr.ph1496:                                       ; preds = %.lr.ph1509
  %i.pv = mul i32 %.012381507, %spec.select       ; 3 uses
  %i.pw = sext i32 %.1392 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1496, %bb.ea
  %indvars.iv1580 = phi i64 [ %i.bw, %.lr.ph1496 ], [ %indvars.iv.next1581, %bb.ea ] ; 6 uses
  %.91494 = phi i32 [ %.81506, %.lr.ph1496 ], [ %.13, %bb.ea ] ; 4 uses
  %.1112511493 = phi i32 [ %.1012501505, %.lr.ph1496 ], [ %.16, %bb.ea ] ; 4 uses
  %.912651492 = phi double [ %.812641504, %.lr.ph1496 ], [ %.141270, %bb.ea ] ; 4 uses
  %.812811491 = phi double [ %.712801503, %.lr.ph1496 ], [ %.121285, %bb.ea ] ; 4 uses
  %.012891490 = phi i32 [ 0, %.lr.ph1496 ], [ %.41293, %bb.ea ] ; 4 uses
  %i.px = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1580 ; 5 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !9 ; 5 uses
  store double %i.py, ptr %i.e, align 8, !tbaa !9
  %i.pz = fcmp ogt double %i.py, 0.000000e+00
  br i1 %i.pz, label %bb.by, label %bb.dw

bb.by:                                            ; preds = %bb.bx
  %i.qa = load i32, ptr %2, align 4, !tbaa !8
  %.1393 = call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.qa) ; 2 uses
  store i32 %.1393, ptr %i.c, align 4, !tbaa !8
  %.not13671469.not = icmp slt i32 %i.pt, %.1393
  br i1 %.not13671469.not, label %.lr.ph1480, label %.loopexit1413

.lr.ph1480:                                       ; preds = %bb.by
  %i.qb = mul nsw i64 %indvars.iv1580, %i.bo
  %i.qc = getelementptr [8 x i8], ptr %i.p, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 8      ; 20 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1580 ; 18 uses
  %i.qf = mul nsw i64 %indvars.iv1580, %i.bp
  %i.qg = getelementptr [8 x i8], ptr %i.s, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 8      ; 10 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.du
  %i.qi = load i32, ptr %i.c, align 4, !tbaa !8
  %i.qj = sext i32 %i.qi to i64
  %.not1367.not = icmp slt i64 %indvars.iv.next1578, %i.qj
  br i1 %.not1367.not, label %bb.ca, label %.loopexit1413.loopexit, !llvm.loop !16

bb.ca:                                            ; preds = %.lr.ph1480, %bb.bz
  %indvars.iv1577 = phi i64 [ %i.pr, %.lr.ph1480 ], [ %indvars.iv.next1578, %bb.bz ] ; 10 uses
  %.101478 = phi i32 [ %.91494, %.lr.ph1480 ], [ %.11, %bb.bz ] ; 3 uses
  %.1212521477 = phi i32 [ %.1112511493, %.lr.ph1480 ], [ %.131253, %bb.bz ] ; 2 uses
  %.1012661476 = phi double [ %.912651492, %.lr.ph1480 ], [ %.121268, %bb.bz ] ; 10 uses
  %.912821475 = phi double [ %.812811491, %.lr.ph1480 ], [ %.101283, %bb.bz ] ; 4 uses
  %.112901474 = phi i32 [ %.012891490, %.lr.ph1480 ], [ %.21291, %bb.bz ] ; 4 uses
  %.313091470 = phi i32 [ 0, %.lr.ph1480 ], [ %.41310, %bb.bz ] ; 2 uses
  %indvars.iv.next1578 = add nsw i64 %indvars.iv1577, 1 ; 21 uses
  %i.qk = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1577 ; 6 uses
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !9 ; 9 uses
  store double %i.ql, ptr %i.f, align 8, !tbaa !9
  %i.qm = fcmp ogt double %i.ql, 0.000000e+00
  br i1 %i.qm, label %bb.cb, label %bb.dr

bb.cb:                                            ; preds = %bb.ca
  %i.qn = load double, ptr %i.e, align 8, !tbaa !9 ; 8 uses
  %i.qo = fcmp ult double %i.ql, 1.000000e+00
  %i.qp = fcmp ult double %i.qn, %i.ql            ; 2 uses
  br i1 %i.qo, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qq = fmul double %i.av, %i.qn
  %i.qr = fcmp ole double %i.qq, %i.ql
  %i.qs = fmul double %i.av, %i.ql
  %i.qt = fcmp ole double %i.qs, %i.qn
  %.11295.in = select i1 %i.qp, i1 %i.qt, i1 %i.qr ; 2 uses
  %i.qu = fdiv double %i.aw, %i.ql
  %i.qv = fcmp olt double %i.qn, %i.qu
  %i.qw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577 ; 2 uses
  br i1 %i.qv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qx = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.qy = getelementptr [8 x i8], ptr %i.p, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 8
  %i.ra = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.qd, ptr noundef nonnull @c__1, ptr noundef %i.qz, ptr noundef nonnull @c__1) #5
  %i.rb = load double, ptr %i.qe, align 8, !tbaa !9
  %i.rc = fmul double %i.ra, %i.rb
  %i.rd = load double, ptr %i.qw, align 8, !tbaa !9
  %i.re = fmul double %i.rc, %i.rd
  %i.rf = load double, ptr %i.f, align 8, !tbaa !9
  %i.rg = fdiv double %i.re, %i.rf
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.qd, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.qe, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.rh = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.ri = getelementptr [8 x i8], ptr %i.p, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 8
  %i.rk = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.rj, ptr noundef nonnull @c__1) #5
  %i.rl = load double, ptr %i.qw, align 8, !tbaa !9
  %i.rm = fmul double %i.rk, %i.rl
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cb
  %i.rn = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %i.qn, i64 1 ; 2 uses
  %i.rp = fdiv <2 x double> %i.ro, %i.bs
  %i.rq = shufflevector <2 x double> %i.ro, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rr = fcmp ole <2 x double> %i.rq, %i.rp      ; 2 uses
  %i.rs = extractelement <2 x i1> %i.rr, i64 0
  %i.rt = extractelement <2 x i1> %i.rr, i64 1
  %.21296.in = select i1 %i.qp, i1 %i.rt, i1 %i.rs ; 2 uses
  %i.ru = fdiv double %i.av, %i.ql
  %i.rv = fcmp ogt double %i.qn, %i.ru
  %i.rw = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.rx = getelementptr [8 x i8], ptr %i.p, i64 %i.rw
  %i.ry = getelementptr i8, ptr %i.rx, i64 8      ; 2 uses
  br i1 %i.rv, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.rz = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.qd, ptr noundef nonnull @c__1, ptr noundef %i.ry, ptr noundef nonnull @c__1) #5
  %i.sa = load double, ptr %i.qe, align 8, !tbaa !9
  %i.sb = fmul double %i.rz, %i.sa
  %i.sc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !9
  %i.se = fmul double %i.sb, %i.sd
  %i.sf = load double, ptr %i.f, align 8, !tbaa !9
  %i.sg = fdiv double %i.se, %i.sf
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.ry, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  %i.sh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.sh, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.si = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.qd, ptr noundef nonnull @c__1) #5
  %i.sj = load double, ptr %i.qe, align 8, !tbaa !9
  %i.sk = fmul double %i.si, %i.sj
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cd, %bb.ce
  %.sink1653.a = phi ptr [ %i.e, %bb.cg ], [ %i.e, %bb.ch ], [ %i.e, %bb.cd ], [ %i.f, %bb.ce ]
  %.sink1651 = phi double [ %i.sg, %bb.cg ], [ %i.sk, %bb.ch ], [ %i.rg, %bb.cd ], [ %i.rm, %bb.ce ]
  %.31297.in = phi i1 [ %.21296.in, %bb.cg ], [ %.21296.in, %bb.ch ], [ %.11295.in, %bb.cd ], [ %.11295.in, %bb.ce ]
  %i.sl = load double, ptr %.sink1653.a, align 8, !tbaa !9
  %i.sm = fdiv double %.sink1651, %i.sl           ; 9 uses
  store double %.912821475, ptr %i.d, align 8, !tbaa !9
  %i.sn = fcmp oge double %i.sm, 0.000000e+00     ; 2 uses
  %i.so = fneg double %i.sm                       ; 4 uses
  %i.sp = select i1 %i.sn, double %i.sm, double %i.so ; 3 uses
  %i.sq = fcmp oge double %.912821475, %i.sp
  %i.sr = select i1 %i.sq, double %.912821475, double %i.sp ; 3 uses
  %i.ss = load double, ptr %12, align 8, !tbaa !9
  %i.st = fcmp ogt double %i.sp, %i.ss
  br i1 %i.st, label %bb.cj, label %bb.dq

bb.cj:                                            ; preds = %bb.ci
  %i.su = add nsw i32 %.101478, 1                 ; 2 uses
  br i1 %.31297.in, label %bb.ck, label %bb.de

bb.ck:                                            ; preds = %bb.cj
  %i.sv = load double, ptr %i.f, align 8, !tbaa !9 ; 4 uses
  %i.sw = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.sx = fdiv double %i.sv, %i.sw                ; 3 uses
  %i.sy = fdiv double %i.sw, %i.sv                ; 3 uses
  %i.sz = fsub double %i.sx, %i.sy                ; 4 uses
  store double %i.sz, ptr %i.d, align 8, !tbaa !9
  %i.ta = fcmp oge double %i.sz, 0.000000e+00
  %i.tb = fneg double %i.sz
  %i.tc = select i1 %i.ta, double %i.sz, double %i.tb
  %i.td = fmul double %i.tc, -5.000000e-01
  %i.te = fdiv double %i.td, %i.sm                ; 3 uses
  %i.tf = fcmp ogt double %i.sv, %i.qn            ; 2 uses
  %i.tg = fneg double %i.te
  %.01298 = select i1 %i.tf, double %i.tg, double %i.te ; 4 uses
  %i.th = call double @llvm.fabs.f64(double %i.te)
  %i.ti = fcmp ogt double %i.th, %i.bt
  br i1 %i.ti, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.tj = fdiv double 5.000000e-01, %.01298       ; 3 uses
  store double %i.tj, ptr %i.i, align 8, !tbaa !9
  %i.tk = load double, ptr %i.qe, align 8, !tbaa !9 ; 2 uses
  %i.tl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !9 ; 2 uses
  %i.tn = fneg double %i.tj
  %i.to = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.tp = insertelement <2 x double> %i.to, double %i.tn, i64 1
  %i.tq = insertelement <2 x double> poison, double %i.tk, i64 0
  %i.tr = insertelement <2 x double> %i.tq, double %i.tm, i64 1
  %i.ts = fmul <2 x double> %i.tp, %i.tr
  %i.tt = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.tu = insertelement <2 x double> %i.tt, double %i.tk, i64 1
end_hunk_1
begin_hunk_2_@dgsvj0_:bb.a
  %i.aag = fmul double %i.aae, %i.aaf
  store double %i.aag, ptr %i.qk, align 8, !tbaa !9
  %i.aah = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv1408 = fcmp oge double %.1012661476, %i.aah
  %..101266 = select i1 %.inv1408, double %.1012661476, double %i.aah
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.aai = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.aaj = getelementptr [8 x i8], ptr %i.p, i64 %i.aai
  %i.aak = getelementptr i8, ptr %i.aaj, i64 8
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.aak, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.qd, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.aal = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !9
  %i.aan = fmul double %i.aam, %i.so
  %i.aao = load double, ptr %i.qe, align 8, !tbaa !9
  %i.aap = fdiv double %i.aan, %i.aao
  store double %i.aap, ptr %i.h, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.qd, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b42, ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.qd, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.aaq = load double, ptr %i.e, align 8, !tbaa !9
  %i.aar = call double @sqrt(double noundef %i.zv) #5
  %i.aas = fmul double %i.aaq, %i.aar
  store double %i.aas, ptr %i.px, align 8, !tbaa !9
  %i.aat = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv1407 = fcmp oge double %.1012661476, %i.aat
  %..1012661394 = select i1 %.inv1407, double %.1012661476, double %i.aat
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg, %bb.cn, %bb.cy, %bb.dc, %bb.dd, %bb.da, %bb.db, %bb.cu, %bb.cr, %bb.cq
  %.111267 = phi double [ %i.uw, %bb.cn ], [ %i.vn, %bb.cr ], [ %i.vn, %bb.cq ], [ %i.vn, %bb.cu ], [ %i.vn, %bb.cy ], [ %i.vn, %bb.db ], [ %i.vn, %bb.da ], [ %i.vn, %bb.dd ], [ %i.vn, %bb.dc ], [ %..101266, %bb.df ], [ %..1012661394, %bb.dg ] ; 2 uses
  %i.aau = load double, ptr %i.qk, align 8, !tbaa !9
  %i.aav = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.aaw = fdiv double %i.aau, %i.aav             ; 3 uses
  store double %i.aaw, ptr %i.d, align 8, !tbaa !9
  %i.aax = fmul double %i.aaw, %i.aaw
  %i.aay = fcmp ugt double %i.aax, %i.as
  br i1 %i.aay, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aaz = fcmp olt double %i.aav, %i.ba
  %i.aba = fcmp ogt double %i.aav, %i.au
  %or.cond1395 = and i1 %i.aaz, %i.aba
  br i1 %or.cond1395, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.abb = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.abc = getelementptr [8 x i8], ptr %i.p, i64 %i.abb
  %i.abd = getelementptr i8, ptr %i.abc, i64 8
  %i.abe = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.abd, ptr noundef nonnull @c__1) #5
  br label %.sink.split1654

bb.dk:                                            ; preds = %bb.di
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.abf = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.abg = getelementptr [8 x i8], ptr %i.p, i64 %i.abf
  %i.abh = getelementptr i8, ptr %i.abg, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.abh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #5
  %i.abi = load double, ptr %i.i, align 8, !tbaa !9
  %i.abj = load double, ptr %i.f, align 8, !tbaa !9
  %i.abk = call double @sqrt(double noundef %i.abj) #5
  %i.abl = fmul double %i.abi, %i.abk
  br label %.sink.split1654

.sink.split1654:                                  ; preds = %bb.dk, %bb.dj
  %.sink1656 = phi double [ %i.abe, %bb.dj ], [ %i.abl, %bb.dk ]
  %i.abm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !9
  %i.abo = fmul double %.sink1656, %i.abn
  store double %i.abo, ptr %i.qk, align 8, !tbaa !9
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split1654, %bb.dh
  %i.abp = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.abq = fdiv double %i.abp, %i.qn              ; 3 uses
  store double %i.abq, ptr %i.d, align 8, !tbaa !9
  %i.abr = fmul double %i.abq, %i.abq
  %i.abs = fcmp ugt double %i.abr, %i.as
  br i1 %i.abs, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.abt = fcmp olt double %i.abp, %i.ba
  %i.abu = fcmp ogt double %i.abp, %i.au
  %or.cond1396 = and i1 %i.abt, %i.abu
  br i1 %or.cond1396, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.abv = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.qd, ptr noundef nonnull @c__1) #5
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.qd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.abw = load double, ptr %i.i, align 8, !tbaa !9
  %i.abx = load double, ptr %i.e, align 8, !tbaa !9
  %i.aby = call double @sqrt(double noundef %i.abx) #5
  %i.abz = fmul double %i.abw, %i.aby
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sink1659 = phi double [ %i.abz, %bb.do ], [ %i.abv, %bb.dn ]
  %i.aca = load double, ptr %i.qe, align 8, !tbaa !9
  %i.acb = fmul double %.sink1659, %i.aca         ; 2 uses
  store double %i.acb, ptr %i.e, align 8, !tbaa !9
  store double %i.acb, ptr %i.px, align 8, !tbaa !9
  br label %bb.ds

bb.dq:                                            ; preds = %bb.ci
  %i.acc = add nsw i32 %.1212521477, 1
  %i.acd = add nsw i32 %.313091470, 1
  %i.ace = add nsw i32 %.112901474, 1
  br label %bb.ds

bb.dr:                                            ; preds = %bb.ca
  %i.acf = add nsw i32 %.1212521477, 1
  %i.acg = add nsw i32 %.313091470, 1
  %i.ach = add nsw i32 %.112901474, 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.dl, %bb.dr
  %.41310 = phi i32 [ 0, %bb.dp ], [ 0, %bb.dl ], [ %i.acd, %bb.dq ], [ %i.acg, %bb.dr ] ; 2 uses
  %.21291 = phi i32 [ %.112901474, %bb.dp ], [ %.112901474, %bb.dl ], [ %i.ace, %bb.dq ], [ %i.ach, %bb.dr ] ; 4 uses
  %.101283 = phi double [ %i.sr, %bb.dp ], [ %i.sr, %bb.dl ], [ %i.sr, %bb.dq ], [ %.912821475, %bb.dr ] ; 4 uses
  %.121268 = phi double [ %.111267, %bb.dp ], [ %.111267, %bb.dl ], [ %.1012661476, %bb.dq ], [ %.1012661476, %bb.dr ] ; 4 uses
  %.131253 = phi i32 [ 0, %bb.dp ], [ 0, %bb.dl ], [ %i.acc, %bb.dq ], [ %i.acf, %bb.dr ] ; 2 uses
  %.11 = phi i32 [ %i.su, %bb.dp ], [ %i.su, %bb.dl ], [ %.101478, %bb.dq ], [ %.101478, %bb.dr ] ; 4 uses
  %.not1370.not = icmp sgt i32 %.21291, %i.bj
  %or.cond1397 = select i1 %.not1383, i1 %.not1370.not, i1 false
  br i1 %or.cond1397, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aci = load double, ptr %i.e, align 8, !tbaa !9
  store double %i.aci, ptr %i.px, align 8, !tbaa !9
  br label %.loopexit1416

bb.du:                                            ; preds = %bb.ds
  %i.acj = icmp sgt i32 %.41310, %i.bk
  %or.cond1399 = select i1 %.not1383, i1 %i.acj, i1 false
  br i1 %or.cond1399, label %bb.dv, label %bb.bz

bb.dv:                                            ; preds = %bb.du
  %i.ack = load double, ptr %i.e, align 8, !tbaa !9
  %i.acl = fneg double %i.ack                     ; 2 uses
  store double %i.acl, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1413

.loopexit1413.loopexit:                           ; preds = %bb.bz
  %.pre1594 = load double, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1413

.loopexit1413:                                    ; preds = %.loopexit1413.loopexit, %bb.by, %bb.dv
  %i.acm = phi double [ %i.acl, %bb.dv ], [ %i.py, %bb.by ], [ %.pre1594, %.loopexit1413.loopexit ]
  %.31292 = phi i32 [ %.21291, %bb.dv ], [ %.012891490, %bb.by ], [ %.21291, %.loopexit1413.loopexit ]
  %.111284 = phi double [ %.101283, %bb.dv ], [ %.812811491, %bb.by ], [ %.101283, %.loopexit1413.loopexit ]
  %.131269 = phi double [ %.121268, %bb.dv ], [ %.912651492, %bb.by ], [ %.121268, %.loopexit1413.loopexit ]
  %.141254 = phi i32 [ 0, %bb.dv ], [ %.1112511493, %bb.by ], [ %.131253, %.loopexit1413.loopexit ]
  %.12 = phi i32 [ %.11, %bb.dv ], [ %.91494, %bb.by ], [ %.11, %.loopexit1413.loopexit ]
  store double %i.acm, ptr %i.px, align 8, !tbaa !9
  br label %bb.ea

bb.dw:                                            ; preds = %bb.bx
  %i.acn = fcmp oeq double %i.py, 0.000000e+00
  br i1 %i.acn, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.pv, ptr %i.c, align 4, !tbaa !8
  %i.aco = load i32, ptr %2, align 4, !tbaa !8
  %.1400 = call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.aco)
  %i.acp = sub i32 %.1112511493, %i.pt
  %i.acq = add i32 %i.acp, %.1400
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.15 = phi i32 [ %i.acq, %bb.dx ], [ %.1112511493, %bb.dw ]
  %i.acr = fcmp olt double %i.py, 0.000000e+00
  br i1 %i.acr, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit1413, %bb.dz, %bb.dy
  %.41293 = phi i32 [ %.31292, %.loopexit1413 ], [ %.012891490, %bb.dz ], [ %.012891490, %bb.dy ]
  %.121285 = phi double [ %.111284, %.loopexit1413 ], [ %.812811491, %bb.dz ], [ %.812811491, %bb.dy ] ; 2 uses
  %.141270 = phi double [ %.131269, %.loopexit1413 ], [ %.912651492, %bb.dz ], [ %.912651492, %bb.dy ] ; 2 uses
  %.16 = phi i32 [ %.141254, %.loopexit1413 ], [ 0, %bb.dz ], [ %.15, %bb.dy ] ; 2 uses
  %.13 = phi i32 [ %.12, %.loopexit1413 ], [ %.91494, %bb.dz ], [ %.91494, %bb.dy ] ; 2 uses
  %indvars.iv.next1581 = add nsw i64 %indvars.iv1580, 1
  %.not1364.not = icmp slt i64 %indvars.iv1580, %i.pw
  br i1 %.not1364.not, label %bb.bx, label %._crit_edge1497, !llvm.loop !17

._crit_edge1497:                                  ; preds = %bb.ea, %.lr.ph1509
  %.81281.lcssa = phi double [ %.712801503, %.lr.ph1509 ], [ %.121285, %bb.ea ] ; 2 uses
  %.91265.lcssa = phi double [ %.812641504, %.lr.ph1509 ], [ %.141270, %bb.ea ] ; 2 uses
  %.111251.lcssa = phi i32 [ %.1012501505, %.lr.ph1509 ], [ %.16, %bb.ea ] ; 2 uses
  %.9.lcssa = phi i32 [ %.81506, %.lr.ph1509 ], [ %.13, %bb.ea ] ; 2 uses
  %i.acs = add i32 %.012381507, 1
  %indvars.iv.next1576 = add i32 %indvars.iv1575.a, %spec.select
  %exitcond1583.not = icmp eq i32 %.012381507, %.0
  br i1 %exitcond1583.not, label %.loopexit1416, label %.lr.ph1509, !llvm.loop !18

.loopexit1416:                                    ; preds = %._crit_edge1497, %._crit_edge1464, %bb.dt
  %.131286 = phi double [ %.11274.lcssa, %._crit_edge1464 ], [ %.101283, %bb.dt ], [ %.81281.lcssa, %._crit_edge1497 ] ; 2 uses
  %.151271 = phi double [ %.11257.lcssa, %._crit_edge1464 ], [ %.121268, %bb.dt ], [ %.91265.lcssa, %._crit_edge1497 ] ; 2 uses
  %.17 = phi i32 [ %.11241.lcssa, %._crit_edge1464 ], [ 0, %bb.dt ], [ %.111251.lcssa, %._crit_edge1497 ] ; 2 uses
  %.14 = phi i32 [ %.1.lcssa, %._crit_edge1464 ], [ %.11, %bb.dt ], [ %.9.lcssa, %._crit_edge1497 ] ; 2 uses
  %i.act = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %.1401 = call i32 @llvm.smin.i32(i32 %i.pq, i32 %i.act) ; 2 uses
  %.not13721514.not = icmp slt i32 %i.by, %.1401
  br i1 %.not13721514.not, label %iter.check, label %.loopexit1415

iter.check:                                       ; preds = %.loopexit1416
  %i.acu = sext i32 %.1401 to i64                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.acu, i64 %i.bv)
  %i.acv = add i64 %smax, 1
  %i.acw = sub i64 %i.acv, %i.bv                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.acw, 4
  br i1 %min.iters.check, label %.lr.ph1517.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1690 = icmp ult i64 %i.acw, 16
  br i1 %min.iters.check1690, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acx = and i64 %i.acw, 12
  %n.vec = and i64 %i.acw, -16                    ; 4 uses
  %i.acy = add i64 %n.vec, %i.bw
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %wide.load1691 = load <4 x double>, ptr %i.acz, align 8, !tbaa !9 ; 3 uses
  %wide.load1692 = load <4 x double>, ptr %i.ada, align 8, !tbaa !9 ; 3 uses
  %wide.load1693 = load <4 x double>, ptr %i.adb, align 8, !tbaa !9 ; 4 uses
  %i.adc = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.add = fcmp oge <4 x double> %wide.load1691, zeroinitializer
  %i.ade = fcmp oge <4 x double> %wide.load1692, zeroinitializer
  %i.adf = fcmp oge <4 x double> %wide.load1693, zeroinitializer
  %i.adg = fneg <4 x double> %wide.load
  %i.adh = fneg <4 x double> %wide.load1691
  %i.adi = fneg <4 x double> %wide.load1692
  %i.adj = fneg <4 x double> %wide.load1693
  %i.adk = select <4 x i1> %i.adc, <4 x double> %wide.load, <4 x double> %i.adg
  %i.adl = select <4 x i1> %i.add, <4 x double> %wide.load1691, <4 x double> %i.adh
  %i.adm = select <4 x i1> %i.ade, <4 x double> %wide.load1692, <4 x double> %i.adi
  %i.adn = select <4 x i1> %i.adf, <4 x double> %wide.load1693, <4 x double> %i.adj
  store <4 x double> %i.adk, ptr %gep, align 8, !tbaa !9
  store <4 x double> %i.adl, ptr %i.acz, align 8, !tbaa !9
  store <4 x double> %i.adm, ptr %i.ada, align 8, !tbaa !9
  store <4 x double> %i.adn, ptr %i.adb, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ado = icmp eq i64 %index.next, %n.vec
  br i1 %i.ado, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.adp = extractelement <4 x double> %wide.load1693, i64 3
  %cmp.n = icmp eq i64 %i.acw, %n.vec
  br i1 %cmp.n, label %..loopexit1415_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1517.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1694 = and i64 %i.acw, -4                 ; 3 uses
  %i.adq = add i64 %n.vec1694, %i.bw
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.l, i64 %i.bw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1697, %vec.epilog.vector.body ] ; 2 uses
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %index1695 ; 2 uses
  %wide.load1696 = load <4 x double>, ptr %gep1736, align 8, !tbaa !9 ; 4 uses
  %i.adr = fcmp oge <4 x double> %wide.load1696, zeroinitializer
  %i.ads = fneg <4 x double> %wide.load1696
  %i.adt = select <4 x i1> %i.adr, <4 x double> %wide.load1696, <4 x double> %i.ads
  store <4 x double> %i.adt, ptr %gep1736, align 8, !tbaa !9
  %index.next1697 = add nuw i64 %index1695, 4     ; 2 uses
  %i.adu = icmp eq i64 %index.next1697, %n.vec1694
  br i1 %i.adu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.adv = extractelement <4 x double> %wide.load1696, i64 3
  %cmp.n1698 = icmp eq i64 %i.acw, %n.vec1694
  br i1 %cmp.n1698, label %..loopexit1415_crit_edge, label %.lr.ph1517.preheader

.lr.ph1517.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1584.ph = phi i64 [ %i.bw, %iter.check ], [ %i.acy, %vec.epilog.iter.check ], [ %i.adq, %vec.epilog.middle.block ]
  br label %.lr.ph1517

.lr.ph1517:                                       ; preds = %.lr.ph1517.preheader, %.lr.ph1517
  %indvars.iv1584.a = phi i64 [ %indvars.iv.next1585.a, %.lr.ph1517 ], [ %indvars.iv1584.ph, %.lr.ph1517.preheader ] ; 3 uses
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1584.a ; 2 uses
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !9 ; 4 uses
  %i.ady = fcmp oge double %i.adx, 0.000000e+00
  %i.adz = fneg double %i.adx
  %i.aea = select i1 %i.ady, double %i.adx, double %i.adz
  store double %i.aea, ptr %i.adw, align 8, !tbaa !9
  %indvars.iv.next1585.a = add nsw i64 %indvars.iv1584.a, 1
  %.not1372.not = icmp slt i64 %indvars.iv1584.a, %i.acu
  br i1 %.not1372.not, label %.lr.ph1517, label %..loopexit1415_crit_edge, !llvm.loop !24

._crit_edge1527:                                  ; preds = %.loopexit1415, %bb.q
  %i.aeb = phi i32 [ %i.bu, %bb.q ], [ %i.act, %.loopexit1415 ] ; 3 uses
  %.01273.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.131286, %.loopexit1415 ] ; 3 uses
  %.01256.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.151271, %.loopexit1415 ]
  %.01240.lcssa = phi i32 [ 0, %bb.q ], [ %.17, %.loopexit1415 ] ; 2 uses
  %.01239.lcssa = phi i32 [ 0, %bb.q ], [ %.14, %.loopexit1415 ]
  %i.aec = sext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aec
  %i.aee = load double, ptr %i.aed, align 8, !tbaa !9 ; 2 uses
  %i.aef = fcmp olt double %i.aee, %i.ba
  %i.aeg = fcmp ogt double %i.aee, %i.au
  %or.cond1402 = and i1 %i.aef, %i.aeg
  br i1 %or.cond1402, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %._crit_edge1527
  %i.aeh = mul nsw i32 %i.aeb, %i.n
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr [8 x i8], ptr %i.p, i64 %i.aei
  %i.aek = getelementptr i8, ptr %i.aej, i64 8
  %i.ael = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.aek, ptr noundef nonnull @c__1) #5
  br label %bb.ed

bb.ec:                                            ; preds = %._crit_edge1527
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.aem = mul nsw i32 %i.aeb, %i.n
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr [8 x i8], ptr %i.p, i64 %i.aen
  %i.aep = getelementptr i8, ptr %i.aeo, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.aep, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.aeq = load double, ptr %i.i, align 8, !tbaa !9
  %i.aer = load double, ptr %i.e, align 8, !tbaa !9
  %i.aes = call double @sqrt(double noundef %i.aer) #5
  %i.aet = fmul double %i.aeq, %i.aes
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sink1664 = phi double [ %i.aet, %bb.ec ], [ %i.ael, %bb.eb ]
  %i.aeu = load i32, ptr %2, align 4, !tbaa !8    ; 4 uses
  %i.aev = sext i32 %i.aeu to i64                 ; 2 uses
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aev
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !9
  %i.aey = fmul double %.sink1664, %i.aex
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aev
  store double %i.aey, ptr %i.aez, align 8, !tbaa !9
  %i.afa = icmp samesign ult i32 %.013051533, %.012871534
  %i.afb = fcmp ole double %.01273.lcssa, %i.bb
  %.not1357 = icmp sle i32 %.01239.lcssa, %i.aeu
  %or.cond1669.not = select i1 %i.afb, i1 true, i1 %.not1357
  %i.afc = select i1 %i.afa, i1 %or.cond1669.not, i1 false
  %.11288 = select i1 %i.afc, i32 %.013051533, i32 %.012871534 ; 2 uses
  %i.afd = add nuw nsw i32 %.11288, 1
  %i.afe = icmp samesign ugt i32 %.013051533, %i.afd
  br i1 %i.afe, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.aff = sitofp i32 %i.aeu to double            ; 2 uses
  %i.afg = load double, ptr %12, align 8, !tbaa !9 ; 2 uses
  %i.afh = fmul double %i.afg, %i.aff
  %i.afi = fcmp olt double %.01273.lcssa, %i.afh
  br i1 %i.afi, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.afj = fmul double %.01273.lcssa, %i.aff
  %i.afk = fmul double %.01256.lcssa, %i.afj
  %i.afl = fcmp uge double %i.afk, %i.afg
  %.not1358 = icmp slt i32 %.01240.lcssa, %i.bf
  %or.cond1403 = select i1 %i.afl, i1 %.not1358, i1 false
  br i1 %or.cond1403, label %bb.eh, label %.loopexit1417

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %.not1358.old = icmp slt i32 %.01240.lcssa, %i.bf
  br i1 %.not1358.old, label %bb.eh, label %.loopexit1417

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.afm = add nuw nsw i32 %.013051533, 1
  %.not1355.not = icmp slt i32 %.013051533, %i.bl
  br i1 %.not1355.not, label %bb.q, label %._crit_edge1537.loopexit, !llvm.loop !25

._crit_edge1537.loopexit:                         ; preds = %bb.eh
  %.pre1595 = load i32, ptr %13, align 4, !tbaa !8
  br label %._crit_edge1537

._crit_edge1537:                                  ; preds = %._crit_edge1537.loopexit, %bb.p
  %i.afn = phi i32 [ %.pre1595, %._crit_edge1537.loopexit ], [ %i.bl, %bb.p ]
  %i.afo = add nsw i32 %i.afn, -1
  br label %.loopexit1417

.loopexit1417:                                    ; preds = %bb.ef, %bb.eg, %._crit_edge1537
  %storemerge = phi i32 [ %i.afo, %._crit_edge1537 ], [ 0, %bb.eg ], [ 0, %bb.ef ]
  store i32 %storemerge, ptr %16, align 4, !tbaa !8
end_hunk_2
