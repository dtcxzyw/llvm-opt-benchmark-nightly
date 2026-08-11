inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  br label %bb.as

bb.as:                                            ; preds = %.thread133.i.i.i, %.lr.ph149.i.i.i
  %.078147.i.i.i = phi i32 [ 148, %.lr.ph149.i.i.i ], [ %.583136.i.i.i, %.thread133.i.i.i ] ; 4 uses
  %.089145.i.i.i = phi i32 [ 0, %.lr.ph149.i.i.i ], [ %i.lp, %.thread133.i.i.i ] ; 9 uses
  %.090144.i.i.i = phi i32 [ 4, %.lr.ph149.i.i.i ], [ %spec.select98.i.i.i, %.thread133.i.i.i ]
  %.092143.i.i.i = phi i32 [ 64, %.lr.ph149.i.i.i ], [ %spec.select.i.i.i, %.thread133.i.i.i ]
  %i.gu = icmp eq i32 %.089145.i.i.i, %i.co       ; 2 uses
  %spec.select.i.i.i = select i1 %i.gu, i32 16, i32 %.092143.i.i.i ; 5 uses
  %spec.select98.i.i.i = select i1 %i.gu, i32 1, i32 %.090144.i.i.i ; 7 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.gw = zext nneg i32 %.089145.i.i.i to i64     ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gw ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !26 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gw ; 3 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !33
  %i.hb = icmp eq i8 %i.ha, 1
  br i1 %i.hb, label %.lr.ph.i.preheader.i.i.i, label %bb.av

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.as
  %i.hc = load ptr, ptr %i.gn, align 8, !tbaa !24
  %i.hd = zext i32 %i.gy to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !26 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 2 uses
  %i.hh = add nsw i32 %spec.select.i.i.i, -1
  %i.hi = zext nneg i32 %i.hh to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.hi, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %.lr.ph.i.preheader.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.hm, %bb.at ], [ %i.hg, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.hk = load i32, ptr %.08.i.i.i.i, align 4, !tbaa !26
  %i.hl = icmp eq i32 %i.hk, %i.hf
  br i1 %i.hl, label %bb.at, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4 ; 3 uses
  %i.hn = icmp ult ptr %i.hm, %i.hj
  br i1 %i.hn, label %.lr.ph.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i, !llvm.loop !61

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i
  %.0.lcssa.i.ph.i.i.i = phi ptr [ %i.hm, %bb.at ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ho = icmp eq ptr %.0.lcssa.i.ph.i.i.i, %i.hj
  br i1 %i.ho, label %.thread.i60.i.i, label %bb.au

.thread.i60.i.i:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  store i8 0, ptr %i.gz, align 1, !tbaa !33
  store i32 %i.hf, ptr %i.gx, align 4, !tbaa !26
  br label %.critedge.i.i.i

bb.au:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.i.i.i
  %i.hp = add nsw i32 %spec.select.i.i.i, %.078147.i.i.i
  br label %.thread133.i.i.i

bb.av:                                            ; preds = %bb.as
  %i.hq = icmp samesign ugt i32 %spec.select98.i.i.i, 1
  br i1 %i.hq, label %bb.aw, label %.critedge.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hr = add nuw nsw i32 %spec.select98.i.i.i, %.089145.i.i.i
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %indvars.iv.next.i58.i.i223 = add nuw nsw i64 %i.gw, 1 ; 2 uses
  %.not96.not.i.i.i224 = icmp samesign ult i64 %indvars.iv.next.i58.i.i223, %i.hs
  br i1 %.not96.not.i.i.i224, label %.lr.ph, label %.critedge.i.i.i

bb.ax:                                            ; preds = %.lr.ph
  %indvars.iv.next.i58.i.i = add nuw nsw i64 %indvars.iv.next.i58.i.i225, 1 ; 2 uses
  %.not96.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i58.i.i, %i.hs
  br i1 %.not96.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !62

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvars.iv.next.i58.i.i225 = phi i64 [ %indvars.iv.next.i58.i.i, %bb.ax ], [ %indvars.iv.next.i58.i.i223, %bb.aw ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next.i58.i.i225
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !26
  %.not.i59.i.i = icmp eq i32 %i.hu, %i.gy
  br i1 %.not.i59.i.i, label %bb.ax, label %bb.bm, !llvm.loop !62

.critedge.i.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %.thread.i60.i.i
  %.084.i.i.i = phi i32 [ %i.hf, %.thread.i60.i.i ], [ %i.gy, %bb.av ], [ %i.gy, %bb.aw ], [ %i.gy, %bb.ax ] ; 6 uses
  %i.hv = load i32, ptr %i.gp, align 4, !tbaa !60 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, -1
  br i1 %i.hw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge.i.i.i
  %i.hx = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !26
  %i.ia = icmp eq i32 %i.hz, %.084.i.i.i
  br i1 %i.ia, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i.i.i
  %i.ib = load i32, ptr %5, align 4, !tbaa !58    ; 5 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i103.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

.lr.ph.i103.i.i.i:                                ; preds = %bb.az
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ib to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i103.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i103.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bb ] ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.i.i.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !26
  %i.if = icmp eq i32 %i.ie, %.084.i.i.i
  br i1 %i.if, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ba, !llvm.loop !63

bb.bc:                                            ; preds = %bb.ba
  %i.ig = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  store i32 %i.ig, ptr %i.gp, align 4, !tbaa !60
  br label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.bb
  %i.ih = icmp eq i32 %i.ib, 32
  br i1 %i.ih, label %.preheader.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.az
  store i32 %i.ib, ptr %i.gp, align 4, !tbaa !60
  %i.ii = sext i32 %i.ib to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.ii
  store i32 %.089145.i.i.i, ptr %i.ij, align 4, !tbaa !26
  %i.ik = load i32, ptr %5, align 4, !tbaa !58
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.il
  store i32 %.084.i.i.i, ptr %i.im, align 4, !tbaa !26
  %i.in = load i32, ptr %5, align 4, !tbaa !58    ; 2 uses
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %5, align 4, !tbaa !58
  %i.ip = sext i32 %i.in to i64
  br label %.thread127.sink.split.i.i.i

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i: ; preds = %bb.bc, %bb.ay
  %.sink172.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %bb.bc ], [ %i.hx, %bb.ay ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.sink172.i.i.i ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !26
  %i.is = add nsw i32 %i.ir, %spec.select98.i.i.i
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !26
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sink172.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !26 ; 3 uses
  %i.iv = icmp eq i32 %i.iu, -2
  br i1 %i.iv, label %.preheader.i.i.i, label %bb.bk

.preheader.i.i.i:                                 ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.iw = icmp eq i32 %.089145.i.i.i, 0
  br i1 %i.iw, label %._crit_edge.i.i.i, label %.lr.ph.i56.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bj, %.preheader.i.i.i
  %i.ix = load i32, ptr %5, align 4, !tbaa !58    ; 3 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph.i105.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i

.lr.ph.i105.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %wide.trip.count.i106.i.i.i = zext nneg i32 %i.ix to i64 ; 2 uses
  %xtraiter390 = and i64 %wide.trip.count.i106.i.i.i, 3 ; 3 uses
  %i.iz = icmp ult i32 %i.ix, 4
  br i1 %i.iz, label %.epil.preheader389, label %.lr.ph.i105.i.i.i.new

.lr.ph.i105.i.i.i.new:                            ; preds = %.lr.ph.i105.i.i.i
  %unroll_iter395 = and i64 %wide.trip.count.i106.i.i.i, 2147483644
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i105.i.i.i.new
  %indvars.iv.i107.i.i.i = phi i64 [ 0, %.lr.ph.i105.i.i.i.new ], [ %indvars.iv.next.i108.i.i.i.3, %bb.bd ] ; 6 uses
  %.01319.i.i.i.i = phi i32 [ 69632, %.lr.ph.i105.i.i.i.new ], [ %spec.select17.i.i.i.i.3, %bb.bd ] ; 2 uses
  %.01418.i.i.i.i = phi i32 [ -1, %.lr.ph.i105.i.i.i.new ], [ %spec.select.i.i.i.i.3, %bb.bd ]
  %niter396 = phi i64 [ 0, %.lr.ph.i105.i.i.i.new ], [ %niter396.next.3, %bb.bd ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i107.i.i.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !26 ; 2 uses
  %i.jc = icmp slt i32 %i.jb, %.01319.i.i.i.i
  %i.jd = trunc nuw nsw i64 %indvars.iv.i107.i.i.i to i32
  %spec.select.i.i.i.i = select i1 %i.jc, i32 %i.jd, i32 %.01418.i.i.i.i
  %spec.select17.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.jb, i32 %.01319.i.i.i.i) ; 2 uses
  %indvars.iv.next.i108.i.i.i = or disjoint i64 %indvars.iv.i107.i.i.i, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i108.i.i.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !26 ; 2 uses
  %i.jg = icmp slt i32 %i.jf, %spec.select17.i.i.i.i
  %i.jh = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i to i32
  %spec.select.i.i.i.i.1 = select i1 %i.jg, i32 %i.jh, i32 %spec.select.i.i.i.i
  %spec.select17.i.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.jf, i32 %spec.select17.i.i.i.i) ; 2 uses
  %indvars.iv.next.i108.i.i.i.1 = or disjoint i64 %indvars.iv.i107.i.i.i, 2 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i108.i.i.i.1
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !26 ; 2 uses
  %i.jk = icmp slt i32 %i.jj, %spec.select17.i.i.i.i.1
  %i.jl = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i.1 to i32
  %spec.select.i.i.i.i.2 = select i1 %i.jk, i32 %i.jl, i32 %spec.select.i.i.i.i.1
  %spec.select17.i.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.jj, i32 %spec.select17.i.i.i.i.1) ; 2 uses
  %indvars.iv.next.i108.i.i.i.2 = or disjoint i64 %indvars.iv.i107.i.i.i, 3 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i108.i.i.i.2
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !26 ; 2 uses
  %i.jo = icmp slt i32 %i.jn, %spec.select17.i.i.i.i.2
  %i.jp = trunc nuw nsw i64 %indvars.iv.next.i108.i.i.i.2 to i32
  %spec.select.i.i.i.i.3 = select i1 %i.jo, i32 %i.jp, i32 %spec.select.i.i.i.i.2 ; 3 uses
  %spec.select17.i.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.jn, i32 %spec.select17.i.i.i.i.2) ; 2 uses
  %indvars.iv.next.i108.i.i.i.3 = add nuw nsw i64 %indvars.iv.i107.i.i.i, 4 ; 2 uses
  %niter396.next.3 = add nuw i64 %niter396, 4     ; 2 uses
  %niter396.ncmp.3 = icmp eq i64 %niter396.next.3, %unroll_iter395
  br i1 %niter396.ncmp.3, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !64

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.bd
  %lcmp.mod392.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod392.not, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, label %.epil.preheader389

.epil.preheader389:                               ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i105.i.i.i
  %indvars.iv.i107.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i105.i.i.i ], [ %indvars.iv.next.i108.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %.01319.i.i.i.i.epil.init = phi i32 [ 69632, %.lr.ph.i105.i.i.i ], [ %spec.select17.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %.01418.i.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i105.i.i.i ], [ %spec.select.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod394 = icmp ne i64 %xtraiter390, 0
  tail call void @llvm.assume(i1 %lcmp.mod394)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader389
  %indvars.iv.i107.i.i.i.epil = phi i64 [ %indvars.iv.i107.i.i.i.epil.init, %.epil.preheader389 ], [ %indvars.iv.next.i108.i.i.i.epil, %bb.be ] ; 3 uses
  %.01319.i.i.i.i.epil = phi i32 [ %.01319.i.i.i.i.epil.init, %.epil.preheader389 ], [ %spec.select17.i.i.i.i.epil, %bb.be ] ; 2 uses
  %.01418.i.i.i.i.epil = phi i32 [ %.01418.i.i.i.i.epil.init, %.epil.preheader389 ], [ %spec.select.i.i.i.i.epil, %bb.be ]
  %epil.iter391 = phi i64 [ 0, %.epil.preheader389 ], [ %epil.iter391.next, %bb.be ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i107.i.i.i.epil
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !26 ; 2 uses
  %i.js = icmp slt i32 %i.jr, %.01319.i.i.i.i.epil
  %i.jt = trunc nuw nsw i64 %indvars.iv.i107.i.i.i.epil to i32
  %spec.select.i.i.i.i.epil = select i1 %i.js, i32 %i.jt, i32 %.01418.i.i.i.i.epil ; 2 uses
  %spec.select17.i.i.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jr, i32 %.01319.i.i.i.i.epil)
  %indvars.iv.next.i108.i.i.i.epil = add nuw nsw i64 %indvars.iv.i107.i.i.i.epil, 1
  %epil.iter391.next = add i64 %epil.iter391, 1   ; 2 uses
  %epil.iter391.cmp.not = icmp eq i64 %epil.iter391.next, %xtraiter390
  br i1 %epil.iter391.cmp.not, label %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, label %bb.be, !llvm.loop !65

_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa, %bb.be, %._crit_edge.i.i.i
  %.014.lcssa.i.i.i.i = phi i32 [ -1, %._crit_edge.i.i.i ], [ %spec.select.i.i.i.i.3, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i.loopexit.unr-lcssa ], [ %spec.select.i.i.i.i.epil, %bb.be ] ; 2 uses
  store i32 %.014.lcssa.i.i.i.i, ptr %i.gp, align 4, !tbaa !60
  %i.ju = sext i32 %.014.lcssa.i.i.i.i to i64     ; 3 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.ju
  store i32 %.089145.i.i.i, ptr %i.jv, align 4, !tbaa !26
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.ju
  store i32 %.084.i.i.i, ptr %i.jw, align 4, !tbaa !26
  br label %.thread127.sink.split.i.i.i

.lr.ph.i56.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bj
  %.0141.i.i.i = phi i32 [ %i.lh, %bb.bj ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %.071140.i.i.i = phi i32 [ %spec.select99.i.i.i, %bb.bj ], [ 4, %.preheader.i.i.i ]
  %i.jx = icmp eq i32 %.0141.i.i.i, %i.co
  %spec.select99.i.i.i = select i1 %i.jx, i32 1, i32 %.071140.i.i.i ; 3 uses
  %i.jy = zext nneg i32 %.0141.i.i.i to i64       ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !33
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %.lr.ph.i56.i.i
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.jy
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !26
  %i.ke = icmp eq i32 %i.kd, %.084.i.i.i
  br i1 %i.ke, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.kf = add nuw nsw i32 %spec.select99.i.i.i, %spec.select98.i.i.i
  %i.kg = load i32, ptr %5, align 4, !tbaa !58    ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph.i112.i.i.i, label %.thread129.i.i.i

.lr.ph.i112.i.i.i:                                ; preds = %bb.bg
  %wide.trip.count.i113.i.i.i = zext nneg i32 %i.kg to i64 ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count.i113.i.i.i, 3 ; 3 uses
  %i.ki = icmp ult i32 %i.kg, 4
  br i1 %i.ki, label %.epil.preheader382, label %.lr.ph.i112.i.i.i.new

.lr.ph.i112.i.i.i.new:                            ; preds = %.lr.ph.i112.i.i.i
  %unroll_iter387 = and i64 %wide.trip.count.i113.i.i.i, 2147483644
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i112.i.i.i.new
  %indvars.iv.i114.i.i.i = phi i64 [ 0, %.lr.ph.i112.i.i.i.new ], [ %indvars.iv.next.i119.i.i.i.3, %bb.bh ] ; 6 uses
  %.01319.i115.i.i.i = phi i32 [ 69632, %.lr.ph.i112.i.i.i.new ], [ %spec.select17.i118.i.i.i.3, %bb.bh ] ; 2 uses
  %.01418.i116.i.i.i = phi i32 [ -1, %.lr.ph.i112.i.i.i.new ], [ %spec.select.i117.i.i.i.3, %bb.bh ]
  %niter388 = phi i64 [ 0, %.lr.ph.i112.i.i.i.new ], [ %niter388.next.3, %bb.bh ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i114.i.i.i
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !26 ; 2 uses
  %i.kl = icmp slt i32 %i.kk, %.01319.i115.i.i.i
  %i.km = trunc nuw nsw i64 %indvars.iv.i114.i.i.i to i32
  %spec.select.i117.i.i.i = select i1 %i.kl, i32 %i.km, i32 %.01418.i116.i.i.i
  %spec.select17.i118.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.kk, i32 %.01319.i115.i.i.i) ; 2 uses
  %indvars.iv.next.i119.i.i.i = or disjoint i64 %indvars.iv.i114.i.i.i, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i119.i.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !26 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, %spec.select17.i118.i.i.i
  %i.kq = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i to i32
  %spec.select.i117.i.i.i.1 = select i1 %i.kp, i32 %i.kq, i32 %spec.select.i117.i.i.i
  %spec.select17.i118.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ko, i32 %spec.select17.i118.i.i.i) ; 2 uses
  %indvars.iv.next.i119.i.i.i.1 = or disjoint i64 %indvars.iv.i114.i.i.i, 2 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i119.i.i.i.1
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !26 ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %spec.select17.i118.i.i.i.1
  %i.ku = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i.1 to i32
  %spec.select.i117.i.i.i.2 = select i1 %i.kt, i32 %i.ku, i32 %spec.select.i117.i.i.i.1
  %spec.select17.i118.i.i.i.2 = tail call i32 @llvm.smin.i32(i32 %i.ks, i32 %spec.select17.i118.i.i.i.1) ; 2 uses
  %indvars.iv.next.i119.i.i.i.2 = or disjoint i64 %indvars.iv.i114.i.i.i, 3 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i119.i.i.i.2
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !26 ; 2 uses
  %i.kx = icmp slt i32 %i.kw, %spec.select17.i118.i.i.i.2
  %i.ky = trunc nuw nsw i64 %indvars.iv.next.i119.i.i.i.2 to i32
  %spec.select.i117.i.i.i.3 = select i1 %i.kx, i32 %i.ky, i32 %spec.select.i117.i.i.i.2 ; 3 uses
  %spec.select17.i118.i.i.i.3 = tail call i32 @llvm.smin.i32(i32 %i.kw, i32 %spec.select17.i118.i.i.i.2) ; 2 uses
  %indvars.iv.next.i119.i.i.i.3 = add nuw nsw i64 %indvars.iv.i114.i.i.i, 4 ; 2 uses
  %niter388.next.3 = add nuw i64 %niter388, 4     ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.thread129.i.i.i.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !64

.thread129.i.i.i.loopexit.unr-lcssa:              ; preds = %bb.bh
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.thread129.i.i.i, label %.epil.preheader382

.epil.preheader382:                               ; preds = %.thread129.i.i.i.loopexit.unr-lcssa, %.lr.ph.i112.i.i.i
  %indvars.iv.i114.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i112.i.i.i ], [ %indvars.iv.next.i119.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %.01319.i115.i.i.i.epil.init = phi i32 [ 69632, %.lr.ph.i112.i.i.i ], [ %spec.select17.i118.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %.01418.i116.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i112.i.i.i ], [ %spec.select.i117.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter383, 0
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader382
  %indvars.iv.i114.i.i.i.epil = phi i64 [ %indvars.iv.i114.i.i.i.epil.init, %.epil.preheader382 ], [ %indvars.iv.next.i119.i.i.i.epil, %bb.bi ] ; 3 uses
  %.01319.i115.i.i.i.epil = phi i32 [ %.01319.i115.i.i.i.epil.init, %.epil.preheader382 ], [ %spec.select17.i118.i.i.i.epil, %bb.bi ] ; 2 uses
  %.01418.i116.i.i.i.epil = phi i32 [ %.01418.i116.i.i.i.epil.init, %.epil.preheader382 ], [ %spec.select.i117.i.i.i.epil, %bb.bi ]
  %epil.iter = phi i64 [ 0, %.epil.preheader382 ], [ %epil.iter.next, %bb.bi ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i114.i.i.i.epil
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !26 ; 2 uses
  %i.lb = icmp slt i32 %i.la, %.01319.i115.i.i.i.epil
  %i.lc = trunc nuw nsw i64 %indvars.iv.i114.i.i.i.epil to i32
  %spec.select.i117.i.i.i.epil = select i1 %i.lb, i32 %i.lc, i32 %.01418.i116.i.i.i.epil ; 2 uses
  %spec.select17.i118.i.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %.01319.i115.i.i.i.epil)
  %indvars.iv.next.i119.i.i.i.epil = add nuw nsw i64 %indvars.iv.i114.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter383
  br i1 %epil.iter.cmp.not, label %.thread129.i.i.i, label %bb.bi, !llvm.loop !67

.thread129.i.i.i:                                 ; preds = %.thread129.i.i.i.loopexit.unr-lcssa, %bb.bi, %bb.bg
  %.014.lcssa.i111.i.i.i = phi i32 [ -1, %bb.bg ], [ %spec.select.i117.i.i.i.3, %.thread129.i.i.i.loopexit.unr-lcssa ], [ %spec.select.i117.i.i.i.epil, %bb.bi ] ; 2 uses
  store i32 %.014.lcssa.i111.i.i.i, ptr %i.gp, align 4, !tbaa !60
  %i.ld = sext i32 %.014.lcssa.i111.i.i.i to i64  ; 3 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.ld
  store i32 %.0141.i.i.i, ptr %i.le, align 4, !tbaa !26
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.ld
  store i32 %.084.i.i.i, ptr %i.lf, align 4, !tbaa !26
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.ld
  store i32 %i.kf, ptr %i.lg, align 4, !tbaa !26
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf, %.lr.ph.i56.i.i
  %i.lh = add nuw nsw i32 %spec.select99.i.i.i, %.0141.i.i.i ; 2 uses
  %i.li = icmp eq i32 %i.lh, %.089145.i.i.i
  br i1 %i.li, label %._crit_edge.i.i.i, label %.lr.ph.i56.i.i, !llvm.loop !68

bb.bk:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.i.i.i
  %i.lj = icmp sgt i32 %i.iu, -1
  br i1 %i.lj, label %bb.bl, label %.thread127.i.i.i

bb.bl:                                            ; preds = %bb.bk, %.thread129.i.i.i
  %.173131.i.i.i = phi i32 [ %.0141.i.i.i, %.thread129.i.i.i ], [ %i.iu, %bb.bk ]
  store i8 2, ptr %i.gz, align 1, !tbaa !33
  store i32 %.173131.i.i.i, ptr %i.gx, align 4, !tbaa !26
  br label %.thread133.i.i.i

.thread127.sink.split.i.i.i:                      ; preds = %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i
  %.sink173.i.i.i = phi i64 [ %i.ip, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks9findOrAddEiij.exit.thread.i.i.i ], [ %i.ju, %_ZN6icu_7812_GLOBAL__N_113AllSameBlocks3addEiij.exit.i.i.i ]
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %.sink173.i.i.i
  store i32 %spec.select98.i.i.i, ptr %i.lk, align 4, !tbaa !26
  br label %.thread127.i.i.i

.thread127.i.i.i:                                 ; preds = %.thread127.sink.split.i.i.i, %bb.bk
  %i.ll = add nsw i32 %spec.select.i.i.i, %.078147.i.i.i
  br label %.thread133.i.i.i

bb.bm:                                            ; preds = %.lr.ph
  %i.lm = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12getDataBlockEi(ptr noundef nonnull align 8 dereferenceable(69696) %0, i32 noundef %.089145.i.i.i)
  %i.ln = icmp sgt i32 %i.lm, -1                  ; 2 uses
  %i.lo = select i1 %i.ln, i32 %spec.select.i.i.i, i32 0
  %spec.select102.i.i.i = add nsw i32 %i.lo, %.078147.i.i.i
  br i1 %i.ln, label %.thread133.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i

.thread133.i.i.i:                                 ; preds = %bb.bm, %.thread127.i.i.i, %bb.bl, %bb.au
  %.583136.i.i.i = phi i32 [ %i.hp, %bb.au ], [ %spec.select102.i.i.i, %bb.bm ], [ %i.ll, %.thread127.i.i.i ], [ %.078147.i.i.i, %bb.bl ] ; 10 uses
  %i.lp = add nuw nsw i32 %spec.select98.i.i.i, %.089145.i.i.i ; 2 uses
  %.not97.i.i.i = icmp samesign ult i32 %i.lp, %i.gq
  br i1 %.not97.i.i.i, label %bb.as, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i, !llvm.loop !69

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i: ; preds = %.thread133.i.i.i
  %i.lq = icmp slt i32 %.583136.i.i.i, 0
  br i1 %i.lq, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i

bb.bn:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i, %.loopexit133.i.i
  %indvars.iv236.i.i = phi i64 [ 0, %.loopexit133.i.i ], [ %indvars.iv.next237.i.i, %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i ] ; 5 uses
  %.not.i61.i.i = icmp samesign ult i64 %indvars.iv236.i.i, %i.go
  br i1 %.not.i61.i.i, label %bb.bo, label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.lr = lshr i64 %indvars.iv236.i.i, 4          ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !33
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lv = load ptr, ptr %0, align 8, !tbaa !10
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.lr
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.lx = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  %i.ly = load ptr, ptr %i.gn, align 8, !tbaa !24
  %i.lz = load ptr, ptr %0, align 8, !tbaa !10
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lr
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !26
  %i.mc = and i32 %i.lx, 15
  %i.md = add i32 %i.mb, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.me
  br label %_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i

_ZNK6icu_7812_GLOBAL__N_120MutableCodePointTrie3getEi.exit64.i.i: ; preds = %bb.bq, %bb.bp, %bb.bn
  %.1.in.i62.i.i = phi ptr [ %i.mf, %bb.bq ], [ %i.lw, %bb.bp ], [ %i.df, %bb.bn ]
  %.1.i63.i.i = load i32, ptr %.1.in.i62.i.i, align 4, !tbaa !26
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv236.i.i
  store i32 %.1.i63.i.i, ptr %i.mg, align 4, !tbaa !26
  %indvars.iv.next237.i.i = add nuw nsw i64 %indvars.iv236.i.i, 1 ; 2 uses
  %exitcond239.not.i.i = icmp eq i64 %indvars.iv.next237.i.i, 128
  br i1 %exitcond239.not.i.i, label %.lr.ph149.i.i.i, label %bb.bn, !llvm.loop !70

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.i.i
  %i.mh = shl nsw i32 %.583136.i.i.i, 2
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.mi) #14 ; 23 uses
  %i.mk = ptrtoaddr ptr %i.mj to i64
  %i.ml = icmp eq ptr %i.mj, null
  br i1 %i.ml, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactTrieEiR10UErrorCode.exit.thread.i, label %bb.br

bb.br:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie22compactWholeDataBlocksEiRNS0_13AllSameBlocksE.exit.thread121.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.mj, ptr noundef nonnull align 16 dereferenceable(512) %i.c, i64 512, i1 false)
  %i.mm = load i32, ptr %5, align 4, !tbaa !58    ; 4 uses
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i, label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %bb.br
  %i.mo = icmp sgt i32 %i.mm, 0
  br i1 %i.mo, label %.lr.ph.i67.i.i, label %._crit_edge.i66.i.i

.lr.ph.i67.i.i:                                   ; preds = %.preheader.i65.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.mm to i64 ; 2 uses
  %xtraiter398 = and i64 %wide.trip.count.i.i.i, 3 ; 3 uses
  %i.mp = icmp ult i32 %i.mm, 4
  br i1 %i.mp, label %.epil.preheader397, label %.lr.ph.i67.i.i.new

.lr.ph.i67.i.i.new:                               ; preds = %.lr.ph.i67.i.i
  %unroll_iter403 = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.bt

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %bb.bt
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %._crit_edge.loopexit.i.i.i, label %.epil.preheader397

.epil.preheader397:                               ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i67.i.i
  %indvars.iv.i68.i.i.epil.init = phi i64 [ 0, %.lr.ph.i67.i.i ], [ %indvars.iv.next.i70.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0815.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i67.i.i ], [ %spec.select13.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0914.i.i.i.epil.init = phi i32 [ -1, %.lr.ph.i67.i.i ], [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter398, 0
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader397
  %indvars.iv.i68.i.i.epil = phi i64 [ %indvars.iv.i68.i.i.epil.init, %.epil.preheader397 ], [ %indvars.iv.next.i70.i.i.epil, %bb.bs ] ; 3 uses
  %.0815.i.i.i.epil = phi i32 [ %.0815.i.i.i.epil.init, %.epil.preheader397 ], [ %spec.select13.i.i.i.epil, %bb.bs ] ; 2 uses
  %.0914.i.i.i.epil = phi i32 [ %.0914.i.i.i.epil.init, %.epil.preheader397 ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %epil.iter399 = phi i64 [ 0, %.epil.preheader397 ], [ %epil.iter399.next, %bb.bs ]
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i68.i.i.epil
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !26 ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, %.0815.i.i.i.epil
  %i.mt = trunc nuw nsw i64 %indvars.iv.i68.i.i.epil to i32
  %spec.select.i69.i.i.epil = select i1 %i.ms, i32 %i.mt, i32 %.0914.i.i.i.epil ; 2 uses
  %spec.select13.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %i.mr, i32 %.0815.i.i.i.epil)
  %indvars.iv.next.i70.i.i.epil = add nuw nsw i64 %indvars.iv.i68.i.i.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %._crit_edge.loopexit.i.i.i, label %bb.bs, !llvm.loop !71

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bs, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %spec.select.i69.i.i.lcssa = phi i32 [ %spec.select.i69.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i69.i.i.epil, %bb.bs ]
  %i.mu = sext i32 %spec.select.i69.i.i.lcssa to i64
  br label %._crit_edge.i66.i.i

._crit_edge.i66.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i65.i.i
  %.09.lcssa.i.i.i = phi i64 [ -1, %.preheader.i65.i.i ], [ %i.mu, %._crit_edge.loopexit.i.i.i ]
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %.09.lcssa.i.i.i
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !26
  br label %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i67.i.i.new
  %indvars.iv.i68.i.i = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %indvars.iv.next.i70.i.i.3, %bb.bt ] ; 6 uses
  %.0815.i.i.i = phi i32 [ 0, %.lr.ph.i67.i.i.new ], [ %spec.select13.i.i.i.3, %bb.bt ] ; 2 uses
  %.0914.i.i.i = phi i32 [ -1, %.lr.ph.i67.i.i.new ], [ %spec.select.i69.i.i.3, %bb.bt ]
  %niter404 = phi i64 [ 0, %.lr.ph.i67.i.i.new ], [ %niter404.next.3, %bb.bt ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i68.i.i
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !26 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, %.0815.i.i.i
  %i.na = trunc nuw nsw i64 %indvars.iv.i68.i.i to i32
  %spec.select.i69.i.i = select i1 %i.mz, i32 %i.na, i32 %.0914.i.i.i
  %spec.select13.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.my, i32 %.0815.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i = or disjoint i64 %indvars.iv.i68.i.i, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i70.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !26 ; 2 uses
  %i.nd = icmp sgt i32 %i.nc, %spec.select13.i.i.i
  %i.ne = trunc nuw nsw i64 %indvars.iv.next.i70.i.i to i32
  %spec.select.i69.i.i.1 = select i1 %i.nd, i32 %i.ne, i32 %spec.select.i69.i.i
  %spec.select13.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 %spec.select13.i.i.i) ; 2 uses
  %indvars.iv.next.i70.i.i.1 = or disjoint i64 %indvars.iv.i68.i.i, 2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i70.i.i.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !26 ; 2 uses
  %i.nh = icmp sgt i32 %i.ng, %spec.select13.i.i.i.1
  %i.ni = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.1 to i32
  %spec.select.i69.i.i.2 = select i1 %i.nh, i32 %i.ni, i32 %spec.select.i69.i.i.1
  %spec.select13.i.i.i.2 = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 %spec.select13.i.i.i.1) ; 2 uses
  %indvars.iv.next.i70.i.i.2 = or disjoint i64 %indvars.iv.i68.i.i, 3 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next.i70.i.i.2
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !26 ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, %spec.select13.i.i.i.2
  %i.nm = trunc nuw nsw i64 %indvars.iv.next.i70.i.i.2 to i32
  %spec.select.i69.i.i.3 = select i1 %i.nl, i32 %i.nm, i32 %spec.select.i69.i.i.2 ; 3 uses
  %spec.select13.i.i.i.3 = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 %spec.select13.i.i.i.2) ; 2 uses
  %indvars.iv.next.i70.i.i.3 = add nuw nsw i64 %indvars.iv.i68.i.i, 4 ; 2 uses
  %niter404.next.3 = add nuw i64 %niter404, 4     ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %bb.bt, !llvm.loop !72

_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i: ; preds = %._crit_edge.i66.i.i, %bb.br
  %.011.i.i.i = phi i32 [ %i.mw, %._crit_edge.i66.i.i ], [ -1, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  %i.nn = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  store i32 0, ptr %i.nn, align 4, !tbaa !26
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store i32 64, ptr %i.no, align 4, !tbaa !26
  %i.np = icmp samesign ult i32 %.583136.i.i.i, 4159
  br i1 %i.np, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 12, ptr %i.nq, align 8, !tbaa !73
  %i.nr = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 4095, ptr %i.nr, align 4, !tbaa !75
  br label %bb.ca

bb.bv:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_113AllSameBlocks12findMostUsedEv.exit.i.i
  %i.ns = icmp samesign ult i32 %.583136.i.i.i, 32831
  %i.nt = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  br i1 %i.ns, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 15, ptr %i.nu, align 8, !tbaa !73
  store i32 32767, ptr %i.nt, align 4, !tbaa !75
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.nv = icmp samesign ult i32 %.583136.i.i.i, 131135
  %i.nw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.nv, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 17, ptr %i.nw, align 8, !tbaa !73
  store i32 131071, ptr %i.nt, align 4, !tbaa !75
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  store i32 21, ptr %i.nw, align 8, !tbaa !73
  store i32 2097151, ptr %i.nt, align 4, !tbaa !75
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bu
  %.promoted176.i.i = phi i32 [ 4095, %bb.bu ], [ 32767, %bb.bw ], [ 131071, %bb.by ], [ 2097151, %bb.bz ]
  %.promoted.i.i = phi i32 [ 12, %bb.bu ], [ 15, %bb.bw ], [ 17, %bb.by ], [ 21, %bb.bz ]
  %.promoted184.i.i = phi i32 [ 6007, %bb.bu ], [ 50021, %bb.bw ], [ 200003, %bb.by ], [ 1500007, %bb.bz ] ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ca
  %i.ny = shl nuw nsw i32 %.promoted184.i.i, 2
  %i.nz = zext nneg i32 %i.ny to i64              ; 2 uses
  %i.oa = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.nz) #14
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.i.i ; 5 uses

.noexc86.i.i:                                     ; preds = %.noexc.i.i
  store ptr %i.oa, ptr %6, align 8, !tbaa !76
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc86.i.i
  store i32 %.promoted184.i.i, ptr %i.nx, align 8, !tbaa !77
  %i.oc = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 %.promoted184.i.i, ptr %i.oc, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.oa, i8 0, i64 %i.nz, i1 false)
  %i.od = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 64, ptr %i.od, align 8, !tbaa !79
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mj, i32 noundef 0, i32 noundef 128)
  %i.oe = load i32, ptr %i.cp, align 8, !tbaa !21
  %i.of = ashr i32 %i.oe, 4                       ; 2 uses
  %.not201.i.i.i = icmp sgt i32 %i.of, 8
  br i1 %.not201.i.i.i, label %.lr.ph209.i.i.i, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

.lr.ph209.i.i.i:                                  ; preds = %bb.cb
  %i.og = icmp samesign ult i32 %.583136.i.i.i, 4111 ; 3 uses
  %i.oh = icmp samesign ult i32 %.583136.i.i.i, 32783 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.oj = icmp samesign ult i32 %.583136.i.i.i, 131087 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ol = zext nneg i32 %i.co to i64
  %.mux.i.i.i = select i1 %i.og, i32 12, i32 15
  %.mux315.i.i.i = select i1 %i.og, i32 4095, i32 32767
  %.mux316.i.i.i = select i1 %i.og, i32 6007, i32 50021
  %..i.i.i = select i1 %i.oj, i32 17, i32 21
  %.313.i.i.i = select i1 %i.oj, i32 131071, i32 2097151
  %.314.i.i.i = select i1 %i.oj, i32 200003, i32 1500007
  %.sink312.i.i.i = select i1 %i.oh, i32 %.mux.i.i.i, i32 %..i.i.i ; 2 uses
  %.sink.i.i.i = select i1 %i.oh, i32 %.mux315.i.i.i, i32 %.313.i.i.i ; 2 uses
  %.0.i118.i.i.i = select i1 %i.oh, i32 %.mux316.i.i.i, i32 %.314.i.i.i ; 6 uses
  %.pre13.i121.i.i.i = shl nuw nsw i32 %.0.i118.i.i.i, 2
  %.pre14.i122.i.i.i = zext nneg i32 %.pre13.i121.i.i.i to i64 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cw, %.lr.ph209.i.i.i
  %i.om = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %i.ot, %bb.cw ]
  %.0.i118.i185.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i186.i.i, %bb.cw ]
  %i.on = phi ptr [ %i.oa, %.lr.ph209.i.i.i ], [ %i.ou, %bb.cw ] ; 3 uses
  %.0.i118.i182.i.i = phi i32 [ %.promoted184.i.i, %.lr.ph209.i.i.i ], [ %.0.i118.i180.i.i, %bb.cw ] ; 3 uses
  %.sink.i178.i.i = phi i32 [ %.promoted176.i.i, %.lr.ph209.i.i.i ], [ %.sink.i177.i.i, %bb.cw ]
  %.sink312.i175.i.i = phi i32 [ %.promoted.i.i, %.lr.ph209.i.i.i ], [ %.sink312.i174.i.i, %bb.cw ]
  %.199206.i.i.i = phi i32 [ 128, %.lr.ph209.i.i.i ], [ %.6.i.i.i, %bb.cw ] ; 19 uses
  %.0103205.i.i.i = phi i32 [ 64, %.lr.ph209.i.i.i ], [ %.1104.i.i.i, %bb.cw ]
  %.0108204.i.i.i = phi i32 [ 8, %.lr.ph209.i.i.i ], [ %i.xy, %bb.cw ] ; 5 uses
  %.0109203.i.i.i = phi i32 [ 0, %.lr.ph209.i.i.i ], [ %.1110.i.i.i, %bb.cw ]
  %.0111202.i.i.i = phi i32 [ 4, %.lr.ph209.i.i.i ], [ %.1112.i.i.i, %bb.cw ]
  %i.oo = icmp eq i32 %.0108204.i.i.i, %i.co
  br i1 %i.oo, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  store i32 %.sink312.i.i.i, ptr %i.ok, align 8, !tbaa !73
  store i32 %.sink.i.i.i, ptr %i.oi, align 4, !tbaa !75
  %i.op = icmp sgt i32 %.0.i118.i.i.i, %.0.i118.i182.i.i
  br i1 %i.op, label %bb.ce, label %._crit_edge.i120.i.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @uprv_free_78(ptr noundef %i.on)
          to label %.noexc87.i.i unwind label %.loopexit.i.i

.noexc87.i.i:                                     ; preds = %bb.ce
  %i.oq = invoke noalias ptr @uprv_malloc_78(i64 noundef %.pre14.i122.i.i.i) #14
          to label %.noexc88.i.i unwind label %.loopexit.i.i ; 3 uses

.noexc88.i.i:                                     ; preds = %.noexc87.i.i
  store ptr %i.oq, ptr %6, align 8, !tbaa !76
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i, label %bb.cf

bb.cf:                                            ; preds = %.noexc88.i.i
  store i32 %.0.i118.i.i.i, ptr %i.nx, align 8, !tbaa !77
  br label %._crit_edge.i120.i.i.i

._crit_edge.i120.i.i.i:                           ; preds = %bb.cf, %bb.cd
  %i.os = phi ptr [ %i.oq, %bb.cf ], [ %i.on, %bb.cd ] ; 2 uses
  %.0.i118.i181.i.i = phi i32 [ %.0.i118.i.i.i, %bb.cf ], [ %.0.i118.i182.i.i, %bb.cd ]
  store i32 %.0.i118.i.i.i, ptr %i.oc, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.os, i8 0, i64 %.pre14.i122.i.i.i, i1 false)
  store i32 16, ptr %i.od, align 8, !tbaa !79
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mj, i32 noundef 0, i32 noundef %.199206.i.i.i)
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i120.i.i.i, %bb.cc
  %i.ot = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %i.om, %bb.cc ] ; 6 uses
  %.0.i118.i186.i.i = phi i32 [ %.0.i118.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i185.i.i, %bb.cc ] ; 5 uses
  %i.ou = phi ptr [ %i.os, %._crit_edge.i120.i.i.i ], [ %i.on, %bb.cc ] ; 8 uses
  %.0.i118.i180.i.i = phi i32 [ %.0.i118.i181.i.i, %._crit_edge.i120.i.i.i ], [ %.0.i118.i182.i.i, %bb.cc ]
  %.sink.i177.i.i = phi i32 [ %.sink.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink.i178.i.i, %bb.cc ] ; 7 uses
  %.sink312.i174.i.i = phi i32 [ %.sink312.i.i.i, %._crit_edge.i120.i.i.i ], [ %.sink312.i175.i.i, %bb.cc ] ; 3 uses
  %.1112.i.i.i = phi i32 [ 1, %._crit_edge.i120.i.i.i ], [ %.0111202.i.i.i, %bb.cc ] ; 2 uses
  %.1110.i.i.i = phi i32 [ %.199206.i.i.i, %._crit_edge.i120.i.i.i ], [ %.0109203.i.i.i, %bb.cc ] ; 3 uses
  %.1104.i.i.i = phi i32 [ 16, %._crit_edge.i120.i.i.i ], [ %.0103205.i.i.i, %bb.cc ] ; 9 uses
  %i.ov = zext nneg i32 %.0108204.i.i.i to i64    ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !33
  switch i8 %i.ox, label %bb.cv [
    i8 0, label %.lr.ph.i.i.i.preheader.i.i
    i8 1, label %bb.co
  ]

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.cg
  %i.oy = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.ov ; 3 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !26 ; 16 uses
  %i.pb = add nsw i32 %i.ot, -16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.pa, %.lr.ph.i.i.i.preheader.i.i ], [ %i.pr, %.lr.ph.i.i.i.i.i ]
  %niter422 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.i.i ], [ %niter422.next.7, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pc = mul i32 %.061.i.i.i.i.i, 37
  %i.pd = add i32 %i.pc, %i.pa
  %i.pe = mul i32 %i.pd, 37
  %i.pf = add i32 %i.pe, %i.pa
  %i.pg = mul i32 %i.pf, 37
  %i.ph = add i32 %i.pg, %i.pa
  %i.pi = mul i32 %i.ph, 37
  %i.pj = add i32 %i.pi, %i.pa
  %i.pk = mul i32 %i.pj, 37
  %i.pl = add i32 %i.pk, %i.pa
  %i.pm = mul i32 %i.pl, 37
  %i.pn = add i32 %i.pm, %i.pa
  %i.po = mul i32 %i.pn, 37
  %i.pp = add i32 %i.po, %i.pa
  %i.pq = mul i32 %i.pp, 37
  %i.pr = add i32 %i.pq, %i.pa                    ; 2 uses
  %niter422.next.7 = add nuw i32 %niter422, 8
  %niter422.ncmp.7 = icmp eq i32 %niter422, %i.pb
  br i1 %niter422.ncmp.7, label %.lr.ph.i.i.i.i.i.epil, label %.lr.ph.i.i.i.i.i, !llvm.loop !80

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.epil
  %.061.i.i.i.i.i.epil = phi i32 [ %i.pt, %.lr.ph.i.i.i.i.i.epil ], [ %i.pr, %.lr.ph.i.i.i.i.i ]
  %epil.iter417 = phi i32 [ %epil.iter417.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.ps = mul i32 %.061.i.i.i.i.i.epil, 37
  %i.pt = add i32 %i.ps, %i.pa                    ; 3 uses
  %epil.iter417.next = add i32 %epil.iter417, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@umutablecptrie_buildImmutable_78:bb.a
  %i.wx = sub nsw i64 %indvars.iv250.i.i.i.ph, %i.vr
  %i.wy = icmp ugt i64 %i.wx, -4
  br i1 %i.wy, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i

.lr.ph.i77.i.i:                                   ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i
  %indvars.iv250.i.i.i = phi i64 [ %indvars.iv.next251.i.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv250.i.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i78.i.i = phi i64 [ %indvars.iv.next.i79.i.i.3, %.lr.ph.i77.i.i ], [ %indvars.iv.i78.i.i.unr, %.lr.ph.i77.i.i.prol.loopexit ] ; 5 uses
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.te, i64 %indvars.iv250.i.i.i
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !26
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i78.i.i
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !26
  %i.xc = getelementptr [4 x i8], ptr %i.te, i64 %indvars.iv250.i.i.i
  %i.xd = getelementptr i8, ptr %i.xc, i64 4
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !26
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i78.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  store i32 %i.xe, ptr %i.xg, align 4, !tbaa !26
  %i.xh = getelementptr [4 x i8], ptr %i.te, i64 %indvars.iv250.i.i.i
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !26
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i78.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i32 %i.xj, ptr %i.xl, align 4, !tbaa !26
  %indvars.iv.next251.i.i.i.3 = add nsw i64 %indvars.iv250.i.i.i, 4 ; 2 uses
  %i.xm = getelementptr [4 x i8], ptr %i.te, i64 %indvars.iv250.i.i.i
  %i.xn = getelementptr i8, ptr %i.xm, i64 12
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !26
  %indvars.iv.next.i79.i.i.3 = add nuw nsw i64 %indvars.iv.i78.i.i, 4 ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv.i78.i.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  store i32 %i.xo, ptr %i.xq, align 4, !tbaa !26
  %exitcond.not.i80.i.i.3 = icmp eq i64 %indvars.iv.next251.i.i.i.3, %i.vr
  br i1 %exitcond.not.i80.i.i.3, label %._crit_edge.loopexit.i81.i.i, label %.lr.ph.i77.i.i, !llvm.loop !97

._crit_edge.loopexit.i81.i.i:                     ; preds = %.lr.ph.i77.i.i.prol.loopexit, %.lr.ph.i77.i.i, %middle.block251
  %indvars.iv.next.i79.i.i.lcssa = phi i64 [ %i.wp, %middle.block251 ], [ %indvars.iv.next.i79.i.i.lcssa351.unr, %.lr.ph.i77.i.i.prol.loopexit ], [ %indvars.iv.next.i79.i.i.3, %.lr.ph.i77.i.i ]
  %i.xr = trunc nuw i64 %indvars.iv.next.i79.i.i.lcssa to i32
  br label %._crit_edge.i74.i.i

._crit_edge.i74.i.i:                              ; preds = %._crit_edge.loopexit.i81.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i
  %.4.lcssa.i.i.i = phi i32 [ %.199206.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIjjEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.xr, %._crit_edge.loopexit.i81.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mj, i32 noundef %.199206.i.i.i, i32 noundef %.4.lcssa.i.i.i)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cg
  %i.xs = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.ov ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !26
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !26
  store i32 %i.xx, ptr %i.xt, align 4, !tbaa !26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge.i74.i.i, %bb.cs, %._crit_edge199.i.i.i, %.critedge.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.199206.i.i.i, %bb.cv ], [ %.2100.lcssa.i.i.i, %._crit_edge199.i.i.i ], [ %.199206.i.i.i, %.critedge.thread.i.i.i ], [ %.199206.i.i.i, %bb.cs ], [ %.4.lcssa.i.i.i, %._crit_edge.i74.i.i ] ; 2 uses
  %i.xy = add i32 %.1112.i.i.i, %.0108204.i.i.i   ; 2 uses
  %.not.i75.i.i = icmp slt i32 %i.xy, %i.of
  br i1 %.not.i75.i.i, label %bb.cc, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i, !llvm.loop !98

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.thread.i.i: ; preds = %.noexc88.i.i, %.noexc86.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fs

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i: ; preds = %bb.cw, %bb.cb
  %.pre.i.i93.ph.i.i = phi ptr [ %i.oa, %bb.cb ], [ %i.ou, %bb.cw ] ; 4 uses
  %.2.i72.ph.i.i = phi i32 [ 128, %bb.cb ], [ %.6.i.i.i, %bb.cw ] ; 2 uses
  %.pr.i.i = load i32, ptr %3, align 4, !tbaa !8
  %i.xz = icmp slt i32 %.pr.i.i, 1
  br i1 %i.xz, label %bb.cx, label %bb.fs

.loopexit.i.i:                                    ; preds = %.noexc87.i.i, %bb.ce
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.cx, %.noexc.i.i, %bb.ca
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.cx:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie11compactDataEiPjiiRNS0_11MixedBlocksER10UErrorCode.exit.i.i
  %i.ya = load ptr, ptr %i.gn, align 8, !tbaa !24
  invoke void @uprv_free_78(ptr noundef %i.ya)
          to label %bb.cy unwind label %.loopexit.split-lp.i.i

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.mj, ptr %i.gn, align 8, !tbaa !24
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.583136.i.i.i, ptr %i.yb, align 8, !tbaa !25
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.2.i72.ph.i.i, ptr %i.yc, align 4, !tbaa !27
  %i.yd = icmp samesign ugt i32 %.2.i72.ph.i.i, 262159
  br i1 %i.yd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 8, ptr %3, align 4, !tbaa !8
  br label %bb.fs

bb.da:                                            ; preds = %bb.cy
  %i.ye = icmp sgt i32 %.011.i.i.i, -1
  br i1 %i.ye, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yf = load ptr, ptr %0, align 8, !tbaa !10
  %i.yg = zext nneg i32 %.011.i.i.i to i64
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !26 ; 2 uses
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !26
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.yl, ptr %i.ym, align 8, !tbaa !19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.sink.i.i = phi i32 [ %i.yi, %bb.db ], [ 1048575, %bb.da ]
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yn, align 8, !tbaa !17
  %i.yo = lshr exact i32 %i.cn, 6                 ; 5 uses
  %i.yp = load i32, ptr %i.cp, align 8, !tbaa !21
  %i.yq = ashr i32 %i.yp, 6
  %.not.i89.i.i = icmp sgt i32 %i.yq, %i.yo
  br i1 %.not.i89.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32767, ptr %i.yr, align 4, !tbaa !16
  br label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie12compactIndexEiRNS0_11MixedBlocksER10UErrorCode.exit.i.i

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ys = load ptr, ptr %0, align 8, !tbaa !10
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.yu = add nsw i32 %i.co, -4
  %i.yv = lshr exact i32 %i.yu, 2
  %i.yw = add nuw nsw i32 %i.yv, 1
  %wide.trip.count.i90.i.i = zext nneg i32 %i.yw to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %bb.de
  %indvars.iv447.i.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next448.i.i.i, %bb.dj ] ; 3 uses
  %indvars.iv.i91.i.i = phi i64 [ 0, %bb.de ], [ %indvars.iv.next446.i.i.i, %bb.dj ] ; 2 uses
  %.0239392.i.i.i = phi i32 [ -1, %bb.de ], [ %.1240.i.i.i, %bb.dj ] ; 5 uses
  %indvars451.i.i.i = trunc i64 %indvars.iv447.i.i.i to i32 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i91.i.i ; 3 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !26 ; 4 uses
  %i.yz = trunc i32 %i.yy to i16
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv447.i.i.i
  store i16 %i.yz, ptr %i.za, align 2, !tbaa !35
  %i.zb = load i32, ptr %i.yn, align 8, !tbaa !17
  %i.zc = icmp eq i32 %i.yy, %i.zb
  br i1 %i.zc, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zd = icmp slt i32 %.0239392.i.i.i, 0
  br i1 %i.zd, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ze = load i32, ptr %i.yt, align 4, !tbaa !16
  %i.zf = icmp slt i32 %i.ze, 0
  %i.zg = sub nsw i32 %indvars451.i.i.i, %.0239392.i.i.i
  %i.zh = icmp eq i32 %i.zg, 31
  %or.cond315.i.i.i = select i1 %i.zf, i1 %i.zh, i1 false
  br i1 %or.cond315.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 %.0239392.i.i.i, ptr %i.yt, align 4, !tbaa !16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.1240.i.i.i = phi i32 [ %.0239392.i.i.i, %bb.dh ], [ %.0239392.i.i.i, %bb.di ], [ %indvars451.i.i.i, %bb.dg ], [ -1, %bb.df ]
  %i.zi = insertelement <2 x i32> poison, i32 %i.yy, i64 0
  %i.zj = shufflevector <2 x i32> %i.zi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.zk = add <2 x i32> %i.zj, <i32 16, i32 32>
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  store <2 x i32> %i.zk, ptr %i.zl, align 4, !tbaa !26
  %i.zm = add i32 %i.yy, 48
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yx, i64 12
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !26
  %indvars.iv.next446.i.i.i = add nuw nsw i64 %indvars.iv.i91.i.i, 4
  %indvars.iv.next448.i.i.i = add nuw nsw i64 %indvars.iv447.i.i.i, 1 ; 2 uses
  %exitcond.not.i92.i.i = icmp eq i64 %indvars.iv.next448.i.i.i, %wide.trip.count.i90.i.i
  br i1 %exitcond.not.i92.i.i, label %._crit_edge.i.i94.i.i, label %bb.df, !llvm.loop !99

._crit_edge.i.i94.i.i:                            ; preds = %bb.dj
  %i.zo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zp = getelementptr inbounds nuw i8, ptr %6, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i93.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.oc, align 4, !tbaa !26
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %i.yo)
  %i.zq = and i32 %i.co, 4096                     ; 4 uses
  %i.zr = load i32, ptr %i.cp, align 8, !tbaa !21
  %i.zs = ashr i32 %i.zr, 4                       ; 4 uses
  %i.zt = icmp slt i32 %i.zq, %i.zs               ; 2 uses
  br i1 %i.zt, label %.preheader376.lr.ph.i.i.i, label %._crit_edge.i95.i.i

.preheader376.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i94.i.i
  %i.zu = load i32, ptr %i.yt, align 4, !tbaa !16
  %i.zv = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.zw = zext nneg i32 %i.zq to i64              ; 2 uses
  %7 = or disjoint i64 %i.zw, 32
  %sext.i.i = zext nneg i32 %i.zs to i64
  br label %.preheader376.i.i.i

.preheader376.i.i.i:                              ; preds = %bb.dr, %.preheader376.lr.ph.i.i.i
  %indvars.iv243.i.i = phi i64 [ %indvars.iv.next244.i.i, %bb.dr ], [ %i.zw, %.preheader376.lr.ph.i.i.i ] ; 6 uses
  %indvars.iv458.i.i.i = phi i64 [ %indvars.iv.next242.i.i, %bb.dr ], [ %7, %.preheader376.lr.ph.i.i.i ] ; 2 uses
  %.2241396.i.i.i = phi i32 [ %.3242.i.i.i, %bb.dr ], [ %i.zu, %.preheader376.lr.ph.i.i.i ] ; 5 uses
  %.0252395.i.i.i = phi i32 [ %.3255.i.i.i, %bb.dr ], [ 0, %.preheader376.lr.ph.i.i.i ] ; 5 uses
  %.0269394.i.i.i = phi i1 [ %.2271.i.i.i, %bb.dr ], [ false, %.preheader376.lr.ph.i.i.i ] ; 4 uses
  %i.zx = load i32, ptr %i.yn, align 8, !tbaa !17
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv243.i.i ; 2 uses
  %i.zz = load <32 x i32>, ptr %i.zy, align 4, !tbaa !26 ; 33 uses
  %i.aaa = extractelement <32 x i32> %i.zz, i64 0
  %i.aab = extractelement <32 x i32> %i.zz, i64 1
  %i.aac = or i32 %i.aab, %i.aaa
  %i.aad = extractelement <32 x i32> %i.zz, i64 2
  %i.aae = or i32 %i.aac, %i.aad
  %i.aaf = extractelement <32 x i32> %i.zz, i64 3
  %i.aag = or i32 %i.aae, %i.aaf
  %i.aah = extractelement <32 x i32> %i.zz, i64 4
  %i.aai = or i32 %i.aag, %i.aah
  %i.aaj = extractelement <32 x i32> %i.zz, i64 5
  %i.aak = or i32 %i.aai, %i.aaj
  %i.aal = extractelement <32 x i32> %i.zz, i64 6
  %i.aam = or i32 %i.aak, %i.aal
  %i.aan = extractelement <32 x i32> %i.zz, i64 7
  %i.aao = or i32 %i.aam, %i.aan
  %i.aap = extractelement <32 x i32> %i.zz, i64 8
  %i.aaq = or i32 %i.aao, %i.aap
  %i.aar = extractelement <32 x i32> %i.zz, i64 9
  %i.aas = or i32 %i.aaq, %i.aar
  %i.aat = extractelement <32 x i32> %i.zz, i64 10
  %i.aau = or i32 %i.aas, %i.aat
  %i.aav = extractelement <32 x i32> %i.zz, i64 11
  %i.aaw = or i32 %i.aau, %i.aav
  %i.aax = extractelement <32 x i32> %i.zz, i64 12
  %i.aay = or i32 %i.aaw, %i.aax
  %i.aaz = extractelement <32 x i32> %i.zz, i64 13
  %i.aba = or i32 %i.aay, %i.aaz
  %i.abb = extractelement <32 x i32> %i.zz, i64 14
  %i.abc = or i32 %i.aba, %i.abb
  %i.abd = extractelement <32 x i32> %i.zz, i64 15
  %i.abe = or i32 %i.abc, %i.abd
  %i.abf = extractelement <32 x i32> %i.zz, i64 16
  %i.abg = or i32 %i.abe, %i.abf
  %i.abh = extractelement <32 x i32> %i.zz, i64 17
  %i.abi = or i32 %i.abg, %i.abh
  %i.abj = extractelement <32 x i32> %i.zz, i64 18
  %i.abk = or i32 %i.abi, %i.abj
  %i.abl = extractelement <32 x i32> %i.zz, i64 19
  %i.abm = or i32 %i.abk, %i.abl
  %i.abn = extractelement <32 x i32> %i.zz, i64 20
  %i.abo = or i32 %i.abm, %i.abn
  %i.abp = extractelement <32 x i32> %i.zz, i64 21
  %i.abq = or i32 %i.abo, %i.abp
  %i.abr = extractelement <32 x i32> %i.zz, i64 22
  %i.abs = or i32 %i.abq, %i.abr
  %i.abt = extractelement <32 x i32> %i.zz, i64 23
  %i.abu = or i32 %i.abs, %i.abt
  %i.abv = extractelement <32 x i32> %i.zz, i64 24
  %i.abw = or i32 %i.abu, %i.abv
  %i.abx = extractelement <32 x i32> %i.zz, i64 25
  %i.aby = or i32 %i.abw, %i.abx
  %i.abz = extractelement <32 x i32> %i.zz, i64 26
  %i.aca = or i32 %i.aby, %i.abz
  %i.acb = extractelement <32 x i32> %i.zz, i64 27
  %i.acc = or i32 %i.aca, %i.acb
  %i.acd = extractelement <32 x i32> %i.zz, i64 28
  %i.ace = or i32 %i.acc, %i.acd
  %i.acf = extractelement <32 x i32> %i.zz, i64 29
  %i.acg = or i32 %i.ace, %i.acf
  %i.ach = extractelement <32 x i32> %i.zz, i64 30
  %i.aci = or i32 %i.acg, %i.ach
  %i.acj = extractelement <32 x i32> %i.zz, i64 31
  %i.ack = or i32 %i.aci, %i.acj                  ; 2 uses
  %i.acl = insertelement <32 x i32> poison, i32 %i.zx, i64 0
  %i.acm = shufflevector <32 x i32> %i.acl, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.acn = icmp eq <32 x i32> %i.zz, %i.acm
  %i.aco = freeze <32 x i1> %i.acn
  %i.acp = bitcast <32 x i1> %i.aco to i32
  %i.acq = icmp eq i32 %i.acp, -1
  br i1 %i.acq, label %bb.dk, label %bb.dm

._crit_edge.i95.i.i:                              ; preds = %bb.dr, %._crit_edge.i.i94.i.i
  %.0269.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i94.i.i ], [ %.2271.i.i.i, %bb.dr ] ; 3 uses
  %.0252.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i94.i.i ], [ %.3255.i.i.i, %bb.dr ]
  %i.acr = sub nsw i32 %i.zs, %i.zq
  %i.acs = ashr i32 %i.acr, 5                     ; 2 uses
  %i.act = add nsw i32 %i.acs, 31
  %i.acu = ashr i32 %i.act, 5
  %i.acv = add nsw i32 %i.acu, %i.yo              ; 16 uses
  %i.acw = add nsw i32 %i.acv, %i.acs
  %i.acx = add i32 %i.acw, %.0252.lcssa.i.i.i     ; 7 uses
  %i.acy = shl i32 %i.acx, 1
  %i.acz = add i32 %i.acy, 2
  %i.ada = sext i32 %i.acz to i64
  %i.adb = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ada) #14
          to label %.noexc115.i.i unwind label %bb.fr ; 3 uses

.noexc115.i.i:                                    ; preds = %._crit_edge.i95.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store ptr %i.adb, ptr %i.adc, align 8, !tbaa !23
  %i.add = icmp eq ptr %i.adb, null
  br i1 %i.add, label %bb.ds, label %bb.dt

bb.dk:                                            ; preds = %.preheader376.i.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv243.i.i
  store i8 0, ptr %i.ade, align 1, !tbaa !33
  %i.adf = icmp slt i32 %.2241396.i.i.i, 0
  br i1 %i.adf, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.adg = icmp ugt i32 %i.ack, 65535             ; 2 uses
  %.1270.i.i.i = select i1 %i.adg, i1 true, i1 %.0269394.i.i.i
  %.1253.v.i.i.i = select i1 %i.adg, i32 36, i32 32
  %.1253.i.i.i = add nsw i32 %.1253.v.i.i.i, %.0252395.i.i.i
  br label %bb.dr

bb.dm:                                            ; preds = %.preheader376.i.i.i
  %i.adh = icmp ult i32 %i.ack, 65536
  br i1 %i.adh, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.adi = trunc nuw nsw i64 %indvars.iv243.i.i to i32
  %i.adj = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockItjEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.zv, i32 noundef %i.adi) ; 2 uses
  %i.adk = icmp sgt i32 %i.adj, -1
  %i.adl = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv243.i.i ; 2 uses
  br i1 %i.adk, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.adl, align 1, !tbaa !33
  store i32 %i.adj, ptr %i.zy, align 4, !tbaa !26
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  store i8 2, ptr %i.adl, align 1, !tbaa !33
  %i.adm = add nsw i32 %.0252395.i.i.i, 32
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.adn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv243.i.i
  store i8 3, ptr %i.adn, align 1, !tbaa !33
  %i.ado = add nsw i32 %.0252395.i.i.i, 36
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk
  %.2271.i.i.i = phi i1 [ %.1270.i.i.i, %bb.dl ], [ %.0269394.i.i.i, %bb.dk ], [ true, %bb.dq ], [ %.0269394.i.i.i, %bb.dp ], [ %.0269394.i.i.i, %bb.do ] ; 2 uses
  %.3255.i.i.i = phi i32 [ %.1253.i.i.i, %bb.dl ], [ %.0252395.i.i.i, %bb.dk ], [ %i.ado, %bb.dq ], [ %i.adm, %bb.dp ], [ %.0252395.i.i.i, %bb.do ] ; 2 uses
  %.3242.i.i.i = phi i32 [ 0, %bb.dl ], [ %.2241396.i.i.i, %bb.dk ], [ %.2241396.i.i.i, %bb.dq ], [ %.2241396.i.i.i, %bb.dp ], [ %.2241396.i.i.i, %bb.do ]
  %i.adp = icmp samesign ult i64 %indvars.iv458.i.i.i, %sext.i.i
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv458.i.i.i, 32
  %indvars.iv.next244.i.i = add nuw nsw i64 %indvars.iv243.i.i, 32
  br i1 %i.adp, label %.preheader376.i.i.i, label %._crit_edge.i95.i.i, !llvm.loop !100

bb.ds:                                            ; preds = %.noexc115.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fq

bb.dt:                                            ; preds = %.noexc115.i.i
  %i.adq = lshr exact i32 %i.cn, 5
  %i.adr = zext nneg i32 %i.adq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.adb, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.adr, i1 false)
  %i.ads = icmp slt i32 %i.acx, 4126
  br i1 %i.ads, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.adt = icmp samesign ult i32 %i.acx, 32798
  br i1 %i.adt, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adu = icmp samesign ult i32 %i.acx, 131102   ; 3 uses
  %..i96.i.i = select i1 %i.adu, i32 17, i32 21
  %.537.i.i.i.a = select i1 %i.adu, i32 131071, i32 2097151
  %.538.i.i.i = select i1 %i.adu, i32 200003, i32 1500007
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.sink536.i.i.i = phi i32 [ 15, %bb.du ], [ %..i96.i.i, %bb.dv ], [ 12, %bb.dt ]
  %.sink.i97.i.i = phi i32 [ 32767, %bb.du ], [ %.537.i.i.i.a, %bb.dv ], [ 4095, %bb.dt ]
  %.0.i317.i.i.i = phi i32 [ 50021, %bb.du ], [ %.538.i.i.i, %bb.dv ], [ 6007, %bb.dt ] ; 5 uses
  store i32 %.sink536.i.i.i, ptr %i.zo, align 8, !tbaa !73
  store i32 %.sink.i97.i.i, ptr %i.zp, align 4, !tbaa !75
  %i.adv = load i32, ptr %i.nx, align 8, !tbaa !77
  %i.adw = icmp sgt i32 %.0.i317.i.i.i, %i.adv
  %.pre.i318.i.i.i = load ptr, ptr %6, align 8, !tbaa !76 ; 2 uses
  br i1 %i.adw, label %bb.dx, label %._crit_edge.i319.i.i.i

._crit_edge.i319.i.i.i:                           ; preds = %bb.dw
  %.pre13.i320.i.i.i = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %.pre14.i321.i.i.i = zext nneg i32 %.pre13.i320.i.i.i to i64
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @uprv_free_78(ptr noundef %.pre.i318.i.i.i)
          to label %.noexc116.i.i unwind label %bb.fr

.noexc116.i.i:                                    ; preds = %bb.dx
  %i.adx = shl nuw nsw i32 %.0.i317.i.i.i, 2
  %i.ady = zext nneg i32 %i.adx to i64            ; 2 uses
  %i.adz = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ady) #14
          to label %.noexc117.i.i unwind label %bb.fr ; 3 uses

.noexc117.i.i:                                    ; preds = %.noexc116.i.i
  store ptr %i.adz, ptr %6, align 8, !tbaa !76
  %i.aea = icmp eq ptr %i.adz, null
  br i1 %i.aea, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %.noexc117.i.i
  store i32 %.0.i317.i.i.i, ptr %i.nx, align 8, !tbaa !77
  br label %bb.dz

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit324.i.i.i: ; preds = %.noexc117.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fq

bb.dz:                                            ; preds = %bb.dy, %._crit_edge.i319.i.i.i
  %.pre-phi15.i322.i.i.i = phi i64 [ %.pre14.i321.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.ady, %bb.dy ]
  %i.aeb = phi ptr [ %.pre.i318.i.i.i, %._crit_edge.i319.i.i.i ], [ %i.adz, %bb.dy ]
  store i32 %.0.i317.i.i.i, ptr %i.oc, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aeb, i8 0, i64 %.pre-phi15.i322.i.i.i, i1 false)
  store i32 32, ptr %i.od, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  br i1 %.0269.lcssa.i.i.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.aec = icmp slt i32 %i.acx, 4130
  br i1 %i.aec, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aed = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 12, ptr %i.aed, align 8, !tbaa !73
  %i.aee = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4095, ptr %i.aee, align 4, !tbaa !75
  br label %bb.eh

bb.ec:                                            ; preds = %bb.ea
  %i.aef = icmp samesign ult i32 %i.acx, 32802
  %i.aeg = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  br i1 %i.aef, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aeh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 15, ptr %i.aeh, align 8, !tbaa !73
  store i32 32767, ptr %i.aeg, align 4, !tbaa !75
  br label %bb.eh

bb.ee:                                            ; preds = %bb.ec
  %i.aei = icmp samesign ult i32 %i.acx, 131106
  %i.aej = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.aei, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 17, ptr %i.aej, align 8, !tbaa !73
  store i32 131071, ptr %i.aeg, align 4, !tbaa !75
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  store i32 21, ptr %i.aej, align 8, !tbaa !73
  store i32 2097151, ptr %i.aeg, align 4, !tbaa !75
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ed, %bb.eb
  %.0.i325.i.i.i = phi i32 [ 6007, %bb.eb ], [ 50021, %bb.ed ], [ 200003, %bb.ef ], [ 1500007, %bb.eg ] ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @uprv_free_78(ptr noundef null)
          to label %.noexc.i.i.i unwind label %bb.ei

.noexc.i.i.i:                                     ; preds = %bb.eh
  %i.ael = shl nuw nsw i32 %.0.i325.i.i.i, 2
  %i.aem = zext nneg i32 %i.ael to i64            ; 2 uses
  %i.aen = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aem) #14
          to label %.noexc332.i.i.i unwind label %bb.ei ; 3 uses

.noexc332.i.i.i:                                  ; preds = %.noexc.i.i.i
  store ptr %i.aen, ptr %4, align 8, !tbaa !76
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 %.0.i325.i.i.i, ptr %i.aek, align 8, !tbaa !77
  %i.aep = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.0.i325.i.i.i, ptr %i.aep, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aen, i8 0, i64 %i.aem, i1 false)
  %i.aeq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 36, ptr %i.aeq, align 8, !tbaa !79
  br label %bb.ej

_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.i.i.i: ; preds = %.noexc332.i.i.i
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.fn

bb.ei:                                            ; preds = %.noexc.i.i.i, %bb.eh
  %i.aer = landingpad { ptr, i32 }
          cleanup
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7812_GLOBAL__N_111MixedBlocksD2Ev.exit354.i.i.i unwind label %bb.fp

bb.ej:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_111MixedBlocks4initEii.exit333.thread.i.i.i, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.pre.i.i.i = load i32, ptr %i.yt, align 4, !tbaa !16 ; 3 uses
  br i1 %i.zt, label %.lr.ph413.i.i.i, label %._crit_edge414.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.ej
  %i.aes = zext nneg i32 %i.zq to i64
  %i.aet = zext nneg i32 %i.zs to i64
  %.pre246.i.i = zext nneg i32 %i.acv to i64
  br label %bb.ek

._crit_edge414.loopexit.i.i.i:                    ; preds = %bb.fc
  %i.aeu = trunc nuw nsw i64 %indvars.iv.next488.i.i.i to i32
  br label %._crit_edge414.i.i.i

._crit_edge414.i.i.i:                             ; preds = %._crit_edge414.loopexit.i.i.i, %bb.ej
  %i.aev = phi i32 [ %.pre.i.i.i, %bb.ej ], [ %i.asv, %._crit_edge414.loopexit.i.i.i ]
  %.0272.lcssa.i.i.i = phi i32 [ 0, %bb.ej ], [ %i.aeu, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %.0263.lcssa.i.i.i = phi i32 [ %i.acv, %bb.ej ], [ %.6.i107.i.i, %._crit_edge414.loopexit.i.i.i ] ; 3 uses
  %i.aew = icmp slt i32 %i.aev, 0
  br i1 %i.aew, label %bb.fd, label %bb.fe

bb.ek:                                            ; preds = %bb.fc, %.lr.ph413.i.i.i
  %i.aex = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %i.asv, %bb.fc ]
  %indvars.iv487.i.i.i = phi i64 [ 0, %.lr.ph413.i.i.i ], [ %indvars.iv.next488.i.i.i, %bb.fc ] ; 2 uses
  %indvars.iv460.i.i.i = phi i64 [ %i.aes, %.lr.ph413.i.i.i ], [ %indvars.iv.next461.i.i.i, %bb.fc ] ; 7 uses
  %.4243411.i.i.i = phi i32 [ %.pre.i.i.i, %.lr.ph413.i.i.i ], [ %.5360.i.i.i, %bb.fc ] ; 5 uses
  %.0263407.i.i.i = phi i32 [ %i.acv, %.lr.ph413.i.i.i ], [ %.6.i107.i.i, %bb.fc ] ; 20 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv460.i.i.i
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !33 ; 2 uses
  %i.afa = icmp eq i8 %i.aez, 0
  %i.afb = icmp slt i32 %.4243411.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.afa, i1 %i.afb, i1 false
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afc = load i32, ptr %i.yn, align 8, !tbaa !17
  %i.afd = icmp slt i32 %i.afc, 65536
  br i1 %i.afd, label %.thread362.i.i.i, label %.thread.i108.i.i

bb.em:                                            ; preds = %bb.ek
  switch i8 %i.aez, label %.thread.i108.i.i [
    i8 0, label %bb.fa
    i8 1, label %bb.en
    i8 2, label %.thread362.i.i.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.afe = load ptr, ptr %0, align 8, !tbaa !10
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv460.i.i.i
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !26
  br label %bb.fa

.thread362.i.i.i:                                 ; preds = %bb.em, %bb.el
end_hunk_1
