Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggesx?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@c__1 = internal global i32 1, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"DGEQRF\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c__0 = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"DORMQR\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"DGGESX\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b42 = internal global double 0.000000e+00, align 8
@c_b43 = internal global double 1.000000e+00, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: nounwind uwtable
define void @dggesx_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr nofree noundef writeonly captures(none) %18, ptr nofree noundef writeonly captures(none) %19, ptr noundef %20, ptr nofree noundef readonly captures(none) %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr nofree noundef captures(none) initializes((0, 4)) %25) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 26 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca double, align 8                   ; 10 uses
  %i.e = alloca double, align 8                   ; 8 uses
  %i.f = alloca i32, align 4                      ; 23 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 7 uses
  %i.n = alloca double, align 8                   ; 6 uses
  %i.o = alloca double, align 8                   ; 10 uses
  %i.p = alloca double, align 8                   ; 8 uses
  %i.q = alloca [2 x double], align 16            ; 4 uses
  %i.r = alloca i32, align 4                      ; 8 uses
  %i.s = alloca i32, align 4                      ; 11 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  %i.t = load i32, ptr %7, align 4, !tbaa !12     ; 3 uses
  %narrow = xor i32 %i.t, -1
  %i.u = sext i32 %narrow to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %6, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %9, align 4, !tbaa !12     ; 3 uses
  %narrow553 = xor i32 %i.w, -1
  %i.x = sext i32 %narrow553 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %8, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %11, i64 -8 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %12, i64 -8 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %13, i64 -8 ; 4 uses
  %i.ac = load i32, ptr %15, align 4, !tbaa !12   ; 3 uses
  %narrow557 = xor i32 %i.ac, -1
  %i.ad = sext i32 %narrow557 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %20, i64 -8 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %24, i64 -4
  %i.ah = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not536 = icmp eq i32 %i.ai, 0                 ; 3 uses
  %not..not536 = xor i1 %.not536, true
  %. = zext i1 %not..not536 to i32
  %not..not536707 = xor i1 %.not536, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  %.not544 = phi i1 [ %not..not536707, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.aj = phi i1 [ %.not536, %bb.b ], [ false, %bb.a ] ; 3 uses
  store i32 %.sink, ptr %i.h, align 4, !tbaa !12
  %i.ak = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #5
  %.not537 = icmp eq i32 %i.ak, 0
  br i1 %.not537, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %.not538 = icmp eq i32 %i.al, 0                 ; 3 uses
  %not..not538 = xor i1 %.not538, true
  %.703 = zext i1 %not..not538 to i32
  %not..not538708 = xor i1 %.not538, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink671 = phi i32 [ %.703, %bb.d ], [ 0, %bb.c ]
  %.not545 = phi i1 [ %not..not538708, %bb.d ], [ false, %bb.c ]
  %i.am = phi i1 [ %.not538, %bb.d ], [ false, %bb.c ]
  store i32 %.sink671, ptr %i.i, align 4, !tbaa !12
  %i.an = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.2) #5 ; 2 uses
  %i.ao = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.ap = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.3) #5 ; 2 uses
  %i.aq = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.1) #5 ; 2 uses
  %i.ar = tail call i32 @lsame_(ptr noundef %4, ptr noundef nonnull @.str.4) #5 ; 2 uses
  %i.as = load i32, ptr %21, align 4, !tbaa !12
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %23, align 4, !tbaa !12
  %i.av = icmp eq i32 %i.au, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i1 [ true, %bb.e ], [ %i.av, %bb.f ] ; 3 uses
  %i.ax = icmp eq i32 %i.ao, 0                    ; 4 uses
  br i1 %i.ax, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %.not539 = icmp eq i32 %i.ap, 0
  br i1 %.not539, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %.not540 = icmp eq i32 %i.aq, 0
  br i1 %.not540, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %.not541 = icmp eq i32 %i.ar, 0
  br i1 %.not541, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sink672 = phi i32 [ 0, %bb.g ], [ 2, %bb.i ], [ 1, %bb.h ], [ 4, %bb.j ]
  store i32 %.sink672, ptr %i.c, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.ay = phi i1 [ false, %bb.j ], [ %i.ax, %.sink.split ]
  store i32 0, ptr %25, align 4, !tbaa !12
  %brmerge = select i1 %i.aj, i1 true, i1 %i.am
  %.mux = select i1 %i.aj, i32 -1, i32 -2
  %.mux706 = select i1 %i.aj, i32 -1, i32 -2
  br i1 %brmerge, label %.thread584.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not543 = icmp eq i32 %i.an, 0                 ; 3 uses
  br i1 %.not543, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #5
  %.not542 = icmp eq i32 %i.az, 0
  br i1 %.not542, label %.thread584.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = icmp eq i32 %i.ap, 0
  %or.cond.not = select i1 %i.ax, i1 %i.ba, i1 false
  %i.bb = icmp eq i32 %i.aq, 0
  %or.cond3 = select i1 %or.cond.not, i1 %i.bb, i1 false
  %i.bc = icmp eq i32 %i.ar, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.bc, i1 false
  %i.bd = or i32 %i.ao, %i.an
  %or.cond7.not = icmp eq i32 %i.bd, 0
  %or.cond571 = select i1 %or.cond5, i1 true, i1 %or.cond7.not
  br i1 %or.cond571, label %.thread584.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %5, align 4, !tbaa !12    ; 9 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread584.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %7, align 4, !tbaa !12
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.be, i32 1) ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %spec.select
  br i1 %i.bh, label %.thread584.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load i32, ptr %9, align 4, !tbaa !12
  %i.bj = icmp slt i32 %i.bi, %spec.select
  br i1 %i.bj, label %.thread584.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %15, align 4, !tbaa !12   ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 1
  %i.bm = icmp samesign ult i32 %i.bk, %i.be
  %or.cond606 = select i1 %.not544, i1 %i.bm, i1 false
  %or.cond673 = select i1 %i.bl, i1 true, i1 %or.cond606
  br i1 %or.cond673, label %.thread584.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %17, align 4, !tbaa !12   ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 1
  %i.bp = icmp samesign ult i32 %i.bn, %i.be
  %or.cond607 = select i1 %.not545, i1 %i.bp, i1 false
  %or.cond674 = select i1 %i.bo, i1 true, i1 %or.cond607
  br i1 %or.cond674, label %.thread584.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pr = load i32, ptr %25, align 4, !tbaa !12    ; 2 uses
  %i.bq = icmp eq i32 %.pr, 0
  br i1 %i.bq, label %bb.u, label %.thread584

bb.u:                                             ; preds = %bb.t
  %.not670 = icmp eq i32 %i.be, 0
  br i1 %.not670, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = shl i32 %i.be, 3
  %i.bs = mul nuw nsw i32 %i.be, 6
  %i.bt = add nuw nsw i32 %i.bs, 16
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bt) ; 5 uses
  %i.bv = sub nsw i32 %i.bu, %i.be
  %i.bw = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef nonnull %5, ptr noundef nonnull @c__0, i32 noundef 6, i32 noundef 1) #5
  %i.bx = mul nsw i32 %i.bw, %i.be
  %i.by = add nsw i32 %i.bv, %i.bx                ; 2 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !12
  %i.bz = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.ca = sub nsw i32 %i.bu, %i.bz
  %i.cb = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef nonnull %5, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.cc = mul nsw i32 %i.cb, %i.bz
  %i.cd = add nsw i32 %i.cc, %i.ca                ; 2 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !12
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.by, i32 %i.cd) ; 3 uses
  br i1 %.not544, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !12
  %i.cf = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.cg = sub nsw i32 %i.bu, %i.cf
  %i.ch = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef nonnull %5, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.ci = mul nsw i32 %i.ch, %i.cf
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 2 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !12
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 %i.cj)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i32 [ %i.ck, %bb.w ], [ %i.ce, %bb.v ] ; 5 uses
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %.0, ptr %i.a, align 4, !tbaa !12
  %i.cl = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.cl
  %i.cn = lshr i32 %i.cm, 1                       ; 2 uses
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !12
  %i.co = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.cn)
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.y
  %.0513 = phi i32 [ %i.co, %bb.y ], [ %.0, %bb.x ], [ 1, %bb.u ]
  %.0496 = phi i32 [ %i.bu, %bb.y ], [ %i.bu, %bb.x ], [ 1, %bb.u ]
  %.1 = phi i32 [ %.0, %bb.y ], [ %.0, %bb.x ], [ 1, %bb.u ] ; 5 uses
  %i.cp = sitofp i32 %.0513 to double
  store double %i.cp, ptr %20, align 8, !tbaa !14
  br i1 %i.ax, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = add nsw i32 %i.cq, 6
  %spec.select578 = select i1 %i.cr, i32 1, i32 %i.cs
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0499 = phi i32 [ 1, %bb.z ], [ %spec.select578, %bb.aa ] ; 3 uses
  store i32 %.0499, ptr %22, align 4, !tbaa !12
  %i.ct = load i32, ptr %21, align 4, !tbaa !12
  %i.cu = icmp sge i32 %i.ct, %.0496
  %or.cond9 = select i1 %i.cu, i1 true, i1 %i.aw
  br i1 %or.cond9, label %bb.ac, label %.thread584.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load i32, ptr %23, align 4, !tbaa !12
  %i.cw = icmp sge i32 %i.cv, %.0499
  %or.cond11 = select i1 %i.cw, i1 true, i1 %i.aw
  br i1 %or.cond11, label %.thread, label %.thread584.sink.split

.thread:                                          ; preds = %bb.ac
  %.pr580.pr = load i32, ptr %25, align 4, !tbaa !12 ; 2 uses
  %.not551 = icmp eq i32 %.pr580.pr, 0
  br i1 %.not551, label %bb.ad, label %.thread584

.thread584.sink.split:                            ; preds = %bb.k, %bb.ac, %bb.ab, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sink676 = phi i32 [ %.mux, %bb.k ], [ -3, %bb.m ], [ -6, %bb.o ], [ -10, %bb.q ], [ -16, %bb.r ], [ -8, %bb.p ], [ -5, %bb.n ], [ -24, %bb.ac ], [ -18, %bb.s ], [ -22, %bb.ab ]
  %.ph675 = phi i32 [ %.mux706, %bb.k ], [ -3, %bb.m ], [ -6, %bb.o ], [ -10, %bb.q ], [ -16, %bb.r ], [ -8, %bb.p ], [ -5, %bb.n ], [ -24, %bb.ac ], [ -18, %bb.s ], [ -22, %bb.ab ]
  store i32 %.sink676, ptr %25, align 4, !tbaa !12
  br label %.thread584

.thread584:                                       ; preds = %.thread584.sink.split, %bb.t, %.thread
  %i.cx = phi i32 [ %.pr580.pr, %.thread ], [ %.pr, %bb.t ], [ %.ph675, %.thread584.sink.split ]
  %i.cy = sub nsw i32 0, %i.cx
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !12
  %i.cz = call i32 @xerbla_(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %bb.cl

bb.ad:                                            ; preds = %.thread
  br i1 %i.aw, label %bb.cl, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i32, ptr %5, align 4, !tbaa !12
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %10, align 4, !tbaa !12
  br label %bb.cl

bb.ag:                                            ; preds = %bb.ae
  %i.dc = tail call double @dlamch_(ptr noundef nonnull @.str.10) #5
  %i.dd = tail call double @dlamch_(ptr noundef nonnull @.str.2) #5 ; 2 uses
  store double %i.dd, ptr %i.m, align 8, !tbaa !14
  %i.de = fdiv double 1.000000e+00, %i.dd
  store double %i.de, ptr %i.n, align 8, !tbaa !14
  call void @dlabad_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #5
  %i.df = load double, ptr %i.m, align 8, !tbaa !14
  %i.dg = call double @sqrt(double noundef %i.df) #5
  %i.dh = fdiv double %i.dg, %i.dc                ; 5 uses
  %i.di = fdiv double 1.000000e+00, %i.dh         ; 4 uses
  %i.dj = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %20) #5 ; 4 uses
  store double %i.dj, ptr %i.d, align 8, !tbaa !14
  %i.dk = fcmp ogt double %i.dj, 0.000000e+00
  %i.dl = fcmp olt double %i.dj, %i.dh
  %or.cond573 = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond573, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = fcmp ogt double %i.dj, %i.di
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %storemerge = phi double [ %i.dh, %bb.ag ], [ %i.di, %bb.ah ]
  store double %storemerge, ptr %i.o, align 8, !tbaa !14
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.o, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %i.f) #5
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.not552592 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 3 uses
  %i.dn = call double @dlange_(ptr noundef nonnull @.str.11, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %20) #5 ; 4 uses
  store double %i.dn, ptr %i.e, align 8, !tbaa !14
  %i.do = fcmp ogt double %i.dn, 0.000000e+00
  %i.dp = fcmp olt double %i.dn, %i.dh
  %or.cond574 = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond574, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = fcmp ogt double %i.dn, %i.di
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %storemerge610 = phi double [ %i.dh, %bb.aj ], [ %i.di, %bb.ak ]
  store double %storemerge610, ptr %i.p, align 8, !tbaa !14
  call void @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.f) #5
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.not554597 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 3 uses
  %i.dr = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.ds = add nsw i32 %i.dr, 1                    ; 2 uses
  %i.dt = add nsw i32 %i.ds, %i.dr                ; 4 uses
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.du ; 3 uses
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dw ; 6 uses
  call void @dggbal_(ptr noundef nonnull @.str.10, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %20, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.f) #5
  %i.dy = load i32, ptr %i.r, align 4, !tbaa !12
  %i.dz = add nsw i32 %i.dy, 1
  %i.ea = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.eb = sub i32 %i.dz, %i.ea                    ; 2 uses
  store i32 %i.eb, ptr %i.j, align 4, !tbaa !12
  %i.ec = load i32, ptr %5, align 4, !tbaa !12
  %reass.sub = sub i32 %i.ec, %i.ea
  %i.ed = add i32 %reass.sub, 1
  store i32 %i.ed, ptr %i.g, align 4, !tbaa !12
  %i.ee = add nsw i32 %i.eb, %i.dt                ; 4 uses
  %i.ef = load i32, ptr %21, align 4, !tbaa !12
  %reass.sub637 = sub i32 %i.ef, %i.ee
  %i.eg = add i32 %reass.sub637, 1
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !12
  %i.eh = add i32 %i.w, 1                         ; 3 uses
  %i.ei = mul i32 %i.ea, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ej
  %i.el = sext i32 %i.ee to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.el ; 3 uses
  call void @dgeqrf_(ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef %i.ek, ptr noundef nonnull %9, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.em, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #5
  %i.en = load i32, ptr %21, align 4, !tbaa !12
  %reass.sub638 = sub i32 %i.en, %i.ee
  %i.eo = add i32 %reass.sub638, 1
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !12
  %i.ep = load i32, ptr %i.s, align 4, !tbaa !12  ; 2 uses
  %i.eq = mul i32 %i.ep, %i.eh
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.er
  %i.et = add i32 %i.t, 1                         ; 2 uses
  %i.eu = mul i32 %i.ep, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ev
  call void @dormqr_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef %i.es, ptr noundef nonnull %9, ptr noundef nonnull %i.dx, ptr noundef %i.ew, ptr noundef nonnull %7, ptr noundef nonnull %i.em, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #5
  %i.ex = load i32, ptr %i.h, align 4, !tbaa !12
  %.not555 = icmp eq i32 %i.ex, 0
  br i1 %.not555, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @dlaset_(ptr noundef nonnull @.str.15, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @c_b42, ptr noundef nonnull @c_b43, ptr noundef %14, ptr noundef nonnull %15) #5
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.a, align 4, !tbaa !12
  store i32 %i.fa, ptr %i.b, align 4, !tbaa !12
  %i.fb = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.fc = add nsw i32 %i.fb, 1                    ; 2 uses
  %i.fd = mul nsw i32 %i.fb, %i.w
  %i.fe = add nsw i32 %i.fc, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ff
  %i.fh = mul nsw i32 %i.fb, %i.ac
  %i.fi = add nsw i32 %i.fc, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fj
  call void @dlacpy_(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fg, ptr noundef nonnull %9, ptr noundef %i.fk, ptr noundef nonnull %15) #5
end_hunk_0
