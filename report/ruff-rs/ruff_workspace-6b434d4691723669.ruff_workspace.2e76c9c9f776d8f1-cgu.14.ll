Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.14?download=true
inline.NumInlined: 1131
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace:bb.a
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtCscdodAO9FK5_5alloc3vec3VecReEE4lockCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecReEENCNvMs9_B10_BX_3new0ECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4lockCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtB6_11collections4hash3set7HashSetNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEENCNvMs9_B10_BX_3new0ECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1v_uNtCsiXichZnxgbf_6anyhow5ErrorEEE10into_innerB2a_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4
  %i.e = icmp ne i8 %i.d, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1l_uNtCsiXichZnxgbf_6anyhow5ErrorEENCNvMs5_NtB2_5mutexINtB45_5MutexBN_E10into_inner0EB20_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1v_uNtCsiXichZnxgbf_6anyhow5ErrorEEE4lockB2a_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEIB1V_uNtCsiXichZnxgbf_6anyhow5ErrorEEENCNvMs9_B10_BX_3new0EB2A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverE10into_innerB13_(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load atomic i8, ptr %i.c monotonic, align 8
  %i.e = icmp ne i8 %i.d, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverNCNvMs9_NtB2_6rwlockINtB1L_6RwLockBN_E10into_inner0EBR_(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, i1 noundef zeroext %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.12.i.i.i = alloca [24 x i8], align 8     ; 5 uses
  %.sroa.13.i.i.i = alloca [24 x i8], align 8     ; 5 uses
  %.sroa.16.i.i.i = alloca [7 x i8], align 1      ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 28 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.m, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  %i.l = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 136), !noalias !3997 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 3 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = inttoptr i64 %i.m to ptr
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !3997
  %i.q = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.m) #31, !noalias !3997
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i

_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 16 uses
  %i.r = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.r, label %bb.f, label %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i, !prof !11

bb.f:                                             ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.m, i64 noundef %i.n) #30, !noalias !3997
  unreachable

_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i: ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !3997
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.s, align 8, !noalias !3997
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !3996, !noalias !3995
  store i64 8, ptr %i.c, align 8, !alias.scope !3996, !noalias !3995
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 136, ptr %i.u, align 8, !alias.scope !3996, !noalias !3995
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.v, align 8, !alias.scope !3996, !noalias !3995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  %i.w = load i64, ptr %i.k, align 8, !range !14, !alias.scope !4002, !noalias !4000, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.w, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !4004, !noalias !4005, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4006
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %.noexc.i unwind label %.body.thread8.i

.body.thread8.i:                                  ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.noexc.i:                                         ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4004, !noalias !4005
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ae = load i8, ptr %i.ad, align 8, !range !4007, !alias.scope !4004, !noalias !4005, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !alias.scope !4004, !noalias !4005
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !4004, !noalias !4005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4006
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version12LocalSegmentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.h, !noalias !4005

bb.h:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecyEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body.thread.i unwind label %bb.i, !noalias !4005

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !4005
  unreachable

_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %1 = load i64, ptr %i.am, align 8, !range !9, !alias.scope !4004, !noalias !4005, !noundef !8
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.an = load <2 x i64>, ptr %2, align 8, !alias.scope !4004, !noalias !4005
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %3 = load i64, ptr %i.ao, align 8, !alias.scope !4004, !noalias !4005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4006
  %4 = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %5 = insertelement <4 x i64> %4, i64 %1, i64 1
  %6 = shufflevector <2 x i64> %i.an, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x i64> %5, <4 x i64> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCs3ZkgueCtkyH_14ruff_workspace.exit

bb.j:                                             ; preds = %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ap = load <2 x i64>, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !4008
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %8 = load <4 x i64>, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !alias.scope !4008
  %.sroa.10.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.11.0.copyload15.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx12.i.i.i, align 8, !alias.scope !4008
  %.sroa.12.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.12.0..sroa_idx16.i.i.i, i64 24, i1 false), !alias.scope !4009
  %.sroa.13.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.13.0..sroa_idx17.i.i.i, i64 24, i1 false), !alias.scope !4009
  %.sroa.14.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.14.0.copyload19.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx18.i.i.i, align 8, !alias.scope !4008
  %.sroa.15.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %.sroa.15.0.copyload21.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx20.i.i.i, align 8, !alias.scope !4008
  %.sroa.16.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.16.0..sroa_idx22.i.i.i, i64 7, i1 false), !alias.scope !4009
  %.sroa.1623.0..sroa_idx24.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.1623.0.copyload25.i.i.i = load i64, ptr %.sroa.1623.0..sroa_idx24.i.i.i, align 8, !alias.scope !4008
  br label %_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCs3ZkgueCtkyH_14ruff_workspace.exit

common.resume:                                    ; preds = %bb.x, %bb.n, %bb.o, %bb.p, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body7.i, %.body.thread.i ], [ %i.bo, %bb.x ], [ %i.av, %bb.n ], [ %i.av, %bb.o ], [ %i.av, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.h, %.body.thread8.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.aa, %.body.thread8.i ], [ %i.ak, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBG_5alloc6GlobalEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(32) %i.c) #28
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %.body.thread.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, %bb.j
  %.sroa.1623.0.i.i.i = phi i64 [ %.sroa.1623.0.copyload25.i.i.i, %bb.j ], [ %i.y, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.15.0.i.i.i = phi i8 [ %.sroa.15.0.copyload21.i.i.i, %bb.j ], [ %i.ae, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.14.0.i.i.i = phi i64 [ %.sroa.14.0.copyload19.i.i.i, %bb.j ], [ %i.ac, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.11.0.copyload15.i.i.i, %bb.j ], [ %3, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.ar = phi <2 x i64> [ %i.ap, %bb.j ], [ %i.ag, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %9 = phi <4 x i64> [ %8, %bb.j ], [ %7, %_RNvXsT_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_11VersionFullNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 16
  store i64 %i.w, ptr %i.as, align 8, !noalias !4010
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 24
  store <2 x i64> %i.ar, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  store <4 x i64> %9, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i, i64 24, i1 false), !noalias !4010
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i.i, i64 24, i1 false), !noalias !4010
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 128
  store i64 %.sroa.14.0.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 136
  store i8 %.sroa.15.0.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i.i.i, i64 7, i1 false), !noalias !4010
  %.sroa.1623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 144
  store i64 %.sroa.1623.0.i.i.i, ptr %.sroa.1623.0..sroa_idx.i.i.i, align 8, !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3995
  %i.at = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !4011
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit

bb.l:                                             ; preds = %_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCs3ZkgueCtkyH_14ruff_workspace.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.x

bb.m:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9

bb.n:                                             ; preds = %bb.t, %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.aw, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 152, i64 noundef 8) #31
  br label %common.resume

bb.q:                                             ; preds = %bb.b
  %i.az = invoke { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 136)
          to label %.noexc6 unwind label %bb.n    ; 2 uses

.noexc6:                                          ; preds = %bb.q
  %i.ba = extractvalue { i64, i64 } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { i64, i64 } %i.az, 1      ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc6
  %i.bd = inttoptr i64 %i.ba to ptr
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i

bb.s:                                             ; preds = %.noexc6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4012
  %i.be = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.ba) #31, !noalias !4012
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i

_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bd, %bb.r ], [ %i.be, %bb.s ] ; 5 uses
  %i.bf = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.bf, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.ba, i64 noundef %i.bb) #30
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0Cs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !4012
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.bg, align 8, !noalias !4012
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bi, ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i64 136, i1 false)
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %0, align 8
  %i.bj = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 152, i64 noundef 8) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9: ; preds = %bb.w, %bb.v, %bb.u, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.bm = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  ret ptr %i.bn

bb.x:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCs3ZkgueCtkyH_14ruff_workspace.exit, %bb.l
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace.exit9
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverE3newB1d_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %i.c = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver8ResolverENCNvMsd_BQ_BN_3new0EB1n_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.c, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject22check_required_version(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.022, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.023 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  %.sroa.03.022 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.03.022, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.022, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !8
  %i.k = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB18_NtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEE3geteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.023, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  %i.l = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB18_NtNtNtNtCsd1Od0hvlDsw_4toml2de6parser7devalue7DeValueEE3geteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 16) ; 4 uses
  %.not16 = icmp eq ptr %i.l, null
  br i1 %.not16, label %.loopexit, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr %i.k, align 8, !range !4025, !noundef !8
  %i.n = icmp eq i8 %i.m, 6
  br i1 %i.n, label %bb.b, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.o = load i8, ptr %i.l, align 8, !range !4025, !noundef !8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.sroa.013.0.in = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.013.0 = load ptr, ptr %.sroa.013.0.in, align 8, !nonnull !8, !noundef !8
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.0 = load i64, ptr %.sroa.6.0.in, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsx_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtB5_15RequiredVersionNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.013.0, i64 noundef %.sroa.6.0)
  %i.q = load i64, ptr %i.b, align 8, !range !12, !noundef !8
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %.loopexit.sink.split.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.s = invoke noundef ptr @_RNvNtCs3ZkgueCtkyH_14ruff_workspace7options25validate_required_version(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15RequiredVersionECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.f
  %.not18 = icmp eq ptr %i.s, null
  br i1 %.not18, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs17version_specifier16VersionSpecifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !15, !alias.scope !4026, !noundef !8 ; 2 uses
end_hunk_0
