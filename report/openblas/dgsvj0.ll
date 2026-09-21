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
  %i.n = load i32, ptr %4, align 4, !tbaa !20     ; 8 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %3, i64 %i.o ; 37 uses
  %i.q = load i32, ptr %9, align 4, !tbaa !20     ; 5 uses
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
  %i.y = load i32, ptr %1, align 4, !tbaa !20     ; 4 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %2, align 4, !tbaa !20    ; 2 uses
  %or.cond1384 = icmp ugt i32 %i.aa, %i.y
  br i1 %or.cond1384, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %4, align 4, !tbaa !20
  %i.ac = icmp slt i32 %i.ab, %i.y
  br i1 %i.ac, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond, label %bb.g, label %.thread1407

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %7, align 4, !tbaa !20    ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %9, align 4, !tbaa !20
  %i.ag = icmp slt i32 %i.af, %i.aa
  br i1 %i.ag, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.w, label %bb.k, label %.thread1407

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %9, align 4, !tbaa !20
  %i.ai = icmp slt i32 %i.ah, %i.ad
  br i1 %i.ai, label %bb.n, label %.thread1407

.thread1407:                                      ; preds = %bb.f, %bb.k, %bb.j
  %i.aj = load double, ptr %12, align 8, !tbaa !22 ; 2 uses
  %i.ak = load double, ptr %10, align 8, !tbaa !22 ; 3 uses
  %i.al = fcmp ugt double %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.thread1407
  %i.am = load i32, ptr %13, align 4, !tbaa !20
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %15, align 4, !tbaa !20
  %i.ap = icmp slt i32 %i.ao, %i.y
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread1407, %bb.i, %bb.k, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ -8, %bb.g ], [ -13, %.thread1407 ], [ -14, %bb.l ], [ -10, %bb.i ], [ -5, %bb.e ], [ -2, %bb.c ], [ -10, %bb.k ], [ -16, %bb.m ]
  %.ph.neg = phi i32 [ 1, %bb.b ], [ 3, %bb.d ], [ 8, %bb.g ], [ 13, %.thread1407 ], [ 14, %bb.l ], [ 10, %bb.i ], [ 5, %bb.e ], [ 2, %bb.c ], [ 10, %bb.k ], [ 16, %bb.m ]
  store i32 %.sink, ptr %16, align 4, !tbaa !20
  store i32 %.ph.neg, ptr %i.a, align 4, !tbaa !20
  %i.aq = call i32 @xerbla_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %16, align 4, !tbaa !20
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o
  %.mux = select i1 %i.v, ptr %2, ptr %7
  %i.ar = load i32, ptr %.mux, align 4, !tbaa !20
  store i32 %i.ar, ptr %i.k, align 4, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.sink.split
  %i.as = tail call double @sqrt(double noundef %i.ak) #5 ; 5 uses
  %i.at = load double, ptr %11, align 8, !tbaa !22 ; 3 uses
  %i.au = tail call double @sqrt(double noundef %i.at) #5 ; 7 uses
  %i.av = fdiv double %i.at, %i.ak                ; 7 uses
  %i.aw = fdiv double 1.000000e+00, %i.at         ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.as, i64 1
  %i.az = fdiv <2 x double> splat (double 1.000000e+00), %i.ay ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 6 uses
  %i.bb = tail call double @sqrt(double noundef %i.aj) #5
  %i.bc = load i32, ptr %2, align 4, !tbaa !20    ; 7 uses
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = mul nsw i32 %i.bd, %i.bc
  %17 = sdiv i32 %i.be, 2                         ; 2 uses
  store double 0.000000e+00, ptr %i.j, align 16, !tbaa !22
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 8) ; 16 uses
  %18 = sdiv i32 %i.bc, %spec.select              ; 2 uses
  %i.bf = mul nsw i32 %18, %spec.select
  %.not1354 = icmp ne i32 %i.bf, %i.bc
  %i.bg = zext i1 %.not1354 to i32
  %.0 = add i32 %18, %i.bg                        ; 6 uses
  %i.bh = mul nsw i32 %spec.select, %spec.select
  %i.bi = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 5) ; 2 uses
  %i.bj = load i32, ptr %13, align 4, !tbaa !20   ; 4 uses
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !20
  %.not13551535 = icmp slt i32 %i.bj, 1
  br i1 %.not13551535, label %._crit_edge1540, label %.lr.ph1539

.lr.ph1539:                                       ; preds = %bb.p
  %i.bk = add i32 %spec.select, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.bm = sext i32 %i.n to i64                    ; 30 uses
  %i.bn = sext i32 %i.q to i64                    ; 15 uses
  %.not13561522 = icmp slt i32 %.0, 1
  %i.bo = extractelement <2 x double> %i.az, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = extractelement <2 x double> %i.az, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1539, %bb.eg
  %i.bs = phi i32 [ %i.bc, %.lr.ph1539 ], [ %i.aes, %bb.eg ]
  %.012871537 = phi i32 [ 0, %.lr.ph1539 ], [ %.11288, %bb.eg ] ; 3 uses
  %.013051536 = phi i32 [ 1, %.lr.ph1539 ], [ %i.afk, %bb.eg ] ; 6 uses
  store i32 %.0, ptr %i.b, align 4, !tbaa !20
  br i1 %.not13561522, label %._crit_edge1530, label %.lr.ph1529

.lr.ph1529:                                       ; preds = %bb.q
  %.not1383 = icmp samesign ule i32 %.013051536, %.012871537 ; 3 uses
  br label %bb.r

..loopexit1418_crit_edge:                         ; preds = %.lr.ph1520, %vec.epilog.middle.block, %middle.block
  %.lcssa1691 = phi double [ %i.adt, %vec.epilog.middle.block ], [ %i.adn, %middle.block ], [ %i.adv, %.lr.ph1520 ]
  store double %.lcssa1691, ptr %i.d, align 8, !tbaa !22
  br label %.loopexit1418

.loopexit1418:                                    ; preds = %..loopexit1418_crit_edge, %.loopexit1419
  %indvars.iv.next = add i32 %indvars.iv, %spec.select
  %indvars.iv.next1577 = add i32 %indvars.iv1576, %spec.select
  br i1 %.not13621505.not, label %bb.r, label %._crit_edge1530, !llvm.loop !8

bb.r:                                             ; preds = %.lr.ph1529, %.loopexit1418
  %indvars.iv1576 = phi i32 [ %spec.select, %.lr.ph1529 ], [ %indvars.iv.next1577, %.loopexit1418 ] ; 2 uses
  %indvars.iv1574.in = phi i32 [ %.0, %.lr.ph1529 ], [ %indvars.iv1574, %.loopexit1418 ]
  %indvars.iv = phi i32 [ 1, %.lr.ph1529 ], [ %indvars.iv.next, %.loopexit1418 ] ; 3 uses
  %.012361527 = phi i32 [ 1, %.lr.ph1529 ], [ %i.pn, %.loopexit1418 ] ; 5 uses
  %.012391526 = phi i32 [ 0, %.lr.ph1529 ], [ %.14, %.loopexit1418 ] ; 2 uses
  %.012401525 = phi i32 [ 0, %.lr.ph1529 ], [ %.17, %.loopexit1418 ] ; 2 uses
  %.012561524 = phi double [ 0.000000e+00, %.lr.ph1529 ], [ %.151271, %.loopexit1418 ] ; 2 uses
  %.012731523 = phi double [ 0.000000e+00, %.lr.ph1529 ], [ %.131286, %.loopexit1418 ] ; 2 uses
  %indvars.iv1574 = add i32 %indvars.iv1574.in, -1 ; 2 uses
  %i.bt = sext i32 %indvars.iv to i64             ; 8 uses
  %.inv1620 = icmp slt i32 %indvars.iv1574, 1
  %i.bu = select i1 %.inv1620, i32 1, i32 2
  %i.bv = add nsw i32 %.012361527, -1
  %i.bw = mul nsw i32 %i.bv, %spec.select         ; 3 uses
  %i.bx = sub nsw i32 %.0, %.012361527            ; 2 uses
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !20
  %.not13611458 = icmp slt i32 %i.bx, 0
  br i1 %.not13611458, label %._crit_edge1467, label %.lr.ph1466.preheader

.lr.ph1466.preheader:                             ; preds = %bb.r
  %i.by = add nsw i32 %i.bw, 1
  br label %.lr.ph1466

.lr.ph1466:                                       ; preds = %.lr.ph1466.preheader, %._crit_edge
  %indvars.iv1566 = phi i32 [ %indvars.iv, %.lr.ph1466.preheader ], [ %indvars.iv.next1567, %._crit_edge ] ; 2 uses
  %indvars.iv1564 = phi i32 [ %spec.select, %.lr.ph1466.preheader ], [ %indvars.iv.next1565, %._crit_edge ] ; 2 uses
  %.012371464 = phi i32 [ %i.by, %.lr.ph1466.preheader ], [ %i.ca, %._crit_edge ]
  %.11463 = phi i32 [ %.012391526, %.lr.ph1466.preheader ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.112411462 = phi i32 [ %.012401525, %.lr.ph1466.preheader ], [ %.21242.lcssa, %._crit_edge ] ; 2 uses
  %.012551461 = phi i32 [ 0, %.lr.ph1466.preheader ], [ %i.pm, %._crit_edge ] ; 3 uses
  %.112571460 = phi double [ %.012561524, %.lr.ph1466.preheader ], [ %.21258.lcssa, %._crit_edge ] ; 2 uses
  %.112741459 = phi double [ %.012731523, %.lr.ph1466.preheader ], [ %.21275.lcssa, %._crit_edge ] ; 2 uses
  %i.bz = mul nuw nsw i32 %.012551461, %spec.select
  %i.ca = add nsw i32 %.012371464, %i.bz          ; 3 uses
  %i.cb = add i32 %i.bk, %i.ca                    ; 5 uses
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !20
  %i.cc = load i32, ptr %2, align 4, !tbaa !20
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cd) ; 2 uses
  %.not13741448 = icmp sgt i32 %i.ca, %i.ce
  br i1 %.not13741448, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1466
  %i.cf = sext i32 %indvars.iv1566 to i64
  %i.cg = icmp eq i32 %.012551461, 0              ; 6 uses
  %i.ch = zext i1 %i.cg to i32                    ; 3 uses
  %i.ci = sext i32 %i.ce to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.bw
  %indvars.iv1568 = phi i64 [ %i.cf, %.lr.ph ], [ %indvars.iv.next1569, %bb.bw ] ; 14 uses
  %.21453 = phi i32 [ %.11463, %.lr.ph ], [ %.7, %bb.bw ] ; 3 uses
  %.212421452 = phi i32 [ %.112411462, %.lr.ph ], [ %.91249, %bb.bw ] ; 3 uses
  %.212581451 = phi double [ %.112571460, %.lr.ph ], [ %.71263, %bb.bw ] ; 3 uses
  %.212751450 = phi double [ %.112741459, %.lr.ph ], [ %.61279, %bb.bw ] ; 3 uses
  %i.cj = load i32, ptr %2, align 4, !tbaa !20
  %i.ck = trunc nsw i64 %indvars.iv1568 to i32    ; 4 uses
  %reass.sub = sub i32 %i.cj, %i.ck
  %i.cl = add i32 %reass.sub, 1
  store i32 %i.cl, ptr %i.c, align 4, !tbaa !20
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1568 ; 7 uses
  %i.cn = call i32 @idamax_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cm, ptr noundef nonnull @c__1) #5
  %i.co = add i32 %i.ck, -1
  %i.cp = add i32 %i.co, %i.cn                    ; 4 uses
  %.not1375 = icmp eq i32 %i.cp, %i.ck
  br i1 %.not1375, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = mul nsw i64 %indvars.iv1568, %i.bm
  %i.cr = getelementptr [8 x i8], ptr %i.p, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = mul nsw i32 %i.cp, %i.n
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [8 x i8], ptr %i.p, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  call void @dswap_(ptr noundef nonnull %1, ptr noundef %i.cs, ptr noundef nonnull @c__1, ptr noundef %i.cw, ptr noundef nonnull @c__1) #5
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = mul nsw i64 %indvars.iv1568, %i.bn
  %i.cy = getelementptr [8 x i8], ptr %i.s, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = mul nsw i32 %i.cp, %i.q
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.s, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  call void @dswap_(ptr noundef nonnull %i.k, ptr noundef %i.cz, ptr noundef nonnull @c__1, ptr noundef %i.dd, ptr noundef nonnull @c__1) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = load double, ptr %i.cm, align 8, !tbaa !22
  %i.df = sext i32 %i.cp to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !22
  store double %i.dh, ptr %i.cm, align 8, !tbaa !22
  store double %i.de, ptr %i.dg, align 8, !tbaa !22
  %i.di = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1568 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22 ; 2 uses
  store double %i.dj, ptr %i.h, align 8, !tbaa !22
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.df ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !22
  store double %i.dl, ptr %i.di, align 8, !tbaa !22
  store double %i.dj, ptr %i.dk, align 8, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dm = load double, ptr %i.cm, align 8, !tbaa !22 ; 3 uses
  br i1 %i.cg, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.dn = fcmp olt double %i.dm, %i.ba
  %i.do = fcmp ogt double %i.dm, %i.au
  %or.cond1385 = and i1 %i.dn, %i.do
  br i1 %or.cond1385, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = mul nsw i64 %indvars.iv1568, %i.bm
  %i.dq = getelementptr [8 x i8], ptr %i.p, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.dr, ptr noundef nonnull @c__1) #5
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !22
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.dt = mul nsw i64 %indvars.iv1568, %i.bm
  %i.du = getelementptr [8 x i8], ptr %i.p, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.dv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %i.dw = load double, ptr %i.h, align 8, !tbaa !22
  %i.dx = load double, ptr %i.e, align 8, !tbaa !22
  %i.dy = call double @sqrt(double noundef %i.dx) #5
  %i.dz = fmul double %i.dw, %i.dy
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink1641 = phi double [ %i.dz, %bb.z ], [ %i.ds, %bb.y ]
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1568
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !22
  %i.ec = fmul double %.sink1641, %i.eb           ; 2 uses
  store double %i.ec, ptr %i.cm, align 8, !tbaa !22
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.aa
  %storemerge1376 = phi double [ %i.ec, %bb.aa ], [ %i.dm, %bb.w ] ; 3 uses
  store double %storemerge1376, ptr %i.e, align 8, !tbaa !22
  %i.ed = fcmp ogt double %storemerge1376, 0.000000e+00
  br i1 %i.ed, label %bb.ab, label %bb.bu

bb.ab:                                            ; preds = %thread-pre-split
  %i.ee = load i32, ptr %2, align 4, !tbaa !20
  %. = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.ee)
  store i32 %., ptr %i.c, align 4, !tbaa !20
  %i.ef = mul nsw i64 %indvars.iv1568, %i.bm
  %i.eg = getelementptr [8 x i8], ptr %i.p, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 8      ; 17 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv1568 ; 17 uses
  %i.ej = mul nsw i64 %indvars.iv1568, %i.bn
  %i.ek = getelementptr [8 x i8], ptr %i.s, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 8      ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.br, %bb.ab
  %indvars.iv1570 = phi i64 [ %indvars.iv.next1571, %bb.br ], [ %indvars.iv1568, %bb.ab ] ; 10 uses
  %.01306 = phi i32 [ %.21308, %bb.br ], [ 0, %bb.ab ] ; 3 uses
  %.31276 = phi double [ %.41277, %bb.br ], [ %.212751450, %bb.ab ] ; 5 uses
  %.31259 = phi double [ %.51261, %bb.br ], [ %.212581451, %bb.ab ] ; 9 uses
  %.31243 = phi i32 [ %.71247, %bb.br ], [ %.212421452, %bb.ab ] ; 4 uses
  %.3 = phi i32 [ %.5, %bb.br ], [ %.21453, %bb.ab ] ; 4 uses
  %indvars.iv.next1571 = add nsw i64 %indvars.iv1570, 1 ; 19 uses
  %i.em = load i32, ptr %i.c, align 4, !tbaa !20
  %i.en = sext i32 %i.em to i64
end_hunk_0
begin_hunk_1_@dgsvj0_:bb.a
bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.15 = phi i32 [ %i.aco, %bb.dx ], [ %.1112511496, %bb.dw ]
  %i.acp = fcmp olt double %i.pw, 0.000000e+00
  %spec.select1403 = select i1 %i.acp, i32 0, i32 %.15
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.loopexit1416
  %.41293 = phi i32 [ %.31292, %.loopexit1416 ], [ %.012891493, %bb.dy ]
  %.121285 = phi double [ %.111284, %.loopexit1416 ], [ %.812811494, %bb.dy ] ; 2 uses
  %.141270 = phi double [ %.131269, %.loopexit1416 ], [ %.912651495, %bb.dy ] ; 2 uses
  %.16 = phi i32 [ %.141254, %.loopexit1416 ], [ %spec.select1403, %bb.dy ] ; 2 uses
  %.13 = phi i32 [ %.12, %.loopexit1416 ], [ %.91497, %bb.dy ] ; 2 uses
  %indvars.iv.next1584 = add nsw i64 %indvars.iv1583, 1
  %.not1364.not = icmp slt i64 %indvars.iv1583, %i.pu
  br i1 %.not1364.not, label %bb.bx, label %._crit_edge1500, !llvm.loop !13

._crit_edge1500:                                  ; preds = %bb.dz, %.lr.ph1512
  %.81281.lcssa = phi double [ %.712801506, %.lr.ph1512 ], [ %.121285, %bb.dz ] ; 2 uses
  %.91265.lcssa = phi double [ %.812641507, %.lr.ph1512 ], [ %.141270, %bb.dz ] ; 2 uses
  %.111251.lcssa = phi i32 [ %.1012501508, %.lr.ph1512 ], [ %.16, %bb.dz ] ; 2 uses
  %.9.lcssa = phi i32 [ %.81509, %.lr.ph1512 ], [ %.13, %bb.dz ] ; 2 uses
  %i.acq = add i32 %.012381510, 1
  %indvars.iv.next1579 = add i32 %indvars.iv1578, %spec.select
  %exitcond1586.not = icmp eq i32 %.012381510, %.0
  br i1 %exitcond1586.not, label %.loopexit1419, label %.lr.ph1512, !llvm.loop !14

.loopexit1419:                                    ; preds = %._crit_edge1500, %._crit_edge1467, %bb.dt
  %.131286 = phi double [ %.11274.lcssa, %._crit_edge1467 ], [ %.101283, %bb.dt ], [ %.81281.lcssa, %._crit_edge1500 ] ; 2 uses
  %.151271 = phi double [ %.11257.lcssa, %._crit_edge1467 ], [ %.121268, %bb.dt ], [ %.91265.lcssa, %._crit_edge1500 ] ; 2 uses
  %.17 = phi i32 [ %.11241.lcssa, %._crit_edge1467 ], [ 0, %bb.dt ], [ %.111251.lcssa, %._crit_edge1500 ] ; 2 uses
  %.14 = phi i32 [ %.1.lcssa, %._crit_edge1467 ], [ %.11, %bb.dt ], [ %.9.lcssa, %._crit_edge1500 ] ; 2 uses
  %i.acr = load i32, ptr %2, align 4, !tbaa !20   ; 2 uses
  %.1404 = call i32 @llvm.smin.i32(i32 %i.po, i32 %i.acr) ; 2 uses
  %.not13721517.not = icmp slt i32 %i.bw, %.1404
  br i1 %.not13721517.not, label %iter.check, label %.loopexit1418

iter.check:                                       ; preds = %.loopexit1419
  %i.acs = sext i32 %.1404 to i64                 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.acs, i64 %i.bt)
  %i.act = add i64 %smax, 1
  %i.acu = sub i64 %i.act, %i.bt                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.acu, 4
  br i1 %min.iters.check, label %.lr.ph1520.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1693 = icmp ult i64 %i.acu, 16
  br i1 %min.iters.check1693, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acv = and i64 %i.acu, 12
  %n.vec = and i64 %i.acu, -16                    ; 4 uses
  %i.acw = add i64 %n.vec, %i.bt
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %gep, align 8, !tbaa !22 ; 3 uses
  %wide.load1694 = load <4 x double>, ptr %i.acx, align 8, !tbaa !22 ; 3 uses
  %wide.load1695 = load <4 x double>, ptr %i.acy, align 8, !tbaa !22 ; 3 uses
  %wide.load1696 = load <4 x double>, ptr %i.acz, align 8, !tbaa !22 ; 4 uses
  %i.ada = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.adb = fcmp oge <4 x double> %wide.load1694, zeroinitializer
  %i.adc = fcmp oge <4 x double> %wide.load1695, zeroinitializer
  %i.add = fcmp oge <4 x double> %wide.load1696, zeroinitializer
  %i.ade = fneg <4 x double> %wide.load
  %i.adf = fneg <4 x double> %wide.load1694
  %i.adg = fneg <4 x double> %wide.load1695
  %i.adh = fneg <4 x double> %wide.load1696
  %i.adi = select <4 x i1> %i.ada, <4 x double> %wide.load, <4 x double> %i.ade
  %i.adj = select <4 x i1> %i.adb, <4 x double> %wide.load1694, <4 x double> %i.adf
  %i.adk = select <4 x i1> %i.adc, <4 x double> %wide.load1695, <4 x double> %i.adg
  %i.adl = select <4 x i1> %i.add, <4 x double> %wide.load1696, <4 x double> %i.adh
  store <4 x double> %i.adi, ptr %gep, align 8, !tbaa !22
  store <4 x double> %i.adj, ptr %i.acx, align 8, !tbaa !22
  store <4 x double> %i.adk, ptr %i.acy, align 8, !tbaa !22
  store <4 x double> %i.adl, ptr %i.acz, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adm = icmp eq i64 %index.next, %n.vec
  br i1 %i.adm, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.adn = extractelement <4 x double> %wide.load1696, i64 3
  %cmp.n = icmp eq i64 %i.acu, %n.vec
  br i1 %cmp.n, label %..loopexit1418_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1520.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1697 = and i64 %i.acu, -4                 ; 3 uses
  %i.ado = add i64 %n.vec1697, %i.bt
  %invariant.gep1738 = getelementptr [8 x i8], ptr %i.l, i64 %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1698 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1700, %vec.epilog.vector.body ] ; 2 uses
  %gep1739 = getelementptr [8 x i8], ptr %invariant.gep1738, i64 %index1698 ; 2 uses
  %wide.load1699 = load <4 x double>, ptr %gep1739, align 8, !tbaa !22 ; 4 uses
  %i.adp = fcmp oge <4 x double> %wide.load1699, zeroinitializer
  %i.adq = fneg <4 x double> %wide.load1699
  %i.adr = select <4 x i1> %i.adp, <4 x double> %wide.load1699, <4 x double> %i.adq
  store <4 x double> %i.adr, ptr %gep1739, align 8, !tbaa !22
  %index.next1700 = add nuw i64 %index1698, 4     ; 2 uses
  %i.ads = icmp eq i64 %index.next1700, %n.vec1697
  br i1 %i.ads, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.adt = extractelement <4 x double> %wide.load1699, i64 3
  %cmp.n1701 = icmp eq i64 %i.acu, %n.vec1697
  br i1 %cmp.n1701, label %..loopexit1418_crit_edge, label %.lr.ph1520.preheader

.lr.ph1520.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1587.ph = phi i64 [ %i.bt, %iter.check ], [ %i.acw, %vec.epilog.iter.check ], [ %i.ado, %vec.epilog.middle.block ]
  br label %.lr.ph1520

.lr.ph1520:                                       ; preds = %.lr.ph1520.preheader, %.lr.ph1520
  %indvars.iv1587 = phi i64 [ %indvars.iv.next1588, %.lr.ph1520 ], [ %indvars.iv1587.ph, %.lr.ph1520.preheader ] ; 3 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1587 ; 2 uses
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !22 ; 4 uses
  %i.adw = fcmp oge double %i.adv, 0.000000e+00
  %i.adx = fneg double %i.adv
  %i.ady = select i1 %i.adw, double %i.adv, double %i.adx
  store double %i.ady, ptr %i.adu, align 8, !tbaa !22
  %indvars.iv.next1588 = add nsw i64 %indvars.iv1587, 1
  %.not1372.not = icmp slt i64 %indvars.iv1587, %i.acs
  br i1 %.not1372.not, label %.lr.ph1520, label %..loopexit1418_crit_edge, !llvm.loop !17

._crit_edge1530:                                  ; preds = %.loopexit1418, %bb.q
  %i.adz = phi i32 [ %i.bs, %bb.q ], [ %i.acr, %.loopexit1418 ] ; 3 uses
  %.01273.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.131286, %.loopexit1418 ] ; 3 uses
  %.01256.lcssa = phi double [ 0.000000e+00, %bb.q ], [ %.151271, %.loopexit1418 ]
  %.01240.lcssa = phi i32 [ 0, %bb.q ], [ %.17, %.loopexit1418 ] ; 2 uses
  %.01239.lcssa = phi i32 [ 0, %bb.q ], [ %.14, %.loopexit1418 ]
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aea
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !22 ; 2 uses
  %i.aed = fcmp olt double %i.aec, %i.ba
  %i.aee = fcmp ogt double %i.aec, %i.au
  %or.cond1405 = and i1 %i.aed, %i.aee
  br i1 %or.cond1405, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %._crit_edge1530
  %i.aef = mul nsw i32 %i.adz, %i.n
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr [8 x i8], ptr %i.p, i64 %i.aeg
  %i.aei = getelementptr i8, ptr %i.aeh, i64 8
  %i.aej = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.aei, ptr noundef nonnull @c__1) #5
  br label %bb.ec

bb.eb:                                            ; preds = %._crit_edge1530
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !22
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.aek = mul nsw i32 %i.adz, %i.n
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr [8 x i8], ptr %i.p, i64 %i.ael
  %i.aen = getelementptr i8, ptr %i.aem, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.aen, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #5
  %i.aeo = load double, ptr %i.i, align 8, !tbaa !22
  %i.aep = load double, ptr %i.e, align 8, !tbaa !22
  %i.aeq = call double @sqrt(double noundef %i.aep) #5
  %i.aer = fmul double %i.aeo, %i.aeq
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.sink1667 = phi double [ %i.aer, %bb.eb ], [ %i.aej, %bb.ea ]
  %i.aes = load i32, ptr %2, align 4, !tbaa !20   ; 4 uses
  %i.aet = sext i32 %i.aes to i64                 ; 2 uses
  %i.aeu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aet
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !22
  %i.aew = fmul double %.sink1667, %i.aev
  %i.aex = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aet
  store double %i.aew, ptr %i.aex, align 8, !tbaa !22
  %i.aey = icmp samesign ult i32 %.013051536, %.012871537
  %i.aez = fcmp ole double %.01273.lcssa, %i.bb
  %.not1357 = icmp sle i32 %.01239.lcssa, %i.aes
  %or.cond1672.not = select i1 %i.aez, i1 true, i1 %.not1357
  %i.afa = select i1 %i.aey, i1 %or.cond1672.not, i1 false
  %.11288 = select i1 %i.afa, i32 %.013051536, i32 %.012871537 ; 2 uses
  %i.afb = add nuw nsw i32 %.11288, 1
  %i.afc = icmp samesign ugt i32 %.013051536, %i.afb
  br i1 %i.afc, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.afd = sitofp i32 %i.aes to double            ; 2 uses
  %i.afe = load double, ptr %12, align 8, !tbaa !22 ; 2 uses
  %i.aff = fmul double %i.afe, %i.afd
  %i.afg = fcmp olt double %.01273.lcssa, %i.aff
  br i1 %i.afg, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.afh = fmul double %.01273.lcssa, %i.afd
  %i.afi = fmul double %.01256.lcssa, %i.afh
  %i.afj = fcmp uge double %i.afi, %i.afe
  %.not1358 = icmp slt i32 %.01240.lcssa, %17
  %or.cond1406 = select i1 %i.afj, i1 %.not1358, i1 false
  br i1 %or.cond1406, label %bb.eg, label %.loopexit1420

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %.not1358.old = icmp slt i32 %.01240.lcssa, %17
  br i1 %.not1358.old, label %bb.eg, label %.loopexit1420

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %i.afk = add nuw nsw i32 %.013051536, 1
  %.not1355.not = icmp slt i32 %.013051536, %i.bj
  br i1 %.not1355.not, label %bb.q, label %._crit_edge1540.loopexit, !llvm.loop !18

._crit_edge1540.loopexit:                         ; preds = %bb.eg
  %.pre1598 = load i32, ptr %13, align 4, !tbaa !20
  br label %._crit_edge1540

._crit_edge1540:                                  ; preds = %._crit_edge1540.loopexit, %bb.p
  %i.afl = phi i32 [ %.pre1598, %._crit_edge1540.loopexit ], [ %i.bj, %bb.p ]
  %i.afm = add nsw i32 %i.afl, -1
  br label %.loopexit1420

.loopexit1420:                                    ; preds = %bb.ee, %bb.ef, %._crit_edge1540
  %storemerge = phi i32 [ %i.afm, %._crit_edge1540 ], [ 0, %bb.ef ], [ 0, %bb.ee ]
  store i32 %storemerge, ptr %16, align 4, !tbaa !20
  %i.afn = load i32, ptr %2, align 4, !tbaa !20   ; 2 uses
  %i.afo = add nsw i32 %i.afn, -1                 ; 2 uses
  %.not13591541 = icmp slt i32 %i.afn, 2
  br i1 %.not13591541, label %.loopexit, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %.loopexit1420
  %i.afp = sext i32 %i.n to i64                   ; 2 uses
  br i1 %or.cond, label %.lr.ph1544.split.us.preheader, label %.lr.ph1544.split.preheader

.lr.ph1544.split.preheader:                       ; preds = %.lr.ph1544
  %i.afq = sext i32 %i.afo to i64
  br label %.lr.ph1544.split

.lr.ph1544.split.us.preheader:                    ; preds = %.lr.ph1544
  %i.afr = sext i32 %i.q to i64
  %i.afs = sext i32 %i.afo to i64
  br label %.lr.ph1544.split.us

.lr.ph1544.split.us:                              ; preds = %.lr.ph1544.split.us.preheader, %bb.ei
  %indvars.iv1593 = phi i64 [ 1, %.lr.ph1544.split.us.preheader ], [ %indvars.iv.next1594, %bb.ei ] ; 9 uses
  %i.aft = load i32, ptr %2, align 4, !tbaa !20
  %i.afu = trunc nuw nsw i64 %indvars.iv1593 to i32
  %reass.sub1546 = sub i32 %i.aft, %i.afu
  %i.afv = add i32 %reass.sub1546, 1
  store i32 %i.afv, ptr %i.b, align 4, !tbaa !20
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1593 ; 3 uses
  %i.afx = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.afw, ptr noundef nonnull @c__1) #5
  %i.afy = trunc i64 %indvars.iv1593 to i32
  %i.afz = add i32 %i.afy, -1
  %i.aga = add i32 %i.afz, %i.afx                 ; 4 uses
  %i.agb = zext i32 %i.aga to i64
  %.not1360.us = icmp eq i64 %indvars.iv1593, %i.agb
  br i1 %.not1360.us, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1544.split.us
  %i.agc = load double, ptr %i.afw, align 8, !tbaa !22
  %i.agd = sext i32 %i.aga to i64                 ; 2 uses
  %i.age = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.agd ; 2 uses
  %i.agf = load double, ptr %i.age, align 8, !tbaa !22
  store double %i.agf, ptr %i.afw, align 8, !tbaa !22
  store double %i.agc, ptr %i.age, align 8, !tbaa !22
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv1593 ; 2 uses
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !22 ; 2 uses
  store double %i.agh, ptr %i.h, align 8, !tbaa !22
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agd ; 2 uses
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !22
  store double %i.agj, ptr %i.agg, align 8, !tbaa !22
  store double %i.agh, ptr %i.agi, align 8, !tbaa !22
  %i.agk = mul nsw i64 %indvars.iv1593, %i.afp
  %i.agl = getelementptr [8 x i8], ptr %i.p, i64 %i.agk
  %i.agm = getelementptr i8, ptr %i.agl, i64 8
  %i.agn = mul nsw i32 %i.aga, %i.n
  %i.ago = sext i32 %i.agn to i64
  %i.agp = getelementptr [8 x i8], ptr %i.p, i64 %i.ago
  %i.agq = getelementptr i8, ptr %i.agp, i64 8
  call void @dswap_(ptr noundef nonnull %1, ptr noundef %i.agm, ptr noundef nonnull @c__1, ptr noundef %i.agq, ptr noundef nonnull @c__1) #5
  %i.agr = mul nsw i64 %indvars.iv1593, %i.afr
  %i.ags = getelementptr [8 x i8], ptr %i.s, i64 %i.agr
  %i.agt = getelementptr i8, ptr %i.ags, i64 8
  %i.agu = mul nsw i32 %i.aga, %i.q
  %i.agv = sext i32 %i.agu to i64
  %i.agw = getelementptr [8 x i8], ptr %i.s, i64 %i.agv
  %i.agx = getelementptr i8, ptr %i.agw, i64 8
  call void @dswap_(ptr noundef nonnull %i.k, ptr noundef %i.agt, ptr noundef nonnull @c__1, ptr noundef %i.agx, ptr noundef nonnull @c__1) #5
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph1544.split.us
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1
  %.not1359.us.not = icmp slt i64 %indvars.iv1593, %i.afs
  br i1 %.not1359.us.not, label %.lr.ph1544.split.us, label %.loopexit, !llvm.loop !19

.lr.ph1544.split:                                 ; preds = %.lr.ph1544.split.preheader, %bb.ek
  %indvars.iv1590 = phi i64 [ 1, %.lr.ph1544.split.preheader ], [ %indvars.iv.next1591, %bb.ek ] ; 8 uses
  %i.agy = load i32, ptr %2, align 4, !tbaa !20
  %i.agz = trunc nuw nsw i64 %indvars.iv1590 to i32
  %reass.sub1545 = sub i32 %i.agy, %i.agz
  %i.aha = add i32 %reass.sub1545, 1
  store i32 %i.aha, ptr %i.b, align 4, !tbaa !20
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1590 ; 3 uses
  %i.ahc = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ahb, ptr noundef nonnull @c__1) #5
  %i.ahd = trunc i64 %indvars.iv1590 to i32
  %i.ahe = add i32 %i.ahd, -1
  %i.ahf = add i32 %i.ahe, %i.ahc                 ; 3 uses
  %i.ahg = zext i32 %i.ahf to i64
  %.not1360 = icmp eq i64 %indvars.iv1590, %i.ahg
  br i1 %.not1360, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1544.split
  %i.ahh = load double, ptr %i.ahb, align 8, !tbaa !22
  %i.ahi = sext i32 %i.ahf to i64                 ; 2 uses
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ahi ; 2 uses
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !22
  store double %i.ahk, ptr %i.ahb, align 8, !tbaa !22
  store double %i.ahh, ptr %i.ahj, align 8, !tbaa !22
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv1590 ; 2 uses
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !22 ; 2 uses
  store double %i.ahm, ptr %i.h, align 8, !tbaa !22
  %i.ahn = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahi ; 2 uses
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !22
  store double %i.aho, ptr %i.ahl, align 8, !tbaa !22
  store double %i.ahm, ptr %i.ahn, align 8, !tbaa !22
  %i.ahp = mul nsw i64 %indvars.iv1590, %i.afp
  %i.ahq = getelementptr [8 x i8], ptr %i.p, i64 %i.ahp
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 8
  %i.ahs = mul nsw i32 %i.ahf, %i.n
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr [8 x i8], ptr %i.p, i64 %i.aht
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 8
  call void @dswap_(ptr noundef nonnull %1, ptr noundef %i.ahr, ptr noundef nonnull @c__1, ptr noundef %i.ahv, ptr noundef nonnull @c__1) #5
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph1544.split
  %indvars.iv.next1591 = add nuw nsw i64 %indvars.iv1590, 1
  %.not1359.not = icmp slt i64 %indvars.iv1590, %i.afq
  br i1 %.not1359.not, label %.lr.ph1544.split, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.ek, %bb.ei, %.loopexit1420, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drotm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23, !24, !25}
!16 = distinct !{!16, !23, !24, !25}
!17 = distinct !{!17, !23, !25, !24}
!18 = distinct !{!18, !23}
!19 = distinct !{!19, !23}
!20 = !{!5, !5, i64 0}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
