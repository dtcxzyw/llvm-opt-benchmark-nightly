Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.12?download=true
inline.NumInlined: 353
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCslghKHtsL3a4_5tokio4util4randNtB2_7RngSeed3new:bb.a
  %.1 = select i1 %or.cond, i32 0, i32 %i.c
  %i.g = insertvalue { i32, i32 } poison, i32 %.1, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %., 1
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !261
  %i.c = load i64, ptr %i.a, align 8, !range !72, !noalias !261, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !264, !noalias !261, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECslghKHtsL3a4_5tokio.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !261
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #22, !noalias !261
  unreachable

_RINvXs1_NtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !261, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !261
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.k, align 8, !alias.scope !261
  %i.l = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.o, i8 0, i64 26, i1 false)
  store ptr %i.m, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB2_11OpenOptions4open(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i128 1881195677696, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = zext i1 %4 to i8
  store i8 %i.f, ptr %i.e, align 8
  %i.g = xor i1 %4, true
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 1
  %i.j = load i8, ptr %1, align 1, !range !7, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path4PathECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.l = load i32, ptr %i.b, align 8, !range !235, !noundef !5
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 8
  store i8 1, ptr %i.h, align 1
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i32 1, ptr %0, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !26, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.r, ptr %i.c, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !7, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef i32 @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys2fd4unixNtB5_8FileDescNtNtNtNtBb_2os2fd5owned4AsFd5as_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.h unwind label %bb.o

bb.g:                                             ; preds = %bb.l, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.w, align 4
  store i32 0, ptr %0, align 8
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !noalias !265
  %i.x = call noundef i32 @fstat(i32 noundef range(i32 0, -1) %i.v, ptr noundef nonnull %i.a) #18, !noalias !265
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = tail call noundef ptr @__errno_location() #18
  %i.aa = load i32, ptr %i.z, align 4, !noalias !265, !noundef !5
  %i.ab = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !265
  %.not.i.i = icmp eq ptr %i.ab, @3
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ac = sext i32 %i.aa to i64
  %i.ad = shl nsw i64 %i.ac, 32
  %i.ae = or disjoint i64 %i.ad, 2
  %i.af = inttoptr i64 %i.ae to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !265, !noundef !5
  %i.ai = and i32 %i.ah, 61440
  %i.aj = icmp eq i32 %i.ai, 4096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !265
  br i1 %i.aj, label %bb.g, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 10)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.ak, %bb.m ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.al, align 8
  store i32 1, ptr %0, align 8
  %i.am = call noundef i32 @close(i32 noundef %i.r) #18 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.f, %bb.m, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = call noundef i32 @close(i32 noundef %i.r) #18 ; 0 uses
  resume { ptr, i32 } %i.an

bb.p:                                             ; preds = %bb.d, %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB2_8ReadHalf10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !268, !noundef !5
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream10local_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB2_8ReadHalf17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !268, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream17try_read_vectored(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB2_8ReadHalf8try_read(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !268, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8try_read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix5splitNtB2_8ReadHalf9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !268, !noundef !5
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator14next_generator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %1) ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  store i64 0, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.6.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandE4lockB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.c = load i64, ptr %i.b, align 8, !range !72, !alias.scope !269, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEINtBM_11PoisonErrorBH_EE6expectB1I_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !269
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !269, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !7, !alias.scope !269, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !269
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !269
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22
          to label %bb.d unwind label %bb.c, !noalias !269

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEEEB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #20
          to label %bb.f unwind label %bb.e, !noalias !269

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !269
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEINtBM_11PoisonErrorBH_EE6expectB1I_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !269, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !7, !alias.scope !269, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !5 ; 5 uses
  %i.u = shl i32 %i.r, 17
  %i.v = xor i32 %i.u, %i.r                       ; 2 uses
  %i.w = lshr i32 %i.v, 7
  %i.x = lshr i32 %i.t, 16
  %i.y = xor i32 %i.x, %i.w
  %i.z = xor i32 %i.y, %i.t
  %i.aa = xor i32 %i.z, %i.v                      ; 5 uses
  %i.ab = shl i32 %i.t, 17
  %i.ac = xor i32 %i.ab, %i.t                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 7
  %i.ae = lshr i32 %i.aa, 16
  %i.af = xor i32 %i.ad, %i.ae
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = xor i32 %i.ag, %i.aa                    ; 2 uses
  store i32 %i.aa, ptr %i.q, align 4
  store i32 %i.ah, ptr %i.s, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEINtBM_11PoisonErrorBH_EE6expectB1I_.exit
  %i.aj = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.am = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #19
  br i1 %i.am, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.ai monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEINtBM_11PoisonErrorBH_EE6expectB1I_.exit
  %i.an = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEEB1C_.exit, !prof !9

bb.j:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCslghKHtsL3a4_5tokio4util4rand8FastRandEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.j
  %i.ap = add i32 %i.aa, %i.t                     ; 2 uses
  %i.aq = add i32 %i.ah, %i.aa                    ; 2 uses
  %i.ar = or i32 %i.aq, %i.ap
  %or.cond = icmp eq i32 %i.ar, 0
  %. = select i1 %or.cond, i32 1, i32 %i.aq
  %i.as = insertvalue { i32, i32 } poison, i32 %i.ap, 0
  %i.at = insertvalue { i32, i32 } %i.as, i32 %., 1
  ret { i32, i32 } %i.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_6Sender13from_owned_fd(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !noalias !272
  %i.b = call noundef i32 @fstat(i32 noundef range(i32 0, -1) %1, ptr noundef nonnull %i.a) #18, !noalias !272
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @__errno_location() #18
  %i.e = load i32, ptr %i.d, align 4, !noalias !272, !noundef !5
  %i.f = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !272
  %.not.i.i = icmp eq ptr %i.f, @3
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, 2
  %i.j = inttoptr i64 %i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noalias !272, !noundef !5
  %i.m = and i32 %i.l, 61440
  %i.n = icmp eq i32 %i.m, 4096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 10)
          to label %bb.j unwind label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef i32 (i32, i32, ...) @fcntl(i32 noundef range(i32 0, -1) %1, i32 noundef 3) #18, !noalias !275 ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe14get_file_flags.exit

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef ptr @__errno_location() #18
  %i.s = load i32, ptr %i.r, align 4, !noalias !275, !noundef !5
  %i.t = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !275
  %.not.i.i14 = icmp eq ptr %i.t, @3
  br i1 %.not.i.i14, label %bb.k, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.k unwind label %bb.s

bb.j:                                             ; preds = %bb.f, %bb.k, %bb.r, %bb.d
  %.sink = phi ptr [ %i.z, %bb.k ], [ %i.an, %bb.r ], [ %i.j, %bb.d ], [ %i.o, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.u, align 8
  store i64 2, ptr %0, align 8
  %i.v = tail call noundef i32 @close(i32 noundef %1) #18 ; 0 uses
  br label %_RNvMs0_NtNtNtCslghKHtsL3a4_5tokio3net4unix4pipeNtB5_6Sender23from_owned_fd_unchecked.exit

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.w = sext i32 %i.s to i64
  %i.x = shl nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, 2
  %i.z = inttoptr i64 %i.y to ptr
  br label %bb.j

_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe14get_file_flags.exit: ; preds = %bb.g
  %i.aa = and i32 %i.p, 3
  %.off = add nsw i32 %i.aa, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix4pipe14get_file_flags.exit
  %i.ab = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 37)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 2, ptr %0, align 8
  %i.ad = tail call noundef i32 @close(i32 noundef %1) #18 ; 0 uses
end_hunk_0
