inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake:bb.a
  store i64 %i.cg, ptr %i.k, align 8, !alias.scope !15904, !noalias !15907
  %.val.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !15899, !noalias !15902, !nonnull !19, !noundef !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ch = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.by ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(256) %i.ch, i64 256, i1 false), !noalias !15910
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 256 ; 2 uses
  %3 = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.sroa.524.0.copyload.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i, align 16, !noalias !15910
  %.not26.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not26.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake:bb.a
  %i.cl = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %i.cj ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 256
  %.val1.i.i.i = load i64, ptr %i.cm, align 16, !noalias !15910, !noundef !19
  %.not25.i.i.i = icmp sgt i64 %.val1.i.i.i, %.sroa.524.0.copyload.i.i.i
  br i1 %.not25.i.i.i, label %bb.q, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB5_8BufferedINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3q_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake:bb.a

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB3t_6errors15DeltaTableErrorEEE4pushCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.q, %.lr.ph.i.i.i, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.13.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1V_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions10CommitInfoENtNtB2X_6errors15DeltaTableErrorEEE8push_mutCs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.q ], [ %.sroa.13.027.i.i.i, %.lr.ph.i.i.i ]
  %i.co = getelementptr inbounds nuw [272 x i8], ptr %.val.i.i, i64 %.sroa.13.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.co, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.0.i.i.i, i64 256, i1 false), !noalias !15910
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  store <2 x i64> %3, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 16, !noalias !15910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2b_8Snapshot12commit_infos0s0_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !15873
  %i.cp = load i64, ptr %i.c, align 16, !range !3928, !noalias !15880, !noundef !19 ; 2 uses
end_hunk_2
