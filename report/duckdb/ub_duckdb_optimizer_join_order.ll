inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ks, i64 noundef 0)
          to label %bb.cd unwind label %bb.ci     ; 4 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ku = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
end_hunk_0
begin_hunk_1_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
  store ptr null, ptr %i.kt, align 8, !tbaa !377
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !377
  store ptr null, ptr %i.kw, align 8, !tbaa !377
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !377 ; 3 uses
  store ptr %i.kz, ptr %i.kt, align 8, !tbaa !377
  %.not.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.cf
  %31 = load ptr, ptr %i.la, align 8, !tbaa !352
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.la) #29, !inline_history !1287
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i, %bb.cf
  %34 = load ptr, ptr %i.kw, align 8, !tbaa !377  ; 3 uses
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !377
  %.not.i.i.i.i.i4.i = icmp eq ptr %34, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.lb = load ptr, ptr %34, align 8, !tbaa !352
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %34) #29, !inline_history !1287
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

bb.cg:                                            ; preds = %bb.bt
end_hunk_1
begin_hunk_2_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
          cleanup
  br label %bb.dh

_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %bb.bz, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %.loopexit531
  %.0106.shrunk = phi i1 [ false, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i ], [ true, %.loopexit531 ], [ false, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i ], [ false, %bb.bz ] ; 6 uses
  %i.lh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cj unwind label %bb.ci

end_hunk_2
