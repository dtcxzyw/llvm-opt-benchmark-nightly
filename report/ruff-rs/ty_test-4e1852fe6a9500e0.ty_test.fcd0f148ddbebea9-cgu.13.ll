Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_test-4e1852fe6a9500e0.ty_test.fcd0f148ddbebea9-cgu.13?download=true
inline.NumInlined: 561
inline.NumDeleted: 228
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsiXichZnxgbf_6anyhow5errorINtB5_9ErrorImplNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorENtNtBU_3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEENtNtB7_3fmt5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtB7_3fmt5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEEENtNtB1z_3fmt5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !noundef !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtB12_3fmt5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !noundef !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef zeroext i1 @_RNvXso_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEEENtNtB1z_7default7Default7defaultCslHJxOrvIAon_7ty_test() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #32 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs7_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtB12_7default7Default7defaultCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  ret ptr %i.b

bb.d:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #32
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsX_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db5files10FilesInnerENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCslHJxOrvIAon_7ty_test() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.g = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #32 ; 31 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #33
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.i = invoke noundef i64 @_RNvCseeqNL4LYPyI_7dashmap20default_shard_amount()
          to label %.noexc unwind label %bb.k     ; 4 uses

.noexc:                                           ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %.invoke, !prof !86

bb.c:                                             ; preds = %.noexc
  %i.k = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.i)
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCslHJxOrvIAon_7ty_test.exit.i, label %.invoke, !prof !86

.invoke:                                          ; preds = %bb.c, %.noexc
  %i.m = phi ptr [ @46, %.noexc ], [ @49, %bb.c ]
  %i.n = phi i64 [ 34, %.noexc ], [ 48, %bb.c ]
  %i.o = phi ptr [ @48, %.noexc ], [ @50, %bb.c ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o) #33
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCslHJxOrvIAon_7ty_test.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !915
  store i64 0, ptr %i.f, align 8, !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !915
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.p, align 8, !noalias !915
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.i, ptr %i.q, align 8, !noalias !915
  store ptr %i.f, ptr %i.e, align 8, !noalias !915
  %i.r = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api6rwlock6RwLockNtNtCseeqNL4LYPyI_7dashmap4lock9RawRwLockINtNtNtCsauNtLCAh4zB_9hashbrown3raw5inner8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufINtNtB2A_4util11SharedValueNtNtB46_5files4FileEEEEEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB5Q_8adapters3map3MapINtNtNtB5S_3ops5range5RangejENCNvMs1_B2A_INtB2A_7DashMapB40_B5k_INtNtB5S_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amount0EECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc16 unwind label %bb.k   ; 2 uses

.noexc16:                                         ; preds = %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCslHJxOrvIAon_7ty_test.exit.i
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !915
  %i.u = invoke noundef i64 @_RNvCseeqNL4LYPyI_7dashmap20default_shard_amount()
          to label %.noexc.i unwind label %bb.f, !noalias !922 ; 4 uses

.noexc.i:                                         ; preds = %.noexc16
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %.invoke.i, !prof !86

bb.d:                                             ; preds = %.noexc.i
  %i.w = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.u)
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBL_5files11VirtualFileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i, label %.invoke.i, !prof !86

.invoke.i:                                        ; preds = %bb.d, %.noexc.i
  %i.y = phi ptr [ @46, %.noexc.i ], [ @49, %bb.d ]
  %i.z = phi i64 [ 34, %.noexc.i ], [ 48, %bb.d ]
  %i.aa = phi ptr [ @48, %.noexc.i ], [ @50, %bb.d ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa) #33
          to label %.cont.i unwind label %bb.f, !noalias !922

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBL_5files11VirtualFileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !923
  store i64 0, ptr %i.d, align 8, !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !923
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.ab, align 8, !noalias !923
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.u, ptr %i.ac, align 8, !noalias !923
  store ptr %i.d, ptr %i.c, align 8, !noalias !923
  %i.ad = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api6rwlock6RwLockNtNtCseeqNL4LYPyI_7dashmap4lock9RawRwLockINtNtNtCsauNtLCAh4zB_9hashbrown3raw5inner8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufINtNtB2A_4util11SharedValueNtNtB46_5files11VirtualFileEEEEEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB65_8adapters3map3MapINtNtNtB67_3ops5range5RangejENCNvMs1_B2A_INtB2A_7DashMapB40_B5r_INtNtB67_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amount0EECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f, !noalias !922 ; 2 uses

bb.e:                                             ; preds = %bb.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.ae, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCseeqNL4LYPyI_7dashmap7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB1e_5files4FileINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECslHJxOrvIAon_7ty_test(ptr nonnull %i.s, i64 %i.t) #30
          to label %bb.m unwind label %bb.j, !noalias !922

bb.f:                                             ; preds = %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBL_5files11VirtualFileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i, %.invoke.i, %.noexc16
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtBL_5files11VirtualFileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i
  %i.af = extractvalue { ptr, i64 } %i.ad, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !923
  %i.ah = invoke noundef i64 @_RNvCseeqNL4LYPyI_7dashmap20default_shard_amount()
          to label %.noexc52.i unwind label %bb.i, !noalias !922 ; 4 uses

.noexc52.i:                                       ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %.invoke64.i, !prof !86

bb.h:                                             ; preds = %.noexc52.i
  %i.aj = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i, label %.invoke64.i, !prof !86

.invoke64.i:                                      ; preds = %bb.h, %.noexc52.i
  %i.al = phi ptr [ @46, %.noexc52.i ], [ @49, %bb.h ]
  %i.am = phi i64 [ 34, %.noexc52.i ], [ 48, %bb.h ]
  %i.an = phi ptr [ @48, %.noexc52.i ], [ @50, %bb.h ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #33
          to label %.cont65.i unwind label %bb.i, !noalias !922

.cont65.i:                                        ; preds = %.invoke64.i
  unreachable

_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !928
  store i64 0, ptr %i.b, align 8, !noalias !928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !928
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.ao, align 8, !noalias !928
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ah, ptr %i.ap, align 8, !noalias !928
  store ptr %i.b, ptr %i.a, align 8, !noalias !928
  %i.aq = invoke { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCs8U8Khs6SiIu_15crossbeam_utils12cache_padded11CachePaddedINtNtCsejIXhd4qXh6_8lock_api6rwlock6RwLockNtNtCseeqNL4LYPyI_7dashmap4lock9RawRwLockINtNtNtCsauNtLCAh4zB_9hashbrown3raw5inner8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufINtNtB2A_4util11SharedValueNtNtB46_5files4FileEEEEEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB5U_8adapters3map3MapINtNtNtB5W_3ops5range5RangejENCNvMs1_B2A_INtB2A_7DashMapB40_B5o_INtNtB5W_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amount0EECslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.i, !noalias !922 ; 2 uses

bb.i:                                             ; preds = %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i, %.invoke64.i, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCseeqNL4LYPyI_7dashmap7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path20SystemVirtualPathBufNtNtB1e_5files11VirtualFileINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECslHJxOrvIAon_7ty_test(ptr nonnull %i.af, i64 %i.ag) #30
          to label %bb.e unwind label %bb.j, !noalias !922

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !922
  unreachable

bb.k:                                             ; preds = %.invoke, %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCslHJxOrvIAon_7ty_test.exit.i, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_RNvMs1_CseeqNL4LYPyI_7dashmapINtB5_7DashMapNtNtNtCs56aZGHL6Dc6_7ruff_db8vendored4path15VendoredPathBufNtNtBL_5files4FileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE41with_capacity_and_hasher_and_shard_amountCslHJxOrvIAon_7ty_test.exit.i.i
  %i.au = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.u, i1 true)
  %i.av = sub nuw nsw i64 64, %i.au
  %i.aw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.ax = sub nuw nsw i64 64, %i.aw
  %i.ay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ah, i1 true)
  %i.az = sub nuw nsw i64 64, %i.ay
  %i.ba = extractvalue { ptr, i64 } %i.aq, 0
  %i.bb = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !928
  store i64 1, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.s, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.t, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.ax, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.af, ptr %.sroa.511.sroa.6.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.ag, ptr %.sroa.511.sroa.7.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %i.av, ptr %.sroa.511.sroa.8.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.9.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.ba, ptr %.sroa.511.sroa.9.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.bb, ptr %.sroa.511.sroa.10.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.11.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %i.az, ptr %.sroa.511.sroa.11.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.12.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.511.sroa.12.0..sroa.511.0..sroa_idx.sroa_idx, i8 0, i64 9, i1 false)
  %.sroa.511.sroa.15.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 0, ptr %.sroa.511.sroa.15.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.16.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.511.sroa.16.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.17.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.17.0..sroa.511.0..sroa_idx.sroa_idx.a, i8 0, i64 16, i1 false)
  %.sroa.511.sroa.18.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.18.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.19.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.19.0..sroa.511.0..sroa_idx.sroa_idx.a, i8 0, i64 16, i1 false)
  %.sroa.511.sroa.20.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.511.sroa.20.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.21.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.21.0..sroa.511.0..sroa_idx.sroa_idx.a, i8 0, i64 16, i1 false)
  %.sroa.511.sroa.22.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.22.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.23.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.sroa.23.0..sroa.511.0..sroa_idx.sroa_idx.a, i8 0, i64 16, i1 false)
  %.sroa.511.sroa.24.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.24.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.25.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store i64 0, ptr %.sroa.511.sroa.25.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.26.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i32 0, ptr %.sroa.511.sroa.26.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.28.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  store i32 0, ptr %.sroa.511.sroa.28.0..sroa.511.0..sroa_idx.sroa_idx.a, align 4
  %.sroa.511.sroa.29.0..sroa.511.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store i8 0, ptr %.sroa.511.sroa.29.0..sroa.511.0..sroa_idx.sroa_idx.a, align 8
  %.sroa.511.sroa.30.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 241
  store i8 5, ptr %.sroa.511.sroa.30.0..sroa.511.0..sroa_idx.sroa_idx, align 1
  %.sroa.511.sroa.32.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i8 0, ptr %.sroa.511.sroa.32.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.g

bb.m:                                             ; preds = %bb.k, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.k ], [ %.pn.i, %bb.e ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 256, i64 noundef 8) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtBN_3num5error15TryFromIntErrorE4fromCslHJxOrvIAon_7ty_test(i8 noundef range(i8 0, 6) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error9constructNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorECslHJxOrvIAon_7ty_test(i8 noundef range(i8 0, 6) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsiXichZnxgbf_6anyhow7wrapperINtB4_12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !31, !noundef !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !31
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsiXichZnxgbf_6anyhow7wrapperINtB4_12MessageErrorReENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCslHJxOrvIAon_7ty_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsm_Cs7HL9jt3VRMY_16ty_site_packagesNtB5_26SitePackagesDiscoveryErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !42, !noundef !31
  switch i64 %i.a, label %default.unreachable2 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !31
  %.not = icmp eq ptr %i.d, null
  %. = select i1 %.not, ptr null, ptr %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %., %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @98, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !31, !noundef !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !31
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @149, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @96, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @150, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @149, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @98, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @151, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @149, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCslHJxOrvIAon_7ty_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @96, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCslHJxOrvIAon_7ty_test(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsiXichZnxgbf_6anyhow5error12ContextErrorReNtCs7HL9jt3VRMY_16ty_site_packages26SitePackagesDiscoveryErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCslHJxOrvIAon_7ty_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @152, i64 16, i1 false)
  ret void
end_hunk_0
