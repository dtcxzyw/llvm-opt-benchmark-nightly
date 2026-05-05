inline.NumInlined: 9982
inline.NumDeleted: 4210
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNvYB17_NtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr i8, ptr %.sroa.011.1.i.i, i64 -96
  %.val.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !7131, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.011.1.i.i, i64 -88
  %.val36.i.i = load i64, ptr %i.bu, align 8, !alias.scope !7131, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %spec.store.select.i.i.i42.i.i = tail call i64 @llvm.umin.i64(i64 %.val36.i.i, i64 %.val8.i37)
  %i.bv = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val.i, i64 %spec.store.select.i.i.i42.i.i), !noalias !7128 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapIB3o_INtNtNtNtB1y_11collections4hash3set8IntoIterRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns00ENCINvXs8_NtB9_3setINtB81_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB65_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapINtNtB3s_10filter_map9FilterMapINtNtB3s_6cloned6ClonedINtNtNtB2p_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs0_NtNtB5c_11transaction16conflict_checkerNtB6d_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files0ENCINvXs8_NtB9_3setINtB8l_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB5e_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
end_hunk_1
begin_hunk_2_@_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapINtNtB3s_10filter_map9FilterMapINtNtB3s_6cloned6ClonedINtNtNtB2p_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs0_NtNtB5c_11transaction16conflict_checkerNtB6d_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files0ENCINvXs8_NtB9_3setINtB8l_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB5e_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2n_8adapters3map3MapINtNtB3s_10filter_map9FilterMapINtNtB3s_6cloned6ClonedINtNtNtB2p_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs_NtNtB5c_11transaction16conflict_checkerNtB6c_20WinningCommitSummary22app_level_transactions0ENCINvXs8_NtB9_3setINtB7Q_7HashSetBP_B1s_EIB2h_BP_E6extendB3P_E0EEB5e_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_10filter_map9FilterMapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterbEENCNvMNtNtB2h_11transaction5stateNtB4a_12AddContainer17predicate_matches0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2j_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22return_field_from_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3a_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr16MakeParquetArrayNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22return_field_from_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3a_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22return_field_from_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3e_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion9ZOrderUDFNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22return_field_from_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3e_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvYNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions7to_json6ToJsonNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImpl22return_field_from_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3e_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB3f_16DeltaScanBuilder5build0s3_0EENtNtNtB8_6traits8iterator8Iterator4nextB3j_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB3f_16DeltaScanBuilder5build0s3_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3j_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB3e_14CdfLoadBuilder5build00EENtNtNtB8_6traits8iterator8Iterator4nextB3i_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB3e_14CdfLoadBuilder5build00EENtNtNtB8_6traits8iterator8Iterator9size_hintB3i_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files17df_logical_schema0EENtNtNtB8_6traits8iterator8Iterator4nextB3d_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files17df_logical_schema0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3d_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_9
begin_hunk_10_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider17df_logical_schema0EENtNtNtB8_6traits8iterator8Iterator4nextB3d_:bb.a
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider17df_logical_schema0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3d_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_10
begin_hunk_11_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3L_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schemas_0EENtNtNtB8_6traits8iterator8Iterator4nextB3O_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schemas_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3O_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !21159, !noalias !21162, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_12
begin_hunk_13_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtCs2HSpDNxY7OE_9hashbrown3set10DifferenceReNtNtB16_6hasher18DefaultHashBuilderEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_14
begin_hunk_15_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_15
begin_hunk_16_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_16
begin_hunk_17_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_17
begin_hunk_18_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_18
begin_hunk_19_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_19
begin_hunk_20_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_20
begin_hunk_21_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_21
begin_hunk_22_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRINtNtB18_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
end_hunk_22
begin_hunk_23_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRINtNtB18_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
end_hunk_23
