inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB1k_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EINtNtB1o_6result6ResultNtNtB1o_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEE9from_iterB4p_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4D_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4D_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23715)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc9.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB1m_9enumerate9EnumerateINtNtNtB1q_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEEENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats19stats_from_metadataNtNtB6_6string6StringEs_0EE9from_iterB4D_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !23723)
  call void @llvm.experimental.noalias.scope.decl(metadata !23726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23729
  store ptr %i.ad, ptr %i.a, align 8, !noalias !23732
  store ptr %i.ae, ptr %i.af, align 8, !noalias !23732
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !23735, !noalias !23738, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !23735, !noalias !23738
  br label %bb.g
end_hunk_2
