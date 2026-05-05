inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.eb:                                            ; preds = %bb.ea
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !5611 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5611 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_0
begin_hunk_1_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  store ptr %.sroa.3.0.copyload.i.i, ptr %i.j, align 8, !noalias !5611
  %i.nf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.nf, align 8, !noalias !5611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !range !121, !invariant.load !8, !noalias !5626
end_hunk_1
begin_hunk_2_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a
  br i1 %i.aku, label %_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.i, label %_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.thread.i

_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.i: ; preds = %bb.sj
  %.val135.i = load ptr, ptr %i.ahw, align 8, !noalias !6388 ; 2 uses
  %i.akv = extractvalue { ptr, i64 } %i.akr, 0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akv) ]
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.akv, ptr nonnull readonly %.val135.i, i64 %i.akt), !noalias !6392
  %.not370.i = icmp eq i32 %bcmp.i.i, 0
end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1A_ENtB2o_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
end_hunk_4
