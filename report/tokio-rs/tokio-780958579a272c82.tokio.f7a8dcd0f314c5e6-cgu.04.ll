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
  %i.l = alloca [128 x i8], align 128             ; 5 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !noalias !576
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
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 64, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.ba unwind label %bb.az, !noalias !576

.body82.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i, %bb.bh, %bb.az
  %.pn.i = phi { ptr, i32 } [ %i.eu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i ], [ %i.ei, %bb.az ], [ %i.fe, %bb.bh ] ; 2 uses
  %.sroa.022.1.i = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i ], [ true, %bb.az ], [ false, %bb.bh ]
  %i.eg = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !618
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ay, label %.critedge81.i

bb.ay:                                            ; preds = %.body82.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %.critedge81.i unwind label %bb.bj, !noalias !576

bb.az:                                            ; preds = %bb.bb, %bb.ax
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

bb.ba:                                            ; preds = %bb.ax
  %i.ej = load i64, ptr %i.a, align 8, !range !68, !noalias !576, !noundef !5
  %i.ek = trunc nuw i64 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !547, !noalias !576, !noundef !5 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ek, label %bb.bb, label %bb.bc, !prof !15

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i64, ptr %i.en, align 8, !noalias !576
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.em, i64 %i.eo) #22
          to label %bb.bk unwind label %bb.az, !noalias !576

bb.bc:                                            ; preds = %bb.ba
  %i.ep = load ptr, ptr %i.en, align 8, !noalias !576, !nonnull !5, !noundef !5
  %i.eq = icmp samesign ugt i64 %i.em, 63
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !576
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false), !noalias !576
  store i64 %i.em, ptr %i.e, align 8, !noalias !576
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ep, ptr %i.es, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !576
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 128
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics5batchNtB2_12MetricsBatch3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull align 128 %i.et)
          to label %bb.bf unwind label %bb.bd, !noalias !576

bb.bd:                                            ; preds = %bb.bc
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load i64, ptr %i.d, align 8, !range !474, !alias.scope !624, !noalias !576, !noundef !5
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i unwind label %bb.bj, !noalias !576

bb.bf:                                            ; preds = %bb.bc
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !576
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i32 0, ptr %i.ey, align 8, !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !noalias !623
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !576
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 %.sroa.0.0.i, ptr %i.fa, align 4, !noalias !576
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i8 0, ptr %i.fb, align 8, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !576
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !627
  %i.fc = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 152, i64 noundef range(i64 8, 129) 8) #24, !noalias !627 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bg, label %bb.bp, !prof !15

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #22
          to label %.noexc89.i unwind label %bb.bh, !noalias !576

.noexc89.i:                                       ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread4CoreEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.f) #25
          to label %.body82.i unwind label %bb.bi, !noalias !576

bb.bi:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !576
  unreachable

bb.bj:                                            ; preds = %.critedge81.thread.i, %.critedge.i, %bb.bn, %.thread110.i, %.thread99.i, %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i, %bb.be, %bb.ay, %bb.as, %bb.ae
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !630
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEEB13_.exit.i: ; preds = %bb.be, %bb.bd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtNtCslghKHtsL3a4_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEEB1F_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #25
          to label %.body82.i unwind label %bb.bj, !noalias !576

bb.bk:                                            ; preds = %bb.bb
  unreachable

bb.bl:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %.thread110.i unwind label %bb.bj, !noalias !576

.thread99.i:                                      ; preds = %bb.ae, %bb.ad, %.thread107.i
  %.pn.pn104.i = phi { ptr, i32 } [ %i.cv, %.thread107.i ], [ %i.cy, %bb.ad ], [ %i.cy, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #25
          to label %.thread110.i unwind label %bb.bj, !noalias !612

.thread110.i:                                     ; preds = %.thread99.i, %bb.bl
  %.pn.pn96118.i = phi { ptr, i32 } [ %i.dy, %bb.bl ], [ %.pn.pn104.i, %.thread99.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.p) #25
          to label %bb.bm unwind label %bb.bj, !noalias !631

bb.bm:                                            ; preds = %.thread110.i
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.fh = load ptr, ptr %i.m, align 8, !alias.scope !641, !noalias !576, !nonnull !5, !noundef !5
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !642
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bn, label %.critedge.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #26
          to label %.critedge.i unwind label %bb.bj, !noalias !631

.critedge81.i:                                    ; preds = %bb.ay, %.body82.i
  br i1 %.sroa.022.1.i, label %.critedge81.thread.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39

.critedge.i:                                      ; preds = %bb.bn, %bb.bm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.r) #25
          to label %.critedge81.thread.i unwind label %bb.bj, !noalias !643

.critedge81.thread.i:                             ; preds = %.critedge.i, %.critedge81.i, %bb.av
  %.pn.pn96117131.i = phi { ptr, i32 } [ %.pn.i, %.critedge81.i ], [ %.pn.pn96118.i, %.critedge.i ], [ %i.ee, %bb.av ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39 unwind label %bb.bj, !noalias !630

bb.bo:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ab

bb.bp:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.fc, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i64 152, i1 false), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !576
  %3 = ptrtoint ptr %i.fc to i64
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.515.0..sroa_idx, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.710.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fk = load <2 x ptr>, ptr %i.w, align 16
  store <2 x ptr> %i.fk, ptr %.sroa.616.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.br:                                            ; preds = %bb.z
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #25
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %bb.bw, %bb.bu, %bb.bz, %bb.bx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39, %.critedge36, %.critedge, %bb.br
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.fn = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !644
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #26
          to label %.critedge unwind label %bb.bs

.critedge:                                        ; preds = %bb.bu, %bb.bt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.r) #25
          to label %.critedge36 unwind label %bb.bs

.critedge36:                                      ; preds = %.critedge
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.s) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39 unwind label %bb.bs

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39: ; preds = %.critedge81.i, %.critedge81.thread.i, %.critedge36, %bb.bv, %bb.bw
  %.pn52 = phi { ptr, i32 } [ %i.fp, %bb.bv ], [ %i.fp, %bb.bw ], [ %i.fl, %.critedge36 ], [ %.pn.i, %.critedge81.i ], [ %.pn.pn96117131.i, %.critedge81.thread.i ] ; 2 uses
  %cond = phi i1 [ false, %bb.bv ], [ false, %bb.bw ], [ true, %.critedge36 ], [ true, %.critedge81.i ], [ true, %.critedge81.thread.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool12BlockingPoolEBJ_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.w) #25
          to label %bb.d unwind label %bb.bs

bb.bv:                                            ; preds = %bb.h, %bb.f
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !651
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit39 unwind label %bb.bs

bb.bx:                                            ; preds = %.thread, %bb.d
  %.pn.pn47 = phi { ptr, i32 } [ %i.aq, %.thread ], [ %.pn52, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.y) #25
          to label %bb.bz unwind label %bb.bs

bb.by:                                            ; preds = %bb.d, %bb.bz
  %.pn.pn48 = phi { ptr, i32 } [ %.pn52, %bb.d ], [ %.pn.pn47, %bb.bz ]
  resume { ptr, i32 } %.pn.pn48

bb.bz:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6DriverEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.z) #25
          to label %bb.by unwind label %bb.bs
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 897) 16, i64 noundef range(i64 8, 129) 8) #24 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit22, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.ag, %bb.g ], [ %i.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit22 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.h unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit

bb.d:                                             ; preds = %bb.a
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx24, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @37, ptr %i.f, align 8
  %i.g = invoke { i32, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4util4randNtB2_7RngSeed3new()
          to label %bb.e unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit22 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = extractvalue { i32, i32 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = zext i1 %1 to i8
  store i8 %i.k, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 1024, ptr %i.n, align 8
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 512, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.c, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @37, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x ptr> <ptr null, ptr undef>, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 61, ptr %i.aa, align 8
  store <4 x i8> zeroinitializer, ptr %i.m, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.i, ptr %.sroa.55.0..sroa_idx, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 0, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 235
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit22: ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !658
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit22
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit unwind label %bb.f

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB27_4SyncEL_EECslghKHtsL3a4_5tokio.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [208 x i8], align 8               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [96 x i8], align 8                ; 13 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [208 x i8], align 8               ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 4                ; 4 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [272 x i8], align 8               ; 7 uses
  %.sroa.8.i = alloca [256 x i8], align 8         ; 6 uses
  %i.w = alloca [208 x i8], align 8               ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 228 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !range !556, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.bi

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.ab = load i64, ptr %1, align 8, !range !68, !alias.scope !666, !noalias !663, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !666, !noalias !663
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = tail call noundef i64 @_RNvNtNtNtCslghKHtsL3a4_5tokio4loom3std3sys8num_cpus(), !noalias !663
  %.pre = load i8, ptr %i.y, align 4, !range !556, !alias.scope !666, !noalias !663
  %i.ag = xor i8 %.pre, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi i8 [ 0, %bb.c ], [ %i.ag, %bb.d ]
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !668
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 229
  %i.aj = load i8, ptr %i.ai, align 1, !range !556, !alias.scope !666, !noalias !663, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 230
  %i.al = load i8, ptr %i.ak, align 2, !range !556, !alias.scope !666, !noalias !663, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.an = load i8, ptr %i.am, align 1, !range !556, !alias.scope !666, !noalias !663, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !666, !noalias !663, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %i.aj, ptr %i.aq, align 8, !noalias !668
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 %i.al, ptr %i.ar, align 1, !noalias !668
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i8 %i.ah, ptr %i.as, align 2, !noalias !668
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  store i8 %i.an, ptr %i.at, align 1, !noalias !668
  store i64 %i.ap, ptr %i.u, align 8, !noalias !668
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6driverNtB2_6Driver3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.u), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !668
  %i.au = load i64, ptr %i.v, align 8, !range !474, !noalias !668, !noundef !5 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !668 ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !668
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !663, !noalias !666
  store i64 2, ptr %0, align 8, !alias.scope !663, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RNvMs6_NtNtCslghKHtsL3a4_5tokio7runtime7builderNtB5_7Builder22build_threaded_runtime.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.536.0..sroa_idx.i, i64 256, i1 false), !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !668
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.i, i64 48, i1 false), !noalias !668
  %.sroa.8.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.8.64..sroa_idx.i, i64 208, i1 false), !noalias !668
  store i64 %i.au, ptr %i.x, align 8, !noalias !668
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ax, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !668
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !666, !noalias !663, !noundef !5
  %i.bb = add i64 %i.ba, %.sroa.0.0.i
  %i.bc = invoke { ptr, ptr } @_RNvNtNtCslghKHtsL3a4_5tokio7runtime8blocking20create_blocking_pool(ptr noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %i.bb)
          to label %bb.i unwind label %.thread.i, !noalias !663 ; 2 uses

bb.h:                                             ; preds = %.thread90.i
  br i1 %cond.i, label %.thread101.i, label %bb.bg

.thread.i:                                        ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.i:                                             ; preds = %bb.g
  %i.be = extractvalue { ptr, ptr } %i.bc, 0      ; 10 uses
  %i.bf = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  store ptr %i.be, ptr %i.t, align 8, !noalias !668
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !668
  %i.bh = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !663
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.be, ptr %i.s, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !668
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator14next_generator(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.r, ptr noundef nonnull align 4 %i.bj)
          to label %bb.l unwind label %bb.be, !noalias !663

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !668
  invoke void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator14next_generator(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.q, ptr noundef nonnull align 4 %i.bj)
          to label %bb.m unwind label %bb.be, !noalias !663

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull align 8 dereferenceable(208) %i.w, i64 208, i1 false), !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !668
  store ptr %i.be, ptr %i.m, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !668
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !666, !noalias !663, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !663
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.p

end_hunk_0
