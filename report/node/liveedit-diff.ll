Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liveedit-diff?download=true
inline.NumInlined: 319
inline.NumDeleted: 197
begin_hunk_0_@_ZN2v88internal10Comparator19CalculateDifferenceEPNS1_5InputEPNS1_6OutputE:bb.a
  %i.di = add i32 %.sroa.6.0.copyload.i.i, %.sroa.0.0.lcssa.i.i.i
  %i.dj = sub i32 %i.dh, %i.di
  switch i32 %i.dj, label %bb.m [
    i32 -1, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i
    i32 1, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i
  ]

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.12.0.insert.shift26.i.i = shl nuw i64 %.sroa.6.0.lcssa.i.i.i, 32
  %.sroa.0.0.insert.ext10.i.i = zext i32 %.sroa.0.0.lcssa.i.i.i to i64
  %.sroa.0.0.insert.insert12.i.i = or disjoint i64 %.sroa.12.0.insert.shift26.i.i, %.sroa.0.0.insert.ext10.i.i
  %i.dk = trunc nuw i8 %.sroa.6.4.i.i to i1       ; 2 uses
  %.sroa.1737.1.i.i = select i1 %i.dk, i64 %.sroa.1737.062.i.i, i64 %.sroa.0.0.insert.insert12.i.i
  %.sroa.25.2.i.i = select i1 %i.dk, i8 %.sroa.25.063.i.i, i8 1
  %i.dl = trunc nuw i64 %.sroa.6.0.lcssa.i.i.i to i32
  %.pre85.i.i = add i32 %i.dl, 1
  br label %bb.m

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.12.0.insert.shift22.i.i = shl nuw i64 %.sroa.6.0.lcssa.i.i.i, 32
  %.sroa.0.0.insert.ext7.i.i = zext i32 %.sroa.0.0.lcssa.i.i.i to i64
  %.sroa.0.0.insert.insert9.i.i = or disjoint i64 %.sroa.12.0.insert.shift22.i.i, %.sroa.0.0.insert.ext7.i.i
  %i.dm = trunc nuw i8 %.sroa.6.4.i.i to i1       ; 2 uses
  %.sroa.1737.2.i.i = select i1 %i.dm, i64 %.sroa.1737.062.i.i, i64 %.sroa.0.0.insert.insert9.i.i
  %.sroa.25.4.i.i = select i1 %i.dm, i8 %.sroa.25.063.i.i, i8 1
  %i.dn = add nsw i32 %.sroa.0.0.lcssa.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i
  %.sroa.6.0.extract.trunc.i38.pre-phi.i.i = phi i32 [ %.sroa.12.0.extract.trunc18.pre-phi.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.12.0.extract.trunc18.pre-phi.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.pre85.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.1737.3.i.i = phi i64 [ %.sroa.1737.062.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.1737.2.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.1737.1.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.25.5.i.i = phi i8 [ %.sroa.25.063.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %.sroa.25.4.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.25.2.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ]
  %.sroa.6.7.i.i = phi i8 [ %.sroa.6.4.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ 1, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ 1, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.0.lcssa.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit.i.i ], [ %i.dn, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit35.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter25RecordInsertionOrDeletionERKNS2_5PointE.exit.i.i ] ; 5 uses
  %.sroa.25.5.fr.i.i = freeze i8 %.sroa.25.5.i.i  ; 3 uses
  %i.do = icmp slt i32 %.sroa.0.0.i.i, %.sroa.07.0.copyload.i.i
  %i.dp = icmp sgt i32 %.sroa.6.0.copyload.i.i, %.sroa.6.0.extract.trunc.i38.pre-phi.i.i
  %or.cond10.i40.i.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond10.i40.i.i, label %.lr.ph.i46.preheader.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.preheader.i.i:                         ; preds = %bb.m
  %i.dq = trunc i8 %.sroa.25.5.fr.i.i to i1
  %.sroa.1737.12.extract.trunc41.i.i = trunc i64 %.sroa.1737.3.i.i to i32 ; 2 uses
  %.sroa.1737.16.extract.shift46.i.i = lshr i64 %.sroa.1737.3.i.i, 32
  %.sroa.1737.16.extract.trunc47.i.i = trunc nuw i64 %.sroa.1737.16.extract.shift46.i.i to i32 ; 2 uses
  %i.dr = load ptr, ptr %2, align 8               ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i32 noundef %.sroa.0.0.i.i, i32 noundef %.sroa.6.0.extract.trunc.i38.pre-phi.i.i) #8, !inline_history !14 ; 2 uses
  br i1 %i.dq, label %.lr.ph.i46.us.preheader.i.i, label %.lr.ph.i46.preheader68.i.i, !prof !7

.lr.ph.i46.preheader68.i.i:                       ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.dv, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.n:                                             ; preds = %.lr.ph.i46.preheader68.i.i
  %i.dw = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.dw, label %.loopexit83.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i: ; preds = %bb.n
  %i.dx = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.dy = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %.sroa.07.0.copyload.i.i
  %i.ea = icmp slt i32 %i.dy, %.sroa.6.0.copyload.i.i
  %or.cond.i53.peel.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i53.peel.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.preheader.i.i:                      ; preds = %.lr.ph.i46.preheader.i.i
  br i1 %i.dv, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

bb.o:                                             ; preds = %.lr.ph.i46.us.preheader.i.i
  %i.eb = trunc nuw i8 %.sroa.6.7.i.i to i1
  br i1 %i.eb, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

bb.p:                                             ; preds = %bb.o
  %i.ec = sub nsw i32 %.sroa.0.0.i.i, %.sroa.1737.12.extract.trunc41.i.i
  %i.ed = sub nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, %.sroa.1737.16.extract.trunc47.i.i
  %i.ee = load ptr, ptr %i.bb, align 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i32 noundef %.sroa.1737.12.extract.trunc41.i.i, i32 noundef %.sroa.1737.16.extract.trunc47.i.i, i32 noundef %i.ec, i32 noundef %i.ed) #8, !inline_history !15
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i: ; preds = %bb.p, %bb.o
  %i.eg = add nsw i32 %.sroa.0.0.i.i, 1           ; 2 uses
  %i.eh = add nsw i32 %.sroa.6.0.extract.trunc.i38.pre-phi.i.i, 1 ; 2 uses
  %i.ei = icmp slt i32 %i.eg, %.sroa.07.0.copyload.i.i
  %i.ej = icmp slt i32 %i.eh, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.peel.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i53.us.peel.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.lr.ph.i46.us.i.i:                                ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i
  %.sroa.0.012.i47.us.i.i = phi i32 [ %i.ep, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.eg, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.us.i.i = phi i32 [ %i.eq, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %i.eh, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ] ; 2 uses
  %i.ek = load ptr, ptr %2, align 8               ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 noundef %.sroa.0.012.i47.us.i.i, i32 noundef %.sroa.6.011.i48.us.i.i) #8, !inline_history !16
  br i1 %i.eo, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i: ; preds = %.lr.ph.i46.us.i.i
  %i.ep = add nsw i32 %.sroa.0.012.i47.us.i.i, 1  ; 2 uses
  %i.eq = add nsw i32 %.sroa.6.011.i48.us.i.i, 1  ; 2 uses
  %i.er = icmp slt i32 %i.ep, %.sroa.07.0.copyload.i.i
  %i.es = icmp slt i32 %i.eq, %.sroa.6.0.copyload.i.i
  %or.cond.i53.us.i.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.i53.us.i.i, label %.lr.ph.i46.us.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !19

.lr.ph.i46.i.i:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i
  %.sroa.0.012.i47.i.i = phi i32 [ %i.ey, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dx, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %.sroa.6.011.i48.i.i = phi i32 [ %i.ez, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ], [ %i.dy, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ] ; 2 uses
  %i.et = load ptr, ptr %2, align 8               ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef %.sroa.0.012.i47.i.i, i32 noundef %.sroa.6.011.i48.i.i) #8, !inline_history !16
  br i1 %i.ex, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i

.loopexit83.i.i:                                  ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i: ; preds = %.lr.ph.i46.i.i
  %i.ey = add nsw i32 %.sroa.0.012.i47.i.i, 1     ; 2 uses
  %i.ez = add nsw i32 %.sroa.6.011.i48.i.i, 1     ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %.sroa.07.0.copyload.i.i
  %i.fb = icmp slt i32 %i.ez, %.sroa.6.0.copyload.i.i
  %or.cond.i53.i.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i53.i.i, label %.lr.ph.i46.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i, !llvm.loop !20

_ZN2v88internal12_GLOBAL__N_111MyersDiffer12WalkDiagonalERNS2_12ResultWriterENS2_5PointES5_.exit55.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i, %.lr.ph.i46.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i, %.lr.ph.i46.us.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i, %.lr.ph.i46.us.preheader.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i, %.lr.ph.i46.preheader68.i.i, %bb.m
  %.sroa.6.11.i.i = phi i8 [ %.sroa.6.7.i.i, %bb.m ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.peel.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.us.preheader.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.peel.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.us.i.i ], [ %.sroa.6.7.i.i, %.lr.ph.i46.preheader68.i.i ], [ 0, %.lr.ph.i46.us.i.i ], [ 0, %.lr.ph.i46.i.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer12ResultWriter20RecordNoModificationERKNS2_5PointE.exit.i52.i.i ] ; 2 uses
  %i.fc = add nuw i64 %.065.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fc, %i.bf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i: ; preds = %bb.i, %._crit_edge.i.i, %bb.f
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.fd, align 8
  %i.fe = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.ff = sub i64 %i.fe, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i, i64 noundef %i.ff) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i: ; preds = %bb.q, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer11WriteResultERKNS2_4PathE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDifferC2EPNS0_10Comparator5InputEPNS3_6OutputE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.val2.i.i = load ptr, ptr %i.w, align 8        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val3.i.i = load ptr, ptr %i.fg, align 8
  %i.fh = ptrtoint ptr %.val3.i.i to i64
  %i.fi = ptrtoint ptr %.val2.i.i to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.val2.i.i, i64 noundef %i.fj) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i: ; preds = %bb.r, %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit.i
  %.val.i.i = load ptr, ptr %i.b, align 8         ; 3 uses
  %.not.i.i.i.i4.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val1.i.i = load ptr, ptr %i.fk, align 8
  %i.fl = ptrtoint ptr %.val1.i.i to i64
  %i.fm = ptrtoint ptr %.val.i.i to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.fn) #11
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer9MyersDiffEPNS0_10Comparator5InputEPNS3_6OutputE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer16FurthestReachingD2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  %5 = alloca %"class.std::optional", align 8     ; 8 uses
  %6 = alloca %"struct.v8::internal::(anonymous namespace)::MyersDiffer::Path", align 8 ; 15 uses
  %.sroa.0.0.extract.trunc45.i = trunc i64 %2 to i32 ; 6 uses
  %.sroa.18.8.extract.trunc77.i = trunc i64 %3 to i32 ; 5 uses
  %.sroa.0.4.extract.shift.i = lshr i64 %2, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32 ; 5 uses
  %.sroa.18.12.extract.shift.i = lshr i64 %3, 32
  %.sroa.18.12.extract.trunc.i = trunc nuw i64 %.sroa.18.12.extract.shift.i to i32 ; 4 uses
  %i.a = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.0.0.extract.trunc45.i
  %i.b = sub i32 %.sroa.18.8.extract.trunc77.i, %i.a
  %i.c = add i32 %i.b, %.sroa.18.12.extract.trunc.i ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !noalias !37
  %i.f = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %.sroa.0.0.extract.trunc45.i, ptr %i.f, align 4, !noalias !37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !noalias !37
  %i.i = ptrtoint ptr %.val7.i to i64
  %i.j = ptrtoint ptr %.val.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr i8, ptr %.val.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  store i32 %.sroa.18.8.extract.trunc77.i, ptr %i.m, align 4, !noalias !37
  %i.n = sitofp i32 %i.c to float
  %i.o = fmul nnan float %i.n, 5.000000e-01
  %i.p = tail call noundef float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = fcmp ult float %i.p, 0.000000e+00
  br i1 %i.q, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = add i32 %.sroa.0.4.extract.trunc.i, %.sroa.18.8.extract.trunc77.i
  %i.t = add i32 %.sroa.0.0.extract.trunc45.i, %.sroa.18.12.extract.trunc.i
  %.reass.i = sub i32 %i.s, %i.t                  ; 3 uses
  %.not36.i.i = trunc i32 %.reass.i to i1         ; 2 uses
  %.neg114.i = sub i32 %.sroa.0.4.extract.trunc.i, %.sroa.0.0.extract.trunc45.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 11 uses
  %i.u = sub nsw i64 0, %indvars.iv.i             ; 5 uses
  %i.v = sub nsw i64 1, %indvars.iv.i             ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %indvars.iv.i.i = phi i64 [ %i.u, %bb.c ], [ %indvars.iv.next.i.i, %bb.k ] ; 12 uses
  %i.w = icmp eq i64 %indvars.iv.i.i, %i.u
  %.val51.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !38 ; 7 uses
  %.val52.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !38 ; 3 uses
  br i1 %i.w, label %._crit_edge100.i.i, label %bb.e

._crit_edge100.i.i:                               ; preds = %bb.d
  %.pre101.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre103.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre105.i.i = sub i64 %.pre101.i.i, %.pre103.i.i
  %.pre107.i.i = ashr exact i64 %.pre105.i.i, 2
  %.pre109.i.i = add nsw i64 %.pre107.i.i, %i.v
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i64 %indvars.iv.i.i, %indvars.iv.i
  %.pre111.i.i = add nsw i64 %indvars.iv.i.i, -1  ; 3 uses
  %.pre113.i.i = ptrtoint ptr %.val52.pre.i.i to i64
  %.pre115.i.i = ptrtoint ptr %.val51.pre.i.i to i64
  %.pre117.i.i = sub i64 %.pre113.i.i, %.pre115.i.i
  %.pre119.i.i = ashr exact i64 %.pre117.i.i, 2   ; 2 uses
  %.pre121.i.i = add nsw i64 %.pre119.i.i, %.pre111.i.i ; 2 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp slt i64 %indvars.iv.i.i, 1
  %i.z = select i1 %i.y, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !38
  %i.ac = add nsw i64 %indvars.iv.i.i, 1          ; 3 uses
  %i.ad = add nsw i64 %.pre119.i.i, %i.ac         ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.i.i, -1
  %i.af = select i1 %i.ae, i64 %i.ad, i64 %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !38
  %i.ai = icmp slt i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f, %._crit_edge100.i.i
  %.pre-phi110.i.i = phi i64 [ %.pre109.i.i, %._crit_edge100.i.i ], [ %i.ad, %bb.f ]
  %.pre-phi.i.i = phi i64 [ %i.v, %._crit_edge100.i.i ], [ %i.ac, %bb.f ]
  %i.aj = icmp slt i64 %indvars.iv.i.i, -1
  %i.ak = select i1 %i.aj, i64 %.pre-phi110.i.i, i64 %.pre-phi.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !noalias !38 ; 2 uses
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.f
  %i.an = icmp slt i64 %indvars.iv.i.i, 1
  %i.ao = select i1 %i.an, i64 %.pre121.i.i, i64 %.pre111.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val51.pre.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !38 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %storemerge.i.i = phi i32 [ %i.ar, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 5 uses
  %.sroa.0.0.i.i = phi i32 [ %i.aq, %._crit_edge.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.at = sub i32 %.neg114.i, %i.as
  %i.au = add i32 %storemerge.i.i, %i.at          ; 4 uses
  %i.av = icmp slt i32 %storemerge.i.i, %.sroa.18.8.extract.trunc77.i
  %i.aw = icmp slt i32 %i.au, %.sroa.18.12.extract.trunc.i
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.11.080.i.i = phi i32 [ %i.be, %bb.i ], [ %i.au, %bb.h ] ; 3 uses
  %.sroa.065.079.i.i = phi i32 [ %i.bd, %bb.i ], [ %storemerge.i.i, %bb.h ] ; 3 uses
  %i.ay = load ptr, ptr %1, align 8, !noalias !38 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !38
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %.sroa.065.079.i.i, i32 noundef %.sroa.11.080.i.i) #8, !noalias !38, !inline_history !28
  br i1 %i.bc, label %bb.i, label %.critedge.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = add nsw i32 %.sroa.065.079.i.i, 1       ; 3 uses
  %i.be = add nsw i32 %.sroa.11.080.i.i, 1        ; 3 uses
  %i.bf = icmp slt i32 %i.bd, %.sroa.18.8.extract.trunc77.i
  %i.bg = icmp slt i32 %i.be, %.sroa.18.12.extract.trunc.i
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !29

.critedge.loopexit.i.i:                           ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.065.0.lcssa.ph.i.i = phi i32 [ %.sroa.065.079.i.i, %.lr.ph.i.i ], [ %i.bd, %bb.i ]
  %.sroa.11.0.lcssa.ph.i.i = phi i32 [ %.sroa.11.080.i.i, %.lr.ph.i.i ], [ %i.be, %bb.i ]
  %.val47.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !38
  %.val48.pre.i.i = load ptr, ptr %i.r, align 8, !noalias !38
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.h
  %.val48.i.i = phi ptr [ %.val52.pre.i.i, %bb.h ], [ %.val48.pre.i.i, %.critedge.loopexit.i.i ]
  %.val47.i.i = phi ptr [ %.val51.pre.i.i, %bb.h ], [ %.val47.pre.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %.sroa.065.0.lcssa.i.i = phi i32 [ %storemerge.i.i, %bb.h ], [ %.sroa.065.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 3 uses
  %.sroa.11.0.lcssa.i.i = phi i32 [ %i.au, %bb.h ], [ %.sroa.11.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bi = ptrtoint ptr %.val48.i.i to i64
  %i.bj = ptrtoint ptr %.val47.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %i.bm = icmp slt i64 %indvars.iv.i.i, 0
  %i.bn = select i1 %i.bm, i64 %i.bl, i64 0
  %i.bo = getelementptr [4 x i8], ptr %.val47.i.i, i64 %indvars.iv.i.i
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn
  store i32 %.sroa.065.0.lcssa.i.i, ptr %i.bp, align 4, !noalias !38
  %i.bq = sub nsw i32 %i.as, %.reass.i            ; 3 uses
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %.not37.i.i = icmp sle i64 %i.v, %i.br
  %.not38.not.i.i = icmp sgt i64 %indvars.iv.i, %i.br
  %i.bs = and i1 %.not37.i.i, %.not38.not.i.i
  %or.cond41.i.i = select i1 %.not36.i.i, i1 %i.bs, i1 false
  br i1 %or.cond41.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i.i
  %.val.i16.i = load ptr, ptr %i.g, align 8, !noalias !38 ; 2 uses
  %.val46.i.i = load ptr, ptr %i.h, align 8, !noalias !38
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = ptrtoint ptr %.val46.i.i to i64
  %i.bv = ptrtoint ptr %.val.i16.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = add nsw i64 %i.bx, %i.br
  %i.bz = icmp slt i32 %i.bq, 0
  %i.ca = select i1 %i.bz, i64 %i.by, i64 %i.bt
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val.i16.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !38
  %.not39.i.i = icmp slt i32 %.sroa.065.0.lcssa.i.i, %i.cc
  br i1 %.not39.i.i, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i: ; preds = %bb.j
  %.not35.le.i.i = icmp eq i32 %.sroa.0.0.i.i, %storemerge.i.i
  %i.cd = sext i1 %.not35.le.i.i to i32
  %i.ce = add nsw i32 %i.au, %i.cd
  %.sroa.11.0.insert.ext.i.i = zext i32 %.sroa.11.0.lcssa.i.i to i64
  %.sroa.11.0.insert.shift.i.i = shl nuw i64 %.sroa.11.0.insert.ext.i.i, 32
  %.sroa.065.0.insert.ext.i.i = zext i32 %.sroa.065.0.lcssa.i.i to i64
  %.sroa.065.0.insert.insert.i.i = or disjoint i64 %.sroa.11.0.insert.shift.i.i, %.sroa.065.0.insert.ext.i.i
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.0.4.insert.ext = zext i32 %i.ce to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit

bb.k:                                             ; preds = %bb.j, %.critedge.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv.next.i.i, %indvars.iv.i
  br i1 %.not.i.i, label %bb.l, label %bb.d, !llvm.loop !30

bb.l:                                             ; preds = %bb.k
  %.pre.i43.i = add nsw i64 %indvars.iv.i, -1     ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %bb.l
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i38.i, %bb.u ] ; 12 uses
  %i.cf = icmp eq i64 %indvars.iv.i18.i, %indvars.iv.i
  %.val50.pre.i.i = load ptr, ptr %i.g, align 8, !noalias !39 ; 5 uses
  %.val51.pre.i19.i = load ptr, ptr %i.h, align 8, !noalias !39
  %.pre89.i.i = ptrtoint ptr %.val51.pre.i19.i to i64
  %.pre91.i.i = ptrtoint ptr %.val50.pre.i.i to i64
  %.pre93.i.i = sub i64 %.pre89.i.i, %.pre91.i.i
  %.pre95.i.i = ashr exact i64 %.pre93.i.i, 2     ; 4 uses
  br i1 %i.cf, label %._crit_edge88.i.i, label %bb.n

._crit_edge88.i.i:                                ; preds = %bb.m
  %.pre97.i.i = add nsw i64 %.pre95.i.i, %.pre.i43.i
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp eq i64 %indvars.iv.i18.i, %i.u
  br i1 %i.cg, label %._crit_edge.i41.i, label %bb.o

._crit_edge.i41.i:                                ; preds = %bb.n
  %.pre109.i42.i = add nsw i64 %.pre95.i.i, %i.v
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ch = add nsw i64 %indvars.iv.i18.i, -1       ; 3 uses
  %i.ci = add nsw i64 %.pre95.i.i, %i.ch          ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.i18.i, 1
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 %i.ch
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !noalias !39
  %i.cn = add nsw i64 %indvars.iv.i18.i, 1        ; 3 uses
  %i.co = add nsw i64 %.pre95.i.i, %i.cn          ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.i18.i, -1
  %i.cq = select i1 %i.cp, i64 %i.co, i64 %i.cn
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !39
  %i.ct = icmp sgt i32 %i.cm, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %._crit_edge88.i.i
  %.pre-phi98.i.i = phi i64 [ %.pre97.i.i, %._crit_edge88.i.i ], [ %i.ci, %bb.o ]
  %.pre-phi.i40.i = phi i64 [ %.pre.i43.i, %._crit_edge88.i.i ], [ %i.ch, %bb.o ]
  %i.cu = icmp slt i64 %indvars.iv.i18.i, 1
  %i.cv = select i1 %i.cu, i64 %.pre-phi98.i.i, i64 %.pre-phi.i40.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !39 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %._crit_edge.i41.i
  %.pre-phi110.i20.i = phi i64 [ %.pre109.i42.i, %._crit_edge.i41.i ], [ %i.co, %bb.o ]
  %.pre-phi100.i.i = phi i64 [ %i.v, %._crit_edge.i41.i ], [ %i.cn, %bb.o ]
  %i.cy = icmp slt i64 %indvars.iv.i18.i, -1
  %i.cz = select i1 %i.cy, i64 %.pre-phi110.i20.i, i64 %.pre-phi100.i.i
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !noalias !39 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge.i21.i = phi i32 [ %i.dc, %bb.q ], [ %i.cx, %bb.p ] ; 5 uses
  %.sroa.0.0.i22.i = phi i32 [ %i.db, %bb.q ], [ %i.cx, %bb.p ] ; 2 uses
  %i.dd = trunc nsw i64 %indvars.iv.i18.i to i32
  %i.de = add i32 %.reass.i, %i.dd                ; 4 uses
  %i.df = sub i32 %.neg114.i, %i.de
  %i.dg = add i32 %storemerge.i21.i, %i.df        ; 4 uses
  %i.dh = icmp sgt i32 %storemerge.i21.i, %.sroa.0.0.extract.trunc45.i
  %i.di = icmp sgt i32 %i.dg, %.sroa.0.4.extract.trunc.i
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %i.dj, label %.lr.ph, label %.critedge.i27.i

bb.s:                                             ; preds = %.lr.ph
  %i.dk = icmp sgt i32 %i.do, %.sroa.0.0.extract.trunc45.i
  %i.dl = icmp sgt i32 %i.dp, %.sroa.0.4.extract.trunc.i
  %i.dm = and i1 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph, label %.critedge.i27.i, !llvm.loop !33

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.12.0.i.i109 = phi i32 [ %i.dp, %bb.s ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.064.0.i.i108 = phi i32 [ %i.do, %bb.s ], [ %storemerge.i21.i, %bb.r ] ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !noalias !39 ; 2 uses
  %i.do = add nsw i32 %.sroa.064.0.i.i108, -1     ; 4 uses
  %i.dp = add nsw i32 %.sroa.12.0.i.i109, -1      ; 4 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !noalias !39
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !39
  %i.dt = tail call noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 noundef %i.do, i32 noundef %i.dp) #8, !noalias !39, !inline_history !34
  br i1 %i.dt, label %bb.s, label %..critedge.i27.i_crit_edge, !llvm.loop !33

..critedge.i27.i_crit_edge:                       ; preds = %.lr.ph
  br label %.critedge.i27.i, !llvm.loop !33

.critedge.i27.i:                                  ; preds = %bb.s, %..critedge.i27.i_crit_edge, %bb.r
  %.sroa.064.0.i.i.lcssa = phi i32 [ %.sroa.064.0.i.i108, %..critedge.i27.i_crit_edge ], [ %storemerge.i21.i, %bb.r ], [ %i.do, %bb.s ] ; 3 uses
  %.sroa.12.0.i.i.lcssa = phi i32 [ %.sroa.12.0.i.i109, %..critedge.i27.i_crit_edge ], [ %i.dg, %bb.r ], [ %i.dp, %bb.s ]
  %.val46.i28.i = load ptr, ptr %i.g, align 8, !noalias !39 ; 2 uses
  %.val47.i29.i = load ptr, ptr %i.h, align 8, !noalias !39
  %i.du = ptrtoint ptr %.val47.i29.i to i64
  %i.dv = ptrtoint ptr %.val46.i28.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 2
  %i.dy = icmp slt i64 %indvars.iv.i18.i, 0
  %i.dz = select i1 %i.dy, i64 %i.dx, i64 0
  %i.ea = getelementptr [4 x i8], ptr %.val46.i28.i, i64 %indvars.iv.i18.i
  %i.eb = getelementptr [4 x i8], ptr %i.ea, i64 %i.dz
  store i32 %.sroa.064.0.i.i.lcssa, ptr %i.eb, align 4, !noalias !39
  %i.ec = sext i32 %i.de to i64                   ; 3 uses
  %.not36.i30.i = icmp slt i64 %i.ec, %i.u
  %.not37.i31.i = icmp slt i64 %indvars.iv.i, %i.ec
  %i.ed = or i1 %.not36.i30.i, %.not37.i31.i
  %or.cond40.i.i = select i1 %.not36.i.i, i1 true, i1 %i.ed
  br i1 %or.cond40.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i27.i
  %.val.i32.i = load ptr, ptr %i.e, align 8, !noalias !39 ; 2 uses
  %.val45.i.i = load ptr, ptr %i.r, align 8, !noalias !39
  %i.ee = zext nneg i32 %i.de to i64
  %i.ef = ptrtoint ptr %.val45.i.i to i64
  %i.eg = ptrtoint ptr %.val.i32.i to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = add nsw i64 %i.ei, %i.ec
  %i.ek = icmp slt i32 %i.de, 0
  %i.el = select i1 %i.ek, i64 %i.ej, i64 %i.ee
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val.i32.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !noalias !39
  %.not38.i.i = icmp sgt i32 %.sroa.064.0.i.i.lcssa, %i.en
  br i1 %.not38.i.i, label %bb.u, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i: ; preds = %bb.t
  %i.eo = icmp ne i64 %indvars.iv.i, 0
  %.not35.le.i33.i = icmp eq i32 %.sroa.0.0.i22.i, %storemerge.i21.i
  %or.cond.le.i34.i = select i1 %i.eo, i1 %.not35.le.i33.i, i1 false
  %i.ep = zext i1 %or.cond.le.i34.i to i32
  %i.eq = add nsw i32 %i.dg, %i.ep
  %.sroa.12.0.insert.ext.i.i = zext i32 %.sroa.12.0.i.i.lcssa to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw i64 %.sroa.12.0.insert.ext.i.i, 32
  %.sroa.064.0.insert.ext.i.i = zext i32 %.sroa.064.0.i.i.lcssa to i64
  %.sroa.064.0.insert.insert.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %.sroa.064.0.insert.ext.i.i
  %.sroa.7.8.insert.ext = zext i32 %.sroa.0.0.i22.i to i64
  %.sroa.7.12.insert.ext = zext i32 %i.eq to i64
  %.sroa.7.12.insert.shift = shl nuw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit

bb.u:                                             ; preds = %bb.t, %.critedge.i27.i
  %indvars.iv.next.i38.i = add nsw i64 %indvars.iv.i18.i, -2 ; 2 uses
  %.not.i39.i = icmp slt i64 %indvars.iv.next.i38.i, %i.u
  br i1 %.not.i39.i, label %bb.v, label %bb.m, !llvm.loop !35

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.es = uitofp nneg i32 %i.er to float
  %i.et = fcmp ult float %i.p, %i.es
  br i1 %i.et, label %.loopexit, label %bb.c, !llvm.loop !36

.loopexit:                                        ; preds = %bb.v, %bb.a, %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.eu, align 8
  br label %bb.ai

_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i
  %.sroa.7.0 = phi i64 [ %.sroa.065.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.7.12.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.064.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %.sroa.0.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %.sroa.7.0, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val11 = load i8, ptr %i.ev, align 8, !range !5, !noundef !6
  %i.ew = trunc nuw i8 %.val11 to i1              ; 2 uses
  br i1 %i.ew, label %bb.w, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit
  %.val14 = load ptr, ptr %4, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val15 = load ptr, ptr %i.ex, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.val14, ptr %.val15)
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #10 ; 3 uses
  store i64 %.sroa.0.0, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fa, ptr %6, align 8
  store ptr %i.fb, ptr %i.ey, align 8
  store ptr %i.fb, ptr %i.ez, align 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit: ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val10 = load i8, ptr %i.fc, align 8, !range !5, !noundef !6
  %i.fd = trunc nuw i8 %.val10 to i1              ; 2 uses
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit
  %.val12 = load ptr, ptr %5, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val13 = load ptr, ptr %i.fe, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.val12, ptr %.val13)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8            ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i.i21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %.sroa.7.0, ptr %i.fg, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %.val18.i.i.i22 = load ptr, ptr %6, align 8     ; 4 uses
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = ptrtoint ptr %.val18.i.i.i22 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 6 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.ab, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.aa
  %i.fo = ashr exact i64 %i.fm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i24, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975)
  %i.fs = select i1 %i.fq, i64 1152921504606846975, i64 %i.fr ; 3 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.fs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #10 ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fm ; 2 uses
  store i64 %.sroa.7.0, ptr %i.fv, align 4
  %i.fw = icmp sgt i64 %i.fm, 0
  br i1 %i.fw, label %bb.ac, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26

bb.ac:                                            ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr align 4 %.val18.i.i.i22, i64 %i.fm, i1 false)
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26

_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26: ; preds = %bb.ac, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.not.i22.i.i.i27 = icmp eq ptr %.val18.i.i.i22, null
  br i1 %.not.i22.i.i.i27, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26
  tail call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i22, i64 noundef %i.fm) #11
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28

_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28: ; preds = %bb.ad, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26
  store ptr %i.fu, ptr %6, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fs
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit: ; preds = %bb.x, %bb.z, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28
  %i.fz = phi ptr [ %.pre72, %bb.x ], [ %i.fi, %bb.z ], [ %i.fy, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28 ]
  %i.ga = phi ptr [ %.pre, %bb.x ], [ %i.fj, %bb.z ], [ %i.fx, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28 ]
  %i.gb = load ptr, ptr %6, align 8
  store ptr %i.gb, ptr %0, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ga, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fz, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ge, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br i1 %i.fd, label %bb.ae, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit

bb.ae:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit
  %.val.i.i.i.i = load ptr, ptr %5, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.gf, align 8
  %i.gg = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.gh = ptrtoint ptr %.val.i.i.i.i to i64
  %i.gi = sub i64 %i.gg, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.gi) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %i.ew, label %bb.ag, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34

bb.ag:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit
  %.val.i.i.i.i31 = load ptr, ptr %4, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %.val.i.i.i.i31, null
  br i1 %.not.i.i.i.i.i.i.i.i32, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val1.i.i.i.i33 = load ptr, ptr %i.gj, align 8
  %i.gk = ptrtoint ptr %.val1.i.i.i.i33 to i64
  %i.gl = ptrtoint ptr %.val.i.i.i.i31 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i31, i64 noundef %i.gm) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34: ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34, %.loopexit
  ret void
}
end_hunk_0
