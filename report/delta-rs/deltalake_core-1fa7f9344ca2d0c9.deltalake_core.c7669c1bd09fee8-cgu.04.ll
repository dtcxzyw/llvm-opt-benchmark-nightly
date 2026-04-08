inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicate:bb.a
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 5 uses
  %i.e = alloca [112 x i8], align 16              ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicate:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 25 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.an, ptr %.sroa.557.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorRNtNtCs6Po7BT7Nknu_5alloc6string6StringE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj1_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.ai, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.au = load i64, ptr %1, align 8, !range !578, !noundef !27 ; 2 uses
  switch i64 %i.au, label %default.unreachable128 [
end_hunk_1
