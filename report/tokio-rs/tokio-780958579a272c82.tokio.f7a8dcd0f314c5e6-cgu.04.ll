Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.04?download=true
inline.NumInlined: 435
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCslghKHtsL3a4_5tokio2io5readyNtB2_5Ready9satisfies:bb.a
  %spec.select.i = select i1 %.not.i, i64 0, i64 5 ; 2 uses
  %i.b = and i64 %1, 2
  %.not8.i = icmp eq i64 %i.b, 0
  %i.c = or disjoint i64 %spec.select.i, 10
  %.sroa.0.1.i = select i1 %.not8.i, i64 %spec.select.i, i64 %i.c ; 2 uses
  %i.d = and i64 %1, 16
  %.not9.i = icmp eq i64 %i.d, 0
  %i.e = or i64 %.sroa.0.1.i, 20
  %.sroa.0.2.i = select i1 %.not9.i, i64 %.sroa.0.1.i, i64 %i.e
  %i.f = and i64 %1, 32
  %.sroa.0.3.i = or disjoint i64 %.sroa.0.2.i, %i.f
  %i.g = and i64 %.sroa.0.3.i, %0
  %i.h = icmp ne i64 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime10task_hooksNtB2_9TaskHooks5spawn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !16, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !555, !invariant.load !5
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder11build_local(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.d = load i8, ptr %i.c, align 4, !range !556, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current(), !noalias !560 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !noalias !560
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !562, !noalias !560, !noundef !5
  %i.i = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !563
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26, !noalias !560
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder39build_current_thread_runtime_components(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %i.h), !noalias !557
  %i.k = load i64, ptr %i.a, align 8, !range !64, !noalias !560, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !560
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx.i, i64 40, i1 false), !noalias !572
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <2 x ptr>, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !560
  store <2 x ptr> %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !557, !noalias !572
  br label %_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit

_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder34build_current_thread_local_runtime.exit: ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !557, !noalias !572
  store i64 %i.k, ptr %0, align 8, !alias.scope !557, !noalias !572
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder14event_interval(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder14worker_threads(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder18new_current_thread(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder20max_blocking_threads(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder21global_queue_interval(ptr noalias nofree noundef returned writeonly align 8 captures(ret: address, provenance) dereferenceable(240) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %1, ptr %i.b, align 4
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder39build_current_thread_runtime_components(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [896 x i8], align 128             ; 19 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [152 x i8], align 8               ; 10 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.08.i = alloca [224 x i8], align 128      ; 5 uses
  %.sroa.710.i = alloca [60 x i8], align 4        ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [128 x i8], align 128             ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [96 x i8], align 8                ; 20 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [208 x i8], align 8               ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [16 x i8], align 4                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 6 uses
  %i.x = alloca [272 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [256 x i8], align 8           ; 6 uses
  %i.y = alloca [208 x i8], align 8               ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load <4 x i8>, ptr %i.ab, align 4
  %i.ag = xor <4 x i8> %i.af, <i8 1, i8 0, i8 0, i8 0>
  %i.ah = shufflevector <4 x i8> %i.ag, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x i8> %i.ah, ptr %i.ae, align 8
  store i64 %i.ad, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.aa)
  %i.ai = load i64, ptr %i.x, align 8, !range !474, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.526.0..sroa_idx, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  %.sroa.8.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.8.64..sroa_idx, i64 208, i1 false)
  store i64 %i.ai, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = invoke { ptr, ptr } @_RNvNtNtCslghKHtsL3a4_5tokio7runtime8blocking20create_blocking_pool(ptr noundef nonnull align 8 %1, i64 noundef %i.ao)
          to label %bb.e unwind label %.thread    ; 2 uses

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39
  br i1 %cond, label %bb.by, label %bb.bx

.thread:                                          ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.e:                                             ; preds = %bb.c
  %i.ar = extractvalue { ptr, ptr } %i.ap, 0      ; 7 uses
  %i.as = extractvalue { ptr, ptr } %i.ap, 1
  store ptr %i.ar, ptr %i.w, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.as, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.au = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ar, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator14next_generator(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.u, ptr noundef nonnull align 4 %i.aw)
          to label %bb.h unwind label %bb.bv

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator14next_generator(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.t, ptr noundef nonnull align 4 %i.aw)
          to label %bb.i unwind label %bb.bv

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ar, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.l
  %i.bb = phi <2 x ptr> [ %i.be, %bb.l ], [ <ptr null, ptr undef>, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %.not30 = icmp eq ptr %i.bd, null
  br i1 %.not30, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.be = load <2 x ptr>, ptr %i.ax, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bf = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.p
  %i.bh = phi <2 x ptr> [ %i.bk, %bb.p ], [ <ptr null, ptr undef>, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !5 ; 2 uses
  %.not31 = icmp eq ptr %i.bj, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bk = load <2 x ptr>, ptr %i.bc, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bl = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.t
  %i.bn = phi <2 x ptr> [ %i.bq, %bb.t ], [ <ptr null, ptr undef>, %bb.o ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !5 ; 2 uses
  %.not32 = icmp eq ptr %i.bp, null
  br i1 %.not32, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bq = load <2 x ptr>, ptr %i.bi, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.br = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.x
  %i.bt = phi <2 x ptr> [ %i.ct, %bb.x ], [ <ptr null, ptr undef>, %bb.s ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bw = load i32, ptr %i.bv, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.by = load i8, ptr %i.bx, align 8, !range !556, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 233
  %i.ca = load i8, ptr %i.bz, align 1, !range !556, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 234
  %i.cc = load i8, ptr %i.cb, align 2, !range !556, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ce = load <2 x i32>, ptr %i.bu, align 8
  store <2 x i32> %i.ce, ptr %i.p, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store i32 %i.bw, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <2 x ptr> %i.bb, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store <2 x ptr> %i.bh, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store <2 x ptr> %i.bn, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store <2 x ptr> %i.bt, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  store i8 %i.by, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 93
  store i8 %i.ca, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 94 ; 2 uses
  store i8 %i.cc, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 95
  store i8 0, ptr %i.cq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !63, !noundef !5
  %.not33 = icmp eq i64 %i.cs, -1
  br i1 %.not33, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ct = load <2 x ptr>, ptr %i.bo, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %bb.bo unwind label %bb.br

bb.aa:                                            ; preds = %bb.w
  store i64 -1, ptr %i.o, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.bo, %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.710.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ar, ptr %i.m, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !576
  store i32 0, ptr %i.l, align 128, !noalias !576
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i8 0, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 4, !noalias !576
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.530.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !576
  %i.cu = invoke noundef nonnull ptr @_RNvNtNtCsaL1QbXo9JQH_3std6thread7current7current()
          to label %bb.ac unwind label %.thread107.i, !noalias !576 ; 2 uses

.thread107.i:                                     ; preds = %bb.ah, %bb.ag, %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.thread99.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cu, ptr %i.k, align 8, !noalias !576
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !562, !noalias !576, !noundef !5
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.l, i64 noundef %i.cx)
          to label %bb.af unwind label %bb.ad, !noalias !576

bb.ad:                                            ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.cz = load ptr, ptr %i.k, align 8, !alias.scope !594, !noalias !576, !nonnull !5, !noundef !5
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !595
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ae, label %.thread99.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %.thread99.i unwind label %bb.bj, !noalias !576

bb.af:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.dc = load ptr, ptr %i.k, align 8, !alias.scope !608, !noalias !576, !nonnull !5, !noundef !5
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !609
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i unwind label %.thread107.i, !noalias !576

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !576
  %i.df = load i32, ptr %i.p, align 8, !range !610, !alias.scope !573, !noalias !611, !noundef !5
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = load i32, ptr %i.cd, align 4, !alias.scope !573, !noalias !611
  %.sroa.0.0.i = select i1 %i.dg, i32 %i.dh, i32 31
  %i.di = load i8, ptr %i.cp, align 2, !range !556, !alias.scope !573, !noalias !611, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i
  %i.dk = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.aj unwind label %.thread107.i, !noalias !576 ; 2 uses

bb.ai:                                            ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i
  %.sroa.3.0.i = phi i32 [ %i.dn, %bb.aj ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i ]
  %.sroa.03.0.i = phi i64 [ %i.dm, %bb.aj ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit85.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !576
  %i.dl = load ptr, ptr %i.ci, align 8, !alias.scope !573, !noalias !611, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dm = extractvalue { i64, i32 } %i.dk, 0
  %i.dn = extractvalue { i64, i32 } %i.dk, 1
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  %i.do = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8, !noalias !576
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.ai
  %.sroa.5.0.i = phi ptr [ %i.dr, %bb.am ], [ undef, %bb.ai ]
  %i.dq = load ptr, ptr %i.ck, align 8, !alias.scope !573, !noalias !611, !noundef !5 ; 3 uses
  %.not78.i = icmp eq ptr %i.dq, null
  br i1 %.not78.i, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.dr = load ptr, ptr %i.cj, align 8, !alias.scope !573, !noalias !611, !nonnull !5, !align !16, !noundef !5
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.ds = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8, !noalias !576
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.al
  %.sroa.57.0.i = phi ptr [ %i.dx, %bb.aq ], [ undef, %bb.al ]
  store ptr %i.dl, ptr %i.h, align 8, !noalias !576
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5.0.i, ptr %i.du, align 8, !noalias !576
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.dq, ptr %i.dv, align 8, !noalias !576
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %.sroa.57.0.i, ptr %i.dw, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !576
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE3newB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, i64 noundef 1)
          to label %bb.at unwind label %bb.as, !noalias !576

bb.aq:                                            ; preds = %bb.ao
  %i.dx = load ptr, ptr %i.cl, align 8, !alias.scope !573, !noalias !611, !nonnull !5, !align !16, !noundef !5
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #25
          to label %bb.bl unwind label %bb.bj, !noalias !576

bb.at:                                            ; preds = %bb.ap
  %.sroa.08.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.08.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(96) %.sroa.08.128..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %.sroa.08.i, ptr noundef nonnull align 128 dereferenceable(128) %i.l, i64 128, i1 false), !noalias !576
  %.sroa.710.240..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.710.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %.sroa.710.240..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !576
  %.sroa.04.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.04.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(208) %i.r, i64 208, i1 false), !noalias !613
  %i.dz = load ptr, ptr %i.m, align 8, !noalias !576, !nonnull !5, !noundef !5
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !612
  %.sroa.04.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.04.sroa.11.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !614
  %.sroa.04.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.04.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !576
  store i64 1, ptr %i.b, align 128, !noalias !576
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ea, align 8, !noalias !576
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(224) %i.eb, ptr noundef nonnull align 128 dereferenceable(224) %.sroa.08.i, i64 224, i1 false), !noalias !576
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store i64 %.sroa.03.0.i, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 32, !noalias !576
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 %.sroa.3.0.i, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !noalias !576
  %.sroa.04.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.04.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.710.i, i64 60, i1 false), !noalias !576
  %.sroa.04.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %.sroa.04.sroa.7.sroa.4.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  store i64 0, ptr %.sroa.04.sroa.7.sroa.4.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !576
  %.sroa.04.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store i8 0, ptr %.sroa.04.sroa.8.0..sroa_idx.i, align 16, !noalias !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.04.sroa.7.0..sroa_idx.i, i8 0, i64 25, i1 false), !noalias !576
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 128, !noalias !576
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  store ptr %i.dz, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !576
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !615
  %i.ec = call noundef align 128 dereferenceable_or_null(896) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 896, i64 noundef range(i64 8, 129) 128) #24, !noalias !615 ; 6 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.au, label %bb.ax, !prof !15

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 896) #22
          to label %.noexc86.i unwind label %bb.av, !noalias !576

.noexc86.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEEB1m_(ptr noalias nofree noundef nonnull align 128 dereferenceable(896) %i.b) #25
          to label %.critedge81.thread.i unwind label %bb.aw, !noalias !576

bb.aw:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !576
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(896) %i.ec, ptr noundef nonnull align 128 dereferenceable(896) %i.b, i64 896, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !576
  store ptr %i.ec, ptr %i.j, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !576
end_hunk_0
