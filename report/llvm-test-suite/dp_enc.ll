begin_hunk_0_@pc_block:bb.a

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader694
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader694 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.ag, label %.loopexit524, label %.lr.ph

.preheader525.a:                                  ; preds = %bb.a
  %.not529 = icmp slt i32 %4, 1
  %.pre = add i32 %4, 1                           ; 6 uses
  br i1 %.not529, label %._crit_edge, label %.lr.ph531.preheader

.lr.ph531.preheader:                              ; preds = %.preheader525.a
  %wide.trip.count577 = zext i32 %.pre to i64     ; 5 uses
  %i.ah = add nsw i64 %wide.trip.count577, -1     ; 2 uses
  %min.iters.check652 = icmp ult i32 %.pre, 9
  br i1 %min.iters.check652, label %.lr.ph531.preheader693, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.lr.ph531.preheader
  %scevgep645 = getelementptr i8, ptr %1, i64 4
  %i.ai = shl nuw nsw i64 %wide.trip.count577, 2  ; 2 uses
  %scevgep646 = getelementptr i8, ptr %1, i64 %i.ai
  %scevgep647 = getelementptr i8, ptr %0, i64 %i.ai
  %bound0648 = icmp ult ptr %scevgep645, %scevgep647
  %bound1649 = icmp ult ptr %0, %scevgep646
  %found.conflict650 = and i1 %bound0648, %bound1649
  br i1 %found.conflict650, label %.lr.ph531.preheader693, label %vector.ph653

vector.ph653:                                     ; preds = %vector.memcheck644
  %n.vec655 = and i64 %i.ah, -8                   ; 3 uses
  %i.aj = or disjoint i64 %n.vec655, 1
  %broadcast.splatinsert656 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat657 = shufflevector <4 x i32> %broadcast.splatinsert656, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph653
  %index659 = phi i64 [ 0, %vector.ph653 ], [ %index.next664, %vector.body658 ] ; 2 uses
  %i.ak = or disjoint i64 %index659, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load660 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4, !alias.scope !25
  %wide.load661 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !25
  %i.an = getelementptr i8, ptr %i.al, i64 -4
  %i.ao = getelementptr i8, ptr %i.al, i64 12
  %wide.load662 = load <4 x i32>, ptr %i.an, align 4, !tbaa !4, !alias.scope !25
  %wide.load663 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4, !alias.scope !25
  %i.ap = sub nsw <4 x i32> %wide.load660, %wide.load662
  %i.aq = sub nsw <4 x i32> %wide.load661, %wide.load663
  %i.ar = shl <4 x i32> %i.ap, %broadcast.splat657
  %i.as = shl <4 x i32> %i.aq, %broadcast.splat657
  %i.at = ashr exact <4 x i32> %i.ar, %broadcast.splat657
  %i.au = ashr exact <4 x i32> %i.as, %broadcast.splat657
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !4, !alias.scope !28, !noalias !25
  store <4 x i32> %i.au, ptr %i.aw, align 4, !tbaa !4, !alias.scope !28, !noalias !25
  %index.next664 = add nuw i64 %index659, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next664, %n.vec655
  br i1 %i.ax, label %middle.block665, label %vector.body658, !llvm.loop !30

middle.block665:                                  ; preds = %vector.body658
  %cmp.n666 = icmp eq i64 %i.ah, %n.vec655
  br i1 %cmp.n666, label %._crit_edge, label %.lr.ph531.preheader693

.lr.ph531.preheader693:                           ; preds = %vector.memcheck644, %.lr.ph531.preheader, %middle.block665
  %indvars.iv574.ph = phi i64 [ 1, %vector.memcheck644 ], [ 1, %.lr.ph531.preheader ], [ %i.aj, %middle.block665 ] ; 5 uses
  %i.ay = and i64 %wide.trip.count577, 1
  %lcmp.mod697.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod697.not.not, label %.lr.ph531.prol, label %.lr.ph531.prol.loopexit

.lr.ph531.prol:                                   ; preds = %.lr.ph531.preheader693
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv574.ph ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sub nsw i32 %i.ba, %i.bc
  %i.be = shl i32 %i.bd, %i.a
  %i.bf = ashr exact i32 %i.be, %i.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv574.ph
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  %indvars.iv.next575.prol = add nuw nsw i64 %indvars.iv574.ph, 1
  br label %.lr.ph531.prol.loopexit

.lr.ph531.prol.loopexit:                          ; preds = %.lr.ph531.prol, %.lr.ph531.preheader693
  %indvars.iv574.unr = phi i64 [ %indvars.iv574.ph, %.lr.ph531.preheader693 ], [ %indvars.iv.next575.prol, %.lr.ph531.prol ]
  %i.bh = add nsw i64 %wide.trip.count577, -1
  %i.bi = icmp eq i64 %indvars.iv574.ph, %i.bh
  br i1 %i.bi, label %._crit_edge, label %.lr.ph531

bb.b:                                             ; preds = %bb.a
  %i.bj = icmp slt i32 %2, 2
  %.not479 = icmp eq ptr %0, %1
  %or.cond = or i1 %.not479, %i.bj
  br i1 %or.cond, label %.loopexit524, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = add nsw i32 %2, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.bl, i64 %i.bo, i1 false)
  br label %.loopexit524

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = sub nsw i32 %i.bq, %i.bs
  %i.bu = shl i32 %i.bt, %i.a
  %i.bv = ashr exact i32 %i.bu, %i.a
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.by, %i.ca
  %i.cc = shl i32 %i.cb, %i.a
  %i.cd = ashr exact i32 %i.cc, %i.a
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit524, label %.lr.ph, !llvm.loop !31

.lr.ph531:                                        ; preds = %.lr.ph531.prol.loopexit, %.lr.ph531
  %indvars.iv574 = phi i64 [ %indvars.iv.next575.1, %.lr.ph531 ], [ %indvars.iv574.unr, %.lr.ph531.prol.loopexit ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv574 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = getelementptr i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = sub nsw i32 %i.cg, %i.ci
  %i.ck = shl i32 %i.cj, %i.a
  %i.cl = ashr exact i32 %i.ck, %i.a
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv574
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next575 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = sub nsw i32 %i.co, %i.cq
  %i.cs = shl i32 %i.cr, %i.a
  %i.ct = ashr exact i32 %i.cs, %i.a
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next575
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next575.1 = add nuw nsw i64 %indvars.iv574, 2 ; 2 uses
  %exitcond578.not.1 = icmp eq i64 %indvars.iv.next575.1, %wide.trip.count577
  br i1 %exitcond578.not.1, label %._crit_edge, label %.lr.ph531, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph531.prol.loopexit, %.lr.ph531, %middle.block665, %.preheader525.a
  switch i32 %4, label %.preheader523.a [
    i32 4, label %bb.d
    i32 8, label %bb.o
  ]

.preheader523.a:                                  ; preds = %._crit_edge
  %i.cv = icmp slt i32 %.pre, %2
  br i1 %i.cv, label %.lr.ph570, label %.loopexit524

.lr.ph570:                                        ; preds = %.preheader523.a
  %i.cw = icmp sgt i32 %4, 0
  %i.cx = sext i32 %4 to i64                      ; 2 uses
  %i.cy = sext i32 %.pre to i64                   ; 2 uses
  %wide.trip.count590 = zext i32 %4 to i64        ; 3 uses
  %min.iters.check669 = icmp ult i32 %4, 8
  %n.vec672 = and i64 %wide.trip.count590, 2147483640 ; 3 uses
  %cmp.n685 = icmp eq i64 %n.vec672, %wide.trip.count590
  %i.cz = icmp sgt i32 %4, 0
  %i.da = icmp sgt i32 %4, 0
  br label %bb.ah

bb.d:                                             ; preds = %._crit_edge
  %i.db = load i16, ptr %3, align 2, !tbaa !8     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !8  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !8  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !8  ; 2 uses
  %i.di = icmp sgt i32 %2, 5
  br i1 %i.di, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.d
  %i.dj = sext i32 %.pre to i64
  %wide.trip.count585.a = zext nneg i32 %2 to i64
  br label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.preheader, %bb.n
  %indvars.iv583.a = phi i64 [ 5, %.lr.ph557.preheader ], [ %indvars.iv.next584.a, %bb.n ] ; 4 uses
  %.0555 = phi i16 [ %i.db, %.lr.ph557.preheader ], [ %.1, %bb.n ] ; 10 uses
  %.0409554 = phi i16 [ %i.dd, %.lr.ph557.preheader ], [ %.1410, %bb.n ] ; 8 uses
  %.0413553 = phi i16 [ %i.df, %.lr.ph557.preheader ], [ %.1414, %bb.n ] ; 6 uses
  %.0417552 = phi i16 [ %i.dh, %.lr.ph557.preheader ], [ %.1418, %bb.n ] ; 4 uses
  %i.dk = sub nsw i64 %indvars.iv583.a, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 13 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv583.a ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4  ; 3 uses
  %i.dq = sub i32 %i.dp, %i.dm
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.dt = sub nsw i32 %i.dm, %i.ds                ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.dn, i64 -12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 3 uses
  %i.dw = sub nsw i32 %i.dm, %i.dv                ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dn, i64 -16
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 3 uses
  %i.dz = sub nsw i32 %i.dm, %i.dy                ; 3 uses
  %i.ea = sext i16 %.0555 to i32
  %i.eb = sext i16 %.0409554 to i32
  %i.ec = sext i16 %.0413553 to i32
  %i.ed = sext i16 %.0417552 to i32
  %.neg504 = mul i32 %i.dq, %i.ea
  %.neg505 = mul i32 %i.dt, %i.eb
  %.neg507 = mul i32 %i.dw, %i.ec
  %.neg509 = mul i32 %i.dz, %i.ed
  %reass.add514 = add i32 %.neg505, %.neg507
  %reass.add515 = add i32 %reass.add514, %.neg509
  %reass.add518.neg = sub i32 %.neg504, %reass.add515
  %7 = add i32 %reass.add518.neg, %i.c
  %i.ee = ashr i32 %7, %6
  %i.ef = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.eg = add i32 %i.dm, %i.ee
  %i.eh = sub i32 %i.ef, %i.eg
  %i.ei = shl i32 %i.eh, %i.a
  %i.ej = ashr exact i32 %i.ei, %i.a              ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv583.a
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !4
  %i.el = icmp sgt i32 %i.ej, 0
  br i1 %i.el, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph557
  %8 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dy) ; 2 uses
  %i.em = trunc nsw i32 %8 to i16
  %i.en = sub i16 %.0417552, %i.em                ; 4 uses
  %i.eo = mul nsw i32 %8, %i.dz
  %i.ep = ashr i32 %i.eo, %6
  %i.eq = sub nsw i32 %i.ej, %i.ep                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dv) ; 2 uses
  %i.es = trunc nsw i32 %9 to i16
  %i.et = sub i16 %.0413553, %i.es                ; 3 uses
  %i.eu = mul nsw i32 %9, %i.dw
  %i.ev = ashr i32 %i.eu, %6
  %i.ew = shl nsw i32 %i.ev, 1
  %i.ex = sub nsw i32 %i.eq, %i.ew                ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 1
  br i1 %i.ey, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.ds) ; 2 uses
  %i.ez = trunc nsw i32 %10 to i16
  %i.fa = sub i16 %.0409554, %i.ez                ; 2 uses
  %i.fb = mul nsw i32 %10, %i.dt
  %i.fc = ashr i32 %i.fb, %6
  %.neg478 = mul i32 %i.fc, -3
  %i.fd = add i32 %i.ex, %.neg478
  %i.fe = icmp slt i32 %i.fd, 1
  br i1 %i.fe, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %11 = tail call i16 @llvm.scmp.i16.i32(i32 %i.dp, i32 %i.dm)
  %12 = add i16 %11, %.0555
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph557
  %i.ff = icmp slt i32 %i.ej, 0
  br i1 %i.ff, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %13 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dy) ; 2 uses
  %i.fg = trunc nsw i32 %13 to i16
  %i.fh = add i16 %.0417552, %i.fg                ; 4 uses
  %i.fi = mul i32 %i.dz, %13
  %i.fj = sub i32 0, %i.fi
  %i.fk = ashr i32 %i.fj, %6
  %i.fl = sub nsw i32 %i.ej, %i.fk                ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %14 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dv) ; 2 uses
  %i.fn = trunc nsw i32 %14 to i16
  %i.fo = add i16 %.0413553, %i.fn                ; 3 uses
  %i.fp = mul i32 %i.dw, %14
  %i.fq = sub i32 0, %i.fp
  %i.fr = ashr i32 %i.fq, %6
  %i.fs = shl nsw i32 %i.fr, 1
  %i.ft = sub nsw i32 %i.fl, %i.fs                ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %15 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.ds) ; 2 uses
  %i.fv = trunc nsw i32 %15 to i16
  %i.fw = add i16 %.0409554, %i.fv                ; 2 uses
  %i.fx = mul i32 %i.dt, %15
  %i.fy = sub i32 0, %i.fx
  %i.fz = ashr i32 %i.fy, %6
  %.neg477 = mul i32 %i.fz, -3
  %i.ga = add i32 %i.ft, %.neg477
  %i.gb = icmp sgt i32 %i.ga, -1
  br i1 %i.gb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %16 = tail call i16 @llvm.scmp.i16.i32(i32 %i.dm, i32 %i.dp)
  %i.gc = add i16 %16, %.0555
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1418 = phi i16 [ %i.en, %bb.e ], [ %i.en, %bb.f ], [ %i.en, %bb.g ], [ %i.en, %bb.h ], [ %i.fh, %bb.j ], [ %i.fh, %bb.k ], [ %i.fh, %bb.l ], [ %i.fh, %bb.m ], [ %.0417552, %bb.i ] ; 2 uses
  %.1414 = phi i16 [ %.0413553, %bb.e ], [ %i.et, %bb.f ], [ %i.et, %bb.g ], [ %i.et, %bb.h ], [ %.0413553, %bb.j ], [ %i.fo, %bb.k ], [ %i.fo, %bb.l ], [ %i.fo, %bb.m ], [ %.0413553, %bb.i ] ; 2 uses
  %.1410 = phi i16 [ %.0409554, %bb.e ], [ %.0409554, %bb.f ], [ %i.fa, %bb.g ], [ %i.fa, %bb.h ], [ %.0409554, %bb.j ], [ %.0409554, %bb.k ], [ %i.fw, %bb.l ], [ %i.fw, %bb.m ], [ %.0409554, %bb.i ] ; 2 uses
  %.1 = phi i16 [ %.0555, %bb.e ], [ %.0555, %bb.f ], [ %.0555, %bb.g ], [ %12, %bb.h ], [ %.0555, %bb.j ], [ %.0555, %bb.k ], [ %.0555, %bb.l ], [ %i.gc, %bb.m ], [ %.0555, %bb.i ] ; 2 uses
  %indvars.iv.next584.a = add nuw nsw i64 %indvars.iv583.a, 1 ; 2 uses
  %exitcond586.not.a = icmp eq i64 %indvars.iv.next584.a, %wide.trip.count585.a
  br i1 %exitcond586.not.a, label %._crit_edge558, label %.lr.ph557, !llvm.loop !33

._crit_edge558:                                   ; preds = %bb.n, %bb.d
  %.0417.lcssa = phi i16 [ %i.dh, %bb.d ], [ %.1418, %bb.n ]
  %.0413.lcssa = phi i16 [ %i.df, %bb.d ], [ %.1414, %bb.n ]
  %.0409.lcssa = phi i16 [ %i.dd, %bb.d ], [ %.1410, %bb.n ]
  %.0.lcssa = phi i16 [ %i.db, %bb.d ], [ %.1, %bb.n ]
  store i16 %.0.lcssa, ptr %3, align 2, !tbaa !8
  store i16 %.0409.lcssa, ptr %i.dc, align 2, !tbaa !8
  store i16 %.0413.lcssa, ptr %i.de, align 2, !tbaa !8
  store i16 %.0417.lcssa, ptr %i.dg, align 2, !tbaa !8
  br label %.loopexit524

bb.o:                                             ; preds = %._crit_edge
  %i.gd = load i16, ptr %3, align 2, !tbaa !8     ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !8  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !8  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !8  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !8  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !8  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !8  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !8  ; 2 uses
  %i.gs = icmp sgt i32 %2, 9
  br i1 %i.gs, label %.lr.ph542.preheader, label %._crit_edge543

.lr.ph542.preheader:                              ; preds = %bb.o
  %i.gt = sext i32 %.pre to i64
  %wide.trip.count581 = zext nneg i32 %2 to i64
  br label %.lr.ph542

.lr.ph542:                                        ; preds = %.lr.ph542.preheader, %bb.ag
  %indvars.iv579 = phi i64 [ 9, %.lr.ph542.preheader ], [ %indvars.iv.next580, %bb.ag ] ; 4 uses
  %.2540 = phi i16 [ %i.gd, %.lr.ph542.preheader ], [ %.3, %bb.ag ] ; 18 uses
  %.2411539 = phi i16 [ %i.gf, %.lr.ph542.preheader ], [ %.3412, %bb.ag ] ; 16 uses
  %.2415538 = phi i16 [ %i.gh, %.lr.ph542.preheader ], [ %.3416, %bb.ag ] ; 14 uses
  %.2419537 = phi i16 [ %i.gj, %.lr.ph542.preheader ], [ %.3420, %bb.ag ] ; 12 uses
  %.0421536 = phi i16 [ %i.gr, %.lr.ph542.preheader ], [ %.1422, %bb.ag ] ; 4 uses
  %.0423535 = phi i16 [ %i.gp, %.lr.ph542.preheader ], [ %.1424, %bb.ag ] ; 6 uses
  %.0425534 = phi i16 [ %i.gn, %.lr.ph542.preheader ], [ %.1426, %bb.ag ] ; 8 uses
  %.0427533 = phi i16 [ %i.gl, %.lr.ph542.preheader ], [ %.1428, %bb.ag ] ; 10 uses
  %i.gu = sub nsw i64 %indvars.iv579, %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4  ; 25 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv579 ; 9 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -4
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !4  ; 3 uses
  %i.hb = sub i32 %i.ha, %i.gw
  %i.hc = getelementptr inbounds i8, ptr %i.gx, i64 -12
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !4  ; 3 uses
  %i.he = sub nsw i32 %i.gw, %i.hd                ; 3 uses
  %i.hf = getelementptr inbounds i8, ptr %i.gx, i64 -16
  %i.hg = load i32, ptr %i.hc, align 4, !tbaa !4  ; 3 uses
  %i.hh = sub nsw i32 %i.gw, %i.hg                ; 3 uses
  %i.hi = getelementptr inbounds i8, ptr %i.gx, i64 -20
  %i.hj = load i32, ptr %i.hf, align 4, !tbaa !4  ; 3 uses
  %i.hk = sub nsw i32 %i.gw, %i.hj                ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %i.gx, i64 -24
  %i.hm = load i32, ptr %i.hi, align 4, !tbaa !4  ; 3 uses
  %i.hn = sub nsw i32 %i.gw, %i.hm                ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gx, i64 -28
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !4  ; 3 uses
  %i.hq = sub nsw i32 %i.gw, %i.hp                ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %i.gx, i64 -32
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !4  ; 3 uses
  %i.ht = sub nsw i32 %i.gw, %i.hs                ; 3 uses
  %i.hu = load i32, ptr %i.hr, align 4, !tbaa !4  ; 3 uses
  %i.hv = sub nsw i32 %i.gw, %i.hu                ; 3 uses
  %i.hw = sext i16 %.2540 to i32
  %i.hx = sext i16 %.2411539 to i32
  %i.hy = sext i16 %.2415538 to i32
  %i.hz = sext i16 %.2419537 to i32
  %i.ia = sext i16 %.0427533 to i32
  %i.ib = sext i16 %.0425534 to i32
  %i.ic = sext i16 %.0423535 to i32
  %i.id = sext i16 %.0421536 to i32
  %.neg480.a = mul i32 %i.hb, %i.hw
  %.neg481.a = mul i32 %i.he, %i.hx
  %.neg483 = mul i32 %i.hh, %i.hy
  %.neg485 = mul i32 %i.hk, %i.hz
  %.neg487 = mul i32 %i.hn, %i.ia
  %.neg489 = mul i32 %i.hq, %i.ib
  %.neg491 = mul i32 %i.ht, %i.ic
  %.neg493 = mul i32 %i.hv, %i.id
  %reass.add = add i32 %.neg481.a, %.neg483
  %reass.add498 = add i32 %reass.add, %.neg485
  %reass.add499 = add i32 %reass.add498, %.neg487
  %reass.add500 = add i32 %reass.add499, %.neg489
  %reass.add501 = add i32 %reass.add500, %.neg491
  %reass.add502 = add i32 %reass.add501, %.neg493
  %reass.add505.neg = sub i32 %.neg480.a, %reass.add502
  %17 = add i32 %reass.add505.neg, %i.c
  %i.ie = ashr i32 %17, %6
  %i.if = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.ig = add i32 %i.gw, %i.ie
  %i.ih = sub i32 %i.if, %i.ig
  %i.ii = shl i32 %i.ih, %i.a
  %i.ij = ashr exact i32 %i.ii, %i.a              ; 5 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv579
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !4
  %i.il = icmp sgt i32 %i.ij, 0
  br i1 %i.il, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph542
  %18 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hu) ; 2 uses
  %i.im = trunc nsw i32 %18 to i16
  %i.in = sub i16 %.0421536, %i.im                ; 8 uses
  %i.io = mul nsw i32 %18, %i.hv
  %i.ip = ashr i32 %i.io, %6
  %i.iq = sub nsw i32 %i.ij, %i.ip                ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %19 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hs) ; 2 uses
  %i.is = trunc nsw i32 %19 to i16
  %i.it = sub i16 %.0423535, %i.is                ; 7 uses
  %i.iu = mul nsw i32 %19, %i.ht
  %i.iv = ashr i32 %i.iu, %6
  %i.iw = shl nsw i32 %i.iv, 1
  %i.ix = sub nsw i32 %i.iq, %i.iw                ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 1
  br i1 %i.iy, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %20 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hp) ; 2 uses
  %i.iz = trunc nsw i32 %20 to i16
  %i.ja = sub i16 %.0425534, %i.iz                ; 6 uses
  %i.jb = mul nsw i32 %20, %i.hq
  %i.jc = ashr i32 %i.jb, %6
  %.neg473 = mul i32 %i.jc, -3
  %i.jd = add i32 %i.ix, %.neg473                 ; 2 uses
  %i.je = icmp slt i32 %i.jd, 1
  br i1 %i.je, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %21 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hm) ; 2 uses
  %i.jf = trunc nsw i32 %21 to i16
  %i.jg = sub i16 %.0427533, %i.jf                ; 5 uses
  %i.jh = mul nsw i32 %21, %i.hn
  %i.ji = ashr i32 %i.jh, %6
  %i.jj = shl nsw i32 %i.ji, 2
  %i.jk = sub nsw i32 %i.jd, %i.jj                ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 1
  br i1 %i.jl, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %22 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hj) ; 2 uses
  %i.jm = trunc nsw i32 %22 to i16
  %i.jn = sub i16 %.2419537, %i.jm                ; 4 uses
  %i.jo = mul nsw i32 %22, %i.hk
  %i.jp = ashr i32 %i.jo, %6
  %.neg474 = mul i32 %i.jp, -5
  %i.jq = add i32 %i.jk, %.neg474                 ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 1
  br i1 %i.jr, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %23 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hg) ; 2 uses
  %i.js = trunc nsw i32 %23 to i16
  %i.jt = sub i16 %.2415538, %i.js                ; 3 uses
  %i.ju = mul nsw i32 %23, %i.hh
  %i.jv = ashr i32 %i.ju, %6
  %.neg475 = mul i32 %i.jv, -6
  %i.jw = add i32 %i.jq, %.neg475                 ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 1
  br i1 %i.jx, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %24 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hd) ; 2 uses
  %i.jy = trunc nsw i32 %24 to i16
  %i.jz = sub i16 %.2411539, %i.jy                ; 2 uses
  %i.ka = mul nsw i32 %24, %i.he
  %i.kb = ashr i32 %i.ka, %6
  %.neg476 = mul i32 %i.kb, -7
  %i.kc = add i32 %i.jw, %.neg476
  %i.kd = icmp slt i32 %i.kc, 1
  br i1 %i.kd, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %25 = tail call i16 @llvm.scmp.i16.i32(i32 %i.ha, i32 %i.gw)
  %26 = add i16 %25, %.2540
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph542
  %i.ke = icmp slt i32 %i.ij, 0
  br i1 %i.ke, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %27 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hu) ; 2 uses
  %i.kf = trunc nsw i32 %27 to i16
  %i.kg = add i16 %.0421536, %i.kf                ; 8 uses
  %i.kh = mul i32 %i.hv, %27
  %i.ki = sub i32 0, %i.kh
  %i.kj = ashr i32 %i.ki, %6
  %i.kk = sub nsw i32 %i.ij, %i.kj                ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, -1
  br i1 %i.kl, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %28 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hs) ; 2 uses
  %i.km = trunc nsw i32 %28 to i16
  %i.kn = add i16 %.0423535, %i.km                ; 7 uses
  %i.ko = mul i32 %i.ht, %28
  %i.kp = sub i32 0, %i.ko
  %i.kq = ashr i32 %i.kp, %6
  %i.kr = shl nsw i32 %i.kq, 1
  %i.ks = sub nsw i32 %i.kk, %i.kr                ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, -1
  br i1 %i.kt, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %29 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hp) ; 2 uses
  %i.ku = trunc nsw i32 %29 to i16
  %i.kv = add i16 %.0425534, %i.ku                ; 6 uses
  %i.kw = mul i32 %i.hq, %29
  %i.kx = sub i32 0, %i.kw
  %i.ky = ashr i32 %i.kx, %6
  %.neg469 = mul i32 %i.ky, -3
  %i.kz = add i32 %i.ks, %.neg469                 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, -1
  br i1 %i.la, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %30 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hm) ; 2 uses
  %i.lb = trunc nsw i32 %30 to i16
  %i.lc = add i16 %.0427533, %i.lb                ; 5 uses
  %i.ld = mul i32 %i.hn, %30
  %i.le = sub i32 0, %i.ld
  %i.lf = ashr i32 %i.le, %6
  %i.lg = shl nsw i32 %i.lf, 2
  %i.lh = sub nsw i32 %i.kz, %i.lg                ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %31 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hj) ; 2 uses
  %i.lj = trunc nsw i32 %31 to i16
  %i.lk = add i16 %.2419537, %i.lj                ; 4 uses
  %i.ll = mul i32 %i.hk, %31
  %i.lm = sub i32 0, %i.ll
  %i.ln = ashr i32 %i.lm, %6
  %.neg470 = mul i32 %i.ln, -5
  %i.lo = add i32 %i.lh, %.neg470                 ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, -1
  br i1 %i.lp, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %32 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hg) ; 2 uses
  %i.lq = trunc nsw i32 %32 to i16
  %i.lr = add i16 %.2415538, %i.lq                ; 3 uses
  %i.ls = mul i32 %i.hh, %32
  %i.lt = sub i32 0, %i.ls
  %i.lu = ashr i32 %i.lt, %6
  %.neg471 = mul i32 %i.lu, -6
  %i.lv = add i32 %i.lo, %.neg471                 ; 2 uses
  %i.lw = icmp sgt i32 %i.lv, -1
  br i1 %i.lw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %33 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gw, i32 %i.hd) ; 2 uses
  %i.lx = trunc nsw i32 %33 to i16
  %i.ly = add i16 %.2411539, %i.lx                ; 2 uses
  %i.lz = mul i32 %i.he, %33
  %i.ma = sub i32 0, %i.lz
  %i.mb = ashr i32 %i.ma, %6
  %.neg472 = mul i32 %i.mb, -7
  %i.mc = add i32 %i.lv, %.neg472
  %i.md = icmp sgt i32 %i.mc, -1
  br i1 %i.md, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %34 = tail call i16 @llvm.scmp.i16.i32(i32 %i.gw, i32 %i.ha)
  %i.me = add i16 %34, %.2540
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.1428 = phi i16 [ %.0427533, %bb.p ], [ %.0427533, %bb.q ], [ %.0427533, %bb.r ], [ %i.jg, %bb.s ], [ %i.jg, %bb.t ], [ %i.jg, %bb.u ], [ %i.jg, %bb.v ], [ %i.jg, %bb.w ], [ %.0427533, %bb.y ], [ %.0427533, %bb.z ], [ %.0427533, %bb.aa ], [ %i.lc, %bb.ab ], [ %i.lc, %bb.ac ], [ %i.lc, %bb.ad ], [ %i.lc, %bb.ae ], [ %i.lc, %bb.af ], [ %.0427533, %bb.x ] ; 2 uses
  %.1426 = phi i16 [ %.0425534, %bb.p ], [ %.0425534, %bb.q ], [ %i.ja, %bb.r ], [ %i.ja, %bb.s ], [ %i.ja, %bb.t ], [ %i.ja, %bb.u ], [ %i.ja, %bb.v ], [ %i.ja, %bb.w ], [ %.0425534, %bb.y ], [ %.0425534, %bb.z ], [ %i.kv, %bb.aa ], [ %i.kv, %bb.ab ], [ %i.kv, %bb.ac ], [ %i.kv, %bb.ad ], [ %i.kv, %bb.ae ], [ %i.kv, %bb.af ], [ %.0425534, %bb.x ] ; 2 uses
  %.1424 = phi i16 [ %.0423535, %bb.p ], [ %i.it, %bb.q ], [ %i.it, %bb.r ], [ %i.it, %bb.s ], [ %i.it, %bb.t ], [ %i.it, %bb.u ], [ %i.it, %bb.v ], [ %i.it, %bb.w ], [ %.0423535, %bb.y ], [ %i.kn, %bb.z ], [ %i.kn, %bb.aa ], [ %i.kn, %bb.ab ], [ %i.kn, %bb.ac ], [ %i.kn, %bb.ad ], [ %i.kn, %bb.ae ], [ %i.kn, %bb.af ], [ %.0423535, %bb.x ] ; 2 uses
  %.1422 = phi i16 [ %i.in, %bb.p ], [ %i.in, %bb.q ], [ %i.in, %bb.r ], [ %i.in, %bb.s ], [ %i.in, %bb.t ], [ %i.in, %bb.u ], [ %i.in, %bb.v ], [ %i.in, %bb.w ], [ %i.kg, %bb.y ], [ %i.kg, %bb.z ], [ %i.kg, %bb.aa ], [ %i.kg, %bb.ab ], [ %i.kg, %bb.ac ], [ %i.kg, %bb.ad ], [ %i.kg, %bb.ae ], [ %i.kg, %bb.af ], [ %.0421536, %bb.x ] ; 2 uses
  %.3420 = phi i16 [ %.2419537, %bb.p ], [ %.2419537, %bb.q ], [ %.2419537, %bb.r ], [ %.2419537, %bb.s ], [ %i.jn, %bb.t ], [ %i.jn, %bb.u ], [ %i.jn, %bb.v ], [ %i.jn, %bb.w ], [ %.2419537, %bb.y ], [ %.2419537, %bb.z ], [ %.2419537, %bb.aa ], [ %.2419537, %bb.ab ], [ %i.lk, %bb.ac ], [ %i.lk, %bb.ad ], [ %i.lk, %bb.ae ], [ %i.lk, %bb.af ], [ %.2419537, %bb.x ] ; 2 uses
  %.3416 = phi i16 [ %.2415538, %bb.p ], [ %.2415538, %bb.q ], [ %.2415538, %bb.r ], [ %.2415538, %bb.s ], [ %.2415538, %bb.t ], [ %i.jt, %bb.u ], [ %i.jt, %bb.v ], [ %i.jt, %bb.w ], [ %.2415538, %bb.y ], [ %.2415538, %bb.z ], [ %.2415538, %bb.aa ], [ %.2415538, %bb.ab ], [ %.2415538, %bb.ac ], [ %i.lr, %bb.ad ], [ %i.lr, %bb.ae ], [ %i.lr, %bb.af ], [ %.2415538, %bb.x ] ; 2 uses
  %.3412 = phi i16 [ %.2411539, %bb.p ], [ %.2411539, %bb.q ], [ %.2411539, %bb.r ], [ %.2411539, %bb.s ], [ %.2411539, %bb.t ], [ %.2411539, %bb.u ], [ %i.jz, %bb.v ], [ %i.jz, %bb.w ], [ %.2411539, %bb.y ], [ %.2411539, %bb.z ], [ %.2411539, %bb.aa ], [ %.2411539, %bb.ab ], [ %.2411539, %bb.ac ], [ %.2411539, %bb.ad ], [ %i.ly, %bb.ae ], [ %i.ly, %bb.af ], [ %.2411539, %bb.x ] ; 2 uses
  %.3 = phi i16 [ %.2540, %bb.p ], [ %.2540, %bb.q ], [ %.2540, %bb.r ], [ %.2540, %bb.s ], [ %.2540, %bb.t ], [ %.2540, %bb.u ], [ %.2540, %bb.v ], [ %26, %bb.w ], [ %.2540, %bb.y ], [ %.2540, %bb.z ], [ %.2540, %bb.aa ], [ %.2540, %bb.ab ], [ %.2540, %bb.ac ], [ %.2540, %bb.ad ], [ %.2540, %bb.ae ], [ %i.me, %bb.af ], [ %.2540, %bb.x ] ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond582.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count581
  br i1 %exitcond582.not, label %._crit_edge543, label %.lr.ph542, !llvm.loop !34

._crit_edge543:                                   ; preds = %bb.ag, %bb.o
  %.0427.lcssa = phi i16 [ %i.gl, %bb.o ], [ %.1428, %bb.ag ]
  %.0425.lcssa = phi i16 [ %i.gn, %bb.o ], [ %.1426, %bb.ag ]
  %.0423.lcssa = phi i16 [ %i.gp, %bb.o ], [ %.1424, %bb.ag ]
  %.0421.lcssa = phi i16 [ %i.gr, %bb.o ], [ %.1422, %bb.ag ]
  %.2419.lcssa = phi i16 [ %i.gj, %bb.o ], [ %.3420, %bb.ag ]
  %.2415.lcssa = phi i16 [ %i.gh, %bb.o ], [ %.3416, %bb.ag ]
  %.2411.lcssa = phi i16 [ %i.gf, %bb.o ], [ %.3412, %bb.ag ]
  %.2.lcssa = phi i16 [ %i.gd, %bb.o ], [ %.3, %bb.ag ]
  store i16 %.2.lcssa, ptr %3, align 2, !tbaa !8
  store i16 %.2411.lcssa, ptr %i.ge, align 2, !tbaa !8
  store i16 %.2415.lcssa, ptr %i.gg, align 2, !tbaa !8
  store i16 %.2419.lcssa, ptr %i.gi, align 2, !tbaa !8
  store i16 %.0427.lcssa, ptr %i.gk, align 2, !tbaa !8
  store i16 %.0425.lcssa, ptr %i.gm, align 2, !tbaa !8
  store i16 %.0423.lcssa, ptr %i.go, align 2, !tbaa !8
  store i16 %.0421.lcssa, ptr %i.gq, align 2, !tbaa !8
  br label %.loopexit524

bb.ah:                                            ; preds = %.lr.ph570, %.loopexit
  %indvars.iv600 = phi i64 [ %i.cy, %.lr.ph570 ], [ %indvars.iv.next601, %.loopexit ] ; 4 uses
  %i.mf = sub nsw i64 %indvars.iv600, %i.cy
  %i.mg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !4  ; 7 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv600 ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -4 ; 4 uses
  br i1 %i.cw, label %.lr.ph566.preheader, label %._crit_edge567

.lr.ph566.preheader:                              ; preds = %bb.ah
  br i1 %min.iters.check669, label %.lr.ph566.preheader690, label %vector.ph670

vector.ph670:                                     ; preds = %.lr.ph566.preheader
  %broadcast.splatinsert673 = insertelement <4 x i32> poison, i32 %i.mh, i64 0
  %broadcast.splat674 = shufflevector <4 x i32> %broadcast.splatinsert673, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body675

vector.body675:                                   ; preds = %vector.body675, %vector.ph670
  %index676 = phi i64 [ 0, %vector.ph670 ], [ %index.next683, %vector.body675 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph670 ], [ %i.mw, %vector.body675 ]
  %vec.phi677 = phi <4 x i32> [ zeroinitializer, %vector.ph670 ], [ %i.mx, %vector.body675 ]
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index676 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %wide.load678 = load <4 x i16>, ptr %i.mk, align 2, !tbaa !8
  %wide.load679 = load <4 x i16>, ptr %i.ml, align 2, !tbaa !8
  %i.mm = sext <4 x i16> %wide.load678 to <4 x i32>
  %i.mn = sext <4 x i16> %wide.load679 to <4 x i32>
  %i.mo = sub nsw i64 0, %index676
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -12
  %i.mr = getelementptr inbounds i8, ptr %i.mp, i64 -28
  %wide.load680 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !4
  %wide.load681 = load <4 x i32>, ptr %i.mr, align 4, !tbaa !4
  %reverse = shufflevector <4 x i32> %wide.load680, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse682 = shufflevector <4 x i32> %wide.load681, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ms = sub <4 x i32> %reverse, %broadcast.splat674
  %i.mt = sub <4 x i32> %reverse682, %broadcast.splat674
  %i.mu = mul <4 x i32> %i.ms, %i.mm
  %i.mv = mul <4 x i32> %i.mt, %i.mn
  %i.mw = add <4 x i32> %i.mu, %vec.phi           ; 2 uses
  %i.mx = add <4 x i32> %i.mv, %vec.phi677        ; 2 uses
  %index.next683 = add nuw i64 %index676, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next683, %n.vec672
  br i1 %i.my, label %middle.block684, label %vector.body675, !llvm.loop !35

middle.block684:                                  ; preds = %vector.body675
  %bin.rdx = add <4 x i32> %i.mx, %i.mw
  %i.mz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n685, label %._crit_edge567, label %.lr.ph566.preheader690

.lr.ph566.preheader690:                           ; preds = %.lr.ph566.preheader, %middle.block684
  %indvars.iv587.ph = phi i64 [ 0, %.lr.ph566.preheader ], [ %n.vec672, %middle.block684 ]
  %.0431564.ph = phi i32 [ 0, %.lr.ph566.preheader ], [ %i.mz, %middle.block684 ]
  br label %.lr.ph566

.lr.ph566:                                        ; preds = %.lr.ph566.preheader690, %.lr.ph566
  %indvars.iv587 = phi i64 [ %indvars.iv.next588, %.lr.ph566 ], [ %indvars.iv587.ph, %.lr.ph566.preheader690 ] ; 3 uses
  %.0431564 = phi i32 [ %i.ng, %.lr.ph566 ], [ %.0431564.ph, %.lr.ph566.preheader690 ]
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv587
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !8
  %i.nc = sext i16 %i.nb to i32
  %i.nd = sub nsw i64 0, %indvars.iv587
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !4
  %.neg467 = sub i32 %i.nf, %i.mh
  %.neg468 = mul i32 %.neg467, %i.nc
  %i.ng = add i32 %.neg468, %.0431564             ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge567, label %.lr.ph566, !llvm.loop !36

._crit_edge567:                                   ; preds = %.lr.ph566, %middle.block684, %bb.ah
  %.0431.lcssa = phi i32 [ 0, %bb.ah ], [ %i.mz, %middle.block684 ], [ %i.ng, %.lr.ph566 ]
  %i.nh = load i32, ptr %i.mi, align 4, !tbaa !4
  %i.ni = add nsw i32 %.0431.lcssa, %i.c
  %i.nj = ashr i32 %i.ni, %6
  %i.nk = add i32 %i.nj, %i.mh
  %i.nl = sub i32 %i.nh, %i.nk
  %i.nm = shl i32 %i.nl, %i.a                     ; 2 uses
  %i.nn = ashr exact i32 %i.nm, %i.a              ; 4 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv600
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !4
  %i.np = icmp sgt i32 %i.nn, 0
  br i1 %i.np, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge567
  br i1 %i.da, label %.lr.ph638, label %.loopexit

.preheader:                                       ; preds = %.lr.ph638
  %i.nq = icmp sgt i64 %indvars.iv596636, 1
  br i1 %i.nq, label %.lr.ph638, label %.loopexit, !llvm.loop !37

.lr.ph638:                                        ; preds = %.preheader.preheader, %.preheader
  %.0429637 = phi i32 [ %i.od, %.preheader ], [ %i.nn, %.preheader.preheader ]
  %indvars.iv596636 = phi i64 [ %indvars.iv.next597.a, %.preheader ], [ %i.cx, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next597.a = add nsw i64 %indvars.iv596636, -1 ; 3 uses
  %i.nr = sub nsw i64 1, %indvars.iv596636
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4  ; 2 uses
  %i.nu = sub nsw i32 %i.mh, %i.nt
  %35 = tail call i32 @llvm.scmp.i32.i32(i32 %i.mh, i32 %i.nt) ; 2 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next597.a ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !8
  %i.nx = trunc nsw i32 %35 to i16
  %i.ny = sub i16 %i.nw, %i.nx
  store i16 %i.ny, ptr %i.nv, align 2, !tbaa !8
  %i.nz = mul nsw i32 %35, %i.nu
  %i.oa = ashr i32 %i.nz, %6
  %i.ob = trunc i64 %indvars.iv.next597.a to i32
  %i.oc = sub i32 %i.ob, %4
  %.neg466 = mul i32 %i.oa, %i.oc
  %i.od = add i32 %.neg466, %.0429637             ; 2 uses
  %i.oe = icmp slt i32 %i.od, 1
  br i1 %i.oe, label %..loopexit.loopexit631_crit_edge, label %.preheader, !llvm.loop !37

bb.ai:                                            ; preds = %._crit_edge567
  %36 = icmp ne i32 %i.nm, 0
  %or.cond687 = and i1 %36, %i.cz
  br i1 %or.cond687, label %.lr.ph635, label %.loopexit

.preheader521:                                    ; preds = %.lr.ph635
  %i.of = icmp sgt i64 %indvars.iv592633, 1
  br i1 %i.of, label %.lr.ph635, label %.loopexit, !llvm.loop !38

.lr.ph635:                                        ; preds = %bb.ai, %.preheader521
  %.1430634 = phi i32 [ %i.os, %.preheader521 ], [ %i.nn, %bb.ai ]
  %indvars.iv592633 = phi i64 [ %indvars.iv.next593, %.preheader521 ], [ %i.cx, %bb.ai ] ; 3 uses
  %indvars.iv.next593 = add nsw i64 %indvars.iv592633, -1 ; 3 uses
  %i.og = sub nsw i64 1, %indvars.iv592633
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !4  ; 2 uses
  %i.oj = sub i32 %i.oi, %i.mh
  %37 = tail call i32 @llvm.scmp.i32.i32(i32 %i.mh, i32 %i.oi) ; 2 uses
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next593 ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !8
  %i.om = trunc nsw i32 %37 to i16
  %i.on = add i16 %i.ol, %i.om
  store i16 %i.on, ptr %i.ok, align 2, !tbaa !8
  %i.oo = mul i32 %i.oj, %37
  %i.op = ashr i32 %i.oo, %6
  %i.oq = trunc i64 %indvars.iv.next593 to i32
  %i.or = sub i32 %i.oq, %4
  %.neg464 = mul i32 %i.op, %i.or
  %i.os = add i32 %.neg464, %.1430634             ; 2 uses
  %i.ot = icmp sgt i32 %i.os, -1
  br i1 %i.ot, label %..loopexit.loopexit631_crit_edge, label %.preheader521, !llvm.loop !38

..loopexit.loopexit631_crit_edge:                 ; preds = %.lr.ph635, %.lr.ph638
  br label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %.preheader521, %.preheader, %..loopexit.loopexit631_crit_edge, %.preheader.preheader, %bb.ai
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next601 to i32
  %exitcond603.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond603.not, label %.loopexit524, label %bb.ah, !llvm.loop !39

.loopexit524:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit, %middle.block, %.preheader526, %.preheader523.a, %._crit_edge558, %._crit_edge543, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) i16 @llvm.scmp.i16.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11, !12}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !11, !12, !13}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11, !12, !13}
!36 = distinct !{!36, !11, !13, !12}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
end_hunk_0
