Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15008
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvNtCs40k4W9msRzi_5alloc3fmt6format:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39479)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39480
  %i.e = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, 9) 1) #44, !noalias !39480 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.c) #48, !noalias !39481
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !noalias !39482
  br label %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.5.0.i.i.i = phi ptr [ %i.e, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %i.c, ptr %0, align 8, !alias.scope !39483
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !39483
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !39483
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !39484
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RNvYNvYeNtNtCs40k4W9msRzi_5alloc6borrow7ToOwned8to_ownedINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTReEE9call_onceCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef range(i64 1, 8129) %1) unnamed_addr #3 !guid !39485 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !116

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #7 !guid !39486 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #20 !guid !39487 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @693, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs4XDKJNDGLq7_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 !guid !39488 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsc93vp1BCDlY_26lance_namespace_datafusion5error19to_datafusion_error(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !39491 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39492
  %i.a = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !39492 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !116

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc unwind label %bb.c, !noalias !39492

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %1) #49
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs63DIHKhvmTb_10lance_core5error5ErrorE3newCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @344, ptr %i.f, align 8
  store i64 12, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs40Ppcsylqp4_17crossbeam_channel3errINtB2_9SendErrorINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1H_16CachedReaderDataEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !39493 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @695, i64 noundef 13, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsc93vp1BCDlY_26lance_namespace_datafusion15namespace_levelNtB2_14NamespaceLevelINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) %2) unnamed_addr #0 !guid !39498 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  %i.g = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !39499
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_E9drop_slowCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespaceEL_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtB2_3Any7type_idCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 !guid !39500 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @11, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionNtB2_3Any7type_idCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 !guid !39501 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8ManifestNtB2_3Any7type_idCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #21 !guid !39502 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCscI6d9CVNmLh_4core3anyNtNtNtCshkPeWWG1flk_5lance10datafusion9dataframe18LanceTableProviderNtB2_3Any7type_idCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #21 !guid !39503 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @696, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXNtCsjjbR6Jfsbqw_8lance_io5localNtB2_17LocalObjectReaderNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #7 !guid !39504 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterB11_EE9from_iterCsc93vp1BCDlY_26lance_namespace_datafusion(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !39569 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39571)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !39572, !noundef !113 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39573)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !39574, !noundef !113 ; 2 uses
  %.not12.i.i.i = icmp eq i16 %i.j, 0
  %.promoted.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !39574 ; 2 uses
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !39574
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.p, ptr %i.k, align 8, !alias.scope !39574
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !39574
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.l = phi ptr [ %.promoted14.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.c ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !39575
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.q = phi ptr [ %i.o, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = and i16 %i.r, %.lcssa.i.i.i
  store i16 %i.u, ptr %i.i, align 8, !alias.scope !39574
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.v ; 3 uses
  %i.x = add i64 %i.d, -1                         ; 4 uses
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !39572
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -24
  %.sroa.0.0.copyload1.i = load i64, ptr %i.y, align 8, !noalias !39576 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  store i64 0, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39582)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.promoted.i.i.i.i.i.i = load i16, ptr %i.ad, align 8, !alias.scope !39583
  %.promoted6.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !39584
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.promoted10.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !39584
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi i64 [ %i.x, %.preheader.i.i.i.i.i.i ], [ %i.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa57.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ag = phi i16 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39585)
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %bb.e ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !39583
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -384 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.lcssa11.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %bb.e ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i, %bb.e ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ag, %bb.e ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i, i64 %i.aq ; 2 uses
  %i.as = add i64 %i.af, -1                       ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !39586, !noalias !39584 ; 2 uses
  %i.au = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.ar, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !39584, !nonnull !113, !noundef !113
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !39587
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.f, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.old3.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, label %bb.e

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i, %.thread, %bb.d
  %i.aw = load i64, ptr %1, align 8, !range !183, !alias.scope !39588, !noundef !113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !39588, !noundef !113 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !39588, !nonnull !113, !noundef !113
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #44, !noalias !39588
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.h, %bb.g, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  ret void

bb.i:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.bd, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !39589
  br label %bb.x

bb.k:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !39570 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx, align 8, !noalias !39570
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 3 uses
  %i.be = mul i64 %.sroa.0.0.i, 24                ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.x, 384307168202282324
  br i1 %or.cond.i.i, label %bb.m, label %bb.l, !prof !114

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.n, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.l
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39590
  %i.bg = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.be, i64 noundef range(i64 1, 9) 8) #44, !noalias !39590 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i, %bb.k
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.k ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.be) #48
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i, %bb.l
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.bg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.l ], [ %.sroa.0.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i ] ; 2 uses
  %i.bi = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.bi)
  store i64 %.sroa.0.0.copyload1.i, ptr %.sroa.10.0.i, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39594)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.bj, align 8, !alias.scope !39595 ; 2 uses
  %i.bk = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.bk, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted22.i.i = load i16, ptr %i.bm, align 8, !alias.scope !39596
  %.promoted23.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !39595
  %.promoted26.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !39595
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %.lr.ph.i.i
  %i.bo = phi ptr [ %.sroa.10.0.i, %.lr.ph.i.i ], [ %i.df, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  %i.bp = phi i64 [ 1, %.lr.ph.i.i ], [ %i.dh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ] ; 5 uses
  %.lcssa1528.i.i = phi ptr [ %.promoted26.i.i, %.lr.ph.i.i ], [ %.promoted10.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ] ; 2 uses
  %.lcssa1625.i.i = phi ptr [ %.promoted23.i.i, %.lr.ph.i.i ], [ %.promoted6.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ] ; 2 uses
  %i.bq = phi i16 [ %.promoted22.i.i, %.lr.ph.i.i ], [ %i.bz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ] ; 2 uses
  %.val1920.i.i = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.cc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39599)
  %.not12.i.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.bv, ptr %i.bn, align 8, !alias.scope !39596
  store ptr %i.bu, ptr %i.bl, align 8, !alias.scope !39596
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.br = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.lcssa1528.i.i, %bb.o ] ; 2 uses
  %i.bs = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.lcssa1625.i.i, %bb.o ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.br, align 16, !noalias !39600
  %i.bt = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -384 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bt to i16 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.o
  %.promoted10.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %._crit_edge.i.i.i.i.i ], [ %.lcssa1528.i.i, %bb.o ] ; 2 uses
  %.promoted6.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %._crit_edge.i.i.i.i.i ], [ %.lcssa1625.i.i, %bb.o ] ; 3 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bq, %bb.o ] ; 3 uses
  %i.bw = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.lcssa.i.i.i.i.i        ; 3 uses
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [24 x i8], ptr %.promoted6.i.i.i.i.i.i.i.i, i64 %i.ca ; 3 uses
  %i.cc = add i64 %.val1920.i.i, -1               ; 6 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -24
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.cd, align 8, !noalias !39601 ; 4 uses
  %.not.i.i.i5 = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i5, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i, label %bb.p

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.u, %bb.t
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #49, !noalias !39602
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #49
  br label %bb.w

bb.p:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !39603 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i, align 8, !noalias !39603
  %i.ce = icmp samesign ult i64 %i.bp, 384307168202282326
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = load i64, ptr %i.b, align 8, !range !131, !alias.scope !39602, !noundef !113
  %i.cg = icmp eq i64 %i.bp, %i.cf
  br i1 %i.cg, label %bb.v, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39608)
  %i.ch = icmp eq i64 %i.cc, 0
  br i1 %i.ch, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %.promoted10.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i ] ; 2 uses
  %i.ci = phi i64 [ %i.cv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %i.cc, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i ]
  %.lcssa58.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %.promoted6.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i ] ; 2 uses
  %i.cj = phi i16 [ %i.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i ], [ %i.bz, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ck = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cl = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ck, align 16, !noalias !39609
  %i.cm = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -384 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cm to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cj, %.preheader.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cp = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = and i16 %i.cp, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ct = sub nsw i64 0, %i.cr
  %i.cu = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i, i64 %i.ct ; 2 uses
  %i.cv = add i64 %i.ci, -1                       ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !39610, !noalias !39611 ; 2 uses
  %i.cx = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i
  %i.cy = getelementptr i8, ptr %i.cu, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !39611, !nonnull !113, !noundef !113
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !39612
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.old3.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i._crit_edge.i.i, %bb.n
  %i.cz = load i64, ptr %i.a, align 8, !range !183, !alias.scope !39613, !noundef !113 ; 2 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i6, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !39613, !noundef !113 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !39613, !nonnull !113, !noundef !113
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.cz) #44, !noalias !39614
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i_crit_edge, %bb.p
  %i.df = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i_crit_edge ], [ %i.bo, %bb.p ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.bp ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.dg, align 8, !noalias !39615
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !39615
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !39615
  %i.dh = add nuw nsw i64 %i.bp, 1                ; 2 uses
  store i64 %i.dh, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !39602
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %bb.o

end_hunk_0
