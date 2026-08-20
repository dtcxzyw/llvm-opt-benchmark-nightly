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
  %i.f = load i32, ptr %7, align 4, !tbaa !8      ; 2 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %6, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %9, align 4, !tbaa !8      ; 2 uses
  %narrow349 = xor i32 %i.i, -1
  %i.j = sext i32 %narrow349 to i64               ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %8, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %10, i64 -8
  %i.m = getelementptr inbounds i8, ptr %11, i64 -8
  %i.n = getelementptr inbounds i8, ptr %12, i64 -8 ; 24 uses
  store i32 0, ptr %13, align 4, !tbaa !8
  %i.o = load i32, ptr %0, align 4, !tbaa !8      ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %7, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1) ; 2 uses
  %i.t = icmp slt i32 %i.s, %spec.select
  br i1 %i.t, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %9, align 4, !tbaa !8
  %i.v = icmp slt i32 %i.u, %spec.select
  br i1 %i.v, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -8, %bb.c ], [ -10, %bb.d ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 8, %bb.c ], [ 10, %bb.d ]
  store i32 %.sink, ptr %13, align 4, !tbaa !8
  store i32 %.neg, ptr %i.a, align 4, !tbaa !8
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %i.z, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %i.z, i1 false), !tbaa !9
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call double @dlamch_(ptr noundef nonnull @.str.1) #7 ; 3 uses
  %i.ab = tail call double @dlamch_(ptr noundef nonnull @.str.2) #7
  %i.ac = fmul double %i.ab, 4.000000e+00         ; 9 uses
  %i.ad = fdiv double %i.ac, %i.aa                ; 5 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %.not350389 = icmp slt i32 %i.ae, 1
  br i1 %.not350389, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.af = getelementptr i8, ptr %12, i64 8        ; 5 uses
  %i.ag = fmul double %i.aa, 4.000000e+00         ; 3 uses
  %i.ah = sext i32 %i.f to i64                    ; 3 uses
  %i.ai = sext i32 %i.i to i64                    ; 3 uses
  %i.aj = add nuw i32 %i.ae, 1
  %wide.trip.count425 = zext i32 %i.aj to i64
  %scevgep = getelementptr i8, ptr %12, i64 -8
  %14 = shl nsw i64 %i.ah, 3                      ; 2 uses
  %i.ak = shl nsw i64 %i.g, 3                     ; 2 uses
  %i.al = shl nsw i64 %i.ah, 3
  %scevgep488 = getelementptr i8, ptr %3, i64 -8
  %i.am = or i64 %i.ai, %i.j
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = shl nsw i64 %i.ai, 3
  %scevgep492 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %scevgep493 = getelementptr i8, ptr %2, i64 -8
  %scevgep495 = getelementptr i8, ptr %12, i64 8
  %scevgep497 = getelementptr i8, ptr %12, i64 -8
  %15 = getelementptr i8, ptr %6, i64 %14
  %16 = getelementptr i8, ptr %15, i64 %i.ak
  %i.ap = getelementptr i8, ptr %16, i64 16
  %i.aq = getelementptr i8, ptr %6, i64 %14
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ak
  %i.as = getelementptr i8, ptr %8, i64 %i.an
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert475 = insertelement <4 x double> poison, double %i.ag, i64 0
  %broadcast.splat476 = shufflevector <4 x double> %broadcast.splatinsert475, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert477 = insertelement <4 x double> poison, double %i.ac, i64 0
  %broadcast.splat478 = shufflevector <4 x double> %broadcast.splatinsert477, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge387.thread
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge387.thread ] ; 3 uses
  %indvars.iv422 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next423, %._crit_edge387.thread ] ; 5 uses
  %i.au = mul i64 %i.al, %indvar                  ; 2 uses
  %scevgep485 = getelementptr i8, ptr %i.ap, i64 %i.au ; 2 uses
  %scevgep486 = getelementptr i8, ptr %i.ar, i64 %i.au
  %i.av = mul i64 %i.ao, %indvar
  %scevgep490 = getelementptr i8, ptr %i.at, i64 %i.av ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv422 ; 2 uses
  %i.ax = mul nsw i64 %indvars.iv422, %i.ah       ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.h, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = mul nsw i64 %indvars.iv422, %i.ai       ; 7 uses
  %i.bb = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.ax ; 2 uses
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
  %i.bh = load i32, ptr %0, align 4, !tbaa !8     ; 12 uses
  %i.bi = icmp eq i32 %i.bh, 1
  %i.bj = load double, ptr %i.az, align 8, !tbaa !9 ; 8 uses
  %i.bk = load double, ptr %2, align 8, !tbaa !9
  %i.bl = load double, ptr %i.bc, align 8, !tbaa !9
  %i.bm = fmul double %i.bk, %i.bl                ; 8 uses
  br i1 %i.bi, label %.thread445, label %bb.j

.thread445:                                       ; preds = %bb.i
  %i.bn = fsub double %i.bj, %i.bm
  store double %i.bn, ptr %i.af, align 8, !tbaa !9
  %i.bo = fcmp oge double %i.bj, 0.000000e+00
  %i.bp = fneg double %i.bj
  %i.bq = select i1 %i.bo, double %i.bj, double %i.bp
  %i.br = fcmp oge double %i.bm, 0.000000e+00
  %i.bs = fneg double %i.bm
  %i.bt = select i1 %i.br, double %i.bm, double %i.bs
  %i.bu = fadd double %i.bq, %i.bt
  store double %i.bu, ptr %12, align 8, !tbaa !9
  br label %.lr.ph366.preheader

bb.j:                                             ; preds = %bb.i
  %i.bv = load double, ptr %3, align 8, !tbaa !9
  %i.bw = load double, ptr %i.bd, align 8, !tbaa !9
  %i.bx = fmul double %i.bv, %i.bw                ; 4 uses
  %i.by = fsub double %i.bj, %i.bm
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = sext i32 %i.bh to i64                   ; 6 uses
  %i.cb = getelementptr [8 x i8], ptr %i.n, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store double %i.bz, ptr %i.cc, align 8, !tbaa !9
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
  store double %i.cn, ptr %12, align 8, !tbaa !9
  %.not351.not360 = icmp sgt i32 %i.bh, 2
  br i1 %.not351.not360, label %.lr.ph.preheader, label %.loopexit450

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.bh to i64   ; 3 uses
  %invariant.gep458 = getelementptr [8 x i8], ptr %i.n, i64 %i.ca ; 2 uses
  %i.co = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check527 = icmp ult i64 %i.co, 8
  br i1 %min.iters.check527, label %.lr.ph.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cp = shl nuw nsw i64 %wide.trip.count, 3     ; 6 uses
  %scevgep484 = getelementptr i8, ptr %scevgep, i64 %i.cp ; 4 uses
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.cp ; 2 uses
  %scevgep489 = getelementptr i8, ptr %scevgep488, i64 %i.cp ; 2 uses
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.cp ; 2 uses
  %scevgep494 = getelementptr i8, ptr %scevgep493, i64 %i.cp ; 2 uses
  %i.cq = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  %scevgep496 = getelementptr i8, ptr %scevgep495, i64 %i.cq ; 4 uses
  %i.cr = getelementptr i8, ptr %scevgep497, i64 %i.cq
  %scevgep498 = getelementptr i8, ptr %i.cr, i64 %i.cp ; 4 uses
  %bound0 = icmp ult ptr %i.af, %scevgep487
  %bound1 = icmp ult ptr %scevgep485, %scevgep484
  %found.conflict = and i1 %bound0, %bound1
  %bound0499 = icmp ult ptr %i.af, %scevgep489
  %bound1500 = icmp ult ptr %3, %scevgep484
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx = or i1 %found.conflict, %found.conflict501
  %bound0502 = icmp ult ptr %i.af, %scevgep491
  %bound1503 = icmp ult ptr %scevgep490, %scevgep484
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx, %found.conflict504
  %bound0506 = icmp ult ptr %i.af, %scevgep494
  %bound1507 = icmp ult ptr %scevgep492, %scevgep484
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %scevgep496, %scevgep487
  %bound1511 = icmp ult ptr %scevgep485, %scevgep498
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %scevgep496, %scevgep489
  %bound1515 = icmp ult ptr %3, %scevgep498
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %scevgep496, %scevgep491
  %bound1519 = icmp ult ptr %scevgep490, %scevgep498
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %bound0522 = icmp ult ptr %scevgep496, %scevgep494
  %bound1523 = icmp ult ptr %scevgep492, %scevgep498
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  br i1 %conflict.rdx525, label %.lr.ph.preheader543, label %vector.ph528

vector.ph528:                                     ; preds = %vector.memcheck
  %n.vec529 = and i64 %i.co, -4                   ; 3 uses
  %i.cs = or disjoint i64 %n.vec529, 2
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph528
  %index531 = phi i64 [ 0, %vector.ph528 ], [ %index.next539, %vector.body530 ] ; 5 uses
  %i.ct = or disjoint i64 %index531, 2            ; 6 uses
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ct
  %wide.load532 = load <4 x double>, ptr %i.cu, align 8, !tbaa !9, !alias.scope !11 ; 4 uses
  %i.cv = getelementptr [8 x i8], ptr %3, i64 %index531
  %wide.load533 = load <4 x double>, ptr %i.cv, align 8, !tbaa !9, !alias.scope !14
  %i.cw = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index531
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %wide.load534 = load <4 x double>, ptr %i.cx, align 8, !tbaa !9, !alias.scope !16
  %i.cy = fmul <4 x double> %wide.load533, %wide.load534 ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ct
  %wide.load535 = load <4 x double>, ptr %i.cz, align 8, !tbaa !9, !alias.scope !18
  %i.da = getelementptr [8 x i8], ptr %invariant.gep454, i64 %i.ct
  %wide.load536 = load <4 x double>, ptr %i.da, align 8, !tbaa !9, !alias.scope !16
  %i.db = fmul <4 x double> %wide.load535, %wide.load536 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ct
  %wide.load537 = load <4 x double>, ptr %i.dc, align 8, !tbaa !9, !alias.scope !14
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep456, i64 %index531
  %i.de = getelementptr i8, ptr %i.dd, i64 24
  %wide.load538 = load <4 x double>, ptr %i.de, align 8, !tbaa !9, !alias.scope !16
  %i.df = fmul <4 x double> %wide.load537, %wide.load538 ; 4 uses
  %i.dg = fsub <4 x double> %wide.load532, %i.cy
  %i.dh = fsub <4 x double> %i.dg, %i.db
  %i.di = fsub <4 x double> %i.dh, %i.df
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.ct
  store <4 x double> %i.di, ptr %i.dj, align 8, !tbaa !9, !alias.scope !20, !noalias !22
  %i.dk = fcmp oge <4 x double> %wide.load532, zeroinitializer
  %i.dl = fneg <4 x double> %wide.load532
  %i.dm = select <4 x i1> %i.dk, <4 x double> %wide.load532, <4 x double> %i.dl
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
  store <4 x double> %i.dy, ptr %i.dz, align 8, !tbaa !9, !alias.scope !23, !noalias !22
  %index.next539 = add nuw i64 %index531, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next539, %n.vec529
  br i1 %i.ea, label %middle.block540, label %vector.body530, !llvm.loop !25

middle.block540:                                  ; preds = %vector.body530
  %cmp.n541 = icmp eq i64 %i.co, %n.vec529
  br i1 %cmp.n541, label %.loopexit450, label %.lr.ph.preheader543

.lr.ph.preheader543:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block540
  %indvars.iv.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.cs, %middle.block540 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader543, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader543 ] ; 8 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eb = load double, ptr %gep, align 8, !tbaa !9 ; 4 uses
  %i.ec = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !9
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ec
  %i.ef = load double, ptr %gep453, align 8, !tbaa !9
  %i.eg = fmul double %i.ee, %i.ef                ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !9
  %gep455 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = fsub double %i.eb, %i.eg
  %gep459 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %indvars.iv
  %i.em = fcmp oge double %i.eb, 0.000000e+00
end_hunk_0
