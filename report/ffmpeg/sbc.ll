Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbc?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_sbc_calculate_bits:bb.a

bb.o:                                             ; preds = %.lr.ph477, %bb.r
  %indvars.iv558 = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next559, %bb.r ] ; 3 uses
  %.2319475 = phi i32 [ %spec.select360, %.lr.ph477 ], [ %.3320, %bb.r ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv558 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19 ; 2 uses
  %i.dd = add i32 %i.dc, -2
  %or.cond362 = icmp ult i32 %i.dd, 14
  br i1 %or.cond362, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = add nuw nsw i32 %i.dc, 1
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv558
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19
  %i.dh = icmp eq i32 %i.dg, %i.cl
  %i.di = icmp slt i32 %.2319475, %invariant.op474
  %or.cond373 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond373, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.q, %bb.p
  %.sink619 = phi i32 [ %i.de, %bb.p ], [ 2, %bb.q ]
  %.sink618.a = phi i32 [ 1, %bb.p ], [ 2, %bb.q ]
  store i32 %.sink619, ptr %i.db, align 4, !tbaa !19
  %i.dj = add nsw i32 %.2319475, %.sink618.a
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %.3320 = phi i32 [ %.2319475, %bb.q ], [ %i.dj, %.sink.split ] ; 3 uses
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %i.dk = icmp slt i32 %.3320, %.pre568
  %i.dl = icmp samesign ult i64 %indvars.iv.next559, %i.u
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %bb.o, label %.preheader, !llvm.loop !30

bb.s:                                             ; preds = %.lr.ph482, %bb.u
  %indvars.iv561 = phi i64 [ 0, %.lr.ph482 ], [ %indvars.iv.next562, %bb.u ] ; 2 uses
  %.4321480 = phi i32 [ %.2319.lcssa, %.lr.ph482 ], [ %.5322, %bb.u ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv561 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 16
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = add nsw i32 %i.do, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !19
  %i.dr = add nsw i32 %.4321480, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.5322 = phi i32 [ %i.dr, %bb.t ], [ %.4321480, %bb.s ] ; 2 uses
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 2 uses
  %i.ds = icmp slt i32 %.5322, %.pre568
  %i.dt = icmp samesign ult i64 %indvars.iv.next562, %i.u
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.s, label %._crit_edge483, !llvm.loop !31

._crit_edge483:                                   ; preds = %bb.u, %.split463.us, %.split461, %.preheader
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %i.dv = load i8, ptr %i.i, align 8, !tbaa !17
  %i.dw = zext i8 %i.dv to i64
  %i.dx = icmp samesign ult i64 %indvars.iv.next565, %i.dw
  br i1 %i.dx, label %bb.c, label %._crit_edge488, !llvm.loop !32

._crit_edge488:                                   ; preds = %._crit_edge483, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

bb.v:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !18
  %i.ea = icmp eq i32 %i.dz, 1
  %.not490 = icmp eq i8 %i.d, 0                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.ea, label %.preheader384, label %.preheader387

.preheader387:                                    ; preds = %bb.v
  %i.ec = icmp eq i8 %i.d, 4
  %i.ed = zext i8 %i.f to i64                     ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr @sbc_offset4, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr @sbc_offset8, i64 %i.ed
  %.pn353 = select i1 %i.ec, ptr %i.ee, ptr %i.ef ; 2 uses
  br i1 %.not490, label %.loopexit385.thread, label %.preheader386.us.preheader

.preheader386.us.preheader:                       ; preds = %.preheader387
  %wide.trip.count = zext i8 %i.d to i64          ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader386.us.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.preheader386.us.preheader ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %.4301400.us = phi i32 [ 0, %.preheader386.us.preheader ], [ %spec.select364.us, %bb.y ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !19 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.pn.in.us = getelementptr inbounds nuw [4 x i8], ptr %.pn353, i64 %indvars.iv
  %.pn.us = load i32, ptr %.pn.in.us, align 4, !tbaa !19
  %.0304.us = sub i32 %i.eh, %.pn.us              ; 2 uses
  %i.ej = icmp sgt i32 %.0304.us, 0
  %i.ek = zext i1 %i.ej to i32
  %spec.select628 = lshr i32 %.0304.us, %i.ek
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink620.a = phi i32 [ %spec.select628, %bb.x ], [ -5, %bb.w ] ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.sink620.a, ptr %i.el, align 4, !tbaa !19
  %spec.select364.us = tail call i32 @llvm.smax.i32(i32 %.sink620.a, i32 %.4301400.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.w, !llvm.loop !33

._crit_edge.us:                                   ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %._crit_edge.us
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.us ], [ %indvars.iv.next.1, %bb.ab ] ; 4 uses
  %.4301400.us.1 = phi i32 [ %spec.select364.us, %._crit_edge.us ], [ %spec.select364.us.1, %bb.ab ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.1
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !19 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.pn.in.us.1 = getelementptr inbounds nuw [4 x i8], ptr %.pn353, i64 %indvars.iv.1
  %.pn.us.1 = load i32, ptr %.pn.in.us.1, align 4, !tbaa !19
  %.0304.us.1 = sub i32 %i.ep, %.pn.us.1          ; 2 uses
  %i.er = icmp sgt i32 %.0304.us.1, 0
  %i.es = zext i1 %i.er to i32
  %spec.select629 = lshr i32 %.0304.us.1, %i.es
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink622 = phi i32 [ %spec.select629, %bb.aa ], [ -5, %bb.z ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.1
  store i32 %.sink622, ptr %i.et, align 4, !tbaa !19
  %spec.select364.us.1 = tail call i32 @llvm.smax.i32(i32 %.sink622, i32 %.4301400.us.1) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %.split.us.us.preheader, label %bb.z, !llvm.loop !33

.preheader384:                                    ; preds = %bb.v
  br i1 %.not490, label %.loopexit385.thread, label %.preheader383.us.preheader

.preheader383.us.preheader:                       ; preds = %.preheader384
  %i.eu = zext i8 %i.d to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.eb, i64 %i.ev, i1 false), !tbaa !19
  %wide.trip.count517 = zext i8 %i.d to i64       ; 6 uses
  %min.iters.check = icmp ult i8 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader383.us.preheader
  %n.vec = and i64 %wide.trip.count517, 248       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi638 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !19
  %wide.load639 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !19
  %i.ey = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.ez = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load639, <4 x i32> %vec.phi638) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ey, <4 x i32> %i.ez)
  %i.fb = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count517
  br i1 %cmp.n, label %._crit_edge.us408, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader383.us.preheader, %middle.block
  %indvars.iv514.ph = phi i64 [ 0, %.preheader383.us.preheader ], [ %n.vec, %middle.block ]
  %.1298404.us.ph = phi i32 [ 0, %.preheader383.us.preheader ], [ %i.fb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %scalar.ph ], [ %indvars.iv514.ph, %scalar.ph.preheader ] ; 2 uses
  %.1298404.us = phi i32 [ %spec.select363.us, %scalar.ph ], [ %.1298404.us.ph, %scalar.ph.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv514
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !19
  %spec.select363.us = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 %.1298404.us) ; 2 uses
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge.us408, label %scalar.ph, !llvm.loop !35

._crit_edge.us408:                                ; preds = %scalar.ph, %middle.block
  %spec.select363.us.lcssa = phi i32 [ %i.fb, %middle.block ], [ %spec.select363.us, %scalar.ph ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.fe, ptr nonnull align 16 %i.ff, i64 %i.ev, i1 false), !tbaa !19
  %min.iters.check641 = icmp ult i8 %i.d, 8
  br i1 %min.iters.check641, label %scalar.ph640.preheader, label %vector.ph642

vector.ph642:                                     ; preds = %._crit_edge.us408
  %n.vec643 = and i64 %wide.trip.count517, 248    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select363.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body644

vector.body644:                                   ; preds = %vector.body644, %vector.ph642
  %index645 = phi i64 [ 0, %vector.ph642 ], [ %index.next650, %vector.body644 ] ; 2 uses
  %vec.phi646 = phi <4 x i32> [ %broadcast.splat, %vector.ph642 ], [ %i.fi, %vector.body644 ]
  %vec.phi647 = phi <4 x i32> [ %broadcast.splat, %vector.ph642 ], [ %i.fj, %vector.body644 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index645 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load648 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !19
  %wide.load649 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !19
  %i.fi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load648, <4 x i32> %vec.phi646) ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load649, <4 x i32> %vec.phi647) ; 2 uses
  %index.next650 = add nuw i64 %index645, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next650, %n.vec643
  br i1 %i.fk, label %middle.block651, label %vector.body644, !llvm.loop !36

middle.block651:                                  ; preds = %vector.body644
  %rdx.minmax652 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fi, <4 x i32> %i.fj)
  %i.fl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax652) ; 2 uses
  %cmp.n653 = icmp eq i64 %n.vec643, %wide.trip.count517
  br i1 %cmp.n653, label %.split.us.us.preheader, label %scalar.ph640.preheader

scalar.ph640.preheader:                           ; preds = %._crit_edge.us408, %middle.block651
  %indvars.iv514.1.ph = phi i64 [ 0, %._crit_edge.us408 ], [ %n.vec643, %middle.block651 ]
  %.1298404.us.1.ph = phi i32 [ %spec.select363.us.lcssa, %._crit_edge.us408 ], [ %i.fl, %middle.block651 ]
  br label %scalar.ph640

scalar.ph640:                                     ; preds = %scalar.ph640.preheader, %scalar.ph640
  %indvars.iv514.1 = phi i64 [ %indvars.iv.next515.1, %scalar.ph640 ], [ %indvars.iv514.1.ph, %scalar.ph640.preheader ] ; 2 uses
  %.1298404.us.1 = phi i32 [ %spec.select363.us.1, %scalar.ph640 ], [ %.1298404.us.1.ph, %scalar.ph640.preheader ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv514.1
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !19
  %spec.select363.us.1 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 %.1298404.us.1) ; 2 uses
  %indvars.iv.next515.1 = add nuw nsw i64 %indvars.iv514.1, 1 ; 2 uses
  %exitcond518.1.not = icmp eq i64 %indvars.iv.next515.1, %wide.trip.count517
  br i1 %exitcond518.1.not, label %.split.us.us.preheader, label %scalar.ph640, !llvm.loop !37

.loopexit385.thread:                              ; preds = %.preheader384, %.preheader387
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26  ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 0
  %i.fr = zext nneg i8 %i.fp to i32
  tail call void @llvm.assume(i1 %i.fq)
  br label %.split422.us

.split.us.us.preheader:                           ; preds = %bb.ab, %scalar.ph640, %middle.block651
  %.in630 = phi i32 [ %spec.select363.us.1, %scalar.ph640 ], [ %i.fl, %middle.block651 ], [ %spec.select364.us.1, %bb.ab ]
  %i.fs = add nuw nsw i32 %.in630, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %.in = load i8, ptr %i.ft, align 1, !tbaa !26
  %i.fu = zext i8 %.in to i32                     ; 2 uses
  %wide.trip.count525 = zext i8 %i.d to i64       ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.fw = add nsw i64 %wide.trip.count525, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count525, 1
  %i.fx = icmp eq i64 %i.fw, 0
  %unroll_iter = and i64 %wide.trip.count525, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod703 = trunc i8 %i.d to i1
  %xtraiter710 = and i64 %wide.trip.count525, 1
  %i.fy = icmp eq i64 %i.fw, 0
  %unroll_iter714 = and i64 %wide.trip.count525, 254
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  %lcmp.mod713 = trunc i8 %i.d to i1
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %._crit_edge.us415.us.1
  %.0290.us = phi i32 [ %i.ht, %._crit_edge.us415.us.1 ], [ 0, %.split.us.us.preheader ]
  %.0286.us = phi i32 [ %.3289.us.us.1.lcssa, %._crit_edge.us415.us.1 ], [ 0, %.split.us.us.preheader ]
  %.0284.us = phi i32 [ %i.hs, %._crit_edge.us415.us.1 ], [ %i.fs, %.split.us.us.preheader ] ; 15 uses
  %i.fz = add nsw i32 %.0284.us, 15               ; 6 uses
  br i1 %i.fx, label %.epil.preheader, label %.split.us.us.new

.split.us.us.new:                                 ; preds = %.split.us.us, %.split.us.us.new
  %indvars.iv522 = phi i64 [ %indvars.iv.next523.1709, %.split.us.us.new ], [ 0, %.split.us.us ] ; 3 uses
  %.2288411.us.us = phi i32 [ %.3289.us.us.1708, %.split.us.us.new ], [ 0, %.split.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.split.us.us.new ], [ 0, %.split.us.us ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv522
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !19 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, %.0284.us
  %i.gd = icmp slt i32 %i.gb, %i.fz
  %or.cond366.us.us = select i1 %i.gc, i1 %i.gd, i1 false
  %i.ge = add nsw i32 %.2288411.us.us, 1
  %i.gf = icmp eq i32 %i.gb, %.0284.us
  %i.gg = add nsw i32 %.2288411.us.us, 2
  %spec.select367.us.us = select i1 %i.gf, i32 %i.gg, i32 %.2288411.us.us
  %.3289.us.us = select i1 %or.cond366.us.us, i32 %i.ge, i32 %spec.select367.us.us ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv522
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !19 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, %.0284.us
  %i.gl = icmp slt i32 %i.gj, %i.fz
  %or.cond366.us.us.1706 = select i1 %i.gk, i1 %i.gl, i1 false
  %i.gm = add nsw i32 %.3289.us.us, 1
  %i.gn = icmp eq i32 %i.gj, %.0284.us
  %i.go = add nsw i32 %.3289.us.us, 2
  %spec.select367.us.us.1707 = select i1 %i.gn, i32 %i.go, i32 %.3289.us.us
  %.3289.us.us.1708 = select i1 %or.cond366.us.us.1706, i32 %i.gm, i32 %spec.select367.us.us.1707 ; 3 uses
  %indvars.iv.next523.1709 = add nuw nsw i64 %indvars.iv522, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us415.us.preheader.unr-lcssa, label %.split.us.us.new, !llvm.loop !38

._crit_edge.us415.us.preheader.unr-lcssa:         ; preds = %.split.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us415.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us415.us.preheader.unr-lcssa, %.split.us.us
  %indvars.iv522.epil.init = phi i64 [ 0, %.split.us.us ], [ %indvars.iv.next523.1709, %._crit_edge.us415.us.preheader.unr-lcssa ]
  %.2288411.us.us.epil.init = phi i32 [ 0, %.split.us.us ], [ %.3289.us.us.1708, %._crit_edge.us415.us.preheader.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod703)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv522.epil.init
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !19 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, %.0284.us
  %i.gs = icmp slt i32 %i.gq, %i.fz
  %or.cond366.us.us.epil = select i1 %i.gr, i1 %i.gs, i1 false
  %i.gt = add nsw i32 %.2288411.us.us.epil.init, 1
  %i.gu = icmp eq i32 %i.gq, %.0284.us
  %i.gv = add nsw i32 %.2288411.us.us.epil.init, 2
  %spec.select367.us.us.epil = select i1 %i.gu, i32 %i.gv, i32 %.2288411.us.us.epil.init
  %.3289.us.us.epil = select i1 %or.cond366.us.us.epil, i32 %i.gt, i32 %spec.select367.us.us.epil
  br label %._crit_edge.us415.us.preheader

._crit_edge.us415.us.preheader:                   ; preds = %._crit_edge.us415.us.preheader.unr-lcssa, %.epil.preheader
  %.3289.us.us.lcssa = phi i32 [ %.3289.us.us.1708, %._crit_edge.us415.us.preheader.unr-lcssa ], [ %.3289.us.us.epil, %.epil.preheader ] ; 2 uses
  br i1 %i.fy, label %._crit_edge.us415.us.epil.preheader, label %._crit_edge.us415.us

._crit_edge.us415.us:                             ; preds = %._crit_edge.us415.us.preheader, %._crit_edge.us415.us
  %indvars.iv522.1 = phi i64 [ %indvars.iv.next523.1.1, %._crit_edge.us415.us ], [ 0, %._crit_edge.us415.us.preheader ] ; 3 uses
  %.2288411.us.us.1 = phi i32 [ %.3289.us.us.1.1, %._crit_edge.us415.us ], [ %.3289.us.us.lcssa, %._crit_edge.us415.us.preheader ] ; 3 uses
  %niter715 = phi i64 [ %niter715.next.1, %._crit_edge.us415.us ], [ 0, %._crit_edge.us415.us.preheader ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv522.1
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !19 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, %.0284.us
  %i.gz = icmp slt i32 %i.gx, %i.fz
  %or.cond366.us.us.1 = select i1 %i.gy, i1 %i.gz, i1 false
  %i.ha = add nsw i32 %.2288411.us.us.1, 1
  %i.hb = icmp eq i32 %i.gx, %.0284.us
  %i.hc = add nsw i32 %.2288411.us.us.1, 2
  %spec.select367.us.us.1 = select i1 %i.hb, i32 %i.hc, i32 %.2288411.us.us.1
  %.3289.us.us.1 = select i1 %or.cond366.us.us.1, i32 %i.ha, i32 %spec.select367.us.us.1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv522.1
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !19 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, %.0284.us
  %i.hh = icmp slt i32 %i.hf, %i.fz
  %or.cond366.us.us.1.1 = select i1 %i.hg, i1 %i.hh, i1 false
  %i.hi = add nsw i32 %.3289.us.us.1, 1
  %i.hj = icmp eq i32 %i.hf, %.0284.us
  %i.hk = add nsw i32 %.3289.us.us.1, 2
  %spec.select367.us.us.1.1 = select i1 %i.hj, i32 %i.hk, i32 %.3289.us.us.1
  %.3289.us.us.1.1 = select i1 %or.cond366.us.us.1.1, i32 %i.hi, i32 %spec.select367.us.us.1.1 ; 3 uses
  %indvars.iv.next523.1.1 = add nuw nsw i64 %indvars.iv522.1, 2 ; 2 uses
  %niter715.next.1 = add i64 %niter715, 2         ; 2 uses
  %niter715.ncmp.1 = icmp eq i64 %niter715.next.1, %unroll_iter714
  br i1 %niter715.ncmp.1, label %._crit_edge.us415.us.1.unr-lcssa, label %._crit_edge.us415.us, !llvm.loop !38

._crit_edge.us415.us.1.unr-lcssa:                 ; preds = %._crit_edge.us415.us
  br i1 %lcmp.mod711.not, label %._crit_edge.us415.us.1, label %._crit_edge.us415.us.epil.preheader

._crit_edge.us415.us.epil.preheader:              ; preds = %._crit_edge.us415.us.1.unr-lcssa, %._crit_edge.us415.us.preheader
  %indvars.iv522.1.epil.init = phi i64 [ 0, %._crit_edge.us415.us.preheader ], [ %indvars.iv.next523.1.1, %._crit_edge.us415.us.1.unr-lcssa ]
  %.2288411.us.us.1.epil.init = phi i32 [ %.3289.us.us.lcssa, %._crit_edge.us415.us.preheader ], [ %.3289.us.us.1.1, %._crit_edge.us415.us.1.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod713)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv522.1.epil.init
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !19 ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, %.0284.us
  %i.ho = icmp slt i32 %i.hm, %i.fz
  %or.cond366.us.us.1.epil = select i1 %i.hn, i1 %i.ho, i1 false
  %i.hp = add nsw i32 %.2288411.us.us.1.epil.init, 1
  %i.hq = icmp eq i32 %i.hm, %.0284.us
  %i.hr = add nsw i32 %.2288411.us.us.1.epil.init, 2
  %spec.select367.us.us.1.epil = select i1 %i.hq, i32 %i.hr, i32 %.2288411.us.us.1.epil.init
  %.3289.us.us.1.epil = select i1 %or.cond366.us.us.1.epil, i32 %i.hp, i32 %spec.select367.us.us.1.epil
  br label %._crit_edge.us415.us.1

._crit_edge.us415.us.1:                           ; preds = %._crit_edge.us415.us.1.unr-lcssa, %._crit_edge.us415.us.epil.preheader
  %.3289.us.us.1.lcssa = phi i32 [ %.3289.us.us.1.1, %._crit_edge.us415.us.1.unr-lcssa ], [ %.3289.us.us.1.epil, %._crit_edge.us415.us.epil.preheader ] ; 2 uses
  %i.hs = add nsw i32 %.0284.us, -1               ; 2 uses
  %i.ht = add nsw i32 %.0286.us, %.0290.us        ; 3 uses
  %i.hu = add nsw i32 %.3289.us.us.1.lcssa, %i.ht ; 2 uses
  %i.hv = icmp slt i32 %i.hu, %i.fu
  br i1 %i.hv, label %.split.us.us, label %.split422.us.loopexit, !llvm.loop !39

.split422.us.loopexit:                            ; preds = %._crit_edge.us415.us.1
  %i.hw = add nsw i32 %.0284.us, -2
  br label %.split422.us

.split422.us:                                     ; preds = %.split422.us.loopexit, %.loopexit385.thread
  %i.hx = phi i32 [ %i.fr, %.loopexit385.thread ], [ %i.fu, %.split422.us.loopexit ] ; 2 uses
  %i.hy = phi ptr [ %i.fo, %.loopexit385.thread ], [ %i.ft, %.split422.us.loopexit ]
  %.not491606 = phi i1 [ true, %.loopexit385.thread ], [ false, %.split422.us.loopexit ]
  %.us-phi423 = phi i32 [ 0, %.loopexit385.thread ], [ %i.hu, %.split422.us.loopexit ] ; 2 uses
  %.us-phi425 = phi i32 [ -1, %.loopexit385.thread ], [ %i.hw, %.split422.us.loopexit ]
  %.us-phi426 = phi i32 [ 0, %.loopexit385.thread ], [ %i.hs, %.split422.us.loopexit ]
  %.us-phi427 = phi i32 [ 0, %.loopexit385.thread ], [ %i.ht, %.split422.us.loopexit ]
  %i.hz = icmp eq i32 %.us-phi423, %i.hx          ; 2 uses
  %spec.select368 = select i1 %i.hz, i32 %.us-phi423, i32 %.us-phi427 ; 3 uses
  %spec.select369 = select i1 %i.hz, i32 %.us-phi425, i32 %.us-phi426 ; 7 uses
  %i.ia = add nsw i32 %spec.select369, 2          ; 5 uses
  br i1 %.not491606, label %.preheader380.split, label %.preheader381.preheader

.preheader381.preheader:                          ; preds = %.split422.us
  %wide.trip.count533 = zext i8 %i.d to i64       ; 5 uses
  %min.iters.check657 = icmp ult i8 %i.d, 8
  br i1 %min.iters.check657, label %scalar.ph656.preheader, label %vector.ph658

vector.ph658:                                     ; preds = %.preheader381.preheader
  %n.vec659 = and i64 %wide.trip.count533, 248    ; 3 uses
  %broadcast.splatinsert660.a = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat661.a = shufflevector <4 x i32> %broadcast.splatinsert660.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert662 = insertelement <4 x i32> poison, i32 %spec.select369, i64 0
  %broadcast.splat663 = shufflevector <4 x i32> %broadcast.splatinsert662, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph658
  %index665 = phi i64 [ 0, %vector.ph658 ], [ %index.next668, %vector.body664 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index665 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load666 = load <4 x i32>, ptr %i.ib, align 16, !tbaa !19 ; 2 uses
  %wide.load667 = load <4 x i32>, ptr %i.ic, align 16, !tbaa !19 ; 2 uses
  %i.id = icmp slt <4 x i32> %wide.load666, %broadcast.splat661.a
  %i.ie = icmp slt <4 x i32> %wide.load667, %broadcast.splat661.a
  %i.if = sub nsw <4 x i32> %wide.load666, %broadcast.splat663
  %i.ig = sub nsw <4 x i32> %wide.load667, %broadcast.splat663
  %i.ih = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.if, <4 x i32> splat (i32 16))
  %i.ii = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ig, <4 x i32> splat (i32 16))
  %i.ij = select <4 x i1> %i.id, <4 x i32> zeroinitializer, <4 x i32> %i.ih
  %i.ik = select <4 x i1> %i.ie, <4 x i32> zeroinitializer, <4 x i32> %i.ii
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index665 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> %i.ij, ptr %i.il, align 4
end_hunk_0
