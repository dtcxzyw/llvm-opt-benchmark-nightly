inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake:bb.a

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %2 = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %2)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB15_16sort_unstable_byNCNCNvNtB17_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake:bb.a

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %2 = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %2)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
end_hunk_1
