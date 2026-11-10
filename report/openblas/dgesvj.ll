Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgesvj?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DGESVJ\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SafeMinimum\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@c_b17 = internal global double 0.000000e+00, align 8
@c_b18 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c__0 = internal global i32 0, align 4
@c__2 = internal global i32 2, align 4

; Function Attrs: nounwind uwtable
define void @dgesvj_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 41 uses
  %i.b = alloca i32, align 4                      ; 31 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %i.e = alloca double, align 8                   ; 88 uses
  %i.f = alloca double, align 8                   ; 62 uses
  %i.g = alloca double, align 8                   ; 50 uses
  %i.h = alloca i32, align 4                      ; 28 uses
  %i.i = alloca double, align 8                   ; 19 uses
  %i.j = alloca i32, align 4                      ; 103 uses
  %i.k = alloca double, align 8                   ; 31 uses
  %i.l = alloca double, align 8                   ; 21 uses
  %i.m = alloca [5 x double], align 16            ; 12 uses
  %i.n = alloca double, align 8                   ; 14 uses
  %i.o = alloca i32, align 4                      ; 19 uses
  %i.p = alloca i32, align 4                      ; 20 uses
  %i.q = alloca double, align 8                   ; 17 uses
  %i.r = alloca double, align 8                   ; 16 uses
  %i.s = alloca i32, align 4                      ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #7
  %i.t = getelementptr inbounds i8, ptr %7, i64 -8 ; 45 uses
  %i.u = load i32, ptr %6, align 4, !tbaa !43     ; 52 uses
  %narrow1678 = xor i32 %i.u, -1
  %i.v = sext i32 %narrow1678 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %5, i64 %i.v ; 80 uses
  %i.x = load i32, ptr %10, align 4, !tbaa !43    ; 35 uses
  %narrow = xor i32 %i.x, -1
  %i.y = sext i32 %narrow to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %9, i64 %i.y ; 45 uses
  %i.aa = getelementptr inbounds i8, ptr %11, i64 -8 ; 71 uses
  %i.ab = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #7 ; 3 uses
  %i.ac = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #7 ; 2 uses
  %i.ad = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #7 ; 2 uses
  %i.ae = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %i.af = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #7 ; 2 uses
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.ah = icmp ne i32 %i.af, 0                    ; 3 uses
  %i.ai = icmp ne i32 %i.ag, 0                    ; 3 uses
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = icmp ne i32 %i.ab, 0                    ; 3 uses
  %i.al = icmp ne i32 %i.ac, 0                    ; 3 uses
  %or.cond3 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  %.not1616 = icmp eq i32 %i.am, 0
  br i1 %.not1616, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = icmp ne i32 %i.ad, 0                    ; 3 uses
  %i.ao = icmp ne i32 %i.ae, 0                    ; 11 uses
  %or.cond5 = select i1 %i.an, i1 true, i1 %i.ao  ; 16 uses
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  %.not1617 = icmp eq i32 %i.ap, 0
  br i1 %.not1617, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = load i32, ptr %3, align 4, !tbaa !43    ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %or.cond1681 = icmp ugt i32 %i.as, %i.aq
  br i1 %or.cond1681, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %6, align 4, !tbaa !43
  %i.au = icmp slt i32 %i.at, %i.aq
  br i1 %i.au, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %8, align 4, !tbaa !43    ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %10, align 4, !tbaa !43
  %i.ay = icmp slt i32 %i.ax, %i.as
  br i1 %i.ay, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %10, align 4, !tbaa !43
  %i.ba = icmp slt i32 %i.az, %i.av
  br i1 %i.ba, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load double, ptr %11, align 8, !tbaa !45
  %i.bc = fcmp ugt double %i.bb, 1.000000e+00
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !43
  %i.be = load i32, ptr %12, align 4, !tbaa !43
  %i.bf = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 6)
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.l, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.sink2068 = phi i32 [ -1, %bb.b ], [ -3, %bb.f ], [ -5, %bb.h ], [ -9, %bb.j ], [ -12, %bb.p ], [ -11, %bb.l ], [ -7, %bb.i ], [ -4, %bb.g ], [ -2, %bb.d ], [ -11, %bb.n ], [ -13, %bb.q ]
  %.ph.neg = phi i32 [ 1, %bb.b ], [ 3, %bb.f ], [ 5, %bb.h ], [ 9, %bb.j ], [ 12, %bb.p ], [ 11, %bb.l ], [ 7, %bb.i ], [ 4, %bb.g ], [ 2, %bb.d ], [ 11, %bb.n ], [ 13, %bb.q ]
  store i32 %.sink2068, ptr %13, align 4, !tbaa !43
  store i32 %.ph.neg, ptr %i.a, align 4, !tbaa !43
  %i.bh = call i32 @xerbla_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %bb.hp

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %13, align 4, !tbaa !43
  %i.bi = load i32, ptr %3, align 4, !tbaa !43    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.hp, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load i32, ptr %4, align 4, !tbaa !43
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.hp, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = load double, ptr %11, align 8, !tbaa !45
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bn = or i32 %i.ab, %i.ad
  %or.cond7 = icmp ne i32 %i.bn, 0
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ao
  %i.bo = sitofp i32 %i.bi to double              ; 2 uses
  br i1 %or.cond9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call double @sqrt(double noundef %i.bo) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.01549 = phi double [ %i.bm, %bb.v ], [ %i.bp, %bb.x ], [ %i.bo, %bb.w ]
  %i.bq = tail call double @dlamch_(ptr noundef nonnull @.str.8) #7 ; 5 uses
  store double %i.bq, ptr %i.n, align 8, !tbaa !45
  %i.br = tail call double @sqrt(double noundef %i.bq) #7 ; 5 uses
  %i.bs = tail call double @dlamch_(ptr noundef nonnull @.str.9) #7 ; 3 uses
  store double %i.bs, ptr %i.l, align 8, !tbaa !45
  %i.bt = tail call double @sqrt(double noundef %i.bs) #7 ; 7 uses
  %i.bu = fdiv double %i.bs, %i.bq                ; 7 uses
  %i.bv = tail call double @dlamch_(ptr noundef nonnull @.str.10) #7 ; 18 uses
  %i.bw = fdiv double 1.000000e+00, %i.bt         ; 6 uses
  %i.bx = load i32, ptr %3, align 4, !tbaa !43
  %i.by = load i32, ptr %4, align 4, !tbaa !43
  %i.bz = mul nsw i32 %i.by, %i.bx                ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %cdce.call, label %cdce.end, !prof !46

cdce.call:                                        ; preds = %bb.y
  %i.cb = sitofp i32 %i.bz to double
  %i.cc = tail call double @sqrt(double noundef %i.cb) #7 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.y, %cdce.call
  %i.cd = fdiv double 1.000000e+00, %i.br         ; 2 uses
  %i.ce = fmul double %.01549, %i.bq              ; 2 uses
  store double %i.ce, ptr %i.r, align 8, !tbaa !45
  %i.cf = tail call double @sqrt(double noundef %i.ce) #7
  %i.cg = load i32, ptr %3, align 4, !tbaa !43
  %i.ch = sitofp i32 %i.cg to double              ; 3 uses
  %i.ci = fmul double %i.bq, %i.ch
  %i.cj = fcmp ult double %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %cdce.end
  store i32 -4, ptr %13, align 4, !tbaa !43
  store i32 4, ptr %i.a, align 4, !tbaa !43
  %i.ck = call i32 @xerbla_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %bb.hp

bb.aa:                                            ; preds = %cdce.end
  br i1 %i.an, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i32, ptr %4, align 4, !tbaa !43
  store i32 %i.cl, ptr %i.s, align 4, !tbaa !43
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.s, ptr noundef nonnull %4, ptr noundef nonnull @c_b17, ptr noundef nonnull @c_b18, ptr noundef %9, ptr noundef nonnull %10) #7
  %.pre = load i32, ptr %3, align 4, !tbaa !43
  %.pre1993 = sitofp i32 %.pre to double
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.ao, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i32, ptr %8, align 4, !tbaa !43
  store i32 %i.cm, ptr %i.s, align 4, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.pre-phi = phi double [ %i.ch, %bb.ac ], [ %i.ch, %bb.ad ], [ %.pre1993, %bb.ab ]
  %i.cn = load i32, ptr %4, align 4, !tbaa !43
  %i.co = sitofp i32 %i.cn to double
  %i.cp = fmul nnan double %.pre-phi, %i.co
  %i.cq = call double @sqrt(double noundef %i.cp) #7
end_hunk_0
begin_hunk_1_@dgesvj_:bb.a
  %i.sx = sext i32 %i.si to i64
  %i.sy = getelementptr [8 x i8], ptr %i.aa, i64 %i.sx
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  call void @dgsvj0_(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, ptr noundef %i.so, ptr noundef nonnull %6, ptr noundef nonnull %i.sq, ptr noundef nonnull %i.sr, ptr noundef nonnull %i.s, ptr noundef %i.sw, ptr noundef nonnull %10, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull @c__1, ptr noundef %i.sz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.cf, %bb.ce, %._crit_edge1792
  %i.ta = add i32 %spec.select, -1
  %i.tb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.tc = sext i32 %i.u to i64                    ; 27 uses
  %i.td = sext i32 %i.x to i64                    ; 12 uses
  %.not16361869 = icmp slt i32 %.01462, 1
  %i.te = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.tf = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.gv
  %.015241883 = phi i32 [ 3, %bb.cg ], [ %.11525, %bb.gv ] ; 3 uses
  %.015431882 = phi i32 [ 1, %bb.cg ], [ %i.bos, %bb.gv ] ; 7 uses
  store i32 %.01462, ptr %i.a, align 4, !tbaa !43
  br i1 %.not16361869, label %.._crit_edge1877_crit_edge, label %.lr.ph1876

.._crit_edge1877_crit_edge:                       ; preds = %bb.ch
  %.pre1985.a = load i32, ptr %4, align 4, !tbaa !43
  br label %._crit_edge1877

.lr.ph1876:                                       ; preds = %bb.ch
  %.not1675 = icmp samesign ule i32 %.015431882, %.015241883 ; 3 uses
  br label %bb.ci

..loopexit1720_crit_edge:                         ; preds = %.lr.ph1866, %vec.epilog.middle.block2259, %middle.block2246
  %.lcssa = phi double [ %i.bmy, %vec.epilog.middle.block2259 ], [ %i.bms, %middle.block2246 ], [ %i.bna, %.lr.ph1866 ]
  %indvars.iv.next1965.lcssa = phi i64 [ %i.bmt, %vec.epilog.middle.block2259 ], [ %i.bmb, %middle.block2246 ], [ %indvars.iv.next1965, %.lr.ph1866 ]
  %i.tg = trunc nsw i64 %indvars.iv.next1965.lcssa to i32
  store double %.lcssa, ptr %i.e, align 8, !tbaa !45
  br label %.loopexit1720.a

.loopexit1720.a:                                  ; preds = %..loopexit1720_crit_edge, %.loopexit1721
  %storemerge1663.lcssa = phi i32 [ %i.tg, %..loopexit1720_crit_edge ], [ %i.tl, %.loopexit1721 ]
  store i32 %storemerge1663.lcssa, ptr %i.j, align 4, !tbaa !43
  %i.th = load i32, ptr %i.a, align 4, !tbaa !43
  %.not1636.not = icmp slt i32 %.014631874, %i.th
  %indvars.iv.next1956 = add i32 %indvars.iv1955, %spec.select
  %indvars.iv.next1963 = add i32 %indvars.iv1962, %spec.select
  br i1 %.not1636.not, label %bb.ci, label %._crit_edge1877, !llvm.loop !25

bb.ci:                                            ; preds = %.lr.ph1876, %.loopexit1720.a
  %indvars.iv1962 = phi i32 [ 1, %.lr.ph1876 ], [ %indvars.iv.next1963, %.loopexit1720.a ] ; 2 uses
  %indvars.iv1955 = phi i32 [ %spec.select, %.lr.ph1876 ], [ %indvars.iv.next1956, %.loopexit1720.a ] ; 2 uses
  %.014631874 = phi i32 [ 1, %.lr.ph1876 ], [ %i.api, %.loopexit1720.a ] ; 6 uses
  %.014661873 = phi i32 [ 0, %.lr.ph1876 ], [ %.14, %.loopexit1720.a ] ; 2 uses
  %.014731872 = phi i32 [ 0, %.lr.ph1876 ], [ %.17, %.loopexit1720.a ] ; 2 uses
  %.114901871 = phi double [ 0.000000e+00, %.lr.ph1876 ], [ %.161505, %.loopexit1720.a ] ; 2 uses
  %.115091870 = phi double [ 0.000000e+00, %.lr.ph1876 ], [ %.141522, %.loopexit1720.a ] ; 2 uses
  %i.ti = sext i32 %indvars.iv1962 to i64         ; 7 uses
  %i.tj = add nsw i32 %.014631874, -1
  %i.tk = mul nsw i32 %i.tj, %spec.select         ; 3 uses
  %i.tl = add nsw i32 %i.tk, 1                    ; 4 uses
  %i.tm = sub nsw i32 %.01462, %.014631874        ; 3 uses
  store i32 %i.tm, ptr %i.d, align 4, !tbaa !43
  %i.tn = call i32 @llvm.smin.i32(i32 %i.tm, i32 1) ; 2 uses
  store i32 %i.tn, ptr %i.b, align 4, !tbaa !43
  %.not16511806 = icmp slt i32 %i.tm, 0
  br i1 %.not16511806, label %._crit_edge1815, label %.lr.ph1814

.lr.ph1814:                                       ; preds = %bb.ci, %._crit_edge1801
  %i.to = phi i32 [ %i.apg, %._crit_edge1801 ], [ %i.tn, %bb.ci ]
  %.014641812 = phi i32 [ %i.tq, %._crit_edge1801 ], [ %i.tl, %bb.ci ]
  %.114671811 = phi i32 [ %.21468.lcssa, %._crit_edge1801 ], [ %.014661873, %bb.ci ] ; 2 uses
  %.114741810 = phi i32 [ %.21475.lcssa, %._crit_edge1801 ], [ %.014731872, %bb.ci ] ; 2 uses
  %.014881809 = phi i32 [ %i.aph, %._crit_edge1801 ], [ 0, %bb.ci ] ; 4 uses
  %.214911808 = phi double [ %.31492.lcssa, %._crit_edge1801 ], [ %.114901871, %bb.ci ] ; 2 uses
  %.215101807 = phi double [ %.31511.lcssa, %._crit_edge1801 ], [ %.115091870, %bb.ci ] ; 2 uses
  %i.tp = mul nsw i32 %.014881809, %spec.select
  %i.tq = add nsw i32 %.014641812, %i.tp          ; 5 uses
  %i.tr = add i32 %i.ta, %i.tq                    ; 5 uses
  store i32 %i.tr, ptr %i.d, align 4, !tbaa !43
  %i.ts = load i32, ptr %4, align 4, !tbaa !43
  %i.tt = add nsw i32 %i.ts, -1
  %i.tu = call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.tt) ; 2 uses
  store i32 %i.tu, ptr %i.c, align 4, !tbaa !43
  store i32 %i.tq, ptr %i.j, align 4, !tbaa !43
  %.not16671793 = icmp sgt i32 %i.tq, %i.tu
  br i1 %.not16671793, label %._crit_edge1801, label %.lr.ph1800

.lr.ph1800:                                       ; preds = %.lr.ph1814
  %i.tv = icmp eq i32 %.014881809, 0              ; 6 uses
  %i.tw = zext i1 %i.tv to i32                    ; 3 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1800, %bb.em
  %.214681798 = phi i32 [ %.114671811, %.lr.ph1800 ], [ %.7, %bb.em ] ; 3 uses
  %.214751797 = phi i32 [ %.114741810, %.lr.ph1800 ], [ %.91482, %bb.em ] ; 3 uses
  %.314921796 = phi double [ %.214911808, %.lr.ph1800 ], [ %.81497, %bb.em ] ; 3 uses
  %.315111795 = phi double [ %.215101807, %.lr.ph1800 ], [ %.71515, %bb.em ] ; 3 uses
  %storemerge16661794 = phi i32 [ %i.tq, %.lr.ph1800 ], [ %i.ape, %bb.em ] ; 2 uses
  %i.tx = load i32, ptr %4, align 4, !tbaa !43
  %reass.sub1907.a = sub i32 %i.tx, %storemerge16661794
  %i.ty = add i32 %reass.sub1907.a, 1
  store i32 %i.ty, ptr %i.d, align 4, !tbaa !43
  %i.tz = sext i32 %storemerge16661794 to i64
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.tz
  %i.ub = call i32 @idamax_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ua, ptr noundef nonnull @c__1) #7
  %i.uc = load i32, ptr %i.j, align 4, !tbaa !43  ; 3 uses
  %i.ud = add i32 %i.ub, -1                       ; 2 uses
  %i.ue = add i32 %i.ud, %i.uc                    ; 3 uses
  %.not1668 = icmp eq i32 %i.ud, 0
  br i1 %.not1668, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.uf = mul nsw i32 %i.uc, %i.u
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr [8 x i8], ptr %i.w, i64 %i.ug
  %i.ui = getelementptr i8, ptr %i.uh, i64 8
  %i.uj = mul nsw i32 %i.ue, %i.u
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr [8 x i8], ptr %i.w, i64 %i.uk
  %i.um = getelementptr i8, ptr %i.ul, i64 8
  call void @dswap_(ptr noundef nonnull %3, ptr noundef %i.ui, ptr noundef nonnull @c__1, ptr noundef %i.um, ptr noundef nonnull @c__1) #7
  br i1 %or.cond5, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.un = load i32, ptr %i.j, align 4, !tbaa !43
  %i.uo = mul nsw i32 %i.un, %i.x
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr [8 x i8], ptr %i.z, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 8
  %i.us = mul nsw i32 %i.ue, %i.x
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr [8 x i8], ptr %i.z, i64 %i.ut
  %i.uv = getelementptr i8, ptr %i.uu, i64 8
  call void @dswap_(ptr noundef nonnull %i.s, ptr noundef %i.ur, ptr noundef nonnull @c__1, ptr noundef %i.uv, ptr noundef nonnull @c__1) #7
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.uw = load i32, ptr %i.j, align 4, !tbaa !43  ; 2 uses
  %i.ux = sext i32 %i.uw to i64                   ; 2 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ux ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !45
  %i.va = sext i32 %i.ue to i64                   ; 2 uses
  %i.vb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.va ; 2 uses
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !45
  store double %i.vc, ptr %i.uy, align 8, !tbaa !45
  store double %i.uz, ptr %i.vb, align 8, !tbaa !45
  %i.vd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ux ; 2 uses
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !45 ; 2 uses
  store double %i.ve, ptr %i.i, align 8, !tbaa !45
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.va ; 2 uses
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !45
  store double %i.vg, ptr %i.vd, align 8, !tbaa !45
  store double %i.ve, ptr %i.vf, align 8, !tbaa !45
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %i.vh = phi i32 [ %i.uw, %bb.cm ], [ %i.uc, %bb.cj ] ; 4 uses
  %i.vi = sext i32 %i.vh to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.vi
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !45 ; 3 uses
  br i1 %i.tv, label %bb.co, label %._crit_edge1977

bb.co:                                            ; preds = %bb.cn
  %i.vl = fcmp olt double %i.vk, %i.bw
  %i.vm = fcmp ogt double %i.vk, %i.bt
  %or.cond1683 = and i1 %i.vl, %i.vm
  br i1 %or.cond1683, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vn = mul nsw i32 %i.vh, %i.u
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr [8 x i8], ptr %i.w, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 8
  %i.vr = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.vq, ptr noundef nonnull @c__1) #7
  br label %._crit_edge1977.sink.split

bb.cq:                                            ; preds = %bb.co
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !45
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !45
  %i.vs = mul nsw i32 %i.vh, %i.u
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr [8 x i8], ptr %i.w, i64 %i.vt
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  call void @dlassq_(ptr noundef nonnull %3, ptr noundef %i.vv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #7
  %i.vw = load double, ptr %i.i, align 8, !tbaa !45
  %i.vx = load double, ptr %i.f, align 8, !tbaa !45
  %i.vy = call double @sqrt(double noundef %i.vx) #7
  %i.vz = fmul double %i.vw, %i.vy
  br label %._crit_edge1977.sink.split

._crit_edge1977.sink.split:                       ; preds = %bb.cq, %bb.cp
  %.sink2074 = phi double [ %i.vr, %bb.cp ], [ %i.vz, %bb.cq ]
  %i.wa = load i32, ptr %i.j, align 4, !tbaa !43  ; 2 uses
  %i.wb = sext i32 %i.wa to i64                   ; 3 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.wb
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !45
  %i.we = fmul double %.sink2074, %i.wd           ; 2 uses
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.wb
  store double %i.we, ptr %i.wf, align 8, !tbaa !45
  br label %._crit_edge1977

._crit_edge1977:                                  ; preds = %._crit_edge1977.sink.split, %bb.cn
  %.pn.pre-phi = phi i64 [ %i.vi, %bb.cn ], [ %i.wb, %._crit_edge1977.sink.split ] ; 2 uses
  %storemerge1669 = phi double [ %i.vk, %bb.cn ], [ %i.we, %._crit_edge1977.sink.split ] ; 4 uses
  %i.wg = phi i32 [ %i.vh, %bb.cn ], [ %i.wa, %._crit_edge1977.sink.split ] ; 3 uses
  store double %storemerge1669, ptr %i.f, align 8, !tbaa !45
  %i.wh = fcmp ogt double %storemerge1669, 0.000000e+00
  br i1 %i.wh, label %bb.cr, label %bb.ek

bb.cr:                                            ; preds = %._crit_edge1977
  %i.wi = load i32, ptr %4, align 4, !tbaa !43
  %.1684 = call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.wi)
  store i32 %.1684, ptr %i.d, align 4, !tbaa !43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.eh, %bb.cr
  %indvars.iv1952 = phi i64 [ %indvars.iv.next1953, %bb.eh ], [ %.pn.pre-phi, %bb.cr ] ; 11 uses
  %.01544 = phi i32 [ %.21546, %bb.eh ], [ 0, %bb.cr ] ; 3 uses
  %.41512 = phi double [ %.51513, %bb.eh ], [ %.315111795, %bb.cr ] ; 5 uses
  %.41493 = phi double [ %.61495, %bb.eh ], [ %.314921796, %bb.cr ] ; 9 uses
  %.31476 = phi i32 [ %.71480, %bb.eh ], [ %.214751797, %bb.cr ] ; 4 uses
  %.31469 = phi i32 [ %.51471, %bb.eh ], [ %.214681798, %bb.cr ] ; 4 uses
  %indvars.iv.next1953 = add nsw i64 %indvars.iv1952, 1 ; 20 uses
  %i.wj = load i32, ptr %i.d, align 4, !tbaa !43
  %i.wk = sext i32 %i.wj to i64
  %.not1672.not = icmp slt i64 %indvars.iv1952, %i.wk
  br i1 %.not1672.not, label %bb.ct, label %.loopexit1719.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.wl = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1952 ; 6 uses
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !45 ; 7 uses
  store double %i.wm, ptr %i.g, align 8, !tbaa !45
  %i.wn = fcmp ogt double %i.wm, 0.000000e+00
  br i1 %i.wn, label %bb.cu, label %bb.eg

bb.cu:                                            ; preds = %bb.ct
  %i.wo = load double, ptr %i.f, align 8, !tbaa !45 ; 5 uses
  %i.wp = fcmp ult double %i.wm, 1.000000e+00
  br i1 %i.wp, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wq = fmul double %i.bu, %i.wo
  %i.wr = fcmp ole double %i.wq, %i.wm            ; 2 uses
  %i.ws = fdiv double %i.bv, %i.wm
  %i.wt = fcmp olt double %i.wo, %i.ws
  %i.wu = load i32, ptr %i.j, align 4, !tbaa !43
  %i.wv = mul nsw i32 %i.wu, %i.u
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr [8 x i8], ptr %i.w, i64 %i.ww
  %i.wy = getelementptr i8, ptr %i.wx, i64 8      ; 2 uses
  br i1 %i.wt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.wz = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.xa = getelementptr [8 x i8], ptr %i.w, i64 %i.wz
  %i.xb = getelementptr i8, ptr %i.xa, i64 8
  %i.xc = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.wy, ptr noundef nonnull @c__1, ptr noundef %i.xb, ptr noundef nonnull @c__1) #7
  %i.xd = load i32, ptr %i.j, align 4, !tbaa !43
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.xe
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !45
  %i.xh = fmul double %i.xc, %i.xg
  %i.xi = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !45
  %i.xk = fmul double %i.xh, %i.xj
  %i.xl = load double, ptr %i.g, align 8, !tbaa !45
  %i.xm = fdiv double %i.xk, %i.xl
  br label %bb.db

bb.cx:                                            ; preds = %bb.cv
  %i.xn = load i32, ptr %4, align 4, !tbaa !43
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr [8 x i8], ptr %i.aa, i64 %i.xo
  %i.xq = getelementptr i8, ptr %i.xp, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.wy, ptr noundef nonnull @c__1, ptr noundef %i.xq, ptr noundef nonnull @c__1) #7
  %i.xr = load i32, ptr %i.j, align 4, !tbaa !43
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.xs
  %i.xu = load i32, ptr %4, align 4, !tbaa !43
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr [8 x i8], ptr %i.aa, i64 %i.xv
  %i.xx = getelementptr i8, ptr %i.xw, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.xt, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.xx, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.xy = load i32, ptr %4, align 4, !tbaa !43
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr [8 x i8], ptr %i.aa, i64 %i.xz
  %i.yb = getelementptr i8, ptr %i.ya, i64 8
  %i.yc = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.yd = getelementptr [8 x i8], ptr %i.w, i64 %i.yc
  %i.ye = getelementptr i8, ptr %i.yd, i64 8
  %i.yf = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.yb, ptr noundef nonnull @c__1, ptr noundef %i.ye, ptr noundef nonnull @c__1) #7
  %i.yg = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !45
  %i.yi = fmul double %i.yf, %i.yh
  br label %bb.db

bb.cy:                                            ; preds = %bb.cu
  %i.yj = fdiv double %i.wm, %i.bu
  %i.yk = fcmp ole double %i.wo, %i.yj            ; 2 uses
  %i.yl = fdiv double %i.bu, %i.wm
  %i.ym = fcmp ogt double %i.wo, %i.yl
  br i1 %i.ym, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.yn = load i32, ptr %i.j, align 4, !tbaa !43
  %i.yo = mul nsw i32 %i.yn, %i.u
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr [8 x i8], ptr %i.w, i64 %i.yp
  %i.yr = getelementptr i8, ptr %i.yq, i64 8
  %i.ys = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.yt = getelementptr [8 x i8], ptr %i.w, i64 %i.ys
  %i.yu = getelementptr i8, ptr %i.yt, i64 8
  %i.yv = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.yr, ptr noundef nonnull @c__1, ptr noundef %i.yu, ptr noundef nonnull @c__1) #7
  %i.yw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.yx
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !45
  %i.za = fmul double %i.yv, %i.yz
  %i.zb = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !45
  %i.zd = fmul double %i.za, %i.zc
  %i.ze = load double, ptr %i.g, align 8, !tbaa !45
  %i.zf = fdiv double %i.zd, %i.ze
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.zg = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.zh = getelementptr [8 x i8], ptr %i.w, i64 %i.zg
  %i.zi = getelementptr i8, ptr %i.zh, i64 8
  %i.zj = load i32, ptr %4, align 4, !tbaa !43
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr [8 x i8], ptr %i.aa, i64 %i.zk
  %i.zm = getelementptr i8, ptr %i.zl, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.zi, ptr noundef nonnull @c__1, ptr noundef %i.zm, ptr noundef nonnull @c__1) #7
  %i.zn = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.zo = load i32, ptr %4, align 4, !tbaa !43
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr [8 x i8], ptr %i.aa, i64 %i.zp
  %i.zr = getelementptr i8, ptr %i.zq, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.zn, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.zr, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.zs = load i32, ptr %4, align 4, !tbaa !43
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr [8 x i8], ptr %i.aa, i64 %i.zt
  %i.zv = getelementptr i8, ptr %i.zu, i64 8
  %i.zw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.zx = mul nsw i32 %i.zw, %i.u
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr [8 x i8], ptr %i.w, i64 %i.zy
  %i.aaa = getelementptr i8, ptr %i.zz, i64 8
  %i.aab = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.zv, ptr noundef nonnull @c__1, ptr noundef %i.aaa, ptr noundef nonnull @c__1) #7
  %i.aac = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aad
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !45
  %i.aag = fmul double %i.aab, %i.aaf
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %bb.cw, %bb.cx
  %.sink2081 = phi ptr [ %i.f, %bb.cz ], [ %i.f, %bb.da ], [ %i.f, %bb.cw ], [ %i.g, %bb.cx ]
  %.sink2079 = phi double [ %i.zf, %bb.cz ], [ %i.aag, %bb.da ], [ %i.xm, %bb.cw ], [ %i.yi, %bb.cx ]
  %.01531.in = phi i1 [ %i.yk, %bb.cz ], [ %i.yk, %bb.da ], [ %i.wr, %bb.cw ], [ %i.wr, %bb.cx ]
  %i.aah = load double, ptr %.sink2081, align 8, !tbaa !45
  %i.aai = fdiv double %.sink2079, %i.aah         ; 9 uses
  store double %.41512, ptr %i.e, align 8, !tbaa !45
  %i.aaj = fcmp oge double %i.aai, 0.000000e+00   ; 2 uses
  %i.aak = fneg double %i.aai                     ; 3 uses
  %i.aal = select i1 %i.aaj, double %i.aai, double %i.aak ; 3 uses
  %i.aam = fcmp oge double %.41512, %i.aal
  %i.aan = select i1 %i.aam, double %.41512, double %i.aal ; 3 uses
  %i.aao = load double, ptr %i.r, align 8, !tbaa !45
  %i.aap = fcmp ogt double %i.aal, %i.aao
  br i1 %i.aap, label %bb.dc, label %bb.ef

bb.dc:                                            ; preds = %bb.db
  %.11545 = select i1 %i.tv, i32 0, i32 %.01544   ; 2 uses
  %.41477 = select i1 %i.tv, i32 0, i32 %.31476   ; 2 uses
  %.41470 = add nsw i32 %.31469, %i.tw            ; 2 uses
  br i1 %.01531.in, label %bb.dd, label %bb.dv

bb.dd:                                            ; preds = %bb.dc
  %i.aaq = load double, ptr %i.g, align 8, !tbaa !45 ; 3 uses
  %i.aar = load double, ptr %i.f, align 8, !tbaa !45 ; 3 uses
  %i.aas = fdiv double %i.aaq, %i.aar             ; 3 uses
  %i.aat = fdiv double %i.aar, %i.aaq             ; 3 uses
  %i.aau = fsub double %i.aas, %i.aat             ; 4 uses
  store double %i.aau, ptr %i.e, align 8, !tbaa !45
  %i.aav = fcmp oge double %i.aau, 0.000000e+00
  %i.aaw = fneg double %i.aau
  %i.aax = select i1 %i.aav, double %i.aau, double %i.aaw
  %i.aay = fmul double %i.aax, -5.000000e-01
  %i.aaz = fdiv double %i.aay, %i.aai             ; 5 uses
  %i.aba = call double @llvm.fabs.f64(double %i.aaz)
  %i.abb = fcmp ogt double %i.aba, %i.cd
  br i1 %i.abb, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.abc = fdiv double 5.000000e-01, %i.aaz       ; 3 uses
  store double %i.abc, ptr %i.k, align 8, !tbaa !45
  %i.abd = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.abe
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !45 ; 2 uses
  %i.abh = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !45 ; 2 uses
end_hunk_1
begin_hunk_2_@dgesvj_:bb.a
  %i.alc = getelementptr i8, ptr %i.alb, i64 8
  %i.ald = mul nsw i64 %indvars.iv.next1953, %i.td
  %i.ale = getelementptr [8 x i8], ptr %i.z, i64 %i.ald
  %i.alf = getelementptr i8, ptr %i.ale, i64 8    ; 2 uses
  call void @daxpy_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.e, ptr noundef %i.alc, ptr noundef nonnull @c__1, ptr noundef %i.alf, ptr noundef nonnull @c__1) #7
  store double %i.akk, ptr %i.e, align 8, !tbaa !45
  %i.alg = load i32, ptr %i.j, align 4, !tbaa !43
  %i.alh = mul nsw i32 %i.alg, %i.x
  %i.ali = sext i32 %i.alh to i64
  %i.alj = getelementptr [8 x i8], ptr %i.z, i64 %i.ali
  %i.alk = getelementptr i8, ptr %i.alj, i64 8
  call void @daxpy_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.e, ptr noundef %i.alf, ptr noundef nonnull @c__1, ptr noundef %i.alk, ptr noundef nonnull @c__1) #7
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dc
  %i.all = load i32, ptr %i.j, align 4, !tbaa !43
  %i.alm = mul nsw i32 %i.all, %i.u
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr [8 x i8], ptr %i.w, i64 %i.aln
  %i.alp = getelementptr i8, ptr %i.alo, i64 8
  %i.alq = load i32, ptr %4, align 4, !tbaa !43
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr [8 x i8], ptr %i.aa, i64 %i.alr
  %i.alt = getelementptr i8, ptr %i.als, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.alp, ptr noundef nonnull @c__1, ptr noundef %i.alt, ptr noundef nonnull @c__1) #7
  %i.alu = load i32, ptr %4, align 4, !tbaa !43
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr [8 x i8], ptr %i.aa, i64 %i.alv
  %i.alx = getelementptr i8, ptr %i.alw, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b18, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.alx, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.aly = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.alz = getelementptr [8 x i8], ptr %i.w, i64 %i.aly
  %i.ama = getelementptr i8, ptr %i.alz, i64 8    ; 3 uses
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b18, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.ama, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.amb = load i32, ptr %i.j, align 4, !tbaa !43
  %i.amc = sext i32 %i.amb to i64
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.amc
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !45
  %i.amf = fmul double %i.ame, %i.aak
  %i.amg = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !45
  %i.ami = fdiv double %i.amf, %i.amh
  store double %i.ami, ptr %i.i, align 8, !tbaa !45
  %i.amj = load i32, ptr %4, align 4, !tbaa !43
  %i.amk = sext i32 %i.amj to i64
  %i.aml = getelementptr [8 x i8], ptr %i.aa, i64 %i.amk
  %i.amm = getelementptr i8, ptr %i.aml, i64 8
  call void @daxpy_(ptr noundef nonnull %3, ptr noundef nonnull %i.i, ptr noundef %i.amm, ptr noundef nonnull @c__1, ptr noundef %i.ama, ptr noundef nonnull @c__1) #7
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b18, ptr noundef nonnull %i.g, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.ama, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !45
  %i.amn = call double @llvm.fmuladd.f64(double %i.aak, double %i.aai, double 1.000000e+00) ; 2 uses
  %i.amo = load double, ptr %i.g, align 8, !tbaa !45
  %i.amp = fcmp ole double %i.amn, 0.000000e+00
  %i.amq = select i1 %i.amp, double 0.000000e+00, double %i.amn
  %i.amr = call double @sqrt(double noundef %i.amq) #7
  %i.ams = fmul double %i.amo, %i.amr
  store double %i.ams, ptr %i.wl, align 8, !tbaa !45
  %i.amt = load double, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.amu = fcmp oge double %.41493, %i.amt
  %i.amv = select i1 %i.amu, double %.41493, double %i.amt
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dg, %bb.dp, %bb.do, %bb.dt, %bb.du, %bb.dr, %bb.ds, %bb.dk, %bb.dj, %bb.dm, %bb.dl, %bb.dv
  %.51494 = phi double [ %i.adb, %bb.dg ], [ %i.adq, %bb.dk ], [ %i.adq, %bb.dj ], [ %i.adq, %bb.dm ], [ %i.adq, %bb.dl ], [ %i.adq, %bb.dp ], [ %i.adq, %bb.do ], [ %i.adq, %bb.ds ], [ %i.adq, %bb.dr ], [ %i.adq, %bb.du ], [ %i.adq, %bb.dt ], [ %i.amv, %bb.dv ] ; 2 uses
  %i.amw = load double, ptr %i.wl, align 8, !tbaa !45
  %i.amx = load double, ptr %i.g, align 8, !tbaa !45 ; 3 uses
  %i.amy = fdiv double %i.amw, %i.amx             ; 3 uses
  store double %i.amy, ptr %i.e, align 8, !tbaa !45
  %i.amz = fmul double %i.amy, %i.amy
  %i.ana = fcmp ugt double %i.amz, %i.br
  br i1 %i.ana, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.anb = fcmp olt double %i.amx, %i.bw
  %i.anc = fcmp ogt double %i.amx, %i.bt
  %or.cond1685 = and i1 %i.anb, %i.anc
  br i1 %or.cond1685, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.and = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.ane = getelementptr [8 x i8], ptr %i.w, i64 %i.and
  %i.anf = getelementptr i8, ptr %i.ane, i64 8
  %i.ang = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.anf, ptr noundef nonnull @c__1) #7
  br label %.sink.split

bb.dz:                                            ; preds = %bb.dx
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !45
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !45
  %i.anh = mul nsw i64 %indvars.iv.next1953, %i.tc
  %i.ani = getelementptr [8 x i8], ptr %i.w, i64 %i.anh
  %i.anj = getelementptr i8, ptr %i.ani, i64 8
  call void @dlassq_(ptr noundef nonnull %3, ptr noundef %i.anj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g) #7
  %i.ank = load double, ptr %i.k, align 8, !tbaa !45
  %i.anl = load double, ptr %i.g, align 8, !tbaa !45
  %i.anm = call double @sqrt(double noundef %i.anl) #7
  %i.ann = fmul double %i.ank, %i.anm
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dz, %bb.dy
  %.sink2083 = phi double [ %i.ang, %bb.dy ], [ %i.ann, %bb.dz ]
  %i.ano = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1952
  %i.anp = load double, ptr %i.ano, align 8, !tbaa !45
  %i.anq = fmul double %.sink2083, %i.anp
  store double %i.anq, ptr %i.wl, align 8, !tbaa !45
  br label %bb.ea

bb.ea:                                            ; preds = %.sink.split, %bb.dw
  %i.anr = load double, ptr %i.f, align 8, !tbaa !45 ; 3 uses
  %i.ans = fdiv double %i.anr, %i.wo
  %i.ant = fcmp ugt double %i.ans, %i.br
  br i1 %i.ant, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.anu = fcmp olt double %i.anr, %i.bw
  %i.anv = fcmp ogt double %i.anr, %i.bt
  %or.cond1686 = and i1 %i.anu, %i.anv
  br i1 %or.cond1686, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.anw = load i32, ptr %i.j, align 4, !tbaa !43
  %i.anx = mul nsw i32 %i.anw, %i.u
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr [8 x i8], ptr %i.w, i64 %i.any
  %i.aoa = getelementptr i8, ptr %i.anz, i64 8
  %i.aob = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.aoa, ptr noundef nonnull @c__1) #7
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !45
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !45
  %i.aoc = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aod = mul nsw i32 %i.aoc, %i.u
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = getelementptr [8 x i8], ptr %i.w, i64 %i.aoe
  %i.aog = getelementptr i8, ptr %i.aof, i64 8
  call void @dlassq_(ptr noundef nonnull %3, ptr noundef %i.aog, ptr noundef nonnull @c__1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #7
  %i.aoh = load double, ptr %i.k, align 8, !tbaa !45
  %i.aoi = load double, ptr %i.f, align 8, !tbaa !45
  %i.aoj = call double @sqrt(double noundef %i.aoi) #7
  %i.aok = fmul double %i.aoh, %i.aoj
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sink2086 = phi double [ %i.aok, %bb.ed ], [ %i.aob, %bb.ec ]
  %i.aol = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aom = sext i32 %i.aol to i64                 ; 2 uses
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aom
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !45
  %i.aop = fmul double %.sink2086, %i.aoo         ; 2 uses
  store double %i.aop, ptr %i.f, align 8, !tbaa !45
  %i.aoq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aom
  store double %i.aop, ptr %i.aoq, align 8, !tbaa !45
  br label %bb.eh

bb.ef:                                            ; preds = %bb.db
  %spec.select1687 = add nsw i32 %.31476, %i.tw
  %i.aor = add nsw i32 %.01544, 1
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ct
  %spec.select1688 = add nsw i32 %.31476, %i.tw
  %i.aos = add nsw i32 %.01544, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.ee, %bb.ea, %bb.eg
  %.21546 = phi i32 [ %.11545, %bb.ee ], [ %.11545, %bb.ea ], [ %i.aor, %bb.ef ], [ %i.aos, %bb.eg ] ; 2 uses
  %.51513 = phi double [ %i.aan, %bb.ee ], [ %i.aan, %bb.ea ], [ %i.aan, %bb.ef ], [ %.41512, %bb.eg ] ; 3 uses
  %.61495 = phi double [ %.51494, %bb.ee ], [ %.51494, %bb.ea ], [ %.41493, %bb.ef ], [ %.41493, %bb.eg ] ; 3 uses
  %.71480 = phi i32 [ %.41477, %bb.ee ], [ %.41477, %bb.ea ], [ %spec.select1687, %bb.ef ], [ %spec.select1688, %bb.eg ]
  %.51471 = phi i32 [ %.41470, %bb.ee ], [ %.41470, %bb.ea ], [ %.31469, %bb.ef ], [ %.31469, %bb.eg ] ; 3 uses
  %i.aot = icmp sgt i32 %.21546, %i.mv
  %or.cond1689 = select i1 %.not1675, i1 %i.aot, i1 false
  br i1 %or.cond1689, label %bb.ei, label %bb.cs, !llvm.loop !26

bb.ei:                                            ; preds = %bb.eh
  %.pre1980.a = load double, ptr %i.f, align 8, !tbaa !45 ; 2 uses
  br i1 %i.tv, label %bb.ej, label %.loopexit1719

bb.ej:                                            ; preds = %bb.ei
  %i.aou = fneg double %.pre1980.a                ; 2 uses
  store double %i.aou, ptr %i.f, align 8, !tbaa !45
  br label %.loopexit1719

.loopexit1719.loopexit:                           ; preds = %bb.cs
  %.pre1979 = load double, ptr %i.f, align 8, !tbaa !45
  br label %.loopexit1719

.loopexit1719:                                    ; preds = %.loopexit1719.loopexit, %bb.ei, %bb.ej
  %i.aov = phi double [ %.pre1980.a, %bb.ei ], [ %i.aou, %bb.ej ], [ %.pre1979, %.loopexit1719.loopexit ]
  %.61514 = phi double [ %.51513, %bb.ei ], [ %.51513, %bb.ej ], [ %.41512, %.loopexit1719.loopexit ]
  %.71496 = phi double [ %.61495, %bb.ei ], [ %.61495, %bb.ej ], [ %.41493, %.loopexit1719.loopexit ]
  %.81481 = phi i32 [ 0, %bb.ei ], [ 0, %bb.ej ], [ %.31476, %.loopexit1719.loopexit ]
  %.61472 = phi i32 [ %.51471, %bb.ei ], [ %.51471, %bb.ej ], [ %.31469, %.loopexit1719.loopexit ]
  %i.aow = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aox
  store double %i.aov, ptr %i.aoy, align 8, !tbaa !45
  br label %bb.em

bb.ek:                                            ; preds = %._crit_edge1977
  %storemerge1669.in = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pn.pre-phi
  store double %storemerge1669, ptr %storemerge1669.in, align 8, !tbaa !45
  %i.aoz = fcmp oeq double %storemerge1669, 0.000000e+00
  %or.cond19 = and i1 %i.tv, %i.aoz
  br i1 %or.cond19, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 %i.tr, ptr %i.d, align 4, !tbaa !43
  %i.apa = load i32, ptr %4, align 4, !tbaa !43
  %.1690 = call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.apa)
  %i.apb = sub i32 %.214751797, %i.wg
  %i.apc = add i32 %i.apb, %.1690
  br label %bb.em

bb.em:                                            ; preds = %.loopexit1719, %bb.el, %bb.ek
  %i.apd = phi i32 [ %i.aow, %.loopexit1719 ], [ %i.wg, %bb.el ], [ %i.wg, %bb.ek ] ; 2 uses
  %.71515 = phi double [ %.61514, %.loopexit1719 ], [ %.315111795, %bb.el ], [ %.315111795, %bb.ek ] ; 2 uses
  %.81497 = phi double [ %.71496, %.loopexit1719 ], [ %.314921796, %bb.el ], [ %.314921796, %bb.ek ] ; 2 uses
  %.91482 = phi i32 [ %.81481, %.loopexit1719 ], [ %i.apc, %bb.el ], [ %.214751797, %bb.ek ] ; 2 uses
  %.7 = phi i32 [ %.61472, %.loopexit1719 ], [ %.214681798, %bb.el ], [ %.214681798, %bb.ek ] ; 2 uses
  %i.ape = add nsw i32 %i.apd, 1                  ; 2 uses
  store i32 %i.ape, ptr %i.j, align 4, !tbaa !43
  %i.apf = load i32, ptr %i.c, align 4, !tbaa !43
  %.not1667.not = icmp slt i32 %i.apd, %i.apf
  br i1 %.not1667.not, label %bb.cj, label %._crit_edge1801.loopexit, !llvm.loop !27

._crit_edge1801.loopexit:                         ; preds = %bb.em
  %.pre1981.a = load i32, ptr %i.b, align 4, !tbaa !43
  br label %._crit_edge1801

._crit_edge1801:                                  ; preds = %._crit_edge1801.loopexit, %.lr.ph1814
  %i.apg = phi i32 [ %i.to, %.lr.ph1814 ], [ %.pre1981.a, %._crit_edge1801.loopexit ] ; 2 uses
  %.31511.lcssa = phi double [ %.215101807, %.lr.ph1814 ], [ %.71515, %._crit_edge1801.loopexit ] ; 2 uses
  %.31492.lcssa = phi double [ %.214911808, %.lr.ph1814 ], [ %.81497, %._crit_edge1801.loopexit ] ; 2 uses
  %.21475.lcssa = phi i32 [ %.114741810, %.lr.ph1814 ], [ %.91482, %._crit_edge1801.loopexit ] ; 2 uses
  %.21468.lcssa = phi i32 [ %.114671811, %.lr.ph1814 ], [ %.7, %._crit_edge1801.loopexit ] ; 2 uses
  %i.aph = add nuw nsw i32 %.014881809, 1
  %.not1651.not = icmp slt i32 %.014881809, %i.apg
  br i1 %.not1651.not, label %.lr.ph1814, label %._crit_edge1815, !llvm.loop !28

._crit_edge1815:                                  ; preds = %._crit_edge1801, %bb.ci
  %.21510.lcssa = phi double [ %.115091870, %bb.ci ], [ %.31511.lcssa, %._crit_edge1801 ] ; 2 uses
  %.21491.lcssa = phi double [ %.114901871, %bb.ci ], [ %.31492.lcssa, %._crit_edge1801 ] ; 2 uses
  %.11474.lcssa = phi i32 [ %.014731872, %bb.ci ], [ %.21475.lcssa, %._crit_edge1801 ] ; 2 uses
  %.11467.lcssa = phi i32 [ %.014661873, %bb.ci ], [ %.21468.lcssa, %._crit_edge1801 ] ; 2 uses
  store i32 %.01462, ptr %i.b, align 4, !tbaa !43
  %i.api = add nuw nsw i32 %.014631874, 1         ; 2 uses
  %.not16521851.not = icmp slt i32 %.014631874, %.01462
  %i.apj = mul i32 %.014631874, %spec.select      ; 4 uses
  br i1 %.not16521851.not, label %.lr.ph1858, label %.loopexit1721

.lr.ph1858:                                       ; preds = %._crit_edge1815, %._crit_edge1846
  %i.apk = phi i32 [ %i.blu, %._crit_edge1846 ], [ %.01462, %._crit_edge1815 ]
  %indvars.iv1957 = phi i32 [ %indvars.iv.next1958, %._crit_edge1846 ], [ %indvars.iv1955, %._crit_edge1815 ] ; 2 uses
  %.014651856 = phi i32 [ %i.blv, %._crit_edge1846 ], [ %i.api, %._crit_edge1815 ] ; 4 uses
  %.81855 = phi i32 [ %.9.lcssa, %._crit_edge1846 ], [ %.11467.lcssa, %._crit_edge1815 ] ; 2 uses
  %.1014831854 = phi i32 [ %.111484.lcssa, %._crit_edge1846 ], [ %.11474.lcssa, %._crit_edge1815 ] ; 2 uses
  %.914981853 = phi double [ %.101499.lcssa, %._crit_edge1846 ], [ %.21491.lcssa, %._crit_edge1815 ] ; 2 uses
  %.815161852 = phi double [ %.91517.lcssa, %._crit_edge1846 ], [ %.21510.lcssa, %._crit_edge1815 ] ; 2 uses
  %i.apl = sext i32 %indvars.iv1957 to i64
  %i.apm = add nsw i32 %.014651856, -1
  %i.apn = mul nsw i32 %i.apm, %spec.select       ; 2 uses
  store i32 %i.apj, ptr %i.d, align 4, !tbaa !43
  %i.apo = load i32, ptr %4, align 4, !tbaa !43
  %.1691 = call i32 @llvm.smin.i32(i32 %i.apj, i32 %i.apo) ; 3 uses
  store i32 %.1691, ptr %i.c, align 4, !tbaa !43
  store i32 %i.tl, ptr %i.j, align 4, !tbaa !43
  %.not16551837.not = icmp slt i32 %i.tk, %.1691
  br i1 %.not16551837.not, label %.lr.ph1845, label %._crit_edge1846

.lr.ph1845:                                       ; preds = %.lr.ph1858
  %i.app = mul i32 %.014651856, %spec.select      ; 3 uses
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph1845, %bb.go
  %i.apq = phi i32 [ %.1691, %.lr.ph1845 ], [ %i.blr, %bb.go ]
  %.91843 = phi i32 [ %.81855, %.lr.ph1845 ], [ %.13, %bb.go ] ; 3 uses
  %.1114841842 = phi i32 [ %.1014831854, %.lr.ph1845 ], [ %.16, %bb.go ] ; 4 uses
  %.1014991841 = phi double [ %.914981853, %.lr.ph1845 ], [ %.151504, %bb.go ] ; 3 uses
  %.915171840 = phi double [ %.815161852, %.lr.ph1845 ], [ %.131521, %bb.go ] ; 3 uses
  %.015261839 = phi i32 [ 0, %.lr.ph1845 ], [ %.41530, %bb.go ] ; 3 uses
  %storemerge16541838 = phi i32 [ %i.tl, %.lr.ph1845 ], [ %i.blt, %bb.go ] ; 2 uses
  %i.apr = sext i32 %storemerge16541838 to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.apr
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !45 ; 5 uses
  store double %i.apt, ptr %i.f, align 8, !tbaa !45
  %i.apu = fcmp ogt double %i.apt, 0.000000e+00
  br i1 %i.apu, label %bb.eo, label %bb.gl

bb.eo:                                            ; preds = %bb.en
  %i.apv = load i32, ptr %4, align 4, !tbaa !43
  %.1692 = call i32 @llvm.smin.i32(i32 %i.app, i32 %i.apv) ; 2 uses
  store i32 %.1692, ptr %i.d, align 4, !tbaa !43
  %.not16581820.not = icmp slt i32 %i.apn, %.1692
  br i1 %.not16581820.not, label %.lr.ph1831, label %.loopexit1718

bb.ep:                                            ; preds = %bb.gj
  %i.apw = load i32, ptr %i.d, align 4, !tbaa !43
  %i.apx = sext i32 %i.apw to i64
  %.not1658.not = icmp slt i64 %indvars.iv.next1960, %i.apx
  br i1 %.not1658.not, label %.lr.ph1831, label %.loopexit1718.loopexit, !llvm.loop !29

.lr.ph1831:                                       ; preds = %bb.eo, %bb.ep
  %indvars.iv1959 = phi i64 [ %indvars.iv.next1960, %bb.ep ], [ %i.apl, %bb.eo ] ; 11 uses
  %.101829 = phi i32 [ %.11, %bb.ep ], [ %.91843, %bb.eo ] ; 3 uses
  %.1214851828 = phi i32 [ %.131486, %bb.ep ], [ %.1114841842, %bb.eo ] ; 2 uses
  %.1115001827 = phi double [ %.131502, %bb.ep ], [ %.1014991841, %bb.eo ] ; 10 uses
  %.1015181826 = phi double [ %.111519, %bb.ep ], [ %.915171840, %bb.eo ] ; 4 uses
  %.115271825 = phi i32 [ %.21528, %bb.ep ], [ %.015261839, %bb.eo ] ; 4 uses
  %.315471821 = phi i32 [ %.41548, %bb.ep ], [ 0, %bb.eo ] ; 2 uses
  %indvars.iv.next1960 = add nsw i64 %indvars.iv1959, 1 ; 22 uses
  %i.apy = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1959 ; 6 uses
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !45 ; 10 uses
  store double %i.apz, ptr %i.g, align 8, !tbaa !45
  %i.aqa = fcmp ogt double %i.apz, 0.000000e+00
  br i1 %i.aqa, label %bb.eq, label %bb.gg

bb.eq:                                            ; preds = %.lr.ph1831
  %i.aqb = load double, ptr %i.f, align 8, !tbaa !45 ; 9 uses
  %i.aqc = fcmp ult double %i.apz, 1.000000e+00
  %i.aqd = fcmp ult double %i.aqb, %i.apz         ; 2 uses
  br i1 %i.aqc, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aqe = fmul double %i.bu, %i.aqb
  %i.aqf = fcmp ole double %i.aqe, %i.apz
  %i.aqg = fmul double %i.bu, %i.apz
  %i.aqh = fcmp ole double %i.aqg, %i.aqb
  %.11532.in = select i1 %i.aqd, i1 %i.aqh, i1 %i.aqf ; 2 uses
  %i.aqi = fdiv double %i.bv, %i.apz
  %i.aqj = fcmp olt double %i.aqb, %i.aqi
  %i.aqk = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aql = mul nsw i32 %i.aqk, %i.u
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr [8 x i8], ptr %i.w, i64 %i.aqm
  %i.aqo = getelementptr i8, ptr %i.aqn, i64 8    ; 2 uses
  br i1 %i.aqj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aqp = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.aqq = getelementptr [8 x i8], ptr %i.w, i64 %i.aqp
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 8
  %i.aqs = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.aqo, ptr noundef nonnull @c__1, ptr noundef %i.aqr, ptr noundef nonnull @c__1) #7
  %i.aqt = load i32, ptr %i.j, align 4, !tbaa !43
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aqu
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !45
  %i.aqx = fmul double %i.aqs, %i.aqw
  %i.aqy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !45
  %i.ara = fmul double %i.aqx, %i.aqz
  %i.arb = load double, ptr %i.g, align 8, !tbaa !45
  %i.arc = fdiv double %i.ara, %i.arb
  br label %bb.ex

bb.et:                                            ; preds = %bb.er
  %i.ard = load i32, ptr %4, align 4, !tbaa !43
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr [8 x i8], ptr %i.aa, i64 %i.are
  %i.arg = getelementptr i8, ptr %i.arf, i64 8
  call void @dcopy_(ptr noundef nonnull %3, ptr noundef %i.aqo, ptr noundef nonnull @c__1, ptr noundef %i.arg, ptr noundef nonnull @c__1) #7
  %i.arh = load i32, ptr %i.j, align 4, !tbaa !43
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ari
  %i.ark = load i32, ptr %4, align 4, !tbaa !43
  %i.arl = sext i32 %i.ark to i64
  %i.arm = getelementptr [8 x i8], ptr %i.aa, i64 %i.arl
  %i.arn = getelementptr i8, ptr %i.arm, i64 8
  call void @dlascl_(ptr noundef nonnull @.str.5, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.arj, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef %i.arn, ptr noundef nonnull %6, ptr noundef nonnull %i.h) #7
  %i.aro = load i32, ptr %4, align 4, !tbaa !43
  %i.arp = sext i32 %i.aro to i64
  %i.arq = getelementptr [8 x i8], ptr %i.aa, i64 %i.arp
  %i.arr = getelementptr i8, ptr %i.arq, i64 8
  %i.ars = mul nsw i64 %indvars.iv.next1960, %i.tc
  %i.art = getelementptr [8 x i8], ptr %i.w, i64 %i.ars
  %i.aru = getelementptr i8, ptr %i.art, i64 8
  %i.arv = call double @ddot_(ptr noundef nonnull %3, ptr noundef %i.arr, ptr noundef nonnull @c__1, ptr noundef %i.aru, ptr noundef nonnull @c__1) #7
  %i.arw = getelementptr [8 x i8], ptr %11, i64 %indvars.iv1959
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !45
  %i.ary = fmul double %i.arv, %i.arx
  br label %bb.ex

bb.eu:                                            ; preds = %bb.eq
  %i.arz = insertelement <2 x double> poison, double %i.apz, i64 0
  %i.asa = insertelement <2 x double> %i.arz, double %i.aqb, i64 1
  %i.asb = fdiv <2 x double> %i.asa, %i.tf
  %i.asc = insertelement <2 x double> poison, double %i.aqb, i64 0
  %i.asd = insertelement <2 x double> %i.asc, double %i.apz, i64 1
  %i.ase = fcmp ole <2 x double> %i.asd, %i.asb   ; 2 uses
  %i.asf = extractelement <2 x i1> %i.ase, i64 0
  %i.asg = extractelement <2 x i1> %i.ase, i64 1
  %.21533.in = select i1 %i.aqd, i1 %i.asg, i1 %i.asf ; 2 uses
  %i.ash = fdiv double %i.bu, %i.apz
  %i.asi = fcmp ogt double %i.aqb, %i.ash
  br i1 %i.asi, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.asj = load i32, ptr %i.j, align 4, !tbaa !43
  %i.ask = mul nsw i32 %i.asj, %i.u
  %i.asl = sext i32 %i.ask to i64
  %i.asm = getelementptr [8 x i8], ptr %i.w, i64 %i.asl
  %i.asn = getelementptr i8, ptr %i.asm, i64 8
end_hunk_2
