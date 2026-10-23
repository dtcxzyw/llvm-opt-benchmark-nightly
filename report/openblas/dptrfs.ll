Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dptrfs?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DPTRFS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b11 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dptrfs_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr noundef %12, ptr noundef initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds i8, ptr %2, i64 -8 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 -8 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %4, i64 -8 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %5, i64 -8 ; 5 uses
  %i.f = load i32, ptr %7, align 4, !tbaa !27     ; 2 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %6, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %9, align 4, !tbaa !27     ; 2 uses
  %narrow349 = xor i32 %i.i, -1
  %i.j = sext i32 %narrow349 to i64               ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %8, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %10, i64 -8
  %i.m = getelementptr inbounds i8, ptr %11, i64 -8
  %i.n = getelementptr inbounds i8, ptr %12, i64 -8 ; 24 uses
  store i32 0, ptr %13, align 4, !tbaa !27
  %i.o = load i32, ptr %0, align 4, !tbaa !27     ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 4, !tbaa !27     ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %7, align 4, !tbaa !27
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1) ; 2 uses
  %i.t = icmp slt i32 %i.s, %spec.select
  br i1 %i.t, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %9, align 4, !tbaa !27
  %i.v = icmp slt i32 %i.u, %spec.select
  br i1 %i.v, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -8, %bb.c ], [ -10, %bb.d ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 8, %bb.c ], [ 10, %bb.d ]
  store i32 %.sink, ptr %13, align 4, !tbaa !27
  store i32 %.neg, ptr %i.a, align 4, !tbaa !27
  %i.w = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.o, 0
  %.not356391 = icmp eq i32 %i.q, 0               ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not356391, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %.not356391, label %.loopexit, label %.lr.ph394.preheader

.lr.ph394.preheader:                              ; preds = %bb.g
  %i.y = zext nneg i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %i.z, i1 false), !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %i.z, i1 false), !tbaa !29
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call double @dlamch_(ptr noundef nonnull @.str.1) #7 ; 3 uses
  %i.ab = tail call double @dlamch_(ptr noundef nonnull @.str.2) #7
  %i.ac = fmul double %i.ab, 4.000000e+00         ; 10 uses
  %i.ad = fdiv double %i.ac, %i.aa                ; 6 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !27    ; 2 uses
  %.not350389 = icmp slt i32 %i.ae, 1
  br i1 %.not350389, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.af = getelementptr i8, ptr %12, i64 8        ; 5 uses
  %i.ag = fmul double %i.aa, 4.000000e+00         ; 4 uses
  %i.ah = sext i32 %i.f to i64                    ; 3 uses
  %i.ai = sext i32 %i.i to i64                    ; 3 uses
  %i.aj = add nuw i32 %i.ae, 1
  %wide.trip.count425 = zext i32 %i.aj to i64
  %scevgep = getelementptr i8, ptr %12, i64 -8
  %i.ak = or i64 %i.ah, %i.g
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = shl nsw i64 %i.ah, 3
  %scevgep511 = getelementptr i8, ptr %3, i64 -8
  %i.an = or i64 %i.ai, %i.j
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = shl nsw i64 %i.ai, 3
  %scevgep515 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %scevgep516 = getelementptr i8, ptr %2, i64 -8
  %scevgep518 = getelementptr i8, ptr %12, i64 8
  %scevgep520 = getelementptr i8, ptr %12, i64 -8
  %i.aq = getelementptr i8, ptr %6, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %i.as = getelementptr i8, ptr %8, i64 %i.ao
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert476 = insertelement <4 x double> poison, double %i.ag, i64 0
  %broadcast.splat477 = shufflevector <4 x double> %broadcast.splatinsert476, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert478 = insertelement <4 x double> poison, double %i.ac, i64 0
  %broadcast.splat479 = shufflevector <4 x double> %broadcast.splatinsert478, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert494 = insertelement <4 x double> poison, double %i.ad, i64 0
  %broadcast.splat495 = shufflevector <4 x double> %broadcast.splatinsert494, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert496 = insertelement <4 x double> poison, double %i.ag, i64 0
  %broadcast.splat497 = shufflevector <4 x double> %broadcast.splatinsert496, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert498 = insertelement <4 x double> poison, double %i.ac, i64 0
  %broadcast.splat499 = shufflevector <4 x double> %broadcast.splatinsert498, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge387.thread
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge387.thread ] ; 3 uses
  %indvars.iv422 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next423, %._crit_edge387.thread ] ; 5 uses
  %i.au = mul i64 %i.am, %indvar
  %scevgep509 = getelementptr i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.av = mul i64 %i.ap, %indvar
  %scevgep513 = getelementptr i8, ptr %i.at, i64 %i.av ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv422 ; 2 uses
  %i.ax = mul nsw i64 %indvars.iv422, %i.ah       ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.h, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = mul nsw i64 %indvars.iv422, %i.ai       ; 7 uses
  %i.bb = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.ax ; 3 uses
  %invariant.gep452 = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  %invariant.gep454 = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  %invariant.gep456 = getelementptr [8 x i8], ptr %i.k, i64 %i.ba
  %i.be = getelementptr [8 x i8], ptr %i.h, i64 %i.ax
  %i.bf = getelementptr [8 x i8], ptr %i.k, i64 %i.ba
  %i.bg = getelementptr [8 x i8], ptr %i.k, i64 %i.ba
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.s
  %.0333 = phi i32 [ %i.jc, %bb.s ], [ 1, %.preheader ] ; 2 uses
  %.0 = phi double [ %i.jb, %bb.s ], [ 3.000000e+00, %.preheader ]
  %i.bh = load i32, ptr %0, align 4, !tbaa !27    ; 12 uses
  %i.bi = icmp eq i32 %i.bh, 1
  %i.bj = load double, ptr %i.az, align 8, !tbaa !29 ; 8 uses
  %i.bk = load double, ptr %2, align 8, !tbaa !29
  %i.bl = load double, ptr %i.bc, align 8, !tbaa !29
  %i.bm = fmul double %i.bk, %i.bl                ; 8 uses
  br i1 %i.bi, label %.thread445, label %bb.j

.thread445:                                       ; preds = %bb.i
  %i.bn = fsub double %i.bj, %i.bm
  store double %i.bn, ptr %i.af, align 8, !tbaa !29
  %i.bo = fcmp oge double %i.bj, 0.000000e+00
  %i.bp = fneg double %i.bj
  %i.bq = select i1 %i.bo, double %i.bj, double %i.bp
  %i.br = fcmp oge double %i.bm, 0.000000e+00
  %i.bs = fneg double %i.bm
  %i.bt = select i1 %i.br, double %i.bm, double %i.bs
  %i.bu = fadd double %i.bq, %i.bt
  store double %i.bu, ptr %12, align 8, !tbaa !29
  br label %.lr.ph366.preheader

bb.j:                                             ; preds = %bb.i
  %i.bv = load double, ptr %3, align 8, !tbaa !29
  %i.bw = load double, ptr %i.bd, align 8, !tbaa !29
  %i.bx = fmul double %i.bv, %i.bw                ; 4 uses
  %i.by = fsub double %i.bj, %i.bm
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = sext i32 %i.bh to i64                   ; 6 uses
  %i.cb = getelementptr [8 x i8], ptr %i.n, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store double %i.bz, ptr %i.cc, align 8, !tbaa !29
  %i.cd = fcmp oge double %i.bj, 0.000000e+00
  %i.ce = fneg double %i.bj
  %i.cf = select i1 %i.cd, double %i.bj, double %i.ce
  %i.cg = fcmp oge double %i.bm, 0.000000e+00
  %i.ch = fneg double %i.bm
  %i.ci = select i1 %i.cg, double %i.bm, double %i.ch
  %i.cj = fadd double %i.cf, %i.ci
  %i.ck = fcmp oge double %i.bx, 0.000000e+00
  %i.cl = fneg double %i.bx
  %i.cm = select i1 %i.ck, double %i.bx, double %i.cl
  %i.cn = fadd double %i.cj, %i.cm
  store double %i.cn, ptr %12, align 8, !tbaa !29
  %.not351.not360 = icmp sgt i32 %i.bh, 2
  br i1 %.not351.not360, label %.lr.ph.preheader, label %.loopexit450

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.bh to i64   ; 3 uses
  %invariant.gep458 = getelementptr [8 x i8], ptr %i.n, i64 %i.ca ; 2 uses
  %i.co = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check549 = icmp ult i64 %i.co, 8
  br i1 %min.iters.check549, label %.lr.ph.preheader564, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cp = shl nuw nsw i64 %wide.trip.count, 3     ; 6 uses
  %scevgep508 = getelementptr i8, ptr %scevgep, i64 %i.cp ; 4 uses
  %scevgep510 = getelementptr i8, ptr %invariant.gep, i64 %i.cp ; 2 uses
  %scevgep512 = getelementptr i8, ptr %scevgep511, i64 %i.cp ; 2 uses
  %scevgep514 = getelementptr i8, ptr %scevgep513, i64 %i.cp ; 2 uses
  %scevgep517 = getelementptr i8, ptr %scevgep516, i64 %i.cp ; 2 uses
  %i.cq = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.cq ; 4 uses
  %i.cr = getelementptr i8, ptr %scevgep520, i64 %i.cq
  %scevgep521 = getelementptr i8, ptr %i.cr, i64 %i.cp ; 4 uses
  %bound0 = icmp ult ptr %i.af, %scevgep510
  %bound1 = icmp ult ptr %scevgep509, %scevgep508
  %found.conflict = and i1 %bound0, %bound1
  %bound0522 = icmp ult ptr %i.af, %scevgep512
  %bound1523 = icmp ult ptr %3, %scevgep508
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx = or i1 %found.conflict, %found.conflict524
  %bound0525 = icmp ult ptr %i.af, %scevgep514
  %bound1526 = icmp ult ptr %scevgep513, %scevgep508
  %found.conflict527 = and i1 %bound0525, %bound1526
  %conflict.rdx528 = or i1 %conflict.rdx, %found.conflict527
  %bound0529 = icmp ult ptr %i.af, %scevgep517
  %bound1530 = icmp ult ptr %scevgep515, %scevgep508
  %found.conflict531 = and i1 %bound0529, %bound1530
  %conflict.rdx532 = or i1 %conflict.rdx528, %found.conflict531
  %bound0533 = icmp ult ptr %scevgep519, %scevgep510
  %bound1534 = icmp ult ptr %scevgep509, %scevgep521
  %found.conflict535 = and i1 %bound0533, %bound1534
  %conflict.rdx536 = or i1 %conflict.rdx532, %found.conflict535
  %bound0537 = icmp ult ptr %scevgep519, %scevgep512
  %bound1538 = icmp ult ptr %3, %scevgep521
  %found.conflict539 = and i1 %bound0537, %bound1538
  %conflict.rdx540 = or i1 %conflict.rdx536, %found.conflict539
  %bound0541 = icmp ult ptr %scevgep519, %scevgep514
  %bound1542 = icmp ult ptr %scevgep513, %scevgep521
  %found.conflict543 = and i1 %bound0541, %bound1542
  %conflict.rdx544 = or i1 %conflict.rdx540, %found.conflict543
  %bound0545 = icmp ult ptr %scevgep519, %scevgep517
  %bound1546 = icmp ult ptr %scevgep515, %scevgep521
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx548 = or i1 %conflict.rdx544, %found.conflict547
  br i1 %conflict.rdx548, label %.lr.ph.preheader564, label %vector.ph550

vector.ph550:                                     ; preds = %vector.memcheck
  %n.vec551 = and i64 %i.co, -4                   ; 3 uses
  %i.cs = or disjoint i64 %n.vec551, 2
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next561, %vector.body552 ] ; 5 uses
  %i.ct = or disjoint i64 %index553, 2            ; 6 uses
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct
  %wide.load554 = load <4 x double>, ptr %i.cu, align 8, !tbaa !29, !alias.scope !30 ; 4 uses
  %i.cv = getelementptr [8 x i8], ptr %3, i64 %index553
  %wide.load555 = load <4 x double>, ptr %i.cv, align 8, !tbaa !29, !alias.scope !31
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index553
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %wide.load556 = load <4 x double>, ptr %i.cx, align 8, !tbaa !29, !alias.scope !32
  %i.cy = fmul <4 x double> %wide.load555, %wide.load556 ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ct
  %wide.load557 = load <4 x double>, ptr %i.cz, align 8, !tbaa !29, !alias.scope !33
  %i.da = getelementptr [8 x i8], ptr %invariant.gep454, i64 %i.ct
  %wide.load558 = load <4 x double>, ptr %i.da, align 8, !tbaa !29, !alias.scope !32
  %i.db = fmul <4 x double> %wide.load557, %wide.load558 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ct
  %wide.load559 = load <4 x double>, ptr %i.dc, align 8, !tbaa !29, !alias.scope !31
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep456, i64 %index553
  %i.de = getelementptr i8, ptr %i.dd, i64 24
  %wide.load560 = load <4 x double>, ptr %i.de, align 8, !tbaa !29, !alias.scope !32
  %i.df = fmul <4 x double> %wide.load559, %wide.load560 ; 4 uses
  %i.dg = fsub <4 x double> %wide.load554, %i.cy
  %i.dh = fsub <4 x double> %i.dg, %i.db
  %i.di = fsub <4 x double> %i.dh, %i.df
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.ct
  store <4 x double> %i.di, ptr %i.dj, align 8, !tbaa !29, !alias.scope !34, !noalias !35
  %i.dk = fcmp oge <4 x double> %wide.load554, zeroinitializer
  %i.dl = fneg <4 x double> %wide.load554
  %i.dm = select <4 x i1> %i.dk, <4 x double> %wide.load554, <4 x double> %i.dl
  %i.dn = fcmp oge <4 x double> %i.cy, zeroinitializer
  %i.do = fneg <4 x double> %i.cy
  %i.dp = select <4 x i1> %i.dn, <4 x double> %i.cy, <4 x double> %i.do
  %i.dq = fadd <4 x double> %i.dm, %i.dp
  %i.dr = fcmp oge <4 x double> %i.db, zeroinitializer
  %i.ds = fneg <4 x double> %i.db
  %i.dt = select <4 x i1> %i.dr, <4 x double> %i.db, <4 x double> %i.ds
  %i.du = fadd <4 x double> %i.dq, %i.dt
  %i.dv = fcmp oge <4 x double> %i.df, zeroinitializer
  %i.dw = fneg <4 x double> %i.df
  %i.dx = select <4 x i1> %i.dv, <4 x double> %i.df, <4 x double> %i.dw
  %i.dy = fadd <4 x double> %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ct
  store <4 x double> %i.dy, ptr %i.dz, align 8, !tbaa !29, !alias.scope !36, !noalias !35
  %index.next561 = add nuw i64 %index553, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next561, %n.vec551
  br i1 %i.ea, label %middle.block562, label %vector.body552, !llvm.loop !15

middle.block562:                                  ; preds = %vector.body552
  %cmp.n563 = icmp eq i64 %i.co, %n.vec551
  br i1 %cmp.n563, label %.loopexit450, label %.lr.ph.preheader564

.lr.ph.preheader564:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block562
  %indvars.iv.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.cs, %middle.block562 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader564, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader564 ] ; 8 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eb = load double, ptr %gep, align 8, !tbaa !29 ; 4 uses
  %i.ec = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !29
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ec
  %i.ef = load double, ptr %gep453, align 8, !tbaa !29
  %i.eg = fmul double %i.ee, %i.ef                ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !29
  %gep455 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = fsub double %i.eb, %i.eg
  %gep459 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %indvars.iv
  %i.em = fcmp oge double %i.eb, 0.000000e+00
  %i.en = fneg double %i.eb
  %i.eo = select i1 %i.em, double %i.eb, double %i.en
  %i.ep = fcmp oge double %i.eg, 0.000000e+00
  %i.eq = fneg double %i.eg
  %i.er = select i1 %i.ep, double %i.eg, double %i.eq
  %i.es = fadd double %i.eo, %i.er
  %i.et = load <2 x double>, ptr %gep455, align 8, !tbaa !29
  %i.eu = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.ek, i64 1
  %i.ew = fmul <2 x double> %i.ev, %i.et          ; 5 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = fsub double %i.el, %i.ex
  %i.ez = extractelement <2 x double> %i.ew, i64 1
  %i.fa = fsub double %i.ey, %i.ez
  store double %i.fa, ptr %gep459, align 8, !tbaa !29
  %i.fb = fcmp oge <2 x double> %i.ew, zeroinitializer
  %i.fc = fneg <2 x double> %i.ew
  %i.fd = select <2 x i1> %i.fb, <2 x double> %i.ew, <2 x double> %i.fc ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0
  %i.ff = fadd double %i.es, %i.fe
  %i.fg = extractelement <2 x double> %i.fd, i64 1
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %i.fh, ptr %i.fi, align 8, !tbaa !29
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit450, label %.lr.ph, !llvm.loop !16

.loopexit450:                                     ; preds = %.lr.ph, %middle.block562, %bb.j
  %i.fj = getelementptr [8 x i8], ptr %i.be, i64 %i.ca
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !29 ; 4 uses
  %i.fl = add nsw i32 %i.bh, -1
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !29
  %i.fp = getelementptr [8 x i8], ptr %i.bf, i64 %i.fm
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !29
  %i.fr = fmul double %i.fo, %i.fq                ; 4 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ca
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !29
  %i.fu = getelementptr [8 x i8], ptr %i.bg, i64 %i.ca
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !29
  %i.fw = fmul double %i.ft, %i.fv                ; 4 uses
  %i.fx = fsub double %i.fk, %i.fr
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = shl nsw i32 %i.bh, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ga
  store double %i.fy, ptr %i.gb, align 8, !tbaa !29
  %i.gc = fcmp oge double %i.fk, 0.000000e+00
  %i.gd = fneg double %i.fk
  %i.ge = select i1 %i.gc, double %i.fk, double %i.gd
  %i.gf = fcmp oge double %i.fr, 0.000000e+00
  %i.gg = fneg double %i.fr
  %i.gh = select i1 %i.gf, double %i.fr, double %i.gg
  %i.gi = fadd double %i.ge, %i.gh
  %i.gj = fcmp oge double %i.fw, 0.000000e+00
  %i.gk = fneg double %i.fw
  %i.gl = select i1 %i.gj, double %i.fw, double %i.gk
  %i.gm = fadd double %i.gi, %i.gl
  store double %i.gm, ptr %i.cb, align 8, !tbaa !29
  %.not352362 = icmp slt i32 %i.bh, 1
  br i1 %.not352362, label %._crit_edge367, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %.thread445, %.loopexit450
  %i.gn = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.go = add i32 %i.bh, 1                        ; 2 uses
  %wide.trip.count401 = zext i32 %i.go to i64
  %invariant.gep460 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gn ; 3 uses
  %invariant.gep462 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gn ; 3 uses
  %i.gp = add nsw i64 %wide.trip.count401, -1     ; 3 uses
  %xtraiter = and i64 %i.gp, 1
  %i.gq = icmp eq i32 %i.go, 2
  br i1 %i.gq, label %.lr.ph366.epil.preheader, label %.lr.ph366.preheader.new

.lr.ph366.preheader.new:                          ; preds = %.lr.ph366.preheader
  %unroll_iter = and i64 %i.gp, -2
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %bb.o, %.lr.ph366.preheader.new
  %indvars.iv398 = phi i64 [ 1, %.lr.ph366.preheader.new ], [ %indvars.iv.next399.1, %bb.o ] ; 6 uses
  %.0334364 = phi double [ 0.000000e+00, %.lr.ph366.preheader.new ], [ %i.hy, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph366.preheader.new ], [ %niter.next.1, %bb.o ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv398
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !29 ; 3 uses
  %i.gt = fcmp ogt double %i.gs, %i.ad
  br i1 %i.gt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph366
  %gep463 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462, i64 %indvars.iv398
  %i.gu = load double, ptr %gep463, align 8, !tbaa !29 ; 3 uses
  %i.gv = fcmp oge double %i.gu, 0.000000e+00
  %i.gw = fneg double %i.gu
  %i.gx = select i1 %i.gv, double %i.gu, double %i.gw
  %i.gy = fdiv double %i.gx, %i.gs
  br label %.lr.ph366.1

bb.l:                                             ; preds = %.lr.ph366
  %gep461 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep460, i64 %indvars.iv398
  %i.gz = load double, ptr %gep461, align 8, !tbaa !29 ; 3 uses
  %i.ha = fcmp oge double %i.gz, 0.000000e+00
  %i.hb = fneg double %i.gz
  %i.hc = select i1 %i.ha, double %i.gz, double %i.hb
  %i.hd = fadd double %i.ac, %i.hc
  %i.he = fadd double %i.ac, %i.gs
  %i.hf = fdiv double %i.hd, %i.he
  br label %.lr.ph366.1

.lr.ph366.1:                                      ; preds = %bb.k, %bb.l
  %.sink472 = phi double [ %i.gy, %bb.k ], [ %i.hf, %bb.l ] ; 2 uses
  %i.hg = fcmp oge double %.0334364, %.sink472
  %i.hh = select i1 %i.hg, double %.0334364, double %.sink472 ; 2 uses
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %12, i64 %indvars.iv398
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !29 ; 3 uses
  %i.hk = fcmp ogt double %i.hj, %i.ad
  br i1 %i.hk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph366.1
  %gep461.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep460, i64 %indvars.iv.next399
  %i.hl = load double, ptr %gep461.1, align 8, !tbaa !29 ; 3 uses
  %i.hm = fcmp oge double %i.hl, 0.000000e+00
  %i.hn = fneg double %i.hl
  %i.ho = select i1 %i.hm, double %i.hl, double %i.hn
  %i.hp = fadd double %i.ac, %i.ho
  %i.hq = fadd double %i.ac, %i.hj
  %i.hr = fdiv double %i.hp, %i.hq
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph366.1
  %gep463.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462, i64 %indvars.iv.next399
  %i.hs = load double, ptr %gep463.1, align 8, !tbaa !29 ; 3 uses
  %i.ht = fcmp oge double %i.hs, 0.000000e+00
  %i.hu = fneg double %i.hs
  %i.hv = select i1 %i.ht, double %i.hs, double %i.hu
  %i.hw = fdiv double %i.hv, %i.hj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink472.1 = phi double [ %i.hw, %bb.n ], [ %i.hr, %bb.m ] ; 2 uses
  %i.hx = fcmp oge double %i.hh, %.sink472.1
  %i.hy = select i1 %i.hx, double %i.hh, double %.sink472.1 ; 3 uses
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge367.loopexit.unr-lcssa, label %.lr.ph366, !llvm.loop !17

._crit_edge367.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge367, label %.lr.ph366.epil.preheader

.lr.ph366.epil.preheader:                         ; preds = %._crit_edge367.loopexit.unr-lcssa, %.lr.ph366.preheader
  %indvars.iv398.epil.init = phi i64 [ 1, %.lr.ph366.preheader ], [ %indvars.iv.next399.1, %._crit_edge367.loopexit.unr-lcssa ] ; 3 uses
  %.0334364.epil.init = phi double [ 0.000000e+00, %.lr.ph366.preheader ], [ %i.hy, %._crit_edge367.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod568 = trunc i64 %i.gp to i1
  tail call void @llvm.assume(i1 %lcmp.mod568)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv398.epil.init
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !29 ; 3 uses
  %i.ib = fcmp ogt double %i.ia, %i.ad
  br i1 %i.ib, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph366.epil.preheader
  %gep461.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep460, i64 %indvars.iv398.epil.init
  %i.ic = load double, ptr %gep461.epil, align 8, !tbaa !29 ; 3 uses
  %i.id = fcmp oge double %i.ic, 0.000000e+00
  %i.ie = fneg double %i.ic
  %i.if = select i1 %i.id, double %i.ic, double %i.ie
  %i.ig = fadd double %i.ac, %i.if
  %i.ih = fadd double %i.ac, %i.ia
  %i.ii = fdiv double %i.ig, %i.ih
  br label %._crit_edge367.loopexit.epilog-lcssa

bb.q:                                             ; preds = %.lr.ph366.epil.preheader
  %gep463.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462, i64 %indvars.iv398.epil.init
  %i.ij = load double, ptr %gep463.epil, align 8, !tbaa !29 ; 3 uses
  %i.ik = fcmp oge double %i.ij, 0.000000e+00
  %i.il = fneg double %i.ij
  %i.im = select i1 %i.ik, double %i.ij, double %i.il
  %i.in = fdiv double %i.im, %i.ia
  br label %._crit_edge367.loopexit.epilog-lcssa

._crit_edge367.loopexit.epilog-lcssa:             ; preds = %bb.q, %bb.p
  %.sink472.epil = phi double [ %i.in, %bb.q ], [ %i.ii, %bb.p ] ; 2 uses
  %i.io = fcmp oge double %.0334364.epil.init, %.sink472.epil
  %i.ip = select i1 %i.io, double %.0334364.epil.init, double %.sink472.epil
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge367.loopexit.epilog-lcssa, %._crit_edge367.loopexit.unr-lcssa, %.loopexit450
  %.not352362448 = phi i1 [ true, %.loopexit450 ], [ false, %._crit_edge367.loopexit.unr-lcssa ], [ false, %._crit_edge367.loopexit.epilog-lcssa ]
  %.0334.lcssa = phi double [ 0.000000e+00, %.loopexit450 ], [ %i.hy, %._crit_edge367.loopexit.unr-lcssa ], [ %i.ip, %._crit_edge367.loopexit.epilog-lcssa ] ; 3 uses
  store double %.0334.lcssa, ptr %i.aw, align 8, !tbaa !29
  %i.iq = fcmp ogt double %.0334.lcssa, %i.aa
  br i1 %i.iq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge367
  %i.ir = fmul double %.0334.lcssa, 2.000000e+00
  %i.is = fcmp ole double %i.ir, %.0
  %i.it = icmp samesign ult i32 %.0333, 6
  %or.cond = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iu = sext i32 %i.bh to i64
  %i.iv = getelementptr [8 x i8], ptr %i.n, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 8
  tail call void @dpttrs_(ptr noundef nonnull %0, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef %5, ptr noundef %i.iw, ptr noundef nonnull %0, ptr noundef nonnull %13) #7
  %i.ix = load i32, ptr %0, align 4, !tbaa !27
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [8 x i8], ptr %i.n, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  tail call void @daxpy_(ptr noundef nonnull %0, ptr noundef nonnull @c_b11, ptr noundef %i.ja, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bc, ptr noundef nonnull @c__1) #7
  %i.jb = load double, ptr %i.aw, align 8, !tbaa !29
  %i.jc = add nuw nsw i32 %.0333, 1
  br label %bb.i

bb.t:                                             ; preds = %bb.r, %._crit_edge367
  br i1 %.not352362448, label %._crit_edge372, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.jd = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.je = add i32 %i.bh, 1
  %wide.trip.count407 = zext i32 %i.je to i64     ; 2 uses
  %invariant.gep464 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jd ; 3 uses
  %invariant.gep466 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jd ; 3 uses
  %i.jf = add nsw i64 %wide.trip.count407, -1     ; 7 uses
  %min.iters.check = icmp ult i64 %i.jf, 4
  br i1 %min.iters.check, label %.lr.ph371.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check475 = icmp ult i64 %i.jf, 16
  br i1 %min.iters.check475, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jg = and i64 %i.jf, 12
  %n.vec = and i64 %i.jf, -16                     ; 4 uses
  %i.jh = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ji = or disjoint i64 %index, 1               ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %12, i64 %index ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 64 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.jj, align 8, !tbaa !29 ; 3 uses
  %wide.load480 = load <4 x double>, ptr %i.jk, align 8, !tbaa !29 ; 3 uses
  %wide.load481 = load <4 x double>, ptr %i.jl, align 8, !tbaa !29 ; 3 uses
  %wide.load482 = load <4 x double>, ptr %i.jm, align 8, !tbaa !29 ; 3 uses
  %i.jn = fcmp ogt <4 x double> %wide.load, %broadcast.splat ; 3 uses
  %i.jo = fcmp ogt <4 x double> %wide.load480, %broadcast.splat ; 3 uses
  %i.jp = fcmp ogt <4 x double> %wide.load481, %broadcast.splat ; 3 uses
  %i.jq = fcmp ogt <4 x double> %wide.load482, %broadcast.splat ; 3 uses
  %i.jr = xor <4 x i1> %i.jn, splat (i1 true)
  %i.js = xor <4 x i1> %i.jo, splat (i1 true)
  %i.jt = xor <4 x i1> %i.jp, splat (i1 true)
  %i.ju = xor <4 x i1> %i.jq, splat (i1 true)
  %i.jv = getelementptr [8 x i8], ptr %invariant.gep464, i64 %i.ji ; 4 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 32
  %i.jx = getelementptr i8, ptr %i.jv, i64 64
  %i.jy = getelementptr i8, ptr %i.jv, i64 96
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jv, <4 x i1> %i.jr, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load483 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jw, <4 x i1> %i.js, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load484 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jx, <4 x i1> %i.jt, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load485 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jy, <4 x i1> %i.ju, <4 x double> poison), !tbaa !29 ; 3 uses
  %i.jz = fcmp oge <4 x double> %wide.masked.load, zeroinitializer
  %i.ka = fcmp oge <4 x double> %wide.masked.load483, zeroinitializer
  %i.kb = fcmp oge <4 x double> %wide.masked.load484, zeroinitializer
  %i.kc = fcmp oge <4 x double> %wide.masked.load485, zeroinitializer
  %i.kd = fneg <4 x double> %wide.masked.load
  %i.ke = fneg <4 x double> %wide.masked.load483
  %i.kf = fneg <4 x double> %wide.masked.load484
  %i.kg = fneg <4 x double> %wide.masked.load485
  %i.kh = select <4 x i1> %i.jz, <4 x double> %wide.masked.load, <4 x double> %i.kd
  %i.ki = select <4 x i1> %i.ka, <4 x double> %wide.masked.load483, <4 x double> %i.ke
  %i.kj = select <4 x i1> %i.kb, <4 x double> %wide.masked.load484, <4 x double> %i.kf
  %i.kk = select <4 x i1> %i.kc, <4 x double> %wide.masked.load485, <4 x double> %i.kg
  %i.kl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load, <4 x double> %i.kh)
  %i.km = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load480, <4 x double> %i.ki)
  %i.kn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load481, <4 x double> %i.kj)
  %i.ko = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load482, <4 x double> %i.kk)
  %i.kp = fadd <4 x double> %broadcast.splat479, %i.kl
  %i.kq = fadd <4 x double> %broadcast.splat479, %i.km
  %i.kr = fadd <4 x double> %broadcast.splat479, %i.kn
  %i.ks = fadd <4 x double> %broadcast.splat479, %i.ko
  %i.kt = getelementptr [8 x i8], ptr %invariant.gep466, i64 %i.ji ; 4 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 32
  %i.kv = getelementptr i8, ptr %i.kt, i64 64
  %i.kw = getelementptr i8, ptr %i.kt, i64 96
  %wide.masked.load486 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kt, <4 x i1> %i.jn, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load487 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ku, <4 x i1> %i.jo, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load488 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kv, <4 x i1> %i.jp, <4 x double> poison), !tbaa !29 ; 3 uses
  %wide.masked.load489 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kw, <4 x i1> %i.jq, <4 x double> poison), !tbaa !29 ; 3 uses
  %i.kx = fcmp oge <4 x double> %wide.masked.load486, zeroinitializer
  %i.ky = fcmp oge <4 x double> %wide.masked.load487, zeroinitializer
  %i.kz = fcmp oge <4 x double> %wide.masked.load488, zeroinitializer
  %i.la = fcmp oge <4 x double> %wide.masked.load489, zeroinitializer
  %i.lb = fneg <4 x double> %wide.masked.load486
  %i.lc = fneg <4 x double> %wide.masked.load487
  %i.ld = fneg <4 x double> %wide.masked.load488
  %i.le = fneg <4 x double> %wide.masked.load489
  %i.lf = select <4 x i1> %i.kx, <4 x double> %wide.masked.load486, <4 x double> %i.lb
  %i.lg = select <4 x i1> %i.ky, <4 x double> %wide.masked.load487, <4 x double> %i.lc
  %i.lh = select <4 x i1> %i.kz, <4 x double> %wide.masked.load488, <4 x double> %i.ld
  %i.li = select <4 x i1> %i.la, <4 x double> %wide.masked.load489, <4 x double> %i.le
  %i.lj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load, <4 x double> %i.lf)
  %i.lk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load480, <4 x double> %i.lg)
  %i.ll = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load481, <4 x double> %i.lh)
  %i.lm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat477, <4 x double> %wide.load482, <4 x double> %i.li)
  %predphi = select <4 x i1> %i.jn, <4 x double> %i.lj, <4 x double> %i.kp
  %predphi490 = select <4 x i1> %i.jo, <4 x double> %i.lk, <4 x double> %i.kq
  %predphi491 = select <4 x i1> %i.jp, <4 x double> %i.ll, <4 x double> %i.kr
  %predphi492 = select <4 x i1> %i.jq, <4 x double> %i.lm, <4 x double> %i.ks
  store <4 x double> %predphi, ptr %i.jj, align 8, !tbaa !29
  store <4 x double> %predphi490, ptr %i.jk, align 8, !tbaa !29
  store <4 x double> %predphi491, ptr %i.jl, align 8, !tbaa !29
  store <4 x double> %predphi492, ptr %i.jm, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ln = icmp eq i64 %index.next, %n.vec
  br i1 %i.ln, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jf, %n.vec
  br i1 %cmp.n, label %._crit_edge372, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph371.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec493 = and i64 %i.jf, -4                   ; 3 uses
  %i.lo = or disjoint i64 %n.vec493, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index500 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next505, %vec.epilog.vector.body ] ; 3 uses
  %i.lp = or disjoint i64 %index500, 1            ; 2 uses
  %i.lq = getelementptr [8 x i8], ptr %12, i64 %index500 ; 2 uses
  %wide.load501 = load <4 x double>, ptr %i.lq, align 8, !tbaa !29 ; 3 uses
  %i.lr = fcmp ogt <4 x double> %wide.load501, %broadcast.splat495 ; 3 uses
  %i.ls = xor <4 x i1> %i.lr, splat (i1 true)
  %i.lt = getelementptr [8 x i8], ptr %invariant.gep464, i64 %i.lp
  %wide.masked.load502 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.lt, <4 x i1> %i.ls, <4 x double> poison), !tbaa !29 ; 3 uses
  %i.lu = fcmp oge <4 x double> %wide.masked.load502, zeroinitializer
  %i.lv = fneg <4 x double> %wide.masked.load502
  %i.lw = select <4 x i1> %i.lu, <4 x double> %wide.masked.load502, <4 x double> %i.lv
  %i.lx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat497, <4 x double> %wide.load501, <4 x double> %i.lw)
  %i.ly = fadd <4 x double> %broadcast.splat499, %i.lx
  %i.lz = getelementptr [8 x i8], ptr %invariant.gep466, i64 %i.lp
  %wide.masked.load503 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.lz, <4 x i1> %i.lr, <4 x double> poison), !tbaa !29 ; 3 uses
  %i.ma = fcmp oge <4 x double> %wide.masked.load503, zeroinitializer
  %i.mb = fneg <4 x double> %wide.masked.load503
  %i.mc = select <4 x i1> %i.ma, <4 x double> %wide.masked.load503, <4 x double> %i.mb
  %i.md = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat497, <4 x double> %wide.load501, <4 x double> %i.mc)
  %predphi504 = select <4 x i1> %i.lr, <4 x double> %i.md, <4 x double> %i.ly
  store <4 x double> %predphi504, ptr %i.lq, align 8, !tbaa !29
  %index.next505 = add nuw i64 %index500, 4       ; 2 uses
  %i.me = icmp eq i64 %index.next505, %n.vec493
  br i1 %i.me, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n506 = icmp eq i64 %i.jf, %n.vec493
  br i1 %cmp.n506, label %._crit_edge372, label %.lr.ph371.preheader

.lr.ph371.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv403.ph = phi i64 [ 1, %iter.check ], [ %i.jh, %vec.epilog.iter.check ], [ %i.lo, %vec.epilog.middle.block ]
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %bb.w
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %bb.w ], [ %indvars.iv403.ph, %.lr.ph371.preheader ] ; 4 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv403 ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !29 ; 3 uses
  %i.mh = fcmp ogt double %i.mg, %i.ad
  br i1 %i.mh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph371
  %gep467 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep466, i64 %indvars.iv403
  %i.mi = load double, ptr %gep467, align 8, !tbaa !29 ; 3 uses
  %i.mj = fcmp oge double %i.mi, 0.000000e+00
  %i.mk = fneg double %i.mi
  %i.ml = select i1 %i.mj, double %i.mi, double %i.mk
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.mg, double %i.ml)
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph371
  %gep465 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep464, i64 %indvars.iv403
  %i.mn = load double, ptr %gep465, align 8, !tbaa !29 ; 3 uses
  %i.mo = fcmp oge double %i.mn, 0.000000e+00
  %i.mp = fneg double %i.mn
  %i.mq = select i1 %i.mo, double %i.mn, double %i.mp
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.mg, double %i.mq)
  %i.ms = fadd double %i.ac, %i.mr
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge = phi double [ %i.ms, %bb.v ], [ %i.mm, %bb.u ]
  store double %storemerge, ptr %i.mf, align 8, !tbaa !29
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count407
  br i1 %exitcond408.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !20

._crit_edge372:                                   ; preds = %bb.w, %middle.block, %vec.epilog.middle.block, %bb.t
  %i.mt = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.mu
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !29
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv422 ; 4 uses
  store double %i.mw, ptr %i.mx, align 8, !tbaa !29
  store double 1.000000e+00, ptr %12, align 8, !tbaa !29
  %i.my = load i32, ptr %0, align 4, !tbaa !27    ; 6 uses
  %.not354373 = icmp slt i32 %i.my, 2
  br i1 %.not354373, label %._crit_edge377, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge372
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = add nsw i64 %i.mz, -1                   ; 2 uses
  %xtraiter569 = and i64 %i.na, 3                 ; 3 uses
  %i.nb = add nsw i32 %i.my, -2
  %i.nc = icmp ult i32 %i.nb, 3
  br i1 %i.nc, label %.lr.ph376.epil.preheader, label %.lr.ph376.preheader.new

.lr.ph376.preheader.new:                          ; preds = %.lr.ph376.preheader
  %unroll_iter572 = and i64 %i.na, -4
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376, %.lr.ph376.preheader.new
  %i.nd = phi double [ 1.000000e+00, %.lr.ph376.preheader.new ], [ %i.oi, %.lr.ph376 ]
  %indvars.iv409 = phi i64 [ 2, %.lr.ph376.preheader.new ], [ %indvars.iv.next410.3, %.lr.ph376 ] ; 7 uses
  %niter573 = phi i64 [ 0, %.lr.ph376.preheader.new ], [ %niter573.next.3, %.lr.ph376 ]
  %i.ne = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409
  %i.nf = getelementptr i8, ptr %i.ne, i64 -8
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !29 ; 3 uses
  %i.nh = fcmp oge double %i.ng, 0.000000e+00
  %i.ni = fneg double %i.ng
  %i.nj = select i1 %i.nh, double %i.ng, double %i.ni
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nd, double %i.nj, double 1.000000e+00) ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409
  store double %i.nk, ptr %i.nl, align 8, !tbaa !29
  %i.nm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.nn = getelementptr i8, ptr %i.nm, i64 -8
  %i.no = load double, ptr %i.nn, align 8, !tbaa !29 ; 3 uses
  %i.np = fcmp oge double %i.no, 0.000000e+00
  %i.nq = fneg double %i.no
  %i.nr = select i1 %i.np, double %i.no, double %i.nq
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nk, double %i.nr, double 1.000000e+00) ; 2 uses
  %i.nt = getelementptr [8 x i8], ptr %12, i64 %indvars.iv409
  store double %i.ns, ptr %i.nt, align 8, !tbaa !29
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %i.nu = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.1
  %i.nv = getelementptr i8, ptr %i.nu, i64 -8
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !29 ; 3 uses
  %i.nx = fcmp oge double %i.nw, 0.000000e+00
  %i.ny = fneg double %i.nw
  %i.nz = select i1 %i.nx, double %i.nw, double %i.ny
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.nz, double 1.000000e+00) ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.1
  store double %i.oa, ptr %i.ob, align 8, !tbaa !29
  %indvars.iv.next410.2 = add nuw nsw i64 %indvars.iv409, 3 ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.2
  %i.od = getelementptr i8, ptr %i.oc, i64 -8
  %i.oe = load double, ptr %i.od, align 8, !tbaa !29 ; 3 uses
  %i.of = fcmp oge double %i.oe, 0.000000e+00
  %i.og = fneg double %i.oe
  %i.oh = select i1 %i.of, double %i.oe, double %i.og
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.oa, double %i.oh, double 1.000000e+00) ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.2
  store double %i.oi, ptr %i.oj, align 8, !tbaa !29
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %niter573.next.3 = add nuw i64 %niter573, 4     ; 2 uses
  %niter573.ncmp.3 = icmp eq i64 %niter573.next.3, %unroll_iter572
  br i1 %niter573.ncmp.3, label %.lr.ph380.preheader.unr-lcssa, label %.lr.ph376, !llvm.loop !21

._crit_edge377:                                   ; preds = %._crit_edge372
  %i.ok = sext i32 %i.my to i64                   ; 2 uses
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ok
  %i.om = load double, ptr %i.ol, align 8, !tbaa !29
  %i.on = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ok ; 2 uses
  %i.oo = load double, ptr %i.on, align 8, !tbaa !29
  %i.op = fdiv double %i.oo, %i.om
  store double %i.op, ptr %i.on, align 8, !tbaa !29
  br label %._crit_edge381

.lr.ph380.preheader.unr-lcssa:                    ; preds = %.lr.ph376
  %lcmp.mod570.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod570.not, label %.lr.ph380.preheader, label %.lr.ph376.epil.preheader

.lr.ph376.epil.preheader:                         ; preds = %.lr.ph380.preheader.unr-lcssa, %.lr.ph376.preheader
  %.epil.init = phi double [ 1.000000e+00, %.lr.ph376.preheader ], [ %i.oi, %.lr.ph380.preheader.unr-lcssa ]
  %indvars.iv409.epil.init = phi i64 [ 2, %.lr.ph376.preheader ], [ %indvars.iv.next410.3, %.lr.ph380.preheader.unr-lcssa ]
  %lcmp.mod571 = icmp ne i64 %xtraiter569, 0
  tail call void @llvm.assume(i1 %lcmp.mod571)
  br label %.lr.ph376.epil

.lr.ph376.epil:                                   ; preds = %.lr.ph376.epil, %.lr.ph376.epil.preheader
  %i.oq = phi double [ %.epil.init, %.lr.ph376.epil.preheader ], [ %i.ox, %.lr.ph376.epil ]
  %indvars.iv409.epil = phi i64 [ %indvars.iv409.epil.init, %.lr.ph376.epil.preheader ], [ %indvars.iv.next410.epil, %.lr.ph376.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph376.epil.preheader ], [ %epil.iter.next, %.lr.ph376.epil ]
  %i.or = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409.epil
  %i.os = getelementptr i8, ptr %i.or, i64 -8
  %i.ot = load double, ptr %i.os, align 8, !tbaa !29 ; 3 uses
  %i.ou = fcmp oge double %i.ot, 0.000000e+00
  %i.ov = fneg double %i.ot
  %i.ow = select i1 %i.ou, double %i.ot, double %i.ov
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.ow, double 1.000000e+00) ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409.epil
  store double %i.ox, ptr %i.oy, align 8, !tbaa !29
  %indvars.iv.next410.epil = add nuw nsw i64 %indvars.iv409.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter569
  br i1 %epil.iter.cmp.not, label %.lr.ph380.preheader, label %.lr.ph376.epil, !llvm.loop !22

.lr.ph380.preheader:                              ; preds = %.lr.ph376.epil, %.lr.ph380.preheader.unr-lcssa
  %i.oz = zext nneg i32 %i.my to i64              ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.oz
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !29
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.oz ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !29
  %i.pe = fdiv double %i.pd, %i.pb
  store double %i.pe, ptr %i.pc, align 8, !tbaa !29
  %i.pf = zext nneg i32 %i.my to i64              ; 2 uses
  %.phi.trans.insert430 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pf
  %.pre431 = load double, ptr %.phi.trans.insert430, align 8, !tbaa !29
  br label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %i.pg = phi double [ %.pre431, %.lr.ph380.preheader ], [ %i.pr, %.lr.ph380 ]
  %indvars.iv414 = phi i64 [ %i.pf, %.lr.ph380.preheader ], [ %indvars.iv.next415.a, %.lr.ph380 ] ; 2 uses
  %indvars.iv.next415.a = add nsw i64 %indvars.iv414, -1 ; 4 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next415.a ; 2 uses
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !29
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next415.a
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !29
  %i.pl = fdiv double %i.pi, %i.pk
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next415.a
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !29 ; 3 uses
  %i.po = fcmp oge double %i.pn, 0.000000e+00
  %i.pp = fneg double %i.pn
  %i.pq = select i1 %i.po, double %i.pn, double %i.pp
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pg, double %i.pq, double %i.pl) ; 2 uses
  store double %i.pr, ptr %i.ph, align 8, !tbaa !29
  %14 = icmp samesign ugt i64 %indvars.iv414, 2
  br i1 %14, label %.lr.ph380, label %._crit_edge381, !llvm.loop !23

._crit_edge381:                                   ; preds = %.lr.ph380, %._crit_edge377
  %i.ps = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.pt
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !29 ; 3 uses
  %i.pw = fcmp oge double %i.pv, 0.000000e+00
  %i.px = fneg double %i.pv
  %i.py = select i1 %i.pw, double %i.pv, double %i.px
  %i.pz = load double, ptr %i.mx, align 8, !tbaa !29
  %i.qa = fmul double %i.pz, %i.py                ; 2 uses
  store double %i.qa, ptr %i.mx, align 8, !tbaa !29
  %i.qb = load i32, ptr %0, align 4, !tbaa !27    ; 3 uses
  %.not355382 = icmp slt i32 %i.qb, 1
  br i1 %.not355382, label %._crit_edge387.thread, label %.lr.ph386

.lr.ph386:                                        ; preds = %._crit_edge381
  %invariant.gep468 = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 5 uses
  %i.qc = zext nneg i32 %i.qb to i64              ; 2 uses
  %xtraiter574.a = and i64 %i.qc, 3               ; 3 uses
  %i.qd = icmp ult i32 %i.qb, 4
  br i1 %i.qd, label %.epil.preheader, label %.lr.ph386.new

.lr.ph386.new:                                    ; preds = %.lr.ph386
  %unroll_iter579 = and i64 %i.qc, 2147483644
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph386.new
  %indvars.iv417 = phi i64 [ 1, %.lr.ph386.new ], [ %indvars.iv.next418.3, %bb.x ] ; 5 uses
  %.1384 = phi double [ 0.000000e+00, %.lr.ph386.new ], [ %i.re, %bb.x ] ; 2 uses
  %niter580 = phi i64 [ 0, %.lr.ph386.new ], [ %niter580.next.3, %bb.x ]
  %gep469 = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %i.qe = load double, ptr %gep469, align 8, !tbaa !29 ; 3 uses
  %i.qf = fcmp oge double %i.qe, 0.000000e+00
  %i.qg = fneg double %i.qe
  %i.qh = select i1 %i.qf, double %i.qe, double %i.qg ; 2 uses
  %i.qi = fcmp oge double %.1384, %i.qh
  %i.qj = select i1 %i.qi, double %.1384, double %i.qh ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.1 = getelementptr i8, ptr %i.qk, i64 8
  %i.ql = load double, ptr %gep469.1, align 8, !tbaa !29 ; 3 uses
  %i.qm = fcmp oge double %i.ql, 0.000000e+00
  %i.qn = fneg double %i.ql
  %i.qo = select i1 %i.qm, double %i.ql, double %i.qn ; 2 uses
  %i.qp = fcmp oge double %i.qj, %i.qo
  %i.qq = select i1 %i.qp, double %i.qj, double %i.qo ; 2 uses
  %i.qr = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.2 = getelementptr i8, ptr %i.qr, i64 16
  %i.qs = load double, ptr %gep469.2, align 8, !tbaa !29 ; 3 uses
  %i.qt = fcmp oge double %i.qs, 0.000000e+00
  %i.qu = fneg double %i.qs
  %i.qv = select i1 %i.qt, double %i.qs, double %i.qu ; 2 uses
  %i.qw = fcmp oge double %i.qq, %i.qv
  %i.qx = select i1 %i.qw, double %i.qq, double %i.qv ; 2 uses
  %i.qy = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.3 = getelementptr i8, ptr %i.qy, i64 24
  %i.qz = load double, ptr %gep469.3, align 8, !tbaa !29 ; 3 uses
  %i.ra = fcmp oge double %i.qz, 0.000000e+00
  %i.rb = fneg double %i.qz
  %i.rc = select i1 %i.ra, double %i.qz, double %i.rb ; 2 uses
  %i.rd = fcmp oge double %i.qx, %i.rc
  %i.re = select i1 %i.rd, double %i.qx, double %i.rc ; 3 uses
  %indvars.iv.next418.3 = add nuw nsw i64 %indvars.iv417, 4 ; 2 uses
  %niter580.next.3 = add i64 %niter580, 4         ; 2 uses
  %niter580.ncmp.3 = icmp eq i64 %niter580.next.3, %unroll_iter579
  br i1 %niter580.ncmp.3, label %._crit_edge387.unr-lcssa, label %bb.x, !llvm.loop !24

._crit_edge387.unr-lcssa:                         ; preds = %bb.x
  %lcmp.mod576.not = icmp eq i64 %xtraiter574.a, 0
  br i1 %lcmp.mod576.not, label %._crit_edge387, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge387.unr-lcssa, %.lr.ph386
  %indvars.iv417.epil.init = phi i64 [ 1, %.lr.ph386 ], [ %indvars.iv.next418.3, %._crit_edge387.unr-lcssa ]
  %.1384.epil.init = phi double [ 0.000000e+00, %.lr.ph386 ], [ %i.re, %._crit_edge387.unr-lcssa ]
  %lcmp.mod578 = icmp ne i64 %xtraiter574.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod578)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv417.epil = phi i64 [ %indvars.iv417.epil.init, %.epil.preheader ], [ %indvars.iv.next418.epil, %bb.y ] ; 2 uses
  %.1384.epil = phi double [ %.1384.epil.init, %.epil.preheader ], [ %i.rk, %bb.y ] ; 2 uses
  %epil.iter575 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter575.next, %bb.y ]
  %gep469.epil = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417.epil
  %i.rf = load double, ptr %gep469.epil, align 8, !tbaa !29 ; 3 uses
  %i.rg = fcmp oge double %i.rf, 0.000000e+00
  %i.rh = fneg double %i.rf
  %i.ri = select i1 %i.rg, double %i.rf, double %i.rh ; 2 uses
  %i.rj = fcmp oge double %.1384.epil, %i.ri
  %i.rk = select i1 %i.rj, double %.1384.epil, double %i.ri ; 2 uses
  %indvars.iv.next418.epil = add nuw nsw i64 %indvars.iv417.epil, 1
  %epil.iter575.next = add i64 %epil.iter575, 1   ; 2 uses
  %epil.iter575.cmp.not = icmp eq i64 %epil.iter575.next, %xtraiter574.a
  br i1 %epil.iter575.cmp.not, label %._crit_edge387, label %bb.y, !llvm.loop !25

._crit_edge387:                                   ; preds = %bb.y, %._crit_edge387.unr-lcssa
  %.lcssa566 = phi double [ %i.re, %._crit_edge387.unr-lcssa ], [ %i.rk, %bb.y ] ; 2 uses
  %i.rl = fcmp une double %.lcssa566, 0.000000e+00
  br i1 %i.rl, label %bb.z, label %._crit_edge387.thread

bb.z:                                             ; preds = %._crit_edge387
  %i.rm = fdiv double %i.qa, %.lcssa566
  store double %i.rm, ptr %i.mx, align 8, !tbaa !29
  br label %._crit_edge387.thread

._crit_edge387.thread:                            ; preds = %._crit_edge381, %._crit_edge387, %bb.z
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond426.not, label %.loopexit, label %.preheader, !llvm.loop !26

.loopexit:                                        ; preds = %._crit_edge387.thread, %bb.f, %.lr.ph394.preheader, %bb.h, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dpttrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !37, !38, !39}
!16 = distinct !{!16, !37, !38}
!17 = distinct !{!17, !37}
!18 = distinct !{!18, !37, !38, !39}
!19 = distinct !{!19, !37, !38, !39}
!20 = distinct !{!20, !37, !39, !38}
!21 = distinct !{!21, !37}
!22 = distinct !{!22, !41}
!23 = distinct !{!23, !37}
!24 = distinct !{!24, !37}
!25 = distinct !{!25, !41}
!26 = distinct !{!26, !37}
!27 = !{!5, !5, i64 0}
!28 = !{!"double", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!9}
!31 = !{!10}
!32 = !{!11}
!33 = !{!12}
!34 = !{!13}
!35 = !{!9, !10, !11, !12}
!36 = !{!14}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"branch_weights", i32 4, i32 12}
!41 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
