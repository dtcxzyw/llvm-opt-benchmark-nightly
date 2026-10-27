Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.14?download=true
inline.NumInlined: 819
inline.NumDeleted: 185
begin_hunk_0_@_RNvMs0_NtCs7SkU8gPisFf_4redb5tableINtB5_5TableNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashNtBK_12FileShardRefE3newBQ_:bb.a
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %4, ptr %i.d, align 8
  store ptr %5, ptr %i.c, align 8
  store ptr %6, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw add ptr %6, i64 -1 release, align 8, !noalias !2379
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.l, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #29
          to label %bb.k unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %2, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 576 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !nonnull !6, !noundef !6
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.p, align 16, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.k, ptr %i.u, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.n, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %7, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %6, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %5, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.b, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %i.x = load ptr, ptr %i.c, align 8, !alias.scope !2382, !nonnull !6, !noundef !6
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !2382
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsiAynQAjgDuT_10xet_client.exit

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !2385, !nonnull !6, !noundef !6
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !2385
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsiAynQAjgDuT_10xet_client.exit

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsiAynQAjgDuT_10xet_client.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEE9drop_slowB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEEECsiAynQAjgDuT_10xet_client.exit, %bb.n
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB5_16ConnectionPermit41get_partial_completion_reporting_function(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.g, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2396
  %i.h = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 24, i64 noundef 8) #32, !noalias !2396 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB18_16ConnectionPermit41get_partial_completion_reporting_function0EE3newB1e_.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !2397
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB1m_16ConnectionPermit41get_partial_completion_reporting_function0EEB1s_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB1m_16ConnectionPermit41get_partial_completion_reporting_function0EEB1s_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB1m_16ConnectionPermit41get_partial_completion_reporting_function0EEB1s_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.j

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNCNvMs0_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controllerNtB18_16ConnectionPermit41get_partial_completion_reporting_function0EE3newB1e_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @68, 1
  ret { ptr, ptr } %i.o

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_8BtreeMutReNtNtB7_15table_tree_base23InternalTableDefinitionE6insertCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 16 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.342.i = alloca [88 x i8], align 8        ; 5 uses
  %.sroa.7.i = alloca [12 x i8], align 8          ; 7 uses
  %.sroa.032.i = alloca [48 x i8], align 8        ; 6 uses
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.625.i = alloca [24 x i8], align 8        ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [88 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.616.i = alloca [24 x i8], align 8        ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 9 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.67.i = alloca [24 x i8], align 8         ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [256 x i8], align 16              ; 8 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [256 x i8], align 16              ; 27 uses
  %i.s = alloca [12 x i8], align 4                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [136 x i8], align 8          ; 12 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.u = alloca [160 x i8], align 8               ; 10 uses
  %i.v = alloca [96 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 16, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEE4lockCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  %i.ab = load i64, ptr %i.x, align 8, !range !7, !alias.scope !2441, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsiAynQAjgDuT_10xet_client.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2442
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2441, !nonnull !6, !align !8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !9, !alias.scope !2441, !noundef !6
  store ptr %i.ae, ptr %i.t, align 8, !noalias !2442
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 %i.ag, ptr %i.ah, align 8, !noalias !2442
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #29
          to label %bb.d unwind label %bb.c, !noalias !2441

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #30
          to label %common.resume unwind label %bb.e, !noalias !2441

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2441
  unreachable

common.resume:                                    ; preds = %.body26, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn11, %.body26 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2441, !nonnull !6, !align !8, !noundef !6 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !9, !alias.scope !2441, !noundef !6 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !nonnull !6, !noundef !6
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsiAynQAjgDuT_10xet_client.exit
  %i.at = load ptr, ptr %i.ap, align 16, !nonnull !6, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.bp, label %bb.h

bb.g:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEINtBM_11PoisonErrorBH_EE6unwrapCsiAynQAjgDuT_10xet_client.exit
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.az = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6
  store ptr %1, ptr %i.w, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  store ptr %i.at, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ay, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 11 uses
  store ptr %i.az, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.val18 = load ptr, ptr %2, align 8             ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val19 = load i64, ptr %i.be, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.342.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.i)
  %i.bf = load i128, ptr %1, align 16, !range !10, !noalias !2444, !noundef !6
  %i.bg = trunc nuw i128 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %bb.ba

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2444
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.bh, i64 12, i1 false), !noalias !2445
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i128, ptr %i.bi, align 16, !noalias !2445, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load i64, ptr %i.bk, align 16, !noalias !2445, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2444
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  invoke void @_RNvMs_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_managerNtB4_19TransactionalMemory8get_page(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 16 %i.bm, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.s)
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.i
  %i.bn = load ptr, ptr %i.o, align 8, !noalias !2444, !noundef !6 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, i64 24, i1 false), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2444
  br label %bb.ay

bb.k:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !2447
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #31
          to label %.body unwind label %bb.av, !noalias !2445

bb.m:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.459.0..sroa_idx.i, i64 24, i1 false), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2444
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67.i, i64 24, i1 false), !noalias !2444
  store ptr %i.bn, ptr %i.p, align 8, !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2444
  invoke void @_RNvXs2_NtNtCs7SkU8gPisFf_4redb10tree_store15table_tree_baseNtB5_23InternalTableDefinitionNtNtB9_5types5Value8as_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(192) %3)
          to label %bb.n unwind label %bb.k, !noalias !2445

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val88.i = load ptr, ptr %i.bs, align 8, !noalias !2444, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val89.i = load i64, ptr %i.bt, align 8, !noalias !2444, !noundef !6
  invoke fastcc void @_RNvMNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutatorINtB2_12MutateHelperReNtNtB4_15table_tree_base23InternalTableDefinitionE13insert_helperCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 16 captures(none) dereferenceable(256) %i.q, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.p, i128 noundef %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val18, i64 noundef %.val19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val88.i, i64 noundef %.val89.i)
          to label %bb.o unwind label %bb.az, !noalias !2448

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2444
  %i.bu = load i64, ptr %i.q, align 16, !range !11, !noalias !2444, !noundef !6 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, -2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !2444
  br i1 %i.bv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !2446
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.q, !noalias !2445

bb.q:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.r, !noalias !2445

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2445
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.noexc20 unwind label %bb.bq

.noexc20:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2444
  br label %bb.ay

bb.s:                                             ; preds = %bb.o
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.562.0..sroa_idx.i, i64 224, i1 false), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2444
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !2444
  store i64 %i.bu, ptr %i.r, align 16, !noalias !2444
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.u unwind label %bb.t, !noalias !2445

bb.t:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.v, !noalias !2445

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit94.i unwind label %bb.w, !noalias !2445

bb.v:                                             ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2445
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit94.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.cc = load i64, ptr %i.r, align 16, !range !13, !noalias !2444, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.cc, -1
  %i.cd = zext i1 %.not.i to i64
  %.sroa.012.0.i = add i64 %i.bl, %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 16, !range !12, !noalias !2444, !noundef !6
  %.not72.i = icmp eq i64 %i.cf, -1
  br i1 %.not72.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit94.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(12) %i.cg, i64 12, i1 false), !noalias !2444
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.ci = load i128, ptr %i.ch, align 16, !noalias !2444, !noundef !6
  br label %bb.aq

bb.y:                                             ; preds = %bb.aw, %bb.ab
  %.pn73.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.aw ], [ %lpad.thr_comm.split-lp.i, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #30
          to label %.body.thread.i unwind label %bb.av, !noalias !2445

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 16 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2444
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %i.cj, i64 12, i1 false), !noalias !2444
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.cl = load i128, ptr %i.ck, align 16, !noalias !2444, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2444
  %i.cm = load ptr, ptr %i.bd, align 8, !alias.scope !2443, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, ptr noundef nonnull align 16 %i.bm, ptr noundef nonnull align 8 %i.cn, i64 noundef 2, i64 noundef 0, i64 undef)
          to label %bb.aa unwind label %bb.ab, !noalias !2445

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2444
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 16 dereferenceable(12) %i.co, i64 12, i1 false), !noalias !2444
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.cq = load i128, ptr %i.cp, align 16, !noalias !2444, !noundef !6
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder10push_child(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, i128 noundef %i.cq)
          to label %bb.ac unwind label %bb.aw, !noalias !2445

bb.ab:                                            ; preds = %bb.ak, %bb.ae, %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2444
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !2444, !nonnull !6, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !2444, !noundef !6
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder8push_key(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.cu)
          to label %bb.ad unwind label %bb.aw, !noalias !2445

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder10push_child(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.l, i128 noundef %i.cl)
          to label %bb.ae unwind label %bb.aw, !noalias !2445

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !2444
  invoke void @_RNvMsd_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_13BranchBuilder5build(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
          to label %bb.af unwind label %bb.ab, !noalias !2445

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2444
  %i.cv = load ptr, ptr %i.h, align 8, !noalias !2444, !noundef !6 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !noalias !2444
  br i1 %i.cw, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, i64 24, i1 false), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2444
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ai unwind label %bb.ah, !noalias !2445

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.thread.i unwind label %bb.aj, !noalias !2445

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit99.i unwind label %bb.ap, !noalias !2445

bb.aj:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2445
  unreachable

bb.ak:                                            ; preds = %bb.af
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.565.0..sroa_idx.i, i64 16, i1 false), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2444
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.i, i64 24, i1 false), !noalias !2444
  store ptr %i.cv, ptr %i.i, align 8, !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.522.0..sroa_idx.i, i64 12, i1 false), !noalias !2444
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base7PageMutECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.al unwind label %bb.ab, !noalias !2445

end_hunk_0
