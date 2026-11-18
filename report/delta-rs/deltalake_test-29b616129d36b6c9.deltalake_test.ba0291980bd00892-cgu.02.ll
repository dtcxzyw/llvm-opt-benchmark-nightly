Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.02?download=true
inline.NumInlined: 686
inline.NumDeleted: 340
begin_hunk_0_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2A_5table7builder16resolve_uri_typeReE0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.r:                                             ; preds = %bb.q, %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1160 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1161
  store ptr %1, ptr %i.c, align 8, !noalias !1163
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !1163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1163
  call void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !1163
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !1163, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !1163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1163
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !1164

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1165, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !5, !alias.scope !1165, !noundef !4
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 128)
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !1163
  br label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18, !noalias !1163
  unreachable

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1163, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1166
  store ptr %i.j, ptr %i.a, align 8, !noalias !1163
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1163
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1163
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callB1s_NCINvMsj_NtB23_3vecINtB4K_3VecB1s_E14extend_trustedBP_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1161
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1168 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1169 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1170 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1171 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecReENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1172 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSReNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB14_EENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1173 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBw_ENtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1174 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtShNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecxENtB6_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !1175 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSxNtB5_5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !guid !1180 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1181, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !1181, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.thread.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !6

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !1182, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.k = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.thread.i ], [ %i.e, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1182, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !1182
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test.exit

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.b
  %i.p = phi i64 [ %.pre.i, %bb.b ], [ %i.e, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  %i.q = add i64 %i.p, %i.c
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1182
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1201 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !1203, !noundef !4
  %i.b = icmp ne i64 %.val.i, -9223372036854775808
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1204, !noundef !4 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !5, !alias.scope !1204, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, %i.c
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 96)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i unwind label %bb.d, !noalias !1203

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !1202
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i, %bb.a
  %i.i = phi i64 [ %.pre.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1202, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !noalias !1202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %.sroa.0.0.copyload610.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !1209, !noalias !1205 ; 2 uses
  store i64 -9223372036854775808, ptr %i.a, align 8, !alias.scope !1210, !noalias !1205
  %.not11.i.i.i = icmp eq i64 %.sroa.0.0.copyload610.i.i.i, -9223372036854775808
  br i1 %.not11.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %i.i ; 2 uses
  store i64 %.sroa.0.0.copyload610.i.i.i, ptr %i.l, align 8, !noalias !1211
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  %i.n = add i64 %i.i, 1
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i

bb.d:                                             ; preds = %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(96) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.n, %._crit_edge.i.i.i ], [ %i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.d, align 8, !alias.scope !1202, !noalias !1212
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.a), !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1228 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !1230, !noundef !4 ; 2 uses
  %i.a = icmp ne i64 %.val.i, -9223372036854775808 ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1231, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !1231, !noundef !4
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 40)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i unwind label %bb.d, !noalias !1230

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1229
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1229, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val.i, ptr %i.k, align 8, !noalias !1232
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i64 32, i1 false)
  %i.l = add i64 %i.h, 1
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !1229, !noalias !1233
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1249 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !1251, !noundef !4 ; 2 uses
  %i.a = icmp ne i64 %.val.i, -9223372036854775808 ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1252, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !1252, !noundef !4
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i unwind label %bb.d, !noalias !1251

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1250
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1250, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val.i, ptr %i.k, align 8, !noalias !1253
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.l = add i64 %i.h, 1
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !1250, !noalias !1254
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1270 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !1272, !noundef !4 ; 2 uses
  %i.a = icmp ne i64 %.val.i, -9223372036854775808 ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1273, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !1273, !noundef !4
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i unwind label %bb.d, !noalias !1272

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1271
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i.i, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1271, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val.i, ptr %i.k, align 8, !noalias !1274
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.l = add i64 %i.h, 1
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !1271, !noalias !1275
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB13_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE9from_iterB43_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1282 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.b, align 8, !range !14, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noundef !4 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!993 = distinct !{!993, !992, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB29_4util11SharedValueIBI_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEINtB2N_7RawIterB3y_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!994 = distinct !{!994, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test"}
!995 = distinct !{!995, !994, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!996 = distinct !{!996, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!997 = distinct !{!997, !996, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!998 = !{i64 3233311336866920440}
!999 = !{!942}
!1000 = !{!943}
!1001 = !{!942, !943}
!1002 = !{!945}
!1003 = !{!947}
!1004 = !{!949}
!1005 = !{!949, !947, !945, !943}
!1006 = !{!955, !953, !951, !949, !947, !945, !942}
!1007 = !{!957}
!1008 = !{!958}
!1009 = !{!960}
!1010 = !{!961}
!1011 = !{!960, !961, !957, !958, !942, !943}
!1012 = !{!963}
!1013 = !{!965}
!1014 = !{!967}
!1015 = !{!967, !965, !963, !961, !958}
!1016 = !{!973, !971, !969, !967, !965, !963, !942}
!1017 = !{!960, !957}
!1018 = !{!975}
!1019 = !{!977}
!1020 = !{!979}
!1021 = !{!979, !977, !975, !961, !958}
!1022 = !{!985, !983, !981, !979, !977, !975, !942}
!1023 = !{!987}
!1024 = !{!989}
!1025 = !{!991}
!1026 = !{!991, !989, !987, !943}
!1027 = !{!997, !995, !993, !991, !989, !987, !942}
!1028 = distinct !{!1028, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test"}
!1029 = distinct !{!1029, !1028, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1030 = distinct !{!1030, !1028, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1031 = distinct !{!1031, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2Q_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1032 = distinct !{!1032, !1031, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2Q_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1033 = distinct !{!1033, !1031, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2Q_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1034 = distinct !{!1034, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test"}
!1035 = distinct !{!1035, !1034, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1036 = distinct !{!1036, !1034, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1037 = !{i64 -8808593999093242887}
!1038 = !{!1029}
!1039 = !{!1030, !1029}
!1040 = !{!1036, !1035, !1033, !1032, !1030, !1029}
!1041 = !{!1030}
!1042 = distinct !{!1042, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test"}
!1043 = distinct !{!1043, !1042, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1044 = distinct !{!1044, !1042, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1045 = distinct !{!1045, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBK_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1046 = distinct !{!1046, !1045, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBK_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1047 = distinct !{!1047, !1045, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRNtNtBZ_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBK_B3h_EE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1048 = distinct !{!1048, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test"}
!1049 = distinct !{!1049, !1048, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1050 = distinct !{!1050, !1048, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1051 = !{i64 -197939967098816403}
!1052 = !{!1043}
!1053 = !{!1044, !1043}
!1054 = !{!1050, !1049, !1047, !1046, !1044, !1043}
!1055 = !{!1044}
!1056 = distinct !{!1056, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test"}
!1057 = distinct !{!1057, !1056, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecRBQ_E14extend_trustedBF_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1059 = distinct !{!1059, !1058, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecRBQ_E14extend_trustedBF_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1060 = distinct !{!1060, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1061 = distinct !{!1061, !1060, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0CsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1062 = distinct !{!1062, !1060, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1063 = distinct !{!1063, !15, !16}
!1064 = distinct !{!1064, !16, !15}
!1065 = !{i64 -5634335379913262856}
!1066 = !{!1057}
!1067 = !{!1062, !1061, !1059, !1057}
!1068 = distinct !{!1068, i1 true, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter4IterINtNtB2I_6option6OptionB11_EENCINvNvMs_NtB1o_6fieldsNtB4F_6Fields17try_filter_leaves12filter_fieldNCIB4A_NCINvB4C_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB6h_12arrow_reader18ArrowReaderBuilderINtB6f_11AsyncReaderNtNtB6f_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCsfY7SmN0bPrO_14deltalake_test"}
!1069 = distinct !{!1069, !1068, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter4IterINtNtB2I_6option6OptionB11_EENCINvNvMs_NtB1o_6fieldsNtB4F_6Fields17try_filter_leaves12filter_fieldNCIB4A_NCINvB4C_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB6h_12arrow_reader18ArrowReaderBuilderINtB6f_11AsyncReaderNtNtB6f_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test"}
!1071 = distinct !{!1071, !1070, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1072 = distinct !{!1072, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test"}
!1073 = distinct !{!1073, !1072, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1074 = distinct !{!1074, !1072, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1075 = distinct !{!1075, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1076 = distinct !{!1076, !1075, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1077 = distinct !{!1077, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1078 = distinct !{!1078, !1077, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1079 = distinct !{!1079, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1080 = distinct !{!1080, !1079, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1081 = distinct !{!1081, i1 true, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter4IterINtNtB2p_6option6OptionBR_EENCINvNvMs_NtB1e_6fieldsNtB4l_6Fields17try_filter_leaves12filter_fieldNCIB4g_NCINvB4i_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5X_12arrow_reader18ArrowReaderBuilderINtB5V_11AsyncReaderNtNtB5V_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1082 = distinct !{!1082, !1081, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter4IterINtNtB2p_6option6OptionBR_EENCINvNvMs_NtB1e_6fieldsNtB4l_6Fields17try_filter_leaves12filter_fieldNCIB4g_NCINvB4i_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5X_12arrow_reader18ArrowReaderBuilderINtB5V_11AsyncReaderNtNtB5V_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1083 = distinct !{!1083, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTaINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2b_5slice4iter4IterINtNtB2b_6option6OptionBG_EENCINvNvMs_NtB13_6fieldsNtB47_6Fields17try_filter_leaves12filter_fieldNCIB42_NCINvB44_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5J_12arrow_reader18ArrowReaderBuilderINtB5H_11AsyncReaderNtNtB5H_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EECsfY7SmN0bPrO_14deltalake_test"}
!1084 = distinct !{!1084, !1083, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTaINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2b_5slice4iter4IterINtNtB2b_6option6OptionBG_EENCINvNvMs_NtB13_6fieldsNtB47_6Fields17try_filter_leaves12filter_fieldNCIB42_NCINvB44_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5J_12arrow_reader18ArrowReaderBuilderINtB5H_11AsyncReaderNtNtB5H_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1085 = distinct !{!1085, i1 true, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test"}
!1086 = distinct !{!1086, !1085, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1087 = distinct !{!1087, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test"}
!1088 = distinct !{!1088, !1087, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1089 = distinct !{!1089, !1087, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1090 = distinct !{!1090, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1091 = distinct !{!1091, !1090, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1092 = distinct !{!1092, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1093 = distinct !{!1093, !1092, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1094 = distinct !{!1094, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1095 = distinct !{!1095, !1094, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1096 = !{i64 -2636288040553677531}
!1097 = !{!1069}
!1098 = !{!1071}
!1099 = !{!1073}
!1100 = !{!1071, !1069}
!1101 = !{!1073, !1074, !1071, !1069}
!1102 = !{!1073, !1069}
!1103 = !{!1073, !1071}
!1104 = !{!1080, !1078, !1076, !1069}
!1105 = !{!1082}
!1106 = !{!1084}
!1107 = !{!1082, !1069}
!1108 = !{!1084, !1082, !1069}
!1109 = !{!1086}
!1110 = !{!1088}
!1111 = !{!1086, !1084, !1082, !1069}
!1112 = !{!1088, !1089, !1086, !1084, !1082, !1069}
!1113 = !{!1088, !1086}
!1114 = !{!1084, !1082}
!1115 = !{!1095, !1093, !1091, !1069}
!1116 = distinct !{!1116, i1 true, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test"}
!1117 = distinct !{!1117, !1116, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1118 = distinct !{!1118, !1116, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1119 = distinct !{!1119, i1 true, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of"}
!1120 = distinct !{!1120, !1119, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!1122 = distinct !{!1122, !1121, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1124 = distinct !{!1124, !1123, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test"}
!1126 = distinct !{!1126, !1125, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test"}
!1128 = distinct !{!1128, !1127, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1129 = distinct !{!1129, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1130 = distinct !{!1130, !1129, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1131 = distinct !{!1131, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test"}
!1132 = distinct !{!1132, !1131, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1133 = distinct !{!1133, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test"}
!1134 = distinct !{!1134, !1133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1135 = distinct !{!1135, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1136 = distinct !{!1136, !1135, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1137 = !{i64 -6625013931405651426}
!1138 = !{!1117}
!1139 = !{!1118, !1117}
!1140 = !{!1124, !1122, !1120}
!1141 = !{!1126}
!1142 = !{!1128}
!1143 = !{!1130}
!1144 = !{!1130, !1128, !1126, !1117}
!1145 = !{!1130, !1128, !1126, !1118, !1117}
!1146 = !{!1118}
!1147 = !{!1132}
!1148 = !{!1134}
!1149 = !{!1136}
!1150 = !{!1136, !1134, !1132, !1117}
!1151 = !{!1136, !1134, !1132, !1118, !1117}
!1152 = distinct !{!1152, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1153 = distinct !{!1153, !1152, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1154 = distinct !{!1154, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2P_5slice4iter4IterBG_EEECsfY7SmN0bPrO_14deltalake_test"}
!1155 = distinct !{!1155, !1154, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2P_5slice4iter4IterBG_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1156 = distinct !{!1156, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1157 = distinct !{!1157, !1156, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1158 = distinct !{!1158, i1 true, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB1Y_3vecINtB4f_3VecB1n_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1159 = distinct !{!1159, !1158, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB1Y_3vecINtB4f_3VecB1n_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1160 = !{i64 8193509849617687795}
!1161 = !{!1153}
!1162 = !{!1155}
!1163 = !{!1155, !1153}
!1164 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1165 = !{!1157, !1155, !1153}
!1166 = !{!1159, !1155, !1153}
!1167 = !{!1159}
!1168 = !{i64 -6325619750487927715}
!1169 = !{i64 8631514928682978917}
!1170 = !{i64 7922606920652690776}
!1171 = !{i64 1294104380487766395}
!1172 = !{i64 8440009623542681940}
!1173 = !{i64 -7558109186564692372}
!1174 = !{i64 -4696177893490101459}
!1175 = !{i64 -2096252145806906647}
!1176 = distinct !{!1176, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test"}
!1177 = distinct !{!1177, !1176, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1178 = distinct !{!1178, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1179 = distinct !{!1179, !1178, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1180 = !{i64 -2174757483678534864}
!1181 = !{!1179, !1177}
!1182 = !{!1177}
!1183 = distinct !{!1183, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1184 = distinct !{!1184, !1183, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1185 = distinct !{!1185, !1183, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1186 = distinct !{!1186, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1187 = distinct !{!1187, !1186, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1188 = distinct !{!1188, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1189 = distinct !{!1189, !1188, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1190 = distinct !{!1190, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1191 = distinct !{!1191, !1190, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1192 = distinct !{!1192, i1 true, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test"}
!1193 = distinct !{!1193, !1192, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 0:pre.rot"}
!1194 = distinct !{!1194, !1192, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 1:pre.rot"}
!1195 = distinct !{!1195, !1188, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1196 = distinct !{!1196, !1190, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1197 = distinct !{!1197, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1198 = distinct !{!1198, !1197, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1199 = distinct !{!1199, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1200 = distinct !{!1200, !1199, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1201 = !{i64 -2986273555469882795}
!1202 = !{!1184}
!1203 = !{!1185}
!1204 = !{!1187, !1184}
!1205 = !{!1184, !1185}
!1206 = !{!1189}
!1207 = !{!1191}
!1208 = !{!1193}
!1209 = !{!1193, !1194, !1191, !1189}
!1210 = !{!1194, !1191, !1189}
!1211 = !{!1200, !1198, !1191, !1196, !1189, !1195, !1185}
!1212 = !{!1191, !1196, !1189, !1195}
!1213 = distinct !{!1213, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1214 = distinct !{!1214, !1213, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1215 = distinct !{!1215, !1213, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1216 = distinct !{!1216, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1217 = distinct !{!1217, !1216, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1218 = distinct !{!1218, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1219 = distinct !{!1219, !1218, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1220 = distinct !{!1220, !1218, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1221 = distinct !{!1221, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1222 = distinct !{!1222, !1221, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1223 = distinct !{!1223, !1221, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1224 = distinct !{!1224, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2k_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1225 = distinct !{!1225, !1224, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2k_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1226 = distinct !{!1226, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1227 = distinct !{!1227, !1226, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1228 = !{i64 116057595731680189}
!1229 = !{!1214}
!1230 = !{!1215}
!1231 = !{!1217, !1214}
!1232 = !{!1227, !1225, !1223, !1222, !1220, !1219, !1215}
!1233 = !{!1223, !1222, !1220, !1219}
!1234 = distinct !{!1234, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1235 = distinct !{!1235, !1234, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1236 = distinct !{!1236, !1234, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1237 = distinct !{!1237, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1238 = distinct !{!1238, !1237, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1239 = distinct !{!1239, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1240 = distinct !{!1240, !1239, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1241 = distinct !{!1241, !1239, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1242 = distinct !{!1242, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1243 = distinct !{!1243, !1242, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1244 = distinct !{!1244, !1242, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1245 = distinct !{!1245, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2H_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1246 = distinct !{!1246, !1245, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2H_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1247 = distinct !{!1247, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1248 = distinct !{!1248, !1247, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1249 = !{i64 5923907593946069673}
!1250 = !{!1235}
!1251 = !{!1236}
!1252 = !{!1238, !1235}
!1253 = !{!1248, !1246, !1244, !1243, !1241, !1240, !1236}
!1254 = !{!1244, !1243, !1241, !1240}
!1255 = distinct !{!1255, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1256 = distinct !{!1256, !1255, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1257 = distinct !{!1257, !1255, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1258 = distinct !{!1258, i1 true, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1259 = distinct !{!1259, !1258, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1260 = distinct !{!1260, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1261 = distinct !{!1261, !1260, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1262 = distinct !{!1262, !1260, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1263 = distinct !{!1263, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1264 = distinct !{!1264, !1263, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1265 = distinct !{!1265, !1263, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1266 = distinct !{!1266, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2T_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1267 = distinct !{!1267, !1266, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2T_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1268 = distinct !{!1268, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1269 = distinct !{!1269, !1268, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1270 = !{i64 5285988186091958705}
!1271 = !{!1256}
!1272 = !{!1257}
!1273 = !{!1259, !1256}
!1274 = !{!1269, !1267, !1265, !1264, !1262, !1261, !1257}
!1275 = !{!1265, !1264, !1262, !1261}
!1276 = distinct !{!1276, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_"}
!1277 = distinct !{!1277, !1276, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_: argument 1"}
!1278 = distinct !{!1278, !1276, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_: argument 0"}
!1279 = distinct !{!1279, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_"}
!1280 = distinct !{!1280, !1279, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_: argument 1"}
!1281 = distinct !{!1281, !1279, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_: argument 0"}
!1282 = !{i64 -595272629559582515}
!1283 = !{!1281, !1280, !1278, !1277}
!1284 = distinct !{!1284, i1 true, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1285 = distinct !{!1285, !1284, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1286 = distinct !{!1286, !1284, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1287 = distinct !{!1287, i1 true, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test"}
!1288 = distinct !{!1288, !1287, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1289 = distinct !{!1289, !1287, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1290 = !{i64 -7371137072199922626}
!1291 = !{!1289, !1288, !1286, !1285}
!1292 = distinct !{!1292, i1 true, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test"}
!1293 = distinct !{!1293, !1292, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1294 = distinct !{!1294, !1292, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1295 = distinct !{!1295, !15, !16}
!1296 = distinct !{!1296, !16, !15}
!1297 = !{i64 9209424180790185304}
!1298 = !{!1293}
!1299 = !{!1294, !1293}
!1300 = distinct !{!1300, i1 true, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test"}
!1301 = distinct !{!1301, !1300, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1302 = distinct !{!1302, !1300, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1303 = distinct !{!1303, i1 true, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!1304 = distinct !{!1304, !1303, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!1305 = distinct !{!1305, !1303, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!1306 = distinct !{null, null}
!1307 = distinct !{null}
!1308 = !{i64 -6481666738764138687}
!1309 = !{!1302, !1301}
!1310 = !{!1304}
!1311 = !{!1305}
!1312 = !{!1302}
!1313 = !{!1304, !1305}
!1314 = !{!1304, !1305, !1302}
!1315 = !{!1305, !1302}
!1316 = !{!1301}
!1317 = !{i64 3019723005833761532}
!1318 = distinct !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test, null}
!1319 = distinct !{null}
!1320 = !{i64 -6494011843661876521}
!1321 = distinct !{!1321, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1322 = distinct !{!1322, !1321, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1323 = distinct !{!1323, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1324 = distinct !{!1324, !1323, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1325 = distinct !{!1325, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1326 = distinct !{!1326, !1325, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1327 = distinct !{!1327, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1328 = distinct !{!1328, !1327, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1329 = distinct !{!1329, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1330 = distinct !{!1330, !1329, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1331 = !{i64 -6502059607924806944}
!1332 = !{!1322}
!1333 = !{!1324}
!1334 = !{!1324, !1322, !1326}
!1335 = !{!1324, !1322}
!1336 = !{!1328}
!1337 = !{!1330}
!1338 = !{!1330, !1328, !1326}
!1339 = !{!1330, !1328}
!1340 = distinct !{!1340, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1341 = distinct !{!1341, !1340, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1342 = distinct !{!1342, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1343 = distinct !{!1343, !1342, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1344 = distinct !{!1344, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1345 = distinct !{!1345, !1344, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1346 = distinct !{!1346, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1347 = distinct !{!1347, !1346, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1348 = distinct !{!1348, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1349 = distinct !{!1349, !1348, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1350 = !{i64 -8364146138557534359}
!1351 = !{!1341}
!1352 = !{!1343}
!1353 = !{!1343, !1341, !1345}
!1354 = !{!1343, !1341}
!1355 = !{!1347}
!1356 = !{!1349}
!1357 = !{!1349, !1347, !1345}
!1358 = !{!1349, !1347}
!1359 = distinct !{!1359, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader6filter14ArrowPredicateEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1360 = distinct !{!1360, !1359, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader6filter14ArrowPredicateEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1361 = !{i64 2212697712691020743}
!1362 = !{!1360}
!1363 = distinct !{!1363, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1364 = distinct !{!1364, !1363, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1365 = distinct !{!1365, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1366 = distinct !{!1366, !1365, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1367 = distinct !{!1367, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1368 = distinct !{!1368, !1367, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1369 = distinct !{!1369, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1370 = distinct !{!1370, !1369, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1371 = distinct !{!1371, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1372 = distinct !{!1372, !1371, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1373 = distinct !{!1373, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1374 = distinct !{!1374, !1373, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1375 = distinct !{!1375, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1376 = distinct !{!1376, !1375, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1377 = !{i64 4375375911606814569}
!1378 = !{!1364}
!1379 = !{!1364, !1366}
!1380 = !{!1370, !1368, !1364}
!1381 = !{!1372}
!1382 = !{!1372, !1366}
!1383 = !{!1376, !1374, !1372}
!1384 = distinct !{!1384, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1385 = distinct !{!1385, !1384, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1386 = distinct !{!1386, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1387 = distinct !{!1387, !1386, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1388 = distinct !{!1388, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1389 = distinct !{!1389, !1388, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1390 = distinct !{!1390, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1391 = distinct !{!1391, !1390, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1392 = distinct !{!1392, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1393 = distinct !{!1393, !1392, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1394 = distinct !{!1394, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1395 = distinct !{!1395, !1394, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1396 = distinct !{!1396, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1397 = distinct !{!1397, !1396, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1398 = distinct !{!1398, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1399 = distinct !{!1399, !1398, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1400 = distinct !{!1400, i1 true, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1401 = distinct !{!1401, !1400, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1402 = !{i64 5399611464027556829}
!1403 = !{!1385}
!1404 = !{!1385, !1387}
!1405 = !{!1393, !1391, !1389, !1385}
!1406 = !{!1395}
!1407 = !{!1395, !1387}
!1408 = !{!1401, !1399, !1397, !1395}
!1409 = !{i64 1732731881474831885}
!1410 = !{i64 -2097360472812697763}
!1411 = !{i64 1711462637893743998}
!1412 = distinct !{!1412, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateECsfY7SmN0bPrO_14deltalake_test"}
end_hunk_1
