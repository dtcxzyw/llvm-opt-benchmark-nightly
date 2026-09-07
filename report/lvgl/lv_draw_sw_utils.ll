Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_utils?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lv_draw_sw_rotate:bb.a
  %i.cw = getelementptr i8, ptr %gep.i94.epil, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = getelementptr i8, ptr %gep37.i.epil, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !8
  %i.cz = getelementptr i8, ptr %gep.i94.epil, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = getelementptr i8, ptr %gep37.i.epil, i64 2
  store i8 %i.da, ptr %i.db, align 1, !tbaa !8
  br label %._crit_edge.i97

._crit_edge.i97:                                  ; preds = %._crit_edge.i97.unr-lcssa, %.epil.preheader601
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i98 = icmp eq i64 %indvars.iv.next31.i, %i.cm
  br i1 %exitcond34.not.i98, label %rotate90_l8.exit, label %.preheader.i, !llvm.loop !47

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i95.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter606 = phi i64 [ %niter606.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.dc = mul nsw i64 %indvars.iv.i93, %i.cl
  %i.dd = mul nuw nsw i64 %indvars.iv.i93, 3
  %gep.i94 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.dc ; 3 uses
  %i.de = load i8, ptr %gep.i94, align 1, !tbaa !8
  %gep37.i = getelementptr i8, ptr %invariant.gep36.i, i64 %i.dd ; 3 uses
  store i8 %i.de, ptr %gep37.i, align 1, !tbaa !8
  %i.df = getelementptr i8, ptr %gep.i94, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8
  %i.dh = getelementptr i8, ptr %gep37.i, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !8
  %i.di = getelementptr i8, ptr %gep.i94, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = getelementptr i8, ptr %gep37.i, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !8
  %indvars.iv.next.i95 = or disjoint i64 %indvars.iv.i93, 1 ; 2 uses
  %i.dl = mul nsw i64 %indvars.iv.next.i95, %i.cl
  %i.dm = mul nuw nsw i64 %indvars.iv.next.i95, 3
  %gep.i94.1 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.dl ; 3 uses
  %i.dn = load i8, ptr %gep.i94.1, align 1, !tbaa !8
  %gep37.i.1 = getelementptr i8, ptr %invariant.gep36.i, i64 %i.dm ; 3 uses
  store i8 %i.dn, ptr %gep37.i.1, align 1, !tbaa !8
  %i.do = getelementptr i8, ptr %gep.i94.1, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = getelementptr i8, ptr %gep37.i.1, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !8
  %i.dr = getelementptr i8, ptr %gep.i94.1, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = getelementptr i8, ptr %gep37.i.1, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !8
  %indvars.iv.next.i95.1 = add nuw nsw i64 %indvars.iv.i93, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge.i97.unr-lcssa, label %.preheader.i.new, !llvm.loop !48

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.du = icmp sgt i32 %2, 0
  %i.dv = icmp sgt i32 %3, 0
  %or.cond.i99 = and i1 %i.du, %i.dv
  br i1 %or.cond.i99, label %.lr.ph.preheader.i100, label %rotate90_l8.exit

.lr.ph.preheader.i100:                            ; preds = %bb.f
  %i.dw = ashr i32 %5, 2                          ; 2 uses
  %i.dx = ashr i32 %4, 2                          ; 2 uses
  %i.dy = sext i32 %i.dx to i64                   ; 5 uses
  %i.dz = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ea = sext i32 %i.dw to i64                   ; 2 uses
  %wide.trip.count.i102 = zext nneg i32 %3 to i64 ; 7 uses
  %i.eb = add nuw nsw i64 %i.dz, 4611686018427387903
  %i.ec = mul i64 %i.eb, %i.ea
  %i.ed = shl i64 %i.ec, 2
  %scevgep469 = getelementptr i8, ptr %1, i64 %i.ed
  %i.ee = shl nuw nsw i64 %wide.trip.count.i102, 2
  %scevgep470 = getelementptr i8, ptr %1, i64 %i.ee
  %i.ef = add nuw nsw i64 %i.dz, %wide.trip.count.i102
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = getelementptr i8, ptr %0, i64 %i.eg
  %scevgep471 = getelementptr i8, ptr %i.eh, i64 -4
  %min.iters.check477 = icmp ugt i32 %3, 7
  %ident.check467.not = icmp eq i32 %i.dx, 1
  %or.cond568 = and i1 %min.iters.check477, %ident.check467.not
  %bound0472 = icmp ult ptr %scevgep469, %scevgep471
  %bound1473 = icmp ult ptr %0, %scevgep470
  %found.conflict474 = and i1 %bound0472, %bound1473
  %stride.check475 = icmp sgt i32 %i.dw, 0
  %i.ei = or i1 %found.conflict474, %stride.check475
  %n.vec479 = and i64 %wide.trip.count.i102, 2147483640 ; 4 uses
  %cmp.n486 = icmp eq i64 %n.vec479, %wide.trip.count.i102
  %xtraiter599 = and i64 %wide.trip.count.i102, 3 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %._crit_edge.i112, %.lr.ph.preheader.i100
  %indvars.iv27.i104 = phi i64 [ 0, %.lr.ph.preheader.i100 ], [ %indvars.iv.next28.i113, %._crit_edge.i112 ] ; 5 uses
  %i.ej = xor i64 %indvars.iv27.i104, -1
  %i.ek = add nsw i64 %i.ej, %i.dz
  %i.el = mul nsw i64 %i.ek, %i.ea
  %invariant.gep.i105 = getelementptr [4 x i8], ptr %1, i64 %i.el ; 6 uses
  %or.cond568.not = xor i1 %or.cond568, true
  %brmerge620 = select i1 %or.cond568.not, i1 true, i1 %i.ei
  br i1 %brmerge620, label %scalar.ph476.preheader, label %vector.ph478

vector.ph478:                                     ; preds = %.lr.ph.i103
  %i.em = add nuw i64 %indvars.iv27.i104, %n.vec479
  %i.en = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i104
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next484, %vector.body480 ] ; 3 uses
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %index481 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load482 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !9, !alias.scope !107
  %wide.load483 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !9, !alias.scope !107
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %index481 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load482, ptr %i.eq, align 4, !tbaa !9, !alias.scope !108, !noalias !107
  store <4 x i32> %wide.load483, ptr %i.er, align 4, !tbaa !9, !alias.scope !108, !noalias !107
  %index.next484 = add nuw i64 %index481, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.es, label %middle.block485, label %vector.body480, !llvm.loop !52

middle.block485:                                  ; preds = %vector.body480
  br i1 %cmp.n486, label %._crit_edge.i112, label %scalar.ph476.preheader

scalar.ph476.preheader:                           ; preds = %.lr.ph.i103, %middle.block485
  %indvars.iv29.i106.ph = phi i64 [ %i.em, %middle.block485 ], [ %indvars.iv27.i104, %.lr.ph.i103 ] ; 2 uses
  %indvars.iv.i107.ph = phi i64 [ %n.vec479, %middle.block485 ], [ 0, %.lr.ph.i103 ] ; 3 uses
  br i1 %lcmp.mod600.not, label %scalar.ph476.prol.loopexit, label %scalar.ph476.prol

scalar.ph476.prol:                                ; preds = %scalar.ph476.preheader, %scalar.ph476.prol
  %indvars.iv29.i106.prol = phi i64 [ %indvars.iv.next30.i109.prol, %scalar.ph476.prol ], [ %indvars.iv29.i106.ph, %scalar.ph476.preheader ] ; 2 uses
  %indvars.iv.i107.prol = phi i64 [ %indvars.iv.next.i110.prol, %scalar.ph476.prol ], [ %indvars.iv.i107.ph, %scalar.ph476.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph476.prol ], [ 0, %scalar.ph476.preheader ]
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106.prol
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9
  %gep.i108.prol = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107.prol
  store i32 %i.eu, ptr %gep.i108.prol, align 4, !tbaa !9
  %indvars.iv.next30.i109.prol = add nsw i64 %indvars.iv29.i106.prol, %i.dy ; 2 uses
  %indvars.iv.next.i110.prol = add nuw nsw i64 %indvars.iv.i107.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %scalar.ph476.prol.loopexit, label %scalar.ph476.prol, !llvm.loop !53

scalar.ph476.prol.loopexit:                       ; preds = %scalar.ph476.prol, %scalar.ph476.preheader
  %indvars.iv29.i106.unr = phi i64 [ %indvars.iv29.i106.ph, %scalar.ph476.preheader ], [ %indvars.iv.next30.i109.prol, %scalar.ph476.prol ]
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %scalar.ph476.preheader ], [ %indvars.iv.next.i110.prol, %scalar.ph476.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i107.ph, %wide.trip.count.i102
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %._crit_edge.i112, label %scalar.ph476

._crit_edge.i112:                                 ; preds = %scalar.ph476.prol.loopexit, %scalar.ph476, %middle.block485
  %indvars.iv.next28.i113 = add nuw nsw i64 %indvars.iv27.i104, 1 ; 2 uses
  %exitcond36.not.i114 = icmp eq i64 %indvars.iv.next28.i113, %i.dz
  br i1 %exitcond36.not.i114, label %rotate90_l8.exit, label %.lr.ph.i103, !llvm.loop !54

scalar.ph476:                                     ; preds = %scalar.ph476.prol.loopexit, %scalar.ph476
  %indvars.iv29.i106 = phi i64 [ %indvars.iv.next30.i109.3, %scalar.ph476 ], [ %indvars.iv29.i106.unr, %scalar.ph476.prol.loopexit ] ; 2 uses
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i110.3, %scalar.ph476 ], [ %indvars.iv.i107.unr, %scalar.ph476.prol.loopexit ] ; 5 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !9
  %gep.i108 = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  store i32 %i.ey, ptr %gep.i108, align 4, !tbaa !9
  %indvars.iv.next30.i109 = add nsw i64 %indvars.iv29.i106, %i.dy ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !9
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.1 = getelementptr i8, ptr %i.fb, i64 4
  store i32 %i.fa, ptr %gep.i108.1, align 4, !tbaa !9
  %indvars.iv.next30.i109.1 = add nsw i64 %indvars.iv.next30.i109, %i.dy ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.fe = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.2 = getelementptr i8, ptr %i.fe, i64 8
  store i32 %i.fd, ptr %gep.i108.2, align 4, !tbaa !9
  %indvars.iv.next30.i109.2 = add nsw i64 %indvars.iv.next30.i109.1, %i.dy ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.2
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !9
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.3 = getelementptr i8, ptr %i.fh, i64 12
  store i32 %i.fg, ptr %gep.i108.3, align 4, !tbaa !9
  %indvars.iv.next30.i109.3 = add nsw i64 %indvars.iv.next30.i109.2, %i.dy
  %indvars.iv.next.i110.3 = add nuw nsw i64 %indvars.iv.i107, 4 ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %indvars.iv.next.i110.3, %wide.trip.count.i102
  br i1 %exitcond.not.i111.3, label %._crit_edge.i112, label %scalar.ph476, !llvm.loop !55

bb.g:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.h
    i32 18, label %bb.i
    i32 15, label %bb.j
    i32 17, label %bb.k
    i32 16, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.fi = icmp sgt i32 %3, 0
  %i.fj = icmp sgt i32 %2, 0
  %or.cond.i115 = and i1 %i.fj, %i.fi
  br i1 %or.cond.i115, label %.lr.ph.preheader.i116, label %rotate90_l8.exit

.lr.ph.preheader.i116:                            ; preds = %bb.h
  %i.fk = sext i32 %4 to i64                      ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i117 = zext nneg i32 %2 to i64 ; 11 uses
  %i.fl = add nsw i64 %wide.trip.count.i117, -1   ; 2 uses
  %i.fm = add nsw i32 %3, -1
  %i.fn = mul i32 %5, %i.fm
  %i.fo = add i32 %2, %i.fn
  %i.fp = add nsw i64 %wide.trip.count29.i, -1
  %i.fq = mul nsw i64 %i.fp, %i.fk
  %i.fr = getelementptr i8, ptr %0, i64 %i.fq
  %scevgep427 = getelementptr i8, ptr %i.fr, i64 %wide.trip.count.i117
  %i.fs = sub nsw i64 1, %wide.trip.count.i117
  %scevgep428 = getelementptr i8, ptr %1, i64 %i.fs
  %i.ft = add nsw i32 %3, -1
  %i.fu = mul i32 %5, %i.ft
  %i.fv = add i32 %2, %i.fu
  %scevgep430 = getelementptr i8, ptr %1, i64 1
  %min.iters.check437 = icmp ult i32 %2, 8
  %i.fw = trunc nsw i64 %i.fl to i32
  %i.fx = icmp ugt i64 %i.fl, 4294967295
  %stride.check435 = icmp slt i32 %4, 0
  %min.iters.check439 = icmp ult i32 %2, 32
  %i.fy = and i64 %wide.trip.count.i117, 24
  %n.vec441 = and i64 %wide.trip.count.i117, 2147483616 ; 4 uses
  %cmp.n450 = icmp eq i64 %n.vec441, %wide.trip.count.i117
  %min.epilog.iters.check455 = icmp eq i64 %i.fy, 0
  %n.vec457 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  %cmp.n464 = icmp eq i64 %n.vec457, %wide.trip.count.i117
  %xtraiter597 = and i64 %wide.trip.count.i117, 1
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  %8 = add nsw i64 %wide.trip.count.i117, -1
  br label %iter.check452

iter.check452:                                    ; preds = %._crit_edge.i124, %.lr.ph.preheader.i116
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next27.i, %._crit_edge.i124 ] ; 5 uses
  %i.fz = trunc i64 %indvars.iv26.i to i32
  %i.ga = mul i32 %5, %i.fz
  %i.gb = xor i32 %i.ga, -1
  %i.gc = add i32 %i.fv, %i.gb
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %scevgep429 = getelementptr i8, ptr %scevgep428, i64 %i.gd
  %scevgep431 = getelementptr i8, ptr %scevgep430, i64 %i.gd
  %i.ge = mul nsw i64 %indvars.iv26.i, %i.fk
  %invariant.gep.i119 = getelementptr i8, ptr %0, i64 %i.ge ; 5 uses
  %i.gf = trunc i64 %indvars.iv26.i to i32
  %i.gg = xor i32 %i.gf, -1
  %i.gh = add i32 %3, %i.gg
  %i.gi = mul i32 %i.gh, %5
  %i.gj = add i32 %i.gi, %2                       ; 5 uses
  br i1 %min.iters.check437, label %vec.epilog.scalar.ph453.preheader, label %vector.scevcheck425

vector.scevcheck425:                              ; preds = %iter.check452
  %i.gk = trunc i64 %indvars.iv26.i to i32
  %i.gl = mul i32 %5, %i.gk
  %i.gm = xor i32 %i.gl, -1
  %i.gn = add i32 %i.fo, %i.gm                    ; 2 uses
  %i.go = sub i32 %i.gn, %i.fw
  %i.gp = icmp sgt i32 %i.go, %i.gn
  %i.gq = or i1 %i.gp, %i.fx
  br i1 %i.gq, label %vec.epilog.scalar.ph453.preheader, label %vector.memcheck426

vector.memcheck426:                               ; preds = %vector.scevcheck425
  %bound0432 = icmp ult ptr %0, %scevgep431
  %bound1433 = icmp ult ptr %scevgep429, %scevgep427
  %found.conflict434 = and i1 %bound0432, %bound1433
  %i.gr = or i1 %found.conflict434, %stride.check435
  br i1 %i.gr, label %vec.epilog.scalar.ph453.preheader, label %vector.main.loop.iter.check438

vector.main.loop.iter.check438:                   ; preds = %vector.memcheck426
  br i1 %min.iters.check439, label %vec.epilog.ph456, label %vector.body442

vector.body442:                                   ; preds = %vector.main.loop.iter.check438, %vector.body442
  %index443 = phi i64 [ %index.next448, %vector.body442 ], [ 0, %vector.main.loop.iter.check438 ] ; 3 uses
  %i.gs = getelementptr i8, ptr %invariant.gep.i119, i64 %index443 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %wide.load444 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %wide.load445 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %i.gu = trunc i64 %index443 to i32
  %i.gv = xor i32 %i.gu, -1
  %i.gw = add i32 %i.gj, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %1, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -15
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -31
  %reverse446 = shufflevector <16 x i8> %wide.load444, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse447 = shufflevector <16 x i8> %wide.load445, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse446, ptr %i.gz, align 1, !tbaa !8, !alias.scope !110
  store <16 x i8> %reverse447, ptr %i.ha, align 1, !tbaa !8, !alias.scope !110
  %index.next448 = add nuw i64 %index443, 32      ; 2 uses
  %i.hb = icmp eq i64 %index.next448, %n.vec441
  br i1 %i.hb, label %middle.block449, label %vector.body442, !llvm.loop !59

middle.block449:                                  ; preds = %vector.body442
  br i1 %cmp.n450, label %._crit_edge.i124, label %vec.epilog.iter.check454

vec.epilog.iter.check454:                         ; preds = %middle.block449
  br i1 %min.epilog.iters.check455, label %vec.epilog.scalar.ph453.preheader, label %vec.epilog.ph456, !prof !111

vec.epilog.ph456:                                 ; preds = %vector.main.loop.iter.check438, %vec.epilog.iter.check454
  %vec.epilog.resume.val451 = phi i64 [ %n.vec441, %vec.epilog.iter.check454 ], [ 0, %vector.main.loop.iter.check438 ]
  br label %vec.epilog.vector.body458

vec.epilog.vector.body458:                        ; preds = %vec.epilog.vector.body458, %vec.epilog.ph456
  %index459 = phi i64 [ %vec.epilog.resume.val451, %vec.epilog.ph456 ], [ %index.next462, %vec.epilog.vector.body458 ] ; 3 uses
  %i.hc = getelementptr i8, ptr %invariant.gep.i119, i64 %index459
  %wide.load460 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %i.hd = trunc i64 %index459 to i32
  %i.he = xor i32 %i.hd, -1
  %i.hf = add i32 %i.gj, %i.he
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %1, i64 %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -7
  %reverse461 = shufflevector <8 x i8> %wide.load460, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse461, ptr %i.hi, align 1, !tbaa !8, !alias.scope !110
  %index.next462 = add nuw i64 %index459, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.hj, label %vec.epilog.middle.block463, label %vec.epilog.vector.body458, !llvm.loop !60

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body458
  br i1 %cmp.n464, label %._crit_edge.i124, label %vec.epilog.scalar.ph453.preheader

vec.epilog.scalar.ph453.preheader:                ; preds = %vector.memcheck426, %vector.scevcheck425, %iter.check452, %vec.epilog.iter.check454, %vec.epilog.middle.block463
  %indvars.iv.i120.ph = phi i64 [ 0, %iter.check452 ], [ 0, %vector.scevcheck425 ], [ 0, %vector.memcheck426 ], [ %n.vec441, %vec.epilog.iter.check454 ], [ %n.vec457, %vec.epilog.middle.block463 ] ; 5 uses
  br i1 %lcmp.mod598.not, label %vec.epilog.scalar.ph453.prol.loopexit, label %vec.epilog.scalar.ph453.prol

vec.epilog.scalar.ph453.prol:                     ; preds = %vec.epilog.scalar.ph453.preheader
  %gep.i121.prol = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120.ph
  %i.hk = load i8, ptr %gep.i121.prol, align 1, !tbaa !8
  %i.hl = trunc nuw nsw i64 %indvars.iv.i120.ph to i32
  %i.hm = xor i32 %i.hl, -1
  %i.hn = add i32 %i.gj, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %1, i64 %i.ho
  store i8 %i.hk, ptr %i.hp, align 1, !tbaa !8
  %indvars.iv.next.i122.prol = or disjoint i64 %indvars.iv.i120.ph, 1
  br label %vec.epilog.scalar.ph453.prol.loopexit

vec.epilog.scalar.ph453.prol.loopexit:            ; preds = %vec.epilog.scalar.ph453.prol, %vec.epilog.scalar.ph453.preheader
  %indvars.iv.i120.unr = phi i64 [ %indvars.iv.i120.ph, %vec.epilog.scalar.ph453.preheader ], [ %indvars.iv.next.i122.prol, %vec.epilog.scalar.ph453.prol ]
  %i.hq = icmp eq i64 %indvars.iv.i120.ph, %8
  br i1 %i.hq, label %._crit_edge.i124, label %vec.epilog.scalar.ph453

._crit_edge.i124:                                 ; preds = %vec.epilog.scalar.ph453.prol.loopexit, %vec.epilog.scalar.ph453, %vec.epilog.middle.block463, %middle.block449
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %rotate90_l8.exit, label %iter.check452, !llvm.loop !61

vec.epilog.scalar.ph453:                          ; preds = %vec.epilog.scalar.ph453.prol.loopexit, %vec.epilog.scalar.ph453
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i122.1, %vec.epilog.scalar.ph453 ], [ %indvars.iv.i120.unr, %vec.epilog.scalar.ph453.prol.loopexit ] ; 4 uses
  %gep.i121 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120
  %i.hr = load i8, ptr %gep.i121, align 1, !tbaa !8
  %i.hs = trunc i64 %indvars.iv.i120 to i32
  %i.ht = xor i32 %i.hs, -1
  %i.hu = add i32 %i.gj, %i.ht
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %1, i64 %i.hv
  store i8 %i.hr, ptr %i.hw, align 1, !tbaa !8
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %gep.i121.1 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.next.i122
  %i.hx = load i8, ptr %gep.i121.1, align 1, !tbaa !8
  %i.hy = trunc i64 %indvars.iv.next.i122 to i32
  %i.hz = xor i32 %i.hy, -1
  %i.ia = add i32 %i.gj, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %1, i64 %i.ib
  store i8 %i.hx, ptr %i.ic, align 1, !tbaa !8
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i120, 2 ; 2 uses
  %exitcond.not.i123.1 = icmp eq i64 %indvars.iv.next.i122.1, %wide.trip.count.i117
  br i1 %exitcond.not.i123.1, label %._crit_edge.i124, label %vec.epilog.scalar.ph453, !llvm.loop !62

bb.i:                                             ; preds = %bb.g
  %i.id = icmp sgt i32 %3, 0
  %i.ie = icmp sgt i32 %2, 0
  %or.cond.i125 = and i1 %i.ie, %i.id
  br i1 %or.cond.i125, label %.lr.ph.preheader.i126, label %rotate90_l8.exit

.lr.ph.preheader.i126:                            ; preds = %bb.i
  %i.if = ashr i32 %5, 1                          ; 5 uses
  %i.ig = ashr i32 %4, 1                          ; 2 uses
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %wide.trip.count31.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i127 = zext nneg i32 %2 to i64 ; 11 uses
  %i.ii = add nsw i64 %wide.trip.count.i127, -1   ; 2 uses
  %i.ij = add nsw i32 %3, -1
  %i.ik = mul i32 %i.if, %i.ij
  %i.il = add i32 %2, %i.ik
  %i.im = add nuw i64 %wide.trip.count31.i, 9223372036854775807
  %i.in = mul i64 %i.im, %i.ih
  %i.io = shl nuw nsw i64 %wide.trip.count.i127, 1
  %i.ip = add i64 %i.in, %wide.trip.count.i127
  %i.iq = shl i64 %i.ip, 1
  %scevgep386 = getelementptr i8, ptr %0, i64 %i.iq
  %i.ir = sub nsw i64 2, %i.io
  %scevgep387 = getelementptr i8, ptr %1, i64 %i.ir
  %i.is = add nsw i32 %3, -1
  %i.it = mul i32 %i.if, %i.is
  %i.iu = add i32 %2, %i.it
  %scevgep389 = getelementptr i8, ptr %1, i64 2
  %min.iters.check396 = icmp ult i32 %2, 4
  %i.iv = trunc nsw i64 %i.ii to i32
  %i.iw = icmp ugt i64 %i.ii, 4294967295
  %stride.check394 = icmp slt i32 %i.ig, 0
  %min.iters.check398 = icmp ult i32 %2, 16
  %i.ix = and i64 %wide.trip.count.i127, 12
  %n.vec400 = and i64 %wide.trip.count.i127, 2147483632 ; 4 uses
  %cmp.n409 = icmp eq i64 %n.vec400, %wide.trip.count.i127
  %min.epilog.iters.check414 = icmp eq i64 %i.ix, 0
  %n.vec416 = and i64 %wide.trip.count.i127, 2147483644 ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec416, %wide.trip.count.i127
  %xtraiter595 = and i64 %wide.trip.count.i127, 1
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  %9 = add nsw i64 %wide.trip.count.i127, -1
  br label %iter.check411

iter.check411:                                    ; preds = %._crit_edge.i134, %.lr.ph.preheader.i126
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph.preheader.i126 ], [ %indvars.iv.next29.i, %._crit_edge.i134 ] ; 5 uses
  %i.iy = trunc i64 %indvars.iv28.i to i32
  %i.iz = mul i32 %i.if, %i.iy
  %i.ja = xor i32 %i.iz, -1
  %i.jb = add i32 %i.iu, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 1                    ; 2 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.jd
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.jd
  %i.je = mul nsw i64 %indvars.iv28.i, %i.ih
  %invariant.gep.i129 = getelementptr [2 x i8], ptr %0, i64 %i.je ; 5 uses
  %i.jf = trunc i64 %indvars.iv28.i to i32
  %i.jg = xor i32 %i.jf, -1
  %i.jh = add i32 %3, %i.jg
  %i.ji = mul i32 %i.jh, %i.if
  %i.jj = add i32 %i.ji, %2                       ; 5 uses
  br i1 %min.iters.check396, label %vec.epilog.scalar.ph412.preheader, label %vector.scevcheck384

vector.scevcheck384:                              ; preds = %iter.check411
  %i.jk = trunc i64 %indvars.iv28.i to i32
  %i.jl = mul i32 %i.if, %i.jk
  %i.jm = xor i32 %i.jl, -1
  %i.jn = add i32 %i.il, %i.jm                    ; 2 uses
  %i.jo = sub i32 %i.jn, %i.iv
  %i.jp = icmp sgt i32 %i.jo, %i.jn
  %i.jq = or i1 %i.jp, %i.iw
  br i1 %i.jq, label %vec.epilog.scalar.ph412.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %vector.scevcheck384
  %bound0391 = icmp ult ptr %0, %scevgep390
  %bound1392 = icmp ult ptr %scevgep388, %scevgep386
  %found.conflict393 = and i1 %bound0391, %bound1392
  %i.jr = or i1 %found.conflict393, %stride.check394
  br i1 %i.jr, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %vector.memcheck385
  br i1 %min.iters.check398, label %vec.epilog.ph415, label %vector.body401

vector.body401:                                   ; preds = %vector.main.loop.iter.check397, %vector.body401
  %index402 = phi i64 [ %index.next407, %vector.body401 ], [ 0, %vector.main.loop.iter.check397 ] ; 3 uses
  %i.js = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index402 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  %wide.load403 = load <8 x i16>, ptr %i.js, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %wide.load404 = load <8 x i16>, ptr %i.jt, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %i.ju = trunc i64 %index402 to i32
  %i.jv = xor i32 %i.ju, -1
  %i.jw = add i32 %i.jj, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -14
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -30
  %reverse405 = shufflevector <8 x i16> %wide.load403, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse406 = shufflevector <8 x i16> %wide.load404, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse405, ptr %i.jz, align 2, !tbaa !14, !alias.scope !113
  store <8 x i16> %reverse406, ptr %i.ka, align 2, !tbaa !14, !alias.scope !113
  %index.next407 = add nuw i64 %index402, 16      ; 2 uses
  %i.kb = icmp eq i64 %index.next407, %n.vec400
  br i1 %i.kb, label %middle.block408, label %vector.body401, !llvm.loop !66

middle.block408:                                  ; preds = %vector.body401
  br i1 %cmp.n409, label %._crit_edge.i134, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block408
  br i1 %min.epilog.iters.check414, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph415, !prof !106

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check413
  %vec.epilog.resume.val410 = phi i64 [ %n.vec400, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check397 ]
  br label %vec.epilog.vector.body417

vec.epilog.vector.body417:                        ; preds = %vec.epilog.vector.body417, %vec.epilog.ph415
  %index418 = phi i64 [ %vec.epilog.resume.val410, %vec.epilog.ph415 ], [ %index.next421, %vec.epilog.vector.body417 ] ; 3 uses
  %i.kc = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index418
  %wide.load419 = load <4 x i16>, ptr %i.kc, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %i.kd = trunc i64 %index418 to i32
  %i.ke = xor i32 %i.kd, -1
  %i.kf = add i32 %i.jj, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kg
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -6
  %reverse420 = shufflevector <4 x i16> %wide.load419, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse420, ptr %i.ki, align 2, !tbaa !14, !alias.scope !113
  %index.next421 = add nuw i64 %index418, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next421, %n.vec416
  br i1 %i.kj, label %vec.epilog.middle.block422, label %vec.epilog.vector.body417, !llvm.loop !67

vec.epilog.middle.block422:                       ; preds = %vec.epilog.vector.body417
  br i1 %cmp.n423, label %._crit_edge.i134, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %vector.memcheck385, %vector.scevcheck384, %iter.check411, %vec.epilog.iter.check413, %vec.epilog.middle.block422
  %indvars.iv.i130.ph = phi i64 [ 0, %iter.check411 ], [ 0, %vector.scevcheck384 ], [ 0, %vector.memcheck385 ], [ %n.vec400, %vec.epilog.iter.check413 ], [ %n.vec416, %vec.epilog.middle.block422 ] ; 5 uses
  br i1 %lcmp.mod596.not, label %vec.epilog.scalar.ph412.prol.loopexit, label %vec.epilog.scalar.ph412.prol

vec.epilog.scalar.ph412.prol:                     ; preds = %vec.epilog.scalar.ph412.preheader
  %gep.i131.prol = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130.ph
  %i.kk = load i16, ptr %gep.i131.prol, align 2, !tbaa !14
  %i.kl = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.km = xor i32 %i.kl, -1
  %i.kn = add i32 %i.jj, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ko
  store i16 %i.kk, ptr %i.kp, align 2, !tbaa !14
  %indvars.iv.next.i132.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %vec.epilog.scalar.ph412.prol.loopexit

vec.epilog.scalar.ph412.prol.loopexit:            ; preds = %vec.epilog.scalar.ph412.prol, %vec.epilog.scalar.ph412.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %vec.epilog.scalar.ph412.preheader ], [ %indvars.iv.next.i132.prol, %vec.epilog.scalar.ph412.prol ]
  %i.kq = icmp eq i64 %indvars.iv.i130.ph, %9
  br i1 %i.kq, label %._crit_edge.i134, label %vec.epilog.scalar.ph412

._crit_edge.i134:                                 ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412, %vec.epilog.middle.block422, %middle.block408
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %rotate90_l8.exit, label %iter.check411, !llvm.loop !68

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.1, %vec.epilog.scalar.ph412 ], [ %indvars.iv.i130.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 4 uses
  %gep.i131 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130
  %i.kr = load i16, ptr %gep.i131, align 2, !tbaa !14
  %i.ks = trunc i64 %indvars.iv.i130 to i32
  %i.kt = xor i32 %i.ks, -1
  %i.ku = add i32 %i.jj, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kv
  store i16 %i.kr, ptr %i.kw, align 2, !tbaa !14
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %gep.i131.1 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.next.i132
  %i.kx = load i16, ptr %gep.i131.1, align 2, !tbaa !14
  %i.ky = trunc i64 %indvars.iv.next.i132 to i32
  %i.kz = xor i32 %i.ky, -1
  %i.la = add i32 %i.jj, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [2 x i8], ptr %1, i64 %i.lb
  store i16 %i.kx, ptr %i.lc, align 2, !tbaa !14
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %indvars.iv.next.i132.1, %wide.trip.count.i127
  br i1 %exitcond.not.i133.1, label %._crit_edge.i134, label %vec.epilog.scalar.ph412, !llvm.loop !69

bb.j:                                             ; preds = %bb.g
  %i.ld = icmp sgt i32 %3, 0
  %i.le = icmp sgt i32 %2, 0
  %or.cond.i135 = and i1 %i.le, %i.ld
  br i1 %or.cond.i135, label %.preheader.preheader.i136, label %rotate90_l8.exit

.preheader.preheader.i136:                        ; preds = %bb.j
  %i.lf = zext nneg i32 %2 to i64                 ; 5 uses
  %i.lg = zext nneg i32 %3 to i64                 ; 2 uses
  %i.lh = sext i32 %5 to i64
  %i.li = sext i32 %4 to i64
  %xtraiter590 = and i64 %i.lf, 1
  %i.lj = icmp eq i32 %2, 1
  %unroll_iter593 = and i64 %i.lf, 2147483646
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod592 = trunc i32 %2 to i1
  br label %.preheader.i139

.preheader.i139:                                  ; preds = %._crit_edge.i145, %.preheader.preheader.i136
  %indvars.iv32.i = phi i64 [ 0, %.preheader.preheader.i136 ], [ %indvars.iv.next33.i, %._crit_edge.i145 ] ; 3 uses
  %i.lk = mul nsw i64 %indvars.iv32.i, %i.li
  %i.ll = xor i64 %indvars.iv32.i, -1
  %i.lm = add nsw i64 %i.ll, %i.lg
  %i.ln = mul nsw i64 %i.lm, %i.lh
  %invariant.gep.i140 = getelementptr i8, ptr %0, i64 %i.lk ; 3 uses
  %invariant.gep38.i = getelementptr i8, ptr %1, i64 %i.ln ; 3 uses
  br i1 %i.lj, label %.epil.preheader589, label %.preheader.i139.new

._crit_edge.i145.unr-lcssa:                       ; preds = %.preheader.i139.new
  br i1 %lcmp.mod591.not, label %._crit_edge.i145, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge.i145.unr-lcssa, %.preheader.i139
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.preheader.i139 ], [ %indvars.iv.next.i143.1, %._crit_edge.i145.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.lo = mul nuw nsw i64 %indvars.iv.i141.epil.init, 3
  %i.lp = xor i64 %indvars.iv.i141.epil.init, -1
  %i.lq = add nsw i64 %i.lp, %i.lf
  %i.lr = mul nsw i64 %i.lq, 3
  %gep.i142.epil = getelementptr i8, ptr %invariant.gep.i140, i64 %i.lo ; 3 uses
  %i.ls = load i8, ptr %gep.i142.epil, align 1, !tbaa !8
  %gep39.i.epil = getelementptr i8, ptr %invariant.gep38.i, i64 %i.lr ; 3 uses
  store i8 %i.ls, ptr %gep39.i.epil, align 1, !tbaa !8
  %i.lt = getelementptr i8, ptr %gep.i142.epil, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !8
  %i.lv = getelementptr i8, ptr %gep39.i.epil, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !8
  %i.lw = getelementptr i8, ptr %gep.i142.epil, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !8
  %i.ly = getelementptr i8, ptr %gep39.i.epil, i64 2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !8
  br label %._crit_edge.i145

._crit_edge.i145:                                 ; preds = %._crit_edge.i145.unr-lcssa, %.epil.preheader589
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i146 = icmp eq i64 %indvars.iv.next33.i, %i.lg
  br i1 %exitcond36.not.i146, label %rotate90_l8.exit, label %.preheader.i139, !llvm.loop !70

.preheader.i139.new:                              ; preds = %.preheader.i139, %.preheader.i139.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i143.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ] ; 5 uses
  %niter594 = phi i64 [ %niter594.next.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ]
  %i.lz = mul nuw nsw i64 %indvars.iv.i141, 3
  %i.ma = xor i64 %indvars.iv.i141, -1
  %i.mb = add nsw i64 %i.ma, %i.lf
  %i.mc = mul nsw i64 %i.mb, 3
  %gep.i142 = getelementptr i8, ptr %invariant.gep.i140, i64 %i.lz ; 3 uses
  %i.md = load i8, ptr %gep.i142, align 1, !tbaa !8
  %gep39.i = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mc ; 3 uses
  store i8 %i.md, ptr %gep39.i, align 1, !tbaa !8
  %i.me = getelementptr i8, ptr %gep.i142, i64 1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !8
  %i.mg = getelementptr i8, ptr %gep39.i, i64 1
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !8
  %i.mh = getelementptr i8, ptr %gep.i142, i64 2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !8
  %i.mj = getelementptr i8, ptr %gep39.i, i64 2
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !8
  %i.mk = mul nuw i64 %indvars.iv.i141, 3
  %i.ml = xor i64 %indvars.iv.i141, -2
  %i.mm = add nsw i64 %i.ml, %i.lf
  %i.mn = mul nsw i64 %i.mm, 3
  %i.mo = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mk ; 3 uses
  %gep.i142.1 = getelementptr i8, ptr %i.mo, i64 3
  %i.mp = load i8, ptr %gep.i142.1, align 1, !tbaa !8
  %gep39.i.1 = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mn ; 3 uses
  store i8 %i.mp, ptr %gep39.i.1, align 1, !tbaa !8
  %i.mq = getelementptr i8, ptr %i.mo, i64 4
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !8
  %i.ms = getelementptr i8, ptr %gep39.i.1, i64 1
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !8
  %i.mt = getelementptr i8, ptr %i.mo, i64 5
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !8
  %i.mv = getelementptr i8, ptr %gep39.i.1, i64 2
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !8
  %indvars.iv.next.i143.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge.i145.unr-lcssa, label %.preheader.i139.new, !llvm.loop !71

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.mw = icmp sgt i32 %3, 0
  %i.mx = icmp sgt i32 %2, 0
  %or.cond.i147 = and i1 %i.mx, %i.mw
  br i1 %or.cond.i147, label %.lr.ph.preheader.i148, label %rotate90_l8.exit

.lr.ph.preheader.i148:                            ; preds = %bb.k
  %i.my = ashr i32 %5, 2                          ; 5 uses
  %i.mz = ashr i32 %4, 2                          ; 2 uses
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %wide.trip.count31.i149 = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i150 = zext nneg i32 %2 to i64 ; 8 uses
  %i.nb = add nsw i64 %wide.trip.count.i150, -1   ; 2 uses
  %i.nc = add nsw i32 %3, -1
  %i.nd = mul i32 %i.my, %i.nc
  %i.ne = add i32 %2, %i.nd
  %i.nf = add nuw nsw i64 %wide.trip.count31.i149, 4611686018427387903
  %i.ng = mul i64 %i.nf, %i.na
  %i.nh = shl nuw nsw i64 %wide.trip.count.i150, 2
  %i.ni = add i64 %i.ng, %wide.trip.count.i150
  %i.nj = shl i64 %i.ni, 2
  %scevgep362 = getelementptr i8, ptr %0, i64 %i.nj
  %i.nk = sub nsw i64 4, %i.nh
  %scevgep363 = getelementptr i8, ptr %1, i64 %i.nk
  %i.nl = add nsw i32 %3, -1
  %i.nm = mul i32 %i.my, %i.nl
  %i.nn = add i32 %2, %i.nm
  %scevgep365 = getelementptr i8, ptr %1, i64 4
  %min.iters.check371 = icmp ult i32 %2, 12
  %i.no = trunc nsw i64 %i.nb to i32
  %i.np = icmp ugt i64 %i.nb, 4294967295
  %stride.check = icmp slt i32 %i.mz, 0
  %n.vec373 = and i64 %wide.trip.count.i150, 2147483640 ; 3 uses
  %cmp.n382 = icmp eq i64 %n.vec373, %wide.trip.count.i150
  %xtraiter587 = and i64 %wide.trip.count.i150, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  %10 = add nsw i64 %wide.trip.count.i150, -1
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %._crit_edge.i158, %.lr.ph.preheader.i148
  %indvars.iv28.i152 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next29.i159, %._crit_edge.i158 ] ; 5 uses
  %i.nq = trunc i64 %indvars.iv28.i152 to i32
  %i.nr = mul i32 %i.my, %i.nq
  %i.ns = xor i32 %i.nr, -1
  %i.nt = add i32 %i.nn, %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = shl nsw i64 %i.nu, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.nv
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.nv
  %i.nw = mul nsw i64 %indvars.iv28.i152, %i.na
  %invariant.gep.i153 = getelementptr [4 x i8], ptr %0, i64 %i.nw ; 4 uses
  %i.nx = trunc i64 %indvars.iv28.i152 to i32
  %i.ny = xor i32 %i.nx, -1
  %i.nz = add i32 %3, %i.ny
  %i.oa = mul i32 %i.nz, %i.my
  %i.ob = add i32 %i.oa, %2                       ; 4 uses
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.scevcheck360

vector.scevcheck360:                              ; preds = %.lr.ph.i151
  %i.oc = trunc i64 %indvars.iv28.i152 to i32
  %i.od = mul i32 %i.my, %i.oc
  %i.oe = xor i32 %i.od, -1
  %i.of = add i32 %i.ne, %i.oe                    ; 2 uses
  %i.og = sub i32 %i.of, %i.no
  %i.oh = icmp sgt i32 %i.og, %i.of
  %i.oi = or i1 %i.oh, %i.np
  br i1 %i.oi, label %scalar.ph370.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %vector.scevcheck360
  %bound0367 = icmp ult ptr %0, %scevgep366
  %bound1368 = icmp ult ptr %scevgep364, %scevgep362
  %found.conflict369 = and i1 %bound0367, %bound1368
  %i.oj = or i1 %found.conflict369, %stride.check
  br i1 %i.oj, label %scalar.ph370.preheader, label %vector.body374

vector.body374:                                   ; preds = %vector.memcheck361, %vector.body374
  %index375 = phi i64 [ %index.next380, %vector.body374 ], [ 0, %vector.memcheck361 ] ; 3 uses
  %i.ok = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %index375 ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %wide.load376 = load <4 x i32>, ptr %i.ok, align 4, !tbaa !9, !alias.scope !114, !noalias !115
  %wide.load377 = load <4 x i32>, ptr %i.ol, align 4, !tbaa !9, !alias.scope !114, !noalias !115
  %i.om = trunc i64 %index375 to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = add i32 %i.ob, %i.on
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 -12
  %i.os = getelementptr inbounds i8, ptr %i.oq, i64 -28
  %reverse378 = shufflevector <4 x i32> %wide.load376, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse379 = shufflevector <4 x i32> %wide.load377, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse378, ptr %i.or, align 4, !tbaa !9, !alias.scope !115
  store <4 x i32> %reverse379, ptr %i.os, align 4, !tbaa !9, !alias.scope !115
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.ot = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.ot, label %middle.block381, label %vector.body374, !llvm.loop !75

middle.block381:                                  ; preds = %vector.body374
  br i1 %cmp.n382, label %._crit_edge.i158, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %vector.memcheck361, %vector.scevcheck360, %.lr.ph.i151, %middle.block381
  %indvars.iv.i154.ph = phi i64 [ 0, %vector.memcheck361 ], [ 0, %vector.scevcheck360 ], [ 0, %.lr.ph.i151 ], [ %n.vec373, %middle.block381 ] ; 5 uses
  br i1 %lcmp.mod588.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol

scalar.ph370.prol:                                ; preds = %scalar.ph370.preheader
  %gep.i155.prol = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154.ph
  %i.ou = load i32, ptr %gep.i155.prol, align 4, !tbaa !9
  %i.ov = trunc nuw nsw i64 %indvars.iv.i154.ph to i32
  %i.ow = xor i32 %i.ov, -1
  %i.ox = add i32 %i.ob, %i.ow
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.oy
  store i32 %i.ou, ptr %i.oz, align 4, !tbaa !9
  %indvars.iv.next.i156.prol = or disjoint i64 %indvars.iv.i154.ph, 1
  br label %scalar.ph370.prol.loopexit

scalar.ph370.prol.loopexit:                       ; preds = %scalar.ph370.prol, %scalar.ph370.preheader
  %indvars.iv.i154.unr = phi i64 [ %indvars.iv.i154.ph, %scalar.ph370.preheader ], [ %indvars.iv.next.i156.prol, %scalar.ph370.prol ]
  %i.pa = icmp eq i64 %indvars.iv.i154.ph, %10
  br i1 %i.pa, label %._crit_edge.i158, label %scalar.ph370

._crit_edge.i158:                                 ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370, %middle.block381
  %indvars.iv.next29.i159 = add nuw nsw i64 %indvars.iv28.i152, 1 ; 2 uses
  %exitcond32.not.i160 = icmp eq i64 %indvars.iv.next29.i159, %wide.trip.count31.i149
  br i1 %exitcond32.not.i160, label %rotate90_l8.exit, label %.lr.ph.i151, !llvm.loop !76

scalar.ph370:                                     ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i156.1, %scalar.ph370 ], [ %indvars.iv.i154.unr, %scalar.ph370.prol.loopexit ] ; 4 uses
  %gep.i155 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154
  %i.pb = load i32, ptr %gep.i155, align 4, !tbaa !9
  %i.pc = trunc i64 %indvars.iv.i154 to i32
  %i.pd = xor i32 %i.pc, -1
  %i.pe = add i32 %i.ob, %i.pd
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pf
  store i32 %i.pb, ptr %i.pg, align 4, !tbaa !9
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i154, 1 ; 2 uses
  %gep.i155.1 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.next.i156
  %i.ph = load i32, ptr %gep.i155.1, align 4, !tbaa !9
  %i.pi = trunc i64 %indvars.iv.next.i156 to i32
  %i.pj = xor i32 %i.pi, -1
  %i.pk = add i32 %i.ob, %i.pj
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pl
  store i32 %i.ph, ptr %i.pm, align 4, !tbaa !9
  %indvars.iv.next.i156.1 = add nuw nsw i64 %indvars.iv.i154, 2 ; 2 uses
  %exitcond.not.i157.1 = icmp eq i64 %indvars.iv.next.i156.1, %wide.trip.count.i150
  br i1 %exitcond.not.i157.1, label %._crit_edge.i158, label %scalar.ph370, !llvm.loop !77

bb.l:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.m
    i32 18, label %bb.n
    i32 15, label %bb.o
    i32 17, label %bb.p
    i32 16, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.pn = icmp sgt i32 %2, 0
  %i.po = icmp sgt i32 %3, 0
  %or.cond.i161 = and i1 %i.pn, %i.po
  br i1 %or.cond.i161, label %.lr.ph.preheader.i162, label %rotate90_l8.exit

.lr.ph.preheader.i162:                            ; preds = %bb.m
  %i.pp = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count33.i163 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i164 = zext nneg i32 %3 to i64 ; 11 uses
  %i.pq = add nsw i64 %wide.trip.count.i164, -1   ; 2 uses
  %i.pr = add nsw i32 %3, -1
  %i.ps = getelementptr i8, ptr %0, i64 %wide.trip.count.i164
  %i.pt = getelementptr i8, ptr %i.ps, i64 %wide.trip.count33.i163
  %scevgep320 = getelementptr i8, ptr %i.pt, i64 -1
  %i.pu = sub nsw i64 1, %wide.trip.count.i164
  %scevgep321 = getelementptr i8, ptr %1, i64 %i.pu
  %i.pv = add nsw i32 %3, -1
  %scevgep323 = getelementptr i8, ptr %1, i64 1
  %min.iters.check329 = icmp ult i32 %3, 8
  %ident.check318 = icmp ne i32 %4, 1
  %i.pw = trunc nsw i64 %i.pq to i32
  %i.px = icmp ugt i64 %i.pq, 4294967295
  %invariant.op617 = or i1 %i.px, %ident.check318
  %min.iters.check331 = icmp ult i32 %3, 32
  %i.py = and i64 %wide.trip.count.i164, 24
  %n.vec333 = and i64 %wide.trip.count.i164, 2147483616 ; 5 uses
  %cmp.n342 = icmp eq i64 %n.vec333, %wide.trip.count.i164
  %min.epilog.iters.check348 = icmp eq i64 %i.py, 0
  %n.vec350 = and i64 %wide.trip.count.i164, 2147483640 ; 4 uses
  %cmp.n357 = icmp eq i64 %n.vec350, %wide.trip.count.i164
  %xtraiter585 = and i64 %wide.trip.count.i164, 1
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %11 = add nsw i64 %wide.trip.count.i164, -1
  br label %iter.check345

iter.check345:                                    ; preds = %._crit_edge.i172, %.lr.ph.preheader.i162
  %indvars.iv25.i166 = phi i64 [ 0, %.lr.ph.preheader.i162 ], [ %indvars.iv.next26.i173, %._crit_edge.i172 ] ; 11 uses
  %i.pz = trunc i64 %indvars.iv25.i166 to i32
  %i.qa = mul i32 %5, %i.pz
  %i.qb = add i32 %i.qa, %i.pv
  %i.qc = sext i32 %i.qb to i64                   ; 2 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.qc
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.qc
  %indvars32.i = trunc i64 %indvars.iv25.i166 to i32
  %i.qd = mul nsw i32 %5, %indvars32.i
  %i.qe = add i32 %i.qd, %3                       ; 5 uses
  br i1 %min.iters.check329, label %vec.epilog.scalar.ph346.preheader, label %vector.scevcheck317

vector.scevcheck317:                              ; preds = %iter.check345
  %i.qf = trunc i64 %indvars.iv25.i166 to i32
  %i.qg = mul i32 %5, %i.qf
  %i.qh = add i32 %i.qg, %i.pr                    ; 2 uses
  %i.qi = sub i32 %i.qh, %i.pw
  %i.qj = icmp sgt i32 %i.qi, %i.qh
  %.reass618 = or i1 %i.qj, %invariant.op617
  br i1 %.reass618, label %vec.epilog.scalar.ph346.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %vector.scevcheck317
  %bound0325 = icmp ult ptr %0, %scevgep324
  %bound1326 = icmp ult ptr %scevgep322, %scevgep320
  %found.conflict327 = and i1 %bound0325, %bound1326
  br i1 %found.conflict327, label %vec.epilog.scalar.ph346.preheader, label %vector.main.loop.iter.check330

vector.main.loop.iter.check330:                   ; preds = %vector.memcheck319
  br i1 %min.iters.check331, label %vec.epilog.ph349, label %vector.ph332

vector.ph332:                                     ; preds = %vector.main.loop.iter.check330
  %i.qk = add nuw i64 %indvars.iv25.i166, %n.vec333
  %i.ql = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 3 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 %index335 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %wide.load336 = load <16 x i8>, ptr %i.qm, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %wide.load337 = load <16 x i8>, ptr %i.qn, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %i.qo = trunc i64 %index335 to i32
  %i.qp = xor i32 %i.qo, -1
  %i.qq = add i32 %i.qe, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %1, i64 %i.qr ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 -15
  %i.qu = getelementptr inbounds i8, ptr %i.qs, i64 -31
  %reverse338 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse339 = shufflevector <16 x i8> %wide.load337, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse338, ptr %i.qt, align 1, !tbaa !8, !alias.scope !117
  store <16 x i8> %reverse339, ptr %i.qu, align 1, !tbaa !8, !alias.scope !117
  %index.next340 = add nuw i64 %index335, 32      ; 2 uses
  %i.qv = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.qv, label %middle.block341, label %vector.body334, !llvm.loop !81

middle.block341:                                  ; preds = %vector.body334
  br i1 %cmp.n342, label %._crit_edge.i172, label %vec.epilog.iter.check347

vec.epilog.iter.check347:                         ; preds = %middle.block341
  br i1 %min.epilog.iters.check348, label %vec.epilog.scalar.ph346.preheader, label %vec.epilog.ph349, !prof !111

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check330, %vec.epilog.iter.check347
  %vec.epilog.resume.val343 = phi i64 [ %n.vec333, %vec.epilog.iter.check347 ], [ 0, %vector.main.loop.iter.check330 ]
  %i.qw = add nuw i64 %indvars.iv25.i166, %n.vec350
  %i.qx = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vec.epilog.vector.body351

vec.epilog.vector.body351:                        ; preds = %vec.epilog.vector.body351, %vec.epilog.ph349
  %index352 = phi i64 [ %vec.epilog.resume.val343, %vec.epilog.ph349 ], [ %index.next355, %vec.epilog.vector.body351 ] ; 3 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 %index352
  %wide.load353 = load <8 x i8>, ptr %i.qy, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %i.qz = trunc i64 %index352 to i32
  %i.ra = xor i32 %i.qz, -1
  %i.rb = add i32 %i.qe, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %1, i64 %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 -7
  %reverse354 = shufflevector <8 x i8> %wide.load353, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse354, ptr %i.re, align 1, !tbaa !8, !alias.scope !117
  %index.next355 = add nuw i64 %index352, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.rf, label %vec.epilog.middle.block356, label %vec.epilog.vector.body351, !llvm.loop !82

vec.epilog.middle.block356:                       ; preds = %vec.epilog.vector.body351
  br i1 %cmp.n357, label %._crit_edge.i172, label %vec.epilog.scalar.ph346.preheader

vec.epilog.scalar.ph346.preheader:                ; preds = %vector.memcheck319, %vector.scevcheck317, %iter.check345, %vec.epilog.iter.check347, %vec.epilog.middle.block356
  %indvars.iv27.i167.ph = phi i64 [ %indvars.iv25.i166, %iter.check345 ], [ %indvars.iv25.i166, %vector.scevcheck317 ], [ %indvars.iv25.i166, %vector.memcheck319 ], [ %i.qk, %vec.epilog.iter.check347 ], [ %i.qw, %vec.epilog.middle.block356 ] ; 3 uses
  %indvars.iv.i168.ph = phi i64 [ 0, %iter.check345 ], [ 0, %vector.scevcheck317 ], [ 0, %vector.memcheck319 ], [ %n.vec333, %vec.epilog.iter.check347 ], [ %n.vec350, %vec.epilog.middle.block356 ] ; 4 uses
  br i1 %lcmp.mod586.not, label %vec.epilog.scalar.ph346.prol.loopexit, label %vec.epilog.scalar.ph346.prol

vec.epilog.scalar.ph346.prol:                     ; preds = %vec.epilog.scalar.ph346.preheader
  %i.rg = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167.ph
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !8
  %i.ri = trunc nuw nsw i64 %indvars.iv.i168.ph to i32
  %i.rj = xor i32 %i.ri, -1
  %i.rk = add i32 %i.qe, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds i8, ptr %1, i64 %i.rl
  store i8 %i.rh, ptr %i.rm, align 1, !tbaa !8
  %indvars.iv.next28.i169.prol = add nsw i64 %indvars.iv27.i167.ph, %i.pp
  %indvars.iv.next.i170.prol = or disjoint i64 %indvars.iv.i168.ph, 1
  br label %vec.epilog.scalar.ph346.prol.loopexit

vec.epilog.scalar.ph346.prol.loopexit:            ; preds = %vec.epilog.scalar.ph346.prol, %vec.epilog.scalar.ph346.preheader
  %indvars.iv27.i167.unr = phi i64 [ %indvars.iv27.i167.ph, %vec.epilog.scalar.ph346.preheader ], [ %indvars.iv.next28.i169.prol, %vec.epilog.scalar.ph346.prol ]
  %indvars.iv.i168.unr = phi i64 [ %indvars.iv.i168.ph, %vec.epilog.scalar.ph346.preheader ], [ %indvars.iv.next.i170.prol, %vec.epilog.scalar.ph346.prol ]
  %i.rn = icmp eq i64 %indvars.iv.i168.ph, %11
  br i1 %i.rn, label %._crit_edge.i172, label %vec.epilog.scalar.ph346

._crit_edge.i172:                                 ; preds = %vec.epilog.scalar.ph346.prol.loopexit, %vec.epilog.scalar.ph346, %vec.epilog.middle.block356, %middle.block341
  %indvars.iv.next26.i173 = add nuw nsw i64 %indvars.iv25.i166, 1 ; 2 uses
  %exitcond34.not.i174 = icmp eq i64 %indvars.iv.next26.i173, %wide.trip.count33.i163
  br i1 %exitcond34.not.i174, label %rotate90_l8.exit, label %iter.check345, !llvm.loop !83

vec.epilog.scalar.ph346:                          ; preds = %vec.epilog.scalar.ph346.prol.loopexit, %vec.epilog.scalar.ph346
  %indvars.iv27.i167 = phi i64 [ %indvars.iv.next28.i169.1, %vec.epilog.scalar.ph346 ], [ %indvars.iv27.i167.unr, %vec.epilog.scalar.ph346.prol.loopexit ] ; 2 uses
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i170.1, %vec.epilog.scalar.ph346 ], [ %indvars.iv.i168.unr, %vec.epilog.scalar.ph346.prol.loopexit ] ; 3 uses
  %i.ro = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !8
  %i.rq = trunc i64 %indvars.iv.i168 to i32
  %i.rr = xor i32 %i.rq, -1
  %i.rs = add i32 %i.qe, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds i8, ptr %1, i64 %i.rt
  store i8 %i.rp, ptr %i.ru, align 1, !tbaa !8
  %indvars.iv.next28.i169 = add nsw i64 %indvars.iv27.i167, %i.pp ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i169
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !8
  %i.rx = trunc i64 %indvars.iv.i168 to i32
  %reass.sub614 = sub i32 %i.qe, %i.rx
  %i.ry = add i32 %reass.sub614, -2
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %1, i64 %i.rz
  store i8 %i.rw, ptr %i.sa, align 1, !tbaa !8
  %indvars.iv.next28.i169.1 = add nsw i64 %indvars.iv.next28.i169, %i.pp
  %indvars.iv.next.i170.1 = add nuw nsw i64 %indvars.iv.i168, 2 ; 2 uses
  %exitcond.not.i171.1 = icmp eq i64 %indvars.iv.next.i170.1, %wide.trip.count.i164
  br i1 %exitcond.not.i171.1, label %._crit_edge.i172, label %vec.epilog.scalar.ph346, !llvm.loop !84

bb.n:                                             ; preds = %bb.l
  %i.sb = ashr i32 %5, 1                          ; 3 uses
  %i.sc = icmp sgt i32 %2, 0
  %i.sd = icmp sgt i32 %3, 0
  %or.cond.i175 = and i1 %i.sc, %i.sd
  br i1 %or.cond.i175, label %.lr.ph.preheader.i176, label %rotate90_l8.exit

.lr.ph.preheader.i176:                            ; preds = %bb.n
  %i.se = ashr i32 %4, 1                          ; 2 uses
  %i.sf = sext i32 %i.se to i64                   ; 3 uses
  %wide.trip.count35.i177 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i178 = zext nneg i32 %3 to i64 ; 11 uses
  %i.sg = add nsw i64 %wide.trip.count.i178, -1   ; 2 uses
  %i.sh = add nsw i32 %3, -1
  %i.si = shl nuw nsw i64 %wide.trip.count.i178, 1
  %i.sj = add nuw nsw i64 %wide.trip.count35.i177, %wide.trip.count.i178
  %i.sk = shl nuw nsw i64 %i.sj, 1
  %i.sl = getelementptr i8, ptr %0, i64 %i.sk
  %scevgep286 = getelementptr i8, ptr %i.sl, i64 -2
  %i.sm = sub nsw i64 2, %i.si
  %scevgep287 = getelementptr i8, ptr %1, i64 %i.sm
  %i.sn = add nsw i32 %3, -1
  %scevgep289 = getelementptr i8, ptr %1, i64 2
  %min.iters.check295 = icmp ult i32 %3, 4
  %ident.check284 = icmp ne i32 %i.se, 1
  %i.so = trunc nsw i64 %i.sg to i32
  %i.sp = icmp ugt i64 %i.sg, 4294967295
  %invariant.op615 = or i1 %i.sp, %ident.check284
  %min.iters.check296 = icmp ult i32 %3, 16
  %i.sq = and i64 %wide.trip.count.i178, 12
  %n.vec298 = and i64 %wide.trip.count.i178, 2147483632 ; 5 uses
  %cmp.n307 = icmp eq i64 %n.vec298, %wide.trip.count.i178
  %min.epilog.iters.check = icmp eq i64 %i.sq, 0
  %n.vec309 = and i64 %wide.trip.count.i178, 2147483644 ; 4 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %wide.trip.count.i178
  %xtraiter583 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  %12 = add nsw i64 %wide.trip.count.i178, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i186, %.lr.ph.preheader.i176
  %indvars.iv27.i180 = phi i64 [ 0, %.lr.ph.preheader.i176 ], [ %indvars.iv.next28.i187, %._crit_edge.i186 ] ; 11 uses
  %i.sr = trunc i64 %indvars.iv27.i180 to i32
  %i.ss = mul i32 %i.sb, %i.sr
  %i.st = add i32 %i.ss, %i.sn
  %i.su = sext i32 %i.st to i64
  %i.sv = shl nsw i64 %i.su, 1                    ; 2 uses
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.sv
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.sv
  %indvars34.i = trunc i64 %indvars.iv27.i180 to i32
  %i.sw = mul nsw i32 %i.sb, %indvars34.i
  %i.sx = add i32 %i.sw, %3                       ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck283

vector.scevcheck283:                              ; preds = %iter.check
  %i.sy = trunc i64 %indvars.iv27.i180 to i32
  %i.sz = mul i32 %i.sb, %i.sy
  %i.ta = add i32 %i.sz, %i.sh                    ; 2 uses
  %i.tb = sub i32 %i.ta, %i.so
  %i.tc = icmp sgt i32 %i.tb, %i.ta
  %.reass616 = or i1 %i.tc, %invariant.op615
  br i1 %.reass616, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %vector.scevcheck283
  %bound0291 = icmp ult ptr %0, %scevgep290
  %bound1292 = icmp ult ptr %scevgep288, %scevgep286
  %found.conflict293 = and i1 %bound0291, %bound1292
  br i1 %found.conflict293, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck285
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check
  %i.td = add nuw i64 %indvars.iv27.i180, %n.vec298
  %i.te = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 3 uses
  %i.tf = getelementptr [2 x i8], ptr %i.te, i64 %index300 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load301 = load <8 x i16>, ptr %i.tf, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %wide.load302 = load <8 x i16>, ptr %i.tg, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %i.th = trunc i64 %index300 to i32
  %i.ti = xor i32 %i.th, -1
  %i.tj = add i32 %i.sx, %i.ti
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds i8, ptr %i.tl, i64 -14
  %i.tn = getelementptr inbounds i8, ptr %i.tl, i64 -30
  %reverse303 = shufflevector <8 x i16> %wide.load301, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse304 = shufflevector <8 x i16> %wide.load302, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse303, ptr %i.tm, align 2, !tbaa !14, !alias.scope !119
  store <8 x i16> %reverse304, ptr %i.tn, align 2, !tbaa !14, !alias.scope !119
  %index.next305 = add nuw i64 %index300, 16      ; 2 uses
  %i.to = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.to, label %middle.block306, label %vector.body299, !llvm.loop !88

middle.block306:                                  ; preds = %vector.body299
  br i1 %cmp.n307, label %._crit_edge.i186, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block306
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec298, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tp = add nuw i64 %indvars.iv27.i180, %n.vec309
  %i.tq = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index310 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next313, %vec.epilog.vector.body ] ; 3 uses
  %i.tr = getelementptr [2 x i8], ptr %i.tq, i64 %index310
  %wide.load311 = load <4 x i16>, ptr %i.tr, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %i.ts = trunc i64 %index310 to i32
  %i.tt = xor i32 %i.ts, -1
  %i.tu = add i32 %i.sx, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tv
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 -6
  %reverse312 = shufflevector <4 x i16> %wide.load311, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse312, ptr %i.tx, align 2, !tbaa !14, !alias.scope !119
  %index.next313 = add nuw i64 %index310, 4       ; 2 uses
  %i.ty = icmp eq i64 %index.next313, %n.vec309
  br i1 %i.ty, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n314, label %._crit_edge.i186, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck285, %vector.scevcheck283, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv29.i181.ph = phi i64 [ %indvars.iv27.i180, %iter.check ], [ %indvars.iv27.i180, %vector.scevcheck283 ], [ %indvars.iv27.i180, %vector.memcheck285 ], [ %i.td, %vec.epilog.iter.check ], [ %i.tp, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i182.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck283 ], [ 0, %vector.memcheck285 ], [ %n.vec298, %vec.epilog.iter.check ], [ %n.vec309, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod584.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.tz = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181.ph
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !14
  %i.ub = trunc nuw nsw i64 %indvars.iv.i182.ph to i32
  %i.uc = xor i32 %i.ub, -1
  %i.ud = add i32 %i.sx, %i.uc
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ue
  store i16 %i.ua, ptr %i.uf, align 2, !tbaa !14
  %indvars.iv.next30.i183.prol = add nsw i64 %indvars.iv29.i181.ph, %i.sf
  %indvars.iv.next.i184.prol = or disjoint i64 %indvars.iv.i182.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv29.i181.unr = phi i64 [ %indvars.iv29.i181.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next30.i183.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i182.unr = phi i64 [ %indvars.iv.i182.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i184.prol, %vec.epilog.scalar.ph.prol ]
  %i.ug = icmp eq i64 %indvars.iv.i182.ph, %12
  br i1 %i.ug, label %._crit_edge.i186, label %vec.epilog.scalar.ph

._crit_edge.i186:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block306
  %indvars.iv.next28.i187 = add nuw nsw i64 %indvars.iv27.i180, 1 ; 2 uses
  %exitcond36.not.i188 = icmp eq i64 %indvars.iv.next28.i187, %wide.trip.count35.i177
  br i1 %exitcond36.not.i188, label %rotate90_l8.exit, label %iter.check, !llvm.loop !90

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv29.i181 = phi i64 [ %indvars.iv.next30.i183.1, %vec.epilog.scalar.ph ], [ %indvars.iv29.i181.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i182 = phi i64 [ %indvars.iv.next.i184.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i182.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.uh = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !14
  %i.uj = trunc i64 %indvars.iv.i182 to i32
  %i.uk = xor i32 %i.uj, -1
  %i.ul = add i32 %i.sx, %i.uk
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [2 x i8], ptr %1, i64 %i.um
  store i16 %i.ui, ptr %i.un, align 2, !tbaa !14
  %indvars.iv.next30.i183 = add nsw i64 %indvars.iv29.i181, %i.sf ; 2 uses
  %i.uo = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i183
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !14
  %i.uq = trunc i64 %indvars.iv.i182 to i32
  %reass.sub613 = sub i32 %i.sx, %i.uq
  %i.ur = add i32 %reass.sub613, -2
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [2 x i8], ptr %1, i64 %i.us
  store i16 %i.up, ptr %i.ut, align 2, !tbaa !14
  %indvars.iv.next30.i183.1 = add nsw i64 %indvars.iv.next30.i183, %i.sf
  %indvars.iv.next.i184.1 = add nuw nsw i64 %indvars.iv.i182, 2 ; 2 uses
  %exitcond.not.i185.1 = icmp eq i64 %indvars.iv.next.i184.1, %wide.trip.count.i178
  br i1 %exitcond.not.i185.1, label %._crit_edge.i186, label %vec.epilog.scalar.ph, !llvm.loop !91

bb.o:                                             ; preds = %bb.l
  %i.uu = icmp sgt i32 %2, 0
  %i.uv = icmp sgt i32 %3, 0
  %or.cond.i189 = and i1 %i.uu, %i.uv
  br i1 %or.cond.i189, label %.preheader.preheader.i190, label %rotate90_l8.exit

.preheader.preheader.i190:                        ; preds = %bb.o
  %i.uw = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ux = sext i32 %4 to i64                      ; 3 uses
  %i.uy = sext i32 %5 to i64
  %wide.trip.count33.i191 = zext nneg i32 %2 to i64
  %xtraiter580 = and i64 %i.uw, 1
  %i.uz = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.uw, 2147483646
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod582 = trunc i32 %3 to i1
  br label %.preheader.i193

.preheader.i193:                                  ; preds = %._crit_edge.i202, %.preheader.preheader.i190
  %indvars.iv30.i194 = phi i64 [ 0, %.preheader.preheader.i190 ], [ %indvars.iv.next31.i203, %._crit_edge.i202 ] ; 3 uses
  %i.va = mul nuw nsw i64 %indvars.iv30.i194, 3
  %i.vb = mul nsw i64 %indvars.iv30.i194, %i.uy
  %invariant.gep.i195 = getelementptr i8, ptr %0, i64 %i.va ; 3 uses
  %invariant.gep36.i196 = getelementptr i8, ptr %1, i64 %i.vb ; 3 uses
  br i1 %i.uz, label %.epil.preheader, label %.preheader.i193.new

._crit_edge.i202.unr-lcssa:                       ; preds = %.preheader.i193.new
  br i1 %lcmp.mod581.not, label %._crit_edge.i202, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i202.unr-lcssa, %.preheader.i193
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.preheader.i193 ], [ %indvars.iv.next.i200.1, %._crit_edge.i202.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.vc = mul nsw i64 %indvars.iv.i197.epil.init, %i.ux
  %i.vd = xor i64 %indvars.iv.i197.epil.init, -1
  %i.ve = add nsw i64 %i.vd, %i.uw
  %i.vf = mul nsw i64 %i.ve, 3
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vc ; 3 uses
  %i.vg = load i8, ptr %gep.i198.epil, align 1, !tbaa !8
  %gep37.i199.epil = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vf ; 3 uses
  store i8 %i.vg, ptr %gep37.i199.epil, align 1, !tbaa !8
  %i.vh = getelementptr i8, ptr %gep.i198.epil, i64 1
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !8
  %i.vj = getelementptr i8, ptr %gep37.i199.epil, i64 1
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !8
  %i.vk = getelementptr i8, ptr %gep.i198.epil, i64 2
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !8
  %i.vm = getelementptr i8, ptr %gep37.i199.epil, i64 2
  store i8 %i.vl, ptr %i.vm, align 1, !tbaa !8
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i203 = add nuw nsw i64 %indvars.iv30.i194, 1 ; 2 uses
  %exitcond34.not.i204 = icmp eq i64 %indvars.iv.next31.i203, %wide.trip.count33.i191
  br i1 %exitcond34.not.i204, label %rotate90_l8.exit, label %.preheader.i193, !llvm.loop !92

.preheader.i193.new:                              ; preds = %.preheader.i193, %.preheader.i193.new
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i200.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ]
  %i.vn = mul nsw i64 %indvars.iv.i197, %i.ux
  %i.vo = xor i64 %indvars.iv.i197, -1
  %i.vp = add nsw i64 %i.vo, %i.uw
  %i.vq = mul nsw i64 %i.vp, 3
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vn ; 3 uses
  %i.vr = load i8, ptr %gep.i198, align 1, !tbaa !8
  %gep37.i199 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vq ; 3 uses
  store i8 %i.vr, ptr %gep37.i199, align 1, !tbaa !8
  %i.vs = getelementptr i8, ptr %gep.i198, i64 1
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !8
  %i.vu = getelementptr i8, ptr %gep37.i199, i64 1
  store i8 %i.vt, ptr %i.vu, align 1, !tbaa !8
  %i.vv = getelementptr i8, ptr %gep.i198, i64 2
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !8
  %i.vx = getelementptr i8, ptr %gep37.i199, i64 2
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !8
  %indvars.iv.next.i200 = or disjoint i64 %indvars.iv.i197, 1
  %i.vy = mul nsw i64 %indvars.iv.next.i200, %i.ux
  %i.vz = xor i64 %indvars.iv.i197, -2
  %i.wa = add nsw i64 %i.vz, %i.uw
  %i.wb = mul nsw i64 %i.wa, 3
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vy ; 3 uses
  %i.wc = load i8, ptr %gep.i198.1, align 1, !tbaa !8
  %gep37.i199.1 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.wb ; 3 uses
  store i8 %i.wc, ptr %gep37.i199.1, align 1, !tbaa !8
  %i.wd = getelementptr i8, ptr %gep.i198.1, i64 1
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !8
  %i.wf = getelementptr i8, ptr %gep37.i199.1, i64 1
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !8
  %i.wg = getelementptr i8, ptr %gep.i198.1, i64 2
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !8
  %i.wi = getelementptr i8, ptr %gep37.i199.1, i64 2
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !8
  %indvars.iv.next.i200.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i202.unr-lcssa, label %.preheader.i193.new, !llvm.loop !93

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.wj = ashr i32 %5, 2                          ; 3 uses
  %i.wk = icmp sgt i32 %2, 0
  %i.wl = icmp sgt i32 %3, 0
  %or.cond.i205 = and i1 %i.wk, %i.wl
  br i1 %or.cond.i205, label %.lr.ph.preheader.i206, label %rotate90_l8.exit

.lr.ph.preheader.i206:                            ; preds = %bb.p
  %i.wm = ashr i32 %4, 2                          ; 2 uses
  %i.wn = sext i32 %i.wm to i64                   ; 3 uses
  %wide.trip.count35.i207 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i208 = zext nneg i32 %3 to i64 ; 8 uses
  %i.wo = add nsw i64 %wide.trip.count.i208, -1   ; 2 uses
  %i.wp = add nsw i32 %3, -1
  %i.wq = shl nuw nsw i64 %wide.trip.count.i208, 2
  %i.wr = add nuw nsw i64 %wide.trip.count35.i207, %wide.trip.count.i208
  %i.ws = shl nuw nsw i64 %i.wr, 2
  %i.wt = getelementptr i8, ptr %0, i64 %i.ws
  %scevgep = getelementptr i8, ptr %i.wt, i64 -4
  %i.wu = sub nsw i64 4, %i.wq
  %scevgep276 = getelementptr i8, ptr %1, i64 %i.wu
  %i.wv = add nsw i32 %3, -1
  %scevgep278 = getelementptr i8, ptr %1, i64 4
  %min.iters.check = icmp ult i32 %3, 12
  %ident.check = icmp ne i32 %i.wm, 1
  %i.ww = trunc nsw i64 %i.wo to i32
  %i.wx = icmp ugt i64 %i.wo, 4294967295
  %invariant.op = or i1 %i.wx, %ident.check
  %n.vec = and i64 %wide.trip.count.i208, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i208
  %xtraiter = and i64 %wide.trip.count.i208, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %13 = add nsw i64 %wide.trip.count.i208, -1
  br label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %._crit_edge.i217, %.lr.ph.preheader.i206
  %indvars.iv27.i210 = phi i64 [ 0, %.lr.ph.preheader.i206 ], [ %indvars.iv.next28.i218, %._crit_edge.i217 ] ; 9 uses
  %i.wy = trunc i64 %indvars.iv27.i210 to i32
  %i.wz = mul i32 %i.wj, %i.wy
  %i.xa = add i32 %i.wz, %i.wv
  %i.xb = sext i32 %i.xa to i64
  %i.xc = shl nsw i64 %i.xb, 2                    ; 2 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.xc
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.xc
  %indvars34.i211 = trunc i64 %indvars.iv27.i210 to i32
  %i.xd = mul nsw i32 %i.wj, %indvars34.i211
  %i.xe = add i32 %i.xd, %3                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i209
  %i.xf = trunc i64 %indvars.iv27.i210 to i32
  %i.xg = mul i32 %i.wj, %i.xf
  %i.xh = add i32 %i.xg, %i.wp                    ; 2 uses
  %i.xi = sub i32 %i.xh, %i.ww
  %i.xj = icmp sgt i32 %i.xi, %i.xh
  %.reass = or i1 %i.xj, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %0, %scevgep279
  %bound1 = icmp ult ptr %scevgep277, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.xk = add nuw i64 %indvars.iv27.i210, %n.vec
  %i.xl = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xm = getelementptr [4 x i8], ptr %i.xl, i64 %index ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %wide.load = load <4 x i32>, ptr %i.xm, align 4, !tbaa !9, !alias.scope !120, !noalias !121
  %wide.load280 = load <4 x i32>, ptr %i.xn, align 4, !tbaa !9, !alias.scope !120, !noalias !121
  %i.xo = trunc i64 %index to i32
  %i.xp = xor i32 %i.xo, -1
  %i.xq = add i32 %i.xe, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xr ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %i.xs, i64 -12
  %i.xu = getelementptr inbounds i8, ptr %i.xs, i64 -28
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load280, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.xt, align 4, !tbaa !9, !alias.scope !121
  store <4 x i32> %reverse281, ptr %i.xu, align 4, !tbaa !9, !alias.scope !121
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xv = icmp eq i64 %index.next, %n.vec
  br i1 %i.xv, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i217, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i209, %middle.block
  %indvars.iv29.i212.ph = phi i64 [ %indvars.iv27.i210, %vector.memcheck ], [ %indvars.iv27.i210, %vector.scevcheck ], [ %indvars.iv27.i210, %.lr.ph.i209 ], [ %i.xk, %middle.block ] ; 3 uses
  %indvars.iv.i213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i209 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212.ph
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = trunc nuw nsw i64 %indvars.iv.i213.ph to i32
  %i.xz = xor i32 %i.xy, -1
  %i.ya = add i32 %i.xe, %i.xz
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yb
  store i32 %i.xx, ptr %i.yc, align 4, !tbaa !9
  %indvars.iv.next30.i214.prol = add nsw i64 %indvars.iv29.i212.ph, %i.wn
  %indvars.iv.next.i215.prol = or disjoint i64 %indvars.iv.i213.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv29.i212.unr = phi i64 [ %indvars.iv29.i212.ph, %scalar.ph.preheader ], [ %indvars.iv.next30.i214.prol, %scalar.ph.prol ]
  %indvars.iv.i213.unr = phi i64 [ %indvars.iv.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i215.prol, %scalar.ph.prol ]
  %i.yd = icmp eq i64 %indvars.iv.i213.ph, %13
  br i1 %i.yd, label %._crit_edge.i217, label %scalar.ph

._crit_edge.i217:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28.i218 = add nuw nsw i64 %indvars.iv27.i210, 1 ; 2 uses
  %exitcond36.not.i219 = icmp eq i64 %indvars.iv.next28.i218, %wide.trip.count35.i207
  br i1 %exitcond36.not.i219, label %rotate90_l8.exit, label %.lr.ph.i209, !llvm.loop !98

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv29.i212 = phi i64 [ %indvars.iv.next30.i214.1, %scalar.ph ], [ %indvars.iv29.i212.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i215.1, %scalar.ph ], [ %indvars.iv.i213.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !9
  %i.yg = trunc i64 %indvars.iv.i213 to i32
  %i.yh = xor i32 %i.yg, -1
  %i.yi = add i32 %i.xe, %i.yh
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yj
  store i32 %i.yf, ptr %i.yk, align 4, !tbaa !9
  %indvars.iv.next30.i214 = add nsw i64 %indvars.iv29.i212, %i.wn ; 2 uses
  %i.yl = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i214
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !9
  %i.yn = trunc i64 %indvars.iv.i213 to i32
  %reass.sub = sub i32 %i.xe, %i.yn
  %i.yo = add i32 %reass.sub, -2
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yp
  store i32 %i.ym, ptr %i.yq, align 4, !tbaa !9
  %indvars.iv.next30.i214.1 = add nsw i64 %indvars.iv.next30.i214, %i.wn
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %exitcond.not.i216.1 = icmp eq i64 %indvars.iv.next.i215.1, %wide.trip.count.i208
  br i1 %exitcond.not.i216.1, label %._crit_edge.i217, label %scalar.ph, !llvm.loop !99

rotate90_l8.exit:                                 ; preds = %._crit_edge.i217, %._crit_edge.i202, %._crit_edge.i186, %._crit_edge.i172, %._crit_edge.i158, %._crit_edge.i145, %._crit_edge.i134, %._crit_edge.i124, %._crit_edge.i112, %._crit_edge.i97, %._crit_edge.i87, %._crit_edge.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.l, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = !{!16}
!22 = !{!17}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !12, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !12, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !10, !11, !12}
!35 = distinct !{!35, !10, !11, !12}
!36 = distinct !{!36, !103}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !10, !11, !12}
!43 = distinct !{!43, !10, !11, !12}
!44 = distinct !{!44, !103}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10, !11}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !10, !11, !12}
!53 = distinct !{!53, !103}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !10, !11, !12}
!60 = distinct !{!60, !10, !11, !12}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10, !11}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !10, !11, !12}
!67 = distinct !{!67, !10, !11, !12}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10, !11}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !10, !11, !12}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10, !11}
!78 = distinct !{!78, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !10, !11, !12}
!82 = distinct !{!82, !10, !11, !12}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10, !11}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !10, !11, !12}
!89 = distinct !{!89, !10, !11, !12}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10, !11}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, !10}
!94 = distinct !{!94, !"LVerDomain"}
!95 = distinct !{!95, !94}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !10, !11, !12}
!98 = distinct !{!98, !10}
!99 = distinct !{!99, !10, !11}
!100 = !{!32}
!101 = !{!33}
!102 = !{!"branch_weights", i32 4, i32 28}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!40}
!105 = !{!41}
!106 = !{!"branch_weights", i32 4, i32 12}
!107 = !{!50}
!108 = !{!51}
!109 = !{!57}
!110 = !{!58}
!111 = !{!"branch_weights", i32 8, i32 24}
!112 = !{!64}
!113 = !{!65}
!114 = !{!73}
!115 = !{!74}
!116 = !{!79}
!117 = !{!80}
!118 = !{!86}
!119 = !{!87}
!120 = !{!95}
!121 = !{!96}
end_hunk_0
