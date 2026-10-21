Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgsja?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DTGSJA\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b1 = internal global double 0.000000e+00, align 8
@c_b15 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c_b44 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtgsja_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr nofree noundef writeonly captures(none) %23, ptr nofree noundef captures(none) initializes((0, 4)) %24) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %15 to i64                 ; 2 uses
  %i.b = ptrtoaddr ptr %14 to i64                 ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 21 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca double, align 8                   ; 8 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %i.o = alloca double, align 8                   ; 6 uses
  %i.p = alloca double, align 8                   ; 5 uses
  %i.q = alloca double, align 8                   ; 5 uses
  %i.r = alloca double, align 8                   ; 6 uses
  %i.s = alloca double, align 8                   ; 3 uses
  %i.t = alloca double, align 8                   ; 5 uses
  %i.u = alloca double, align 8                   ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  %i.v = load i32, ptr %9, align 4, !tbaa !21     ; 14 uses
  %narrow = xor i32 %i.v, -1
  %i.w = sext i32 %narrow to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %8, i64 %i.w ; 14 uses
  %i.y = load i32, ptr %11, align 4, !tbaa !21    ; 12 uses
  %narrow506 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow506 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %10, i64 %i.z ; 13 uses
  %i.ab = getelementptr inbounds i8, ptr %14, i64 -8 ; 11 uses
  %i.ac = getelementptr inbounds i8, ptr %15, i64 -8 ; 11 uses
  %i.ad = load i32, ptr %17, align 4, !tbaa !21   ; 3 uses
  %narrow513 = xor i32 %i.ad, -1
  %i.ae = sext i32 %narrow513 to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %16, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %19, align 4, !tbaa !21   ; 2 uses
  %narrow514 = xor i32 %i.ag, -1
  %i.ah = sext i32 %narrow514 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %18, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %21, align 4, !tbaa !21   ; 3 uses
  %narrow515 = xor i32 %i.aj, -1
  %i.ak = sext i32 %narrow515 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %20, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %22, i64 -8 ; 2 uses
  %i.an = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp eq i32 %i.an, 0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.ap = icmp ne i32 %i.ao, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi i1 [ true, %bb.a ], [ %i.ap, %bb.b ] ; 3 uses
  %i.ar = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #5
  %.not508 = icmp eq i32 %i.ar, 0                 ; 2 uses
  br i1 %.not508, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %i.at = icmp ne i32 %i.as, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi i1 [ true, %bb.c ], [ %i.at, %bb.d ] ; 4 uses
  %i.av = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str) #5
  %.not510 = icmp eq i32 %i.av, 0                 ; 2 uses
  br i1 %.not510, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %i.ax = icmp ne i32 %i.aw, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = phi i1 [ true, %bb.e ], [ %i.ax, %bb.f ] ; 3 uses
  store i32 0, ptr %24, align 4, !tbaa !21
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  %.not507 = icmp eq i32 %i.az, 0
  br i1 %.not507, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %.not509 = icmp eq i32 %i.ba, 0
  br i1 %.not509, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %.not511 = icmp eq i32 %i.bb, 0
  br i1 %.not511, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load i32, ptr %3, align 4, !tbaa !21    ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %4, align 4, !tbaa !21    ; 3 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %9, align 4, !tbaa !21
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 1)
  %i.bj = icmp slt i32 %i.bi, %spec.select
  br i1 %i.bj, label %.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %11, align 4, !tbaa !21
  %spec.select538 = tail call i32 @llvm.umax.i32(i32 %i.be, i32 1)
  %i.bl = icmp slt i32 %i.bk, %spec.select538
  br i1 %i.bl, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %17, align 4, !tbaa !21   ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 1
  %i.bo = icmp samesign ult i32 %i.bm, %i.bc
  %or.cond = select i1 %i.aq, i1 %i.bo, i1 false
  %or.cond543 = select i1 %i.bn, i1 true, i1 %or.cond
  br i1 %or.cond543, label %.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %19, align 4, !tbaa !21   ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 1
  %i.br = icmp samesign ult i32 %i.bp, %i.be
  %or.cond541 = select i1 %i.au, i1 %i.br, i1 false
  %or.cond544 = select i1 %i.bq, i1 true, i1 %or.cond541
  br i1 %or.cond544, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = load i32, ptr %21, align 4, !tbaa !21   ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 1
  %i.bu = icmp samesign ult i32 %i.bs, %i.bg
  %or.cond542 = select i1 %i.ay, i1 %i.bu, i1 false
  %or.cond545 = select i1 %i.bt, i1 true, i1 %or.cond542
  br i1 %or.cond545, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.pr = load i32, ptr %24, align 4, !tbaa !21    ; 2 uses
  %.not512 = icmp eq i32 %.pr, 0
  br i1 %.not512, label %bb.v, label %.thread

.thread.sink.split:                               ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h
  %.sink = phi i32 [ -1, %bb.h ], [ -2, %bb.j ], [ -4, %bb.m ], [ -6, %bb.o ], [ -12, %bb.q ], [ -20, %bb.s ], [ -18, %bb.r ], [ -10, %bb.p ], [ -5, %bb.n ], [ -3, %bb.l ], [ -22, %bb.t ] ; 2 uses
  store i32 %.sink, ptr %24, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.u
  %i.bv = phi i32 [ %.pr, %bb.u ], [ %.sink, %.thread.sink.split ]
  %i.bw = sub nsw i32 0, %i.bv
  store i32 %i.bw, ptr %i.c, align 4, !tbaa !21
  %i.bx = call i32 @xerbla_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, i32 noundef 6) #5 ; 0 uses
  br label %bb.bp

bb.v:                                             ; preds = %bb.u
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b1, ptr noundef nonnull @c_b15, ptr noundef %16, ptr noundef nonnull %17) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not508, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @c_b1, ptr noundef nonnull @c_b15, ptr noundef %18, ptr noundef nonnull %19) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %.not510, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @c_b1, ptr noundef nonnull @c_b15, ptr noundef %20, ptr noundef nonnull %21) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.by = sext i32 %i.ag to i64                   ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.be
  %.0485572.a = phi i32 [ 0, %bb.ab ], [ %26, %bb.be ]
  %.0485572 = phi i32 [ 1, %bb.ab ], [ %i.jt, %bb.be ] ; 3 uses
  %.not516 = icmp eq i32 %.0485572.a, 0
  %i.bz = zext i1 %.not516 to i32                 ; 2 uses
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !21
  %i.ca = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %.not517562 = icmp slt i32 %i.ca, 2
  br i1 %.not517562, label %._crit_edge, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %bb.ac
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = sext i32 %i.cb to i64
  br label %.lr.ph564

.loopexit557:                                     ; preds = %bb.bc, %.lr.ph564
  %.not517.not = icmp slt i64 %indvars.iv595, %i.cc
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %.not517.not, label %.lr.ph564, label %._crit_edge.loopexit, !llvm.loop !8

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.loopexit557
  %indvars.iv595 = phi i64 [ 1, %.lr.ph564.preheader ], [ %indvars.iv.next596, %.loopexit557 ] ; 8 uses
  %indvars.iv = phi i32 [ 2, %.lr.ph564.preheader ], [ %indvars.iv.next, %.loopexit557 ] ; 2 uses
  %i.cd = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  store i32 %i.cd, ptr %i.d, align 4, !tbaa !21
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1
  %i.ce = sext i32 %i.cd to i64
  %.not526560.not = icmp slt i64 %indvars.iv595, %i.ce
  br i1 %.not526560.not, label %.lr.ph, label %.loopexit557

.lr.ph:                                           ; preds = %.lr.ph564
  %i.cf = sext i32 %indvars.iv to i64
  %i.cg = mul nsw i64 %indvars.iv595, %i.by
  %i.ch = getelementptr [8 x i8], ptr %i.ai, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = trunc nuw nsw i64 %indvars.iv595 to i32 ; 11 uses
  %i.ck = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv595
  %i.cl = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv595
  %i.cm = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv595
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.bc
  %indvars.iv592 = phi i64 [ %i.cf, %.lr.ph ], [ %indvars.iv.next593, %bb.bc ] ; 7 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !24
  %i.cn = load i32, ptr %6, align 4, !tbaa !21    ; 2 uses
  %i.co = add nsw i32 %i.cn, %i.cj                ; 3 uses
  %i.cp = load i32, ptr %3, align 4, !tbaa !21    ; 2 uses
  %.not527 = icmp sgt i32 %i.co, %i.cp            ; 2 uses
  %.pre.pre = load i32, ptr %5, align 4, !tbaa !21 ; 3 uses
  %.pre615.pre = load i32, ptr %7, align 4, !tbaa !21 ; 3 uses
  br i1 %.not527, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = add i32 %.pre.pre, %i.cj
  %i.cr = sub i32 %i.cq, %.pre615.pre
  %i.cs = mul nsw i32 %i.cr, %i.v
  %i.ct = add nsw i32 %i.cs, %i.co
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !24
  store double %i.cw, ptr %i.g, align 8, !tbaa !24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cx = trunc nsw i64 %indvars.iv592 to i32     ; 11 uses
  %i.cy = add nsw i32 %i.cn, %i.cx                ; 3 uses
  %.not528 = icmp sgt i32 %i.cy, %i.cp            ; 2 uses
  br i1 %.not528, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = add i32 %.pre.pre, %i.cx
  %i.da = sub i32 %i.cz, %.pre615.pre
  %i.db = mul nsw i32 %i.da, %i.v
  %i.dc = add nsw i32 %i.db, %i.cy
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  store double %i.df, ptr %i.i, align 8, !tbaa !24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dg = sub nsw i32 %.pre.pre, %.pre615.pre     ; 2 uses
  %i.dh = add nsw i32 %i.dg, %i.cj                ; 2 uses
  %i.di = mul nsw i32 %i.dh, %i.y                 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [8 x i8], ptr %i.ck, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !24
  store double %i.dl, ptr %i.j, align 8, !tbaa !24
  %i.dm = add nsw i32 %i.dg, %i.cx                ; 2 uses
  %i.dn = mul nsw i32 %i.dm, %i.y                 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv592
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !24
  store double %i.dr, ptr %i.m, align 8, !tbaa !24
  %i.ds = load i32, ptr %i.k, align 4, !tbaa !21
  %.not529 = icmp eq i32 %i.ds, 0
  br i1 %.not529, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not527, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = mul nsw i32 %i.dm, %i.v
  %i.du = add nsw i32 %i.dt, %i.co
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  store double %i.dx, ptr %i.h, align 8, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dy = add nsw i32 %i.dn, %i.cj
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  br i1 %.not528, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = mul nsw i32 %i.dh, %i.v
  %i.ea = add nsw i32 %i.dz, %i.cy
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24
  store double %i.ed, ptr %i.h, align 8, !tbaa !24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ee = add nsw i32 %i.di, %i.cx
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.in = phi i32 [ %i.ee, %bb.an ], [ %i.dy, %bb.ak ]
  %.pn = sext i32 %.pn.in to i64
  %storemerge.in = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.pn
  %storemerge = load double, ptr %storemerge.in, align 8, !tbaa !24
  store double %storemerge, ptr %i.l, align 8, !tbaa !24
  call void @dlags2_(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.t, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r) #5
  %i.ef = load i32, ptr %6, align 4, !tbaa !21    ; 2 uses
  %i.eg = add nsw i32 %i.ef, %i.cx                ; 2 uses
  %i.eh = load i32, ptr %3, align 4, !tbaa !21
  %.not532 = icmp sgt i32 %i.eg, %i.eh
  br i1 %.not532, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ei = load i32, ptr %5, align 4, !tbaa !21
  %i.ej = load i32, ptr %7, align 4, !tbaa !21
  %i.ek = add i32 %i.ei, 1
  %i.el = sub i32 %i.ek, %i.ej
  %i.em = mul nsw i32 %i.el, %i.v                 ; 2 uses
  %i.en = add nsw i32 %i.em, %i.eg
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.eo
  %i.eq = add nsw i32 %i.ef, %i.cj
  %i.er = add nsw i32 %i.eq, %i.em
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.es
  call void @drot_(ptr noundef nonnull %7, ptr noundef %i.ep, ptr noundef nonnull %9, ptr noundef %i.et, ptr noundef nonnull %9, ptr noundef nonnull %i.p, ptr noundef nonnull %i.t) #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eu = load i32, ptr %5, align 4, !tbaa !21
  %i.ev = load i32, ptr %7, align 4, !tbaa !21
  %i.ew = add i32 %i.eu, 1
  %i.ex = sub i32 %i.ew, %i.ev
  %i.ey = mul nsw i32 %i.ex, %i.y
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv592
  %i.fb = getelementptr [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = getelementptr [8 x i8], ptr %i.cl, i64 %i.ez
  call void @drot_(ptr noundef nonnull %7, ptr noundef %i.fb, ptr noundef nonnull %11, ptr noundef %i.fc, ptr noundef nonnull %11, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u) #5
  %i.fd = load i32, ptr %6, align 4, !tbaa !21
  %i.fe = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.ff = add nsw i32 %i.fe, %i.fd
  %i.fg = load i32, ptr %3, align 4, !tbaa !21
  %. = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fg)
  store i32 %., ptr %i.e, align 4, !tbaa !21
  %i.fh = load i32, ptr %5, align 4, !tbaa !21
  %i.fi = sub nsw i32 %i.fh, %i.fe                ; 2 uses
  %i.fj = add nsw i32 %i.fi, %i.cx
  %i.fk = mul nsw i32 %i.fj, %i.v
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr [8 x i8], ptr %i.x, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %i.fo = add nsw i32 %i.fi, %i.cj
  %i.fp = mul nsw i32 %i.fo, %i.v
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [8 x i8], ptr %i.x, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  call void @drot_(ptr noundef nonnull %i.e, ptr noundef %i.fn, ptr noundef nonnull @c__1, ptr noundef %i.fs, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r) #5
  %i.ft = load i32, ptr %5, align 4, !tbaa !21
  %i.fu = load i32, ptr %7, align 4, !tbaa !21
  %i.fv = sub nsw i32 %i.ft, %i.fu                ; 2 uses
  %i.fw = add nsw i32 %i.fv, %i.cx
  %i.fx = mul nsw i32 %i.fw, %i.y
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %i.aa, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = add nsw i32 %i.fv, %i.cj
  %i.gc = mul nsw i32 %i.gb, %i.y
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr [8 x i8], ptr %i.aa, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  call void @drot_(ptr noundef nonnull %7, ptr noundef %i.ga, ptr noundef nonnull @c__1, ptr noundef %i.gf, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r) #5
  %i.gg = load i32, ptr %i.k, align 4, !tbaa !21
  %.not534 = icmp eq i32 %i.gg, 0
  %i.gh = load i32, ptr %6, align 4, !tbaa !21    ; 4 uses
  %i.gi = load i32, ptr %3, align 4, !tbaa !21    ; 3 uses
  %.pre618 = load i32, ptr %5, align 4, !tbaa !21 ; 2 uses
  %.pre619 = load i32, ptr %7, align 4, !tbaa !21 ; 2 uses
  br i1 %.not534, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = add nsw i32 %i.gh, %i.cj                ; 2 uses
  %.not536 = icmp sgt i32 %i.gj, %i.gi
  %.pre628.a = add i32 %.pre618, %i.cx
  %.pre630 = sub i32 %.pre628.a, %.pre619         ; 2 uses
  br i1 %.not536, label %._crit_edge624, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = mul nsw i32 %.pre630, %i.v
  %i.gl = add nsw i32 %i.gk, %i.gj
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.gm
  store double 0.000000e+00, ptr %i.gn, align 8, !tbaa !24
  br label %._crit_edge624

._crit_edge624:                                   ; preds = %bb.ar, %bb.as
  %i.go = mul nsw i32 %.pre630, %i.y
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr [8 x i8], ptr %i.cm, i64 %i.gp
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !24
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.gr = add nsw i32 %i.gh, %i.cx                ; 2 uses
  %.not535 = icmp sgt i32 %i.gr, %i.gi
  %.pre.a = add i32 %.pre618, %i.cj
  %.pre626 = sub i32 %.pre.a, %.pre619            ; 2 uses
  br i1 %.not535, label %._crit_edge625, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = mul nsw i32 %.pre626, %i.v
  %i.gt = add nsw i32 %i.gs, %i.gr
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.gu
  store double 0.000000e+00, ptr %i.gv, align 8, !tbaa !24
  br label %._crit_edge625

._crit_edge625:                                   ; preds = %bb.at, %bb.au
  %i.gw = mul nsw i32 %.pre626, %i.y
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv592
  %i.gz = getelementptr [8 x i8], ptr %i.gy, i64 %i.gx
  store double 0.000000e+00, ptr %i.gz, align 8, !tbaa !24
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge625, %._crit_edge624
  br i1 %i.aq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ha = add nsw i32 %i.gh, %i.cx                ; 2 uses
  %.not537 = icmp sgt i32 %i.ha, %i.gi
  br i1 %.not537, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = mul nsw i32 %i.ha, %i.ad
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [8 x i8], ptr %i.af, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = add nsw i32 %i.gh, %i.cj
  %i.hg = mul nsw i32 %i.hf, %i.ad
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr [8 x i8], ptr %i.af, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  call void @drot_(ptr noundef nonnull %3, ptr noundef %i.he, ptr noundef nonnull @c__1, ptr noundef %i.hj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.t) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  br i1 %i.au, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hk = mul nsw i64 %indvars.iv592, %i.by
  %i.hl = getelementptr [8 x i8], ptr %i.ai, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  call void @drot_(ptr noundef nonnull %4, ptr noundef %i.hm, ptr noundef nonnull @c__1, ptr noundef %i.ci, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u) #5
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br i1 %i.ay, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hn = load i32, ptr %5, align 4, !tbaa !21
  %i.ho = load i32, ptr %7, align 4, !tbaa !21
  %i.hp = sub nsw i32 %i.hn, %i.ho                ; 2 uses
  %i.hq = add nsw i32 %i.hp, %i.cx
  %i.hr = mul nsw i32 %i.hq, %i.aj
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.al, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = add nsw i32 %i.hp, %i.cj
  %i.hw = mul nsw i32 %i.hv, %i.aj
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr [8 x i8], ptr %i.al, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  call void @drot_(ptr noundef nonnull %5, ptr noundef %i.hu, ptr noundef nonnull @c__1, ptr noundef %i.hz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r) #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1
  %i.ia = load i32, ptr %i.d, align 4, !tbaa !21
  %i.ib = sext i32 %i.ia to i64
  %.not526.not = icmp slt i64 %indvars.iv592, %i.ib
  br i1 %.not526.not, label %bb.ad, label %.loopexit557, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.loopexit557
  %.pre620 = load i32, ptr %i.k, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %i.ic = phi i32 [ %.pre620, %._crit_edge.loopexit ], [ %i.bz, %bb.ac ] ; 2 uses
  %.not518 = icmp eq i32 %i.ic, 0
  br i1 %.not518, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  %i.id = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  store i32 %i.id, ptr %i.d, align 4, !tbaa !21
  %i.ie = load i32, ptr %3, align 4, !tbaa !21
  %i.if = load i32, ptr %6, align 4, !tbaa !21
  %i.ig = sub nsw i32 %i.ie, %i.if                ; 2 uses
  store i32 %i.ig, ptr %i.e, align 4, !tbaa !21
  %i.ih = call i32 @llvm.smin.i32(i32 %i.id, i32 %i.ig) ; 3 uses
  store i32 %i.ih, ptr %i.c, align 4, !tbaa !21
  %.not520565 = icmp slt i32 %i.ih, 1
  br i1 %.not520565, label %._crit_edge571, label %.lr.ph570

.lr.ph570:                                        ; preds = %bb.bd, %.lr.ph570
  %.1.neg568 = phi i32 [ %.1.neg, %.lr.ph570 ], [ -1, %bb.bd ]
  %.0567 = phi double [ %i.jn, %.lr.ph570 ], [ 0.000000e+00, %bb.bd ] ; 2 uses
  %.1566 = phi i32 [ %i.jo, %.lr.ph570 ], [ 1, %bb.bd ] ; 7 uses
  %i.ii = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.ij = add nsw i32 %.1.neg568, 1               ; 3 uses
  %i.ik = add i32 %i.ij, %i.ii
  store i32 %i.ik, ptr %i.d, align 4, !tbaa !21
  %i.il = load i32, ptr %6, align 4, !tbaa !21
  %i.im = add nsw i32 %i.il, %.1566
  %i.in = load i32, ptr %5, align 4, !tbaa !21
  %i.io = sub i32 %.1566, %i.ii
  %i.ip = add i32 %i.io, %i.in
  %i.iq = mul nsw i32 %i.ip, %i.v
  %i.ir = add nsw i32 %i.im, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.is
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.it, ptr noundef nonnull %9, ptr noundef %22, ptr noundef nonnull @c__1) #5
  %i.iu = load i32, ptr %7, align 4, !tbaa !21    ; 3 uses
  %i.iv = add i32 %i.ij, %i.iu
  store i32 %i.iv, ptr %i.d, align 4, !tbaa !21
  %i.iw = load i32, ptr %5, align 4, !tbaa !21
  %i.ix = sub i32 %.1566, %i.iu
  %i.iy = add i32 %i.ix, %i.iw
  %i.iz = mul nsw i32 %i.iy, %i.y
  %i.ja = add nsw i32 %i.iz, %.1566
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.jb
  %i.jd = sext i32 %i.iu to i64
  %i.je = getelementptr [8 x i8], ptr %i.am, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.jc, ptr noundef nonnull %11, ptr noundef %i.jf, ptr noundef nonnull @c__1) #5
  %i.jg = load i32, ptr %7, align 4, !tbaa !21    ; 2 uses
  %i.jh = add i32 %i.ij, %i.jg
  store i32 %i.jh, ptr %i.d, align 4, !tbaa !21
  %i.ji = sext i32 %i.jg to i64
  %i.jj = getelementptr [8 x i8], ptr %i.am, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  call void @dlapll_(ptr noundef nonnull %i.d, ptr noundef %22, ptr noundef nonnull @c__1, ptr noundef %i.jk, ptr noundef nonnull @c__1, ptr noundef nonnull %i.n) #5
  %i.jl = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.jm = fcmp oge double %.0567, %i.jl
  %i.jn = select i1 %i.jm, double %.0567, double %i.jl ; 2 uses
  %i.jo = add nuw nsw i32 %.1566, 1
  %.1.neg = xor i32 %.1566, -1
  %.not520.not = icmp slt i32 %.1566, %i.ih
  br i1 %.not520.not, label %.lr.ph570, label %._crit_edge571.loopexit, !llvm.loop !10

._crit_edge571.loopexit:                          ; preds = %.lr.ph570
  %.pre = load i32, ptr %i.k, align 4, !tbaa !21
  %i.jp = call double @llvm.fabs.f64(double %i.jn)
  br label %._crit_edge571

._crit_edge571:                                   ; preds = %._crit_edge571.loopexit, %bb.bd
  %25 = phi i32 [ 0, %bb.bd ], [ %.pre, %._crit_edge571.loopexit ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.bd ], [ %i.jp, %._crit_edge571.loopexit ]
  %i.jq = load double, ptr %12, align 8, !tbaa !24 ; 2 uses
  %i.jr = load double, ptr %13, align 8, !tbaa !24 ; 2 uses
  %.inv = fcmp ole double %i.jq, %i.jr
  %.539 = select i1 %.inv, double %i.jq, double %i.jr
  %i.js = fcmp ugt double %.0.lcssa, %.539
  br i1 %i.js, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge, %._crit_edge571
  %26 = phi i32 [ %i.ic, %._crit_edge ], [ %25, %._crit_edge571 ]
  %i.jt = add nuw nsw i32 %.0485572, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, 41
  br i1 %exitcond.not, label %bb.bf, label %bb.ac, !llvm.loop !11

bb.bf:                                            ; preds = %bb.be
  store i32 1, ptr %24, align 4, !tbaa !21
  br label %.loopexit

bb.bg:                                            ; preds = %._crit_edge571
  %i.ju = load i32, ptr %6, align 4, !tbaa !21    ; 8 uses
  %.not521573 = icmp slt i32 %i.ju, 1
  br i1 %.not521573, label %._crit_edge577, label %iter.check

iter.check:                                       ; preds = %bb.bg
  %i.jv = add nuw i32 %i.ju, 1
  %wide.trip.count = zext i32 %i.jv to i64        ; 2 uses
  %i.jw = zext nneg i32 %i.ju to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ju, 4
  %i.jx = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.jx, -128
  %or.cond687 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond687, label %.lr.ph576.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check654 = icmp ult i32 %i.ju, 16
  br i1 %min.iters.check654, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jy = and i64 %i.jw, 12
  %n.vec = and i64 %i.jw, 2147483632              ; 4 uses
  %i.jz = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ka = getelementptr [8 x i8], ptr %14, i64 %index ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.ka, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.kb, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.kc, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.kd, align 8, !tbaa !24
  %i.ke = getelementptr [8 x i8], ptr %15, i64 %index ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 96
  store <4 x double> zeroinitializer, ptr %i.ke, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.kf, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.kg, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.kh, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jw
  br i1 %cmp.n, label %._crit_edge577, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph576.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec655 = and i64 %i.jw, 2147483644           ; 3 uses
  %i.kj = or disjoint i64 %n.vec655, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index656 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next657, %vec.epilog.vector.body ] ; 3 uses
  %i.kk = getelementptr [8 x i8], ptr %14, i64 %index656
  store <4 x double> splat (double 1.000000e+00), ptr %i.kk, align 8, !tbaa !24
  %i.kl = getelementptr [8 x i8], ptr %15, i64 %index656
  store <4 x double> zeroinitializer, ptr %i.kl, align 8, !tbaa !24
  %index.next657 = add nuw i64 %index656, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next657, %n.vec655
  br i1 %i.km, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n658 = icmp eq i64 %n.vec655, %i.jw
  br i1 %cmp.n658, label %._crit_edge577, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv598.ph = phi i64 [ 1, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kj, %vec.epilog.middle.block ] ; 4 uses
  %i.kn = sub nsw i64 %wide.trip.count, %indvars.iv598.ph
  %i.ko = zext nneg i32 %i.ju to i64
  %i.kp = sub nsw i64 %i.ko, %indvars.iv598.ph
  %xtraiter = and i64 %i.kn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph576.prol.loopexit, label %.lr.ph576.prol

.lr.ph576.prol:                                   ; preds = %.lr.ph576.preheader, %.lr.ph576.prol
  %indvars.iv598.prol = phi i64 [ %indvars.iv.next599.prol, %.lr.ph576.prol ], [ %indvars.iv598.ph, %.lr.ph576.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph576.prol ], [ 0, %.lr.ph576.preheader ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv598.prol
  store double 1.000000e+00, ptr %i.kq, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv598.prol
  store double 0.000000e+00, ptr %i.kr, align 8, !tbaa !24
  %indvars.iv.next599.prol = add nuw nsw i64 %indvars.iv598.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph576.prol.loopexit, label %.lr.ph576.prol, !llvm.loop !14

.lr.ph576.prol.loopexit:                          ; preds = %.lr.ph576.prol, %.lr.ph576.preheader
  %indvars.iv598.unr = phi i64 [ %indvars.iv598.ph, %.lr.ph576.preheader ], [ %indvars.iv.next599.prol, %.lr.ph576.prol ]
  %i.ks = icmp ult i64 %i.kp, 7
  br i1 %i.ks, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.prol.loopexit, %.lr.ph576
  %indvars.iv598 = phi i64 [ %indvars.iv.next599.7, %.lr.ph576 ], [ %indvars.iv598.unr, %.lr.ph576.prol.loopexit ] ; 11 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv598
  store double 1.000000e+00, ptr %i.kt, align 8, !tbaa !24
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv598
  store double 0.000000e+00, ptr %i.ku, align 8, !tbaa !24
  %i.kv = getelementptr [8 x i8], ptr %14, i64 %indvars.iv598
  store double 1.000000e+00, ptr %i.kv, align 8, !tbaa !24
  %i.kw = getelementptr [8 x i8], ptr %15, i64 %indvars.iv598
  store double 0.000000e+00, ptr %i.kw, align 8, !tbaa !24
  %indvars.iv.next599.1 = add nuw nsw i64 %indvars.iv598, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.1
  store double 1.000000e+00, ptr %i.kx, align 8, !tbaa !24
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.1
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !24
  %indvars.iv.next599.2 = add nuw nsw i64 %indvars.iv598, 3 ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.2
  store double 1.000000e+00, ptr %i.kz, align 8, !tbaa !24
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.2
  store double 0.000000e+00, ptr %i.la, align 8, !tbaa !24
  %indvars.iv.next599.3 = add nuw nsw i64 %indvars.iv598, 4 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.3
  store double 1.000000e+00, ptr %i.lb, align 8, !tbaa !24
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.3
  store double 0.000000e+00, ptr %i.lc, align 8, !tbaa !24
  %indvars.iv.next599.4 = add nuw nsw i64 %indvars.iv598, 5 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.4
  store double 1.000000e+00, ptr %i.ld, align 8, !tbaa !24
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.4
  store double 0.000000e+00, ptr %i.le, align 8, !tbaa !24
  %indvars.iv.next599.5 = add nuw nsw i64 %indvars.iv598, 6 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.5
  store double 1.000000e+00, ptr %i.lf, align 8, !tbaa !24
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.5
  store double 0.000000e+00, ptr %i.lg, align 8, !tbaa !24
  %indvars.iv.next599.6 = add nuw nsw i64 %indvars.iv598, 7 ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.6
  store double 1.000000e+00, ptr %i.lh, align 8, !tbaa !24
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.6
  store double 0.000000e+00, ptr %i.li, align 8, !tbaa !24
  %indvars.iv.next599.7 = add nuw nsw i64 %indvars.iv598, 8 ; 2 uses
  %exitcond601.not.7 = icmp eq i64 %indvars.iv.next599.7, %wide.trip.count
  br i1 %exitcond601.not.7, label %._crit_edge577, label %.lr.ph576, !llvm.loop !15

._crit_edge577:                                   ; preds = %.lr.ph576.prol.loopexit, %.lr.ph576, %middle.block, %vec.epilog.middle.block, %bb.bg
  %i.lj = load i32, ptr %7, align 4, !tbaa !21    ; 3 uses
  store i32 %i.lj, ptr %i.d, align 4, !tbaa !21
  %i.lk = load i32, ptr %3, align 4, !tbaa !21    ; 2 uses
  %i.ll = sub nsw i32 %i.lk, %i.ju                ; 2 uses
  store i32 %i.ll, ptr %i.e, align 4, !tbaa !21
  %i.lm = call i32 @llvm.smin.i32(i32 %i.lj, i32 %i.ll) ; 2 uses
  %.not523578 = icmp slt i32 %i.lm, 1
  br i1 %.not523578, label %._crit_edge583, label %.lr.ph582.preheader

.lr.ph582.preheader:                              ; preds = %._crit_edge577
  %i.ln = zext nneg i32 %i.lm to i64
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader, %bb.bo
  %indvars.iv602 = phi i64 [ 1, %.lr.ph582.preheader ], [ %indvars.iv.next603, %bb.bo ] ; 9 uses
  %.3.neg580 = phi i32 [ -1, %.lr.ph582.preheader ], [ %i.oq, %bb.bo ] ; 3 uses
  %i.lo = load i32, ptr %6, align 4, !tbaa !21
  %i.lp = trunc nuw nsw i64 %indvars.iv602 to i32 ; 6 uses
  %i.lq = add nsw i32 %i.lo, %i.lp                ; 2 uses
  %i.lr = load i32, ptr %5, align 4, !tbaa !21
  %i.ls = load i32, ptr %7, align 4, !tbaa !21    ; 3 uses
  %i.lt = sub nsw i32 %i.lr, %i.ls
  %i.lu = add nsw i32 %i.lt, %i.lp                ; 2 uses
  %i.lv = mul nsw i32 %i.lu, %i.v
  %i.lw = add nsw i32 %i.lv, %i.lq
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.lx ; 2 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !24 ; 2 uses
  store double %i.lz, ptr %i.g, align 8, !tbaa !24
  %i.ma = mul nsw i32 %i.lu, %i.y
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv602
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %i.mb ; 3 uses
  %i.me = load double, ptr %i.md, align 8, !tbaa !24 ; 2 uses
  store double %i.me, ptr %i.j, align 8, !tbaa !24
  %i.mf = fdiv double %i.me, %i.lz                ; 5 uses
  %i.mg = fcmp ord double %i.mf, 0.000000e+00
  br i1 %i.mg, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %.lr.ph582
  %i.mh = fcmp olt double %i.mf, 0.000000e+00
  br i1 %i.mh, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.mi = add nsw i32 %.3.neg580, 1
  %i.mj = add i32 %i.mi, %i.ls
  store i32 %i.mj, ptr %i.d, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@dtgsja_:bb.a
  %i.ok = sext i32 %i.lq to i64                   ; 2 uses
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ok
  store double 0.000000e+00, ptr %i.ol, align 8, !tbaa !24
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ok
  store double 1.000000e+00, ptr %i.om, align 8, !tbaa !24
  %i.on = add nsw i32 %.3.neg580, 1
  %i.oo = add i32 %i.on, %i.ls
  store i32 %i.oo, ptr %i.d, align 4, !tbaa !21
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.md, ptr noundef nonnull %11, ptr noundef nonnull %i.ly, ptr noundef nonnull %9) #5
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1
  %.not523.not = icmp samesign ult i64 %indvars.iv602, %i.ln
  %i.op = trunc nuw i64 %indvars.iv602 to i32
  %i.oq = xor i32 %i.op, -1
  br i1 %.not523.not, label %.lr.ph582, label %._crit_edge583.loopexit, !llvm.loop !16

._crit_edge583.loopexit:                          ; preds = %bb.bo
  %.pre621 = load i32, ptr %6, align 4, !tbaa !21
  %.pre622 = load i32, ptr %7, align 4, !tbaa !21
  %.pre623 = load i32, ptr %3, align 4, !tbaa !21
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %._crit_edge583.loopexit, %._crit_edge577
  %i.or = phi i32 [ %.pre623, %._crit_edge583.loopexit ], [ %i.lk, %._crit_edge577 ] ; 2 uses
  %i.os = phi i32 [ %.pre622, %._crit_edge583.loopexit ], [ %i.lj, %._crit_edge577 ] ; 3 uses
  %i.ot = phi i32 [ %.pre621, %._crit_edge583.loopexit ], [ %i.ju, %._crit_edge577 ] ; 3 uses
  %i.ou = add nsw i32 %i.os, %i.ot                ; 4 uses
  %.not524.not584 = icmp slt i32 %i.or, %i.ou
  br i1 %.not524.not584, label %iter.check675, label %._crit_edge588

iter.check675:                                    ; preds = %._crit_edge583
  %i.ov = sext i32 %i.or to i64                   ; 6 uses
  %wide.trip.count609 = sext i32 %i.ou to i64
  %i.ow = sext i32 %i.os to i64                   ; 2 uses
  %i.ox = sext i32 %i.ot to i64                   ; 2 uses
  %i.oy = add nsw i64 %i.ow, %i.ox
  %i.oz = sub nsw i64 %i.oy, %i.ov                ; 7 uses
  %min.iters.check662 = icmp ult i64 %i.oz, 4
  %i.pa = sub i64 %i.b, %i.a
  %diff.check664 = icmp ugt i64 %i.pa, -128
  %or.cond688 = or i1 %min.iters.check662, %diff.check664
  br i1 %or.cond688, label %.lr.ph587.preheader, label %vector.main.loop.iter.check665

vector.main.loop.iter.check665:                   ; preds = %iter.check675
  %min.iters.check666 = icmp ult i64 %i.oz, 16
  br i1 %min.iters.check666, label %vec.epilog.ph679, label %vector.ph667

vector.ph667:                                     ; preds = %vector.main.loop.iter.check665
  %i.pb = and i64 %i.oz, 12
  %n.vec668 = and i64 %i.oz, -16                  ; 4 uses
  %i.pc = add nsw i64 %n.vec668, %i.ov
  br label %vector.body669

vector.body669:                                   ; preds = %vector.ph667, %vector.body669
  %index670 = phi i64 [ 0, %vector.ph667 ], [ %index.next671, %vector.body669 ] ; 2 uses
  %i.pd = add i64 %index670, %i.ov                ; 2 uses
  %i.pe = getelementptr [8 x i8], ptr %14, i64 %i.pd ; 4 uses
  %i.pf = getelementptr i8, ptr %i.pe, i64 32
  %i.pg = getelementptr i8, ptr %i.pe, i64 64
  %i.ph = getelementptr i8, ptr %i.pe, i64 96
  store <4 x double> zeroinitializer, ptr %i.pe, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.pf, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.pg, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.ph, align 8, !tbaa !24
  %i.pi = getelementptr [8 x i8], ptr %15, i64 %i.pd ; 4 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 32
  %i.pk = getelementptr i8, ptr %i.pi, i64 64
  %i.pl = getelementptr i8, ptr %i.pi, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.pi, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.pj, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.pk, align 8, !tbaa !24
  store <4 x double> splat (double 1.000000e+00), ptr %i.pl, align 8, !tbaa !24
  %index.next671 = add nuw i64 %index670, 16      ; 2 uses
  %i.pm = icmp eq i64 %index.next671, %n.vec668
  br i1 %i.pm, label %middle.block672, label %vector.body669, !llvm.loop !17

middle.block672:                                  ; preds = %vector.body669
  %cmp.n673 = icmp eq i64 %i.oz, %n.vec668
  br i1 %cmp.n673, label %._crit_edge588, label %vec.epilog.iter.check677

vec.epilog.iter.check677:                         ; preds = %middle.block672
  %min.epilog.iters.check678 = icmp eq i64 %i.pb, 0
  br i1 %min.epilog.iters.check678, label %.lr.ph587.preheader, label %vec.epilog.ph679, !prof !27

vec.epilog.ph679:                                 ; preds = %vector.main.loop.iter.check665, %vec.epilog.iter.check677
  %vec.epilog.resume.val674 = phi i64 [ %n.vec668, %vec.epilog.iter.check677 ], [ 0, %vector.main.loop.iter.check665 ]
  %n.vec680 = and i64 %i.oz, -4                   ; 3 uses
  %i.pn = add nsw i64 %n.vec680, %i.ov
  br label %vec.epilog.vector.body681

vec.epilog.vector.body681:                        ; preds = %vec.epilog.vector.body681, %vec.epilog.ph679
  %index682 = phi i64 [ %vec.epilog.resume.val674, %vec.epilog.ph679 ], [ %index.next683, %vec.epilog.vector.body681 ] ; 2 uses
  %i.po = add i64 %index682, %i.ov                ; 2 uses
  %i.pp = getelementptr [8 x i8], ptr %14, i64 %i.po
  store <4 x double> zeroinitializer, ptr %i.pp, align 8, !tbaa !24
  %i.pq = getelementptr [8 x i8], ptr %15, i64 %i.po
  store <4 x double> splat (double 1.000000e+00), ptr %i.pq, align 8, !tbaa !24
  %index.next683 = add nuw i64 %index682, 4       ; 2 uses
  %i.pr = icmp eq i64 %index.next683, %n.vec680
  br i1 %i.pr, label %vec.epilog.middle.block684, label %vec.epilog.vector.body681, !llvm.loop !18

vec.epilog.middle.block684:                       ; preds = %vec.epilog.vector.body681
  %cmp.n685 = icmp eq i64 %i.oz, %n.vec680
  br i1 %cmp.n685, label %._crit_edge588, label %.lr.ph587.preheader

.lr.ph587.preheader:                              ; preds = %iter.check675, %vec.epilog.iter.check677, %vec.epilog.middle.block684
  %indvars.iv606.ph = phi i64 [ %i.ov, %iter.check675 ], [ %i.pc, %vec.epilog.iter.check677 ], [ %i.pn, %vec.epilog.middle.block684 ] ; 4 uses
  %i.ps = add nsw i64 %i.ow, %i.ox                ; 2 uses
  %i.pt = sub nsw i64 %i.ps, %indvars.iv606.ph
  %xtraiter690 = and i64 %i.pt, 7                 ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %.lr.ph587.prol.loopexit, label %.lr.ph587.prol

.lr.ph587.prol:                                   ; preds = %.lr.ph587.preheader, %.lr.ph587.prol
  %indvars.iv606.prol = phi i64 [ %indvars.iv.next607.prol, %.lr.ph587.prol ], [ %indvars.iv606.ph, %.lr.ph587.preheader ] ; 3 uses
  %prol.iter692 = phi i64 [ %prol.iter692.next, %.lr.ph587.prol ], [ 0, %.lr.ph587.preheader ]
  %indvars.iv.next607.prol = add nsw i64 %indvars.iv606.prol, 1 ; 2 uses
  %i.pu = getelementptr [8 x i8], ptr %14, i64 %indvars.iv606.prol
  store double 0.000000e+00, ptr %i.pu, align 8, !tbaa !24
  %i.pv = getelementptr [8 x i8], ptr %15, i64 %indvars.iv606.prol
  store double 1.000000e+00, ptr %i.pv, align 8, !tbaa !24
  %prol.iter692.next = add i64 %prol.iter692, 1   ; 2 uses
  %prol.iter692.cmp.not = icmp eq i64 %prol.iter692.next, %xtraiter690
  br i1 %prol.iter692.cmp.not, label %.lr.ph587.prol.loopexit, label %.lr.ph587.prol, !llvm.loop !19

.lr.ph587.prol.loopexit:                          ; preds = %.lr.ph587.prol, %.lr.ph587.preheader
  %indvars.iv606.unr = phi i64 [ %indvars.iv606.ph, %.lr.ph587.preheader ], [ %indvars.iv.next607.prol, %.lr.ph587.prol ]
  %i.pw = sub nsw i64 %indvars.iv606.ph, %i.ps
  %i.px = icmp ugt i64 %i.pw, -8
  br i1 %i.px, label %._crit_edge588, label %.lr.ph587

.lr.ph587:                                        ; preds = %.lr.ph587.prol.loopexit, %.lr.ph587
  %indvars.iv606 = phi i64 [ %indvars.iv.next607.7, %.lr.ph587 ], [ %indvars.iv606.unr, %.lr.ph587.prol.loopexit ] ; 10 uses
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, 1 ; 2 uses
  %i.py = getelementptr [8 x i8], ptr %14, i64 %indvars.iv606
  store double 0.000000e+00, ptr %i.py, align 8, !tbaa !24
  %i.pz = getelementptr [8 x i8], ptr %15, i64 %indvars.iv606
  store double 1.000000e+00, ptr %i.pz, align 8, !tbaa !24
  %indvars.iv.next607.1 = add nsw i64 %indvars.iv606, 2 ; 2 uses
  %i.qa = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607
  store double 0.000000e+00, ptr %i.qa, align 8, !tbaa !24
  %i.qb = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607
  store double 1.000000e+00, ptr %i.qb, align 8, !tbaa !24
  %indvars.iv.next607.2 = add nsw i64 %indvars.iv606, 3 ; 2 uses
  %i.qc = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.1
  store double 0.000000e+00, ptr %i.qc, align 8, !tbaa !24
  %i.qd = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.1
  store double 1.000000e+00, ptr %i.qd, align 8, !tbaa !24
  %indvars.iv.next607.3 = add nsw i64 %indvars.iv606, 4 ; 2 uses
  %i.qe = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.2
  store double 0.000000e+00, ptr %i.qe, align 8, !tbaa !24
  %i.qf = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.2
  store double 1.000000e+00, ptr %i.qf, align 8, !tbaa !24
  %indvars.iv.next607.4 = add nsw i64 %indvars.iv606, 5 ; 2 uses
  %i.qg = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.3
  store double 0.000000e+00, ptr %i.qg, align 8, !tbaa !24
  %i.qh = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.3
  store double 1.000000e+00, ptr %i.qh, align 8, !tbaa !24
  %indvars.iv.next607.5 = add nsw i64 %indvars.iv606, 6 ; 2 uses
  %i.qi = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.4
  store double 0.000000e+00, ptr %i.qi, align 8, !tbaa !24
  %i.qj = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.4
  store double 1.000000e+00, ptr %i.qj, align 8, !tbaa !24
  %indvars.iv.next607.6 = add nsw i64 %indvars.iv606, 7 ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.5
  store double 0.000000e+00, ptr %i.qk, align 8, !tbaa !24
  %i.ql = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.5
  store double 1.000000e+00, ptr %i.ql, align 8, !tbaa !24
  %indvars.iv.next607.7 = add nsw i64 %indvars.iv606, 8 ; 2 uses
  %i.qm = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.6
  store double 0.000000e+00, ptr %i.qm, align 8, !tbaa !24
  %i.qn = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.6
  store double 1.000000e+00, ptr %i.qn, align 8, !tbaa !24
  %exitcond610.not.7 = icmp eq i64 %indvars.iv.next607.7, %wide.trip.count609
  br i1 %exitcond610.not.7, label %._crit_edge588, label %.lr.ph587, !llvm.loop !20

._crit_edge588:                                   ; preds = %.lr.ph587.prol.loopexit, %.lr.ph587, %middle.block672, %vec.epilog.middle.block684, %._crit_edge583
  %i.qo = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.qp = icmp slt i32 %i.ou, %i.qo
  br i1 %i.qp, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge588
  %i.qq = sext i32 %i.os to i64
  %i.qr = sext i32 %i.ot to i64
  %i.qs = add nsw i64 %i.qq, %i.qr
  %i.qt = shl nsw i64 %i.qs, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %14, i64 %i.qt
  %i.qu = xor i32 %i.ou, -1
  %i.qv = add i32 %i.qo, %i.qu
  %i.qw = zext i32 %i.qv to i64
  %i.qx = shl nuw nsw i64 %i.qw, 3
  %i.qy = add nuw nsw i64 %i.qx, 8                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.qy, i1 false), !tbaa !24
  %scevgep611 = getelementptr i8, ptr %15, i64 %i.qt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep611, i8 0, i64 %i.qy, i1 false), !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge588, %bb.bf
  %.0485559 = phi i32 [ 41, %bb.bf ], [ %.0485572, %._crit_edge588 ], [ %.0485572, %.loopexit.loopexit ]
  store i32 %.0485559, ptr %23, align 4, !tbaa !21
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlags2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlapll_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!8 = distinct !{!8, !22}
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !22}
!11 = distinct !{!11, !22}
!12 = distinct !{!12, !22, !25, !26}
!13 = distinct !{!13, !22, !25, !26}
!14 = distinct !{!14, !28}
!15 = distinct !{!15, !22, !25}
!16 = distinct !{!16, !22}
!17 = distinct !{!17, !22, !25, !26}
!18 = distinct !{!18, !22, !25, !26}
!19 = distinct !{!19, !28}
!20 = distinct !{!20, !22, !25}
!21 = !{!5, !5, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"double", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
