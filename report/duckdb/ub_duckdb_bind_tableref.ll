inline.NumInlined: 9358
inline.NumDeleted: 4125
begin_hunk_0_@_ZN6duckdb6Binder10CreatePlanERNS_12BoundJoinRefE:bb.a
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %bb.i, %bb.g, %.thread
  %.sroa.0251.1 = phi ptr [ %i.j, %.thread ], [ %i.j, %bb.i ], [ %i.j, %bb.g ], [ %i.ag, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i ] ; 9 uses
  %i.ah = load i8, ptr %i.e, align 1, !tbaa !669, !range !98, !noundef !99
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN6duckdb29ReplacePivotAggregateOperator15HandleAggregateERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_18FunctionExpressionES6_:bb.a
  store ptr null, ptr %0, align 8, !tbaa !154
  %i.n = load ptr, ptr %2, align 8, !tbaa !154
  store ptr null, ptr %2, align 8, !tbaa !154
  %i.o = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !154
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.i
  %5 = load ptr, ptr %i.o, align 8, !tbaa !172
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #25, !inline_history !1029
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %8 = load ptr, ptr %2, align 8, !tbaa !154      ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !154
  %.not.i.i.i.i.i14 = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i14, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i15

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i15: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.p = load ptr, ptr %8, align 8, !tbaa !172
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(56) %8) #25, !inline_history !1029
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i15, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %bb.h
end_hunk_1
