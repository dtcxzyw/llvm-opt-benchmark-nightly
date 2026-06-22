inline.NumInlined: 769
inline.NumDeleted: 291
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #18
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #18
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedNtNtCs95DO3lnzZ3L_4moka6common11CacheRegionjECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic28atomic_compare_exchange_weakjECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3, i8 noundef range(i8 0, 5) %4) unnamed_addr #4 {
bb.a:
  switch i8 %3, label %default.unreachable3 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable3 [
    i8 0, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.i
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !167

bb.c:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable3 [
    i8 0, label %bb.k
    i8 2, label %bb.l
    i8 4, label %bb.m
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !167

bb.d:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable3 [
    i8 0, label %bb.n
    i8 2, label %bb.o
    i8 4, label %bb.p
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !167

bb.e:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable3 [
    i8 0, label %bb.q
    i8 2, label %bb.r
    i8 4, label %bb.s
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !167

bb.f:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable3 [
    i8 0, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !167

bb.g:                                             ; preds = %bb.b
  %i.a = cmpxchg weak ptr %0, i64 %1, i64 %2 monotonic monotonic, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.b = cmpxchg weak ptr %0, i64 %1, i64 %2 monotonic acquire, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.c = cmpxchg weak ptr %0, i64 %1, i64 %2 monotonic seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.pn = phi { i64, i1 } [ %i.a, %bb.g ], [ %i.b, %bb.h ], [ %i.c, %bb.i ], [ %i.f, %bb.k ], [ %i.g, %bb.l ], [ %i.h, %bb.m ], [ %i.i, %bb.n ], [ %i.j, %bb.o ], [ %i.k, %bb.p ], [ %i.l, %bb.q ], [ %i.m, %bb.r ], [ %i.n, %bb.s ], [ %i.o, %bb.t ], [ %i.p, %bb.u ], [ %i.q, %bb.v ] ; 2 uses
  %.sroa.18.0.in = extractvalue { i64, i1 } %.pn, 1
  %not..sroa.18.0.in = xor i1 %.sroa.18.0.in, true
  %. = zext i1 %not..sroa.18.0.in to i64
  %.sroa.01.0 = extractvalue { i64, i1 } %.pn, 0
  %i.d = insertvalue { i64, i64 } poison, i64 %., 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.01.0, 1
  ret { i64, i64 } %i.e

bb.k:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr %0, i64 %1, i64 %2 release monotonic, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.c
  %i.g = cmpxchg weak ptr %0, i64 %1, i64 %2 release acquire, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.c
  %i.h = cmpxchg weak ptr %0, i64 %1, i64 %2 release seq_cst, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.d
  %i.i = cmpxchg weak ptr %0, i64 %1, i64 %2 acquire monotonic, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.d
  %i.j = cmpxchg weak ptr %0, i64 %1, i64 %2 acquire acquire, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.k = cmpxchg weak ptr %0, i64 %1, i64 %2 acquire seq_cst, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.e
  %i.l = cmpxchg weak ptr %0, i64 %1, i64 %2 acq_rel monotonic, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.e
  %i.m = cmpxchg weak ptr %0, i64 %1, i64 %2 acq_rel acquire, align 8
  br label %bb.j

bb.s:                                             ; preds = %bb.e
  %i.n = cmpxchg weak ptr %0, i64 %1, i64 %2 acq_rel seq_cst, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.f
  %i.o = cmpxchg weak ptr %0, i64 %1, i64 %2 seq_cst monotonic, align 8
  br label %bb.j

bb.u:                                             ; preds = %bb.f
  %i.p = cmpxchg weak ptr %0, i64 %1, i64 %2 seq_cst acquire, align 8
  br label %bb.j

bb.v:                                             ; preds = %bb.f
  %i.q = cmpxchg weak ptr %0, i64 %1, i64 %2 seq_cst seq_cst, align 8
  br label %bb.j

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB5_7Context4withNCNvMs1_NtNtB7_7flavors4zeroINtB1c_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0INtNtCsbvkFyIu7lgC_4core6result6ResultuINtNtB7_3err16SendTimeoutErrorB1L_EEEs0_0B3b_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree captures(none) %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context3new() ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i16, ptr %.0.val, align 8 ; 2 uses
  store i16 3, ptr %.0.val, align 8
  %.not = icmp eq i16 %.sroa.0.0.copyload, 3
  br i1 %.not, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  store i16 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.5.0..sroa_idx, i64 102, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB7_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !177, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !177
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !187, !nonnull !3, !noundef !3
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !187
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs0_0B3b_(ptr nofree captures(none) %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context3new() ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !197, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !197
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !207, !nonnull !3, !noundef !3
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !207
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB7_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !27, !noundef !3
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  store i8 0, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.c

bb.b:                                             ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread, %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !208, !noalias !211, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.t, align 8, !range !21, !alias.scope !208, !noalias !211, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.j unwind label %bb.e, !noalias !211

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !213
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ap, %bb.x, %bb.f, %bb.e, %bb.ad, %bb.av
  %.sroa.019.2 = phi i1 [ false, %bb.av ], [ false, %bb.ad ], [ false, %bb.x ], [ true, %bb.e ], [ false, %bb.ap ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.es, %bb.av ], [ %i.dc, %bb.ad ], [ %i.ch, %bb.x ], [ %i.aa, %bb.e ], [ %i.dx, %bb.ap ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i16, ptr %i.j, align 8, !range !23, !alias.scope !222, !noundef !3
  %i.af = icmp eq i16 %i.ae, 3
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB26_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit unwind label %bb.am

.loopexit:                                        ; preds = %.loopexit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread, %.thread14, %bb.m, %bb.o, %bb.ah, %bb.aj, %bb.az, %bb.bb
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ah ], [ false, %bb.az ], [ false, %.thread14 ], [ false, %bb.o ], [ false, %bb.bb ], [ false, %.invoke ], [ false, %.thread ], [ true, %bb.j ], [ false, %bb.aj ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !208, !noalias !211, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !208, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i8, ptr %i.al, align 8, !range !4, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !229, !noundef !3 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bb, label %.thread11 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread14
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions4park()
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %.noexc52
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bc, label %.thread11 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread14
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.ax
  %i.bh = icmp slt i64 %i.be, %i.ax
  %i.bi = icmp samesign ult i32 %i.bf, %i.az
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.t

bb.s:                                             ; preds = %.noexc51
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions12park_timeout(i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.r
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread11 [
    i64 0, label %bb.u
    i64 1, label %.thread
    i64 2, label %.thread14
  ], !prof !230

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #31
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !27, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB7_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_:bb.a
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit62

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  %i.dn = phi ptr [ @20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60 ], [ @23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #31
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.loopexit: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %.thread11
  store i64 2, ptr %0, align 8
  %.pre = load i16, ptr %i.j, align 8, !range !23, !alias.scope !266
  %i.do = icmp eq i16 %.pre, 3
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit62, label %bb.al

bb.al:                                            ; preds = %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.loopexit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB26_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit62

bb.am:                                            ; preds = %bb.i, %bb.ad, %bb.av, %bb.be
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.an:                                            ; preds = %.thread14
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.dq = load i64, ptr %i.d, align 8, !range !151, !alias.scope !273, !noalias !276, !noundef !3
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %bb.ao, label %bb.as, !prof !29

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !278
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !273, !noalias !276, !nonnull !3, !align !27, !noundef !3
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !range !4, !alias.scope !273, !noalias !276, !noundef !3
  store ptr %i.dt, ptr %i.b, align 8, !noalias !278
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.dv, ptr %i.dw, align 8, !noalias !278
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #31
          to label %bb.aq unwind label %bb.ap, !noalias !273

bb.ap:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %.body unwind label %bb.ar, !noalias !273

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !273
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !273, !noalias !276, !nonnull !3, !align !27, !noundef !3 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ec = load i8, ptr %i.eb, align 8, !range !4, !alias.scope !273, !noalias !276, !noundef !3 ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !279, !noalias !282, !nonnull !3, !noundef !3 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !279, !noalias !282, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ei, 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread, label %.lr.ph

bb.at:                                            ; preds = %.lr.ph
  %i.el = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.em = add nuw nsw i64 %i.ep, 1
  %i.en = icmp eq ptr %i.el, %i.ej
  br i1 %i.en, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %i.eo = phi ptr [ %i.el, %bb.at ], [ %i.eg, %bb.as ] ; 2 uses
  %i.ep = phi i64 [ %i.em, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !284, !noalias !289, !noundef !3
  %.not.i.i63 = icmp eq i64 %i.er, %i.m
  br i1 %.not.i.i63, label %bb.au, label %bb.at

bb.au:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ee, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65 unwind label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ea, i8 %i.ec) #29
          to label %.body unwind label %bb.am

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65: ; preds = %bb.au
  %.pr18 = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %.pr18, null
  br i1 %.not, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread, label %bb.aw, !prof !252

bb.aw:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.et = load ptr, ptr %i.f, align 8, !alias.scope !306, !nonnull !3, !noundef !3
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !306
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit67

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit67 unwind label %bb.av

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread: ; preds = %bb.at, %bb.as, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #31
          to label %bb.b unwind label %bb.av

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit67: ; preds = %bb.aw, %bb.ax
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  br i1 %i.ed, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit67
  %i.ex = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ey = and i64 %i.ex, 9223372036854775807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.az, !prof !28

bb.az:                                            ; preds = %bb.ay
  %i.fa = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.az
  br i1 %i.fa, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.ba

bb.ba:                                            ; preds = %.noexc69
  store atomic i8 1, ptr %i.ew monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68: ; preds = %bb.ba, %.noexc69, %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit67
  %i.fb = atomicrmw xchg ptr %i.ea, i32 0 release, align 4
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71, !prof !29

bb.bb:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ea)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.08.0.copyload = load i16, ptr %i.j, align 8 ; 2 uses
  store i16 3, ptr %i.j, align 8
  %.not24 = icmp eq i16 %.sroa.08.0.copyload, 3
  br i1 %.not24, label %.invoke, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit71
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.510.0..sroa_idx, i64 62, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.08.0.copyload, ptr %.sroa.417.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit62

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit62: ; preds = %bb.ak, %bb.bc, %bb.al, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit: ; preds = %.body, %bb.i
  br i1 %.sroa.019.2, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit
  resume { ptr, i32 } %.pn

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val33 = load i8, ptr %i.fd, align 8, !range !4, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.q, i8 %.val33) #29
          to label %bb.bd unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !3, !align !27, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !307, !noundef !3 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.m = load i64, ptr %i.f, align 8, !range !151, !alias.scope !308, !noalias !311, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %1 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !313
  %i.o = load ptr, ptr %1, align 8, !alias.scope !308, !noalias !311, !nonnull !3, !align !27, !noundef !3
  %i.p = load i8, ptr %2, align 8, !range !4, !alias.scope !308, !noalias !311, !noundef !3
  store ptr %i.o, ptr %i.d, align 8, !noalias !313
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.p, ptr %i.q, align 8, !noalias !313
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #31
          to label %bb.d unwind label %bb.c, !noalias !308

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %common.resume unwind label %bb.e, !noalias !308

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !308
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.ah, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %.body.i ], [ %i.r, %bb.c ], [ %i.ct, %bb.ac ], [ %i.do, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !308, !noalias !311, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  %i.u = load i8, ptr %2, align 8, !range !4, !alias.scope !308, !noalias !311, !noundef !3 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.w = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.aa, align 8
  store ptr %.0.val, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !314, !noalias !317, !noundef !3 ; 4 uses
  %i.ad = load i64, ptr %i.y, align 8, !range !21, !alias.scope !314, !noalias !317, !noundef !3
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.l unwind label %bb.h, !noalias !317

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !319
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.t, i8 %i.u) #29
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !314, !noalias !317, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.am = add nsw i64 %i.ac, 1                    ; 2 uses
  store i64 %i.am, ptr %i.ab, align 8, !alias.scope !314, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = icmp slt i64 %i.ac, 384307168202282325
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = zext i1 %i.as to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.at, %bb.m ], [ 0, %bb.l ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store atomic i8 %.sroa.0.0.i, ptr %i.au seq_cst, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br i1 %i.v, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.az = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.az, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.av monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ba = atomicrmw xchg ptr %i.t, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.r, label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit, !prof !29

bb.r:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.t)
  br label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit

bb.s:                                             ; preds = %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.be = load atomic i64, ptr %i.bd seq_cst, align 128
  %i.bf = load atomic i64, ptr %i.k seq_cst, align 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 16, !noundef !3
  %i.bl = xor i64 %i.bk, -1
  %i.bm = and i64 %i.be, %i.bl
  %i.bn = icmp eq i64 %i.bi, %i.bm
  br i1 %i.bn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.bp = cmpxchg ptr %i.bo, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit
  %i.bq = load atomic i64, ptr %i.bd seq_cst, align 128
  %i.br = load i64, ptr %i.bj, align 16, !noundef !3
  %i.bs = and i64 %i.br, %i.bq
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !range !229, !noundef !3 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.by, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.v, %bb.w
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8
  switch i64 %i.ca, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.w
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.w:                                             ; preds = %.split.us.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %bb.v, %bb.z
  %i.cb = load atomic i64, ptr %i.bz acquire, align 8
  switch i64 %i.cb, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.x
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.x:                                             ; preds = %.split.i
  %i.cc = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cd = extractvalue { i64, i32 } %i.cc, 0      ; 3 uses
  %i.ce = extractvalue { i64, i32 } %i.cc, 1      ; 2 uses
  %i.cf = icmp eq i64 %i.cd, %i.bw
  %i.cg = icmp slt i64 %i.cd, %i.bw
  %i.ch = icmp samesign ult i32 %i.ce, %i.by
  %spec.select.i4 = select i1 %i.cf, i1 %i.ch, i1 %i.cg
  br i1 %spec.select.i4, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = cmpxchg ptr %i.bz, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ci, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit

bb.z:                                             ; preds = %bb.x
  %i.cj = call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.bw, i32 noundef range(i32 0, 1000000001) %i.by, i64 noundef %i.cd, i32 noundef %i.ce) ; 2 uses
  %i.ck = extractvalue { i64, i32 } %i.cj, 0
  %i.cl = extractvalue { i64, i32 } %i.cj, 1
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions12park_timeout(i64 noundef %i.ck, i32 noundef %i.cl)
  br label %.split.i

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit: ; preds = %bb.y
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ci, 0
  switch i64 %.sroa.01.0.i.i.i, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.aa
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !328

bb.aa:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #30
  unreachable

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.y, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !329
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !329
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20disconnect_receiversB2D_:bb.a
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.av, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i31.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.ax, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.ax, %.sroa.0.02.i27.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i.i34.i, 0
  br i1 %i.ay, label %.preheader.i.i32.i, label %.loopexit.i.thread.i31.i

.loopexit.i.thread.i31.i:                         ; preds = %.preheader.i.i32.i, %.loopexit.i.i28.i
  %i.az = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i: ; preds = %.loopexit.i.thread.i31.i, %.loopexit.i.i28.i
  %.sroa.0.1.i30.i = phi i32 [ %i.az, %.loopexit.i.thread.i31.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i28.i ]
  %i.ba = load atomic i64, ptr %i.ar acquire, align 8
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i26.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i, %bb.e
  %i.bd = load i8, ptr %i.aq, align 8, !range !4, !alias.scope !571, !noundef !3
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.i

bb.f:                                             ; preds = %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  tail call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit.i: ; preds = %bb.f, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2A_.exit.i
  %.sroa.011.2.i = phi ptr [ %i.ao, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2A_.exit.i ], [ %.sroa.011.145.i, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2x_.exit.i ], [ %.sroa.011.145.i, %bb.f ] ; 2 uses
  %i.bg = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bh = lshr i64 %i.bg, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bh, %i.p
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2D_.exit: ; preds = %._crit_edge49.i, %bb.c
  %i.bi = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bi, ptr %0 release, align 128
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2D_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20disconnect_receiversB2E_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.04042.i = phi i32 [ %.sroa.0.2.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.04042.i, 11
  br i1 %i.i, label %.loopexit.i.thread.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.j, %.sroa.0.04042.i
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.k, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.l = add nuw nsw i32 %.sroa.0.04042.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %.loopexit.i.thread.i ], [ %.sroa.0.04042.i, %.loopexit.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.n = and i64 %i.m, 62
  %i.o = icmp eq i64 %i.n, 62
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.2.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %i.p = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.q = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %i.t = lshr i64 %i.q, 1                         ; 3 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.t, %i.p
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.f, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.f ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bc, %bb.f ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2E_.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.f
  %i.ad = phi i64 [ %i.bd, %bb.f ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bc, %bb.f ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.f ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1496, i64 noundef 8) #18
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2E_.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 1488 ; 3 uses
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2B_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  %i.aj = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.02.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic ptr, ptr %i.af acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2B_.exit.i

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2B_.exit.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  %1 = load atomic ptr, ptr %i.af acquire, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1496, i64 noundef 8) #18
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph48.i
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.145.i, i64 %i.ae ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = and i64 %i.ar, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i26.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2y_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.au = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.au, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.av, label %.loopexit.i.thread.i31.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.aw, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.aw, %.sroa.0.02.i27.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i34.i, 0
  br i1 %i.ax, label %.preheader.i.i32.i, label %.loopexit.i.thread.i31.i

.loopexit.i.thread.i31.i:                         ; preds = %.preheader.i.i32.i, %.loopexit.i.i28.i
  %i.ay = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i: ; preds = %.loopexit.i.thread.i31.i, %.loopexit.i.i28.i
  %.sroa.0.1.i30.i = phi i32 [ %i.ay, %.loopexit.i.thread.i31.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i28.i ]
  %i.az = load atomic i64, ptr %i.aq acquire, align 8
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i26.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2y_.exit.i

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2y_.exit.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i, %bb.e
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.ap)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2y_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2B_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_writeB2y_.exit.i ], [ %1, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9wait_nextB2B_.exit.i ] ; 2 uses
  %i.bc = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bd, %i.p
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2E_.exit: ; preds = %._crit_edge49.i, %bb.c
  %i.be = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.be, ptr %0 release, align 128
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20discard_all_messagesB2E_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2D_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.c = load i64, ptr %i.b, align 8, !range !151, !alias.scope !574, !noalias !577, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !579
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !574, !noalias !577, !nonnull !3, !align !27, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !4, !alias.scope !574, !noalias !577, !noundef !3
  store ptr %i.f, ptr %i.a, align 8, !noalias !579
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !579
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #31
          to label %bb.d unwind label %bb.c, !noalias !574

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.e, !noalias !574

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !574
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !574, !noalias !577, !nonnull !3, !align !27, !noundef !3 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !4, !alias.scope !574, !noalias !577, !noundef !3 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !4, !noundef !3
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  br i1 %i.s, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit13, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  store i8 1, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !580, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !580, !noundef !3 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.x, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.aa, %.noexc5 ], [ %i.v, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !580, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 32
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 2 acq_rel acquire, align 8, !noalias !580
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.g, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %bb.f
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t) #26
          to label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !580, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !580, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.ah = atomicrmw xchg ptr %i.ag, i32 1 release, align 4, !noalias !580
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.h, label %.noexc5

bb.h:                                             ; preds = %bb.g
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ag)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc5:                                          ; preds = %bb.h, %bb.g, %.lr.ph.i
  %i.ak = icmp eq ptr %i.aa, %i.y
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge.i11, %._crit_edge.i
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.m, i8 %i.o) #29
          to label %common.resume unwind label %bb.o

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !583, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !583, !noundef !3 ; 2 uses
  %.idx.i6 = mul nuw nsw i64 %i.ap, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i6
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.i11, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit, %.noexc12
  %.sroa.0.03.i8 = phi ptr [ %i.as, %.noexc12 ], [ %i.an, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i8, i64 24 ; 2 uses
  %.sroa.0.0.val.i9 = load ptr, ptr %.sroa.0.03.i8, align 8, !noalias !583, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i9, i64 32
  %i.au = cmpxchg ptr %i.at, i64 0, i64 2 acq_rel acquire, align 8, !noalias !583
  %.sroa.18.0.in.i.i.i10 = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i10, label %bb.i, label %.noexc12

._crit_edge.i11:                                  ; preds = %.noexc12, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit
end_hunk_2
begin_hunk_3_@_RNvMs4_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputbNtNtB1g_6marker4SendEL_EEE3newCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %0, ptr nonnull %1) #29
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !775
  %i.k = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 40, 73) 40, i64 noundef 8) #18, !noalias !775 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputbNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #31
          to label %.noexc32 unwind label %bb.g

.noexc32:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #29
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputbNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 -1, 1
  ret { ptr, i64 } %i.p

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs4_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEE3newCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.d, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 4
  %.sroa.02.sroa.5.sroa.4.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.02.sroa.5.sroa.4.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.sroa.5.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.02.sroa.5.sroa.5.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.sroa.6.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.sroa.5.sroa.6.0..sroa.02.sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !778
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 40, 73) 72, i64 noundef 8) #18, !noalias !778 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %0, ptr nonnull %1) #29
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !781
  %i.k = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 40, 73) 40, i64 noundef 8) #18, !noalias !781 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputuNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #31
          to label %.noexc30 unwind label %bb.g

.noexc30:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #29
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputuNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 -1, 1
  ret { ptr, i64 } %i.p

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputbNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = cmpxchg ptr %0, i64 1, i64 0 monotonic monotonic, align 8, !noalias !784
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  fence acquire
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload7 = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload9 = load ptr, ptr %.sroa.6.0..sroa_idx8, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload11 = load i64, ptr %.sroa.8.0..sroa_idx10, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  store ptr %0, ptr %i.a, align 8, !noalias !784
  call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1O_6future6future6Futurep6OutputbNtNtB1O_6marker4SendEL_EEEENtNtNtB1O_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  %i.f = icmp eq ptr %.sroa.0.0.copyload7, null
  br i1 %i.f, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.b

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.6.020 = phi ptr [ %.sroa.6.0.copyload9, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.020) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.6.020, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.l, !prof !28

bb.b:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload7, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0.copyload9, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.copyload11, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.4.0.copyload.cast = inttoptr i64 %.sroa.8.0.copyload11 to ptr
  %i.j = icmp eq ptr %.sroa.6.0.copyload9, null
  br i1 %i.j, label %bb.i, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.l, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !793, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !793
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.6.0.copyload9, ptr %.sroa.4.0.copyload.cast) #29
          to label %bb.e unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.f, %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.p = atomicrmw sub ptr %.sroa.0.0.copyload7, i64 1 release, align 8, !noalias !794
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = trunc i64 %.sroa.8.0.copyload11 to i1
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4
  %.sroa.0.0 = phi i1 [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6 ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4 ]
  ret i1 %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %bb.n, %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.s, %bb.n ], [ %i.s, %bb.m ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31
          to label %bb.d unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !805, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !805
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.o:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !4, !alias.scope !806, !noundef !3
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = atomicrmw sub ptr %.sroa.6.020, i64 1 release, align 8, !noalias !809
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputuNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = cmpxchg ptr %0, i64 1, i64 0 monotonic monotonic, align 8, !noalias !814
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  fence acquire
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload6 = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload10 = load i64, ptr %.sroa.8.0..sroa_idx9, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !814
  store ptr %0, ptr %i.a, align 8, !noalias !814
  call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1O_6future6future6Futurep6OutputuNtNtB1O_6marker4SendEL_EEEENtNtNtB1O_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  %i.f = icmp eq ptr %.sroa.0.0.copyload6, null
  br i1 %i.f, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.b

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.6.015 = phi ptr [ %.sroa.6.0.copyload8, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.015) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.6.015, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.6.015, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.l, !prof !28

bb.b:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload6, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0.copyload8, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.copyload10, ptr %.sroa.8.0..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.8.0.copyload10 to ptr
  %i.j = icmp eq ptr %.sroa.6.0.copyload8, null
  br i1 %i.j, label %bb.i, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.l, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !823, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !823
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.6.0.copyload8, ptr %.cast) #29
          to label %bb.e unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.f, %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.p = atomicrmw sub ptr %.sroa.0.0.copyload6, i64 1 release, align 8, !noalias !824
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %bb.n, %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.r, %bb.n ], [ %i.r, %bb.m ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31
          to label %bb.d unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !835, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !835
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.o:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.v = atomicrmw sub ptr %.sroa.6.015, i64 1 release, align 8, !noalias !836
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2D_(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !3
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2E_(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !3
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.727.i = alloca [62 x i8], align 2        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419.i = alloca [62 x i8], align 2        ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.66.i = alloca [62 x i8], align 2         ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = load i64, ptr %1, align 8, !range !841, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.h, label %default.unreachable60 [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.aq
    i64 3, label %bb.bt
    i64 4, label %bb.bu
    i64 5, label %bb.bv
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noundef !3 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.k = load atomic i64, ptr %i.j monotonic, align 8, !noalias !845
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 400 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 392 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge, %bb.b
  %.sroa.0.023.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.023.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.04.0.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 7 uses
  %i.r = load i64, ptr %i.l, align 16, !noalias !845, !noundef !3
  %i.s = add i64 %i.r, -1
  %i.t = and i64 %i.s, %.sroa.04.0.i.i            ; 3 uses
  %i.u = load i64, ptr %i.m, align 8, !noalias !845, !noundef !3
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %.sroa.04.0.i.i, %i.v
  %i.x = load ptr, ptr %i.n, align 8, !noalias !845, !nonnull !3, !noundef !3
  %i.y = load i64, ptr %i.o, align 16, !noalias !845, !noundef !3
end_hunk_3
begin_hunk_4_@_RNvXs2_NtCs95DO3lnzZ3L_4moka6futureINtB5_11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1w_:bb.a
          to label %common.resume unwind label %bb.eh, !noalias !1268

bb.eg:                                            ; preds = %bb.ee
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1268
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuINtNtCshhQzAC5dGUF_17crossbeam_channel3err9SendErrorINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6expectB2Y_.exit: ; preds = %_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2p_.exit.thread, %_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2p_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ej

bb.ei:                                            ; preds = %bb.b
  %i.kx = load ptr, ptr %i.aj, align 8, !noundef !3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !noundef !3
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.7, ptr noundef nonnull align 2 dereferenceable(38) %i.la, i64 38, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lc = load i64, ptr %i.lb, align 8, !noundef !3
  %i.ld = ptrtoint ptr %i.kx to i64
  br label %bb.e

bb.ej:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuINtNtCshhQzAC5dGUF_17crossbeam_channel3err9SendErrorINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6expectB2Y_.exit
  ret void

bb.ek:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  invoke void @_RNvXsb_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %bb.eo unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.lf = load ptr, ptr %i.aj, align 8, !alias.scope !1277, !noundef !3 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %.body, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.lh = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !1278
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.en, label %.body

bb.en:                                            ; preds = %bb.em
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj) #27
          to label %.body unwind label %bb.er

bb.eo:                                            ; preds = %bb.ek
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.lj = load ptr, ptr %i.aj, align 8, !alias.scope !1286, !noundef !3 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ll = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !1287
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.eq:                                            ; preds = %bb.ep
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.es

bb.er:                                            ; preds = %bb.en
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ep, %bb.eo, %bb.eq
  %.pr = load i16, ptr %i.af, align 8
  %.not7 = icmp eq i16 %.pr, 2
  br i1 %.not7, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.ev

bb.es:                                            ; preds = %bb.eq
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.el, %bb.em, %bb.en, %bb.es
  %eh.lpad-body = phi { ptr, i32 } [ %i.lo, %bb.es ], [ %i.le, %bb.en ], [ %i.le, %bb.em ], [ %i.le, %bb.el ] ; 2 uses
  %i.lp = load i16, ptr %i.af, align 8, !range !73, !noundef !3
  %.not6 = icmp eq i16 %i.lp, 2
  br i1 %.not6, label %common.resume, label %bb.et

bb.et:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.af) #29
          to label %common.resume unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ev:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.c, %bb.ev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ej
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2D_(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(384) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit
  %.sroa.0.016 = phi i64 [ %i.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit ], [ %i.e, %bb.a ] ; 5 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 752, i64 noundef 8) #18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.sroa.06.015, align 8, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 752, i64 noundef 8) #18
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 8
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !4, !alias.scope !1292, !noundef !3
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2c_.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.015, %bb.e ], [ %.sroa.06.015, %bb.f ] ; 2 uses
  %i.q = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.q, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2E_(ptr noalias nofree noundef readonly align 128 captures(none) dereferenceable(384) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 128, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 128, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %bb.f ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.0.016 = phi i64 [ %i.n, %bb.f ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %bb.f ], [ %i.e, %bb.a ] ; 5 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1496, i64 noundef 8) #18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1488
  %i.l = load ptr, ptr %i.k, align 8, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1496, i64 noundef 8) #18
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.015, i64 %i.j
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %.sroa.06.015, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.n, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputbNtNtB1g_6marker4SendEL_EEEB2h_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = load ptr, ptr %0, align 8, !noundef !3   ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

.body61:                                          ; preds = %.body.thread, %bb.c, %.body
  %.sroa.026.0 = phi i8 [ %.sroa.026.2, %.body ], [ %.sroa.026.2101, %.body.thread ], [ %.sroa.026.1, %bb.c ]
  %.pn52 = phi { ptr, i32 } [ %.pn50, %.body ], [ %.pn50102, %.body.thread ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = trunc nuw i8 %.sroa.026.0 to i1
  br i1 %i.o, label %.body61..body61.thread_crit_edge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body61..body61.thread_crit_edge:                 ; preds = %.body61
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !1295
  br label %.body61.thread

bb.c:                                             ; preds = %.invoke, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.n, %bb.f, %bb.al, %bb.e
  %.sroa.026.1 = phi i8 [ 0, %bb.e ], [ 1, %bb.n ], [ 0, %bb.al ], [ 1, %.invoke ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i ], [ 1, %bb.x ], [ 1, %bb.f ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.d:                                             ; preds = %bb.a
  store ptr %i.n, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  %i.v = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 4 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = invoke fastcc noundef zeroext i1 @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputbNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.v)
          to label %bb.af unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val59 = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %.val60 = load ptr, ptr %1, align 8             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1300
  %i.z = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.z)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.aa = load i64, ptr %i.b, align 8, !range !151, !alias.scope !1303, !noalias !1306, !noundef !3
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1308
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1303, !noalias !1306, !nonnull !3, !align !27, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !4, !alias.scope !1303, !noalias !1306, !noundef !3
  store ptr %i.ad, ptr %i.a, align 8, !noalias !1308
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.af, ptr %i.ag, align 8, !noalias !1308
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #31
          to label %bb.i unwind label %bb.h, !noalias !1309

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1V_NtNtNtB4_4task4wake5WakerEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body61.thread unwind label %bb.j, !noalias !1309

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1309
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1303, !noalias !1306, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !4, !alias.scope !1303, !noalias !1306, !noundef !3 ; 2 uses
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1300
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !noalias !1300, !noundef !3
  %.not.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.aq = load i64, ptr %i.y, align 8, !alias.scope !1300, !noundef !3 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.p, label %bb.q

bb.l:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1300
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.aw = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc63 unwind label %bb.c

.noexc63:                                         ; preds = %bb.n
  br i1 %i.aw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc63
  store atomic i8 1, ptr %i.as monotonic, align 4, !noalias !1300
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.o, %.noexc63, %bb.m, %bb.l
  %i.ax = atomicrmw xchg ptr %i.ak, i32 0 release, align 4, !noalias !1300
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %bb.ag, !prof !29

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ak)
          to label %bb.ag unwind label %bb.c

bb.p:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %.val60, align 8, !noalias !1300, !nonnull !3, !align !27, !noundef !3
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1300, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.val60, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1300, !noundef !3
  %i.bd = invoke { ptr, ptr } %i.ba(ptr noundef %i.bc)
          to label %bb.t unwind label %bb.s, !noalias !1300 ; 2 uses

bb.q:                                             ; preds = %bb.k
  %i.be = invoke noundef nonnull align 8 ptr @_RNvXs5_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEEINtNtNtBE_3ops5index8IndexMutjE9index_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %bb.z unwind label %bb.s, !noalias !1300 ; 5 uses

bb.r:                                             ; preds = %bb.ad, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.bf, %bb.s ], [ %i.cb, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ak, i8 %i.am) #29
          to label %.body61.thread unwind label %bb.ae, !noalias !1300

bb.s:                                             ; preds = %._crit_edge.i, %bb.t, %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.p
  %i.bg = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %2 = extractvalue { ptr, ptr } %i.bd, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !1300, !noundef !3 ; 2 uses
  invoke void @_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE9insert_atCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao, i64 noundef %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.bg, ptr %2)
          to label %bb.u unwind label %bb.s, !noalias !1300

bb.u:                                             ; preds = %bb.t
  store i64 %i.bi, ptr %i.y, align 8, !alias.scope !1300
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.aa, %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1300
  %i.bl = and i64 %i.bk, 9223372036854775807
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  %i.bn = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc65 unwind label %bb.c

.noexc65:                                         ; preds = %bb.x
  br i1 %i.bn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.y

bb.y:                                             ; preds = %.noexc65
  store atomic i8 1, ptr %i.bj monotonic, align 4, !noalias !1300
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i: ; preds = %bb.y, %.noexc65, %bb.w, %bb.v
  %i.bo = atomicrmw xchg ptr %i.ak, i32 0 release, align 4, !noalias !1300
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %bb.ag, !prof !29

bb.z:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.be, align 8, !noalias !1300, !align !27, !noundef !3 ; 2 uses
  %i.br = getelementptr i8, ptr %i.be, i64 8      ; 4 uses
  %.not2.i = icmp eq ptr %i.bq, null
  %.pre.i = load ptr, ptr %.val60, align 8, !noalias !1300 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val60, i64 8
  %.pre5.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1300 ; 2 uses
  br i1 %.not2.i, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1300, !noundef !3
  %i.bt = icmp eq ptr %.pre5.i, %i.bs
  %i.bu = icmp eq ptr %.pre.i, %i.bq
  %or.cond.i = and i1 %i.bu, %i.bt
  br i1 %or.cond.i, label %bb.v, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa, %bb.z
  %i.bv = load ptr, ptr %.pre.i, align 8, !noalias !1300, !nonnull !3, !noundef !3
  %i.bw = invoke { ptr, ptr } %i.bv(ptr noundef %.pre5.i)
          to label %bb.ab unwind label %bb.s, !noalias !1300 ; 2 uses

bb.ab:                                            ; preds = %._crit_edge.i
  %i.bx = extractvalue { ptr, ptr } %i.bw, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %3 = extractvalue { ptr, ptr } %i.bw, 1         ; 2 uses
  %.val9.i = load ptr, ptr %i.be, align 8, !noalias !1300, !align !27, !noundef !3 ; 2 uses
  %i.by = icmp eq ptr %.val9.i, null
  br i1 %i.by, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val10.i = load ptr, ptr %i.br, align 8, !noalias !1300
  %i.bz = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1300, !nonnull !3, !noundef !3
  invoke void %i.ca(ptr noundef %.val10.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ad, !noalias !1300, !inline_history !1310

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bx, ptr %i.be, align 8, !noalias !1300
  store ptr %3, ptr %i.br, align 8, !noalias !1300
  br label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ac, %bb.ab
  store ptr %i.bx, ptr %i.be, align 8, !noalias !1300
  store ptr %3, ptr %i.br, align 8, !noalias !1300
  br label %bb.v

bb.ae:                                            ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1300
  unreachable

bb.af:                                            ; preds = %bb.e
  %i.cd = zext i1 %i.w to i8
  br label %bb.ca

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i
  %i.ce = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = cmpxchg ptr %i.ch, i64 0, i64 1 seq_cst seq_cst, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.ci, 0
  switch i64 %.sroa.01.0.i, label %.invoke [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.al
    i64 3, label %bb.am
  ], !prof !1311

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cj = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 5 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr @0, ptr %i.l, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cq = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  store ptr %i.cr, ptr %i.j, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i8 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 5 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !noundef !3
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.invoke181, label %bb.an, !prof !29

bb.ai:                                            ; preds = %bb.ag
  %i.cw = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.cx = load ptr, ptr %0, align 8, !alias.scope !1312, !noundef !3 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !1315
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.thread

bb.al:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.dc = invoke fastcc noundef zeroext i1 @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputbNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.db)
          to label %bb.ch unwind label %bb.c

bb.am:                                            ; preds = %bb.ag
  br label %.invoke

.invoke:                                          ; preds = %bb.ag, %bb.am
  %i.dd = phi ptr [ @74, %bb.am ], [ @14, %bb.ag ]
  %i.de = phi i64 [ 33, %bb.am ], [ 40, %bb.ag ]
  %i.df = phi ptr [ @75, %bb.am ], [ @76, %bb.ag ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.ah
  %i.dg = invoke noundef i8 @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputbNtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ap unwind label %bb.ao     ; 3 uses

.body:                                            ; preds = %bb.ao, %bb.cc, %.body80
  %.sroa.025.0 = phi i8 [ %.sroa.025.2, %bb.cc ], [ %.sroa.025.2, %.body80 ], [ %.sroa.025.1, %bb.ao ]
  %.sroa.026.2 = phi i8 [ %.sroa.026.3, %bb.cc ], [ %.sroa.026.3, %.body80 ], [ 1, %bb.ao ] ; 2 uses
  %.pn50 = phi { ptr, i32 } [ %.pn.pn, %bb.cc ], [ %.pn.pn, %.body80 ], [ %i.di, %bb.ao ] ; 2 uses
  %i.dh = trunc nuw i8 %.sroa.025.0 to i1
  br i1 %i.dh, label %.body.thread, label %.body61

bb.ao:                                            ; preds = %.invoke181, %bb.ce, %bb.ax, %bb.an
  %.sroa.025.1 = phi i8 [ 1, %bb.an ], [ 0, %bb.ce ], [ 1, %.invoke181 ], [ 1, %bb.ax ]
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.an
  store i8 1, ptr %i.cs, align 8
  %i.dj = icmp eq i8 %i.dg, 2
  br i1 %i.dj, label %bb.cd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val57 = load ptr, ptr %i.ct, align 8, !noundef !3 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.cj, i64 32     ; 3 uses
  %.val58 = load ptr, ptr %i.dk, align 8          ; 6 uses
  %.not.i73 = icmp eq ptr %.val57, null
  br i1 %.not.i73, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58) ]
  %i.dl = load ptr, ptr %.val58, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void %i.dl(ptr noundef nonnull %.val57)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %.val58, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !22, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef range(i64 1, -9223372036854775808) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #18
  br label %bb.ax

bb.av:                                            ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = getelementptr inbounds nuw i8, ptr %.val58, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.thread97, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !22, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef range(i64 1, -9223372036854775808) %i.dt, i64 noundef range(i64 1, 536870913) %i.dw) #18
  br label %.thread97

.thread97:                                        ; preds = %bb.aw, %bb.av
  store ptr null, ptr %i.ct, align 8
  store i8 %i.dg, ptr %i.dk, align 8
  br label %.body.thread

bb.ax:                                            ; preds = %bb.aq, %bb.at, %bb.au
  store ptr null, ptr %i.ct, align 8
  store i8 %i.dg, ptr %i.dk, align 8
  %i.dx = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  store atomic i64 2, ptr %i.dy seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dz = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.ea)
          to label %bb.ay unwind label %bb.ao

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.eb = load i64, ptr %i.h, align 8, !range !151, !alias.scope !1320, !noalias !1323, !noundef !3
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %bb.az, label %bb.bd, !prof !29

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1325
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !1320, !noalias !1323, !nonnull !3, !align !27, !noundef !3
end_hunk_4
begin_hunk_5_@_RNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputbNtNtB1g_6marker4SendEL_EEEB2h_4pollCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  store ptr %i.cw, ptr %0, align 8
  br label %bb.ca

bb.ch:                                            ; preds = %bb.al
  %i.gk = zext i1 %i.dc to i8
  br label %bb.ca

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split: ; preds = %.thread, %.body61.thread114
  %.sink = phi ptr [ %i.gd, %.body61.thread114 ], [ %i.cw, %.thread ]
  %.pn5296.ph = phi { ptr, i32 } [ %i.gi, %.body61.thread114 ], [ %i.gj, %.thread ]
  store ptr %.sink, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split, %bb.by, %.body61.thread, %bb.ci, %.body61
  %.pn5296 = phi { ptr, i32 } [ %i.fs, %bb.by ], [ %.pn52, %.body61 ], [ %.pn52113, %bb.ci ], [ %.pn52113, %.body61.thread ], [ %.pn5296.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split ]
  resume { ptr, i32 } %.pn5296

.body61.thread:                                   ; preds = %.body61..body61.thread_crit_edge, %bb.h, %bb.r
  %i.gl = phi ptr [ %.pre, %.body61..body61.thread_crit_edge ], [ %i.v, %bb.r ], [ %i.v, %bb.h ]
  %.pn52113 = phi { ptr, i32 } [ %.pn52, %.body61..body61.thread_crit_edge ], [ %.pn.i, %bb.r ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.gm = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !1295
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ci:                                            ; preds = %.body61.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.cb
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEEB2h_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = load ptr, ptr %0, align 8, !noundef !3   ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

.body53:                                          ; preds = %.body.thread, %bb.c, %.body
  %.sroa.018.0 = phi i8 [ %.sroa.018.2, %.body ], [ %.sroa.018.293, %.body.thread ], [ %.sroa.018.1, %bb.c ]
  %.pn44 = phi { ptr, i32 } [ %.pn42, %.body ], [ %.pn4294, %.body.thread ], [ %i.p, %bb.c ] ; 2 uses
  %i.o = trunc nuw i8 %.sroa.018.0 to i1
  br i1 %i.o, label %.body53..body53.thread_crit_edge, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.body53..body53.thread_crit_edge:                 ; preds = %.body53
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !1349
  br label %.body53.thread

bb.c:                                             ; preds = %.invoke172, %.invoke, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %bb.m, %bb.e
  %.sroa.018.1 = phi i8 [ 1, %bb.e ], [ 1, %bb.m ], [ 0, %.invoke172 ], [ 1, %.invoke ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i ], [ 1, %bb.w ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.d:                                             ; preds = %bb.a
  store ptr %i.n, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = icmp eq i64 %i.t, 2
  %i.v = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 4 uses
  br i1 %i.u, label %.invoke172, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val51 = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3
  %.val52 = load ptr, ptr %1, align 8             ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1354
  %i.y = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.y)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.z = load i64, ptr %i.b, align 8, !range !151, !alias.scope !1357, !noalias !1360, !noundef !3
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1362
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1357, !noalias !1360, !nonnull !3, !align !27, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !4, !alias.scope !1357, !noalias !1360, !noundef !3
  store ptr %i.ac, ptr %i.a, align 8, !noalias !1362
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ae, ptr %i.af, align 8, !noalias !1362
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #31
          to label %bb.h unwind label %bb.g, !noalias !1363

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1V_NtNtNtB4_4task4wake5WakerEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body53.thread unwind label %bb.i, !noalias !1363

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1363
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1357, !noalias !1360, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !4, !alias.scope !1357, !noalias !1360, !noundef !3 ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1354
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !noalias !1354, !noundef !3
  %.not.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %i.ap = load i64, ptr %i.x, align 8, !alias.scope !1354, !noundef !3 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %bb.o, label %bb.p

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1D_NtNtNtB4_4task4wake5WakerEEEEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1354
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.av = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc55 unwind label %bb.c

.noexc55:                                         ; preds = %bb.m
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc55
  store atomic i8 1, ptr %i.ar monotonic, align 4, !noalias !1354
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %.noexc55, %bb.l, %bb.k
  %i.aw = atomicrmw xchg ptr %i.aj, i32 0 release, align 4, !noalias !1354
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %bb.ae, !prof !29

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aj)
          to label %bb.ae unwind label %bb.c

bb.o:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %.val52, align 8, !noalias !1354, !nonnull !3, !align !27, !noundef !3
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1354, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.val52, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1354, !noundef !3
  %i.bc = invoke { ptr, ptr } %i.az(ptr noundef %i.bb)
          to label %bb.s unwind label %bb.r, !noalias !1354 ; 2 uses

bb.p:                                             ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvXs5_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEEINtNtNtBE_3ops5index8IndexMutjE9index_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %bb.y unwind label %bb.r, !noalias !1354 ; 5 uses

bb.q:                                             ; preds = %bb.ac, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.r ], [ %i.ca, %bb.ac ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.aj, i8 %i.al) #29
          to label %.body53.thread unwind label %bb.ad, !noalias !1354

bb.r:                                             ; preds = %._crit_edge.i, %bb.s, %bb.p, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.o
  %i.bf = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %2 = extractvalue { ptr, ptr } %i.bc, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !1354, !noundef !3 ; 2 uses
  invoke void @_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE9insert_atCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.an, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.bf, ptr %2)
          to label %bb.t unwind label %bb.r, !noalias !1354

bb.t:                                             ; preds = %bb.s
  store i64 %i.bh, ptr %i.x, align 8, !alias.scope !1354
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.z, %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1354
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.w, !prof !28

bb.w:                                             ; preds = %bb.v
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc57 unwind label %bb.c

.noexc57:                                         ; preds = %bb.w
  br i1 %i.bm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i, label %bb.x

bb.x:                                             ; preds = %.noexc57
  store atomic i8 1, ptr %i.bi monotonic, align 4, !noalias !1354
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i: ; preds = %bb.x, %.noexc57, %bb.v, %bb.u
  %i.bn = atomicrmw xchg ptr %i.aj, i32 0 release, align 4, !noalias !1354
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %bb.ae, !prof !29

bb.y:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.bd, align 8, !noalias !1354, !align !27, !noundef !3 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bd, i64 8      ; 4 uses
  %.not2.i = icmp eq ptr %i.bp, null
  %.pre.i = load ptr, ptr %.val52, align 8, !noalias !1354 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val52, i64 8
  %.pre5.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1354 ; 2 uses
  br i1 %.not2.i, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1354, !noundef !3
  %i.bs = icmp eq ptr %.pre5.i, %i.br
  %i.bt = icmp eq ptr %.pre.i, %i.bp
  %or.cond.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %bb.u, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %i.bu = load ptr, ptr %.pre.i, align 8, !noalias !1354, !nonnull !3, !noundef !3
  %i.bv = invoke { ptr, ptr } %i.bu(ptr noundef %.pre5.i)
          to label %bb.aa unwind label %bb.r, !noalias !1354 ; 2 uses

bb.aa:                                            ; preds = %._crit_edge.i
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %3 = extractvalue { ptr, ptr } %i.bv, 1         ; 2 uses
  %.val9.i = load ptr, ptr %i.bd, align 8, !noalias !1354, !align !27, !noundef !3 ; 2 uses
  %i.bx = icmp eq ptr %.val9.i, null
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val10.i = load ptr, ptr %i.bq, align 8, !noalias !1354
  %i.by = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1354, !nonnull !3, !noundef !3
  invoke void %i.bz(ptr noundef %.val10.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ac, !noalias !1354, !inline_history !1310

bb.ac:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bw, ptr %i.bd, align 8, !noalias !1354
  store ptr %3, ptr %i.bq, align 8, !noalias !1354
  br label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ab, %bb.aa
  store ptr %i.bw, ptr %i.bd, align 8, !noalias !1354
  store ptr %3, ptr %i.bq, align 8, !noalias !1354
  br label %bb.u

bb.ad:                                            ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1354
  unreachable

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i11.i
  %i.cc = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = cmpxchg ptr %i.cf, i64 0, i64 1 seq_cst seq_cst, align 8
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.cg, 0
  switch i64 %.sroa.01.0.i, label %.invoke [
    i64 0, label %bb.af
    i64 1, label %bb.ag
    i64 2, label %bb.aj
    i64 3, label %bb.ak
  ], !prof !1311

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ch = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 5 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr @0, ptr %i.l, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.co = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  store ptr %i.cp, ptr %i.j, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 5 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noundef !3
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke173, label %bb.al, !prof !29

bb.ag:                                            ; preds = %bb.ae
  %i.cu = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.cv = load ptr, ptr %0, align 8, !alias.scope !1364, !noundef !3 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !1367
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.thread

bb.aj:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  br label %.invoke172

.invoke172:                                       ; preds = %bb.d, %bb.aj
  %i.da = phi ptr [ %i.cz, %bb.aj ], [ %i.v, %bb.d ]
  invoke fastcc void @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputuNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.da)
          to label %bb.by unwind label %bb.c

bb.ak:                                            ; preds = %bb.ae
  br label %.invoke

.invoke:                                          ; preds = %bb.ae, %bb.ak
  %i.db = phi ptr [ @74, %bb.ak ], [ @14, %bb.ae ]
  %i.dc = phi i64 [ 33, %bb.ak ], [ 40, %bb.ae ]
  %i.dd = phi ptr [ @75, %bb.ak ], [ @76, %bb.ae ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.al:                                            ; preds = %bb.af
  %i.de = invoke noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.an unwind label %bb.am

.body:                                            ; preds = %bb.am, %bb.ca, %.body72
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.ca ], [ %.sroa.017.2, %.body72 ], [ %.sroa.017.1, %bb.am ]
  %.sroa.018.2 = phi i8 [ %.sroa.018.3, %bb.ca ], [ %.sroa.018.3, %.body72 ], [ 1, %bb.am ] ; 2 uses
  %.pn42 = phi { ptr, i32 } [ %.pn.pn, %bb.ca ], [ %.pn.pn, %.body72 ], [ %i.dg, %bb.am ] ; 2 uses
  %i.df = trunc nuw i8 %.sroa.017.0 to i1
  br i1 %i.df, label %.body.thread, label %.body53

bb.am:                                            ; preds = %.invoke173, %bb.cc, %bb.av, %bb.al
  %.sroa.017.1 = phi i8 [ 1, %bb.al ], [ 0, %bb.cc ], [ 1, %.invoke173 ], [ 1, %bb.av ]
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.al
  store i8 1, ptr %i.cq, align 8
  br i1 %i.de, label %bb.cb, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val49 = load ptr, ptr %i.cr, align 8, !noundef !3 ; 4 uses
  %i.dh = getelementptr i8, ptr %i.ch, i64 32
  %.val50 = load ptr, ptr %i.dh, align 8          ; 6 uses
  %.not.i65 = icmp eq ptr %.val49, null
  br i1 %.not.i65, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.di = load ptr, ptr %.val50, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void %i.di(ptr noundef nonnull %.val49)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dj = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !22, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef range(i64 1, -9223372036854775808) %i.dk, i64 noundef range(i64 1, 536870913) %i.dn) #18
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !21, !invariant.load !3 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.thread89, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ds = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !22, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef range(i64 1, -9223372036854775808) %i.dq, i64 noundef range(i64 1, 536870913) %i.dt) #18
  br label %.thread89

.thread89:                                        ; preds = %bb.au, %bb.at
  store ptr null, ptr %i.cr, align 8
  br label %.body.thread

bb.av:                                            ; preds = %bb.ao, %bb.ar, %bb.as
  store ptr null, ptr %i.cr, align 8
  %i.du = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  store atomic i64 2, ptr %i.dv seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dw = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.dx)
          to label %bb.aw unwind label %bb.am

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.dy = load i64, ptr %i.h, align 8, !range !151, !alias.scope !1372, !noalias !1375, !noundef !3
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.ax, label %bb.bb, !prof !29

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1377
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !1372, !noalias !1375, !nonnull !3, !align !27, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ed = load i8, ptr %i.ec, align 8, !range !4, !alias.scope !1372, !noalias !1375, !noundef !3
  store ptr %i.eb, ptr %i.c, align 8, !noalias !1377
end_hunk_5
