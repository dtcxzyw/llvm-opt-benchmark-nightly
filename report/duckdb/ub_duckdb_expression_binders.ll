inline.NumInlined: 3324
inline.NumDeleted: 1547
begin_hunk_0_@_ZN6duckdb11IndexBinder9BindIndexERKNS_12UnboundIndexE:bb.a

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre60.pre = load ptr, ptr %i.y, align 8, !tbaa !304
  %.pre.pre = load ptr, ptr %i.x, align 8, !tbaa !304
  store ptr %i.ag, ptr %6, align 8, !tbaa !280
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !278
  %10 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store ptr %10, ptr %i.af, align 8, !tbaa !279
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.k
  %i.ai = phi ptr [ %.pre60.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.z, %bb.k ] ; 2 uses
  %i.aj = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.aa, %bb.k ] ; 2 uses
  %.not5758 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not5758, label %._crit_edge, label %.lr.ph

end_hunk_0
