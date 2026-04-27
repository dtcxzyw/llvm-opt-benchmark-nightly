inline.NumInlined: 3131
inline.NumDeleted: 1642
begin_hunk_0_@_ZN6duckdb17ExpressionListRef4CopyEv:bb.a
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %.loopexit42 ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.y, ptr %4, align 16, !tbaa !174
  store ptr %i.y, ptr %i.p, align 8, !tbaa !173
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store ptr %i.z, ptr %i.o, align 16, !tbaa !136
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !135
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.d
  %i.aa = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.s, %bb.d ] ; 2 uses
  %.not4147 = icmp eq ptr %i.t, %i.aa
  br i1 %.not4147, label %._crit_edge, label %.lr.ph

end_hunk_0
