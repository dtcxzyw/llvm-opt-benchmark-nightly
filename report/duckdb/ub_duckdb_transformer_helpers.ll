inline.NumInlined: 2962
inline.NumDeleted: 1077
begin_hunk_0_@_ZN6duckdb11Transformer23TransformTypeExpressionERN17duckdb_libpgquery10PGTypeNameE:bb.a
  %.not36 = icmp eq ptr %.018, null
  br i1 %.not36, label %.loopexit, label %bb.j, !llvm.loop !541

bb.ah:                                            ; preds = %.loopexit120, %bb.ae, %bb.ad, %bb.r
  %.pn41 = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.cg, %bb.ae ], [ %.pn38.pn, %bb.ad ], [ %lpad.loopexit.a, %.loopexit120 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
end_hunk_0
