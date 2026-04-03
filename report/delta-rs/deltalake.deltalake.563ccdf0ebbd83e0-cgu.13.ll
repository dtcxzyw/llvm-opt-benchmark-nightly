begin_hunk_0

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.i, %bb.g
  %i.j = icmp samesign ult i64 %.sroa.0.0.i, %i.h
  br i1 %i.j, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i
end_hunk_0
begin_hunk_1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.af = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.af, %i.h
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

end_hunk_1
begin_hunk_2
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB18_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2r_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.cm = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_2
begin_hunk_3

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i, %bb.g
  %i.j = icmp samesign ult i64 %.sroa.0.0.i, %i.h
  br i1 %i.j, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i
end_hunk_3
begin_hunk_4
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.1.i: ; preds = %._crit_edge40, %.lr.ph.1.i
  %i.af = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.af, %i.h
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

end_hunk_4
begin_hunk_5
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB18_16sort_unstable_byNCNCNvNtB1a_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.cm = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_5
begin_hunk_6

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

end_hunk_6
begin_hunk_7

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

end_hunk_7
begin_hunk_8

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.q = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.m  ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.r, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i, %bb.h
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.q
  br i1 %i.s, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.1.i
end_hunk_8
begin_hunk_9
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.1.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.1.i: ; preds = %._crit_edge280, %.lr.ph.1.i
  %i.ao = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ao, %i.q
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

end_hunk_9
begin_hunk_10
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6J_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6J_.exit.i: ; preds = %._crit_edge269, %.lr.ph.i
  %i.dc = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_10
begin_hunk_11

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.q = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.m  ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.r, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i, %bb.h
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.q
  br i1 %i.s, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.1.i
end_hunk_11
begin_hunk_12
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.1.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.1.i: ; preds = %._crit_edge280, %.lr.ph.1.i
  %i.ao = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ao, %i.q
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

end_hunk_12
begin_hunk_13
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit.i: ; preds = %._crit_edge269, %.lr.ph.i
  %i.dc = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dc, %i.m
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

end_hunk_13
