inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring31CompressedRunContainerScanState11LoadNextRunEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.peel.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !177
  %.not.not.i33 = icmp eq i8 %i.p, 0
  br i1 %.not.not.i33, label %.lr.ph, label %.critedge.loopexit.split.loop.exit6.i

.peel.next.i:                                     ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring31CompressedRunContainerScanState11LoadNextRunEv:bb.a
  %.not.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.not.i, label %.lr.ph, label %.critedge.loopexit.split.loop.exit6.i, !llvm.loop !423

.lr.ph:                                           ; preds = %.peel.next.i.preheader, %.peel.next.i
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i, %.peel.next.i ], [ %indvars.iv.next.peel.i, %.peel.next.i.preheader ]
  store i8 0, ptr %i.g, align 1, !tbaa !422
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i34, 1 ; 4 uses
  %i.s = trunc i64 %indvars.iv.next.i to i8       ; 3 uses
  store i8 %i.s, ptr %i.h, align 8, !tbaa !421
end_hunk_1
