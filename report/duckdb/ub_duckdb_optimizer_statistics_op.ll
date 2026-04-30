inline.NumInlined: 3433
inline.NumDeleted: 1871
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_21LogicalComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.aj unwind label %bb.aa     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_21LogicalComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  store ptr null, ptr %i.dk, align 8, !tbaa !300
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !300
  store ptr null, ptr %i.dl, align 8, !tbaa !300
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !300
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !300 ; 3 uses
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !300
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %bb.ak
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.dp) #24, !inline_history !545
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %bb.ah, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i, %bb.ak
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.al unwind label %bb.aa     ; 2 uses

end_hunk_1
begin_hunk_2_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_21LogicalComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

bb.at:                                            ; preds = %bb.as
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 0)
          to label %bb.au unwind label %bb.aa     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
end_hunk_2
begin_hunk_3_@_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_21LogicalComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a
  store ptr null, ptr %i.er, align 8, !tbaa !300
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !300
  store ptr null, ptr %i.es, align 8, !tbaa !300
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !300
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !300 ; 3 uses
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !300
  %.not.i.i.i.i.i.i125 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i125, label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit130, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i129

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i129: ; preds = %bb.av
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ew) #24, !inline_history !545
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit130

_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit130: ; preds = %bb.as, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i129, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN6duckdb14BoundLimitNode13ConstantValueEl(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundLimitNode") align 8 %10, i64 noundef 1)
end_hunk_3
