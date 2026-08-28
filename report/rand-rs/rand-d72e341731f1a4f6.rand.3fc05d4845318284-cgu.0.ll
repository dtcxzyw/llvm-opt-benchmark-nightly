Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rand-rs/original/rand-d72e341731f1a4f6.rand.3fc05d4845318284-cgu.0?download=true
inline.NumInlined: 131
inline.NumDeleted: 101
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECs5tlx8D5GURI_4rand:bb.a
  ], !prof !18

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !22
  store i8 3, ptr %i.a, align 8, !alias.scope !22
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5tlx8D5GURI_4rand.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5tlx8D5GURI_4rand.exit
    i64 1, label %bb.c
  ], !prof !18

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5tlx8D5GURI_4rand.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !25
  store i8 3, ptr %i.a, align 8, !alias.scope !25
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5tlx8D5GURI_4rand.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5tlx8D5GURI_4rand.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEEB31_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE0EB3v_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !34, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !34, !noundef !5
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !34
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE0EB3v_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #23
  br label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE0EB3v_.exit

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE0EB3v_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYINtCs1aYz1mjYrQZ_8chacha2010ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsifPj74NEIss_9getrandom7sys_rng6SysRngECs5tlx8D5GURI_4rand(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(68) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [48 x i8], align 4          ; 5 uses
  %i.a = alloca [64 x i8], align 4                ; 5 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !alias.scope !35
  %i.c = load atomic ptr, ptr @_RNvNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !38 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_RNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback4init() #23, !noalias !38 ; 2 uses
  store atomic ptr %i.e, ptr @_RNvNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !38
  br label %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i

_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.sroa.0.0.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i, %bb.g
  %.sroa.0.040.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.g ], [ %i.b, %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i ] ; 3 uses
  %.sroa.6.039.i.i.i.i = phi i64 [ %.sroa.6.1.i.i.i.i, %bb.g ], [ 32, %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i ] ; 4 uses
  %i.g = call noundef i64 %.sroa.0.0.i.i.i.i(ptr noundef nonnull %.sroa.0.040.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039.i.i.i.i, i32 noundef 0) #21, !noalias !45, !inline_history !48 ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.i = icmp eq i64 %i.g, -1
  br i1 %i.i, label %bb.e, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.d:                                             ; preds = %.preheader.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.g, %.sroa.6.039.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = call noundef i32 @_RNvNtNtNtNtCsifPj74NEIss_9getrandom8backends8use_file5utils9get_errno9get_errno(), !noalias !45 ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef i32 @_RNvMNtCsifPj74NEIss_9getrandom5errorNtB2_5Error10from_errno(i32 noundef %i.j), !noalias !45
  br label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.1.i.i.i.i = phi i64 [ %i.o, %bb.h ], [ %.sroa.6.039.i.i.i.i, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.n, %bb.h ], [ %.sroa.0.040.i.i.i.i, %bb.e ]
  %i.m = icmp eq i64 %.sroa.6.1.i.i.i.i, 0
  br i1 %i.m, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.040.i.i.i.i, i64 %i.g
  %i.o = sub nuw nsw i64 %.sroa.6.039.i.i.i.i, %i.g
  br label %bb.g

_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit: ; preds = %_RINvMNtNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCskKLDkoKarTP_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECs5tlx8D5GURI_4rand.exit.i.i.i
  %i.p = call noundef i32 @_RNvNtNtCsifPj74NEIss_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #23 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread

_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread: ; preds = %bb.d, %bb.c, %bb.f, %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit
  %.sroa.0.0.i.i.i3 = phi i32 [ %i.p, %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit ], [ %i.l, %bb.f ], [ 65538, %bb.c ], [ 65538, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.i.i.i3, ptr %i.q, align 4
  store i32 1, ptr %0, align 4
  br label %bb.j

_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread4: ; preds = %bb.g, %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) @7, i64 16, i1 false), !noalias !52
  %i.r = load atomic i8, ptr @_RNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !noalias !52
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %bb.i, label %_RNvXNtCs1aYz1mjYrQZ_8chacha203rngINtB4_10ChaChaCoreNtB4_3R12NtNtB4_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng9from_seedCs5tlx8D5GURI_4rand.exit, !prof !7

bb.i:                                             ; preds = %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread4
  %i.t = call noundef zeroext i1 @_RNvNvNtCs1aYz1mjYrQZ_8chacha2010avx2_cpuid8init_get10init_inner(), !noalias !52 ; 0 uses
  br label %_RNvXNtCs1aYz1mjYrQZ_8chacha203rngINtB4_10ChaChaCoreNtB4_3R12NtNtB4_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng9from_seedCs5tlx8D5GURI_4rand.exit

_RNvXNtCs1aYz1mjYrQZ_8chacha203rngINtB4_10ChaChaCoreNtB4_3R12NtNtB4_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng9from_seedCs5tlx8D5GURI_4rand.exit: ; preds = %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread4, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !57
  %.48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.48..48..48..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !49, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.u, ptr noundef nonnull align 4 dereferenceable(64) %i.a, i64 64, i1 false)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_RNvXNtCs1aYz1mjYrQZ_8chacha203rngINtB4_10ChaChaCoreNtB4_3R12NtNtB4_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng9from_seedCs5tlx8D5GURI_4rand.exit, %_RNvXNtCsifPj74NEIss_9getrandom7sys_rngNtB2_6SysRngNtCsenQHu2qVDfv_9rand_core6TryRng14try_fill_bytes.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs0_NtNtCs5tlx8D5GURI_4rand4rngs6threadNtB5_9ThreadRng6reseed(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [68 x i8], align 4                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 64, ptr %i.c, align 4, !alias.scope !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62
  call fastcc void @_RINvYINtCs1aYz1mjYrQZ_8chacha2010ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsifPj74NEIss_9getrandom7sys_rng6SysRngECs5tlx8D5GURI_4rand(ptr noalias nofree noundef align 4 captures(none) dereferenceable(68) %i.a), !noalias !62
  %i.d = load i32, ptr %i.a, align 4, !range !6, !noalias !62, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %1, align 4, !range !8, !noalias !62, !noundef !5
  br label %_RNvMs_NtNtCs5tlx8D5GURI_4rand4rngs6threadNtB4_13ReseedingCore6reseed.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %_RNvMs_NtNtCs5tlx8D5GURI_4rand4rngs6threadNtB4_13ReseedingCore6reseed.exit

_RNvMs_NtNtCs5tlx8D5GURI_4rand4rngs6threadNtB4_13ReseedingCore6reseed.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  ret i32 %.sroa.0.0.i
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEERNtNtBG_5alloc6GlobalEEB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEERNtNtBG_5alloc6GlobalEEB2l_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 336, i64 noundef 8) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEERNtNtBG_5alloc6GlobalEEB2l_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEERNtNtBG_5alloc6GlobalEEB2l_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs_NtNtCs5tlx8D5GURI_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(64) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [68 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  call fastcc void @_RINvYINtCs1aYz1mjYrQZ_8chacha2010ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsifPj74NEIss_9getrandom7sys_rng6SysRngECs5tlx8D5GURI_4rand(ptr noalias nofree noundef align 4 captures(none) dereferenceable(68) %i.a), !noalias !65
  %i.d = load i32, ptr %i.a, align 4, !range !6, !noalias !65, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.f, align 4, !range !8, !noalias !65, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.g, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1_NtCsifPj74NEIss_9getrandom5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtCs5tlx8D5GURI_4rand4rngs6thread3rng() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noalias !68, !noundef !5
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.thread.i.i, label %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.i.i, !prof !75

_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.i.i: ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEuE16get_or_init_slowNvNvB37_14THREAD_RNG_KEY27___rust_std_internal_init_fnEB3b_(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.thread.i.i

_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.i.i ], [ %i.a, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = load i64, ptr %.val.i.i, align 8, !noundef !5 ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.i, ptr %.val.i.i, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE4withNCNvB2N_3rng0BT_EB2R_.exit, !prof !7

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.thread.i.i
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.i.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCs5tlx8D5GURI_4rand4rngs6thread13ReseedingCoreEEEE4withNCNvB2N_3rng0BT_EB2R_.exit: ; preds = %_RNvYNCNKNvNtNtCs5tlx8D5GURI_4rand4rngs6thread14THREAD_RNG_KEY00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB16_6option6OptionQIB1L_INtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB16_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtB8_13ReseedingCoreEEEEEEE9call_onceBc_.exit.thread.i.i
  ret ptr %.val.i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5tlx8D5GURI_4rand5distr7uniformNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !76, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 40, i64 58
  %.1 = select i1 %i.b, ptr @14, ptr @13
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5tlx8D5GURI_4rand5distr9bernoulliNtB2_14BernoulliErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 45)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs5tlx8D5GURI_4rand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs5tlx8D5GURI_4rand(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !77
  store i8 3, ptr %i.a, align 8, !alias.scope !77
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5tlx8D5GURI_4rand.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5tlx8D5GURI_4rand.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB5_8IndexVecNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !80, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = load i64, ptr %1, align 8, !range !80, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 14 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.g, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = icmp eq i64 %i.f, %i.m
  br i1 %i.n, label %bb.f, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = shl nuw i64 %i.f, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.s)
  %i.t = icmp eq i32 %bcmp, 0
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit: ; preds = %bb.h, %bb.l, %bb.k, %._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IteryEIBS_mEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRyRmENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge34, %bb.g, %._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge29, %bb.i, %bb.j, %bb.d, %bb.e, %bb.m, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.bb, %bb.m ], [ false, %bb.j ], [ true, %bb.l ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.e ], [ %i.t, %bb.f ], [ true, %bb.g ], [ %i.ad, %._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge29 ], [ true, %bb.k ], [ %i.av, %._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IteryEIBS_mEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRyRmENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge34 ], [ true, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %exitcond.not.i28 = icmp eq i64 %i.f, 0
  br i1 %exitcond.not.i28, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.y = add nuw nsw i64 %i.z, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.f
  br i1 %exitcond.not.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.z = phi i64 [ %i.y, %bb.h ], [ 0, %bb.g ]    ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  %.val.i = load i32, ptr %i.aa, align 4, !noalias !81, !noundef !5
  %.val6.i = load i64, ptr %i.ab, align 8, !noalias !81, !noundef !5
  %i.ac = zext i32 %.val.i to i64
  %.not.i = icmp eq i64 %.val6.i, %i.ac
  br i1 %.not.i, label %bb.h, label %._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge29

._RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit_crit_edge29: ; preds = %.lr.ph
  %i.ad = icmp samesign uge i64 %i.z, %i.f
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4ItermEIBS_yEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1q_3all5checkTRmRyENCNvXs0_NtNtCs5tlx8D5GURI_4rand3seq6index_NtB2H_8IndexVecNtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2L_.exit

bb.i:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = icmp eq i64 %i.f, %i.af
end_hunk_0
