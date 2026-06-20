begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @unpc_block(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) initializes((0, 4)) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 32, %5                           ; 18 uses
  %i.b = add i32 %6, -1
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !4      ; 3 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  switch i32 %4, label %.preheader516.a [
    i32 0, label %bb.b
    i32 31, label %.preheader517
  ]

.preheader517:                                    ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit515

.lr.ph.preheader:                                 ; preds = %.preheader517
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.f = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %2, 2
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph

.preheader516.a:                                  ; preds = %bb.a
  %.not521 = icmp slt i32 %4, 1
  %.pre = add i32 %4, 1                           ; 6 uses
  br i1 %.not521, label %._crit_edge, label %.lr.ph523.preheader

.lr.ph523.preheader:                              ; preds = %.preheader516.a
  %wide.trip.count569 = zext i32 %.pre to i64
  %load_initial638 = load i32, ptr %1, align 4    ; 2 uses
  %i.h = add nsw i64 %wide.trip.count569, -1      ; 3 uses
  %xtraiter648 = and i64 %i.h, 1
  %i.i = icmp eq i32 %.pre, 2
  br i1 %i.i, label %.lr.ph523.epil.preheader, label %.lr.ph523.preheader.new

.lr.ph523.preheader.new:                          ; preds = %.lr.ph523.preheader
  %unroll_iter651 = and i64 %i.h, -2
  br label %.lr.ph523

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %2, 2
  %.not479 = icmp eq ptr %0, %1
  %or.cond = or i1 %.not479, %i.j
  br i1 %or.cond, label %.loopexit515, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = add nsw i32 %2, -1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %.loopexit515

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.0438519 = phi i32 [ %i.d, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %.0438519
  %i.s = shl i32 %i.r, %i.a
  %i.t = ashr exact i32 %i.s, %i.a                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = add nsw i32 %i.w, %i.t
  %i.y = shl i32 %i.x, %i.a
  %i.z = ashr exact i32 %i.y, %i.a                ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit515.loopexit646.unr-lcssa, label %.lr.ph, !llvm.loop !8

.lr.ph523:                                        ; preds = %.lr.ph523, %.lr.ph523.preheader.new
  %store_forwarded639 = phi i32 [ %load_initial638, %.lr.ph523.preheader.new ], [ %i.am, %.lr.ph523 ]
  %indvars.iv566 = phi i64 [ 1, %.lr.ph523.preheader.new ], [ %indvars.iv.next567.1, %.lr.ph523 ] ; 4 uses
  %niter652 = phi i64 [ 0, %.lr.ph523.preheader.new ], [ %niter652.next.1, %.lr.ph523 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv566
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr [4 x i8], ptr %1, i64 %indvars.iv566
  %i.ae = add nsw i32 %store_forwarded639, %i.ac
  %i.af = shl i32 %i.ae, %i.a
  %i.ag = ashr exact i32 %i.af, %i.a              ; 2 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next567
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next567
  %i.ak = add nsw i32 %i.ag, %i.ai
  %i.al = shl i32 %i.ak, %i.a
  %i.am = ashr exact i32 %i.al, %i.a              ; 3 uses
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next567.1 = add nuw nsw i64 %indvars.iv566, 2 ; 2 uses
  %niter652.next.1 = add i64 %niter652, 2         ; 2 uses
  %niter652.ncmp.1 = icmp eq i64 %niter652.next.1, %unroll_iter651
  br i1 %niter652.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph523, !llvm.loop !10

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph523
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %._crit_edge, label %.lr.ph523.epil.preheader

.lr.ph523.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph523.preheader
  %store_forwarded639.epil.init = phi i32 [ %load_initial638, %.lr.ph523.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv566.epil.init = phi i64 [ 1, %.lr.ph523.preheader ], [ %indvars.iv.next567.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod650 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod650)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv566.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %indvars.iv566.epil.init
  %i.aq = add nsw i32 %store_forwarded639.epil.init, %i.ao
  %i.ar = shl i32 %i.aq, %i.a
  %i.as = ashr exact i32 %i.ar, %i.a
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph523.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader516.a
  switch i32 %4, label %.preheader514.a [
    i32 4, label %bb.d
    i32 8, label %bb.o
  ]

.preheader514.a:                                  ; preds = %._crit_edge
  %i.at = icmp slt i32 %.pre, %2
  br i1 %i.at, label %.lr.ph562, label %.loopexit515

.lr.ph562:                                        ; preds = %.preheader514.a
  %i.au = icmp sgt i32 %4, 0
  %i.av = sext i32 %4 to i64                      ; 2 uses
  %i.aw = sext i32 %.pre to i64                   ; 2 uses
  %wide.trip.count582 = zext i32 %4 to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count582, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count582
  %i.ax = icmp sgt i32 %4, 0
  %i.ay = icmp sgt i32 %4, 0
  br label %bb.ah

bb.d:                                             ; preds = %._crit_edge
  %i.az = load i16, ptr %3, align 2, !tbaa !11    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !11 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !11 ; 2 uses
  %i.bg = icmp sgt i32 %2, 5
  br i1 %i.bg, label %.lr.ph549.preheader, label %._crit_edge550

.lr.ph549.preheader:                              ; preds = %bb.d
  %i.bh = sext i32 %.pre to i64
  %wide.trip.count577.a = zext nneg i32 %2 to i64
  %scevgep = getelementptr i8, ptr %1, i64 16
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph549

.lr.ph549:                                        ; preds = %.lr.ph549.preheader, %bb.n
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph549.preheader ], [ %i.cg, %bb.n ] ; 3 uses
  %indvars.iv575.a = phi i64 [ 5, %.lr.ph549.preheader ], [ %indvars.iv.next576.a, %bb.n ] ; 4 uses
  %.0430546 = phi i16 [ %i.bf, %.lr.ph549.preheader ], [ %.1431, %bb.n ] ; 4 uses
  %.0432545 = phi i16 [ %i.bd, %.lr.ph549.preheader ], [ %.1433, %bb.n ] ; 6 uses
  %.0434544 = phi i16 [ %i.bb, %.lr.ph549.preheader ], [ %.1435, %bb.n ] ; 8 uses
  %.0436543 = phi i16 [ %i.az, %.lr.ph549.preheader ], [ %.1437, %bb.n ] ; 10 uses
  %i.bi = sub nsw i64 %indvars.iv575.a, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 13 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv575.a ; 4 uses
  %i.bm = sub i32 %store_forwarded, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 3 uses
  %i.bp = sub nsw i32 %i.bk, %i.bo                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 3 uses
  %i.bs = sub nsw i32 %i.bk, %i.br                ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 -16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 3 uses
  %i.bv = sub nsw i32 %i.bk, %i.bu                ; 3 uses
  %i.bw = sext i16 %.0436543 to i32
  %i.bx = sext i16 %.0434544 to i32
  %i.by = sext i16 %.0432545 to i32
  %i.bz = sext i16 %.0430546 to i32
  %.neg501 = mul i32 %i.bm, %i.bw
  %.neg502 = mul i32 %i.bp, %i.bx
  %.neg504 = mul i32 %i.bs, %i.by
  %.neg506 = mul i32 %i.bv, %i.bz
  %reass.add508 = add i32 %.neg502, %.neg504
  %reass.add509 = add i32 %reass.add508, %.neg506
  %reass.add512.neg = sub i32 %.neg501, %reass.add509
  %7 = add i32 %reass.add512.neg, %i.c
  %i.ca = ashr i32 %7, %6
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv575.a
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4  ; 5 uses
  %i.cd = add i32 %i.cc, %i.bk
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, %i.a
  %i.cg = ashr exact i32 %i.cf, %i.a              ; 2 uses
  store i32 %i.cg, ptr %i.bl, align 4, !tbaa !4
  %i.ch = icmp sgt i32 %i.cc, 0
  br i1 %i.ch, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph549
  %8 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bu) ; 2 uses
  %i.ci = trunc nsw i32 %8 to i16
  %i.cj = sub i16 %.0430546, %i.ci                ; 4 uses
  %i.ck = mul nsw i32 %8, %i.bv
  %i.cl = ashr i32 %i.ck, %6
  %i.cm = sub nsw i32 %i.cc, %i.cl                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.br) ; 2 uses
  %i.co = trunc nsw i32 %9 to i16
  %i.cp = sub i16 %.0432545, %i.co                ; 3 uses
  %i.cq = mul nsw i32 %9, %i.bs
  %i.cr = ashr i32 %i.cq, %6
  %i.cs = shl nsw i32 %i.cr, 1
  %i.ct = sub nsw i32 %i.cm, %i.cs                ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bo) ; 2 uses
  %i.cv = trunc nsw i32 %10 to i16
  %i.cw = sub i16 %.0434544, %i.cv                ; 2 uses
  %i.cx = mul nsw i32 %10, %i.bp
  %i.cy = ashr i32 %i.cx, %6
  %.neg478 = mul i32 %i.cy, -3
  %i.cz = add i32 %i.ct, %.neg478
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %11 = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded, i32 %i.bk)
  %12 = add i16 %11, %.0436543
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph549
  %i.db = icmp slt i32 %i.cc, 0
  br i1 %i.db, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %13 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bu) ; 2 uses
  %i.dc = trunc nsw i32 %13 to i16
  %i.dd = add i16 %.0430546, %i.dc                ; 4 uses
  %i.de = mul i32 %i.bv, %13
  %i.df = sub i32 0, %i.de
  %i.dg = ashr i32 %i.df, %6
  %i.dh = sub nsw i32 %i.cc, %i.dg                ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %14 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.br) ; 2 uses
  %i.dj = trunc nsw i32 %14 to i16
  %i.dk = add i16 %.0432545, %i.dj                ; 3 uses
  %i.dl = mul i32 %i.bs, %14
  %i.dm = sub i32 0, %i.dl
  %i.dn = ashr i32 %i.dm, %6
  %i.do = shl nsw i32 %i.dn, 1
  %i.dp = sub nsw i32 %i.dh, %i.do                ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %15 = tail call i32 @llvm.scmp.i32.i32(i32 %i.bk, i32 %i.bo) ; 2 uses
  %i.dr = trunc nsw i32 %15 to i16
  %i.ds = add i16 %.0434544, %i.dr                ; 2 uses
  %i.dt = mul i32 %i.bp, %15
  %i.du = sub i32 0, %i.dt
  %i.dv = ashr i32 %i.du, %6
  %.neg477 = mul i32 %i.dv, -3
  %i.dw = add i32 %i.dp, %.neg477
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %16 = tail call i16 @llvm.scmp.i16.i32(i32 %i.bk, i32 %store_forwarded)
  %i.dy = add i16 %16, %.0436543
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1437 = phi i16 [ %.0436543, %bb.e ], [ %.0436543, %bb.f ], [ %.0436543, %bb.g ], [ %12, %bb.h ], [ %.0436543, %bb.j ], [ %.0436543, %bb.k ], [ %.0436543, %bb.l ], [ %i.dy, %bb.m ], [ %.0436543, %bb.i ] ; 2 uses
  %.1435 = phi i16 [ %.0434544, %bb.e ], [ %.0434544, %bb.f ], [ %i.cw, %bb.g ], [ %i.cw, %bb.h ], [ %.0434544, %bb.j ], [ %.0434544, %bb.k ], [ %i.ds, %bb.l ], [ %i.ds, %bb.m ], [ %.0434544, %bb.i ] ; 2 uses
  %.1433 = phi i16 [ %.0432545, %bb.e ], [ %i.cp, %bb.f ], [ %i.cp, %bb.g ], [ %i.cp, %bb.h ], [ %.0432545, %bb.j ], [ %i.dk, %bb.k ], [ %i.dk, %bb.l ], [ %i.dk, %bb.m ], [ %.0432545, %bb.i ] ; 2 uses
  %.1431 = phi i16 [ %i.cj, %bb.e ], [ %i.cj, %bb.f ], [ %i.cj, %bb.g ], [ %i.cj, %bb.h ], [ %i.dd, %bb.j ], [ %i.dd, %bb.k ], [ %i.dd, %bb.l ], [ %i.dd, %bb.m ], [ %.0430546, %bb.i ] ; 2 uses
  %indvars.iv.next576.a = add nuw nsw i64 %indvars.iv575.a, 1 ; 2 uses
  %exitcond578.not.a = icmp eq i64 %indvars.iv.next576.a, %wide.trip.count577.a
  br i1 %exitcond578.not.a, label %._crit_edge550, label %.lr.ph549, !llvm.loop !13

._crit_edge550:                                   ; preds = %bb.n, %bb.d
  %.0436.lcssa = phi i16 [ %i.az, %bb.d ], [ %.1437, %bb.n ]
  %.0434.lcssa = phi i16 [ %i.bb, %bb.d ], [ %.1435, %bb.n ]
  %.0432.lcssa = phi i16 [ %i.bd, %bb.d ], [ %.1433, %bb.n ]
  %.0430.lcssa = phi i16 [ %i.bf, %bb.d ], [ %.1431, %bb.n ]
  store i16 %.0436.lcssa, ptr %3, align 2, !tbaa !11
  store i16 %.0434.lcssa, ptr %i.ba, align 2, !tbaa !11
  store i16 %.0432.lcssa, ptr %i.bc, align 2, !tbaa !11
  store i16 %.0430.lcssa, ptr %i.be, align 2, !tbaa !11
  br label %.loopexit515

bb.o:                                             ; preds = %._crit_edge
  %i.dz = load i16, ptr %3, align 2, !tbaa !11    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !11 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !11 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !11 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !11 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !11 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !11 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !11 ; 2 uses
  %i.eo = icmp sgt i32 %2, 9
  br i1 %i.eo, label %.lr.ph534.preheader, label %._crit_edge535

.lr.ph534.preheader:                              ; preds = %bb.o
  %i.ep = sext i32 %.pre to i64
  %wide.trip.count573 = zext nneg i32 %2 to i64
  %scevgep635 = getelementptr i8, ptr %1, i64 32
  %load_initial636 = load i32, ptr %scevgep635, align 4
  br label %.lr.ph534

.lr.ph534:                                        ; preds = %.lr.ph534.preheader, %bb.ag
  %store_forwarded637 = phi i32 [ %load_initial636, %.lr.ph534.preheader ], [ %i.ge, %bb.ag ] ; 3 uses
  %indvars.iv571 = phi i64 [ 9, %.lr.ph534.preheader ], [ %indvars.iv.next572, %bb.ag ] ; 4 uses
  %.0532 = phi i16 [ %i.dz, %.lr.ph534.preheader ], [ %.1, %bb.ag ] ; 18 uses
  %.0410531 = phi i16 [ %i.eb, %.lr.ph534.preheader ], [ %.1411, %bb.ag ] ; 16 uses
  %.0412530 = phi i16 [ %i.ed, %.lr.ph534.preheader ], [ %.1413, %bb.ag ] ; 14 uses
  %.0414529 = phi i16 [ %i.ef, %.lr.ph534.preheader ], [ %.1415, %bb.ag ] ; 12 uses
  %.0416528 = phi i16 [ %i.en, %.lr.ph534.preheader ], [ %.1417, %bb.ag ] ; 4 uses
  %.0418527 = phi i16 [ %i.el, %.lr.ph534.preheader ], [ %.1419, %bb.ag ] ; 6 uses
  %.0420526 = phi i16 [ %i.ej, %.lr.ph534.preheader ], [ %.1421, %bb.ag ] ; 8 uses
  %.0422525 = phi i16 [ %i.eh, %.lr.ph534.preheader ], [ %.1423, %bb.ag ] ; 10 uses
  %i.eq = sub nsw i64 %indvars.iv571, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4  ; 25 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv571 ; 8 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = sub i32 %store_forwarded637, %i.es
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 -12
  %i.ex = load i32, ptr %i.eu, align 4, !tbaa !4  ; 3 uses
  %i.ey = sub nsw i32 %i.es, %i.ex                ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 -16
  %i.fa = load i32, ptr %i.ew, align 4, !tbaa !4  ; 3 uses
  %i.fb = sub nsw i32 %i.es, %i.fa                ; 3 uses
  %i.fc = getelementptr inbounds i8, ptr %i.et, i64 -20
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !4  ; 3 uses
  %i.fe = sub nsw i32 %i.es, %i.fd                ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %i.et, i64 -24
  %i.fg = load i32, ptr %i.fc, align 4, !tbaa !4  ; 3 uses
  %i.fh = sub nsw i32 %i.es, %i.fg                ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.et, i64 -28
  %i.fj = load i32, ptr %i.ff, align 4, !tbaa !4  ; 3 uses
  %i.fk = sub nsw i32 %i.es, %i.fj                ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %i.et, i64 -32
  %i.fm = load i32, ptr %i.fi, align 4, !tbaa !4  ; 3 uses
  %i.fn = sub nsw i32 %i.es, %i.fm                ; 3 uses
  %i.fo = load i32, ptr %i.fl, align 4, !tbaa !4  ; 3 uses
  %i.fp = sub nsw i32 %i.es, %i.fo                ; 3 uses
  %i.fq = sext i16 %.0532 to i32
  %i.fr = sext i16 %.0410531 to i32
  %i.fs = sext i16 %.0412530 to i32
  %i.ft = sext i16 %.0414529 to i32
  %i.fu = sext i16 %.0422525 to i32
  %i.fv = sext i16 %.0420526 to i32
  %i.fw = sext i16 %.0418527 to i32
  %i.fx = sext i16 %.0416528 to i32
  %.neg480.a = mul i32 %i.ev, %i.fq
  %.neg481.a = mul i32 %i.ey, %i.fr
  %.neg483 = mul i32 %i.fb, %i.fs
  %.neg485 = mul i32 %i.fe, %i.ft
  %.neg487 = mul i32 %i.fh, %i.fu
  %.neg489 = mul i32 %i.fk, %i.fv
  %.neg491 = mul i32 %i.fn, %i.fw
  %.neg493 = mul i32 %i.fp, %i.fx
  %reass.add = add i32 %.neg481.a, %.neg483
  %reass.add495 = add i32 %reass.add, %.neg485
  %reass.add496 = add i32 %reass.add495, %.neg487
  %reass.add497 = add i32 %reass.add496, %.neg489
  %reass.add498 = add i32 %reass.add497, %.neg491
  %reass.add499 = add i32 %reass.add498, %.neg493
  %reass.add502.neg = sub i32 %.neg480.a, %reass.add499
  %17 = add i32 %reass.add502.neg, %i.c
  %i.fy = ashr i32 %17, %6
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv571
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4  ; 5 uses
  %i.gb = add i32 %i.ga, %i.es
  %i.gc = add i32 %i.gb, %i.fy
  %i.gd = shl i32 %i.gc, %i.a
  %i.ge = ashr exact i32 %i.gd, %i.a              ; 2 uses
  store i32 %i.ge, ptr %i.et, align 4, !tbaa !4
  %i.gf = icmp sgt i32 %i.ga, 0
  br i1 %i.gf, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph534
  %18 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fo) ; 2 uses
  %i.gg = trunc nsw i32 %18 to i16
  %i.gh = sub i16 %.0416528, %i.gg                ; 8 uses
  %i.gi = mul nsw i32 %18, %i.fp
  %i.gj = ashr i32 %i.gi, %6
  %i.gk = sub nsw i32 %i.ga, %i.gj                ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 1
  br i1 %i.gl, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %19 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fm) ; 2 uses
  %i.gm = trunc nsw i32 %19 to i16
  %i.gn = sub i16 %.0418527, %i.gm                ; 7 uses
  %i.go = mul nsw i32 %19, %i.fn
  %i.gp = ashr i32 %i.go, %6
  %i.gq = shl nsw i32 %i.gp, 1
  %i.gr = sub nsw i32 %i.gk, %i.gq                ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %20 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fj) ; 2 uses
  %i.gt = trunc nsw i32 %20 to i16
  %i.gu = sub i16 %.0420526, %i.gt                ; 6 uses
  %i.gv = mul nsw i32 %20, %i.fk
  %i.gw = ashr i32 %i.gv, %6
  %.neg473 = mul i32 %i.gw, -3
  %i.gx = add i32 %i.gr, %.neg473                 ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 1
  br i1 %i.gy, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %21 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fg) ; 2 uses
  %i.gz = trunc nsw i32 %21 to i16
  %i.ha = sub i16 %.0422525, %i.gz                ; 5 uses
  %i.hb = mul nsw i32 %21, %i.fh
  %i.hc = ashr i32 %i.hb, %6
  %i.hd = shl nsw i32 %i.hc, 2
  %i.he = sub nsw i32 %i.gx, %i.hd                ; 2 uses
  %i.hf = icmp slt i32 %i.he, 1
  br i1 %i.hf, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %22 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fd) ; 2 uses
  %i.hg = trunc nsw i32 %22 to i16
  %i.hh = sub i16 %.0414529, %i.hg                ; 4 uses
  %i.hi = mul nsw i32 %22, %i.fe
  %i.hj = ashr i32 %i.hi, %6
  %.neg474 = mul i32 %i.hj, -5
  %i.hk = add i32 %i.he, %.neg474                 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %23 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fa) ; 2 uses
  %i.hm = trunc nsw i32 %23 to i16
  %i.hn = sub i16 %.0412530, %i.hm                ; 3 uses
  %i.ho = mul nsw i32 %23, %i.fb
  %i.hp = ashr i32 %i.ho, %6
  %.neg475 = mul i32 %i.hp, -6
  %i.hq = add i32 %i.hk, %.neg475                 ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 1
  br i1 %i.hr, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %24 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.ex) ; 2 uses
  %i.hs = trunc nsw i32 %24 to i16
  %i.ht = sub i16 %.0410531, %i.hs                ; 2 uses
  %i.hu = mul nsw i32 %24, %i.ey
  %i.hv = ashr i32 %i.hu, %6
  %.neg476 = mul i32 %i.hv, -7
  %i.hw = add i32 %i.hq, %.neg476
  %i.hx = icmp slt i32 %i.hw, 1
  br i1 %i.hx, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %25 = tail call i16 @llvm.scmp.i16.i32(i32 %store_forwarded637, i32 %i.es)
  %26 = add i16 %25, %.0532
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph534
  %i.hy = icmp slt i32 %i.ga, 0
  br i1 %i.hy, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %27 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fo) ; 2 uses
  %i.hz = trunc nsw i32 %27 to i16
  %i.ia = add i16 %.0416528, %i.hz                ; 8 uses
  %i.ib = mul i32 %i.fp, %27
  %i.ic = sub i32 0, %i.ib
  %i.id = ashr i32 %i.ic, %6
  %i.ie = sub nsw i32 %i.ga, %i.id                ; 2 uses
  %i.if = icmp sgt i32 %i.ie, -1
  br i1 %i.if, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %28 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fm) ; 2 uses
  %i.ig = trunc nsw i32 %28 to i16
  %i.ih = add i16 %.0418527, %i.ig                ; 7 uses
  %i.ii = mul i32 %i.fn, %28
  %i.ij = sub i32 0, %i.ii
  %i.ik = ashr i32 %i.ij, %6
  %i.il = shl nsw i32 %i.ik, 1
  %i.im = sub nsw i32 %i.ie, %i.il                ; 2 uses
  %i.in = icmp sgt i32 %i.im, -1
  br i1 %i.in, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %29 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fj) ; 2 uses
  %i.io = trunc nsw i32 %29 to i16
  %i.ip = add i16 %.0420526, %i.io                ; 6 uses
  %i.iq = mul i32 %i.fk, %29
  %i.ir = sub i32 0, %i.iq
  %i.is = ashr i32 %i.ir, %6
  %.neg469 = mul i32 %i.is, -3
  %i.it = add i32 %i.im, %.neg469                 ; 2 uses
  %i.iu = icmp sgt i32 %i.it, -1
  br i1 %i.iu, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %30 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fg) ; 2 uses
  %i.iv = trunc nsw i32 %30 to i16
  %i.iw = add i16 %.0422525, %i.iv                ; 5 uses
  %i.ix = mul i32 %i.fh, %30
  %i.iy = sub i32 0, %i.ix
  %i.iz = ashr i32 %i.iy, %6
  %i.ja = shl nsw i32 %i.iz, 2
  %i.jb = sub nsw i32 %i.it, %i.ja                ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, -1
  br i1 %i.jc, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %31 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fd) ; 2 uses
  %i.jd = trunc nsw i32 %31 to i16
  %i.je = add i16 %.0414529, %i.jd                ; 4 uses
  %i.jf = mul i32 %i.fe, %31
  %i.jg = sub i32 0, %i.jf
  %i.jh = ashr i32 %i.jg, %6
  %.neg470 = mul i32 %i.jh, -5
  %i.ji = add i32 %i.jb, %.neg470                 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %32 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.fa) ; 2 uses
  %i.jk = trunc nsw i32 %32 to i16
  %i.jl = add i16 %.0412530, %i.jk                ; 3 uses
  %i.jm = mul i32 %i.fb, %32
  %i.jn = sub i32 0, %i.jm
  %i.jo = ashr i32 %i.jn, %6
  %.neg471 = mul i32 %i.jo, -6
  %i.jp = add i32 %i.ji, %.neg471                 ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  br i1 %i.jq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %33 = tail call i32 @llvm.scmp.i32.i32(i32 %i.es, i32 %i.ex) ; 2 uses
  %i.jr = trunc nsw i32 %33 to i16
  %i.js = add i16 %.0410531, %i.jr                ; 2 uses
  %i.jt = mul i32 %i.ey, %33
  %i.ju = sub i32 0, %i.jt
  %i.jv = ashr i32 %i.ju, %6
  %.neg472 = mul i32 %i.jv, -7
  %i.jw = add i32 %i.jp, %.neg472
  %i.jx = icmp sgt i32 %i.jw, -1
  br i1 %i.jx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %34 = tail call i16 @llvm.scmp.i16.i32(i32 %i.es, i32 %store_forwarded637)
  %i.jy = add i16 %34, %.0532
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.1423 = phi i16 [ %.0422525, %bb.p ], [ %.0422525, %bb.q ], [ %.0422525, %bb.r ], [ %i.ha, %bb.s ], [ %i.ha, %bb.t ], [ %i.ha, %bb.u ], [ %i.ha, %bb.v ], [ %i.ha, %bb.w ], [ %.0422525, %bb.y ], [ %.0422525, %bb.z ], [ %.0422525, %bb.aa ], [ %i.iw, %bb.ab ], [ %i.iw, %bb.ac ], [ %i.iw, %bb.ad ], [ %i.iw, %bb.ae ], [ %i.iw, %bb.af ], [ %.0422525, %bb.x ] ; 2 uses
  %.1421 = phi i16 [ %.0420526, %bb.p ], [ %.0420526, %bb.q ], [ %i.gu, %bb.r ], [ %i.gu, %bb.s ], [ %i.gu, %bb.t ], [ %i.gu, %bb.u ], [ %i.gu, %bb.v ], [ %i.gu, %bb.w ], [ %.0420526, %bb.y ], [ %.0420526, %bb.z ], [ %i.ip, %bb.aa ], [ %i.ip, %bb.ab ], [ %i.ip, %bb.ac ], [ %i.ip, %bb.ad ], [ %i.ip, %bb.ae ], [ %i.ip, %bb.af ], [ %.0420526, %bb.x ] ; 2 uses
  %.1419 = phi i16 [ %.0418527, %bb.p ], [ %i.gn, %bb.q ], [ %i.gn, %bb.r ], [ %i.gn, %bb.s ], [ %i.gn, %bb.t ], [ %i.gn, %bb.u ], [ %i.gn, %bb.v ], [ %i.gn, %bb.w ], [ %.0418527, %bb.y ], [ %i.ih, %bb.z ], [ %i.ih, %bb.aa ], [ %i.ih, %bb.ab ], [ %i.ih, %bb.ac ], [ %i.ih, %bb.ad ], [ %i.ih, %bb.ae ], [ %i.ih, %bb.af ], [ %.0418527, %bb.x ] ; 2 uses
  %.1417 = phi i16 [ %i.gh, %bb.p ], [ %i.gh, %bb.q ], [ %i.gh, %bb.r ], [ %i.gh, %bb.s ], [ %i.gh, %bb.t ], [ %i.gh, %bb.u ], [ %i.gh, %bb.v ], [ %i.gh, %bb.w ], [ %i.ia, %bb.y ], [ %i.ia, %bb.z ], [ %i.ia, %bb.aa ], [ %i.ia, %bb.ab ], [ %i.ia, %bb.ac ], [ %i.ia, %bb.ad ], [ %i.ia, %bb.ae ], [ %i.ia, %bb.af ], [ %.0416528, %bb.x ] ; 2 uses
  %.1415 = phi i16 [ %.0414529, %bb.p ], [ %.0414529, %bb.q ], [ %.0414529, %bb.r ], [ %.0414529, %bb.s ], [ %i.hh, %bb.t ], [ %i.hh, %bb.u ], [ %i.hh, %bb.v ], [ %i.hh, %bb.w ], [ %.0414529, %bb.y ], [ %.0414529, %bb.z ], [ %.0414529, %bb.aa ], [ %.0414529, %bb.ab ], [ %i.je, %bb.ac ], [ %i.je, %bb.ad ], [ %i.je, %bb.ae ], [ %i.je, %bb.af ], [ %.0414529, %bb.x ] ; 2 uses
  %.1413 = phi i16 [ %.0412530, %bb.p ], [ %.0412530, %bb.q ], [ %.0412530, %bb.r ], [ %.0412530, %bb.s ], [ %.0412530, %bb.t ], [ %i.hn, %bb.u ], [ %i.hn, %bb.v ], [ %i.hn, %bb.w ], [ %.0412530, %bb.y ], [ %.0412530, %bb.z ], [ %.0412530, %bb.aa ], [ %.0412530, %bb.ab ], [ %.0412530, %bb.ac ], [ %i.jl, %bb.ad ], [ %i.jl, %bb.ae ], [ %i.jl, %bb.af ], [ %.0412530, %bb.x ] ; 2 uses
  %.1411 = phi i16 [ %.0410531, %bb.p ], [ %.0410531, %bb.q ], [ %.0410531, %bb.r ], [ %.0410531, %bb.s ], [ %.0410531, %bb.t ], [ %.0410531, %bb.u ], [ %i.ht, %bb.v ], [ %i.ht, %bb.w ], [ %.0410531, %bb.y ], [ %.0410531, %bb.z ], [ %.0410531, %bb.aa ], [ %.0410531, %bb.ab ], [ %.0410531, %bb.ac ], [ %.0410531, %bb.ad ], [ %i.js, %bb.ae ], [ %i.js, %bb.af ], [ %.0410531, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %.0532, %bb.p ], [ %.0532, %bb.q ], [ %.0532, %bb.r ], [ %.0532, %bb.s ], [ %.0532, %bb.t ], [ %.0532, %bb.u ], [ %.0532, %bb.v ], [ %26, %bb.w ], [ %.0532, %bb.y ], [ %.0532, %bb.z ], [ %.0532, %bb.aa ], [ %.0532, %bb.ab ], [ %.0532, %bb.ac ], [ %.0532, %bb.ad ], [ %.0532, %bb.ae ], [ %i.jy, %bb.af ], [ %.0532, %bb.x ] ; 2 uses
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count573
  br i1 %exitcond574.not, label %._crit_edge535, label %.lr.ph534, !llvm.loop !14

._crit_edge535:                                   ; preds = %bb.ag, %bb.o
  %.0422.lcssa = phi i16 [ %i.eh, %bb.o ], [ %.1423, %bb.ag ]
  %.0420.lcssa = phi i16 [ %i.ej, %bb.o ], [ %.1421, %bb.ag ]
  %.0418.lcssa = phi i16 [ %i.el, %bb.o ], [ %.1419, %bb.ag ]
  %.0416.lcssa = phi i16 [ %i.en, %bb.o ], [ %.1417, %bb.ag ]
  %.0414.lcssa = phi i16 [ %i.ef, %bb.o ], [ %.1415, %bb.ag ]
  %.0412.lcssa = phi i16 [ %i.ed, %bb.o ], [ %.1413, %bb.ag ]
  %.0410.lcssa = phi i16 [ %i.eb, %bb.o ], [ %.1411, %bb.ag ]
  %.0.lcssa = phi i16 [ %i.dz, %bb.o ], [ %.1, %bb.ag ]
  store i16 %.0.lcssa, ptr %3, align 2, !tbaa !11
  store i16 %.0410.lcssa, ptr %i.ea, align 2, !tbaa !11
  store i16 %.0412.lcssa, ptr %i.ec, align 2, !tbaa !11
  store i16 %.0414.lcssa, ptr %i.ee, align 2, !tbaa !11
  store i16 %.0422.lcssa, ptr %i.eg, align 2, !tbaa !11
  store i16 %.0420.lcssa, ptr %i.ei, align 2, !tbaa !11
  store i16 %.0418.lcssa, ptr %i.ek, align 2, !tbaa !11
  store i16 %.0416.lcssa, ptr %i.em, align 2, !tbaa !11
  br label %.loopexit515

bb.ah:                                            ; preds = %.lr.ph562, %.loopexit
  %indvars.iv592 = phi i64 [ %i.aw, %.lr.ph562 ], [ %indvars.iv.next593, %.loopexit ] ; 4 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv592 ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -4 ; 4 uses
  %i.kb = sub nsw i64 %indvars.iv592, %i.aw
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4  ; 7 uses
  br i1 %i.au, label %.lr.ph558.preheader, label %._crit_edge559

.lr.ph558.preheader:                              ; preds = %bb.ah
  br i1 %min.iters.check, label %.lr.ph558.preheader643, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph558.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kq, %vector.body ]
  %vec.phi630 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kr, %vector.body ]
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %wide.load = load <4 x i16>, ptr %i.ke, align 2, !tbaa !11
  %wide.load631 = load <4 x i16>, ptr %i.kf, align 2, !tbaa !11
  %i.kg = sext <4 x i16> %wide.load to <4 x i32>
  %i.kh = sext <4 x i16> %wide.load631 to <4 x i32>
  %i.ki = sub nsw i64 0, %index
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -28
  %wide.load632 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !4
  %wide.load633 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !4
  %reverse = shufflevector <4 x i32> %wide.load632, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse634 = shufflevector <4 x i32> %wide.load633, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.km = sub nsw <4 x i32> %reverse, %broadcast.splat
  %i.kn = sub nsw <4 x i32> %reverse634, %broadcast.splat
  %i.ko = mul nsw <4 x i32> %i.km, %i.kg
  %i.kp = mul nsw <4 x i32> %i.kn, %i.kh
  %i.kq = add <4 x i32> %i.ko, %vec.phi           ; 2 uses
  %i.kr = add <4 x i32> %i.kp, %vec.phi630        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kr, %i.kq
  %i.kt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge559, label %.lr.ph558.preheader643

.lr.ph558.preheader643:                           ; preds = %.lr.ph558.preheader, %middle.block
  %indvars.iv579.ph = phi i64 [ 0, %.lr.ph558.preheader ], [ %n.vec, %middle.block ]
  %.0429555.ph = phi i32 [ 0, %.lr.ph558.preheader ], [ %i.kt, %middle.block ]
  br label %.lr.ph558

.lr.ph558:                                        ; preds = %.lr.ph558.preheader643, %.lr.ph558
  %indvars.iv579 = phi i64 [ %indvars.iv.next580, %.lr.ph558 ], [ %indvars.iv579.ph, %.lr.ph558.preheader643 ] ; 3 uses
  %.0429555 = phi i32 [ %i.lc, %.lr.ph558 ], [ %.0429555.ph, %.lr.ph558.preheader643 ]
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv579
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !11
  %i.kw = sext i16 %i.kv to i32
  %i.kx = sub nsw i64 0, %indvars.iv579
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4
  %i.la = sub nsw i32 %i.kz, %i.kd
  %i.lb = mul nsw i32 %i.la, %i.kw
  %i.lc = add nsw i32 %i.lb, %.0429555            ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %._crit_edge559, label %.lr.ph558, !llvm.loop !18

._crit_edge559:                                   ; preds = %.lr.ph558, %middle.block, %bb.ah
  %.0429.lcssa = phi i32 [ 0, %bb.ah ], [ %i.kt, %middle.block ], [ %i.lc, %.lr.ph558 ]
  %i.ld = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv592
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !4  ; 5 uses
  %i.lf = add nsw i32 %.0429.lcssa, %i.c
  %i.lg = ashr i32 %i.lf, %6
  %i.lh = add nsw i32 %i.lg, %i.kd
  %i.li = add nsw i32 %i.lh, %i.le
  %i.lj = shl i32 %i.li, %i.a
  %i.lk = ashr exact i32 %i.lj, %i.a
  store i32 %i.lk, ptr %i.jz, align 4, !tbaa !4
  %i.ll = icmp sgt i32 %i.le, 0
  br i1 %i.ll, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge559
  br i1 %i.ay, label %.lr.ph629, label %.loopexit

.preheader:                                       ; preds = %.lr.ph629
  %i.lm = icmp sgt i64 %indvars.iv588627, 1
  br i1 %i.lm, label %.lr.ph629, label %.loopexit, !llvm.loop !19

.lr.ph629:                                        ; preds = %.preheader.preheader, %.preheader
  %.0439628 = phi i32 [ %i.lz, %.preheader ], [ %i.le, %.preheader.preheader ]
  %indvars.iv588627 = phi i64 [ %indvars.iv.next589.a, %.preheader ], [ %i.av, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next589.a = add nsw i64 %indvars.iv588627, -1 ; 3 uses
  %i.ln = sub nsw i64 1, %indvars.iv588627
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !4  ; 2 uses
  %i.lq = sub nsw i32 %i.kd, %i.lp
  %35 = tail call i32 @llvm.scmp.i32.i32(i32 %i.kd, i32 %i.lp) ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next589.a ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !11
  %i.lt = trunc nsw i32 %35 to i16
  %i.lu = sub i16 %i.ls, %i.lt
  store i16 %i.lu, ptr %i.lr, align 2, !tbaa !11
  %i.lv = mul nsw i32 %35, %i.lq
  %i.lw = ashr i32 %i.lv, %6
  %i.lx = trunc i64 %indvars.iv.next589.a to i32
  %i.ly = sub i32 %i.lx, %4
  %.neg468 = mul i32 %i.lw, %i.ly
  %i.lz = add i32 %.neg468, %.0439628             ; 2 uses
  %i.ma = icmp slt i32 %i.lz, 1
  br i1 %i.ma, label %..loopexit.loopexit622_crit_edge, label %.preheader, !llvm.loop !19

bb.ai:                                            ; preds = %._crit_edge559
  %36 = icmp ne i32 %i.le, 0
  %or.cond640 = and i1 %36, %i.ax
  br i1 %or.cond640, label %.lr.ph626, label %.loopexit

.preheader512:                                    ; preds = %.lr.ph626
  %i.mb = icmp sgt i64 %indvars.iv584624, 1
  br i1 %i.mb, label %.lr.ph626, label %.loopexit, !llvm.loop !20

.lr.ph626:                                        ; preds = %bb.ai, %.preheader512
  %.1440625 = phi i32 [ %i.mo, %.preheader512 ], [ %i.le, %bb.ai ]
  %indvars.iv584624 = phi i64 [ %indvars.iv.next585, %.preheader512 ], [ %i.av, %bb.ai ] ; 3 uses
  %indvars.iv.next585 = add nsw i64 %indvars.iv584624, -1 ; 3 uses
  %i.mc = sub nsw i64 1, %indvars.iv584624
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !4  ; 2 uses
  %i.mf = sub i32 %i.me, %i.kd
  %37 = tail call i32 @llvm.scmp.i32.i32(i32 %i.kd, i32 %i.me) ; 2 uses
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next585 ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !11
  %i.mi = trunc nsw i32 %37 to i16
  %i.mj = add i16 %i.mh, %i.mi
  store i16 %i.mj, ptr %i.mg, align 2, !tbaa !11
  %i.mk = mul i32 %i.mf, %37
  %i.ml = ashr i32 %i.mk, %6
  %i.mm = trunc i64 %indvars.iv.next585 to i32
  %i.mn = sub i32 %i.mm, %4
  %.neg466 = mul i32 %i.ml, %i.mn
  %i.mo = add i32 %.neg466, %.1440625             ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, -1
  br i1 %i.mp, label %..loopexit.loopexit622_crit_edge, label %.preheader512, !llvm.loop !20

..loopexit.loopexit622_crit_edge:                 ; preds = %.lr.ph626, %.lr.ph629
  br label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.preheader512, %.preheader, %..loopexit.loopexit622_crit_edge, %.preheader.preheader, %bb.ai
  %indvars.iv.next593 = add nsw i64 %indvars.iv592, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next593 to i32
  %exitcond595.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond595.not, label %.loopexit515, label %bb.ah, !llvm.loop !21

.loopexit515.loopexit646.unr-lcssa:               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit515, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit515.loopexit646.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit515.loopexit646.unr-lcssa ] ; 2 uses
  %.0438519.epil.init = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.z, %.loopexit515.loopexit646.unr-lcssa ]
  %lcmp.mod647 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !4
  %i.ms = add nsw i32 %i.mr, %.0438519.epil.init
  %i.mt = shl i32 %i.ms, %i.a
  %i.mu = ashr exact i32 %i.mt, %i.a
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !4
  br label %.loopexit515

.loopexit515:                                     ; preds = %.lr.ph.epil.preheader, %.loopexit515.loopexit646.unr-lcssa, %.loopexit, %.preheader517, %.preheader514.a, %._crit_edge550, %._crit_edge535, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) i16 @llvm.scmp.i16.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !9, !17, !16}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
end_hunk_0
