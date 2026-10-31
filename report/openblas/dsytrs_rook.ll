Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrs_rook?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DSYTRS_ROOK\00", align 1
@c_b7 = internal global double -1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b19 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsytrs_rook_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 30 uses
  %i.b = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = load i32, ptr %4, align 4, !tbaa !18     ; 16 uses
  %narrow = xor i32 %i.c, -1
  %i.d = sext i32 %narrow to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d ; 20 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 8 uses
  %i.g = load i32, ptr %7, align 4, !tbaa !18     ; 42 uses
  %narrow534 = xor i32 %i.g, -1
  %i.h = sext i32 %narrow534 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %6, i64 %i.h ; 41 uses
  store i32 0, ptr %8, align 4, !tbaa !18
  %i.j = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %.not = icmp eq i32 %i.j, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #4
  %.not519 = icmp eq i32 %i.k, 0
  br i1 %.not519, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load i32, ptr %1, align 4, !tbaa !18     ; 5 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %4, align 4, !tbaa !18
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1) ; 2 uses
  %i.q = icmp slt i32 %i.p, %spec.select
  br i1 %i.q, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %7, align 4, !tbaa !18
  %i.s = icmp slt i32 %i.r, %spec.select
  br i1 %i.s, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.pr = load i32, ptr %8, align 4, !tbaa !18     ; 2 uses
  %.not520 = icmp eq i32 %.pr, 0
  br i1 %.not520, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -5, %bb.e ], [ -3, %bb.d ], [ -8, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g
  %i.t = phi i32 [ %.pr, %bb.g ], [ %.sink, %.thread.sink.split ]
  %i.u = sub nsw i32 0, %i.t
  store i32 %i.u, ptr %i.a, align 4, !tbaa !18
  %i.v = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 11) #4 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i32 %i.l, 0
  %i.x = icmp eq i32 %i.n, 0
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i32 %i.c, 1                          ; 3 uses
  %i.z = sext i32 %i.g to i64                     ; 6 uses
  %scevgep647 = getelementptr i8, ptr %6, i64 -8  ; 2 uses
  %scevgep649 = getelementptr i8, ptr %6, i64 -16 ; 2 uses
  %scevgep651 = getelementptr i8, ptr %6, i64 -8  ; 2 uses
  %scevgep653 = getelementptr i8, ptr %6, i64 -16 ; 2 uses
  br i1 %.not, label %.lr.ph554.preheader, label %.lr.ph545.preheader

.lr.ph545.preheader:                              ; preds = %bb.i
  %ident.check.not = icmp eq i32 %i.g, 1
  br label %.lr.ph545

.lr.ph554.preheader:                              ; preds = %bb.i
  %ident.check645.not = icmp eq i32 %i.g, 1
  br label %.lr.ph554

.preheader539:                                    ; preds = %bb.s
  %.pre = load i32, ptr %1, align 4, !tbaa !18
  %i.aa = icmp slt i32 %.pre, 1
  br i1 %i.aa, label %.loopexit, label %.lr.ph547

.lr.ph545:                                        ; preds = %.lr.ph545.preheader, %bb.s
  %.0544 = phi i32 [ %.1, %bb.s ], [ %i.l, %.lr.ph545.preheader ] ; 17 uses
  %i.ab = zext nneg i32 %.0544 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18 ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph545
  %.not531 = icmp eq i32 %i.ad, %.0544
  %.pre581 = add nsw i32 %.0544, %i.g
  %.pre583 = sext i32 %.pre581 to i64             ; 2 uses
  br i1 %.not531, label %._crit_edge571, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pre583
  %i.ag = add nsw i32 %i.ad, %i.g
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ah
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.af, ptr noundef nonnull %7, ptr noundef %i.ai, ptr noundef nonnull %7) #4
  br label %._crit_edge571

._crit_edge571:                                   ; preds = %bb.j, %bb.k
  %i.aj = add nsw i32 %.0544, -1                  ; 2 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !18
  %i.ak = mul nsw i32 %.0544, %i.c                ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.e, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pre583 ; 2 uses
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.an, ptr noundef nonnull @c__1, ptr noundef %i.ao, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7) #4
  %i.ap = add nsw i32 %i.ak, %.0544
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !20
  %i.at = fdiv double 1.000000e+00, %i.as
  store double %i.at, ptr %i.b, align 8, !tbaa !20
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef %i.ao, ptr noundef nonnull %7) #4
  br label %bb.s

bb.l:                                             ; preds = %.lr.ph545
  %i.au = sub nsw i32 0, %i.ad
  %.not528 = icmp eq i32 %.0544, %i.au
  br i1 %.not528, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i32 %.0544, %i.g
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aw
  %i.ay = sub nsw i32 %i.g, %i.ad
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.az
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.ax, ptr noundef nonnull %7, ptr noundef %i.ba, ptr noundef nonnull %7) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bb = add nsw i32 %.0544, -1                  ; 8 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  %i.bf = sub nsw i32 0, %i.be
  %.not529 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not529, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add nsw i32 %i.bb, %i.g
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bh
  %i.bj = sub nsw i32 %i.g, %i.be
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bk
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.bi, ptr noundef nonnull %7, ptr noundef %i.bl, ptr noundef nonnull %7) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = icmp samesign ugt i32 %.0544, 2
  br i1 %i.bm, label %bb.q, label %._crit_edge570

._crit_edge570:                                   ; preds = %bb.p
  %.pre585 = mul nsw i32 %.0544, %i.c
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %.0544, -2                  ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !18
  %i.bo = mul nsw i32 %.0544, %i.c                ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %i.e, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = add nsw i32 %.0544, %i.g
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bt
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.br, ptr noundef nonnull @c__1, ptr noundef %i.bu, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7) #4
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !18
  %i.bv = mul nsw i32 %i.bb, %i.c
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [8 x i8], ptr %i.e, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = add nsw i32 %i.bb, %i.g
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ca
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.by, ptr noundef nonnull @c__1, ptr noundef %i.cb, ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %7) #4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge570, %bb.q
  %.pre-phi586 = phi i32 [ %.pre585, %._crit_edge570 ], [ %i.bo, %bb.q ] ; 2 uses
  %i.cc = add nsw i32 %i.bb, %.pre-phi586
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20 ; 2 uses
  %i.cg = mul i32 %i.bb, %i.y
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !20
  %i.ck = add nsw i32 %.pre-phi586, %.0544
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !20
  %i.co = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cs = fdiv <2 x double> %i.cp, %i.cr          ; 7 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = call double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double -1.000000e+00) ; 4 uses
  %i.cw = load i32, ptr %2, align 4, !tbaa !18    ; 7 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !18
  %.not530542 = icmp slt i32 %i.cw, 1
  br i1 %.not530542, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.cx = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.cy = zext nneg i32 %.0544 to i64             ; 2 uses
  %i.cz = add nuw i32 %i.cw, 1
  %wide.trip.count = zext i32 %i.cz to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.i, i64 %i.cx ; 4 uses
  %invariant.gep609 = getelementptr [8 x i8], ptr %i.i, i64 %i.cy ; 4 uses
  %i.da = zext nneg i32 %i.cw to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.cw, 3
  %or.cond678 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond678, label %vector.memcheck, label %.lr.ph.preheader682

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.db = shl nuw nsw i64 %i.cx, 3                ; 2 uses
  %scevgep630 = getelementptr i8, ptr %scevgep647, i64 %i.db
  %i.dc = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.dd = getelementptr i8, ptr %scevgep649, i64 %i.db
  %scevgep632 = getelementptr i8, ptr %i.dd, i64 %i.dc
  %i.de = shl nuw nsw i64 %i.cy, 3                ; 2 uses
  %scevgep634 = getelementptr i8, ptr %scevgep651, i64 %i.de
  %i.df = getelementptr i8, ptr %scevgep653, i64 %i.de
  %scevgep636 = getelementptr i8, ptr %i.df, i64 %i.dc
  %bound0 = icmp ult ptr %scevgep630, %scevgep636
  %bound1 = icmp ult ptr %scevgep634, %scevgep632
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader682, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 2147483644              ; 3 uses
  %i.dg = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat638 = shufflevector <2 x double> %i.cs, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert639 = insertelement <4 x double> poison, double %i.cv, i64 0
  %broadcast.splat640 = shufflevector <4 x double> %broadcast.splatinsert639, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat642 = shufflevector <2 x double> %i.cs, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = or disjoint i64 %index, 1               ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dh ; 2 uses
  %wide.load = load <4 x double>, ptr %i.di, align 8, !tbaa !20, !alias.scope !21, !noalias !22
  %i.dj = fdiv <4 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep609, i64 %i.dh ; 2 uses
  %wide.load643 = load <4 x double>, ptr %i.dk, align 8, !tbaa !20, !alias.scope !22
  %i.dl = fdiv <4 x double> %wide.load643, %broadcast.splat ; 2 uses
  %i.dm = fneg <4 x double> %i.dl
  %i.dn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat638, <4 x double> %i.dj, <4 x double> %i.dm)
  %i.do = fdiv <4 x double> %i.dn, %broadcast.splat640
  store <4 x double> %i.do, ptr %i.di, align 8, !tbaa !20, !alias.scope !21, !noalias !22
  %i.dp = fneg <4 x double> %i.dj
  %i.dq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat642, <4 x double> %i.dl, <4 x double> %i.dp)
  %i.dr = fdiv <4 x double> %i.dq, %broadcast.splat640
  store <4 x double> %i.dr, ptr %i.dk, align 8, !tbaa !20, !alias.scope !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader682

.lr.ph.preheader682:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dg, %middle.block ] ; 4 uses
  %i.dt = zext nneg i32 %i.cw to i64
  %i.du = and i32 %i.cw, 1
  %lcmp.mod.not = icmp eq i32 %i.du, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader682
  %i.dv = mul nsw i64 %indvars.iv.ph, %i.z        ; 2 uses
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dv ; 2 uses
  %i.dw = load double, ptr %gep.prol, align 8, !tbaa !20
  %gep610.prol = getelementptr [8 x i8], ptr %invariant.gep609, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %gep610.prol, align 8, !tbaa !20
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dw, i64 1
  %i.ea = fdiv <2 x double> %i.dz, %i.cr          ; 2 uses
  %i.eb = fneg <2 x double> %i.ea
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ea, <2 x double> %i.ec)
  %i.ee = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x double> %i.ed, %i.ef          ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  store double %i.eh, ptr %gep.prol, align 8, !tbaa !20
  %i.ei = extractelement <2 x double> %i.eg, i64 0
  store double %i.ei, ptr %gep610.prol, align 8, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader682
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader682 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ej = icmp eq i64 %indvars.iv.ph, %i.dt
  br i1 %i.ej, label %._crit_edge, label %.lr.ph.preheader682.new

.lr.ph.preheader682.new:                          ; preds = %.lr.ph.prol.loopexit
  %i.ek = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader682.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader682.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %i.eo = mul nsw i64 %indvars.iv, %i.z           ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eo ; 2 uses
  %i.ep = load double, ptr %gep, align 8, !tbaa !20
  %gep610 = getelementptr [8 x i8], ptr %invariant.gep609, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %gep610, align 8, !tbaa !20
  %i.er = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ep, i64 1
  %i.et = fdiv <2 x double> %i.es, %i.cr          ; 2 uses
  %i.eu = fneg <2 x double> %i.et
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.et, <2 x double> %i.ev)
  %i.ex = fdiv <2 x double> %i.ew, %i.el          ; 2 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 1
  store double %i.ey, ptr %gep, align 8, !tbaa !20
  %i.ez = extractelement <2 x double> %i.ex, i64 0
  store double %i.ez, ptr %gep610, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fa = mul nsw i64 %indvars.iv.next, %i.z      ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fa ; 2 uses
  %i.fb = load double, ptr %gep.1, align 8, !tbaa !20
  %gep610.1 = getelementptr [8 x i8], ptr %invariant.gep609, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %gep610.1, align 8, !tbaa !20
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fb, i64 1
  %i.ff = fdiv <2 x double> %i.fe, %i.cr          ; 2 uses
  %i.fg = fneg <2 x double> %i.ff
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ff, <2 x double> %i.fh)
  %i.fj = fdiv <2 x double> %i.fi, %i.en          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  store double %i.fk, ptr %gep.1, align 8, !tbaa !20
  %i.fl = extractelement <2 x double> %i.fj, i64 0
  store double %i.fl, ptr %gep610.1, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.r
  %i.fm = add nsw i32 %.0544, -2
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %._crit_edge571
  %.1 = phi i32 [ %i.aj, %._crit_edge571 ], [ %i.fm, %._crit_edge ] ; 2 uses
  %i.fn = icmp slt i32 %.1, 1
  br i1 %i.fn, label %.preheader539, label %.lr.ph545

.lr.ph547:                                        ; preds = %.preheader539, %bb.ad
  %.2546 = phi i32 [ %i.hj, %bb.ad ], [ 1, %.preheader539 ] ; 15 uses
  %i.fo = sext i32 %.2546 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fo ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !18 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  %i.fs = icmp sgt i32 %.2546, 1                  ; 2 uses
  br i1 %i.fr, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.lr.ph547
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ft = add nsw i32 %.2546, -1
  store i32 %i.ft, ptr %i.a, align 4, !tbaa !18
  %i.fu = mul nsw i32 %.2546, %i.c
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr [8 x i8], ptr %i.e, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = add nsw i32 %.2546, %i.g
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fz
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.fx, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.ga, ptr noundef nonnull %7) #4
  %.pre566 = load i32, ptr %i.fp, align 4, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gb = phi i32 [ %.pre566, %bb.u ], [ %i.fq, %bb.t ] ; 2 uses
  %.not535 = icmp eq i32 %i.gb, %.2546
  br i1 %.not535, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gc = add nsw i32 %i.gb, %i.g
  br label %.sink.split

bb.x:                                             ; preds = %.lr.ph547
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gd = add nsw i32 %.2546, -1                  ; 2 uses
  store i32 %i.gd, ptr %i.a, align 4, !tbaa !18
  %i.ge = mul nsw i32 %.2546, %i.c
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %i.e, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = add nsw i32 %.2546, %i.g
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gj
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.gh, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.gk, ptr noundef nonnull %7) #4
  store i32 %i.gd, ptr %i.a, align 4, !tbaa !18
  %i.gl = add nuw nsw i32 %.2546, 1               ; 2 uses
  %i.gm = mul nsw i32 %i.gl, %i.c
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.e, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = add nsw i32 %i.gl, %i.g
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gr
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.gp, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.gs, ptr noundef nonnull %7) #4
  %.pre565 = load i32, ptr %i.fp, align 4, !tbaa !18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gt = phi i32 [ %.pre565, %bb.y ], [ %i.fq, %bb.x ] ; 2 uses
  %i.gu = sub nsw i32 0, %i.gt
  %.not532 = icmp eq i32 %.2546, %i.gu
  br i1 %.not532, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = add nsw i32 %.2546, %i.g
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gw
end_hunk_0
begin_hunk_1_@dsytrs_rook_:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.ac
  %.sink620 = phi i32 [ %i.hg, %bb.ac ], [ %i.gc, %bb.w ]
  %.pn626 = phi i32 [ %i.hb, %bb.ac ], [ %.2546, %bb.w ]
  %.sink615.ph = phi i32 [ 2, %bb.ac ], [ 1, %bb.w ]
  %.pn.in = add nsw i32 %.pn626, %i.g
  %.pn = sext i32 %.pn.in to i64
  %.sink617 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pn
  %i.hh = sext i32 %.sink620 to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hh
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %.sink617, ptr noundef nonnull %7, ptr noundef %i.hi, ptr noundef nonnull %7) #4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.v
  %.sink615 = phi i32 [ 1, %bb.v ], [ 2, %bb.ab ], [ %.sink615.ph, %.sink.split ]
  %i.hj = add nsw i32 %.2546, %.sink615           ; 2 uses
  %i.hk = load i32, ptr %1, align 4, !tbaa !18
  %i.hl = icmp sgt i32 %i.hj, %i.hk
  br i1 %i.hl, label %.loopexit, label %.lr.ph547

.preheader:                                       ; preds = %bb.aq
  %i.hm = icmp slt i32 %i.ns, 1
  br i1 %i.hm, label %.loopexit, label %.lr.ph556

.lr.ph554:                                        ; preds = %.lr.ph554.preheader, %bb.aq
  %i.hn = phi i32 [ %i.ns, %bb.aq ], [ %i.l, %.lr.ph554.preheader ]
  %.4553 = phi i32 [ %.5, %bb.aq ], [ 1, %.lr.ph554.preheader ] ; 21 uses
  %i.ho = sext i32 %.4553 to i64                  ; 3 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !18 ; 5 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.lr.ph554
  %.not524 = icmp eq i32 %i.hq, %.4553
  br i1 %.not524, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = add nsw i32 %.4553, %i.g
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ht
  %i.hv = add nsw i32 %i.hq, %i.g
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hw
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.hu, ptr noundef nonnull %7, ptr noundef %i.hx, ptr noundef nonnull %7) #4
  %.pre567 = load i32, ptr %1, align 4, !tbaa !18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hy = phi i32 [ %.pre567, %bb.af ], [ %i.hn, %bb.ae ] ; 2 uses
  %i.hz = icmp slt i32 %.4553, %i.hy
  %i.ia = add nsw i32 %.4553, 1                   ; 3 uses
  br i1 %i.hz, label %bb.ah, label %._crit_edge573

._crit_edge573:                                   ; preds = %bb.ag
  %.pre574 = add nsw i32 %.4553, %i.g
  %.pre575 = sext i32 %.pre574 to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ib = sub nsw i32 %i.hy, %.4553
  store i32 %i.ib, ptr %i.a, align 4, !tbaa !18
  %i.ic = mul nsw i32 %.4553, %i.c
  %i.id = add nsw i32 %i.ia, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ie
  %i.ig = add nsw i32 %.4553, %i.g
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ih
  %i.ij = add nsw i32 %i.ia, %i.g
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ik
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.if, ptr noundef nonnull @c__1, ptr noundef %i.ii, ptr noundef nonnull %7, ptr noundef %i.il, ptr noundef nonnull %7) #4
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge573, %bb.ah
  %.pre-phi576 = phi i64 [ %.pre575, %._crit_edge573 ], [ %i.ih, %bb.ah ]
  %i.im = mul i32 %.4553, %i.y
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !20
  %i.iq = fdiv double 1.000000e+00, %i.ip
  store double %i.iq, ptr %i.b, align 8, !tbaa !20
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pre-phi576
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef %i.ir, ptr noundef nonnull %7) #4
  br label %bb.aq

bb.aj:                                            ; preds = %.lr.ph554
  %i.is = sub nsw i32 0, %i.hq
  %.not521 = icmp eq i32 %.4553, %i.is
  br i1 %.not521, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.it = add nsw i32 %.4553, %i.g
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.iu
  %i.iw = sub nsw i32 %i.g, %i.hq
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ix
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.iv, ptr noundef nonnull %7, ptr noundef %i.iy, ptr noundef nonnull %7) #4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.iz = add nsw i32 %.4553, 1                   ; 7 uses
  %i.ja = sext i32 %i.iz to i64                   ; 3 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !18 ; 2 uses
  %i.jd = sub nsw i32 0, %i.jc
  %.not522 = icmp eq i32 %i.iz, %i.jd
  br i1 %.not522, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.je = add nsw i32 %i.iz, %i.g
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jf
  %i.jh = sub nsw i32 %i.g, %i.jc
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ji
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.jg, ptr noundef nonnull %7, ptr noundef %i.jj, ptr noundef nonnull %7) #4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jk = load i32, ptr %1, align 4, !tbaa !18    ; 2 uses
  %i.jl = add nsw i32 %i.jk, -1
  %i.jm = icmp slt i32 %.4553, %i.jl
  br i1 %i.jm, label %bb.ao, label %._crit_edge572

._crit_edge572:                                   ; preds = %bb.an
  %.pre579 = mul nsw i32 %.4553, %i.c
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jn = xor i32 %.4553, -1                      ; 2 uses
  %i.jo = add i32 %i.jk, %i.jn
  store i32 %i.jo, ptr %i.a, align 4, !tbaa !18
  %i.jp = add nsw i32 %.4553, 2                   ; 3 uses
  %i.jq = mul nsw i32 %.4553, %i.c                ; 2 uses
  %i.jr = add nsw i32 %i.jp, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.js
  %i.ju = add nsw i32 %.4553, %i.g
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jv
  %i.jx = add nsw i32 %i.jp, %i.g
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jy ; 2 uses
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.jt, ptr noundef nonnull @c__1, ptr noundef %i.jw, ptr noundef nonnull %7, ptr noundef %i.jz, ptr noundef nonnull %7) #4
  %i.ka = load i32, ptr %1, align 4, !tbaa !18
  %i.kb = add i32 %i.ka, %i.jn
  store i32 %i.kb, ptr %i.a, align 4, !tbaa !18
  %i.kc = mul nsw i32 %i.iz, %i.c
  %i.kd = add nsw i32 %i.kc, %i.jp
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ke
  %i.kg = add nsw i32 %i.iz, %i.g
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.kh
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.kf, ptr noundef nonnull @c__1, ptr noundef %i.ki, ptr noundef nonnull %7, ptr noundef %i.jz, ptr noundef nonnull %7) #4
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge572, %bb.ao
  %.pre-phi580 = phi i32 [ %.pre579, %._crit_edge572 ], [ %i.jq, %bb.ao ] ; 2 uses
  %i.kj = add nsw i32 %i.iz, %.pre-phi580
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !20 ; 2 uses
  %i.kn = add nsw i32 %.pre-phi580, %.4553
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !20
  %i.kr = mul i32 %i.iz, %i.y
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !20
  %i.kv = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.ku, i64 1
  %i.kx = insertelement <2 x double> poison, double %i.km, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kz = fdiv <2 x double> %i.kw, %i.ky          ; 7 uses
  %i.la = extractelement <2 x double> %i.kz, i64 0
  %i.lb = extractelement <2 x double> %i.kz, i64 1
  %i.lc = call double @llvm.fmuladd.f64(double %i.la, double %i.lb, double -1.000000e+00) ; 4 uses
  %i.ld = load i32, ptr %2, align 4, !tbaa !18    ; 7 uses
  store i32 %i.ld, ptr %i.a, align 4, !tbaa !18
  %.not523548 = icmp slt i32 %i.ld, 1
  br i1 %.not523548, label %._crit_edge552, label %.lr.ph551.preheader

.lr.ph551.preheader:                              ; preds = %bb.ap
  %i.le = add nuw i32 %i.ld, 1
  %wide.trip.count563 = zext i32 %i.le to i64     ; 2 uses
  %invariant.gep611 = getelementptr [8 x i8], ptr %i.i, i64 %i.ho ; 4 uses
  %invariant.gep613 = getelementptr [8 x i8], ptr %i.i, i64 %i.ja ; 4 uses
  %i.lf = zext nneg i32 %i.ld to i64              ; 2 uses
  %min.iters.check659 = icmp ugt i32 %i.ld, 3
  %or.cond679 = select i1 %min.iters.check659, i1 %ident.check645.not, i1 false
  br i1 %or.cond679, label %vector.memcheck646, label %.lr.ph551.preheader680

vector.memcheck646:                               ; preds = %.lr.ph551.preheader
  %i.lg = shl nsw i64 %i.ho, 3                    ; 2 uses
  %scevgep648 = getelementptr i8, ptr %scevgep647, i64 %i.lg
  %i.lh = shl nuw nsw i64 %wide.trip.count563, 3  ; 2 uses
  %i.li = getelementptr i8, ptr %scevgep649, i64 %i.lg
  %scevgep650 = getelementptr i8, ptr %i.li, i64 %i.lh
  %i.lj = shl nsw i64 %i.ja, 3                    ; 2 uses
  %scevgep652 = getelementptr i8, ptr %scevgep651, i64 %i.lj
  %i.lk = getelementptr i8, ptr %scevgep653, i64 %i.lj
  %scevgep654 = getelementptr i8, ptr %i.lk, i64 %i.lh
  %bound0655 = icmp ult ptr %scevgep648, %scevgep654
  %bound1656 = icmp ult ptr %scevgep652, %scevgep650
  %found.conflict657 = and i1 %bound0655, %bound1656
  br i1 %found.conflict657, label %.lr.ph551.preheader680, label %vector.ph660

vector.ph660:                                     ; preds = %vector.memcheck646
  %n.vec661 = and i64 %i.lf, 2147483644           ; 3 uses
  %i.ll = or disjoint i64 %n.vec661, 1
  %broadcast.splatinsert662 = insertelement <4 x double> poison, double %i.km, i64 0
  %broadcast.splat663 = shufflevector <4 x double> %broadcast.splatinsert662, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat665 = shufflevector <2 x double> %i.kz, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert666 = insertelement <4 x double> poison, double %i.lc, i64 0
  %broadcast.splat667 = shufflevector <4 x double> %broadcast.splatinsert666, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat669 = shufflevector <2 x double> %i.kz, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph660
  %index671 = phi i64 [ 0, %vector.ph660 ], [ %index.next674, %vector.body670 ] ; 2 uses
  %i.lm = or disjoint i64 %index671, 1            ; 2 uses
  %i.ln = getelementptr [8 x i8], ptr %invariant.gep611, i64 %i.lm ; 2 uses
  %wide.load672 = load <4 x double>, ptr %i.ln, align 8, !tbaa !20, !alias.scope !26, !noalias !27
  %i.lo = fdiv <4 x double> %wide.load672, %broadcast.splat663 ; 2 uses
  %i.lp = getelementptr [8 x i8], ptr %invariant.gep613, i64 %i.lm ; 2 uses
  %wide.load673 = load <4 x double>, ptr %i.lp, align 8, !tbaa !20, !alias.scope !27
  %i.lq = fdiv <4 x double> %wide.load673, %broadcast.splat663 ; 2 uses
  %i.lr = fneg <4 x double> %i.lq
  %i.ls = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat665, <4 x double> %i.lo, <4 x double> %i.lr)
  %i.lt = fdiv <4 x double> %i.ls, %broadcast.splat667
  store <4 x double> %i.lt, ptr %i.ln, align 8, !tbaa !20, !alias.scope !26, !noalias !27
  %i.lu = fneg <4 x double> %i.lo
  %i.lv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat669, <4 x double> %i.lq, <4 x double> %i.lu)
  %i.lw = fdiv <4 x double> %i.lv, %broadcast.splat667
  store <4 x double> %i.lw, ptr %i.lp, align 8, !tbaa !20, !alias.scope !27
  %index.next674 = add nuw i64 %index671, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next674, %n.vec661
  br i1 %i.lx, label %middle.block675, label %vector.body670, !llvm.loop !16

middle.block675:                                  ; preds = %vector.body670
  %cmp.n676 = icmp eq i64 %n.vec661, %i.lf
  br i1 %cmp.n676, label %._crit_edge552, label %.lr.ph551.preheader680

.lr.ph551.preheader680:                           ; preds = %vector.memcheck646, %.lr.ph551.preheader, %middle.block675
  %indvars.iv560.ph = phi i64 [ 1, %vector.memcheck646 ], [ 1, %.lr.ph551.preheader ], [ %i.ll, %middle.block675 ] ; 4 uses
  %i.ly = zext nneg i32 %i.ld to i64
  %i.lz = and i32 %i.ld, 1
  %lcmp.mod684.not = icmp eq i32 %i.lz, 0
  br i1 %lcmp.mod684.not, label %.lr.ph551.prol.loopexit, label %.lr.ph551.prol

.lr.ph551.prol:                                   ; preds = %.lr.ph551.preheader680
  %i.ma = mul nsw i64 %indvars.iv560.ph, %i.z     ; 2 uses
  %gep612.prol = getelementptr [8 x i8], ptr %invariant.gep611, i64 %i.ma ; 2 uses
  %i.mb = load double, ptr %gep612.prol, align 8, !tbaa !20
  %gep614.prol = getelementptr [8 x i8], ptr %invariant.gep613, i64 %i.ma ; 2 uses
  %i.mc = load double, ptr %gep614.prol, align 8, !tbaa !20
  %i.md = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.mb, i64 1
  %i.mf = fdiv <2 x double> %i.me, %i.ky          ; 2 uses
  %i.mg = fneg <2 x double> %i.mf
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.mf, <2 x double> %i.mh)
  %i.mj = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = fdiv <2 x double> %i.mi, %i.mk          ; 2 uses
  %i.mm = extractelement <2 x double> %i.ml, i64 1
  store double %i.mm, ptr %gep612.prol, align 8, !tbaa !20
  %i.mn = extractelement <2 x double> %i.ml, i64 0
  store double %i.mn, ptr %gep614.prol, align 8, !tbaa !20
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.ph, 1
  br label %.lr.ph551.prol.loopexit

.lr.ph551.prol.loopexit:                          ; preds = %.lr.ph551.prol, %.lr.ph551.preheader680
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %.lr.ph551.preheader680 ], [ %indvars.iv.next561.prol, %.lr.ph551.prol ]
  %i.mo = icmp eq i64 %indvars.iv560.ph, %i.ly
  br i1 %i.mo, label %._crit_edge552, label %.lr.ph551.preheader680.new

.lr.ph551.preheader680.new:                       ; preds = %.lr.ph551.prol.loopexit
  %i.mp = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph551

.lr.ph551:                                        ; preds = %.lr.ph551, %.lr.ph551.preheader680.new
  %indvars.iv560 = phi i64 [ %indvars.iv560.unr, %.lr.ph551.preheader680.new ], [ %indvars.iv.next561.1, %.lr.ph551 ] ; 3 uses
  %i.mt = mul nsw i64 %indvars.iv560, %i.z        ; 2 uses
  %gep612 = getelementptr [8 x i8], ptr %invariant.gep611, i64 %i.mt ; 2 uses
  %i.mu = load double, ptr %gep612, align 8, !tbaa !20
  %gep614 = getelementptr [8 x i8], ptr %invariant.gep613, i64 %i.mt ; 2 uses
  %i.mv = load double, ptr %gep614, align 8, !tbaa !20
  %i.mw = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mu, i64 1
  %i.my = fdiv <2 x double> %i.mx, %i.ky          ; 2 uses
  %i.mz = fneg <2 x double> %i.my
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.my, <2 x double> %i.na)
  %i.nc = fdiv <2 x double> %i.nb, %i.mq          ; 2 uses
  %i.nd = extractelement <2 x double> %i.nc, i64 1
  store double %i.nd, ptr %gep612, align 8, !tbaa !20
  %i.ne = extractelement <2 x double> %i.nc, i64 0
  store double %i.ne, ptr %gep614, align 8, !tbaa !20
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1
  %i.nf = mul nsw i64 %indvars.iv.next561, %i.z   ; 2 uses
  %gep612.1 = getelementptr [8 x i8], ptr %invariant.gep611, i64 %i.nf ; 2 uses
  %i.ng = load double, ptr %gep612.1, align 8, !tbaa !20
  %gep614.1 = getelementptr [8 x i8], ptr %invariant.gep613, i64 %i.nf ; 2 uses
  %i.nh = load double, ptr %gep614.1, align 8, !tbaa !20
  %i.ni = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.ng, i64 1
  %i.nk = fdiv <2 x double> %i.nj, %i.ky          ; 2 uses
  %i.nl = fneg <2 x double> %i.nk
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.nk, <2 x double> %i.nm)
  %i.no = fdiv <2 x double> %i.nn, %i.ms          ; 2 uses
  %i.np = extractelement <2 x double> %i.no, i64 1
  store double %i.np, ptr %gep612.1, align 8, !tbaa !20
  %i.nq = extractelement <2 x double> %i.no, i64 0
  store double %i.nq, ptr %gep614.1, align 8, !tbaa !20
  %indvars.iv.next561.1 = add nuw nsw i64 %indvars.iv560, 2 ; 2 uses
  %exitcond564.not.1 = icmp eq i64 %indvars.iv.next561.1, %wide.trip.count563
  br i1 %exitcond564.not.1, label %._crit_edge552, label %.lr.ph551, !llvm.loop !17

._crit_edge552:                                   ; preds = %.lr.ph551.prol.loopexit, %.lr.ph551, %middle.block675, %bb.ap
  %i.nr = add nsw i32 %.4553, 2
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge552, %bb.ai
  %.5 = phi i32 [ %i.ia, %bb.ai ], [ %i.nr, %._crit_edge552 ] ; 2 uses
  %i.ns = load i32, ptr %1, align 4, !tbaa !18    ; 4 uses
  %i.nt = icmp sgt i32 %.5, %i.ns
  br i1 %i.nt, label %.preheader, label %.lr.ph554

.lr.ph556:                                        ; preds = %.preheader, %bb.bb
  %.6555 = phi i32 [ %i.qa, %bb.bb ], [ %i.ns, %.preheader ] ; 18 uses
  %i.nu = zext nneg i32 %.6555 to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.nu ; 3 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !18 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, 0
  %i.ny = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %i.nz = icmp slt i32 %.6555, %i.ny              ; 2 uses
  br i1 %i.nx, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %.lr.ph556
  br i1 %i.nz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.oa = sub nuw nsw i32 %i.ny, %.6555
  store i32 %i.oa, ptr %i.a, align 4, !tbaa !18
  %i.ob = add nuw nsw i32 %.6555, 1               ; 2 uses
  %i.oc = add nsw i32 %i.ob, %i.g
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.od
  %i.of = mul nsw i32 %.6555, %i.c
  %i.og = add nsw i32 %i.ob, %i.of
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.oh
  %i.oj = add nsw i32 %.6555, %i.g
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ok
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.oe, ptr noundef nonnull %7, ptr noundef %i.oi, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.ol, ptr noundef nonnull %7) #4
  %.pre569 = load i32, ptr %i.nv, align 4, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.om = phi i32 [ %.pre569, %bb.as ], [ %i.nw, %bb.ar ] ; 2 uses
  %.not527 = icmp eq i32 %i.om, %.6555
  br i1 %.not527, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.on = add nsw i32 %i.om, %i.g
  br label %.sink.split621

bb.av:                                            ; preds = %.lr.ph556
  br i1 %i.nz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.oo = sub nuw nsw i32 %i.ny, %.6555
  store i32 %i.oo, ptr %i.a, align 4, !tbaa !18
  %i.op = add nuw nsw i32 %.6555, 1               ; 3 uses
  %i.oq = add nsw i32 %i.op, %i.g
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.or ; 2 uses
  %i.ot = mul nsw i32 %.6555, %i.c
  %i.ou = add nsw i32 %i.op, %i.ot
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ov
  %i.ox = add nsw i32 %.6555, %i.g
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.oy
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.os, ptr noundef nonnull %7, ptr noundef %i.ow, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.oz, ptr noundef nonnull %7) #4
  %i.pa = load i32, ptr %1, align 4, !tbaa !18
  %i.pb = sub nsw i32 %i.pa, %.6555
  store i32 %i.pb, ptr %i.a, align 4, !tbaa !18
  %i.pc = add nsw i32 %.6555, -1                  ; 2 uses
  %i.pd = mul nsw i32 %i.pc, %i.c
  %i.pe = add nsw i32 %i.pd, %i.op
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pf
  %i.ph = add nsw i32 %i.pc, %i.g
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pi
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.os, ptr noundef nonnull %7, ptr noundef %i.pg, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.pj, ptr noundef nonnull %7) #4
  %.pre568 = load i32, ptr %i.nv, align 4, !tbaa !18
end_hunk_1
