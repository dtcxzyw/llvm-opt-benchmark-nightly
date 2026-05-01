inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1748: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1745, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i1747
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #23
  %i.cjn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cjo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0109.0.copyload = load i64, ptr %i.cjo, align 8, !tbaa !46 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %197 = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23
  %i.cjp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.uz unwind label %bb.vi
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a

bb.ve:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit1757
  store i64 %.sroa.0109.0.copyload, ptr %i.cjo, align 8, !tbaa !46
  store <2 x i64> %197, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !46
  br label %bb.vs

bb.vf:                                            ; preds = %bb.uu, %bb.ut
end_hunk_1
