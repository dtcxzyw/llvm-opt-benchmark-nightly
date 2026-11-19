Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgetsqrhrt?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"DGETSQRHRT\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dgetsqrhrt_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.j = load i32, ptr %6, align 4, !tbaa !17     ; 5 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %9, i64 -8         ; 18 uses
  store i32 0, ptr %11, align 4, !tbaa !17
  %i.n = load i32, ptr %10, align 4, !tbaa !17    ; 3 uses
  %i.o = icmp eq i32 %i.n, -1                     ; 3 uses
  %i.p = load i32, ptr %0, align 4, !tbaa !17     ; 5 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !17     ; 13 uses
  %or.cond191 = icmp ugt i32 %i.r, %i.p
  br i1 %or.cond191, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %2, align 4, !tbaa !17     ; 2 uses
  %.not = icmp sgt i32 %i.s, %i.r
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %3, align 4, !tbaa !17     ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %4, align 4, !tbaa !17     ; 3 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %6, align 4, !tbaa !17
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1)
  %i.y = icmp slt i32 %i.x, %spec.select
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %. = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.r)
  %i.z = load i32, ptr %8, align 4, !tbaa !17
  %i.aa = tail call i32 @llvm.umax.i32(i32 %., i32 1)
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = mul nuw nsw i32 %i.r, %i.r              ; 2 uses
  %i.ad = icmp sgt i32 %i.n, %i.ac
  %or.cond = or i1 %i.o, %i.ad
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.192 = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.r) ; 6 uses
  store i32 %.192, ptr %i.h, align 4, !tbaa !17
  %i.ae = sub nuw nsw i32 %i.p, %i.r
  %i.af = uitofp nneg i32 %i.ae to double
  %i.ag = sub nuw nsw i32 %i.s, %i.r
  %i.ah = uitofp nneg i32 %i.ag to double
  %i.ai = fdiv double %i.af, %i.ah
  %i.aj = fadd double %i.ai, 5.000000e-01         ; 3 uses
  %i.ak = fcmp ogt double %i.aj, 0.000000e+00
  %i.al = tail call double @llvm.floor.f64(double %i.aj)
  %i.am = fneg double %i.aj
  %i.an = tail call double @llvm.floor.f64(double %i.am)
  %i.ao = fneg double %i.an
  %i.ap = select i1 %i.ak, double %i.al, double %i.ao ; 2 uses
  %i.aq = fcmp ole double %i.ap, 1.000000e+00
  %i.ar = select i1 %i.aq, double 1.000000e+00, double %i.ap
  %i.as = fptosi double %i.ar to i32
  %i.at = mul i32 %.192, %i.r                     ; 3 uses
  %i.au = mul i32 %i.at, %i.as                    ; 7 uses
  store i32 %.192, ptr %i.c, align 4, !tbaa !17
  store i32 %i.at, ptr %i.f, align 4, !tbaa !17
  %i.av = sub nuw nsw i32 %i.r, %.192
  %i.aw = tail call i32 @llvm.umax.i32(i32 %.192, i32 %i.av)
  %i.ax = mul nuw nsw i32 %i.aw, %.192            ; 2 uses
  store i32 %i.ax, ptr %i.g, align 4, !tbaa !17
  %i.ay = add nsw i32 %i.au, %i.ac
  %i.az = add nsw i32 %i.at, %i.au
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.r)
  %i.bb = add nsw i32 %i.ay, %i.ba
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bb) ; 4 uses
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 1)
  %i.be = icmp sge i32 %i.n, %i.bd
  %or.cond3 = or i1 %i.o, %i.be
  br i1 %or.cond3, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.d ], [ -7, %bb.f ], [ -11, %bb.h ], [ -9, %bb.g ], [ -5, %bb.e ], [ -3, %bb.c ], [ -11, %bb.i ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.d ], [ 7, %bb.f ], [ 11, %bb.h ], [ 9, %bb.g ], [ 5, %bb.e ], [ 3, %bb.c ], [ 11, %bb.i ]
  store i32 %.sink, ptr %11, align 4, !tbaa !17
  store i32 %.neg, ptr %i.a, align 4, !tbaa !17
  %i.bf = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 10) #6 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = sitofp i32 %i.bc to double
  store double %i.bg, ptr %9, align 8, !tbaa !19
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.r)
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = sitofp i32 %i.bc to double
  store double %i.bj, ptr %9, align 8, !tbaa !19
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.r)
  store i32 %i.bk, ptr %i.i, align 4, !tbaa !17
  %i.bl = sext i32 %i.au to i64
  %i.bm = getelementptr [8 x i8], ptr %i.m, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  call void @dlatsqr_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %i.c, ptr noundef %i.bn, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #6
  %i.bo = load i32, ptr %1, align 4, !tbaa !17    ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !17
  %.not187198 = icmp slt i32 %i.bo, 1
  br i1 %.not187198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %storemerge199 = phi i32 [ %i.cb, %.lr.ph ], [ 1, %bb.n ] ; 2 uses
  %i.bp = mul nsw i32 %storemerge199, %i.j
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.l, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %1, align 4, !tbaa !17
  %i.bu = add nsw i32 %storemerge199, -1
  %i.bv = mul nsw i32 %i.bt, %i.bu
  %i.bw = add nsw i32 %i.bv, %i.au
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.m, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.bs, ptr noundef nonnull @c__1, ptr noundef %i.bz, ptr noundef nonnull @c__1) #6
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !17  ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !17
  %.not187.not = icmp slt i32 %i.ca, %i.bo
  br i1 %.not187.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %1, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bo, %bb.n ] ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %i.cc
  %i.ce = add nsw i32 %i.cd, %i.au
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %i.m, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  call void @dorgtsqr_row_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %i.c, ptr noundef %i.ch, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e) #6
  %i.ci = load i32, ptr %1, align 4, !tbaa !17    ; 2 uses
  %i.cj = mul nsw i32 %i.ci, %i.ci
  %i.ck = add nsw i32 %i.cj, %i.au
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.m, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  call void @dorhr_col_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.cn, ptr noundef nonnull %i.e) #6
  %i.co = load i32, ptr %1, align 4, !tbaa !17    ; 2 uses
  %.not188204 = icmp slt i32 %i.co, 1
  br i1 %.not188204, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %._crit_edge
  %i.cp = add i32 %i.j, 1
  %i.cq = sext i32 %i.j to i64                    ; 5 uses
  %i.cr = zext nneg i32 %i.co to i64
  %ident.check = icmp ne i32 %i.j, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph208, %bb.r
  %indvar = phi i64 [ 0, %.lr.ph208 ], [ %indvar.next, %bb.r ] ; 7 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph208 ], [ %indvars.iv.next, %bb.r ] ; 15 uses
  %i.cs = trunc i64 %indvar to i32
  %12 = xor i64 %indvar, -1
  %indvar.tr = trunc i64 %indvar to i32
  %i.ct = load i32, ptr %1, align 4, !tbaa !17    ; 19 uses
  %i.cu = mul nsw i32 %i.ct, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.cw = add i32 %i.au, %i.cv                    ; 11 uses
  %i.cx = add i32 %i.cw, %i.cu
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !19
  %i.db = fcmp oeq double %i.da, -1.000000e+00
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !17
  %i.dc = sext i32 %i.ct to i64                   ; 2 uses
  %.not190200 = icmp sgt i64 %indvars.iv, %i.dc
  br i1 %.not190200, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.dd = add i32 %i.ct, 1                        ; 5 uses
  %wide.trip.count = zext i32 %i.dd to i64        ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv ; 7 uses
  %13 = add i64 %12, %wide.trip.count             ; 7 uses
  %min.iters.check = icmp ult i64 %13, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %reass.sub231 = sub i64 %wide.trip.count, %indvar
  %i.de = add i64 %reass.sub231, -2               ; 2 uses
  %14 = mul i32 %i.ct, %indvar.tr
  %15 = add i32 %i.cw, %14                        ; 4 uses
  %16 = icmp slt i32 %i.ct, 0
  %17 = call i32 @llvm.abs.i32(i32 %i.ct, i1 false)
  %i.df = trunc i64 %i.de to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 %i.df) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.dg = add i32 %15, %mul.result
  %18 = sub i32 %15, %mul.result
  %i.dh = icmp slt i32 %i.dg, %15
  %19 = icmp sgt i32 %18, %15
  %20 = select i1 %16, i1 %19, i1 %i.dh
  %21 = or i1 %20, %mul.overflow
  %i.di = icmp ugt i64 %i.de, 4294967295
  %22 = icmp ne i32 %i.ct, 0
  %23 = and i1 %i.di, %22
  %i.dj = or i1 %21, %23
  %i.dk = or i1 %ident.check, %i.dj
  br i1 %i.dk, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dl = shl nuw nsw i64 %indvar, 4              ; 2 uses
  %24 = getelementptr i8, ptr %5, i64 %i.dl
  %reass.sub256 = sub i64 %wide.trip.count, %indvar
  %25 = add i64 %reass.sub256, -2                 ; 2 uses
  %26 = shl nsw i64 %25, 3
  %27 = getelementptr i8, ptr %5, i64 %i.dl
  %28 = getelementptr i8, ptr %27, i64 8
  %29 = getelementptr i8, ptr %28, i64 %26
  %30 = mul i64 %25, %i.dc
  %31 = mul i32 %i.ct, %i.cs
  %i.dm = add i32 %i.cw, %31
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = shl nsw i64 %i.dn, 3
  %i.dp = add i64 %30, %i.dn
  %32 = shl i64 %i.dp, 3
  %33 = getelementptr i8, ptr %i.m, i64 %32       ; 4 uses
  %34 = getelementptr i8, ptr %i.m, i64 %i.do     ; 4 uses
  %35 = icmp ult ptr %33, %34
  %36 = select i1 %35, ptr %33, ptr %34
  %diff.check = icmp ugt ptr %33, %34
  %37 = select i1 %diff.check, ptr %33, ptr %34
  %38 = getelementptr i8, ptr %37, i64 8
  %bound0 = icmp ult ptr %24, %38
  %bound1 = icmp ult ptr %36, %29
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check222 = icmp ult i64 %13, 16
  br i1 %min.iters.check222, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %13, 12
  %n.vec = and i64 %13, -16                       ; 4 uses
  %i.dr = add i64 %indvars.iv, %n.vec             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %39 = trunc i64 %indvars.iv to i32
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %39, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat232, <i32 0, i32 1, i32 2, i32 3>
  %40 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %41 = add <4 x i32> %vec.ind, splat (i32 -1)
  %42 = add <4 x i32> %vec.ind, splat (i32 3)
  %43 = add <4 x i32> %vec.ind, splat (i32 7)
  %44 = add <4 x i32> %vec.ind, splat (i32 11)
  %45 = mul <4 x i32> %41, %broadcast.splat
  %46 = mul <4 x i32> %42, %broadcast.splat
  %47 = mul <4 x i32> %43, %broadcast.splat
  %48 = mul <4 x i32> %44, %broadcast.splat
  %49 = add <4 x i32> %broadcast.splat230, %45
  %50 = add <4 x i32> %broadcast.splat230, %46
  %51 = add <4 x i32> %broadcast.splat230, %47
  %52 = add <4 x i32> %broadcast.splat230, %48
  %53 = sext <4 x i32> %49 to <4 x i64>
  %54 = sext <4 x i32> %50 to <4 x i64>
  %55 = sext <4 x i32> %51 to <4 x i64>
  %56 = sext <4 x i32> %52 to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.m, <4 x i64> %53
  %wide.gep233 = getelementptr inbounds [8 x i8], ptr %i.m, <4 x i64> %54
  %wide.gep234 = getelementptr inbounds [8 x i8], ptr %i.m, <4 x i64> %55
  %wide.gep235 = getelementptr inbounds [8 x i8], ptr %i.m, <4 x i64> %56
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !19, !alias.scope !21
  %wide.masked.gather236 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep233, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !19, !alias.scope !21
  %wide.masked.gather237 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep234, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !19, !alias.scope !21
  %wide.masked.gather238 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep235, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !19, !alias.scope !21
  %i.ds = fneg <4 x double> %wide.masked.gather
  %i.dt = fneg <4 x double> %wide.masked.gather236
  %i.du = fneg <4 x double> %wide.masked.gather237
  %i.dv = fneg <4 x double> %wide.masked.gather238
  %i.dw = getelementptr [8 x i8], ptr %40, i64 %index ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 32
  %i.dy = getelementptr i8, ptr %i.dw, i64 64
  %i.dz = getelementptr i8, ptr %i.dw, i64 96
  store <4 x double> %i.ds, ptr %i.dw, align 8, !tbaa !19, !alias.scope !22, !noalias !21
  store <4 x double> %i.dt, ptr %i.dx, align 8, !tbaa !19, !alias.scope !22, !noalias !21
  store <4 x double> %i.du, ptr %i.dy, align 8, !tbaa !19, !alias.scope !22, !noalias !21
  store <4 x double> %i.dv, ptr %i.dz, align 8, !tbaa !19, !alias.scope !22, !noalias !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.dr, %vec.epilog.iter.check ], [ %indvars.iv, %vector.main.loop.iter.check ]
  %n.vec226 = and i64 %13, -4                     ; 3 uses
  %i.eb = add i64 %indvars.iv, %n.vec226
  %broadcast.splatinsert240 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat241 = shufflevector <4 x i32> %broadcast.splatinsert240, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat243 = shufflevector <4 x i32> %broadcast.splatinsert242, <4 x i32> poison, <4 x i32> zeroinitializer
  %57 = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert244 = insertelement <4 x i32> poison, i32 %57, i64 0
  %broadcast.splat245 = shufflevector <4 x i32> %broadcast.splatinsert244, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction246 = add <4 x i32> %broadcast.splat245, <i32 0, i32 1, i32 2, i32 3>
  %58 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind248 = phi <4 x i32> [ %induction246, %vec.epilog.ph ], [ %vec.ind.next252, %vec.epilog.vector.body ] ; 2 uses
  %59 = add <4 x i32> %vec.ind248, splat (i32 -1)
  %60 = mul <4 x i32> %59, %broadcast.splat241
  %61 = add <4 x i32> %broadcast.splat243, %60
  %62 = sext <4 x i32> %61 to <4 x i64>
  %wide.gep249 = getelementptr inbounds [8 x i8], ptr %i.m, <4 x i64> %62
  %wide.masked.gather250 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep249, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !19, !alias.scope !21
  %i.ec = fneg <4 x double> %wide.masked.gather250
  %i.ed = getelementptr [8 x i8], ptr %58, i64 %index227
  store <4 x double> %i.ec, ptr %i.ed, align 8, !tbaa !19, !alias.scope !22, !noalias !21
  %index.next229 = add nuw i64 %index227, 4       ; 2 uses
  %vec.ind.next252 = add <4 x i32> %vec.ind248, splat (i32 4)
  %i.ee = icmp eq i64 %index.next229, %n.vec226
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n230 = icmp eq i64 %13, %n.vec226
  br i1 %cmp.n230, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv210.ph = phi i64 [ %indvars.iv, %iter.check ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ] ; 4 uses
  %i.ef = sub i64 %wide.trip.count, %indvars.iv210.ph
  %xtraiter = and i64 %i.ef, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv210.prol = phi i64 [ %indvars.iv.next211.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv210.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eg = trunc i64 %indvars.iv210.prol to i32
  %i.eh = add i32 %i.eg, -1
  %i.ei = mul i32 %i.eh, %i.ct
  %i.ej = add i32 %i.cw, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !19
  %i.en = fneg double %i.em
  %i.eo = mul nsw i64 %indvars.iv210.prol, %i.cq
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eo
  store double %i.en, ptr %gep.prol, align 8, !tbaa !19
  %indvars.iv.next211.prol = add nuw nsw i64 %indvars.iv210.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !14

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv210.unr = phi i64 [ %indvars.iv210.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next211.prol, %vec.epilog.scalar.ph.prol ]
  %i.ep = sub i64 %indvars.iv210.ph, %wide.trip.count
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.3, %vec.epilog.scalar.ph ], [ %indvars.iv210.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.er = trunc i64 %indvars.iv210 to i32
  %i.es = add i32 %i.er, -1
  %i.et = mul i32 %i.es, %i.ct
  %i.eu = add i32 %i.cw, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !19
  %i.ey = fneg double %i.ex
  %i.ez = mul nsw i64 %indvars.iv210, %i.cq
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ez
  store double %i.ey, ptr %gep, align 8, !tbaa !19
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.fa = trunc i64 %indvars.iv.next211 to i32
  %i.fb = add i32 %i.fa, -1
  %i.fc = mul i32 %i.fb, %i.ct
  %i.fd = add i32 %i.cw, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !19
  %i.fh = fneg double %i.fg
  %i.fi = mul nsw i64 %indvars.iv.next211, %i.cq
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fi
  store double %i.fh, ptr %gep.1, align 8, !tbaa !19
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %i.fj = trunc i64 %indvars.iv.next211.1 to i32
  %i.fk = add i32 %i.fj, -1
  %i.fl = mul i32 %i.fk, %i.ct
  %i.fm = add i32 %i.cw, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !19
  %i.fq = fneg double %i.fp
  %i.fr = mul nsw i64 %indvars.iv.next211.1, %i.cq
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fr
  store double %i.fq, ptr %gep.2, align 8, !tbaa !19
  %indvars.iv.next211.2 = add nuw nsw i64 %indvars.iv210, 3 ; 2 uses
  %i.fs = trunc i64 %indvars.iv.next211.2 to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.ft, %i.ct
  %i.fv = add i32 %i.cw, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !19
  %i.fz = fneg double %i.fy
  %i.ga = mul nsw i64 %indvars.iv.next211.2, %i.cq
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ga
  store double %i.fz, ptr %gep.3, align 8, !tbaa !19
  %indvars.iv.next211.3 = add nuw nsw i64 %indvars.iv210, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next211.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !15

bb.q:                                             ; preds = %bb.o
  %reass.sub = sub i32 %i.ct, %i.cv
  %i.gb = add i32 %reass.sub, 1
  store i32 %i.gb, ptr %i.b, align 4, !tbaa !17
  %i.gc = trunc nuw i64 %indvars.iv to i32
  %i.gd = add i32 %i.gc, -1
  %i.ge = mul nsw i32 %i.ct, %i.gd
  %i.gf = add i32 %i.cw, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gg
  %i.gi = mul i32 %i.cp, %i.cv
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.gj
  call void @dcopy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.gh, ptr noundef nonnull %1, ptr noundef %i.gk, ptr noundef nonnull %6) #6
  br label %bb.r

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.p
  %storemerge189.lcssa = phi i32 [ %i.cv, %bb.p ], [ %i.dd, %middle.block ], [ %i.dd, %vec.epilog.middle.block ], [ %i.dd, %vec.epilog.scalar.ph ], [ %i.dd, %vec.epilog.scalar.ph.prol.loopexit ]
  store i32 %storemerge189.lcssa, ptr %i.d, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not188.not = icmp samesign ult i64 %indvars.iv, %i.cr
  %indvar.next = add i64 %indvar, 1
  br i1 %.not188.not, label %bb.o, label %._crit_edge209, !llvm.loop !16

._crit_edge209:                                   ; preds = %bb.r, %._crit_edge
  %i.gl = sitofp i32 %i.bc to double
  store double %i.gl, ptr %9, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge209, %bb.m, %bb.k, %.thread
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dlatsqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dorgtsqr_row_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dorhr_col_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !20}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !20, !23, !24}
!13 = distinct !{!13, !20, !23, !24}
!14 = distinct !{!14, !26}
!15 = distinct !{!15, !20, !23}
!16 = distinct !{!16, !20}
!17 = !{!5, !5, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10}
!22 = !{!11}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
