inline.NumInlined: 22002
inline.NumDeleted: 8912
begin_hunk_0_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a

bb.et:                                            ; preds = %.lr.ph455, %_ZN6duckdb15SelectionVectorC2Em.exit363
  %i.abs = phi i64 [ %i.abj, %.lr.ph455 ], [ %i.aeq, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 2 uses
  %.0251454 = phi i64 [ 0, %.lr.ph455 ], [ %.1252.lcssa595, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 6 uses
  %.0253453 = phi i64 [ 0, %.lr.ph455 ], [ %.1254, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 3 uses
  %i.abt = sub nuw i64 %5, %i.abs
  %i.abu = call noundef i64 @llvm.umin.i64(i64 %i.abt, i64 2048) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a

_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit: ; preds = %.noexc, %bb.ew
  store i64 %i.abu, ptr %i.abn, align 8, !tbaa !1222
  %i.acc = load i64, ptr %6, align 8, !tbaa !24   ; 4 uses
  %i.acd = icmp ult i64 %.0251454, %i.acc
  br i1 %i.acd, label %.lr.ph, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread

end_hunk_1
begin_hunk_2_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a
  %i.acf = load i64, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.acg = load i64, ptr %i.b, align 8            ; 4 uses
  %i.ach = load ptr, ptr %15, align 8             ; 2 uses
  %23 = sub nuw i64 %i.acc, %.0251454             ; 4 uses
  br i1 %.not.i366, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader: ; preds = %.lr.ph
  %i.aci = trunc nuw i64 %i.acg to i32
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader: ; preds = %.lr.ph
  %i.acj = icmp ult i64 %.0251454, %i.acg
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader, %bb.ey
  %.0230443.us = phi i64 [ %i.acn, %bb.ey ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader ] ; 3 uses
  %.1252442.us = phi i64 [ %i.aco, %bb.ey ], [ %.0251454, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader ] ; 4 uses
  %.not.us = icmp ult i64 %.1252442.us, %i.acf
  br i1 %.not.us, label %bb.ex, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge

bb.ex:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us
  br i1 %i.acj, label %.split.us, label %bb.ey
end_hunk_2
begin_hunk_3_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a
  store i32 %i.acl, ptr %i.acm, align 4, !tbaa !3
  %i.acn = add i64 %.0230443.us, 1                ; 2 uses
  %i.aco = add nuw i64 %.1252442.us, 1
  %exitcond505.not.a = icmp eq i64 %i.acn, %23
  br i1 %exitcond505.not.a, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us, !llvm.loop !1234

_ZNK6duckdb15SelectionVector9get_indexEm.exit367: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader, %bb.fg
end_hunk_3
begin_hunk_4_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a

_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge: ; preds = %bb.fg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367, %bb.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us
  %.1252.lcssa = phi i64 [ %.1252442.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us ], [ %i.acc, %bb.ey ], [ %i.acc, %bb.fg ], [ %.1252442, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367 ] ; 2 uses
  %.0230.lcssa = phi i64 [ %.0230443.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us ], [ %23, %bb.ey ], [ %23, %bb.fg ], [ %.0230443, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367 ] ; 2 uses
  %i.adf = icmp eq i64 %.0230.lcssa, 0
  br i1 %i.adf, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread, label %bb.fh

end_hunk_4
begin_hunk_5_@llvm.smax.i8
declare i8 @llvm.smax.i8(i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_5
