Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgsvj0?download=true
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
  %i.bu = phi i32 [ %i.bc, %.lr.ph1536 ], [ %i.aet, %bb.eh ]
  %.012871534 = phi i32 [ 0, %.lr.ph1536 ], [ %.11288, %bb.eh ] ; 3 uses
  %.013051533 = phi i32 [ 1, %.lr.ph1536 ], [ %i.afl, %bb.eh ] ; 6 uses
  store i32 %.0, ptr %i.b, align 4, !tbaa !8
  br i1 %.not13561519, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.q
  %.not1383 = icmp samesign ule i32 %.013051533, %.012871534 ; 3 uses
  br label %bb.r

..loopexit1415_crit_edge:                         ; preds = %.lr.ph1517, %vec.epilog.middle.block, %middle.block
  %.lcssa1688 = phi double [ %i.adu, %vec.epilog.middle.block ], [ %i.ado, %middle.block ], [ %i.adw, %.lr.ph1517 ]
  store double %.lcssa1688, ptr %i.d, align 8, !tbaa !9
  br label %.loopexit1415

.loopexit1415:                                    ; preds = %..loopexit1415_crit_edge, %.loopexit1416
  %indvars.iv.next = add i32 %indvars.iv, %spec.select
  %indvars.iv.next1574.a = add i32 %indvars.iv1573.a, %spec.select
  br i1 %.not13621502.not, label %bb.r, label %._crit_edge1527, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph1526, %.loopexit1415
  %indvars.iv1573.a = phi i32 [ %spec.select, %.lr.ph1526 ], [ %indvars.iv.next1574.a, %.loopexit1415 ] ; 2 uses
  %indvars.iv1571.in = phi i32 [ %.0, %.lr.ph1526 ], [ %indvars.iv1571, %.loopexit1415 ]
  %indvars.iv = phi i32 [ 1, %.lr.ph1526 ], [ %indvars.iv.next, %.loopexit1415 ] ; 3 uses
  %.012361524 = phi i32 [ 1, %.lr.ph1526 ], [ %i.po, %.loopexit1415 ] ; 5 uses
  %.012391523 = phi i32 [ 0, %.lr.ph1526 ], [ %.14, %.loopexit1415 ] ; 2 uses
  %.012401522 = phi i32 [ 0, %.lr.ph1526 ], [ %.17, %.loopexit1415 ] ; 2 uses
  %.012561521 = phi double [ 0.000000e+00, %.lr.ph1526 ], [ %.151271, %.loopexit1415 ] ; 2 uses
  %.012731520 = phi double [ 0.000000e+00, %.lr.ph1526 ], [ %.131286, %.loopexit1415 ] ; 2 uses
  %indvars.iv1571 = add i32 %indvars.iv1571.in, -1 ; 2 uses
  %i.bv = sext i32 %indvars.iv to i64             ; 8 uses
  %.inv1617 = icmp slt i32 %indvars.iv1571, 1
  %17 = select i1 %.inv1617, i32 1, i32 2
  %i.bw = add nsw i32 %.012361524, -1
  %i.bx = mul nsw i32 %i.bw, %spec.select         ; 3 uses
  %i.by = sub nsw i32 %.0, %.012361524            ; 2 uses
  store i32 %i.by, ptr %i.c, align 4, !tbaa !8
  %.not13611455 = icmp slt i32 %i.by, 0
  br i1 %.not13611455, label %._crit_edge1464, label %.lr.ph1463.preheader

.lr.ph1463.preheader:                             ; preds = %bb.r
  %i.bz = add nsw i32 %i.bx, 1
  br label %.lr.ph1463

.lr.ph1463:                                       ; preds = %.lr.ph1463.preheader, %._crit_edge
  %indvars.iv1563 = phi i32 [ %indvars.iv, %.lr.ph1463.preheader ], [ %indvars.iv.next1564, %._crit_edge ] ; 2 uses
  %indvars.iv1561 = phi i32 [ %spec.select, %.lr.ph1463.preheader ], [ %indvars.iv.next1562, %._crit_edge ] ; 2 uses
  %.012371461 = phi i32 [ %i.bz, %.lr.ph1463.preheader ], [ %i.cb, %._crit_edge ]
  %.11460 = phi i32 [ %.012391523, %.lr.ph1463.preheader ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.112411459 = phi i32 [ %.012401522, %.lr.ph1463.preheader ], [ %.21242.lcssa, %._crit_edge ] ; 2 uses
  %.012551458 = phi i32 [ 0, %.lr.ph1463.preheader ], [ %i.pn, %._crit_edge ] ; 3 uses
  %.112571457 = phi double [ %.012561521, %.lr.ph1463.preheader ], [ %.21258.lcssa, %._crit_edge ] ; 2 uses
  %.112741456 = phi double [ %.012731520, %.lr.ph1463.preheader ], [ %.21275.lcssa, %._crit_edge ] ; 2 uses
  %i.ca = mul nuw nsw i32 %.012551458, %spec.select
  %i.cb = add nsw i32 %.012371461, %i.ca          ; 3 uses
  %i.cc = add i32 %i.bm, %i.cb                    ; 5 uses
  store i32 %i.cc, ptr %i.c, align 4, !tbaa !8
  %i.cd = load i32, ptr %2, align 4, !tbaa !8
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.ce) ; 2 uses
  %.not13741445 = icmp sgt i32 %i.cb, %i.cf
  br i1 %.not13741445, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1463
  %i.cg = sext i32 %indvars.iv1563 to i64
  %i.ch = icmp eq i32 %.012551458, 0              ; 6 uses
  %i.ci = zext i1 %i.ch to i32                    ; 3 uses
  %i.cj = sext i32 %i.cf to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.bw
  %indvars.iv1565 = phi i64 [ %i.cg, %.lr.ph ], [ %indvars.iv.next1566, %bb.bw ] ; 14 uses
  %.21450 = phi i32 [ %.11460, %.lr.ph ], [ %.7, %bb.bw ] ; 3 uses
  %.212421449 = phi i32 [ %.112411459, %.lr.ph ], [ %.91249, %bb.bw ] ; 3 uses
  %.212581448 = phi double [ %.112571457, %.lr.ph ], [ %.71263, %bb.bw ] ; 3 uses
  %.212751447 = phi double [ %.112741456, %.lr.ph ], [ %.61279, %bb.bw ] ; 3 uses
  %i.ck = load i32, ptr %2, align 4, !tbaa !8
  %i.cl = trunc nsw i64 %indvars.iv1565 to i32    ; 4 uses
  %reass.sub = sub i32 %i.ck, %i.cl
  %i.cm = add i32 %reass.sub, 1
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !8
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1565 ; 7 uses
  %i.co = call i32 @idamax_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cn, ptr noundef nonnull @c__1) #5
  %i.cp = add i32 %i.cl, -1
  %i.cq = add i32 %i.cp, %i.co                    ; 4 uses
  %.not1375 = icmp eq i32 %i.cq, %i.cl
  br i1 %.not1375, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = mul nsw i64 %indvars.iv1565, %i.bo
  %i.cs = getelementptr [8 x i8], ptr %i.p, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = mul nsw i32 %i.cq, %i.n
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %i.p, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  call void @dswap_(ptr noundef nonnull %1, ptr noundef %i.ct, ptr noundef nonnull @c__1, ptr noundef %i.cx, ptr noundef nonnull @c__1) #5
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = mul nsw i64 %indvars.iv1565, %i.bp
  %i.cz = getelementptr [8 x i8], ptr %i.s, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = mul nsw i32 %i.cq, %i.q
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr %i.s, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  call void @dswap_(ptr noundef nonnull %i.k, ptr noundef %i.da, ptr noundef nonnull @c__1, ptr noundef %i.de, ptr noundef nonnull @c__1) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.df = load double, ptr %i.cn, align 8, !tbaa !9
  %i.dg = sext i32 %i.cq to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !9
  store double %i.di, ptr %i.cn, align 8, !tbaa !9
  store double %i.df, ptr %i.dh, align 8, !tbaa !9
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !9 ; 2 uses
  store double %i.dk, ptr %i.h, align 8, !tbaa !9
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dg ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !9
  store double %i.dm, ptr %i.dj, align 8, !tbaa !9
  store double %i.dk, ptr %i.dl, align 8, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dn = load double, ptr %i.cn, align 8, !tbaa !9 ; 3 uses
  br i1 %i.ch, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.do = fcmp olt double %i.dn, %i.ba
  %i.dp = fcmp ogt double %i.dn, %i.au
  %or.cond1385 = and i1 %i.do, %i.dp
  br i1 %or.cond1385, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dq = mul nsw i64 %indvars.iv1565, %i.bo
  %i.dr = getelementptr [8 x i8], ptr %i.p, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.ds, ptr noundef nonnull @c__1) #5
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.du = mul nsw i64 %indvars.iv1565, %i.bo
  %i.dv = getelementptr [8 x i8], ptr %i.p, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.dw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %i.dx = load double, ptr %i.h, align 8, !tbaa !9
  %i.dy = load double, ptr %i.e, align 8, !tbaa !9
  %i.dz = call double @sqrt(double noundef %i.dy) #5
  %i.ea = fmul double %i.dx, %i.dz
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink1638 = phi double [ %i.ea, %bb.z ], [ %i.dt, %bb.y ]
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !9
  %i.ed = fmul double %.sink1638, %i.ec           ; 2 uses
  store double %i.ed, ptr %i.cn, align 8, !tbaa !9
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.aa
  %storemerge1376 = phi double [ %i.ed, %bb.aa ], [ %i.dn, %bb.w ] ; 3 uses
  store double %storemerge1376, ptr %i.e, align 8, !tbaa !9
  %i.ee = fcmp ogt double %storemerge1376, 0.000000e+00
  br i1 %i.ee, label %bb.ab, label %bb.bu

bb.ab:                                            ; preds = %thread-pre-split
  %i.ef = load i32, ptr %2, align 4, !tbaa !8
  %. = call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.ef)
  store i32 %., ptr %i.c, align 4, !tbaa !8
  %i.eg = mul nsw i64 %indvars.iv1565, %i.bo
  %i.eh = getelementptr [8 x i8], ptr %i.p, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 8      ; 17 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1565 ; 17 uses
  %i.ek = mul nsw i64 %indvars.iv1565, %i.bp
  %i.el = getelementptr [8 x i8], ptr %i.s, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 8      ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.br, %bb.ab
  %indvars.iv1567 = phi i64 [ %indvars.iv.next1568, %bb.br ], [ %indvars.iv1565, %bb.ab ] ; 10 uses
  %.01306 = phi i32 [ %.21308, %bb.br ], [ 0, %bb.ab ] ; 3 uses
  %.31276 = phi double [ %.41277, %bb.br ], [ %.212751447, %bb.ab ] ; 5 uses
  %.31259 = phi double [ %.51261, %bb.br ], [ %.212581448, %bb.ab ] ; 9 uses
  %.31243 = phi i32 [ %.71247, %bb.br ], [ %.212421449, %bb.ab ] ; 4 uses
  %.3 = phi i32 [ %.5, %bb.br ], [ %.21450, %bb.ab ] ; 4 uses
  %indvars.iv.next1568 = add nsw i64 %indvars.iv1567, 1 ; 19 uses
  %i.en = load i32, ptr %i.c, align 4, !tbaa !8
  %i.eo = sext i32 %i.en to i64
  %.not1380.not = icmp slt i64 %indvars.iv1567, %i.eo
  br i1 %.not1380.not, label %bb.ad, label %.loopexit1414.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1567 ; 6 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9 ; 7 uses
  store double %i.eq, ptr %i.f, align 8, !tbaa !9
  %i.er = fcmp ogt double %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.ae, label %bb.bq

bb.ae:                                            ; preds = %bb.ad
  %i.es = load double, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  %i.et = fcmp ult double %i.eq, 1.000000e+00
  br i1 %i.et, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = fmul double %i.av, %i.es
  %i.ev = fcmp ole double %i.eu, %i.eq            ; 2 uses
  %i.ew = fdiv double %i.aw, %i.eq
  %i.ex = fcmp olt double %i.es, %i.ew
  %i.ey = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567 ; 2 uses
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ez = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fa = getelementptr [8 x i8], ptr %i.p, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.ei, ptr noundef nonnull @c__1, ptr noundef %i.fb, ptr noundef nonnull @c__1) #5
  %i.fd = load double, ptr %i.ej, align 8, !tbaa !9
  %i.fe = fmul double %i.fc, %i.fd
  %i.ff = load double, ptr %i.ey, align 8, !tbaa !9
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = load double, ptr %i.f, align 8, !tbaa !9
  %i.fi = fdiv double %i.fg, %i.fh
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.ei, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ej, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.fj = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fk = getelementptr [8 x i8], ptr %i.p, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %i.fm = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.fl, ptr noundef nonnull @c__1) #5
  %i.fn = load double, ptr %i.ey, align 8, !tbaa !9
  %i.fo = fmul double %i.fm, %i.fn
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.fp = fdiv double %i.eq, %i.av
  %i.fq = fcmp ole double %i.es, %i.fp            ; 2 uses
  %i.fr = fdiv double %i.av, %i.eq
  %i.fs = fcmp ogt double %i.es, %i.fr
  %i.ft = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.fu = getelementptr [8 x i8], ptr %i.p, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 8      ; 2 uses
  br i1 %i.fs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@dgsvj0_:bb.a
  %i.mw = fneg double %sqrt
  %i.mx = fmul double %i.ja, %i.mw
  %i.my = fmul double %i.mx, %i.kc                ; 2 uses
  store double %i.my, ptr %i.d, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef %i.mv, ptr noundef nonnull @c__1, ptr noundef %i.ei, ptr noundef nonnull @c__1) #5
  %i.mz = load double, ptr %i.ej, align 8, !tbaa !9
  %i.na = fdiv double %i.mz, %sqrt
  store double %i.na, ptr %i.ej, align 8, !tbaa !9
  %i.nb = load double, ptr %i.ju, align 8, !tbaa !9
  %i.nc = fmul double %sqrt, %i.nb
  store double %i.nc, ptr %i.ju, align 8, !tbaa !9
  br i1 %or.cond, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.nd = load double, ptr %i.i, align 8, !tbaa !9
  %i.ne = fmul double %i.kb, %i.nd
  store double %i.ne, ptr %i.d, align 8, !tbaa !9
  %i.nf = mul nsw i64 %indvars.iv.next1568, %i.bp
  %i.ng = getelementptr [8 x i8], ptr %i.s, i64 %i.nf
  %i.nh = getelementptr i8, ptr %i.ng, i64 8      ; 2 uses
  call void @daxpy_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, ptr noundef %i.em, ptr noundef nonnull @c__1, ptr noundef %i.nh, ptr noundef nonnull @c__1) #5
  store double %i.my, ptr %i.d, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, ptr noundef %i.nh, ptr noundef nonnull @c__1, ptr noundef %i.em, ptr noundef nonnull @c__1) #5
  br label %bb.bg

bb.bf:                                            ; preds = %bb.am
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.ei, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.ni = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.nj = getelementptr [8 x i8], ptr %i.p, i64 %i.ni
  %i.nk = getelementptr i8, ptr %i.nj, i64 8      ; 3 uses
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.nk, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.nl = load double, ptr %i.ej, align 8, !tbaa !9
  %i.nm = fmul double %i.nl, %i.gl
  %i.nn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567
  %i.no = load double, ptr %i.nn, align 8, !tbaa !9
  %i.np = fdiv double %i.nm, %i.no
  store double %i.np, ptr %i.h, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.nk, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b42, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.nk, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.nq = call double @llvm.fmuladd.f64(double %i.gl, double %i.gj, double 1.000000e+00) ; 2 uses
  %i.nr = load double, ptr %i.f, align 8, !tbaa !9
  %i.ns = fcmp ole double %i.nq, 0.000000e+00
  %i.nt = select i1 %i.ns, double 0.000000e+00, double %i.nq
  %i.nu = call double @sqrt(double noundef %i.nt) #5
  %i.nv = fmul double %i.nr, %i.nu
  store double %i.nv, ptr %i.ep, align 8, !tbaa !9
  %i.nw = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv = fcmp oge double %.31259, %i.nw
  %..31259 = select i1 %.inv, double %.31259, double %i.nw
  br label %bb.bg

bb.bg:                                            ; preds = %bb.aq, %bb.az, %bb.ay, %bb.bd, %bb.be, %bb.bb, %bb.bc, %bb.au, %bb.at, %bb.aw, %bb.av, %bb.bf
  %.41260 = phi double [ %i.iq, %bb.aq ], [ %i.jf, %bb.au ], [ %i.jf, %bb.at ], [ %i.jf, %bb.aw ], [ %i.jf, %bb.av ], [ %i.jf, %bb.az ], [ %i.jf, %bb.ay ], [ %i.jf, %bb.bc ], [ %i.jf, %bb.bb ], [ %i.jf, %bb.be ], [ %i.jf, %bb.bd ], [ %..31259, %bb.bf ] ; 2 uses
  %i.nx = load double, ptr %i.ep, align 8, !tbaa !9
  %i.ny = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.nz = fdiv double %i.nx, %i.ny                ; 3 uses
  store double %i.nz, ptr %i.d, align 8, !tbaa !9
  %i.oa = fmul double %i.nz, %i.nz
  %i.ob = fcmp ugt double %i.oa, %i.as
  br i1 %i.ob, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oc = fcmp olt double %i.ny, %i.ba
  %i.od = fcmp ogt double %i.ny, %i.au
  %or.cond1386 = and i1 %i.oc, %i.od
  br i1 %or.cond1386, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.oe = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.of = getelementptr [8 x i8], ptr %i.p, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 8
  %i.oh = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.og, ptr noundef nonnull @c__1) #5
  br label %.sink.split1644

bb.bj:                                            ; preds = %bb.bh
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.oi = mul nsw i64 %indvars.iv.next1568, %i.bo
  %i.oj = getelementptr [8 x i8], ptr %i.p, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.ok, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #5
  %i.ol = load double, ptr %i.i, align 8, !tbaa !9
  %i.om = load double, ptr %i.f, align 8, !tbaa !9
  %i.on = call double @sqrt(double noundef %i.om) #5
  %i.oo = fmul double %i.ol, %i.on
  br label %.sink.split1644

.sink.split1644:                                  ; preds = %bb.bj, %bb.bi
  %.sink1646 = phi double [ %i.oh, %bb.bi ], [ %i.oo, %bb.bj ]
  %i.op = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1567
  %i.oq = load double, ptr %i.op, align 8, !tbaa !9
  %i.or = fmul double %.sink1646, %i.oq
  store double %i.or, ptr %i.ep, align 8, !tbaa !9
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split1644, %bb.bg
  %i.os = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.ot = fdiv double %i.os, %i.es
  %i.ou = fcmp ugt double %i.ot, %i.as
  br i1 %i.ou, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ov = fcmp olt double %i.os, %i.ba
  %i.ow = fcmp ogt double %i.os, %i.au
  %or.cond1387 = and i1 %i.ov, %i.ow
  br i1 %or.cond1387, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.ei, ptr noundef nonnull @c__1) #5
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.ei, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.oy = load double, ptr %i.i, align 8, !tbaa !9
  %i.oz = load double, ptr %i.e, align 8, !tbaa !9
  %i.pa = call double @sqrt(double noundef %i.oz) #5
  %i.pb = fmul double %i.oy, %i.pa
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink1649 = phi double [ %i.pb, %bb.bn ], [ %i.ox, %bb.bm ]
  %i.pc = load double, ptr %i.ej, align 8, !tbaa !9
  %i.pd = fmul double %.sink1649, %i.pc           ; 2 uses
  store double %i.pd, ptr %i.e, align 8, !tbaa !9
  store double %i.pd, ptr %i.cn, align 8, !tbaa !9
  br label %bb.br

bb.bp:                                            ; preds = %bb.al
  %spec.select1388 = add nsw i32 %.31243, %i.ci
  %i.pe = add nsw i32 %.01306, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.ad
  %spec.select1389 = add nsw i32 %.31243, %i.ci
  %i.pf = add nsw i32 %.01306, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bk, %bb.bq
  %.21308 = phi i32 [ %.11307, %bb.bo ], [ %.11307, %bb.bk ], [ %i.pe, %bb.bp ], [ %i.pf, %bb.bq ] ; 2 uses
  %.41277 = phi double [ %i.go, %bb.bo ], [ %i.go, %bb.bk ], [ %i.go, %bb.bp ], [ %.31276, %bb.bq ] ; 3 uses
  %.51261 = phi double [ %.41260, %bb.bo ], [ %.41260, %bb.bk ], [ %.31259, %bb.bp ], [ %.31259, %bb.bq ] ; 3 uses
  %.71247 = phi i32 [ %.41244, %bb.bo ], [ %.41244, %bb.bk ], [ %spec.select1388, %bb.bp ], [ %spec.select1389, %bb.bq ]
  %.5 = phi i32 [ %.4, %bb.bo ], [ %.4, %bb.bk ], [ %.3, %bb.bp ], [ %.3, %bb.bq ] ; 3 uses
  %i.pg = icmp sgt i32 %.21308, %i.bk
  %or.cond1390 = select i1 %.not1383, i1 %i.pg, i1 false
  br i1 %or.cond1390, label %bb.bs, label %bb.ac, !llvm.loop !13

bb.bs:                                            ; preds = %bb.br
  %.pre1593 = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  br i1 %i.ch, label %bb.bt, label %.loopexit1414

bb.bt:                                            ; preds = %bb.bs
  %i.ph = fneg double %.pre1593                   ; 2 uses
  store double %i.ph, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1414

.loopexit1414.loopexit:                           ; preds = %bb.ac
  %.pre = load double, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1414

.loopexit1414:                                    ; preds = %.loopexit1414.loopexit, %bb.bs, %bb.bt
  %i.pi = phi double [ %.pre1593, %bb.bs ], [ %i.ph, %bb.bt ], [ %.pre, %.loopexit1414.loopexit ]
  %.51278 = phi double [ %.41277, %bb.bs ], [ %.41277, %bb.bt ], [ %.31276, %.loopexit1414.loopexit ]
  %.61262 = phi double [ %.51261, %bb.bs ], [ %.51261, %bb.bt ], [ %.31259, %.loopexit1414.loopexit ]
  %.81248 = phi i32 [ 0, %bb.bs ], [ 0, %bb.bt ], [ %.31243, %.loopexit1414.loopexit ]
  %.6 = phi i32 [ %.5, %bb.bs ], [ %.5, %bb.bt ], [ %.3, %.loopexit1414.loopexit ]
  store double %i.pi, ptr %i.cn, align 8, !tbaa !9
  br label %bb.bw

bb.bu:                                            ; preds = %thread-pre-split
  %i.pj = fcmp oeq double %storemerge1376, 0.000000e+00
  %or.cond5 = and i1 %i.ch, %i.pj
  br i1 %or.cond5, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 %i.cc, ptr %i.c, align 4, !tbaa !8
  %i.pk = load i32, ptr %2, align 4, !tbaa !8
  %.1391 = call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.pk)
  %i.pl = sub i32 %.212421449, %i.cl
  %i.pm = add i32 %i.pl, %.1391
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit1414, %bb.bv, %bb.bu
  %.61279 = phi double [ %.51278, %.loopexit1414 ], [ %.212751447, %bb.bv ], [ %.212751447, %bb.bu ] ; 2 uses
  %.71263 = phi double [ %.61262, %.loopexit1414 ], [ %.212581448, %bb.bv ], [ %.212581448, %bb.bu ] ; 2 uses
  %.91249 = phi i32 [ %.81248, %.loopexit1414 ], [ %i.pm, %bb.bv ], [ %.212421449, %bb.bu ] ; 2 uses
  %.7 = phi i32 [ %.6, %.loopexit1414 ], [ %.21450, %bb.bv ], [ %.21450, %bb.bu ] ; 2 uses
  %indvars.iv.next1566 = add nsw i64 %indvars.iv1565, 1
  %.not1374.not = icmp slt i64 %indvars.iv1565, %i.cj
  br i1 %.not1374.not, label %bb.s, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.bw, %.lr.ph1463
  %.21275.lcssa = phi double [ %.112741456, %.lr.ph1463 ], [ %.61279, %bb.bw ] ; 2 uses
  %.21258.lcssa = phi double [ %.112571457, %.lr.ph1463 ], [ %.71263, %bb.bw ] ; 2 uses
  %.21242.lcssa = phi i32 [ %.112411459, %.lr.ph1463 ], [ %.91249, %bb.bw ] ; 2 uses
  %.2.lcssa = phi i32 [ %.11460, %.lr.ph1463 ], [ %.7, %bb.bw ] ; 2 uses
  %i.pn = add nuw nsw i32 %.012551458, 1          ; 2 uses
  %indvars.iv.next1562 = add i32 %indvars.iv1561, %spec.select
  %indvars.iv.next1564 = add i32 %indvars.iv1563, %indvars.iv1561
  %exitcond.not = icmp eq i32 %i.pn, %17
  br i1 %exitcond.not, label %._crit_edge1464, label %.lr.ph1463, !llvm.loop !15

._crit_edge1464:                                  ; preds = %._crit_edge, %bb.r
  %.11274.lcssa = phi double [ %.012731520, %bb.r ], [ %.21275.lcssa, %._crit_edge ] ; 2 uses
  %.11257.lcssa = phi double [ %.012561521, %bb.r ], [ %.21258.lcssa, %._crit_edge ] ; 2 uses
  %.11241.lcssa = phi i32 [ %.012401522, %bb.r ], [ %.21242.lcssa, %._crit_edge ] ; 2 uses
  %.1.lcssa = phi i32 [ %.012391523, %bb.r ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.po = add nuw nsw i32 %.012361524, 1          ; 2 uses
  %.not13621502.not = icmp slt i32 %.012361524, %.0 ; 2 uses
  %i.pp = mul i32 %.012361524, %spec.select       ; 3 uses
  br i1 %.not13621502.not, label %.lr.ph1509, label %.loopexit1416

.lr.ph1509:                                       ; preds = %._crit_edge1464, %._crit_edge1497
  %indvars.iv1575.a = phi i32 [ %indvars.iv.next1576, %._crit_edge1497 ], [ %indvars.iv1573.a, %._crit_edge1464 ] ; 2 uses
  %.012381507 = phi i32 [ %i.acr, %._crit_edge1497 ], [ %i.po, %._crit_edge1464 ] ; 4 uses
  %.81506 = phi i32 [ %.9.lcssa, %._crit_edge1497 ], [ %.1.lcssa, %._crit_edge1464 ] ; 2 uses
  %.1012501505 = phi i32 [ %.111251.lcssa, %._crit_edge1497 ], [ %.11241.lcssa, %._crit_edge1464 ] ; 2 uses
  %.812641504 = phi double [ %.91265.lcssa, %._crit_edge1497 ], [ %.11257.lcssa, %._crit_edge1464 ] ; 2 uses
  %.712801503 = phi double [ %.81281.lcssa, %._crit_edge1497 ], [ %.11274.lcssa, %._crit_edge1464 ] ; 2 uses
  %i.pq = sext i32 %indvars.iv1575.a to i64
  %i.pr = add nsw i32 %.012381507, -1
  %i.ps = mul nsw i32 %i.pr, %spec.select         ; 2 uses
  store i32 %i.pp, ptr %i.c, align 4, !tbaa !8
  %i.pt = load i32, ptr %2, align 4, !tbaa !8
  %.1392 = call i32 @llvm.smin.i32(i32 %i.pp, i32 %i.pt) ; 2 uses
  %.not13641486.not = icmp slt i32 %i.bx, %.1392
  br i1 %.not13641486.not, label %.lr.ph1496, label %._crit_edge1497

.lr.ph1496:                                       ; preds = %.lr.ph1509
  %i.pu = mul i32 %.012381507, %spec.select       ; 3 uses
  %i.pv = sext i32 %.1392 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1496, %bb.ea
  %indvars.iv1580 = phi i64 [ %i.bv, %.lr.ph1496 ], [ %indvars.iv.next1581, %bb.ea ] ; 6 uses
  %.91494 = phi i32 [ %.81506, %.lr.ph1496 ], [ %.13, %bb.ea ] ; 4 uses
  %.1112511493 = phi i32 [ %.1012501505, %.lr.ph1496 ], [ %.16, %bb.ea ] ; 4 uses
  %.912651492 = phi double [ %.812641504, %.lr.ph1496 ], [ %.141270, %bb.ea ] ; 4 uses
  %.812811491 = phi double [ %.712801503, %.lr.ph1496 ], [ %.121285, %bb.ea ] ; 4 uses
  %.012891490 = phi i32 [ 0, %.lr.ph1496 ], [ %.41293, %bb.ea ] ; 4 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1580 ; 5 uses
  %i.px = load double, ptr %i.pw, align 8, !tbaa !9 ; 5 uses
  store double %i.px, ptr %i.e, align 8, !tbaa !9
  %i.py = fcmp ogt double %i.px, 0.000000e+00
  br i1 %i.py, label %bb.by, label %bb.dw

bb.by:                                            ; preds = %bb.bx
  %i.pz = load i32, ptr %2, align 4, !tbaa !8
  %.1393 = call i32 @llvm.smin.i32(i32 %i.pu, i32 %i.pz) ; 2 uses
  store i32 %.1393, ptr %i.c, align 4, !tbaa !8
  %.not13671469.not = icmp slt i32 %i.ps, %.1393
  br i1 %.not13671469.not, label %.lr.ph1480, label %.loopexit1413

.lr.ph1480:                                       ; preds = %bb.by
  %i.qa = mul nsw i64 %indvars.iv1580, %i.bo
  %i.qb = getelementptr [8 x i8], ptr %i.p, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 8      ; 20 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1580 ; 18 uses
  %i.qe = mul nsw i64 %indvars.iv1580, %i.bp
  %i.qf = getelementptr [8 x i8], ptr %i.s, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.qf, i64 8      ; 10 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.du
  %i.qh = load i32, ptr %i.c, align 4, !tbaa !8
  %i.qi = sext i32 %i.qh to i64
  %.not1367.not = icmp slt i64 %indvars.iv.next1578, %i.qi
  br i1 %.not1367.not, label %bb.ca, label %.loopexit1413.loopexit, !llvm.loop !16

bb.ca:                                            ; preds = %.lr.ph1480, %bb.bz
  %indvars.iv1577 = phi i64 [ %i.pq, %.lr.ph1480 ], [ %indvars.iv.next1578, %bb.bz ] ; 10 uses
  %.101478 = phi i32 [ %.91494, %.lr.ph1480 ], [ %.11, %bb.bz ] ; 3 uses
  %.1212521477 = phi i32 [ %.1112511493, %.lr.ph1480 ], [ %.131253, %bb.bz ] ; 2 uses
  %.1012661476 = phi double [ %.912651492, %.lr.ph1480 ], [ %.121268, %bb.bz ] ; 10 uses
  %.912821475 = phi double [ %.812811491, %.lr.ph1480 ], [ %.101283, %bb.bz ] ; 4 uses
  %.112901474 = phi i32 [ %.012891490, %.lr.ph1480 ], [ %.21291, %bb.bz ] ; 4 uses
  %.313091470 = phi i32 [ 0, %.lr.ph1480 ], [ %.41310, %bb.bz ] ; 2 uses
  %indvars.iv.next1578 = add nsw i64 %indvars.iv1577, 1 ; 21 uses
  %i.qj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1577 ; 6 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !9 ; 9 uses
  store double %i.qk, ptr %i.f, align 8, !tbaa !9
  %i.ql = fcmp ogt double %i.qk, 0.000000e+00
  br i1 %i.ql, label %bb.cb, label %bb.dr

bb.cb:                                            ; preds = %bb.ca
  %i.qm = load double, ptr %i.e, align 8, !tbaa !9 ; 8 uses
  %i.qn = fcmp ult double %i.qk, 1.000000e+00
  %i.qo = fcmp ult double %i.qm, %i.qk            ; 2 uses
  br i1 %i.qn, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qp = fmul double %i.av, %i.qm
  %i.qq = fcmp ole double %i.qp, %i.qk
  %i.qr = fmul double %i.av, %i.qk
  %i.qs = fcmp ole double %i.qr, %i.qm
  %.11295.in = select i1 %i.qo, i1 %i.qs, i1 %i.qq ; 2 uses
  %i.qt = fdiv double %i.aw, %i.qk
  %i.qu = fcmp olt double %i.qm, %i.qt
  %i.qv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577 ; 2 uses
  br i1 %i.qu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qw = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.qx = getelementptr [8 x i8], ptr %i.p, i64 %i.qw
  %i.qy = getelementptr i8, ptr %i.qx, i64 8
  %i.qz = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.qc, ptr noundef nonnull @c__1, ptr noundef %i.qy, ptr noundef nonnull @c__1) #5
  %i.ra = load double, ptr %i.qd, align 8, !tbaa !9
  %i.rb = fmul double %i.qz, %i.ra
  %i.rc = load double, ptr %i.qv, align 8, !tbaa !9
  %i.rd = fmul double %i.rb, %i.rc
  %i.re = load double, ptr %i.f, align 8, !tbaa !9
  %i.rf = fdiv double %i.rd, %i.re
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cc
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.qc, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.qd, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.rg = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.rh = getelementptr [8 x i8], ptr %i.p, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 8
  %i.rj = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.ri, ptr noundef nonnull @c__1) #5
  %i.rk = load double, ptr %i.qv, align 8, !tbaa !9
  %i.rl = fmul double %i.rj, %i.rk
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cb
  %i.rm = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.rn = insertelement <2 x double> %i.rm, double %i.qm, i64 1 ; 2 uses
  %i.ro = fdiv <2 x double> %i.rn, %i.bs
  %i.rp = shufflevector <2 x double> %i.rn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rq = fcmp ole <2 x double> %i.rp, %i.ro      ; 2 uses
  %i.rr = extractelement <2 x i1> %i.rq, i64 0
  %i.rs = extractelement <2 x i1> %i.rq, i64 1
  %.21296.in = select i1 %i.qo, i1 %i.rs, i1 %i.rr ; 2 uses
  %i.rt = fdiv double %i.av, %i.qk
  %i.ru = fcmp ogt double %i.qm, %i.rt
  %i.rv = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.rw = getelementptr [8 x i8], ptr %i.p, i64 %i.rv
  %i.rx = getelementptr i8, ptr %i.rw, i64 8      ; 2 uses
  br i1 %i.ru, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ry = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.qc, ptr noundef nonnull @c__1, ptr noundef %i.rx, ptr noundef nonnull @c__1) #5
  %i.rz = load double, ptr %i.qd, align 8, !tbaa !9
  %i.sa = fmul double %i.ry, %i.rz
  %i.sb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !9
  %i.sd = fmul double %i.sa, %i.sc
  %i.se = load double, ptr %i.f, align 8, !tbaa !9
  %i.sf = fdiv double %i.sd, %i.se
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.rx, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  %i.sg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.sg, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.sh = call double @ddot_(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull @c__1) #5
  %i.si = load double, ptr %i.qd, align 8, !tbaa !9
  %i.sj = fmul double %i.sh, %i.si
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cd, %bb.ce
  %.sink1653.a = phi ptr [ %i.e, %bb.cg ], [ %i.e, %bb.ch ], [ %i.e, %bb.cd ], [ %i.f, %bb.ce ]
  %.sink1651 = phi double [ %i.sf, %bb.cg ], [ %i.sj, %bb.ch ], [ %i.rf, %bb.cd ], [ %i.rl, %bb.ce ]
  %.31297.in = phi i1 [ %.21296.in, %bb.cg ], [ %.21296.in, %bb.ch ], [ %.11295.in, %bb.cd ], [ %.11295.in, %bb.ce ]
  %i.sk = load double, ptr %.sink1653.a, align 8, !tbaa !9
  %i.sl = fdiv double %.sink1651, %i.sk           ; 9 uses
  store double %.912821475, ptr %i.d, align 8, !tbaa !9
  %i.sm = fcmp oge double %i.sl, 0.000000e+00     ; 2 uses
  %i.sn = fneg double %i.sl                       ; 4 uses
  %i.so = select i1 %i.sm, double %i.sl, double %i.sn ; 3 uses
  %i.sp = fcmp oge double %.912821475, %i.so
  %i.sq = select i1 %i.sp, double %.912821475, double %i.so ; 3 uses
  %i.sr = load double, ptr %12, align 8, !tbaa !9
  %i.ss = fcmp ogt double %i.so, %i.sr
  br i1 %i.ss, label %bb.cj, label %bb.dq

bb.cj:                                            ; preds = %bb.ci
  %i.st = add nsw i32 %.101478, 1                 ; 2 uses
  br i1 %.31297.in, label %bb.ck, label %bb.de

bb.ck:                                            ; preds = %bb.cj
  %i.su = load double, ptr %i.f, align 8, !tbaa !9 ; 4 uses
  %i.sv = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.sw = fdiv double %i.su, %i.sv                ; 3 uses
  %i.sx = fdiv double %i.sv, %i.su                ; 3 uses
  %i.sy = fsub double %i.sw, %i.sx                ; 4 uses
  store double %i.sy, ptr %i.d, align 8, !tbaa !9
  %i.sz = fcmp oge double %i.sy, 0.000000e+00
  %i.ta = fneg double %i.sy
  %i.tb = select i1 %i.sz, double %i.sy, double %i.ta
  %i.tc = fmul double %i.tb, -5.000000e-01
  %i.td = fdiv double %i.tc, %i.sl                ; 3 uses
  %i.te = fcmp ogt double %i.su, %i.qm            ; 2 uses
  %i.tf = fneg double %i.td
  %.01298 = select i1 %i.te, double %i.tf, double %i.td ; 4 uses
  %i.tg = call double @llvm.fabs.f64(double %i.td)
  %i.th = fcmp ogt double %i.tg, %i.bt
  br i1 %i.th, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.ti = fdiv double 5.000000e-01, %.01298       ; 3 uses
  store double %i.ti, ptr %i.i, align 8, !tbaa !9
  %i.tj = load double, ptr %i.qd, align 8, !tbaa !9 ; 2 uses
  %i.tk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !9 ; 2 uses
  %i.tm = fneg double %i.ti
  %i.tn = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.to = insertelement <2 x double> %i.tn, double %i.tm, i64 1
  %i.tp = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.tq = insertelement <2 x double> %i.tp, double %i.tl, i64 1
  %i.tr = fmul <2 x double> %i.to, %i.tq
  %i.ts = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.tt = insertelement <2 x double> %i.ts, double %i.tj, i64 1
end_hunk_1
begin_hunk_2_@dgsvj0_:bb.a
  %i.aaf = fmul double %i.aad, %i.aae
  store double %i.aaf, ptr %i.qj, align 8, !tbaa !9
  %i.aag = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv1408 = fcmp oge double %.1012661476, %i.aag
  %..101266 = select i1 %.inv1408, double %.1012661476, double %i.aag
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.aah = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.aai = getelementptr [8 x i8], ptr %i.p, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %i.aai, i64 8
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.aaj, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b42, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  %i.aak = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !9
  %i.aam = fmul double %i.aal, %i.sn
  %i.aan = load double, ptr %i.qd, align 8, !tbaa !9
  %i.aao = fdiv double %i.aam, %i.aan
  store double %i.aao, ptr %i.h, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef %14, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b42, ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull %4, ptr noundef nonnull %i.g) #5
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.aap = load double, ptr %i.e, align 8, !tbaa !9
  %i.aaq = call double @sqrt(double noundef %i.zu) #5
  %i.aar = fmul double %i.aap, %i.aaq
  store double %i.aar, ptr %i.pw, align 8, !tbaa !9
  %i.aas = load double, ptr %11, align 8, !tbaa !9 ; 2 uses
  %.inv1407 = fcmp oge double %.1012661476, %i.aas
  %..1012661394 = select i1 %.inv1407, double %.1012661476, double %i.aas
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg, %bb.cn, %bb.cy, %bb.dc, %bb.dd, %bb.da, %bb.db, %bb.cu, %bb.cr, %bb.cq
  %.111267 = phi double [ %i.uv, %bb.cn ], [ %i.vm, %bb.cr ], [ %i.vm, %bb.cq ], [ %i.vm, %bb.cu ], [ %i.vm, %bb.cy ], [ %i.vm, %bb.db ], [ %i.vm, %bb.da ], [ %i.vm, %bb.dd ], [ %i.vm, %bb.dc ], [ %..101266, %bb.df ], [ %..1012661394, %bb.dg ] ; 2 uses
  %i.aat = load double, ptr %i.qj, align 8, !tbaa !9
  %i.aau = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.aav = fdiv double %i.aat, %i.aau             ; 3 uses
  store double %i.aav, ptr %i.d, align 8, !tbaa !9
  %i.aaw = fmul double %i.aav, %i.aav
  %i.aax = fcmp ugt double %i.aaw, %i.as
  br i1 %i.aax, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aay = fcmp olt double %i.aau, %i.ba
  %i.aaz = fcmp ogt double %i.aau, %i.au
  %or.cond1395 = and i1 %i.aay, %i.aaz
  br i1 %or.cond1395, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aba = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.abb = getelementptr [8 x i8], ptr %i.p, i64 %i.aba
  %i.abc = getelementptr i8, ptr %i.abb, i64 8
  %i.abd = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.abc, ptr noundef nonnull @c__1) #5
  br label %.sink.split1654

bb.dk:                                            ; preds = %bb.di
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.abe = mul nsw i64 %indvars.iv.next1578, %i.bo
  %i.abf = getelementptr [8 x i8], ptr %i.p, i64 %i.abe
  %i.abg = getelementptr i8, ptr %i.abf, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.abg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #5
  %i.abh = load double, ptr %i.i, align 8, !tbaa !9
  %i.abi = load double, ptr %i.f, align 8, !tbaa !9
  %i.abj = call double @sqrt(double noundef %i.abi) #5
  %i.abk = fmul double %i.abh, %i.abj
  br label %.sink.split1654

.sink.split1654:                                  ; preds = %bb.dk, %bb.dj
  %.sink1656 = phi double [ %i.abd, %bb.dj ], [ %i.abk, %bb.dk ]
  %i.abl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1577
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !9
  %i.abn = fmul double %.sink1656, %i.abm
  store double %i.abn, ptr %i.qj, align 8, !tbaa !9
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split1654, %bb.dh
  %i.abo = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.abp = fdiv double %i.abo, %i.qm              ; 3 uses
  store double %i.abp, ptr %i.d, align 8, !tbaa !9
  %i.abq = fmul double %i.abp, %i.abp
  %i.abr = fcmp ugt double %i.abq, %i.as
  br i1 %i.abr, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.abs = fcmp olt double %i.abo, %i.ba
  %i.abt = fcmp ogt double %i.abo, %i.au
  %or.cond1396 = and i1 %i.abs, %i.abt
  br i1 %or.cond1396, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.abu = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.qc, ptr noundef nonnull @c__1) #5
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.qc, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.abv = load double, ptr %i.i, align 8, !tbaa !9
  %i.abw = load double, ptr %i.e, align 8, !tbaa !9
  %i.abx = call double @sqrt(double noundef %i.abw) #5
  %i.aby = fmul double %i.abv, %i.abx
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sink1659 = phi double [ %i.aby, %bb.do ], [ %i.abu, %bb.dn ]
  %i.abz = load double, ptr %i.qd, align 8, !tbaa !9
  %i.aca = fmul double %.sink1659, %i.abz         ; 2 uses
  store double %i.aca, ptr %i.e, align 8, !tbaa !9
  store double %i.aca, ptr %i.pw, align 8, !tbaa !9
  br label %bb.ds

bb.dq:                                            ; preds = %bb.ci
  %i.acb = add nsw i32 %.1212521477, 1
  %i.acc = add nsw i32 %.313091470, 1
  %i.acd = add nsw i32 %.112901474, 1
  br label %bb.ds

bb.dr:                                            ; preds = %bb.ca
  %i.ace = add nsw i32 %.1212521477, 1
  %i.acf = add nsw i32 %.313091470, 1
  %i.acg = add nsw i32 %.112901474, 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.dl, %bb.dr
  %.41310 = phi i32 [ 0, %bb.dp ], [ 0, %bb.dl ], [ %i.acc, %bb.dq ], [ %i.acf, %bb.dr ] ; 2 uses
  %.21291 = phi i32 [ %.112901474, %bb.dp ], [ %.112901474, %bb.dl ], [ %i.acd, %bb.dq ], [ %i.acg, %bb.dr ] ; 4 uses
  %.101283 = phi double [ %i.sq, %bb.dp ], [ %i.sq, %bb.dl ], [ %i.sq, %bb.dq ], [ %.912821475, %bb.dr ] ; 4 uses
  %.121268 = phi double [ %.111267, %bb.dp ], [ %.111267, %bb.dl ], [ %.1012661476, %bb.dq ], [ %.1012661476, %bb.dr ] ; 4 uses
  %.131253 = phi i32 [ 0, %bb.dp ], [ 0, %bb.dl ], [ %i.acb, %bb.dq ], [ %i.ace, %bb.dr ] ; 2 uses
  %.11 = phi i32 [ %i.st, %bb.dp ], [ %i.st, %bb.dl ], [ %.101478, %bb.dq ], [ %.101478, %bb.dr ] ; 4 uses
  %.not1370.not = icmp sgt i32 %.21291, %i.bj
  %or.cond1397 = select i1 %.not1383, i1 %.not1370.not, i1 false
  br i1 %or.cond1397, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ach = load double, ptr %i.e, align 8, !tbaa !9
  store double %i.ach, ptr %i.pw, align 8, !tbaa !9
  br label %.loopexit1416

bb.du:                                            ; preds = %bb.ds
  %i.aci = icmp sgt i32 %.41310, %i.bk
  %or.cond1399 = select i1 %.not1383, i1 %i.aci, i1 false
  br i1 %or.cond1399, label %bb.dv, label %bb.bz

bb.dv:                                            ; preds = %bb.du
  %i.acj = load double, ptr %i.e, align 8, !tbaa !9
  %i.ack = fneg double %i.acj                     ; 2 uses
  store double %i.ack, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1413

.loopexit1413.loopexit:                           ; preds = %bb.bz
  %.pre1594 = load double, ptr %i.e, align 8, !tbaa !9
  br label %.loopexit1413

.loopexit1413:                                    ; preds = %.loopexit1413.loopexit, %bb.by, %bb.dv
  %i.acl = phi double [ %i.ack, %bb.dv ], [ %i.px, %bb.by ], [ %.pre1594, %.loopexit1413.loopexit ]
  %.31292 = phi i32 [ %.21291, %bb.dv ], [ %.012891490, %bb.by ], [ %.21291, %.loopexit1413.loopexit ]
  %.111284 = phi double [ %.101283, %bb.dv ], [ %.812811491, %bb.by ], [ %.101283, %.loopexit1413.loopexit ]
  %.131269 = phi double [ %.121268, %bb.dv ], [ %.912651492, %bb.by ], [ %.121268, %.loopexit1413.loopexit ]
  %.141254 = phi i32 [ 0, %bb.dv ], [ %.1112511493, %bb.by ], [ %.131253, %.loopexit1413.loopexit ]
  %.12 = phi i32 [ %.11, %bb.dv ], [ %.91494, %bb.by ], [ %.11, %.loopexit1413.loopexit ]
  store double %i.acl, ptr %i.pw, align 8, !tbaa !9
  br label %bb.ea

bb.dw:                                            ; preds = %bb.bx
  %i.acm = fcmp oeq double %i.px, 0.000000e+00
  br i1 %i.acm, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.pu, ptr %i.c, align 4, !tbaa !8
  %i.acn = load i32, ptr %2, align 4, !tbaa !8
  %.1400 = call i32 @llvm.smin.i32(i32 %i.pu, i32 %i.acn)
  %i.aco = sub i32 %.1112511493, %i.ps
  %i.acp = add i32 %i.aco, %.1400
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.15 = phi i32 [ %i.acp, %bb.dx ], [ %.1112511493, %bb.dw ]
  %i.acq = fcmp olt double %i.px, 0.000000e+00
  br i1 %i.acq, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit1413, %bb.dz, %bb.dy
  %.41293 = phi i32 [ %.31292, %.loopexit1413 ], [ %.012891490, %bb.dz ], [ %.012891490, %bb.dy ]
  %.121285 = phi double [ %.111284, %.loopexit1413 ], [ %.812811491, %bb.dz ], [ %.812811491, %bb.dy ] ; 2 uses
  %.141270 = phi double [ %.131269, %.loopexit1413 ], [ %.912651492, %bb.dz ], [ %.912651492, %bb.dy ] ; 2 uses
  %.16 = phi i32 [ %.141254, %.loopexit1413 ], [ 0, %bb.dz ], [ %.15, %bb.dy ] ; 2 uses
  %.13 = phi i32 [ %.12, %.loopexit1413 ], [ %.91494, %bb.dz ], [ %.91494, %bb.dy ] ; 2 uses
  %indvars.iv.next1581 = add nsw i64 %indvars.iv1580, 1
  %.not1364.not = icmp slt i64 %indvars.iv1580, %i.pv
  br i1 %.not1364.not, label %bb.bx, label %._crit_edge1497, !llvm.loop !17

._crit_edge1497:                                  ; preds = %bb.ea, %.lr.ph1509
  %.81281.lcssa = phi double [ %.712801503, %.lr.ph1509 ], [ %.121285, %bb.ea ] ; 2 uses
  %.91265.lcssa = phi double [ %.812641504, %.lr.ph1509 ], [ %.141270, %bb.ea ] ; 2 uses
  %.111251.lcssa = phi i32 [ %.1012501505, %.lr.ph1509 ], [ %.16, %bb.ea ] ; 2 uses
  %.9.lcssa = phi i32 [ %.81506, %.lr.ph1509 ], [ %.13, %bb.ea ] ; 2 uses
  %i.acr = add i32 %.012381507, 1
  %indvars.iv.next1576 = add i32 %indvars.iv1575.a, %spec.select
  %exitcond1583.not = icmp eq i32 %.012381507, %.0
  br i1 %exitcond1583.not, label %.loopexit1416, label %.lr.ph1509, !llvm.loop !18

.loopexit1416:                                    ; preds = %._crit_edge1497, %._crit_edge1464, %bb.dt
  %.131286 = phi double [ %.11274.lcssa, %._crit_edge1464 ], [ %.101283, %bb.dt ], [ %.81281.lcssa, %._crit_edge1497 ] ; 2 uses
  %.151271 = phi double [ %.11257.lcssa, %._crit_edge1464 ], [ %.121268, %bb.dt ], [ %.91265.lcssa, %._crit_edge1497 ] ; 2 uses
  %.17 = phi i32 [ %.11241.lcssa, %._crit_edge1464 ], [ 0, %bb.dt ], [ %.111251.lcssa, %._crit_edge1497 ] ; 2 uses
  %.14 = phi i32 [ %.1.lcssa, %._crit_edge1464 ], [ %.11, %bb.dt ], [ %.9.lcssa, %._crit_edge1497 ] ; 2 uses
  %i.acs = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %.1401 = call i32 @llvm.smin.i32(i32 %i.pp, i32 %i.acs) ; 2 uses
  %.not13721514.not = icmp slt i32 %i.bx, %.1401
  br i1 %.not13721514.not, label %iter.check, label %.loopexit1415

iter.check:                                       ; preds = %.loopexit1416
  %i.act = sext i32 %.1401 to i64                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.act, i64 %i.bv)
  %i.acu = add i64 %smax, 1
  %i.acv = sub i64 %i.acu, %i.bv                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.acv, 4
  br i1 %min.iters.check, label %.lr.ph1517.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1690 = icmp ult i64 %i.acv, 16
  br i1 %min.iters.check1690, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acw = and i64 %i.acv, 12
  %n.vec = and i64 %i.acv, -16                    ; 4 uses
  %i.acx = add i64 %n.vec, %i.bv
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %wide.load1691 = load <4 x double>, ptr %i.acy, align 8, !tbaa !9 ; 3 uses
  %wide.load1692 = load <4 x double>, ptr %i.acz, align 8, !tbaa !9 ; 3 uses
  %wide.load1693 = load <4 x double>, ptr %i.ada, align 8, !tbaa !9 ; 4 uses
  %i.adb = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.adc = fcmp oge <4 x double> %wide.load1691, zeroinitializer
  %i.add = fcmp oge <4 x double> %wide.load1692, zeroinitializer
  %i.ade = fcmp oge <4 x double> %wide.load1693, zeroinitializer
  %i.adf = fneg <4 x double> %wide.load
  %i.adg = fneg <4 x double> %wide.load1691
  %i.adh = fneg <4 x double> %wide.load1692
  %i.adi = fneg <4 x double> %wide.load1693
  %i.adj = select <4 x i1> %i.adb, <4 x double> %wide.load, <4 x double> %i.adf
  %i.adk = select <4 x i1> %i.adc, <4 x double> %wide.load1691, <4 x double> %i.adg
  %i.adl = select <4 x i1> %i.add, <4 x double> %wide.load1692, <4 x double> %i.adh
  %i.adm = select <4 x i1> %i.ade, <4 x double> %wide.load1693, <4 x double> %i.adi
  store <4 x double> %i.adj, ptr %gep, align 8, !tbaa !9
  store <4 x double> %i.adk, ptr %i.acy, align 8, !tbaa !9
  store <4 x double> %i.adl, ptr %i.acz, align 8, !tbaa !9
  store <4 x double> %i.adm, ptr %i.ada, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adn = icmp eq i64 %index.next, %n.vec
  br i1 %i.adn, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.ado = extractelement <4 x double> %wide.load1693, i64 3
  %cmp.n = icmp eq i64 %i.acv, %n.vec
  br i1 %cmp.n, label %..loopexit1415_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1517.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1694 = and i64 %i.acv, -4                 ; 3 uses
  %i.adp = add i64 %n.vec1694, %i.bv
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.l, i64 %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1695 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1697, %vec.epilog.vector.body ] ; 2 uses
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %index1695 ; 2 uses
  %wide.load1696 = load <4 x double>, ptr %gep1736, align 8, !tbaa !9 ; 4 uses
  %i.adq = fcmp oge <4 x double> %wide.load1696, zeroinitializer
  %i.adr = fneg <4 x double> %wide.load1696
  %i.ads = select <4 x i1> %i.adq, <4 x double> %wide.load1696, <4 x double> %i.adr
  store <4 x double> %i.ads, ptr %gep1736, align 8, !tbaa !9
  %index.next1697 = add nuw i64 %index1695, 4     ; 2 uses
  %i.adt = icmp eq i64 %index.next1697, %n.vec1694
  br i1 %i.adt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.adu = extractelement <4 x double> %wide.load1696, i64 3
  %cmp.n1698 = icmp eq i64 %i.acv, %n.vec1694
  br i1 %cmp.n1698, label %..loopexit1415_crit_edge, label %.lr.ph1517.preheader

.lr.ph1517.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1584.ph = phi i64 [ %i.bv, %iter.check ], [ %i.acx, %vec.epilog.iter.check ], [ %i.adp, %vec.epilog.middle.block ]
  br label %.lr.ph1517

.lr.ph1517:                                       ; preds = %.lr.ph1517.preheader, %.lr.ph1517
  %indvars.iv1584.a = phi i64 [ %indvars.iv.next1585.a, %.lr.ph1517 ], [ %indvars.iv1584.ph, %.lr.ph1517.preheader ] ; 3 uses
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1584.a ; 2 uses
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !9 ; 4 uses
  %i.adx = fcmp oge double %i.adw, 0.000000e+00
  %i.ady = fneg double %i.adw
  %i.adz = select i1 %i.adx, double %i.adw, double %i.ady
  store double %i.adz, ptr %i.adv, align 8, !tbaa !9
  %indvars.iv.next1585.a = add nsw i64 %indvars.iv1584.a, 1
  %.not1372.not = icmp slt i64 %indvars.iv1584.a, %i.act
  br i1 %.not1372.not, label %.lr.ph1517, label %..loopexit1415_crit_edge, !llvm.loop !24

._crit_edge1527:                                  ; preds = %.loopexit1415, %bb.q
  %i.aea = phi i32 [ %i.bu, %bb.q ], [ %i.acs, %.loopexit1415 ] ; 3 uses
  %.01273.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.131286, %.loopexit1415 ] ; 3 uses
  %.01256.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.151271, %.loopexit1415 ]
  %.01240.lcssa = phi i32 [ 0, %bb.q ], [ %.17, %.loopexit1415 ] ; 2 uses
  %.01239.lcssa = phi i32 [ 0, %bb.q ], [ %.14, %.loopexit1415 ]
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aeb
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !9 ; 2 uses
  %i.aee = fcmp olt double %i.aed, %i.ba
  %i.aef = fcmp ogt double %i.aed, %i.au
  %or.cond1402 = and i1 %i.aee, %i.aef
  br i1 %or.cond1402, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %._crit_edge1527
  %i.aeg = mul nsw i32 %i.aea, %i.n
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = getelementptr [8 x i8], ptr %i.p, i64 %i.aeh
  %i.aej = getelementptr i8, ptr %i.aei, i64 8
  %i.aek = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.aej, ptr noundef nonnull @c__1) #5
  br label %bb.ed

bb.ec:                                            ; preds = %._crit_edge1527
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.ael = mul nsw i32 %i.aea, %i.n
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr [8 x i8], ptr %i.p, i64 %i.aem
  %i.aeo = getelementptr i8, ptr %i.aen, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.aeo, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.aep = load double, ptr %i.i, align 8, !tbaa !9
  %i.aeq = load double, ptr %i.e, align 8, !tbaa !9
  %i.aer = call double @sqrt(double noundef %i.aeq) #5
  %i.aes = fmul double %i.aep, %i.aer
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sink1664 = phi double [ %i.aes, %bb.ec ], [ %i.aek, %bb.eb ]
  %i.aet = load i32, ptr %2, align 4, !tbaa !8    ; 4 uses
  %i.aeu = sext i32 %i.aet to i64                 ; 2 uses
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aeu
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !9
  %i.aex = fmul double %.sink1664, %i.aew
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aeu
  store double %i.aex, ptr %i.aey, align 8, !tbaa !9
  %i.aez = icmp samesign ult i32 %.013051533, %.012871534
  %i.afa = fcmp ole double %.01273.lcssa, %i.bb
  %.not1357 = icmp sle i32 %.01239.lcssa, %i.aet
  %or.cond1669.not = select i1 %i.afa, i1 true, i1 %.not1357
  %i.afb = select i1 %i.aez, i1 %or.cond1669.not, i1 false
  %.11288 = select i1 %i.afb, i32 %.013051533, i32 %.012871534 ; 2 uses
  %i.afc = add nuw nsw i32 %.11288, 1
  %i.afd = icmp samesign ugt i32 %.013051533, %i.afc
  br i1 %i.afd, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.afe = sitofp i32 %i.aet to double            ; 2 uses
  %i.aff = load double, ptr %12, align 8, !tbaa !9 ; 2 uses
  %i.afg = fmul double %i.aff, %i.afe
  %i.afh = fcmp olt double %.01273.lcssa, %i.afg
  br i1 %i.afh, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.afi = fmul double %.01273.lcssa, %i.afe
  %i.afj = fmul double %.01256.lcssa, %i.afi
  %i.afk = fcmp uge double %i.afj, %i.aff
  %.not1358 = icmp slt i32 %.01240.lcssa, %i.bf
  %or.cond1403 = select i1 %i.afk, i1 %.not1358, i1 false
  br i1 %or.cond1403, label %bb.eh, label %.loopexit1417

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %.not1358.old = icmp slt i32 %.01240.lcssa, %i.bf
  br i1 %.not1358.old, label %bb.eh, label %.loopexit1417

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.afl = add nuw nsw i32 %.013051533, 1
  %.not1355.not = icmp slt i32 %.013051533, %i.bl
  br i1 %.not1355.not, label %bb.q, label %._crit_edge1537.loopexit, !llvm.loop !25

._crit_edge1537.loopexit:                         ; preds = %bb.eh
  %.pre1595 = load i32, ptr %13, align 4, !tbaa !8
  br label %._crit_edge1537

._crit_edge1537:                                  ; preds = %._crit_edge1537.loopexit, %bb.p
  %i.afm = phi i32 [ %.pre1595, %._crit_edge1537.loopexit ], [ %i.bl, %bb.p ]
  %i.afn = add nsw i32 %i.afm, -1
  br label %.loopexit1417

.loopexit1417:                                    ; preds = %bb.ef, %bb.eg, %._crit_edge1537
  %storemerge = phi i32 [ %i.afn, %._crit_edge1537 ], [ 0, %bb.eg ], [ 0, %bb.ef ]
  store i32 %storemerge, ptr %16, align 4, !tbaa !8
end_hunk_2
