Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hungarian_wrap?download=true
inline.NumInlined: 466
inline.NumDeleted: 204
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3vas2ot13HungarianAlgo14SolveHungarianEv:bb.a
  %indvars.iv498 = phi i64 [ 0, %.preheader390.preheader ], [ %indvars.iv.next499, %._crit_edge ] ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph408, label %._crit_edge

.lr.ph408:                                        ; preds = %.preheader390
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv498
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !51
  %.pre = load i32, ptr %i.ca, align 8, !tbaa !32
  br label %bb.s

.preheader389:                                    ; preds = %._crit_edge
  %i.ch = icmp sgt i32 %i.cn, 0
  br i1 %i.ch, label %.lr.ph418, label %.preheader385

.lr.ph418:                                        ; preds = %.preheader391, %.preheader389
  %i.ci = phi i32 [ %i.cn, %.preheader389 ], [ %i.bx, %.preheader391 ]
  %i.cj = phi i32 [ %i.cm, %.preheader389 ], [ %i.bi, %.preheader391 ] ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !48  ; 7 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !51
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %bb.s
  %.pre580 = load i32, ptr %i.a, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader390
  %i.cm = phi i32 [ %.pre580, %._crit_edge.loopexit ], [ %i.cb, %.preheader390 ] ; 4 uses
  %i.cn = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ %i.cc, %.preheader390 ] ; 4 uses
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %i.co = sext i32 %i.cm to i64
  %i.cp = icmp slt i64 %indvars.iv.next499, %i.co
  br i1 %i.cp, label %.preheader390, label %.preheader389, !llvm.loop !76

bb.s:                                             ; preds = %.lr.ph408, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  store i32 %.pre, ptr %i.cq, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.s, label %._crit_edge.loopexit, !llvm.loop !77

.preheader386:                                    ; preds = %.loopexit388
  %i.cu = icmp sgt i32 %i.er, 0
  br i1 %i.cu, label %.lr.ph421, label %.preheader385

.lr.ph421:                                        ; preds = %.preheader386
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !34 ; 2 uses
  %i.cx = zext nneg i32 %i.er to i64              ; 4 uses
  %i.cy = shl nuw nsw i64 %i.cx, 2                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 -1, i64 %i.cy, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.av, i8 -1, i64 %i.cy, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bb, i8 0, i64 %i.cy, i1 false), !tbaa !9
  %min.iters.check = icmp ult i32 %i.er, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph421
  %n.vec = and i64 %i.cx, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4, !tbaa !9
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  br i1 %cmp.n, label %.preheader385, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph421, %middle.block
  %indvars.iv510.ph = phi i64 [ 0, %.lr.ph421 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.t:                                             ; preds = %.lr.ph418, %.loopexit388
  %i.dc = phi i32 [ %i.ci, %.lr.ph418 ], [ %i.er, %.loopexit388 ] ; 2 uses
  %i.dd = phi i32 [ %i.cj, %.lr.ph418 ], [ %i.es, %.loopexit388 ] ; 4 uses
  %i.de = phi i32 [ %i.cj, %.lr.ph418 ], [ %i.et, %.loopexit388 ] ; 4 uses
  %indvars.iv507 = phi i64 [ 0, %.lr.ph418 ], [ %indvars.iv.next508, %.loopexit388 ] ; 8 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv507
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !9  ; 3 uses
  %i.dh = icmp sgt i32 %i.de, 1
  br i1 %i.dh, label %.lr.ph413.preheader, label %._crit_edge414

.lr.ph413.preheader:                              ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %i.de to i64
  %i.di = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.di, 3                    ; 3 uses
  %i.dj = add nsw i32 %i.de, -2
  %i.dk = icmp ult i32 %i.dj, 3
  br i1 %i.dk, label %.lr.ph413.epil.preheader, label %.lr.ph413.preheader.new

.lr.ph413.preheader.new:                          ; preds = %.lr.ph413.preheader
  %unroll_iter = and i64 %i.di, -4
  br label %.lr.ph413

._crit_edge414.loopexit.unr-lcssa:                ; preds = %.lr.ph413
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge414, label %.lr.ph413.epil.preheader

.lr.ph413.epil.preheader:                         ; preds = %._crit_edge414.loopexit.unr-lcssa, %.lr.ph413.preheader
  %indvars.iv501.epil.init = phi i64 [ 1, %.lr.ph413.preheader ], [ %indvars.iv.next502.3, %._crit_edge414.loopexit.unr-lcssa ]
  %.0182410.epil.init = phi i32 [ %i.dg, %.lr.ph413.preheader ], [ %spec.select.3, %._crit_edge414.loopexit.unr-lcssa ]
  %lcmp.mod689 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod689)
  br label %.lr.ph413.epil

.lr.ph413.epil:                                   ; preds = %.lr.ph413.epil, %.lr.ph413.epil.preheader
  %indvars.iv501.epil = phi i64 [ %indvars.iv501.epil.init, %.lr.ph413.epil.preheader ], [ %indvars.iv.next502.epil, %.lr.ph413.epil ] ; 2 uses
  %.0182410.epil = phi i32 [ %.0182410.epil.init, %.lr.ph413.epil.preheader ], [ %spec.select.epil, %.lr.ph413.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph413.epil.preheader ], [ %epil.iter.next, %.lr.ph413.epil ]
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv501.epil
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv507
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !9
  %spec.select.epil = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %.0182410.epil) ; 2 uses
  %indvars.iv.next502.epil = add nuw nsw i64 %indvars.iv501.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge414, label %.lr.ph413.epil, !llvm.loop !79

._crit_edge414:                                   ; preds = %._crit_edge414.loopexit.unr-lcssa, %.lr.ph413.epil, %bb.t
  %.0182.lcssa = phi i32 [ %i.dg, %bb.t ], [ %spec.select.3, %._crit_edge414.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph413.epil ] ; 2 uses
  %.not243 = icmp eq i32 %.0182.lcssa, 0
  br i1 %.not243, label %.loopexit388, label %.preheader387

.preheader387:                                    ; preds = %._crit_edge414
  %i.dp = icmp sgt i32 %i.dd, 0
  br i1 %i.dp, label %.lr.ph416, label %.loopexit388

.lr.ph413:                                        ; preds = %.lr.ph413, %.lr.ph413.preheader.new
  %indvars.iv501 = phi i64 [ 1, %.lr.ph413.preheader.new ], [ %indvars.iv.next502.3, %.lr.ph413 ] ; 5 uses
  %.0182410 = phi i32 [ %i.dg, %.lr.ph413.preheader.new ], [ %spec.select.3, %.lr.ph413 ]
  %niter = phi i64 [ 0, %.lr.ph413.preheader.new ], [ %niter.next.3, %.lr.ph413 ]
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv501
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv507
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %.0182410)
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv501
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv507
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !9
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %spec.select)
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv501
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !51
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv507
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !9
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %spec.select.1)
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv501
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv507
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %i.ei, i32 %spec.select.2) ; 3 uses
  %indvars.iv.next502.3 = add nuw nsw i64 %indvars.iv501, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge414.loopexit.unr-lcssa, label %.lr.ph413, !llvm.loop !80

.lr.ph416:                                        ; preds = %.preheader387, %.lr.ph416
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %.lr.ph416 ], [ 0, %.preheader387 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv504
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv507 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = sub nsw i32 %i.em, %.0182.lcssa
  store i32 %i.en, ptr %i.el, align 4, !tbaa !9
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next505, %i.ep
  br i1 %i.eq, label %.lr.ph416, label %.loopexit388.loopexit, !llvm.loop !81

.loopexit388.loopexit:                            ; preds = %.lr.ph416
  %.pre581 = load i32, ptr %i.aj, align 4, !tbaa !55
  br label %.loopexit388

.loopexit388:                                     ; preds = %.loopexit388.loopexit, %.preheader387, %._crit_edge414
  %i.er = phi i32 [ %.pre581, %.loopexit388.loopexit ], [ %i.dc, %.preheader387 ], [ %i.dc, %._crit_edge414 ] ; 8 uses
  %i.es = phi i32 [ %i.eo, %.loopexit388.loopexit ], [ %i.dd, %.preheader387 ], [ %i.dd, %._crit_edge414 ] ; 4 uses
  %i.et = phi i32 [ %i.eo, %.loopexit388.loopexit ], [ %i.dd, %.preheader387 ], [ %i.de, %._crit_edge414 ]
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.eu = sext i32 %i.er to i64
  %i.ev = icmp slt i64 %indvars.iv.next508, %i.eu
  br i1 %i.ev, label %bb.t, label %.preheader386, !llvm.loop !82

.preheader385:                                    ; preds = %scalar.ph, %middle.block, %.preheader389, %.preheader392.thread, %.preheader392, %.preheader386
  %i.ew = phi i1 [ false, %.preheader389 ], [ false, %.preheader386 ], [ false, %.preheader392 ], [ false, %.preheader392.thread ], [ true, %middle.block ], [ true, %scalar.ph ] ; 5 uses
  %.lcssa403607 = phi i32 [ %i.cn, %.preheader389 ], [ %i.er, %.preheader386 ], [ %i.bm, %.preheader392 ], [ %i.bo, %.preheader392.thread ], [ %i.er, %middle.block ], [ %i.er, %scalar.ph ] ; 7 uses
  %i.ex = phi i32 [ %i.cm, %.preheader389 ], [ %i.es, %.preheader386 ], [ %i.bi, %.preheader392 ], [ %i.bi, %.preheader392.thread ], [ %i.es, %middle.block ], [ %i.es, %scalar.ph ] ; 4 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph435, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit267

.lr.ph435:                                        ; preds = %.preheader385
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.fa = icmp sgt i32 %.lcssa403607, 1
  %wide.trip.count528 = zext nneg i32 %i.ex to i64 ; 3 uses
  %wide.trip.count518 = zext i32 %.lcssa403607 to i64 ; 8 uses
  %wide.trip.count523 = zext nneg i32 %.lcssa403607 to i64
  %i.fb = add nsw i64 %wide.trip.count518, -1     ; 2 uses
  %min.iters.check645 = icmp ult i32 %.lcssa403607, 9
  %n.vec647 = and i64 %i.fb, -8                   ; 3 uses
  %i.fc = or disjoint i64 %n.vec647, 1
  %cmp.n656 = icmp eq i64 %i.fb, %n.vec647
  br label %bb.u

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %scalar.ph ], [ %indvars.iv510.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv510
  store i32 %i.cw, ptr %i.fd, align 4, !tbaa !9
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, %i.cx
  br i1 %exitcond514.not, label %.preheader385, label %scalar.ph, !llvm.loop !83

bb.u:                                             ; preds = %.lr.ph435, %bb.y
  %indvars.iv525 = phi i64 [ 0, %.lr.ph435 ], [ %indvars.iv.next526, %bb.y ] ; 7 uses
  %.0176434 = phi i32 [ 0, %.lr.ph435 ], [ %.1177, %bb.y ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %indvars.iv525
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !51 ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !9  ; 3 uses
  br i1 %i.fa, label %.lr.ph425.preheader, label %._crit_edge426

.lr.ph425.preheader:                              ; preds = %bb.u
  br i1 %min.iters.check645, label %.lr.ph425.preheader678, label %vector.ph646

vector.ph646:                                     ; preds = %.lr.ph425.preheader
  %broadcast.splatinsert648 = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat649 = shufflevector <4 x i32> %broadcast.splatinsert648, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body650

vector.body650:                                   ; preds = %vector.body650, %vector.ph646
  %index651 = phi i64 [ 0, %vector.ph646 ], [ %index.next654, %vector.body650 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat649, %vector.ph646 ], [ %i.fk, %vector.body650 ]
  %vec.phi652 = phi <4 x i32> [ %broadcast.splat649, %vector.ph646 ], [ %i.fl, %vector.body650 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index651 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %wide.load = load <4 x i32>, ptr %i.fi, align 4, !tbaa !9
  %wide.load653 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !9
  %i.fk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.fl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load653, <4 x i32> %vec.phi652) ; 2 uses
  %index.next654 = add nuw i64 %index651, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next654, %n.vec647
  br i1 %i.fm, label %middle.block655, label %vector.body650, !llvm.loop !84

middle.block655:                                  ; preds = %vector.body650
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fk, <4 x i32> %i.fl)
  %i.fn = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n656, label %._crit_edge426, label %.lr.ph425.preheader678

.lr.ph425.preheader678:                           ; preds = %.lr.ph425.preheader, %middle.block655
  %indvars.iv515.ph = phi i64 [ 1, %.lr.ph425.preheader ], [ %i.fc, %middle.block655 ]
  %.0172423.ph = phi i32 [ %i.fg, %.lr.ph425.preheader ], [ %i.fn, %middle.block655 ]
  br label %.lr.ph425

.lr.ph425:                                        ; preds = %.lr.ph425.preheader678, %.lr.ph425
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %.lr.ph425 ], [ %indvars.iv515.ph, %.lr.ph425.preheader678 ] ; 2 uses
  %.0172423 = phi i32 [ %spec.select375, %.lr.ph425 ], [ %.0172423.ph, %.lr.ph425.preheader678 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv515
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !9
  %spec.select375 = tail call i32 @llvm.smin.i32(i32 %i.fp, i32 %.0172423) ; 2 uses
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge426, label %.lr.ph425, !llvm.loop !85

._crit_edge426:                                   ; preds = %.lr.ph425, %middle.block655, %bb.u
  %.0172.lcssa = phi i32 [ %i.fg, %bb.u ], [ %i.fn, %middle.block655 ], [ %spec.select375, %.lr.ph425 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv525
  store i32 %.0172.lcssa, ptr %i.fq, align 4, !tbaa !9
  br i1 %i.ew, label %.lr.ph431, label %.critedge

.lr.ph431:                                        ; preds = %._crit_edge426, %bb.x
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %bb.x ], [ 0, %._crit_edge426 ] ; 5 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv520
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.ft = icmp eq i32 %.0172.lcssa, %i.fs
  br i1 %i.ft, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph431
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv520
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !9
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv520
  %i.fy = trunc nuw nsw i64 %indvars.iv520 to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv525
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !9
  %i.ga = trunc nuw nsw i64 %indvars.iv525 to i32
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !9
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph431, %bb.v
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %.critedge, label %.lr.ph431, !llvm.loop !86

.critedge:                                        ; preds = %bb.x, %._crit_edge426
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv525
  store i32 -1, ptr %i.gb, align 4, !tbaa !9
  %i.gc = add nsw i32 %.0176434, 1
  %i.gd = sext i32 %.0176434 to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.gd
  %i.gf = trunc nuw nsw i64 %indvars.iv525 to i32
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %.critedge
  %.1177 = phi i32 [ %i.gc, %.critedge ], [ %.0176434, %bb.w ] ; 4 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528
  br i1 %exitcond529.not, label %._crit_edge436, label %bb.u, !llvm.loop !87

._crit_edge436:                                   ; preds = %bb.y
  %i.gg = icmp eq i32 %.1177, 0
  br i1 %i.gg, label %.lr.ph477, label %.preheader384

.preheader384:                                    ; preds = %._crit_edge436
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.gi = zext i32 %.lcssa403607 to i64           ; 5 uses
  %i.gj = shl nuw nsw i64 %i.gi, 2
  %1 = add nsw i64 %wide.trip.count518, -1        ; 2 uses
  %2 = add nsw i64 %wide.trip.count518, -2
  %xtraiter690 = and i64 %wide.trip.count518, 3   ; 3 uses
  %i.gk = icmp ult i64 %1, 3
  %unroll_iter695 = and i64 %wide.trip.count518, 4294967292
  %lcmp.mod692.not = icmp eq i64 %xtraiter690, 0
  %lcmp.mod694 = icmp ne i64 %xtraiter690, 0
  %min.iters.check659 = icmp ult i32 %.lcssa403607, 8
  %n.vec661 = and i64 %wide.trip.count518, 4294967288 ; 3 uses
  %cmp.n668 = icmp eq i64 %n.vec661, %wide.trip.count518
  %xtraiter707 = and i64 %wide.trip.count528, 1
  %i.gl = icmp eq i32 %i.ex, 1
  %unroll_iter712 = and i64 %wide.trip.count528, 2147483646
  %lcmp.mod709.not = icmp eq i64 %xtraiter707, 0
  %lcmp.mod711 = trunc i32 %i.ex to i1
  br label %.loopexit381

.loopexit381.loopexit.unr-lcssa:                  ; preds = %bb.ar
  br i1 %lcmp.mod709.not, label %.loopexit381.loopexit, label %.lr.ph474.epil.preheader

.lr.ph474.epil.preheader:                         ; preds = %.loopexit381.loopexit.unr-lcssa, %.lr.ph474.preheader
  %indvars.iv566.epil.init = phi i64 [ 0, %.lr.ph474.preheader ], [ %indvars.iv.next567.1, %.loopexit381.loopexit.unr-lcssa ] ; 2 uses
  %.13472.epil.init = phi i32 [ 0, %.lr.ph474.preheader ], [ %.14.1, %.loopexit381.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod711)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv566.epil.init
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %bb.z, label %.loopexit381.loopexit

bb.z:                                             ; preds = %.lr.ph474.epil.preheader
  %i.gp = add nsw i32 %.13472.epil.init, 1
  %i.gq = sext i32 %.13472.epil.init to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.gq
  %i.gs = trunc nuw nsw i64 %indvars.iv566.epil.init to i32
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !9
  br label %.loopexit381.loopexit

.loopexit381.loopexit:                            ; preds = %.lr.ph474.epil.preheader, %bb.z, %.loopexit381.loopexit.unr-lcssa
  %.14.lcssa = phi i32 [ %.14.1, %.loopexit381.loopexit.unr-lcssa ], [ %i.gp, %bb.z ], [ %.13472.epil.init, %.lr.ph474.epil.preheader ]
  br label %.loopexit381, !llvm.loop !88

.loopexit381:                                     ; preds = %.loopexit381.loopexit, %.preheader384
  %.0208 = phi i32 [ %.1177, %.preheader384 ], [ %i.mb, %.loopexit381.loopexit ]
  %.2178 = phi i32 [ %.1177, %.preheader384 ], [ %.14.lcssa, %.loopexit381.loopexit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit381
  %.3179 = phi i32 [ %.2178, %.loopexit381 ], [ %.3179.be, %.loopexit.backedge ] ; 4 uses
  %.0170 = phi i32 [ 0, %.loopexit381 ], [ %.3.lcssa, %.loopexit.backedge ] ; 2 uses
  %i.gt = icmp slt i32 %.0170, %.3179
  br i1 %i.gt, label %.lr.ph448, label %._crit_edge449

.lr.ph448:                                        ; preds = %.loopexit
  br i1 %i.ew, label %.lr.ph442.us.preheader, label %._crit_edge449.thread

._crit_edge449.thread:                            ; preds = %.lr.ph448
  %i.gu = load i32, ptr %i.gh, align 8, !tbaa !34
  br label %.preheader379

.lr.ph442.us.preheader:                           ; preds = %.lr.ph448
  %i.gv = zext nneg i32 %.0170 to i64
  br label %.lr.ph442.us

.lr.ph442.us:                                     ; preds = %.lr.ph442.us.preheader, %._crit_edge443.us
  %indvars.iv535 = phi i64 [ %i.gv, %.lr.ph442.us.preheader ], [ %indvars.iv.next536, %._crit_edge443.us ] ; 2 uses
  %.4445.us = phi i32 [ %.3179, %.lr.ph442.us.preheader ], [ %.8.us, %._crit_edge443.us ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv535
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !9  ; 4 uses
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph442.us, %.thread.us
  %indvars.iv530 = phi i64 [ 0, %.lr.ph442.us ], [ %indvars.iv.next531, %.thread.us ] ; 8 uses
  %.5440.us = phi i32 [ %.4445.us, %.lr.ph442.us ], [ %.8.us, %.thread.us ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv530 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !9  ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.thread.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %i.gy
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !51
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv530
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !9
  %i.hj = sub nsw i32 %i.hi, %i.ha
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv530
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9
  %i.hm = add nsw i32 %i.hj, %i.hl                ; 3 uses
  %.not242.us = icmp slt i32 %i.hm, %i.hc
  br i1 %.not242.us, label %bb.ac, label %.thread.us

bb.ac:                                            ; preds = %bb.ab
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.hm, ptr %i.hb, align 4, !tbaa !9
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv530
  store i32 %i.gx, ptr %i.ho, align 4, !tbaa !9
  br label %.thread.us

bb.ae:                                            ; preds = %bb.ac
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv530
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9  ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %.thread359.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.hb, align 4, !tbaa !9
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv530
  store i32 %i.gx, ptr %i.hs, align 4, !tbaa !9
  %i.ht = add nuw nsw i32 %.5440.us, 1
  %i.hu = zext nneg i32 %.5440.us to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.hu
  store i32 %i.hq, ptr %i.hv, align 4, !tbaa !9
  br label %.thread.us

.thread.us:                                       ; preds = %bb.af, %bb.ad, %bb.ab, %bb.aa
  %.8.us = phi i32 [ %.5440.us, %bb.aa ], [ %.5440.us, %bb.ad ], [ %i.ht, %bb.af ], [ %.5440.us, %bb.ab ] ; 4 uses
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %i.gi
  br i1 %exitcond534.not, label %._crit_edge443.us, label %bb.aa, !llvm.loop !89

._crit_edge443.us:                                ; preds = %.thread.us
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.hw = trunc nuw i64 %indvars.iv.next536 to i32
  %i.hx = icmp sgt i32 %.8.us, %i.hw
  br i1 %i.hx, label %.lr.ph442.us, label %._crit_edge449

._crit_edge449:                                   ; preds = %._crit_edge443.us, %.loopexit
  %.4.lcssa = phi i32 [ %.3179, %.loopexit ], [ %.8.us, %._crit_edge443.us ] ; 3 uses
  %i.hy = load i32, ptr %i.gh, align 8, !tbaa !34 ; 3 uses
  br i1 %i.ew, label %.lr.ph456.preheader, label %.preheader379

.lr.ph456.preheader:                              ; preds = %._crit_edge449
  br i1 %i.gk, label %.lr.ph456.epil.preheader, label %.lr.ph456

.preheader379.loopexit.unr-lcssa:                 ; preds = %.lr.ph456
  br i1 %lcmp.mod692.not, label %.preheader379, label %.lr.ph456.epil.preheader

.lr.ph456.epil.preheader:                         ; preds = %.preheader379.loopexit.unr-lcssa, %.lr.ph456.preheader
  %indvars.iv538.epil.init = phi i64 [ 0, %.lr.ph456.preheader ], [ %indvars.iv.next539.3, %.preheader379.loopexit.unr-lcssa ]
  %.0169453.epil.init = phi i32 [ %i.hy, %.lr.ph456.preheader ], [ %.1.3, %.preheader379.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod694)
  br label %.lr.ph456.epil

.lr.ph456.epil:                                   ; preds = %.lr.ph456.epil, %.lr.ph456.epil.preheader
  %indvars.iv538.epil = phi i64 [ %indvars.iv.next539.epil, %.lr.ph456.epil ], [ %indvars.iv538.epil.init, %.lr.ph456.epil.preheader ] ; 2 uses
  %.0169453.epil = phi i32 [ %.1.epil, %.lr.ph456.epil ], [ %.0169453.epil.init, %.lr.ph456.epil.preheader ] ; 2 uses
  %epil.iter691 = phi i64 [ %epil.iter691.next, %.lr.ph456.epil ], [ 0, %.lr.ph456.epil.preheader ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv538.epil
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  %.not241.not.epil = icmp eq i32 %i.ia, 0
  %i.ib = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %.0169453.epil)
  %.1.epil = select i1 %.not241.not.epil, i32 %.0169453.epil, i32 %i.ib ; 2 uses
  %indvars.iv.next539.epil = add nuw nsw i64 %indvars.iv538.epil, 1
  %epil.iter691.next = add i64 %epil.iter691, 1   ; 2 uses
  %epil.iter691.cmp.not = icmp eq i64 %epil.iter691.next, %xtraiter690
  br i1 %epil.iter691.cmp.not, label %.preheader379, label %.lr.ph456.epil, !llvm.loop !90

.preheader379:                                    ; preds = %.preheader379.loopexit.unr-lcssa, %.lr.ph456.epil, %._crit_edge449.thread, %._crit_edge449
  %.4.lcssa610 = phi i32 [ %.4.lcssa, %._crit_edge449 ], [ %.3179, %._crit_edge449.thread ], [ %.4.lcssa, %.lr.ph456.epil ], [ %.4.lcssa, %.preheader379.loopexit.unr-lcssa ] ; 7 uses
  %.0169.lcssa = phi i32 [ %i.hy, %._crit_edge449 ], [ %i.gu, %._crit_edge449.thread ], [ %.1.3, %.preheader379.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph456.epil ] ; 11 uses
  %i.ic = icmp sgt i32 %.4.lcssa610, 0
  br i1 %i.ic, label %.lr.ph459.preheader, label %.preheader377

.lr.ph459.preheader:                              ; preds = %.preheader379
  %wide.trip.count546 = zext nneg i32 %.4.lcssa610 to i64 ; 2 uses
  %xtraiter697 = and i64 %wide.trip.count546, 3   ; 3 uses
  %i.id = icmp ult i32 %.4.lcssa610, 4
  br i1 %i.id, label %.lr.ph459.epil.preheader, label %.lr.ph459.preheader.new

.lr.ph459.preheader.new:                          ; preds = %.lr.ph459.preheader
  %unroll_iter701 = and i64 %wide.trip.count546, 2147483644
  br label %.lr.ph459

.lr.ph456:                                        ; preds = %.lr.ph456.preheader, %.lr.ph456
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %.lr.ph456 ], [ 0, %.lr.ph456.preheader ] ; 5 uses
  %.0169453 = phi i32 [ %.1.3, %.lr.ph456 ], [ %i.hy, %.lr.ph456.preheader ] ; 2 uses
  %niter696 = phi i64 [ %niter696.next.3, %.lr.ph456 ], [ 0, %.lr.ph456.preheader ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv538
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !9  ; 2 uses
  %.not241.not = icmp eq i32 %i.if, 0
  %i.ig = tail call i32 @llvm.smin.i32(i32 %i.if, i32 %.0169453)
  %.1 = select i1 %.not241.not, i32 %.0169453, i32 %i.ig ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv538
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !9  ; 2 uses
  %.not241.not.1 = icmp eq i32 %i.ij, 0
  %i.ik = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 %.1)
  %.1.1 = select i1 %.not241.not.1, i32 %.1, i32 %i.ik ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv538
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !9  ; 2 uses
  %.not241.not.2 = icmp eq i32 %i.in, 0
  %i.io = tail call i32 @llvm.smin.i32(i32 %i.in, i32 %.1.1)
  %.1.2 = select i1 %.not241.not.2, i32 %.1.1, i32 %i.io ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv538
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !9  ; 2 uses
  %.not241.not.3 = icmp eq i32 %i.ir, 0
  %i.is = tail call i32 @llvm.smin.i32(i32 %i.ir, i32 %.1.2)
  %.1.3 = select i1 %.not241.not.3, i32 %.1.2, i32 %i.is ; 3 uses
  %indvars.iv.next539.3 = add nuw nsw i64 %indvars.iv538, 4 ; 2 uses
  %niter696.next.3 = add i64 %niter696, 4         ; 2 uses
  %niter696.ncmp.3 = icmp eq i64 %niter696.next.3, %unroll_iter695
  br i1 %niter696.ncmp.3, label %.preheader379.loopexit.unr-lcssa, label %.lr.ph456, !llvm.loop !91

.preheader377.loopexit.unr-lcssa:                 ; preds = %.lr.ph459
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  br i1 %lcmp.mod699.not, label %.preheader377, label %.lr.ph459.epil.preheader

.lr.ph459.epil.preheader:                         ; preds = %.preheader377.loopexit.unr-lcssa, %.lr.ph459.preheader
  %indvars.iv543.epil.init = phi i64 [ 0, %.lr.ph459.preheader ], [ %indvars.iv.next544.3, %.preheader377.loopexit.unr-lcssa ]
  %lcmp.mod700 = icmp ne i64 %xtraiter697, 0
  tail call void @llvm.assume(i1 %lcmp.mod700)
  br label %.lr.ph459.epil

.lr.ph459.epil:                                   ; preds = %.lr.ph459.epil, %.lr.ph459.epil.preheader
  %indvars.iv543.epil = phi i64 [ %indvars.iv543.epil.init, %.lr.ph459.epil.preheader ], [ %indvars.iv.next544.epil, %.lr.ph459.epil ] ; 2 uses
  %epil.iter698 = phi i64 [ 0, %.lr.ph459.epil.preheader ], [ %epil.iter698.next, %.lr.ph459.epil ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv543.epil
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !9
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !9
  %i.iy = add nsw i32 %i.ix, %.0169.lcssa
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !9
  %indvars.iv.next544.epil = add nuw nsw i64 %indvars.iv543.epil, 1
  %epil.iter698.next = add i64 %epil.iter698, 1   ; 2 uses
  %epil.iter698.cmp.not = icmp eq i64 %epil.iter698.next, %xtraiter697
  br i1 %epil.iter698.cmp.not, label %.preheader377, label %.lr.ph459.epil, !llvm.loop !92

.preheader377:                                    ; preds = %.preheader377.loopexit.unr-lcssa, %.lr.ph459.epil, %.preheader379
  %.3.lcssa = phi i32 [ 0, %.preheader379 ], [ %.4.lcssa610, %.lr.ph459.epil ], [ %.4.lcssa610, %.preheader377.loopexit.unr-lcssa ]
  br i1 %i.ew, label %.lr.ph463, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.ao, %.preheader377
  %.3179.be = phi i32 [ %.4.lcssa610, %.preheader377 ], [ %.11, %bb.ao ]
  br label %.loopexit

.lr.ph459:                                        ; preds = %.lr.ph459, %.lr.ph459.preheader.new
  %indvars.iv543 = phi i64 [ 0, %.lr.ph459.preheader.new ], [ %indvars.iv.next544.3, %.lr.ph459 ] ; 5 uses
  %niter702 = phi i64 [ 0, %.lr.ph459.preheader.new ], [ %niter702.next.3, %.lr.ph459 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv543
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !9
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9
  %i.je = add nsw i32 %i.jd, %.0169.lcssa
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !9
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv543
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !9
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !9
  %i.jl = add nsw i32 %i.jk, %.0169.lcssa
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !9
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv543
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !9
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !9
  %i.js = add nsw i32 %i.jr, %.0169.lcssa
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv543
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !9
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9
  %i.jz = add nsw i32 %i.jy, %.0169.lcssa
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !9
  %indvars.iv.next544.3 = add nuw nsw i64 %indvars.iv543, 4 ; 2 uses
  %niter702.next.3 = add i64 %niter702, 4         ; 2 uses
  %niter702.ncmp.3 = icmp eq i64 %niter702.next.3, %unroll_iter701
  br i1 %niter702.ncmp.3, label %.preheader377.loopexit.unr-lcssa, label %.lr.ph459, !llvm.loop !93

.lr.ph463:                                        ; preds = %.preheader377, %bb.ao
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %bb.ao ], [ 1, %.preheader377 ] ; 5 uses
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %bb.ao ], [ 0, %.preheader377 ] ; 9 uses
  %.10462 = phi i32 [ %.11, %bb.ao ], [ %.4.lcssa610, %.preheader377 ] ; 4 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv548 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !9  ; 3 uses
  %.not240 = icmp eq i32 %i.kb, 0
  br i1 %.not240, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph463
  %i.kc = sub nsw i32 %i.kb, %.0169.lcssa
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !9
  %i.kd = icmp eq i32 %i.kb, %.0169.lcssa
  br i1 %i.kd, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv548
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !9  ; 4 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv548
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !9  ; 2 uses
  %i.ki = icmp slt i32 %i.kh, 0
  br i1 %i.ki, label %.loopexit378, label %bb.am

.loopexit378:                                     ; preds = %bb.ah
  %i.kj = trunc nuw nsw i64 %indvars.iv548 to i32 ; 4 uses
  %.0167465 = add nuw nsw i32 %i.kj, 1
  %i.kk = icmp slt i32 %.0167465, %.lcssa403607
  br i1 %i.kk, label %.lr.ph467.preheader, label %.thread359

.lr.ph467.preheader:                              ; preds = %.loopexit378
  %3 = sub i64 %1, %indvars.iv548
  %xtraiter705 = and i64 %3, 1
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %.lr.ph467.prol.loopexit, label %.lr.ph467.prol

.lr.ph467.prol:                                   ; preds = %.lr.ph467.preheader
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv553
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.ai, label %.lr.ph467.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %.lr.ph467.prol
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv553 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !9
  %i.kq = add nsw i32 %i.kp, %.0169.lcssa
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !9
  br label %.lr.ph467.prol.loopexit.unr-lcssa

.lr.ph467.prol.loopexit.unr-lcssa:                ; preds = %bb.ai, %.lr.ph467.prol
  %indvars.iv.next557.prol = add nuw nsw i64 %indvars.iv553, 1
  br label %.lr.ph467.prol.loopexit

.lr.ph467.prol.loopexit:                          ; preds = %.lr.ph467.prol.loopexit.unr-lcssa, %.lr.ph467.preheader
  %indvars.iv556.unr = phi i64 [ %indvars.iv553, %.lr.ph467.preheader ], [ %indvars.iv.next557.prol, %.lr.ph467.prol.loopexit.unr-lcssa ]
  %i.kr = icmp eq i64 %2, %indvars.iv548
  br i1 %i.kr, label %.thread359, label %.lr.ph467

.lr.ph467:                                        ; preds = %.lr.ph467.prol.loopexit, %bb.al
  %indvars.iv556.a = phi i64 [ %indvars.iv.next557.1, %bb.al ], [ %indvars.iv556.unr, %.lr.ph467.prol.loopexit ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv556.a
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !9
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.aj, label %.lr.ph467.1

bb.aj:                                            ; preds = %.lr.ph467
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv556.a ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !9
  %i.kx = add nsw i32 %i.kw, %.0169.lcssa
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !9
  br label %.lr.ph467.1

.lr.ph467.1:                                      ; preds = %.lr.ph467, %bb.aj
  %indvars.iv.next557.a = add nuw nsw i64 %indvars.iv556.a, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next557.a
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !9
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph467.1
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next557.a ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !9
  %i.ld = add nsw i32 %i.lc, %.0169.lcssa
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph467.1
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556.a, 2 ; 2 uses
  %exitcond560.not.1 = icmp eq i64 %indvars.iv.next557.1, %i.gi
  br i1 %exitcond560.not.1, label %.thread359, label %.lr.ph467, !llvm.loop !94

bb.am:                                            ; preds = %bb.ah
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv548
  store i32 %i.kf, ptr %i.le, align 4, !tbaa !9
  %i.lf = add nsw i32 %.10462, 1
  %i.lg = sext i32 %.10462 to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.lg
  store i32 %i.kh, ptr %i.lh, align 4, !tbaa !9
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph463
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv548 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !9
  %i.lk = add nsw i32 %i.lj, %.0169.lcssa
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ag
  %.11 = phi i32 [ %i.lf, %bb.am ], [ %.10462, %bb.ag ], [ %.10462, %bb.an ] ; 2 uses
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %exitcond552.not = icmp eq i64 %indvars.iv.next549, %i.gi
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1
  br i1 %exitcond552.not, label %.loopexit.backedge, label %.lr.ph463, !llvm.loop !95

.thread359.loopexit:                              ; preds = %bb.ae
  %i.ll = trunc nuw nsw i64 %indvars.iv530 to i32
  br label %.thread359

.thread359:                                       ; preds = %.lr.ph467.prol.loopexit, %bb.al, %.thread359.loopexit, %.loopexit378
  %.7224 = phi i32 [ %i.kf, %.loopexit378 ], [ %i.gx, %.thread359.loopexit ], [ %i.kf, %bb.al ], [ %i.kf, %.lr.ph467.prol.loopexit ] ; 2 uses
  %.4214 = phi i32 [ %i.kj, %.loopexit378 ], [ %i.ll, %.thread359.loopexit ], [ %i.kj, %bb.al ], [ %i.kj, %.lr.ph467.prol.loopexit ] ; 2 uses
  %i.lm = sext i32 %.7224 to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lm ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9  ; 2 uses
  store i32 %.4214, ptr %i.ln, align 4, !tbaa !9
  %i.lp = zext nneg i32 %.4214 to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.lp
  store i32 %.7224, ptr %i.lq, align 4, !tbaa !9
  %i.lr = icmp slt i32 %i.lo, 0
  br i1 %i.lr, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %.thread359, %.lr.ph468
  %i.ls = phi i32 [ %i.ly, %.lr.ph468 ], [ %i.lo, %.thread359 ] ; 2 uses
  %i.lt = zext nneg i32 %i.ls to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !9  ; 2 uses
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lw ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !9  ; 2 uses
  store i32 %i.ls, ptr %i.lx, align 4, !tbaa !9
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.lt
  store i32 %i.lv, ptr %i.lz, align 4, !tbaa !9
  %i.ma = icmp slt i32 %i.ly, 0
  br i1 %i.ma, label %._crit_edge469, label %.lr.ph468

._crit_edge469:                                   ; preds = %.lr.ph468, %.thread359
  %i.mb = add nsw i32 %.0208, -1                  ; 2 uses
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph477, label %.preheader382

.preheader382:                                    ; preds = %._crit_edge469
  br i1 %i.ew, label %.lr.ph471, label %.lr.ph474.preheader

.lr.ph471:                                        ; preds = %.preheader382
  %i.md = load i32, ptr %i.gh, align 8, !tbaa !34 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.av, i8 -1, i64 %i.gj, i1 false), !tbaa !9
  br i1 %min.iters.check659, label %scalar.ph658.preheader, label %vector.ph660

vector.ph660:                                     ; preds = %.lr.ph471
  %broadcast.splatinsert662 = insertelement <4 x i32> poison, i32 %i.md, i64 0
  %broadcast.splat663 = shufflevector <4 x i32> %broadcast.splatinsert662, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph660
  %index665 = phi i64 [ 0, %vector.ph660 ], [ %index.next666, %vector.body664 ] ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index665 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %broadcast.splat663, ptr %i.me, align 4, !tbaa !9
  store <4 x i32> %broadcast.splat663, ptr %i.mf, align 4, !tbaa !9
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.mg = icmp eq i64 %index.next666, %n.vec661
  br i1 %i.mg, label %middle.block667, label %vector.body664, !llvm.loop !96

middle.block667:                                  ; preds = %vector.body664
  br i1 %cmp.n668, label %.lr.ph474.preheader, label %scalar.ph658.preheader

scalar.ph658.preheader:                           ; preds = %.lr.ph471, %middle.block667
  %indvars.iv561.ph = phi i64 [ 0, %.lr.ph471 ], [ %n.vec661, %middle.block667 ]
  br label %scalar.ph658

scalar.ph658:                                     ; preds = %scalar.ph658.preheader, %scalar.ph658
  %indvars.iv561.a = phi i64 [ %indvars.iv.next562.a, %scalar.ph658 ], [ %indvars.iv561.ph, %scalar.ph658.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv561.a
  store i32 %i.md, ptr %i.mh, align 4, !tbaa !9
  %indvars.iv.next562.a = add nuw nsw i64 %indvars.iv561.a, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next562.a, %i.gi
  br i1 %exitcond565.not, label %.lr.ph474.preheader, label %scalar.ph658, !llvm.loop !97

.lr.ph474.preheader:                              ; preds = %scalar.ph658, %middle.block667, %.preheader382
  br i1 %i.gl, label %.lr.ph474.epil.preheader, label %.lr.ph474

.lr.ph474:                                        ; preds = %.lr.ph474.preheader, %bb.ar
  %indvars.iv566.a = phi i64 [ %indvars.iv.next567.1, %bb.ar ], [ 0, %.lr.ph474.preheader ] ; 4 uses
  %.13472 = phi i32 [ %.14.1, %bb.ar ], [ 0, %.lr.ph474.preheader ] ; 3 uses
  %niter713 = phi i64 [ %niter713.next.1, %bb.ar ], [ 0, %.lr.ph474.preheader ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv566.a
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !9
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %bb.ap, label %.lr.ph474.1

bb.ap:                                            ; preds = %.lr.ph474
  %i.ml = add nsw i32 %.13472, 1
  %i.mm = sext i32 %.13472 to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.mm
  %i.mo = trunc nuw nsw i64 %indvars.iv566.a to i32
  store i32 %i.mo, ptr %i.mn, align 4, !tbaa !9
  br label %.lr.ph474.1

.lr.ph474.1:                                      ; preds = %.lr.ph474, %bb.ap
  %.14 = phi i32 [ %i.ml, %bb.ap ], [ %.13472, %.lr.ph474 ] ; 3 uses
  %indvars.iv.next567.a = or disjoint i64 %indvars.iv566.a, 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next567.a
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !9
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph474.1
  %i.ms = add nsw i32 %.14, 1
  %i.mt = sext i32 %.14 to i64
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.mt
  %i.mv = trunc nuw nsw i64 %indvars.iv.next567.a to i32
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph474.1
  %.14.1 = phi i32 [ %i.ms, %bb.aq ], [ %.14, %.lr.ph474.1 ] ; 3 uses
  %indvars.iv.next567.1 = add nuw nsw i64 %indvars.iv566.a, 2 ; 2 uses
  %niter713.next.1 = add i64 %niter713, 2         ; 2 uses
  %niter713.ncmp.1 = icmp eq i64 %niter713.next.1, %unroll_iter712
  br i1 %niter713.ncmp.1, label %.loopexit381.loopexit.unr-lcssa, label %.lr.ph474, !llvm.loop !88

.lr.ph477:                                        ; preds = %._crit_edge469, %._crit_edge436
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mx = load ptr, ptr %i.f, align 8, !tbaa !48
  %.pre582 = load i32, ptr %i.mw, align 4, !tbaa !33
  br label %bb.as

.preheader376:                                    ; preds = %bb.as
  %i.my = icmp sgt i32 %i.nh, 0
  br i1 %i.my, label %.preheader.lr.ph, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit267

.preheader.lr.ph:                                 ; preds = %.preheader376
  %i.mz = load i32, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.preheader, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit267

bb.as:                                            ; preds = %.lr.ph477, %bb.as
  %indvars.iv571 = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next572, %bb.as ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.mx, i64 %indvars.iv571
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv571
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !9
  %i.ne = sext i32 %i.nd to i64
  %i.nf = load ptr, ptr %i.nb, align 8, !tbaa !51
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ne
  store i32 %.pre582, ptr %i.ng, align 4, !tbaa !9
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.nh = load i32, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp slt i64 %indvars.iv.next572, %i.ni
  br i1 %i.nj, label %bb.as, label %.preheader376, !llvm.loop !98

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge480
  %i.nk = phi i32 [ %i.nr, %._crit_edge480 ], [ %i.nh, %.preheader.lr.ph ]
  %i.nl = phi i32 [ %i.ns, %._crit_edge480 ], [ %i.mz, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %._crit_edge480 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph479, label %._crit_edge480

.lr.ph479:                                        ; preds = %.preheader
  %i.nn = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %indvars.iv577
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !51
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv577
  br label %bb.at

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit267: ; preds = %._crit_edge480, %.preheader385, %.preheader.lr.ph, %.preheader376
  tail call void @_ZdaPv(ptr noundef nonnull %i.bh) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.av) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.ap) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #16
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #16
  ret void

._crit_edge480.loopexit:                          ; preds = %bb.at
  %.pre583 = load i32, ptr %i.a, align 8, !tbaa !54
  br label %._crit_edge480

._crit_edge480:                                   ; preds = %._crit_edge480.loopexit, %.preheader
  %i.nr = phi i32 [ %.pre583, %._crit_edge480.loopexit ], [ %i.nk, %.preheader ] ; 2 uses
  %i.ns = phi i32 [ %i.oc, %._crit_edge480.loopexit ], [ %i.nl, %.preheader ]
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %i.nt = sext i32 %i.nr to i64
  %i.nu = icmp slt i64 %indvars.iv.next578, %i.nt
  br i1 %i.nu, label %.preheader, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit267, !llvm.loop !99

bb.at:                                            ; preds = %.lr.ph479, %bb.at
  %indvars.iv574 = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next575, %bb.at ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv574 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !9
  %i.nx = load i32, ptr %i.nq, align 4, !tbaa !9
  %i.ny = sub i32 %i.nw, %i.nx
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv574
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !9
  %i.ob = add nsw i32 %i.ny, %i.oa
  store i32 %i.ob, ptr %i.nv, align 4, !tbaa !9
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.oc = load i32, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next575, %i.od
end_hunk_0
