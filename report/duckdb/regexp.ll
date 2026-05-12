inline.NumInlined: 1249
inline.NumDeleted: 582
begin_hunk_0_@_ZN10duckdb_re26Regexp5EqualEPS0_S1_:bb.a
  br label %_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN10duckdb_re26RegexpESaIS2_EE6resizeEm.exit: ; preds = %bb.x, %bb.u
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %bb.x ], [ %.sroa.0.0, %bb.u ]
  %.sroa.16.3 = phi ptr [ %spec.select, %bb.x ], [ %.sroa.16.0, %bb.u ]
  %.sroa.28.3 = phi ptr [ %.sroa.28.2, %bb.x ], [ %.sroa.28.0, %bb.u ]
  %.237 = phi ptr [ %i.ca, %bb.x ], [ %i.bj, %bb.u ] ; 2 uses
  %.234 = phi ptr [ %i.by, %bb.x ], [ %i.bp, %bb.u ]
  %.pre = load i8, ptr %.237, align 8, !tbaa !7
  br label %.preheader

end_hunk_0
