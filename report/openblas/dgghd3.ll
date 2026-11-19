Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgghd3?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGGHD3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@c_b14 = internal global double 0.000000e+00, align 8
@c_b15 = internal global double 1.000000e+00, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@c__2 = internal global i32 2, align 4
@c__3 = internal global i32 3, align 4
@c__16 = internal global i32 16, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"No Transpose\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: nounwind uwtable
define void @dgghd3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef initializes((0, 8)) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef captures(none) initializes((0, 4)) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %13 to i64                 ; 5 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 5 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 26 uses
  %i.f = alloca i32, align 4                      ; 38 uses
  %i.g = alloca i32, align 4                      ; 35 uses
  %i.h = alloca i32, align 4                      ; 34 uses
  %i.i = alloca i32, align 4                      ; 24 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 8 uses
  %i.o = alloca double, align 8                   ; 12 uses
  %i.p = alloca double, align 8                   ; 13 uses
  %i.q = alloca double, align 8                   ; 13 uses
  %i.r = alloca i32, align 4                      ; 53 uses
  %i.s = alloca [1 x i8], align 1                 ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca i32, align 4                      ; 28 uses
  %i.v = alloca i32, align 4                      ; 45 uses
  %i.w = alloca i32, align 4                      ; 18 uses
  %i.x = alloca i32, align 4                      ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #4
  %i.y = load i32, ptr %6, align 4, !tbaa !73     ; 13 uses
  %narrow = xor i32 %i.y, -1
  %i.z = sext i32 %narrow to i64                  ; 10 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %5, i64 %i.z ; 36 uses
  %i.ab = load i32, ptr %8, align 4, !tbaa !73    ; 7 uses
  %narrow1016 = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow1016 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ac ; 22 uses
  %i.ae = load i32, ptr %10, align 4, !tbaa !73   ; 4 uses
  %narrow1017 = xor i32 %i.ae, -1
  %i.af = sext i32 %narrow1017 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %9, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %12, align 4, !tbaa !73   ; 4 uses
  %narrow1018 = xor i32 %i.ah, -1
  %i.ai = sext i32 %narrow1018 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %11, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %13, i64 -8       ; 72 uses
  store i32 0, ptr %15, align 4, !tbaa !73
  %i.al = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4 ; 7 uses
  %i.am = load i32, ptr %2, align 4, !tbaa !73
  %i.an = mul i32 %i.al, 6
  %i.ao = mul i32 %i.an, %i.am                    ; 2 uses
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !73
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 1) ; 2 uses
  %i.aq = uitofp nneg i32 %i.ap to double         ; 2 uses
  store double %i.aq, ptr %13, align 8, !tbaa !75
  %i.ar = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not = icmp eq i32 %i.ar, 0                    ; 6 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %i.at = icmp ne i32 %i.as, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.au = phi i1 [ true, %bb.a ], [ %i.at, %bb.b ] ; 4 uses
  %i.av = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.2) #4
  %.not974 = icmp eq i32 %i.av, 0                 ; 2 uses
  br i1 %.not974, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %i.ax = icmp ne i32 %i.aw, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = phi i1 [ true, %bb.c ], [ %i.ax, %bb.d ] ; 5 uses
  %i.az = load i32, ptr %14, align 4, !tbaa !73
  %i.ba = icmp eq i32 %i.az, -1                   ; 2 uses
  %i.bb = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.au
  br i1 %or.cond, label %bb.f, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %i.be = icmp ne i32 %i.bd, 0
  %or.cond3 = select i1 %i.be, i1 true, i1 %i.ay
  br i1 %or.cond3, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %2, align 4, !tbaa !73    ; 5 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load i32, ptr %3, align 4, !tbaa !73    ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %i.bf
  %i.bl = add nsw i32 %i.bh, -1
  %i.bm = icmp slt i32 %i.bj, %i.bl
  %or.cond1020 = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond1020, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %6, align 4, !tbaa !73
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 1) ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %spec.select
  br i1 %i.bo, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr %8, align 4, !tbaa !73
  %i.bq = icmp slt i32 %i.bp, %spec.select
  br i1 %i.bq, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load i32, ptr %10, align 4, !tbaa !73   ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.bf
  %or.cond1587 = select i1 %i.au, i1 %i.bs, i1 false
  %i.bt = icmp slt i32 %i.br, 1
  %or.cond1588 = select i1 %or.cond1587, i1 true, i1 %i.bt
  br i1 %or.cond1588, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %12, align 4, !tbaa !73   ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.bf
  %or.cond1589 = select i1 %i.ay, i1 %i.bv, i1 false
  %i.bw = icmp slt i32 %i.bu, 1
  %or.cond1590 = select i1 %or.cond1589, i1 true, i1 %i.bw
  br i1 %or.cond1590, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %14, align 4, !tbaa !73
  %i.by = icmp sgt i32 %i.bx, 0
  %or.cond5 = select i1 %i.by, i1 true, i1 %i.ba
  br i1 %or.cond5, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %.pr1029 = load i32, ptr %15, align 4, !tbaa !73 ; 2 uses
  %.not975 = icmp eq i32 %.pr1029, 0
  br i1 %.not975, label %bb.p, label %.thread

.thread.sink.split:                               ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ -2, %bb.f ], [ -4, %bb.h ], [ -7, %bb.j ], [ -11, %bb.l ], [ -13, %bb.m ], [ -9, %bb.k ], [ -5, %bb.i ], [ -3, %bb.g ], [ -15, %bb.n ] ; 2 uses
  store i32 %.sink, ptr %15, align 4, !tbaa !73
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.o
  %i.bz = phi i32 [ %.pr1029, %bb.o ], [ %.sink, %.thread.sink.split ]
  %i.ca = sub nsw i32 0, %i.bz
  store i32 %i.ca, ptr %i.c, align 4, !tbaa !73
  %i.cb = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 6) #4 ; 0 uses
  br label %bb.cw

bb.p:                                             ; preds = %bb.o
  br i1 %i.ba, label %bb.cw, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef %9, ptr noundef nonnull %10) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not974, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef %11, ptr noundef nonnull %12) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = load i32, ptr %2, align 4, !tbaa !73    ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.c, align 4, !tbaa !73
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !73
  %i.cf = sext i32 %i.ab to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ad, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %i.ch, ptr noundef nonnull %8) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = load i32, ptr %4, align 4, !tbaa !73
  %i.cj = load i32, ptr %3, align 4, !tbaa !73
  %i.ck = sub nsw i32 %i.ci, %i.cj                ; 2 uses
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.u, align 4, !tbaa !73
  %i.cm = icmp slt i32 %i.ck, 1
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double 1.000000e+00, ptr %13, align 8, !tbaa !75
  br label %bb.cw

bb.y:                                             ; preds = %bb.w
  %i.cn = call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4 ; 3 uses
  %i.co = icmp sgt i32 %i.al, 1
  %i.cp = load i32, ptr %i.u, align 4
  %i.cq = icmp slt i32 %i.al, %i.cp
  %or.cond1023 = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond1023, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  store i32 %i.al, ptr %i.c, align 4, !tbaa !73
  %i.cr = call i32 @ilaenv_(ptr noundef nonnull @c__3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4 ; 2 uses
  store i32 %i.cr, ptr %i.d, align 4, !tbaa !73
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ct = call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cr)
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !73
  %i.cv = icmp slt i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %14, align 4, !tbaa !73
  %i.cx = icmp slt i32 %i.cw, %i.ap
  br i1 %i.cx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i32 2, ptr %i.c, align 4, !tbaa !73
  %i.cy = call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4 ; 2 uses
  store i32 %i.cy, ptr %i.d, align 4, !tbaa !73
  %i.cz = load i32, ptr %i.c, align 4, !tbaa !73
  %i.da = call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.cy) ; 3 uses
  %i.db = load i32, ptr %14, align 4, !tbaa !73   ; 2 uses
  %i.dc = load i32, ptr %2, align 4, !tbaa !73
  %i.dd = mul nsw i32 %i.dc, 6                    ; 2 uses
  %i.de = mul nsw i32 %i.dd, %i.da
  %.not978 = icmp slt i32 %i.db, %i.de
  br i1 %.not978, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = sdiv i32 %i.db, %i.dd
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.ac, %bb.aa, %bb.y
  %.0926 = phi i32 [ %i.da, %bb.ac ], [ %i.cn, %bb.y ], [ %i.cn, %bb.aa ], [ %i.cn, %bb.z ], [ %i.da, %bb.ab ]
  %.0925 = phi i32 [ %i.df, %bb.ac ], [ %i.al, %bb.y ], [ %i.al, %bb.aa ], [ %i.al, %bb.z ], [ 1, %bb.ab ] ; 6 uses
  %i.dg = icmp sge i32 %.0925, %.0926
  %i.dh = load i32, ptr %i.u, align 4
  %.not979 = icmp slt i32 %.0925, %i.dh
  %or.cond1024 = select i1 %i.dg, i1 %.not979, i1 false
  br i1 %or.cond1024, label %bb.ae, label %.loopexit1045.thread

.loopexit1045.thread:                             ; preds = %bb.ad
  %i.di = load i32, ptr %3, align 4, !tbaa !73    ; 2 uses
  store i32 %i.di, ptr %i.m, align 4, !tbaa !73
  %i.dj = load i8, ptr %0, align 1, !tbaa !76
  store i8 %i.dj, ptr %i.s, align 1, !tbaa !76
  %i.dk = load i8, ptr %1, align 1, !tbaa !76
  br label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.dl = call i32 @ilaenv_(ptr noundef nonnull @c__16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4
  %i.dm = icmp eq i32 %i.dl, 2                    ; 5 uses
  %i.dn = load i32, ptr %4, align 4, !tbaa !73
  %i.do = add nsw i32 %i.dn, -2
  store i32 %i.do, ptr %i.c, align 4, !tbaa !73
  store i32 %.0925, ptr %i.d, align 4, !tbaa !73
  %i.dp = load i32, ptr %3, align 4, !tbaa !73
  %i.dq = sext i32 %i.ab to i64                   ; 11 uses
  %i.dr = sext i32 %i.y to i64                    ; 31 uses
  %i.ds = shl nsw i64 %i.z, 3
  %i.dt = add i64 %i.ds, %i.b
  %i.du = add i64 %i.dt, 8
  %i.dv = shl nsw i64 %i.dr, 3
  %i.dw = shl nsw i64 %i.dr, 3
  %i.dx = add i64 %i.a, -8
  %i.dy = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.dz = add i64 %i.dy, %i.b
  %i.ea = shl nsw i64 %i.dr, 3
  %i.eb = mul nsw i64 %i.dr, -8
  %i.ec = add i64 %i.a, -8
  %i.ed = add i64 %i.dy, %i.b
  %i.ee = shl nsw i64 %i.dr, 3
  %i.ef = mul nsw i64 %i.dr, -8
  %i.eg = shl nsw i64 %i.dr, 3
  %i.eh = shl nsw i64 %i.z, 3
  %i.ei = add i64 %i.eh, %i.b
  %i.ej = add i64 %i.ei, 16
  %i.ek = shl nsw i64 %i.dr, 3
  %i.el = mul nsw i64 %i.dr, -8
  %i.em = add i64 %i.a, -16
  %i.en = shl nsw i64 %i.z, 3
  %i.eo = add i64 %i.en, %i.b
  %i.ep = sub i64 %i.em, %i.eo
  %i.eq = shl nsw i64 %i.dr, 3
  %scevgep = getelementptr i8, ptr %5, i64 8
  %scevgep1894 = getelementptr i8, ptr %5, i64 8
  %scevgep1896 = getelementptr i8, ptr %5, i64 8
  %scevgep.a = getelementptr i8, ptr %5, i64 8
  %i.er = mul nsw i64 %i.dr, 24
  %16 = shl nsw i64 %i.z, 3
  %i.es = add nsw i64 %16, 8                      ; 4 uses
  %scevgep1888 = getelementptr i8, ptr %5, i64 %i.es
  %i.et = shl nsw i64 %i.dr, 3
  %scevgep1890 = getelementptr i8, ptr %5, i64 8
  %scevgep1892 = getelementptr i8, ptr %5, i64 %i.es
  %i.eu = shl nsw i64 %i.dr, 3
  %scevgep1894.a = getelementptr i8, ptr %5, i64 8 ; 2 uses
  %scevgep1896.a = getelementptr i8, ptr %5, i64 %i.es
  %i.ev = shl nsw i64 %i.dr, 3
  %scevgep1898 = getelementptr i8, ptr %5, i64 %i.es
  %stride.check = icmp sgt i32 %i.y, 0
  br label %bb.af

bb.af:                                            ; preds = %.loopexit1041, %bb.ae
  %i.ew = phi i32 [ %i.awx, %.loopexit1041 ], [ %.0925, %bb.ae ]
  %i.ex = phi i32 [ %i.awy, %.loopexit1041 ], [ %i.dp, %bb.ae ] ; 47 uses
  store i32 %i.ex, ptr %i.m, align 4, !tbaa !73
  %i.ey = icmp slt i32 %i.ew, 0
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !73  ; 2 uses
  br i1 %i.ey, label %.split, label %bb.ag

.split:                                           ; preds = %bb.af
  %.not1032 = icmp slt i32 %i.ex, %i.ez
  br i1 %.not1032, label %.loopexit1045, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.not1031 = icmp sgt i32 %i.ex, %i.ez
  br i1 %.not1031, label %.loopexit1045, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  store i32 %.0925, ptr %i.e, align 4, !tbaa !73
  %i.fa = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.fb = xor i32 %i.ex, -1                       ; 4 uses
  %i.fc = add i32 %i.fa, %i.fb                    ; 2 uses
  store i32 %i.fc, ptr %i.f, align 4, !tbaa !73
  %i.fd = call i32 @llvm.smin.i32(i32 %.0925, i32 %i.fc) ; 3 uses
  store i32 %i.fd, ptr %i.v, align 4, !tbaa !73
  %i.fe = sub nsw i32 %i.fa, %i.ex                ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = sdiv i32 %i.ff, %i.fd                   ; 2 uses
  %i.fh = add nsw i32 %i.fg, -1                   ; 5 uses
  %i.fi = mul nsw i32 %i.fh, %i.fd
  %i.fj = sub nsw i32 %i.fe, %i.fi
  store i32 %i.fj, ptr %i.r, align 4, !tbaa !73
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r) #4
  %i.fk = load i32, ptr %i.r, align 4, !tbaa !73  ; 2 uses
  %i.fl = mul nsw i32 %i.fk, %i.fk
  %i.fm = add nuw nsw i32 %i.fl, 1                ; 2 uses
  store i32 %i.fh, ptr %i.e, align 4, !tbaa !73
  %.not9811047 = icmp slt i32 %i.fg, 2            ; 2 uses
  %.pre1438 = load i32, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  br i1 %.not9811047, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.fn = phi i32 [ %i.fr, %.lr.ph ], [ %.pre1438, %bb.ah ]
  %.09171049 = phi i32 [ %i.fu, %.lr.ph ], [ %i.fm, %bb.ah ] ; 2 uses
  %.09351048 = phi i32 [ %i.fv, %.lr.ph ], [ 1, %bb.ah ] ; 2 uses
  %i.fo = shl i32 %i.fn, 1                        ; 3 uses
  store i32 %i.fo, ptr %i.f, align 4, !tbaa !73
  store i32 %i.fo, ptr %i.g, align 4, !tbaa !73
  store i32 %i.fo, ptr %i.h, align 4, !tbaa !73
  %i.fp = sext i32 %.09171049 to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.fp
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.h) #4
  %i.fr = load i32, ptr %i.v, align 4, !tbaa !73  ; 4 uses
  %i.fs = shl i32 %i.fr, 2
  %i.ft = mul nsw i32 %i.fs, %i.fr
  %i.fu = add nsw i32 %i.ft, %.09171049           ; 2 uses
  %i.fv = add nuw nsw i32 %.09351048, 1
  %i.fw = load i32, ptr %i.e, align 4, !tbaa !73
  %.not981.not = icmp slt i32 %.09351048, %i.fw
  br i1 %.not981.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.ah
  %i.fx = phi i32 [ %.pre1438, %bb.ah ], [ %i.fr, %.lr.ph ] ; 3 uses
  %.0917.lcssa1046 = phi i32 [ %i.fm, %bb.ah ], [ %i.fu, %.lr.ph ] ; 9 uses
  %i.fy = add i32 %i.ex, -1
  %i.fz = add i32 %i.fy, %i.fx                    ; 2 uses
  store i32 %i.fz, ptr %i.e, align 4, !tbaa !73
  %.not9821162 = icmp sgt i32 %i.ex, %i.fz
  %.pre1447 = sext i32 %.0917.lcssa1046 to i64    ; 22 uses
  br i1 %.not9821162, label %._crit_edge1166, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %._crit_edge
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre1447 ; 3 uses
  %i.gb = add i32 %i.ex, 2
  %i.gc = sub i32 -3, %i.ex
  %i.gd = sext i32 %i.ex to i64                   ; 6 uses
  %i.ge = xor i32 %i.ex, -1
  %i.gf = icmp slt i32 %i.ex, 3
  %. = select i1 %i.gf, i32 0, i32 %i.ex
  %i.gg = add i32 %i.ex, -1
  %i.gh = add nsw i32 %i.ex, 1                    ; 2 uses
  %i.gi = add nsw i64 %i.gd, 1                    ; 2 uses
  %i.gj = mul i64 %i.dv, %i.gi
  %i.gk = shl nsw i64 %.pre1447, 3                ; 2 uses
  %i.gl = add i64 %i.du, %i.gj
  %i.gm = add i64 %i.gk, %i.a
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = add i64 %i.dx, %i.gk
  %i.gp = mul i64 %i.ea, %i.gi
  %i.gq = add i64 %i.dz, %i.gp
  %i.gr = add nsw i64 %i.gd, 1                    ; 2 uses
  %i.gs = mul i64 %i.ee, %i.gr
  %i.gt = add i64 %i.ed, %i.gs
  %i.gu = sub i64 %i.ec, %i.gt
  %i.gv = mul i64 %i.ek, %i.gr
  %i.gw = shl nsw i64 %.pre1447, 3
  %i.gx = add i64 %i.ej, %i.gv
  %i.gy = add i64 %i.gw, %i.a
  %i.gz = sub i64 %i.gx, %i.gy
  %.neg = xor i64 %i.gd, -1
  %.neg2044 = mul i64 %i.eq, %.neg
  %i.ha = add i64 %.neg2044, %i.ep
  %invariant.gep2130 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2132 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2144 = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2148.a = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.op2162 = add i64 %i.gn, -1
  %invariant.gep2150.a = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  %invariant.gep2154.a = getelementptr [8 x i8], ptr %i.ak, i64 %.pre1447
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1165, %.loopexit1039
  %indvar1685 = phi i64 [ 0, %.lr.ph1165 ], [ %indvar.next1686, %.loopexit1039 ] ; 12 uses
  %i.hb = phi i32 [ %i.fx, %.lr.ph1165 ], [ %i.afy, %.loopexit1039 ]
  %indvars.iv1392 = phi i64 [ %i.gd, %.lr.ph1165 ], [ %indvars.iv.next1393, %.loopexit1039 ] ; 21 uses
  %indvars.iv1329 = phi i32 [ %i.gc, %.lr.ph1165 ], [ %indvars.iv.next1330, %.loopexit1039 ] ; 2 uses
  %indvars.iv1309 = phi i32 [ %i.gb, %.lr.ph1165 ], [ %indvars.iv.next1310, %.loopexit1039 ] ; 3 uses
  %i.hc = add i64 %indvar1685, %i.gd
  %i.hd = trunc i64 %indvar1685 to i32
  %i.he = trunc i64 %indvar1685 to i32
  %i.hf = trunc i64 %indvar1685 to i32
  %i.hg = trunc i64 %indvar1685 to i32
  %i.hh = add i32 %i.hg, 2147483647
  %i.hi = mul i64 %i.ef, %indvar1685
  %i.hj = add i64 %i.gu, %i.hi
  %i.hk = mul i64 %i.eb, %indvar1685
  %i.hl = mul i64 %i.dw, %indvar1685
  %i.hm = add nsw i64 %indvars.iv1392, 2          ; 10 uses
  %i.hn = trunc nsw i64 %i.hm to i32              ; 4 uses
  store i32 %i.hn, ptr %i.f, align 4, !tbaa !73
  %i.ho = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %.not9971051 = icmp sgt i64 %i.hm, %i.hp
  br i1 %.not9971051, label %._crit_edge1055, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %bb.ai
  %i.hq = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.hr = mul nsw i64 %indvars.iv1392, %i.dq
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.hq
  %invariant.gep1499 = getelementptr [8 x i8], ptr %i.aa, i64 %i.hq
  %invariant.gep1501 = getelementptr [8 x i8], ptr %i.ad, i64 %i.hr
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1054, %bb.aj
  %indvars.iv = phi i64 [ %i.hp, %.lr.ph1054 ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.hs = load double, ptr %gep, align 8, !tbaa !75
  store double %i.hs, ptr %i.o, align 8, !tbaa !75
  %gep1500 = getelementptr [8 x i8], ptr %invariant.gep1499, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %gep1500, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %gep) #4
  %i.ht = load double, ptr %i.p, align 8, !tbaa !75
  store double %i.ht, ptr %gep1500, align 8, !tbaa !75
  %i.hu = load double, ptr %i.q, align 8, !tbaa !75
  %gep1502 = getelementptr [8 x i8], ptr %invariant.gep1501, i64 %indvars.iv
  store double %i.hu, ptr %gep1502, align 8, !tbaa !75
  %i.hv = load i32, ptr %i.f, align 4, !tbaa !73
  %i.hw = sext i32 %i.hv to i64
  %.not997.not = icmp sgt i64 %indvars.iv, %i.hw
  br i1 %.not997.not, label %bb.aj, label %._crit_edge1055.loopexit, !llvm.loop !9

._crit_edge1055.loopexit:                         ; preds = %bb.aj
  %.pre = load i32, ptr %i.v, align 4, !tbaa !73
  %.pre1439 = load i32, ptr %4, align 4, !tbaa !73
  br label %._crit_edge1055

._crit_edge1055:                                  ; preds = %._crit_edge1055.loopexit, %bb.ai
  %i.hx = phi i32 [ %.pre1439, %._crit_edge1055.loopexit ], [ %i.ho, %bb.ai ] ; 3 uses
  %i.hy = phi i32 [ %.pre, %._crit_edge1055.loopexit ], [ %i.hb, %bb.ai ] ; 16 uses
  %i.hz = load i32, ptr %i.r, align 4, !tbaa !73  ; 6 uses
  %i.ia = sub nsw i32 %i.hn, %i.ex                ; 3 uses
  store i32 %i.ia, ptr %i.w, align 4, !tbaa !73
  %i.ib = mul nsw i32 %i.hy, %i.fh                ; 2 uses
  %i.ic = trunc nsw i64 %indvars.iv1392 to i32    ; 6 uses
  %i.id = add i32 %i.ic, 2
  %i.ie = add i32 %i.id, %i.ib                    ; 3 uses
  %.not9981061 = icmp slt i32 %i.hx, %i.ie
  br i1 %.not9981061, label %bb.am, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %._crit_edge1055
  %reass.sub = sub i32 %i.ex, %i.ic
  %i.if = add i32 %reass.sub, 1
  %i.ig = add i32 %i.hz, 1
  %i.ih = add i32 %i.hz, -2
  %i.ii = mul i32 %i.ig, %i.ih                    ; 3 uses
  %i.ij = add i32 %i.if, %i.ii
  %i.ik = mul nsw i64 %indvars.iv1392, %i.dr
  %i.il = mul nsw i64 %indvars.iv1392, %i.dq
  %i.im = xor i32 %i.hz, -1                       ; 2 uses
end_hunk_0
begin_hunk_1_@dgghd3_:bb.a
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1097, %bb.am
  store i32 %., ptr %i.x, align 4, !tbaa !73
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 6 uses
  %i.ol = trunc nsw i64 %indvars.iv.next1393 to i32 ; 3 uses
  store i32 %i.ol, ptr %i.g, align 4, !tbaa !73
  %i.om = load i32, ptr %2, align 4, !tbaa !73
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %.not10011107.not = icmp slt i64 %indvars.iv1392, %i.on
  br i1 %.not10011107.not, label %.lr.ph1110, label %._crit_edge1111

.lr.ph1110:                                       ; preds = %bb.aq
  %i.oo = mul nsw i64 %indvars.iv1392, %i.dr      ; 2 uses
  %i.op = mul nsw i64 %indvars.iv1392, %i.dq      ; 2 uses
  %invariant.gep1516 = getelementptr [8 x i8], ptr %i.aa, i64 %i.oo ; 3 uses
  %invariant.gep1518 = getelementptr [8 x i8], ptr %i.ad, i64 %i.op ; 3 uses
  %invariant.gep1524 = getelementptr [8 x i8], ptr %i.aa, i64 %i.oo
  %invariant.gep1526 = getelementptr [8 x i8], ptr %i.ad, i64 %i.op
  %i.oq = add i64 %indvar1685, %i.gd
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1110, %bb.au
  %i.or = phi i32 [ %i.ol, %.lr.ph1110 ], [ %i.qu, %bb.au ]
  %indvars.iv1323 = phi i64 [ %i.on, %.lr.ph1110 ], [ %indvars.iv.next1324, %bb.au ] ; 7 uses
  %i.os = add nsw i64 %indvars.iv1323, 1          ; 7 uses
  %i.ot = trunc nsw i64 %i.os to i32
  store i32 %i.ot, ptr %i.f, align 4, !tbaa !73
  store i32 %i.hn, ptr %i.h, align 4, !tbaa !73
  %i.ou = load i32, ptr %4, align 4, !tbaa !73    ; 2 uses
  %i.ov = sext i32 %i.ou to i64
  %.not1010.not = icmp slt i64 %indvars.iv1323, %i.ov ; 2 uses
  %i.ow = sext i32 %i.ou to i64
  %i.ox = select i1 %.not1010.not, i64 %i.os, i64 %i.ow ; 9 uses
  %.not10111099 = icmp slt i64 %i.ox, %i.hm
  br i1 %.not10111099, label %bb.as, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %bb.ar
  %i.oy = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %invariant.gep1520 = getelementptr [8 x i8], ptr %i.ad, i64 %i.oy ; 4 uses
  %invariant.gep1522 = getelementptr [8 x i8], ptr %i.ad, i64 %i.oy ; 3 uses
  %i.oz = shl i64 %i.ox, 3
  %scevgep2043 = getelementptr i8, ptr %invariant.gep1520, i64 %i.oz
  %load_initial = load double, ptr %scevgep2043, align 8 ; 4 uses
  %reass.sub2089 = sub i64 %i.ox, %i.hc
  %i.pa = sub i64 %i.oq, %i.ox
  %i.pb = and i64 %i.pa, 1
  %lcmp.mod.not.not = icmp eq i64 %i.pb, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1102
  %gep1517.prol = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %i.ox
  %i.pc = load double, ptr %gep1517.prol, align 8, !tbaa !75 ; 3 uses
  %gep1519.prol = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %i.ox
  %i.pd = load double, ptr %gep1519.prol, align 8, !tbaa !75 ; 3 uses
  %gep1521.prol = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %i.ox
  %indvars.iv.next1321.prol = add nsw i64 %i.ox, -1 ; 2 uses
  %gep1523.prol = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.prol ; 2 uses
  %i.pe = load double, ptr %gep1523.prol, align 8, !tbaa !75 ; 2 uses
  %i.pf = fneg double %i.pe
  %i.pg = fmul double %i.pd, %i.pf
  %i.ph = call double @llvm.fmuladd.f64(double %i.pc, double %load_initial, double %i.pg)
  store double %i.ph, ptr %gep1521.prol, align 8, !tbaa !75
  %i.pi = fmul double %i.pc, %i.pe
  %i.pj = call double @llvm.fmuladd.f64(double %i.pd, double %load_initial, double %i.pi) ; 2 uses
  store double %i.pj, ptr %gep1523.prol, align 8, !tbaa !75
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1102
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph1102 ], [ %i.pj, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1320.unr = phi i64 [ %i.ox, %.lr.ph1102 ], [ %indvars.iv.next1321.prol, %.prol.loopexit.unr-lcssa ]
  %.lcssa2070.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pc, %.prol.loopexit.unr-lcssa ]
  %.lcssa2069.unr = phi double [ poison, %.lr.ph1102 ], [ %i.pd, %.prol.loopexit.unr-lcssa ]
  %i.pk = icmp eq i64 %reass.sub2089, 2
  br i1 %i.pk, label %._crit_edge1103, label %.lr.ph1102.new

.lr.ph1102.new:                                   ; preds = %.prol.loopexit, %.lr.ph1102.new
  %store_forwarded = phi double [ %i.qa, %.lr.ph1102.new ], [ %store_forwarded.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1102.new ], [ %indvars.iv1320.unr, %.prol.loopexit ] ; 5 uses
  %gep1517 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv1320
  %i.pl = load double, ptr %gep1517, align 8, !tbaa !75 ; 2 uses
  %gep1519 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv1320
  %i.pm = load double, ptr %gep1519, align 8, !tbaa !75 ; 2 uses
  %gep1521 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv1320
  %indvars.iv.next1321 = add nsw i64 %indvars.iv1320, -1 ; 5 uses
  %gep1523 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321 ; 2 uses
  %i.pn = load double, ptr %gep1523, align 8, !tbaa !75 ; 2 uses
  %i.po = fneg double %i.pn
  %i.pp = fmul double %i.pm, %i.po
  %i.pq = call double @llvm.fmuladd.f64(double %i.pl, double %store_forwarded, double %i.pp)
  store double %i.pq, ptr %gep1521, align 8, !tbaa !75
  %i.pr = fmul double %i.pl, %i.pn
  %i.ps = call double @llvm.fmuladd.f64(double %i.pm, double %store_forwarded, double %i.pr) ; 4 uses
  store double %i.ps, ptr %gep1523, align 8, !tbaa !75
  %gep1517.1 = getelementptr [8 x i8], ptr %invariant.gep1516, i64 %indvars.iv.next1321
  %i.pt = load double, ptr %gep1517.1, align 8, !tbaa !75 ; 3 uses
  %gep1519.1 = getelementptr [8 x i8], ptr %invariant.gep1518, i64 %indvars.iv.next1321
  %i.pu = load double, ptr %gep1519.1, align 8, !tbaa !75 ; 3 uses
  %gep1521.1 = getelementptr [8 x i8], ptr %invariant.gep1520, i64 %indvars.iv.next1321
  %indvars.iv.next1321.1 = add nsw i64 %indvars.iv1320, -2 ; 2 uses
  %gep1523.1 = getelementptr [8 x i8], ptr %invariant.gep1522, i64 %indvars.iv.next1321.1 ; 2 uses
  %i.pv = load double, ptr %gep1523.1, align 8, !tbaa !75 ; 2 uses
  %i.pw = fneg double %i.pv
  %i.px = fmul double %i.pu, %i.pw
  %i.py = call double @llvm.fmuladd.f64(double %i.pt, double %i.ps, double %i.px)
  store double %i.py, ptr %gep1521.1, align 8, !tbaa !75
  %i.pz = fmul double %i.pt, %i.pv
  %i.qa = call double @llvm.fmuladd.f64(double %i.pu, double %i.ps, double %i.pz) ; 2 uses
  store double %i.qa, ptr %gep1523.1, align 8, !tbaa !75
  %.not1011.not.1 = icmp sgt i64 %indvars.iv.next1321, %i.hm
  br i1 %.not1011.not.1, label %.lr.ph1102.new, label %._crit_edge1103, !llvm.loop !23

._crit_edge1103:                                  ; preds = %.lr.ph1102.new, %.prol.loopexit
  %store_forwarded.lcssa = phi double [ %load_initial, %.prol.loopexit ], [ %i.ps, %.lr.ph1102.new ]
  %.lcssa2070 = phi double [ %.lcssa2070.unr, %.prol.loopexit ], [ %i.pt, %.lr.ph1102.new ]
  %.lcssa2069 = phi double [ %.lcssa2069.unr, %.prol.loopexit ], [ %i.pu, %.lr.ph1102.new ]
  store double %.lcssa2070, ptr %i.p, align 8, !tbaa !75
  store double %.lcssa2069, ptr %i.q, align 8, !tbaa !75
  store double %store_forwarded.lcssa, ptr %i.o, align 8, !tbaa !75
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge1103, %bb.ar
  br i1 %.not1010.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qb = mul nsw i64 %i.os, %i.dq                ; 2 uses
  %i.qc = getelementptr [8 x i8], ptr %i.ad, i64 %i.qb
  %i.qd = getelementptr [8 x i8], ptr %i.qc, i64 %i.os ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !75
  store double %i.qe, ptr %i.o, align 8, !tbaa !75
  %i.qf = mul nsw i64 %indvars.iv1323, %i.dq      ; 2 uses
  %i.qg = getelementptr [8 x i8], ptr %i.ad, i64 %i.os
  %i.qh = getelementptr [8 x i8], ptr %i.qg, i64 %i.qf ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.o, ptr noundef %i.qh, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.qd) #4
  store double 0.000000e+00, ptr %i.qh, align 8, !tbaa !75
  %i.qi = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %i.qj = trunc nsw i64 %indvars.iv1323 to i32
  %i.qk = sub nsw i32 %i.qj, %i.qi
  store i32 %i.qk, ptr %i.h, align 4, !tbaa !73
  %i.ql = add nsw i32 %i.qi, 1
  %i.qm = sext i32 %i.ql to i64                   ; 2 uses
  %i.qn = getelementptr [8 x i8], ptr %i.ad, i64 %i.qb
  %i.qo = getelementptr [8 x i8], ptr %i.qn, i64 %i.qm
  %i.qp = getelementptr [8 x i8], ptr %i.ad, i64 %i.qf
  %i.qq = getelementptr [8 x i8], ptr %i.qp, i64 %i.qm
  call void @drot_(ptr noundef nonnull %i.h, ptr noundef %i.qo, ptr noundef nonnull @c__1, ptr noundef %i.qq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #4
  %i.qr = load double, ptr %i.p, align 8, !tbaa !75
  %gep1525 = getelementptr [8 x i8], ptr %invariant.gep1524, i64 %i.os
  store double %i.qr, ptr %gep1525, align 8, !tbaa !75
  %i.qs = load double, ptr %i.q, align 8, !tbaa !75
  %i.qt = fneg double %i.qs
  %gep1527 = getelementptr [8 x i8], ptr %invariant.gep1526, i64 %i.os
  store double %i.qt, ptr %gep1527, align 8, !tbaa !75
  %.pre1440 = load i32, ptr %i.g, align 4, !tbaa !73
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.qu = phi i32 [ %i.or, %bb.as ], [ %.pre1440, %bb.at ] ; 2 uses
  %indvars.iv.next1324 = add nsw i64 %indvars.iv1323, -1
  %i.qv = sext i32 %i.qu to i64
  %.not1001.not = icmp sgt i64 %indvars.iv1323, %i.qv
  br i1 %.not1001.not, label %bb.ar, label %._crit_edge1111.loopexit, !llvm.loop !24

._crit_edge1111.loopexit:                         ; preds = %bb.au
  %.pre1441 = load i32, ptr %4, align 4, !tbaa !73
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %._crit_edge1111.loopexit, %bb.aq
  %i.qw = phi i32 [ %.pre1441, %._crit_edge1111.loopexit ], [ %i.hx, %bb.aq ] ; 6 uses
  %i.qx = xor i32 %i.ic, -1
  %i.qy = add i32 %i.qw, %i.qx
  %i.qz = srem i32 %i.qy, 3                       ; 5 uses
  %i.ra = add nsw i32 %i.qz, 1
  store i32 %i.ra, ptr %i.g, align 4, !tbaa !73
  %i.rb = sub nsw i32 %i.qw, %i.ic                ; 2 uses
  %.59401117 = add nsw i32 %i.rb, -3
  %.not1002.not1118 = icmp sgt i32 %.59401117, %i.qz
  br i1 %.not1002.not1118, label %.lr.ph1122, label %bb.aw

.lr.ph1122:                                       ; preds = %._crit_edge1111
  %i.rc = mul nsw i64 %indvars.iv1392, %i.dr      ; 3 uses
  %i.rd = mul nsw i64 %indvars.iv1392, %i.dq      ; 3 uses
  store i32 %i.qw, ptr %i.h, align 4, !tbaa !73
  %i.re = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %.not1009.not1112 = icmp slt i32 %i.re, %i.qw
  %i.rf = sext i32 %i.re to i64                   ; 6 uses
  %i.rg = add i32 %i.qw, %indvars.iv1329
  %i.rh = sext i32 %i.rg to i64                   ; 5 uses
  %i.ri = sext i32 %i.qz to i64                   ; 2 uses
  %invariant.gep1536 = getelementptr [8 x i8], ptr %i.aa, i64 %i.rc
  %invariant.gep1538 = getelementptr [8 x i8], ptr %i.ad, i64 %i.rd
  %invariant.gep1540 = getelementptr [8 x i8], ptr %i.aa, i64 %i.rc
  %invariant.gep1542 = getelementptr [8 x i8], ptr %i.ad, i64 %i.rd
  %i.rj = getelementptr [8 x i8], ptr %i.aa, i64 %i.rc
  %i.rk = getelementptr [8 x i8], ptr %i.ad, i64 %i.rd
  %wide.trip.count = sext i32 %i.qw to i64        ; 6 uses
  %i.rl = add i64 %indvars.iv1392, %i.rh          ; 2 uses
  %i.rm = mul i64 %i.rl, %i.dr
  %i.rn = add i64 %i.rm, %i.z
  %i.ro = add i64 %i.rn, %wide.trip.count
  %i.rp = shl i64 %i.ro, 3                        ; 2 uses
  %scevgep1893 = getelementptr i8, ptr %scevgep, i64 %i.rp ; 2 uses
  %i.rq = add i64 %indvars.iv.next1393, %i.rh     ; 2 uses
  %17 = mul i64 %i.rq, %i.dr
  %18 = add i64 %17, %i.z
  %19 = add i64 %18, %wide.trip.count
  %20 = shl i64 %19, 3                            ; 2 uses
  %scevgep1887 = getelementptr i8, ptr %scevgep1894, i64 %20 ; 2 uses
  %21 = add i64 %i.hm, %i.rh                      ; 2 uses
  %i.rr = mul i64 %21, %i.dr
  %22 = add i64 %i.rr, %i.z
  %23 = add i64 %22, %wide.trip.count
  %24 = shl i64 %23, 3                            ; 2 uses
  %scevgep1897 = getelementptr i8, ptr %scevgep1896, i64 %24 ; 2 uses
  %25 = xor i64 %i.ri, -1
  %i.rs = add nsw i64 %25, %i.rh
  %26 = udiv i64 %i.rs, 3
  %27 = mul i64 %i.er, %26                        ; 3 uses
  %i.rt = sub i64 %i.rp, %27
  %scevgep1891 = getelementptr i8, ptr %scevgep.a, i64 %i.rt
  %i.ru = mul i64 %i.et, %i.rl
  %28 = shl nsw i64 %i.rf, 3                      ; 4 uses
  %i.rv = getelementptr i8, ptr %scevgep1888, i64 %i.ru
  %scevgep1893.a = getelementptr i8, ptr %i.rv, i64 %28 ; 3 uses
  %29 = sub i64 %20, %27
  %scevgep1903 = getelementptr i8, ptr %scevgep1890, i64 %29
  %30 = mul i64 %i.eu, %i.rq
  %31 = getelementptr i8, ptr %scevgep1892, i64 %30
  %scevgep1905 = getelementptr i8, ptr %31, i64 %28 ; 3 uses
  %i.rw = sub i64 %24, %27
  %scevgep1895 = getelementptr i8, ptr %scevgep1894.a, i64 %i.rw
  %i.rx = mul i64 %i.ev, %21
  %i.ry = getelementptr i8, ptr %scevgep1896.a, i64 %i.rx
  %scevgep1897.a = getelementptr i8, ptr %i.ry, i64 %28 ; 3 uses
  %i.rz = add nsw i64 %i.z, %wide.trip.count
  %scevgep1899 = getelementptr i8, ptr %scevgep1898, i64 %28
  %i.sa = sub nsw i64 %wide.trip.count, %i.rf     ; 3 uses
  %min.iters.check1901 = icmp ult i64 %i.sa, 8
  %bound01913 = icmp ult ptr %scevgep1897.a, %scevgep1887
  %bound11914 = icmp ult ptr %scevgep1905, %scevgep1897
  %found.conflict1915 = and i1 %bound01913, %bound11914
  %bound01917 = icmp ult ptr %scevgep1897.a, %scevgep1893
  %bound11918 = icmp ult ptr %scevgep1893.a, %scevgep1897
  %found.conflict1919 = and i1 %bound01917, %bound11918
  %invariant.op2124 = or i1 %found.conflict1915, %found.conflict1919
  %bound01921.a = icmp ult ptr %scevgep1905, %scevgep1893
  %bound11922.a = icmp ult ptr %scevgep1893.a, %scevgep1887
  %found.conflict1923.a = and i1 %bound01921.a, %bound11922.a
  %invariant.op2125 = or i1 %invariant.op2124, %found.conflict1923.a
  %n.vec1926 = and i64 %i.sa, -4                  ; 3 uses
  %i.sb = add nsw i64 %n.vec1926, %i.rf
  %invariant.op2122 = add i64 %i.rf, 1
  %cmp.n1953 = icmp eq i64 %i.sa, %n.vec1926
  br label %bb.av

..loopexit_crit_edge:                             ; preds = %scalar.ph1900, %middle.block1952
  %.lcssa1609 = phi double [ %i.tx, %middle.block1952 ], [ %i.ty, %scalar.ph1900 ]
  store double %.lcssa1609, ptr %i.o, align 8, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.av
  %indvars.iv.next1332 = add nsw i64 %indvars.iv1331, -3 ; 2 uses
  %.not1002.not = icmp sgt i64 %indvars.iv.next1332, %i.ri
  %i.sc = trunc nsw i64 %indvars.iv1331 to i32
  br i1 %.not1002.not, label %bb.av, label %._crit_edge1123, !llvm.loop !25

bb.av:                                            ; preds = %.lr.ph1122, %.loopexit
  %indvars.iv1331 = phi i64 [ %i.rh, %.lr.ph1122 ], [ %indvars.iv.next1332, %.loopexit ] ; 5 uses
  %.5940.in1119 = phi i32 [ %i.rb, %.lr.ph1122 ], [ %i.sc, %.loopexit ]
  %i.sd = add nsw i64 %indvars.iv1331, %indvars.iv.next1393 ; 2 uses
  %gep1537 = getelementptr [8 x i8], ptr %invariant.gep1536, i64 %i.sd
  %i.se = load double, ptr %gep1537, align 8, !tbaa !75 ; 4 uses
  %gep1539 = getelementptr [8 x i8], ptr %invariant.gep1538, i64 %i.sd
  %i.sf = load double, ptr %gep1539, align 8, !tbaa !75 ; 3 uses
  %i.sg = fneg double %i.sf                       ; 3 uses
  %i.sh = add nsw i64 %indvars.iv1331, %i.hm      ; 2 uses
  %gep1541 = getelementptr [8 x i8], ptr %invariant.gep1540, i64 %i.sh
  %i.si = load double, ptr %gep1541, align 8, !tbaa !75 ; 3 uses
  %gep1543 = getelementptr [8 x i8], ptr %invariant.gep1542, i64 %i.sh
  %i.sj = load double, ptr %gep1543, align 8, !tbaa !75 ; 3 uses
  %i.sk = fneg double %i.sj                       ; 2 uses
  %i.sl = add i32 %.5940.in1119, %i.ic            ; 2 uses
  %i.sm = sext i32 %i.sl to i64                   ; 2 uses
  %i.sn = getelementptr [8 x i8], ptr %i.rj, i64 %i.sm
  %i.so = load double, ptr %i.sn, align 8, !tbaa !75 ; 3 uses
  %i.sp = getelementptr [8 x i8], ptr %i.rk, i64 %i.sm
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !75 ; 3 uses
  %i.sr = fneg double %i.sq                       ; 2 uses
  br i1 %.not1009.not1112, label %.lr.ph1115, label %.loopexit

.lr.ph1115:                                       ; preds = %bb.av
  %i.ss = add nsw i64 %indvars.iv1331, %indvars.iv1392 ; 3 uses
  %i.st = mul nsw i64 %i.ss, %i.dr
  %i.su = add nsw i64 %i.ss, 1
  %i.sv = mul nsw i64 %i.su, %i.dr
  %i.sw = add nsw i64 %i.ss, 2
  %i.sx = mul nsw i64 %i.sw, %i.dr
  %i.sy = mul nsw i32 %i.sl, %i.y
  %i.sz = sext i32 %i.sy to i64                   ; 3 uses
  %invariant.gep1528 = getelementptr [8 x i8], ptr %i.aa, i64 %i.st ; 2 uses
  %invariant.gep1530 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sv ; 2 uses
  %invariant.gep1532 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sx ; 2 uses
  %invariant.gep1534 = getelementptr [8 x i8], ptr %i.aa, i64 %i.sz ; 2 uses
  br i1 %min.iters.check1901, label %scalar.ph1900.preheader, label %vector.memcheck1902

vector.memcheck1902:                              ; preds = %.lr.ph1115
  %i.ta = shl nsw i64 %i.sz, 3
  %i.tb = getelementptr i8, ptr %scevgep1899, i64 %i.ta ; 3 uses
  %i.tc = add nsw i64 %i.rz, %i.sz
  %i.td = shl nsw i64 %i.tc, 3
  %i.te = getelementptr i8, ptr %scevgep1894.a, i64 %i.td ; 3 uses
  %bound01903 = icmp ult ptr %i.tb, %scevgep1895
  %bound11904 = icmp ult ptr %scevgep1897.a, %i.te
  %found.conflict1905 = and i1 %bound01903, %bound11904
  %i.tf = or i1 %found.conflict1905, %stride.check
  %bound01906 = icmp ult ptr %i.tb, %scevgep1903
  %bound11907 = icmp ult ptr %scevgep1905, %i.te
  %found.conflict1908 = and i1 %bound01906, %bound11907
  %conflict.rdx = or i1 %i.tf, %found.conflict1908
  %bound01909 = icmp ult ptr %i.tb, %scevgep1891
  %bound11910 = icmp ult ptr %scevgep1893.a, %i.te
  %found.conflict1911 = and i1 %bound01909, %bound11910
  %conflict.rdx1912 = or i1 %conflict.rdx, %found.conflict1911
  %conflict.rdx1924.reass = or i1 %conflict.rdx1912, %invariant.op2125
  br i1 %conflict.rdx1924.reass, label %scalar.ph1900.preheader, label %vector.ph1925

vector.ph1925:                                    ; preds = %vector.memcheck1902
  %broadcast.splatinsert1927 = insertelement <4 x double> poison, double %i.sr, i64 0
  %broadcast.splat1928 = shufflevector <4 x double> %broadcast.splatinsert1927, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1929 = insertelement <4 x double> poison, double %i.so, i64 0
  %broadcast.splat1930 = shufflevector <4 x double> %broadcast.splatinsert1929, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1931 = insertelement <4 x double> poison, double %i.sq, i64 0
  %broadcast.splat1932 = shufflevector <4 x double> %broadcast.splatinsert1931, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1933 = insertelement <4 x double> poison, double %i.sk, i64 0
  %broadcast.splat1934 = shufflevector <4 x double> %broadcast.splatinsert1933, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1935 = insertelement <4 x double> poison, double %i.si, i64 0
  %broadcast.splat1936 = shufflevector <4 x double> %broadcast.splatinsert1935, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1937 = insertelement <4 x double> poison, double %i.sj, i64 0
  %broadcast.splat1938 = shufflevector <4 x double> %broadcast.splatinsert1937, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1939 = insertelement <4 x double> poison, double %i.sg, i64 0
  %broadcast.splat1940 = shufflevector <4 x double> %broadcast.splatinsert1939, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1941 = insertelement <4 x double> poison, double %i.se, i64 0
  %broadcast.splat1942 = shufflevector <4 x double> %broadcast.splatinsert1941, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1943 = insertelement <4 x double> poison, double %i.sf, i64 0
  %broadcast.splat1944 = shufflevector <4 x double> %broadcast.splatinsert1943, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1945

vector.body1945:                                  ; preds = %vector.body1945, %vector.ph1925
  %index1946 = phi i64 [ 0, %vector.ph1925 ], [ %index.next1951, %vector.body1945 ] ; 2 uses
  %.reass2123 = add i64 %index1946, %invariant.op2122 ; 4 uses
  %i.tg = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %.reass2123 ; 2 uses
  %wide.load1947 = load <4 x double>, ptr %i.tg, align 8, !tbaa !75, !alias.scope !84 ; 3 uses
  %i.th = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %.reass2123 ; 2 uses
  %wide.load1948 = load <4 x double>, ptr %i.th, align 8, !tbaa !75, !alias.scope !85, !noalias !84 ; 2 uses
  %i.ti = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %.reass2123 ; 2 uses
  %wide.load1949 = load <4 x double>, ptr %i.ti, align 8, !tbaa !75, !alias.scope !86, !noalias !87 ; 2 uses
  %i.tj = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %.reass2123 ; 2 uses
  %wide.load1950 = load <4 x double>, ptr %i.tj, align 8, !tbaa !75, !alias.scope !88, !noalias !89 ; 2 uses
  %i.tk = fmul <4 x double> %wide.load1949, %broadcast.splat1928
  %i.tl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1930, <4 x double> %wide.load1950, <4 x double> %i.tk)
  store <4 x double> %i.tl, ptr %i.tj, align 8, !tbaa !75, !alias.scope !88, !noalias !89
  %i.tm = fmul <4 x double> %broadcast.splat1930, %wide.load1949
  %i.tn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1932, <4 x double> %wide.load1950, <4 x double> %i.tm) ; 2 uses
  %i.to = fmul <4 x double> %wide.load1948, %broadcast.splat1934
  %i.tp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1936, <4 x double> %i.tn, <4 x double> %i.to)
  store <4 x double> %i.tp, ptr %i.ti, align 8, !tbaa !75, !alias.scope !86, !noalias !87
  %i.tq = fmul <4 x double> %broadcast.splat1936, %wide.load1948
  %i.tr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1938, <4 x double> %i.tn, <4 x double> %i.tq) ; 2 uses
  %i.ts = fmul <4 x double> %wide.load1947, %broadcast.splat1940
  %i.tt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1942, <4 x double> %i.tr, <4 x double> %i.ts)
  store <4 x double> %i.tt, ptr %i.th, align 8, !tbaa !75, !alias.scope !85, !noalias !84
  %i.tu = fmul <4 x double> %broadcast.splat1942, %wide.load1947
  %i.tv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1944, <4 x double> %i.tr, <4 x double> %i.tu)
  store <4 x double> %i.tv, ptr %i.tg, align 8, !tbaa !75, !alias.scope !84
  %index.next1951 = add nuw i64 %index1946, 4     ; 2 uses
  %i.tw = icmp eq i64 %index.next1951, %n.vec1926
  br i1 %i.tw, label %middle.block1952, label %vector.body1945, !llvm.loop !31

middle.block1952:                                 ; preds = %vector.body1945
  %i.tx = extractelement <4 x double> %wide.load1947, i64 3
  br i1 %cmp.n1953, label %..loopexit_crit_edge, label %scalar.ph1900.preheader

scalar.ph1900.preheader:                          ; preds = %vector.memcheck1902, %.lr.ph1115, %middle.block1952
  %indvars.iv1326.ph = phi i64 [ %i.rf, %vector.memcheck1902 ], [ %i.rf, %.lr.ph1115 ], [ %i.sb, %middle.block1952 ]
  br label %scalar.ph1900

scalar.ph1900:                                    ; preds = %scalar.ph1900.preheader, %scalar.ph1900
  %indvars.iv1326 = phi i64 [ %indvars.iv.next1327, %scalar.ph1900 ], [ %indvars.iv1326.ph, %scalar.ph1900.preheader ]
  %indvars.iv.next1327 = add nsw i64 %indvars.iv1326, 1 ; 6 uses
  %gep1529 = getelementptr [8 x i8], ptr %invariant.gep1528, i64 %indvars.iv.next1327 ; 2 uses
  %i.ty = load double, ptr %gep1529, align 8, !tbaa !75 ; 3 uses
  %gep1531 = getelementptr [8 x i8], ptr %invariant.gep1530, i64 %indvars.iv.next1327 ; 2 uses
  %i.tz = load double, ptr %gep1531, align 8, !tbaa !75 ; 2 uses
  %gep1533 = getelementptr [8 x i8], ptr %invariant.gep1532, i64 %indvars.iv.next1327 ; 2 uses
  %i.ua = load double, ptr %gep1533, align 8, !tbaa !75 ; 2 uses
  %gep1535 = getelementptr [8 x i8], ptr %invariant.gep1534, i64 %indvars.iv.next1327 ; 2 uses
  %i.ub = load double, ptr %gep1535, align 8, !tbaa !75 ; 2 uses
  %i.uc = fmul double %i.ua, %i.sr
  %i.ud = call double @llvm.fmuladd.f64(double %i.so, double %i.ub, double %i.uc)
  store double %i.ud, ptr %gep1535, align 8, !tbaa !75
  %i.ue = fmul double %i.so, %i.ua
  %i.uf = call double @llvm.fmuladd.f64(double %i.sq, double %i.ub, double %i.ue) ; 2 uses
  %i.ug = fmul double %i.tz, %i.sk
  %i.uh = call double @llvm.fmuladd.f64(double %i.si, double %i.uf, double %i.ug)
  store double %i.uh, ptr %gep1533, align 8, !tbaa !75
  %i.ui = fmul double %i.si, %i.tz
  %i.uj = call double @llvm.fmuladd.f64(double %i.sj, double %i.uf, double %i.ui) ; 2 uses
  %i.uk = fmul double %i.ty, %i.sg
  %i.ul = call double @llvm.fmuladd.f64(double %i.se, double %i.uj, double %i.uk)
  store double %i.ul, ptr %gep1531, align 8, !tbaa !75
  %i.um = fmul double %i.se, %i.ty
  %i.un = call double @llvm.fmuladd.f64(double %i.sf, double %i.uj, double %i.um)
  store double %i.un, ptr %gep1529, align 8, !tbaa !75
  %exitcond.not = icmp eq i64 %indvars.iv.next1327, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph1900, !llvm.loop !32

._crit_edge1123:                                  ; preds = %.loopexit
  store double %i.se, ptr %i.p, align 8, !tbaa !75
  store double %i.sg, ptr %i.q, align 8, !tbaa !75
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge1123, %._crit_edge1111
  %i.uo = icmp sgt i32 %i.qz, 0
  br i1 %i.uo, label %.preheader, label %.loopexit1040

.preheader:                                       ; preds = %bb.aw
  %i.up = mul nsw i64 %indvars.iv1392, %i.dq
  %i.uq = mul nsw i64 %indvars.iv1392, %i.dr
  %i.ur = zext nneg i32 %i.qz to i64
  %invariant.gep1544 = getelementptr [8 x i8], ptr %i.ad, i64 %i.up
  %invariant.gep1546 = getelementptr [8 x i8], ptr %i.aa, i64 %i.uq
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ax
  %indvars.iv1334 = phi i64 [ %i.ur, %.preheader ], [ %indvars.iv.next1335, %bb.ax ] ; 4 uses
  %i.us = load i32, ptr %4, align 4, !tbaa !73
  %i.ut = load i32, ptr %i.x, align 4, !tbaa !73  ; 2 uses
  %i.uu = sub nsw i32 %i.us, %i.ut
  store i32 %i.uu, ptr %i.g, align 4, !tbaa !73
  %i.uv = add nsw i64 %indvars.iv1334, %indvars.iv.next1393 ; 2 uses
  %gep1545 = getelementptr [8 x i8], ptr %invariant.gep1544, i64 %i.uv
  %i.uw = load double, ptr %gep1545, align 8, !tbaa !75
  %i.ux = fneg double %i.uw
  store double %i.ux, ptr %i.k, align 8, !tbaa !75
  %i.uy = add nsw i32 %i.ut, 1
  %i.uz = add nsw i64 %indvars.iv1334, %indvars.iv1392 ; 2 uses
  %i.va = add nsw i64 %i.uz, 1
  %i.vb = mul nsw i64 %i.va, %i.dr
  %i.vc = sext i32 %i.uy to i64                   ; 2 uses
  %i.vd = getelementptr [8 x i8], ptr %i.aa, i64 %i.vb
  %i.ve = getelementptr [8 x i8], ptr %i.vd, i64 %i.vc
  %i.vf = mul nsw i64 %i.uz, %i.dr
  %i.vg = getelementptr [8 x i8], ptr %i.aa, i64 %i.vf
  %i.vh = getelementptr [8 x i8], ptr %i.vg, i64 %i.vc
  %gep1547 = getelementptr [8 x i8], ptr %invariant.gep1546, i64 %i.uv
  call void @drot_(ptr noundef nonnull %i.g, ptr noundef %i.ve, ptr noundef nonnull @c__1, ptr noundef %i.vh, ptr noundef nonnull @c__1, ptr noundef %gep1547, ptr noundef nonnull %i.k) #4
  %indvars.iv.next1335 = add nsw i64 %indvars.iv1334, -1
  %i.vi = icmp samesign ugt i64 %indvars.iv1334, 1
  br i1 %i.vi, label %bb.ax, label %.loopexit1040, !llvm.loop !33

.loopexit1040:                                    ; preds = %bb.ax, %bb.aw
  %i.vj = load i32, ptr %i.v, align 4, !tbaa !73  ; 2 uses
  %i.vk = add i32 %i.gg, %i.vj
  %i.vl = sext i32 %i.vk to i64
  %i.vm = icmp slt i64 %indvars.iv1392, %i.vl
  br i1 %i.vm, label %bb.ay, label %.loopexit1039

bb.ay:                                            ; preds = %.loopexit1040
  %i.vn = sub nsw i32 %i.ol, %i.ex
  store i32 %i.vn, ptr %i.w, align 4, !tbaa !73
  %i.vo = load i32, ptr %4, align 4, !tbaa !73    ; 5 uses
  %i.vp = load i32, ptr %i.r, align 4, !tbaa !73  ; 5 uses
  %i.vq = sub nsw i32 %i.vo, %i.vp                ; 7 uses
  %i.vr = add nsw i32 %i.vq, 1                    ; 3 uses
  %i.vs = mul nsw i64 %indvars.iv.next1393, %i.dr ; 8 uses
  %i.vt = sext i32 %i.vr to i64
  %i.vu = getelementptr [8 x i8], ptr %i.aa, i64 %i.vs
  %i.vv = getelementptr [8 x i8], ptr %i.vu, i64 %i.vt
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.r, ptr noundef nonnull %i.w, ptr noundef nonnull @c_b15, ptr noundef nonnull %13, ptr noundef nonnull %i.r, ptr noundef %i.vv, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b14, ptr noundef nonnull %i.ga, ptr noundef nonnull @c__1) #4
  %i.vw = load i32, ptr %i.w, align 4, !tbaa !73  ; 6 uses
  %i.vx = add i32 %i.vw, %.0917.lcssa1046
  %i.vy = load i32, ptr %i.r, align 4, !tbaa !73  ; 5 uses
  %i.vz = sub i32 %i.vq, %i.vw
  %i.wa = add i32 %i.vz, %i.vy
  %.not10031127.not = icmp slt i32 %i.vq, %i.wa
  %i.wb = sext i32 %i.vx to i64                   ; 8 uses
  br i1 %.not10031127.not, label %iter.check1831, label %._crit_edge1132

iter.check1831:                                   ; preds = %bb.ay
  %i.wc = sext i32 %i.vq to i64
  %i.wd = add nsw i64 %i.wc, 1                    ; 6 uses
  %i.we = add i32 %i.vy, 1
  %i.wf = add i32 %i.we, %i.vo
  %i.wg = add i32 %i.vw, %i.vp
  %i.wh = sub i32 %i.wf, %i.wg
  %invariant.gep1548 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vs ; 3 uses
  %i.wi = xor i32 %i.vw, -1
  %i.wj = add i32 %i.vy, %i.wi                    ; 3 uses
  %i.wk = zext i32 %i.wj to i64
  %i.wl = add nuw nsw i64 %i.wk, 1                ; 5 uses
  %min.iters.check1815 = icmp ult i32 %i.wj, 3
  br i1 %min.iters.check1815, label %.lr.ph1131.preheader, label %vector.memcheck1816

vector.memcheck1816:                              ; preds = %iter.check1831
  %i.wm = mul i64 %indvar1685, %i.el
  %i.wn = add i64 %i.ha, %i.wm
  %i.wo = sext i32 %i.vp to i64
  %i.wp = sext i32 %i.vo to i64
  %i.wq = shl nsw i64 %i.wp, 3
  %i.wr = add nsw i64 %i.wo, %i.wb
  %i.ws = shl nsw i64 %i.wr, 3
  %i.wt = add i64 %i.ws, %i.wn
  %i.wu = sub i64 %i.wq, %i.wt
  %diff.check1817 = icmp ugt i64 %i.wu, -128
  br i1 %diff.check1817, label %.lr.ph1131.preheader, label %vector.main.loop.iter.check1818

vector.main.loop.iter.check1818:                  ; preds = %vector.memcheck1816
  %min.iters.check1819 = icmp ult i32 %i.wj, 15
  br i1 %min.iters.check1819, label %vec.epilog.ph1835, label %vector.ph1820

vector.ph1820:                                    ; preds = %vector.main.loop.iter.check1818
end_hunk_1
