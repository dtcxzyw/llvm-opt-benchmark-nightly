inline.NumInlined: 1642
inline.NumDeleted: 746
begin_hunk_0_@_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a
  ret { ptr, ptr } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsgO6CtM78C4N_7reqwest5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB5_20UnityCatalogProviderNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProvider12schema_names(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterB11_INtNtB6_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENCNvXs1_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB4N_20UnityCatalogProviderNtNtB3G_7catalog15CatalogProvider12schema_names0EE9from_iterB4P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB5_20UnityCatalogProviderNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProvider6schema(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB6_1t3MapBG_B1i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %i.c = load ptr, ptr %.sroa.3.0.copyload, align 8, !nonnull !4, !noundef !4
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %i.j, %bb.c ], [ %i.j, %bb.d ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  %i.i = load ptr, ptr %.sroa.3.0.copyload, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.k = atomicrmw sub ptr %i.b, i64 4 release, align 8
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1s_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1336, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
    i64 6, label %bb.e
    i64 7, label %bb.e
    i64 8, label %bb.c
    i64 9, label %bb.d
    i64 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !18, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !18, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.12.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1f_NtCshmPyUV8PP35_6chrono6formatNtB6_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny6as_anyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @133, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny7any_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @133, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny8into_anyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %0) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @133, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny9type_nameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @134, i64 56 }
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB5_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB7_6models25TemporaryTableCredentialsE17expire_after_read(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(256) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4, i64 %5, i32 noundef range(i32 0, 1000000001) %6, i64 noundef %7, i32 noundef range(i32 0, 1000000000) %8) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCshmPyUV8PP35_6chrono6offset3utcNtB2_3Utc3now(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k)
  %i.o = call { i64, i32 } @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime21signed_duration_since(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.k) ; 2 uses
  %i.p = extractvalue { i64, i32 } %i.o, 0
  %i.q = extractvalue { i64, i32 } %i.o, 1
  store i64 %i.p, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.s = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.u = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.u, label %bb.c [
    i8 0, label %bb.j
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !2805

bb.c:                                             ; preds = %bb.b
  %i.v = tail call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE) #33 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.07.0 = phi i8 [ %i.v, %bb.c ], [ %i.u, %bb.b ], [ %i.u, %bb.b ]
  %i.x = load ptr, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.y = tail call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, i8 noundef %.sroa.07.0)
  br i1 %i.y, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.z = load ptr, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.m, ptr %i.g, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.417.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.l, ptr %i.ab, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs8_NtCshmPyUV8PP35_6chrono10time_deltaNtB5_9TimeDeltaNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr @135, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.ac, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @90, ptr %i.ad, align 8
  store i64 1, ptr %i.j, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  %i.ae = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2806
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.f, label %_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2806 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 6
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ag, 2
  br i1 %i.ai, label %bb.g, label %_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, align 8, !noalias !2806, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  store i64 3, ptr %i.a, align 8, !noalias !2806
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.al, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2806
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2806
  %i.ao = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !4, !nonnull !4
  %i.at = call noundef zeroext i1 %i.as(ptr noundef %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35, !inline_history !2809
  br i1 %i.at, label %bb.h, label %_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  br label %_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit

_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %_RNCNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read0B9_.exit
  %i.au = call { i64, i32 } @_RNvMNtCshmPyUV8PP35_6chrono10time_deltaNtB2_9TimeDelta6to_std(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l) ; 2 uses
  %i.av = extractvalue { i64, i32 } %i.au, 1      ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1000000000
  %i.ax = extractvalue { i64, i32 } %i.au, 0
  %.sroa.0.0 = select i1 %i.aw, i64 undef, i64 %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ay = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.az = insertvalue { i64, i32 } %i.ay, i32 %i.av, 1
  ret { i64, i32 } %i.az

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %i.ba = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 6
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ugt i64 %i.bc, 2
  br i1 %i.be, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  store i64 3, ptr %i.f, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bh, ptr %.sroa.326.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bj, ptr %.sroa.527.0..sroa_idx, align 8
  %i.bk = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !nonnull !4
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #35
  br i1 %i.bp, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bq = load ptr, ptr @_RNvNvXs2_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB7_11TokenExpiryINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB9_6models25TemporaryTableCredentialsE17expire_after_read10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %i.bs, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs8_NtCshmPyUV8PP35_6chrono10time_deltaNtB5_9TimeDeltaNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  store ptr @135, ptr %i.c, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.bt, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @90, ptr %i.bu, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.538.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.br, ptr %i.bv, align 8
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCshmPyUV8PP35_6chrono6formatNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11description(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @136, i64 41 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsjkRrtHEnRPD_18reqwest_middleware5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !19, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @139)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

end_hunk_0
