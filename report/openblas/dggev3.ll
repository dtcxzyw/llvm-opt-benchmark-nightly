Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggev3?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DGGEV3 \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b38 = internal global double 0.000000e+00, align 8
@c_b39 = internal global double 1.000000e+00, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: nounwind uwtable
define void @dggev3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef captures(none) initializes((0, 4)) %16) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca i32, align 4                      ; 27 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [1 x i32], align 4                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 8 uses
  %i.k = alloca double, align 8                   ; 7 uses
  %i.l = alloca double, align 8                   ; 6 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %i.n = alloca double, align 8                   ; 10 uses
  %i.o = alloca i32, align 4                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.q = load i32, ptr %4, align 4, !tbaa !8      ; 2 uses
  %narrow = xor i32 %i.q, -1
  %i.r = sext i32 %narrow to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %6, align 4, !tbaa !8      ; 3 uses
  %narrow583 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow583 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %5, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %8, i64 -8 ; 2 uses
  %i.x = load i32, ptr %11, align 4, !tbaa !8     ; 5 uses
  %narrow586 = xor i32 %i.x, -1
  %i.y = sext i32 %narrow586 to i64               ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %10, i64 %i.y ; 8 uses
  %i.aa = load i32, ptr %13, align 4, !tbaa !8    ; 3 uses
  %narrow587 = xor i32 %i.aa, -1
  %i.ab = sext i32 %narrow587 to i64              ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %12, i64 %i.ab ; 6 uses
  %i.ad = getelementptr inbounds i8, ptr %14, i64 -8 ; 3 uses
  %i.ae = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.b, label %.thread771

bb.b:                                             ; preds = %bb.a
  %i.af = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not571.not = icmp eq i32 %i.af, 0             ; 2 uses
  %not..not571 = icmp ne i32 %i.af, 0             ; 3 uses
  %i.ag = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #6
  %.not572 = icmp eq i32 %i.ag, 0
  br i1 %.not572, label %bb.c, label %.thread

.thread771:                                       ; preds = %bb.a
  %i.ah = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #6
  %.not572772 = icmp eq i32 %i.ah, 0
  br i1 %.not572772, label %.thread785, label %.thread.thread

.thread785:                                       ; preds = %.thread771
  %i.ai = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  store i32 0, ptr %16, align 4, !tbaa !8
  br label %bb.d

.thread.thread:                                   ; preds = %.thread771
  store i32 0, ptr %16, align 4, !tbaa !8
  br label %.thread608

bb.c:                                             ; preds = %bb.b
  %i.aj = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  store i32 0, ptr %16, align 4, !tbaa !8
  br i1 %.not571.not, label %.thread617.sink.split, label %bb.d

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %16, align 4, !tbaa !8
  br i1 %.not571.not, label %.thread617.sink.split, label %.thread608

bb.d:                                             ; preds = %.thread785, %bb.c
  %i.ak = phi i32 [ %i.ai, %.thread785 ], [ %i.aj, %bb.c ]
  %17 = phi i1 [ false, %.thread785 ], [ %not..not571, %bb.c ]
  %.not573.not = icmp eq i32 %i.ak, 0
  br i1 %.not573.not, label %.thread617.sink.split, label %.thread608

.thread608:                                       ; preds = %.thread.thread, %.thread, %bb.d
  %.not572773 = phi i1 [ true, %bb.d ], [ false, %.thread ], [ false, %.thread.thread ] ; 4 uses
  %i.al = phi i1 [ %17, %bb.d ], [ %not..not571, %.thread ], [ false, %.thread.thread ] ; 4 uses
  %i.am = phi i1 [ true, %bb.d ], [ %not..not571, %.thread ], [ false, %.thread.thread ] ; 4 uses
  %i.an = load i32, ptr %15, align 4, !tbaa !8    ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1                   ; 2 uses
  %i.ap = load i32, ptr %2, align 4, !tbaa !8     ; 5 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread617.sink.split, label %bb.e

bb.e:                                             ; preds = %.thread608
  %i.ar = load i32, ptr %4, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 1) ; 2 uses
  %i.as = icmp slt i32 %i.ar, %spec.select
  br i1 %i.as, label %.thread617.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %6, align 4, !tbaa !8
  %i.au = icmp slt i32 %i.at, %spec.select
  br i1 %i.au, label %.thread617.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %11, align 4, !tbaa !8    ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  %i.ax = icmp samesign ult i32 %i.av, %i.ap
  %or.cond639 = select i1 %i.al, i1 %i.ax, i1 false
  %or.cond641 = select i1 %i.aw, i1 true, i1 %or.cond639
  br i1 %or.cond641, label %.thread617.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %13, align 4, !tbaa !8    ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  %i.ba = icmp samesign ult i32 %i.ay, %i.ap
  %or.cond640 = select i1 %.not572773, i1 %i.ba, i1 false
  %or.cond642 = select i1 %i.az, i1 true, i1 %or.cond640
  br i1 %or.cond642, label %.thread617.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.bb = shl i32 %i.ap, 3                        ; 2 uses
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !8
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1)
  %i.bd = icmp sge i32 %i.an, %i.bc
  %or.cond = or i1 %i.ao, %i.bd
  br i1 %or.cond, label %bb.j, label %.thread617.sink.split

bb.j:                                             ; preds = %bb.i
  call void @dgeqrf_(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %14, ptr noundef %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  %i.be = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.bf = shl i32 %i.be, 3
  %i.bg = call i32 @llvm.smax.i32(i32 %i.bf, i32 1) ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !8
  %i.bh = mul nsw i32 %i.be, 3
  %i.bi = load double, ptr %14, align 8, !tbaa !9
  %i.bj = fptosi double %i.bi to i32
  %i.bk = add nsw i32 %i.bh, %i.bj
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bk) ; 2 uses
  call void @dormqr_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !8
  %i.bm = load i32, ptr %2, align 4, !tbaa !8
  %i.bn = mul nsw i32 %i.bm, 3
  %i.bo = load double, ptr %14, align 8, !tbaa !9
  %i.bp = fptosi double %i.bo to i32
  %i.bq = add nsw i32 %i.bn, %i.bp                ; 2 uses
  store i32 %i.bq, ptr %i.b, align 4, !tbaa !8
  %i.br = call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bq) ; 3 uses
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @dorgqr_(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  store i32 %i.br, ptr %i.a, align 4, !tbaa !8
  %i.bs = load i32, ptr %2, align 4, !tbaa !8
  %i.bt = mul nsw i32 %i.bs, 3
  %i.bu = load double, ptr %14, align 8, !tbaa !9
  %i.bv = fptosi double %i.bu to i32
  %i.bw = add nsw i32 %i.bt, %i.bv                ; 2 uses
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !8
  %i.bx = call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bw)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.bx, %bb.k ], [ %i.br, %bb.j ] ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @dgghd3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  br label %.thread612

bb.n:                                             ; preds = %bb.l
  call void @dgghd3_(ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  br label %.thread612

.thread612:                                       ; preds = %bb.m, %bb.n
  %.str.4.sink = phi ptr [ @.str.4, %bb.m ], [ @.str.5, %bb.n ]
  store i32 %.0, ptr %i.a, align 4, !tbaa !8
  %i.by = load i32, ptr %2, align 4, !tbaa !8
  %i.bz = mul nsw i32 %i.by, 3
  %i.ca = load double, ptr %14, align 8, !tbaa !9
  %i.cb = fptosi double %i.ca to i32
  %i.cc = add nsw i32 %i.bz, %i.cb                ; 2 uses
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !8
  %i.cd = call i32 @llvm.smax.i32(i32 %.0, i32 %i.cc) ; 2 uses
  call void @dhgeqz_(ptr noundef nonnull %.str.4.sink, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull @c_n1, ptr noundef nonnull %i.e) #6
  %i.ce = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.cf = shl i32 %i.ce, 1
  %i.cg = load double, ptr %14, align 8, !tbaa !9
  %i.ch = fptosi double %i.cg to i32
  %i.ci = add nsw i32 %i.cf, %i.ch                ; 2 uses
  %i.cj = call i32 @llvm.smax.i32(i32 %i.cd, i32 %i.ci)
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !8
  store i32 %i.ci, ptr %i.b, align 4, !tbaa !8
  %i.ck = uitofp nneg i32 %i.cj to double         ; 2 uses
  store double %i.ck, ptr %14, align 8, !tbaa !9
  %.pr616.pr = load i32, ptr %16, align 4, !tbaa !8 ; 2 uses
  %.not581 = icmp eq i32 %.pr616.pr, 0
  br i1 %.not581, label %bb.o, label %.thread617

.thread617.sink.split:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.thread608, %bb.d, %bb.c, %.thread
  %.sink = phi i32 [ -1, %bb.c ], [ -3, %.thread608 ], [ -7, %bb.f ], [ -14, %bb.h ], [ -12, %bb.g ], [ -5, %bb.e ], [ -2, %bb.d ], [ -1, %.thread ], [ -16, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %16, align 4, !tbaa !8
  br label %.thread617

.thread617:                                       ; preds = %.thread617.sink.split, %.thread612
  %i.cl = phi i32 [ %.pr616.pr, %.thread612 ], [ %.sink, %.thread617.sink.split ]
  %i.cm = sub nsw i32 0, %i.cl
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !8
  %i.cn = call i32 @xerbla_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %bb.bd

bb.o:                                             ; preds = %.thread612
  %i.co = icmp eq i32 %i.ce, 0
  %or.cond822 = select i1 %i.ao, i1 true, i1 %i.co
  br i1 %or.cond822, label %bb.bd, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = call double @dlamch_(ptr noundef nonnull @.str.7) #6
  %i.cq = call double @dlamch_(ptr noundef nonnull @.str.4) #6 ; 2 uses
  store double %i.cq, ptr %i.n, align 8, !tbaa !9
  %i.cr = fdiv double 1.000000e+00, %i.cq
  store double %i.cr, ptr %i.k, align 8, !tbaa !9
  call void @dlabad_(ptr noundef nonnull %i.n, ptr noundef nonnull %i.k) #6
  %i.cs = load double, ptr %i.n, align 8, !tbaa !9
  %i.ct = call double @sqrt(double noundef %i.cs) #6
  %i.cu = fdiv double %i.ct, %i.cp                ; 2 uses
  store double %i.cu, ptr %i.n, align 8, !tbaa !9
  %i.cv = fdiv double 1.000000e+00, %i.cu
  store double %i.cv, ptr %i.k, align 8, !tbaa !9
  %i.cw = call double @dlange_(ptr noundef nonnull @.str.8, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %14) #6 ; 4 uses
  store double %i.cw, ptr %i.c, align 8, !tbaa !9
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00
  %i.cy = load double, ptr %i.n, align 8          ; 2 uses
  %i.cz = fcmp olt double %i.cw, %i.cy
  %or.cond647 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond647, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load double, ptr %i.k, align 8, !tbaa !9 ; 2 uses
  %i.db = fcmp ogt double %i.cw, %i.da
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %storemerge643 = phi double [ %i.cy, %bb.p ], [ %i.da, %bb.q ]
  store double %storemerge643, ptr %i.l, align 8, !tbaa !9
  call void @dlascl_(ptr noundef nonnull @.str.9, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.e) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.not582624 = phi i1 [ false, %bb.r ], [ true, %bb.q ]
  %i.dc = call double @dlange_(ptr noundef nonnull @.str.8, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %14) #6 ; 4 uses
  store double %i.dc, ptr %i.d, align 8, !tbaa !9
  %i.dd = fcmp ogt double %i.dc, 0.000000e+00
  %i.de = load double, ptr %i.n, align 8          ; 2 uses
  %i.df = fcmp olt double %i.dc, %i.de
  %or.cond649 = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond649, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load double, ptr %i.k, align 8, !tbaa !9 ; 2 uses
  %i.dh = fcmp ogt double %i.dc, %i.dg
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  %storemerge644 = phi double [ %i.de, %bb.s ], [ %i.dg, %bb.t ]
  store double %storemerge644, ptr %i.m, align 8, !tbaa !9
  call void @dlascl_(ptr noundef nonnull @.str.9, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.e) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.not584629 = phi i1 [ false, %bb.u ], [ true, %bb.t ]
  %i.di = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.dj = add nsw i32 %i.di, 1                    ; 2 uses
  %i.dk = add nsw i32 %i.dj, %i.di                ; 3 uses
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.dl ; 3 uses
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.dn ; 7 uses
  call void @dggbal_(ptr noundef nonnull @.str.7, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %14, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.do, ptr noundef nonnull %i.e) #6
  %i.dp = load i32, ptr %i.o, align 4, !tbaa !8
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = load i32, ptr %i.p, align 4, !tbaa !8   ; 3 uses
  %i.ds = sub i32 %i.dq, %i.dr                    ; 3 uses
  store i32 %i.ds, ptr %i.g, align 4, !tbaa !8
  br i1 %i.am, label %bb.w, label %bb.x

end_hunk_0
