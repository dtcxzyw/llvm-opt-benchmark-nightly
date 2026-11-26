Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dbdsqr?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DBDSQR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c__1 = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@c_b72 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dbdsqr_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef initializes((0, 4)) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 52 uses
  %i.b = alloca double, align 8                   ; 39 uses
  %i.c = alloca double, align 8                   ; 19 uses
  %i.d = alloca double, align 8                   ; 13 uses
  %i.e = alloca double, align 8                   ; 13 uses
  %i.f = alloca double, align 8                   ; 16 uses
  %i.g = alloca double, align 8                   ; 16 uses
  %i.h = alloca double, align 8                   ; 20 uses
  %i.i = alloca double, align 8                   ; 20 uses
  %i.j = alloca double, align 8                   ; 28 uses
  %i.k = alloca double, align 8                   ; 16 uses
  %i.l = alloca double, align 8                   ; 7 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 14 uses
  %i.o = alloca double, align 8                   ; 4 uses
  %i.p = alloca double, align 8                   ; 14 uses
  %i.q = alloca double, align 8                   ; 16 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  %i.r = getelementptr inbounds i8, ptr %5, i64 -8 ; 40 uses
  %i.s = getelementptr inbounds i8, ptr %6, i64 -8 ; 37 uses
  %i.t = load i32, ptr %8, align 4, !tbaa !27     ; 10 uses
  %narrow = xor i32 %i.t, -1
  %i.u = sext i32 %narrow to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %7, i64 %i.u ; 9 uses
  %i.w = load i32, ptr %10, align 4, !tbaa !27    ; 9 uses
  %narrow897 = xor i32 %i.w, -1
  %i.x = sext i32 %narrow897 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %9, i64 %i.x ; 8 uses
  %i.z = load i32, ptr %12, align 4, !tbaa !27    ; 9 uses
  %narrow898 = xor i32 %i.z, -1
  %i.aa = sext i32 %narrow898 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %11, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %13, i64 -8 ; 32 uses
  store i32 0, ptr %14, align 4, !tbaa !27
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %i.ae = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i32 %i.ad, 0                    ; 2 uses
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.b, label %.thread927.sink.split

bb.b:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %1, align 4, !tbaa !27    ; 5 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread927.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 4, !tbaa !27    ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread927.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %3, align 4, !tbaa !27    ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread927.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i32, ptr %4, align 4, !tbaa !27    ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.thread927.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i32 %i.aj, 0
  %i.aq = load i32, ptr %8, align 4, !tbaa !27    ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.thread927.sink.split, label %bb.i

bb.h:                                             ; preds = %bb.f
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1)
  %i.as = icmp slt i32 %i.aq, %spec.select
  br i1 %i.as, label %.thread927.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = load i32, ptr %10, align 4, !tbaa !27
  %spec.select917 = tail call i32 @llvm.umax.i32(i32 %i.al, i32 1)
  %i.au = icmp slt i32 %i.at, %spec.select917
  br i1 %i.au, label %.thread927.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp eq i32 %i.an, 0
  %i.aw = load i32, ptr %12, align 4, !tbaa !27   ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %.thread927.sink.split, label %bb.m

bb.l:                                             ; preds = %bb.j
  %spec.select918 = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1)
  %i.ay = icmp slt i32 %i.aw, %spec.select918
  br i1 %i.ay, label %.thread927.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pr = load i32, ptr %14, align 4, !tbaa !27    ; 2 uses
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.n, label %.thread927

.thread927.sink.split:                            ; preds = %bb.k, %bb.l, %bb.i, %bb.g, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.d ], [ -9, %bb.g ], [ -11, %bb.i ], [ -5, %bb.e ], [ -3, %bb.c ], [ -9, %bb.h ], [ -13, %bb.l ], [ -13, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %14, align 4, !tbaa !27
  br label %.thread927

.thread927:                                       ; preds = %.thread927.sink.split, %bb.m
  %i.az = phi i32 [ %.pr, %bb.m ], [ %.sink, %.thread927.sink.split ]
  %i.ba = sub nsw i32 0, %i.az
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !27
  %i.bb = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ah, label %bb.o [
    i32 0, label %.loopexit
    i32 1, label %.loopexit979
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = or i32 %i.aj, %i.al
  %i.bd = or i32 %i.bc, %i.an
  %or.cond1749 = icmp eq i32 %i.bd, 0
  br i1 %or.cond1749, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  tail call void @dlasq1_(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %6, ptr noundef %13, ptr noundef nonnull %14) #6
  %i.be = load i32, ptr %14, align 4, !tbaa !27
  %.not895 = icmp eq i32 %i.be, 2
  br i1 %.not895, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %14, align 4, !tbaa !27
  %.pre = load i32, ptr %1, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.q
  %i.bf = phi i32 [ %.pre, %bb.q ], [ %i.ah, %bb.o ] ; 5 uses
  %i.bg = add nsw i32 %i.bf, -1                   ; 4 uses
  %i.bh = shl nsw i32 %i.bg, 1
  %i.bi = mul nsw i32 %i.bg, 3
  %i.bj = tail call double @dlamch_(ptr noundef nonnull @.str.3) #6 ; 8 uses
  %i.bk = tail call double @dlamch_(ptr noundef nonnull @.str.4) #6
  br i1 %i.ag, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.critedge
  %i.bl = load i32, ptr %1, align 4, !tbaa !27    ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !27
  %.not8961075 = icmp slt i32 %i.bl, 2
  br i1 %.not8961075, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bn = sext i32 %i.bg to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ac, i64 %i.bn
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  call void @dlartg_(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #6
  %i.bq = load double, ptr %i.j, align 8, !tbaa !29
  store double %i.bq, ptr %i.bo, align 8, !tbaa !29
  %i.br = load double, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bs = getelementptr [8 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !29
  %i.bu = fmul double %i.br, %i.bt
  store double %i.bu, ptr %i.bp, align 8, !tbaa !29
  %i.bv = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.bw = load double, ptr %i.bs, align 8, !tbaa !29
  %i.bx = fmul double %i.bv, %i.bw
  store double %i.bx, ptr %i.bs, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.bv, ptr %i.by, align 8, !tbaa !29
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %i.br, ptr %gep, align 8, !tbaa !29
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ca = sext i32 %i.bz to i64
  %.not896.not = icmp slt i64 %indvars.iv, %i.ca
  br i1 %.not896.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.r
  %i.cb = load i32, ptr %3, align 4, !tbaa !27
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cd = load i32, ptr %1, align 4, !tbaa !27
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ce
  call void @dlasr_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef %13, ptr noundef nonnull %i.cf, ptr noundef %9, ptr noundef nonnull %10) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.cg = load i32, ptr %4, align 4, !tbaa !27
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load i32, ptr %1, align 4, !tbaa !27
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cj
  call void @dlasr_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %13, ptr noundef nonnull %i.ck, ptr noundef %11, ptr noundef nonnull %12) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge
  %i.cl = call double @pow(double noundef %i.bj, double noundef -1.250000e-01) #6 ; 2 uses
  %i.cm = fcmp oge double %i.cl, 1.000000e+02
  %i.cn = select i1 %i.cm, double 1.000000e+02, double %i.cl ; 2 uses
  %i.co = fcmp ole double %i.cn, 1.000000e+01
  %i.cp = select i1 %i.co, double 1.000000e+01, double %i.cn
  %i.cq = fmul double %i.bj, %i.cp                ; 10 uses
  %i.cr = load i32, ptr %1, align 4, !tbaa !27    ; 12 uses
  %.not8991077 = icmp slt i32 %i.cr, 1
  br i1 %.not8991077, label %.thread, label %.lr.ph1081.preheader

.thread:                                          ; preds = %bb.v
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !27
  br label %._crit_edge1089

.lr.ph1081.preheader:                             ; preds = %bb.v
  %15 = add nuw i32 %i.cr, 1
  %i.ct = zext i32 %15 to i64
  %16 = zext nneg i32 %i.cr to i64                ; 3 uses
  %i.cu = icmp ult i32 %i.cr, 16
  br i1 %i.cu, label %.lr.ph1081.epil.preheader, label %.lr.ph1081.preheader.new

.lr.ph1081.preheader.new:                         ; preds = %.lr.ph1081.preheader
  %unroll_iter.a = and i64 %16, 2147483632        ; 3 uses
  br label %.lr.ph1081.a

.lr.ph1081.a:                                     ; preds = %.lr.ph1081.a, %.lr.ph1081.preheader.new
  %indvars.iv1411.a = phi i64 [ 0, %.lr.ph1081.preheader.new ], [ %indvars.iv.next1412.3, %.lr.ph1081.a ] ; 3 uses
  %vec.phi = phi <4 x double> [ zeroinitializer, %.lr.ph1081.preheader.new ], [ %40, %.lr.ph1081.a ] ; 3 uses
  %vec.phi1913 = phi <4 x double> [ zeroinitializer, %.lr.ph1081.preheader.new ], [ %41, %.lr.ph1081.a ] ; 3 uses
  %vec.phi1914 = phi <4 x double> [ zeroinitializer, %.lr.ph1081.preheader.new ], [ %42, %.lr.ph1081.a ] ; 3 uses
  %vec.phi1915 = phi <4 x double> [ zeroinitializer, %.lr.ph1081.preheader.new ], [ %43, %.lr.ph1081.a ] ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv1411.a ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %19 = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %wide.load = load <4 x double>, ptr %i.cv, align 8, !tbaa !29 ; 3 uses
  %wide.load1916 = load <4 x double>, ptr %17, align 8, !tbaa !29 ; 3 uses
  %wide.load1917 = load <4 x double>, ptr %18, align 8, !tbaa !29 ; 3 uses
  %wide.load1918 = load <4 x double>, ptr %19, align 8, !tbaa !29 ; 3 uses
  %20 = fcmp oge <4 x double> %wide.load, zeroinitializer
  %21 = fcmp oge <4 x double> %wide.load1916, zeroinitializer
  %22 = fcmp oge <4 x double> %wide.load1917, zeroinitializer
  %23 = fcmp oge <4 x double> %wide.load1918, zeroinitializer
  %24 = fneg <4 x double> %wide.load
  %25 = fneg <4 x double> %wide.load1916
  %26 = fneg <4 x double> %wide.load1917
  %27 = fneg <4 x double> %wide.load1918
  %28 = select <4 x i1> %20, <4 x double> %wide.load, <4 x double> %24
  %29 = select <4 x i1> %21, <4 x double> %wide.load1916, <4 x double> %25
  %30 = select <4 x i1> %22, <4 x double> %wide.load1917, <4 x double> %26
  %31 = select <4 x i1> %23, <4 x double> %wide.load1918, <4 x double> %27
  %32 = freeze <4 x double> %28                   ; 3 uses
  %33 = freeze <4 x double> %29                   ; 3 uses
  %34 = freeze <4 x double> %30                   ; 3 uses
  %35 = freeze <4 x double> %31                   ; 3 uses
  %36 = fcmp oge <4 x double> %vec.phi, %32
  %37 = fcmp oge <4 x double> %vec.phi1913, %33
  %38 = fcmp oge <4 x double> %vec.phi1914, %34
  %39 = fcmp oge <4 x double> %vec.phi1915, %35
  %40 = select <4 x i1> %36, <4 x double> %vec.phi, <4 x double> %32 ; 2 uses
  %41 = select <4 x i1> %37, <4 x double> %vec.phi1913, <4 x double> %33 ; 2 uses
  %42 = select <4 x i1> %38, <4 x double> %vec.phi1914, <4 x double> %34 ; 2 uses
  %43 = select <4 x i1> %39, <4 x double> %vec.phi1915, <4 x double> %35 ; 2 uses
  %indvars.iv.next1412.3 = add nuw i64 %indvars.iv1411.a, 16 ; 2 uses
  %44 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %32, /* (nan nzero) */ i32 35)
  %45 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %33, /* (nan nzero) */ i32 35)
  %46 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %34, /* (nan nzero) */ i32 35)
  %47 = call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %35, /* (nan nzero) */ i32 35)
  %48 = or <4 x i1> %44, %45
  %49 = or <4 x i1> %48, %46
  %50 = or <4 x i1> %49, %47
  %51 = bitcast <4 x i1> %50 to i4
  %52 = icmp ne i4 %51, 0                         ; 7 uses
  %niter.ncmp.3.a = icmp eq i64 %indvars.iv.next1412.3, %unroll_iter.a
  %53 = or i1 %52, %niter.ncmp.3.a
  br i1 %53, label %.unr-lcssa, label %.lr.ph1081.a, !llvm.loop !9

.unr-lcssa:                                       ; preds = %.lr.ph1081.a
  %54 = select i1 %52, <4 x double> %vec.phi, <4 x double> %40
  %55 = select i1 %52, <4 x double> %vec.phi1913, <4 x double> %41
  %56 = select i1 %52, <4 x double> %vec.phi1914, <4 x double> %42
  %57 = select i1 %52, <4 x double> %vec.phi1915, <4 x double> %43
  %58 = select i1 %52, i64 %indvars.iv1411.a, i64 %unroll_iter.a
  %rdx.minmax = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %54, <4 x double> %55)
  %rdx.minmax1919 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax, <4 x double> %56)
  %rdx.minmax1920 = call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax1919, <4 x double> %57)
  %59 = call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax1920) ; 2 uses
  %60 = or disjoint i64 %58, 1
  %cmp.n = icmp ne i64 %unroll_iter.a, %16
  %.not1922 = or i1 %cmp.n, %52
  br i1 %.not1922, label %.lr.ph1081.epil.preheader, label %.epilog-lcssa

.lr.ph1081.epil.preheader:                        ; preds = %.lr.ph1081.preheader, %.unr-lcssa
  %indvars.iv1411.epil.init = phi i64 [ 1, %.lr.ph1081.preheader ], [ %60, %.unr-lcssa ]
  %.08551078.epil.init = phi double [ 0.000000e+00, %.lr.ph1081.preheader ], [ %59, %.unr-lcssa ]
  br label %.lr.ph1081.epil

.lr.ph1081.epil:                                  ; preds = %.lr.ph1081.epil.preheader, %.lr.ph1081.epil
  %indvars.iv1411.epil = phi i64 [ %epil.iter.next.a, %.lr.ph1081.epil ], [ %indvars.iv1411.epil.init, %.lr.ph1081.epil.preheader ] ; 2 uses
  %.08551078.epil = phi double [ %i.dc, %.lr.ph1081.epil ], [ %.08551078.epil.init, %.lr.ph1081.epil.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1411.epil
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !29 ; 3 uses
  %i.cy = fcmp oge double %i.cx, 0.000000e+00
  %i.cz = fneg double %i.cx
  %i.da = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  %i.db = fcmp oge double %.08551078.epil, %i.da
  %i.dc = select i1 %i.db, double %.08551078.epil, double %i.da ; 2 uses
  %epil.iter.next.a = add nuw nsw i64 %indvars.iv1411.epil, 1 ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, %i.ct
  br i1 %epil.iter.cmp.not.a, label %.epilog-lcssa, label %.lr.ph1081.epil, !llvm.loop !10

.epilog-lcssa:                                    ; preds = %.lr.ph1081.epil, %.unr-lcssa
  %.lcssa2062 = phi double [ %59, %.unr-lcssa ], [ %i.dc, %.lr.ph1081.epil ] ; 3 uses
  %i.dd = add nsw i32 %i.cr, -1
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !27
  %.not900.not1084.not = icmp eq i32 %i.cr, 1
  br i1 %.not900.not1084.not, label %._crit_edge1089, label %.lr.ph1088.preheader

.lr.ph1088.preheader:                             ; preds = %.epilog-lcssa
  %i.de = add nsw i64 %16, -1                     ; 2 uses
  %xtraiter2065 = and i64 %i.de, 3                ; 3 uses
  %i.df = add nsw i32 %i.cr, -2
  %i.dg = icmp ult i32 %i.df, 3
  br i1 %i.dg, label %.lr.ph1088.epil.preheader, label %.lr.ph1088.preheader.new

.lr.ph1088.preheader.new:                         ; preds = %.lr.ph1088.preheader
  %unroll_iter2070 = and i64 %i.de, -4
  br label %.lr.ph1088

.lr.ph1088:                                       ; preds = %.lr.ph1088, %.lr.ph1088.preheader.new
  %indvars.iv1414 = phi i64 [ 1, %.lr.ph1088.preheader.new ], [ %indvars.iv.next1415.3, %.lr.ph1088 ] ; 5 uses
  %.18561085 = phi double [ %.lcssa2062, %.lr.ph1088.preheader.new ], [ %i.ek, %.lr.ph1088 ] ; 2 uses
  %niter2071 = phi i64 [ 0, %.lr.ph1088.preheader.new ], [ %niter2071.next.3, %.lr.ph1088 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1414
  %i.di = load double, ptr %i.dh, align 8, !tbaa !29 ; 3 uses
  %i.dj = fcmp oge double %i.di, 0.000000e+00
  %i.dk = fneg double %i.di
  %i.dl = select i1 %i.dj, double %i.di, double %i.dk ; 2 uses
  %i.dm = fcmp oge double %.18561085, %i.dl
  %i.dn = select i1 %i.dm, double %.18561085, double %i.dl ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1414
  %i.dp = load double, ptr %i.do, align 8, !tbaa !29 ; 3 uses
  %i.dq = fcmp oge double %i.dp, 0.000000e+00
  %i.dr = fneg double %i.dp
  %i.ds = select i1 %i.dq, double %i.dp, double %i.dr ; 2 uses
  %i.dt = fcmp oge double %i.dn, %i.ds
  %i.du = select i1 %i.dt, double %i.dn, double %i.ds ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1414
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !29 ; 3 uses
  %i.dy = fcmp oge double %i.dx, 0.000000e+00
  %i.dz = fneg double %i.dx
  %i.ea = select i1 %i.dy, double %i.dx, double %i.dz ; 2 uses
  %i.eb = fcmp oge double %i.du, %i.ea
  %i.ec = select i1 %i.eb, double %i.du, double %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1414
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !29 ; 3 uses
  %i.eg = fcmp oge double %i.ef, 0.000000e+00
  %i.eh = fneg double %i.ef
  %i.ei = select i1 %i.eg, double %i.ef, double %i.eh ; 2 uses
  %i.ej = fcmp oge double %i.ec, %i.ei
  %i.ek = select i1 %i.ej, double %i.ec, double %i.ei ; 3 uses
  %indvars.iv.next1415.3 = add nuw nsw i64 %indvars.iv1414, 4 ; 2 uses
  %niter2071.next.3 = add i64 %niter2071, 4       ; 2 uses
  %niter2071.ncmp.3 = icmp eq i64 %niter2071.next.3, %unroll_iter2070
  br i1 %niter2071.ncmp.3, label %._crit_edge1089.loopexit.unr-lcssa, label %.lr.ph1088, !llvm.loop !11

._crit_edge1089.loopexit.unr-lcssa:               ; preds = %.lr.ph1088
  %lcmp.mod2067.not = icmp eq i64 %xtraiter2065, 0
  br i1 %lcmp.mod2067.not, label %._crit_edge1089, label %.lr.ph1088.epil.preheader

.lr.ph1088.epil.preheader:                        ; preds = %._crit_edge1089.loopexit.unr-lcssa, %.lr.ph1088.preheader
  %indvars.iv1414.epil.init = phi i64 [ 1, %.lr.ph1088.preheader ], [ %indvars.iv.next1415.3, %._crit_edge1089.loopexit.unr-lcssa ]
  %.18561085.epil.init = phi double [ %.lcssa2062, %.lr.ph1088.preheader ], [ %i.ek, %._crit_edge1089.loopexit.unr-lcssa ]
  %lcmp.mod2069 = icmp ne i64 %xtraiter2065, 0
  call void @llvm.assume(i1 %lcmp.mod2069)
  br label %.lr.ph1088.epil

.lr.ph1088.epil:                                  ; preds = %.lr.ph1088.epil, %.lr.ph1088.epil.preheader
  %indvars.iv1414.epil = phi i64 [ %indvars.iv1414.epil.init, %.lr.ph1088.epil.preheader ], [ %indvars.iv.next1415.epil, %.lr.ph1088.epil ] ; 2 uses
  %.18561085.epil = phi double [ %.18561085.epil.init, %.lr.ph1088.epil.preheader ], [ %i.er, %.lr.ph1088.epil ] ; 2 uses
  %epil.iter2066 = phi i64 [ 0, %.lr.ph1088.epil.preheader ], [ %epil.iter2066.next, %.lr.ph1088.epil ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1414.epil
  %i.em = load double, ptr %i.el, align 8, !tbaa !29 ; 3 uses
  %i.en = fcmp oge double %i.em, 0.000000e+00
  %i.eo = fneg double %i.em
  %i.ep = select i1 %i.en, double %i.em, double %i.eo ; 2 uses
  %i.eq = fcmp oge double %.18561085.epil, %i.ep
  %i.er = select i1 %i.eq, double %.18561085.epil, double %i.ep ; 2 uses
  %indvars.iv.next1415.epil = add nuw nsw i64 %indvars.iv1414.epil, 1
  %epil.iter2066.next = add i64 %epil.iter2066, 1 ; 2 uses
  %epil.iter2066.cmp.not = icmp eq i64 %epil.iter2066.next, %xtraiter2065
  br i1 %epil.iter2066.cmp.not, label %._crit_edge1089, label %.lr.ph1088.epil, !llvm.loop !12

._crit_edge1089:                                  ; preds = %._crit_edge1089.loopexit.unr-lcssa, %.lr.ph1088.epil, %.thread, %.epilog-lcssa
  %.1856.lcssa = phi double [ 0.000000e+00, %.thread ], [ %.lcssa2062, %.epilog-lcssa ], [ %i.ek, %._crit_edge1089.loopexit.unr-lcssa ], [ %i.er, %.lr.ph1088.epil ]
  %i.es = fcmp oge double %i.cq, 0.000000e+00     ; 5 uses
  br i1 %i.es, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge1089
  %i.et = load double, ptr %5, align 8, !tbaa !29 ; 4 uses
  %i.eu = fcmp ult double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.ev, double %i.et ; 3 uses
  %i.ex = fcmp oeq double %i.et, 0.000000e+00
  %.not9011092 = icmp slt i32 %i.cr, 2
  %or.cond1750 = or i1 %i.ex, %.not9011092
  br i1 %or.cond1750, label %.loopexit980, label %.lr.ph1097.preheader

.lr.ph1097.preheader:                             ; preds = %bb.w
  %i.ey = add nuw i32 %i.cr, 1
  %wide.trip.count1422 = zext i32 %i.ey to i64
  br label %.lr.ph1097

.lr.ph1097:                                       ; preds = %.lr.ph1097, %.lr.ph1097.preheader
  %indvars.iv1419 = phi i64 [ 2, %.lr.ph1097.preheader ], [ %indvars.iv.next1420, %.lr.ph1097 ] ; 3 uses
  %.08371095 = phi double [ %i.ew, %.lr.ph1097.preheader ], [ %i.fo, %.lr.ph1097 ] ; 2 uses
  %.08391094 = phi double [ %i.ew, %.lr.ph1097.preheader ], [ %i.fm, %.lr.ph1097 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1419
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !29 ; 3 uses
  %i.fb = fcmp oge double %i.fa, 0.000000e+00
  %i.fc = fneg double %i.fa
  %i.fd = select i1 %i.fb, double %i.fa, double %i.fc
  %i.fe = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv1419
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !29 ; 3 uses
  %i.fh = fcmp oge double %i.fg, 0.000000e+00
  %i.fi = fneg double %i.fg
  %i.fj = select i1 %i.fh, double %i.fg, double %i.fi
  %i.fk = fadd double %.08391094, %i.fj
  %i.fl = fdiv double %.08391094, %i.fk
  %i.fm = fmul double %i.fd, %i.fl                ; 3 uses
  %i.fn = fcmp ole double %.08371095, %i.fm
  %i.fo = select i1 %i.fn, double %.08371095, double %i.fm ; 3 uses
  %i.fp = fcmp oeq double %i.fo, 0.000000e+00
  %indvars.iv.next1420 = add nuw nsw i64 %indvars.iv1419, 1 ; 2 uses
  %exitcond1423.not = icmp eq i64 %indvars.iv.next1420, %wide.trip.count1422
  %or.cond1762 = select i1 %i.fp, i1 true, i1 %exitcond1423.not
  br i1 %or.cond1762, label %.loopexit980, label %.lr.ph1097, !llvm.loop !13

.loopexit980:                                     ; preds = %.lr.ph1097, %bb.w
  %.1838 = phi double [ %i.ew, %bb.w ], [ %i.fo, %.lr.ph1097 ]
  %i.fq = sitofp i32 %i.cr to double
  %i.fr = call double @sqrt(double noundef %i.fq) #6
  %i.fs = fdiv double %.1838, %i.fr
  %i.ft = fmul double %i.cq, %i.fs                ; 2 uses
  store double %i.ft, ptr %i.b, align 8, !tbaa !29
  %i.fu = load i32, ptr %1, align 4, !tbaa !27
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge1089
  %i.fv = fneg double %i.cq
  %i.fw = fmul double %.1856.lcssa, %i.fv         ; 2 uses
  store double %i.fw, ptr %i.b, align 8, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit980
  %.sink1761 = phi i32 [ %i.cr, %bb.x ], [ %i.fu, %.loopexit980 ] ; 4 uses
  %.sink1754 = phi double [ %i.fw, %bb.x ], [ %i.ft, %.loopexit980 ] ; 2 uses
  %i.fx = sitofp i32 %.sink1761 to double         ; 2 uses
  %i.fy = fmul double %i.bk, %i.fx
  %i.fz = fmul double %i.fy, %i.fx
  %i.ga = fmul double %i.fz, 6.000000e+00         ; 3 uses
  store double %i.ga, ptr %i.c, align 8, !tbaa !29
  %i.gb = fcmp oge double %.sink1754, %i.ga
  %i.gc = select i1 %i.gb, double %.sink1754, double %i.ga ; 10 uses
  %i.gd = mul nsw i32 %.sink1761, 6
  %i.ge = icmp slt i32 %.sink1761, 2
  br i1 %i.ge, label %.loopexit979, label %.lr.ph1127.lr.ph.lr.ph

.lr.ph1127.lr.ph.lr.ph:                           ; preds = %bb.y
  %i.gf = fcmp uge double %i.cq, 0.000000e+00     ; 3 uses
  %i.gg = fneg double %i.cq
  %i.gh = select i1 %i.es, double %i.cq, double %i.gg ; 2 uses
  %i.gi = fmul double %i.cq, 1.000000e-02         ; 6 uses
  %i.gj = fcmp oge double %i.bj, %i.gi
  %i.gk = select i1 %i.gj, double %i.bj, double %i.gi
  %i.gl = sext i32 %i.bh to i64                   ; 9 uses
  %i.gm = getelementptr [8 x i8], ptr %i.ac, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 8      ; 6 uses
  %i.go = sext i32 %i.bi to i64                   ; 9 uses
  %i.gp = getelementptr [8 x i8], ptr %i.ac, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 8      ; 6 uses
  %i.gr = sext i32 %i.bg to i64                   ; 4 uses
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gr
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gl
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.ac, i64 %i.go
  %invariant.gep1713 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gr
  %invariant.gep1715 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gl
  %invariant.gep1717 = getelementptr [8 x i8], ptr %i.ac, i64 %i.go
  %i.gs = sext i32 %i.bf to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gs
  %i.gu = getelementptr [8 x i8], ptr %13, i64 %i.gl
  %i.gv = getelementptr [8 x i8], ptr %13, i64 %i.go
  %invariant.gep1719 = getelementptr [8 x i8], ptr %13, i64 %i.gl
  %invariant.gep1721 = getelementptr [8 x i8], ptr %13, i64 %i.go
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gr
  %invariant.gep1741 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gl
  %invariant.gep1743 = getelementptr [8 x i8], ptr %i.ac, i64 %i.go
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gr
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.ac, i64 %i.gl
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.ac, i64 %i.go
  %i.gw = sext i32 %i.bf to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gw
  %i.gy = getelementptr [8 x i8], ptr %13, i64 %i.gl
  %i.gz = getelementptr [8 x i8], ptr %13, i64 %i.go
  %invariant.gep1729 = getelementptr [8 x i8], ptr %13, i64 %i.gl
  %invariant.gep1731 = getelementptr [8 x i8], ptr %13, i64 %i.go
  br label %.lr.ph1127.lr.ph

.lr.ph1127.lr.ph:                                 ; preds = %.lr.ph1127.lr.ph.backedge, %.lr.ph1127.lr.ph.lr.ph
  %.0846.ph.ph1233 = phi i32 [ -1, %.lr.ph1127.lr.ph.lr.ph ], [ %i.je, %.lr.ph1127.lr.ph.backedge ]
  %.0847.ph.ph1232 = phi i32 [ %.sink1761, %.lr.ph1127.lr.ph.lr.ph ], [ %.08471124, %.lr.ph1127.lr.ph.backedge ]
  %.0853.ph.ph1231 = phi i32 [ 0, %.lr.ph1127.lr.ph.lr.ph ], [ %.1854, %.lr.ph1127.lr.ph.backedge ]
  %.0861.ph.ph1230 = phi i32 [ -1, %.lr.ph1127.lr.ph.lr.ph ], [ %.0861.ph.ph1230.be, %.lr.ph1127.lr.ph.backedge ]
  %.0865.ph.ph1229 = phi i32 [ -1, %.lr.ph1127.lr.ph.lr.ph ], [ %.08471124, %.lr.ph1127.lr.ph.backedge ]
  %.0866.ph.ph1228 = phi i32 [ 0, %.lr.ph1127.lr.ph.lr.ph ], [ %.0866.ph.ph1228.be, %.lr.ph1127.lr.ph.backedge ]
  br label %.lr.ph1127

end_hunk_0
begin_hunk_1_@dbdsqr_:bb.a
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.aid = load i32, ptr %4, align 4, !tbaa !27
  %i.aie = icmp sgt i32 %i.aid, 0
  br i1 %i.aie, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aif = add nsw i32 %.0863.lcssa, %i.z
  %i.aig = sext i32 %i.aif to i64
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.aig
  %i.aii = load i32, ptr %1, align 4, !tbaa !27
  %i.aij = add i32 %i.afk, %.9.neg1254
  %i.aik = add i32 %i.aij, %i.aii
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ail
  call void @dswap_(ptr noundef nonnull %4, ptr noundef %i.aih, ptr noundef nonnull %12, ptr noundef %i.aim, ptr noundef nonnull %12) #6
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge1249, %bb.dt, %bb.ds
  %i.ain = add nuw nsw i32 %.91253, 1
  %.9.neg = xor i32 %.91253, -1
  %i.aio = load i32, ptr %i.a, align 4, !tbaa !27
  %.not914.not = icmp slt i32 %.91253, %i.aio
  %indvars.iv.next1472 = add nsw i32 %indvars.iv1471, -1
  br i1 %.not914.not, label %bb.dn, label %.loopexit, !llvm.loop !24

bb.dv:                                            ; preds = %bb.aa
  store i32 0, ptr %14, align 4, !tbaa !27
  %i.aip = load i32, ptr %1, align 4, !tbaa !27   ; 3 uses
  %.not912.not1234 = icmp sgt i32 %i.aip, 1
  br i1 %.not912.not1234, label %.lr.ph1237.preheader, label %.loopexit

.lr.ph1237.preheader:                             ; preds = %bb.dv
  %wide.trip.count1463 = zext nneg i32 %i.aip to i64
  %i.aiq = add nsw i64 %wide.trip.count1463, -1   ; 2 uses
  %xtraiter2072 = and i64 %i.aiq, 3               ; 3 uses
  %i.air = add nsw i32 %i.aip, -2
  %i.ais = icmp ult i32 %i.air, 3
  br i1 %i.ais, label %.lr.ph1237.epil.preheader, label %.lr.ph1237.preheader.new

.lr.ph1237.preheader.new:                         ; preds = %.lr.ph1237.preheader
  %unroll_iter2076 = and i64 %i.aiq, -4
  br label %.lr.ph1237

.lr.ph1237:                                       ; preds = %bb.ea, %.lr.ph1237.preheader.new
  %i.ait = phi i32 [ 0, %.lr.ph1237.preheader.new ], [ %i.ajp, %bb.ea ] ; 2 uses
  %indvars.iv1460 = phi i64 [ 1, %.lr.ph1237.preheader.new ], [ %indvars.iv.next1461.3, %bb.ea ] ; 5 uses
  %niter2077 = phi i64 [ 0, %.lr.ph1237.preheader.new ], [ %niter2077.next.3, %bb.ea ]
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1460
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !29
  %i.aiw = fcmp une double %i.aiv, 0.000000e+00
  br i1 %i.aiw, label %bb.dw, label %.lr.ph1237.1

bb.dw:                                            ; preds = %.lr.ph1237
  %i.aix = add nsw i32 %i.ait, 1                  ; 2 uses
  store i32 %i.aix, ptr %14, align 4, !tbaa !27
  br label %.lr.ph1237.1

.lr.ph1237.1:                                     ; preds = %.lr.ph1237, %bb.dw
  %i.aiy = phi i32 [ %i.ait, %.lr.ph1237 ], [ %i.aix, %bb.dw ] ; 2 uses
  %i.aiz = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1460
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !29
  %i.ajb = fcmp une double %i.aja, 0.000000e+00
  br i1 %i.ajb, label %bb.dx, label %.lr.ph1237.2

bb.dx:                                            ; preds = %.lr.ph1237.1
  %i.ajc = add nsw i32 %i.aiy, 1                  ; 2 uses
  store i32 %i.ajc, ptr %14, align 4, !tbaa !27
  br label %.lr.ph1237.2

.lr.ph1237.2:                                     ; preds = %bb.dx, %.lr.ph1237.1
  %i.ajd = phi i32 [ %i.aiy, %.lr.ph1237.1 ], [ %i.ajc, %bb.dx ] ; 2 uses
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1460
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 16
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !29
  %i.ajh = fcmp une double %i.ajg, 0.000000e+00
  br i1 %i.ajh, label %bb.dy, label %.lr.ph1237.3

bb.dy:                                            ; preds = %.lr.ph1237.2
  %i.aji = add nsw i32 %i.ajd, 1                  ; 2 uses
  store i32 %i.aji, ptr %14, align 4, !tbaa !27
  br label %.lr.ph1237.3

.lr.ph1237.3:                                     ; preds = %bb.dy, %.lr.ph1237.2
  %i.ajj = phi i32 [ %i.ajd, %.lr.ph1237.2 ], [ %i.aji, %bb.dy ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1460
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 24
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !29
  %i.ajn = fcmp une double %i.ajm, 0.000000e+00
  br i1 %i.ajn, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph1237.3
  %i.ajo = add nsw i32 %i.ajj, 1                  ; 2 uses
  store i32 %i.ajo, ptr %14, align 4, !tbaa !27
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph1237.3
  %i.ajp = phi i32 [ %i.ajj, %.lr.ph1237.3 ], [ %i.ajo, %bb.dz ] ; 2 uses
  %indvars.iv.next1461.3 = add nuw nsw i64 %indvars.iv1460, 4 ; 2 uses
  %niter2077.next.3 = add i64 %niter2077, 4       ; 2 uses
  %niter2077.ncmp.3 = icmp eq i64 %niter2077.next.3, %unroll_iter2076
  br i1 %niter2077.ncmp.3, label %.loopexit.loopexit1913.unr-lcssa, label %.lr.ph1237, !llvm.loop !25

.loopexit.loopexit1913.unr-lcssa:                 ; preds = %bb.ea
  %lcmp.mod2074.not = icmp eq i64 %xtraiter2072, 0
  br i1 %lcmp.mod2074.not, label %.loopexit, label %.lr.ph1237.epil.preheader

.lr.ph1237.epil.preheader:                        ; preds = %.loopexit.loopexit1913.unr-lcssa, %.lr.ph1237.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph1237.preheader ], [ %i.ajp, %.loopexit.loopexit1913.unr-lcssa ]
  %indvars.iv1460.epil.init = phi i64 [ 1, %.lr.ph1237.preheader ], [ %indvars.iv.next1461.3, %.loopexit.loopexit1913.unr-lcssa ]
  %lcmp.mod2075 = icmp ne i64 %xtraiter2072, 0
  call void @llvm.assume(i1 %lcmp.mod2075)
  br label %.lr.ph1237.epil

.lr.ph1237.epil:                                  ; preds = %bb.ec, %.lr.ph1237.epil.preheader
  %i.ajq = phi i32 [ %.epil.init, %.lr.ph1237.epil.preheader ], [ %i.ajv, %bb.ec ] ; 2 uses
  %indvars.iv1460.epil = phi i64 [ %indvars.iv1460.epil.init, %.lr.ph1237.epil.preheader ], [ %indvars.iv.next1461.epil, %bb.ec ] ; 2 uses
  %epil.iter2073 = phi i64 [ 0, %.lr.ph1237.epil.preheader ], [ %epil.iter2073.next, %bb.ec ]
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1460.epil
  %i.ajs = load double, ptr %i.ajr, align 8, !tbaa !29
  %i.ajt = fcmp une double %i.ajs, 0.000000e+00
  br i1 %i.ajt, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.lr.ph1237.epil
  %i.aju = add nsw i32 %i.ajq, 1                  ; 2 uses
  store i32 %i.aju, ptr %14, align 4, !tbaa !27
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.lr.ph1237.epil
  %i.ajv = phi i32 [ %i.ajq, %.lr.ph1237.epil ], [ %i.aju, %bb.eb ]
  %indvars.iv.next1461.epil = add nuw nsw i64 %indvars.iv1460.epil, 1
  %epil.iter2073.next = add i64 %epil.iter2073, 1 ; 2 uses
  %epil.iter2073.cmp.not = icmp eq i64 %epil.iter2073.next, %xtraiter2072
  br i1 %epil.iter2073.cmp.not, label %.loopexit, label %.lr.ph1237.epil, !llvm.loop !26

.loopexit:                                        ; preds = %.loopexit.loopexit1913.unr-lcssa, %bb.ec, %bb.du, %.loopexit979, %bb.dv, %._crit_edge1242, %bb.p, %bb.n, %.thread927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlasq1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlasr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @dlasv2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlas2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f64(<4 x double>, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30, !31, !32}
!10 = distinct !{!10, !30, !32, !31}
!11 = distinct !{!11, !30}
!12 = distinct !{!12, !33}
!13 = distinct !{!13, !30}
!14 = distinct !{!14, !30}
!15 = distinct !{!15, !30}
!16 = distinct !{!16, !30}
!17 = distinct !{!17, !30, !34}
!18 = distinct !{!18, !30, !34}
!19 = distinct !{!19, !30, !34}
!20 = distinct !{!20, !30, !34}
!21 = distinct !{!21, !30}
!22 = distinct !{!22, !30}
!23 = distinct !{!23, !33}
!24 = distinct !{!24, !30}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !33}
!27 = !{!5, !5, i64 0}
!28 = !{!"double", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
