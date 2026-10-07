Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests_common-3924943f92a9c076.iceoryx2_cal_conformance_tests_common.22ffcff195fdbced-cgu.15?download=true
inline.NumInlined: 458
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait36blocking_wait_blocks_until_triggeredNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #13
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait36blocking_wait_blocks_until_triggeredNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [792 x i8], align 8               ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [856 x i8], align 8               ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [264 x i8], align 8               ; 4 uses
  %i.v = alloca [264 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.u) #12
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.u) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB2_14BarrierBuilder6create(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 8 %i.t) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.w = load i32, ptr %i.r, align 8, !range !17, !alias.scope !487, !noalias !488, !noundef !5
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !489
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.z = load i32, ptr %i.y, align 4, !range !18, !alias.scope !487, !noalias !488, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !487, !noalias !488
  store i32 %i.z, ptr %i.b, align 4, !noalias !489
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !noalias !489
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13, !noalias !487
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !487, !noalias !488, !nonnull !5, !align !6, !noundef !5
  store ptr %i.ae, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtNtB7_11ipc_capable6Handle3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([856 x i8]) align 8 captures(none) dereferenceable(856) %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB5_12MutexBuilder3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.l) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configNtNtNtB4_5event20unix_datagram_socket9EventImplECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(address) dereferenceable(792) %i.k) #12
  call void @_RINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_12MutexBuilder6createNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %i.k, ptr noundef nonnull align 8 %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.af = load i32, ptr %i.m, align 8, !range !17, !alias.scope !490, !noalias !491, !noundef !5
  %i.ag = trunc nuw i32 %i.af to i1
  br i1 %i.ag, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtBK_18MutexCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !492
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !range !19, !alias.scope !490, !noalias !491, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !490, !noalias !491
  store i32 %i.ai, ptr %i.c, align 4, !noalias !492
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !noalias !492
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #13, !noalias !490
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtBK_18MutexCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrier7BarrierNtBJ_20BarrierCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !490, !noalias !491, !nonnull !5, !align !6, !noundef !5
  store ptr %i.an, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.v, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.s, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.q, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.p, ptr %i.ar, align 8
  %i.as = call { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait36blocking_wait_blocks_until_triggeredNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorE0ECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j) #12 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i = icmp eq i32 %i.at, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtBK_18MutexCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.au = extractvalue { i32, i32 } %i.as, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  store i32 %i.at, ptr %i.a, align 4, !noalias !493
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.au, ptr %i.av, align 4, !noalias !493
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtBK_18MutexCreationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aw = load atomic i64, ptr %i.p monotonic, align 8 ; 2 uses
  store i64 %i.aw, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @13, ptr %i.g, align 8, !captures !4
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvXsj_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket13ConfigurationENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(856) %i.o) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 800
  call void @_RNvXs1_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB5_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ay) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix7barrierNtB5_13BarrierHandleNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #12
  call void @_RNvXs1_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB5_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux17pthread_barrier_tENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select = select i1 %i.az, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select26 = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select, ptr %i.f, align 8, !captures !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select26, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink25 = select i1 %i.bb, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink24 = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink25, ptr %i.e, align 8, !captures !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink24, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.bd, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRyNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.be, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRyNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.bf, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #13
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait38attach_the_same_attachment_twice_failsNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1056 x i8], align 8              ; 3 uses
  %i.n = alloca [544 x i8], align 8               ; 6 uses
  %i.o = alloca [544 x i8], align 8               ; 7 uses
  %i.p = alloca [264 x i8], align 8               ; 4 uses
  %i.q = alloca [264 x i8], align 8               ; 4 uses
  %i.r = alloca [792 x i8], align 8               ; 4 uses
  %i.s = alloca [136 x i8], align 8               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.s) #12
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE6create(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i8, ptr %i.v, align 4, !range !14, !alias.scope !510, !noalias !511, !noundef !5
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !512
  %i.y = load i8, ptr %i.t, align 8, !range !7, !alias.scope !510, !noalias !511, !noundef !5
  store i8 %i.y, ptr %i.b, align 1, !noalias !512
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #13, !noalias !513
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !513, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configNtNtNtB4_5event20unix_datagram_socket9EventImplECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(address) dereferenceable(792) %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.p) #12
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXsf_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtNtB9_13named_concept19NamedConceptBuilderNtB5_9EventImplE3new(ptr noalias nofree noundef nonnull sret([1056 x i8]) align 8 captures(none) dereferenceable(1056) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.q) #12
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.z, ptr noundef nonnull align 8 dereferenceable(792) %i.r, i64 792, i1 false)
  call void @_RNvXsg_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtB7_15ListenerBuilderNtB5_9EventImplE6create(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(none) dereferenceable(544) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1056) %i.m) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !range !14, !alias.scope !516, !noalias !517, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !518
  %i.ad = load i8, ptr %i.n, align 8, !range !14, !alias.scope !516, !noalias !517, !noundef !5
  store i8 %i.ad, ptr %i.a, align 1, !noalias !518
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !519
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(544) %i.n, i64 544, i1 false), !alias.scope !519, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXs_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtB7_7Reactor6attachNtNtNtB9_5event20unix_datagram_socket8ListenerECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %i.o) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !521, !noalias !522, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !523
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !11, !alias.scope !521, !noalias !522, !noundef !5
  store i8 %i.ah, ptr %i.c, align 1, !noalias !523
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #13, !noalias !521
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !521, !noalias !522, !nonnull !5, !align !20, !noundef !5
  store ptr %i.ae, ptr %i.l, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvXs_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtB7_7Reactor6attachNtNtNtB9_5event20unix_datagram_socket8ListenerECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.al = load ptr, ptr %i.h, align 8, !noundef !5
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !range !11 ; 2 uses
  %storemerge = select i1 %i.am, i8 %i.ao, i8 -1
  store i8 %storemerge, ptr %i.i, align 1
  br i1 %i.am, label %bb.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

bb.e:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %0 = phi i8 [ -1, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.ao, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @18, ptr %i.g, align 8, !captures !4
  %i.ap = icmp eq i8 %0, 0
  br i1 %i.ap, label %bb.g, label %bb.f, !prof !21

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll10EpollGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvXs7_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_10EpollGuardNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #12
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select = select i1 %i.aq, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select20 = select i1 %i.aq, i64 9, i64 0
  store ptr %spec.select, ptr %i.f, align 8, !captures !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select20, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.as = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink19 = select i1 %i.as, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink18 = select i1 %i.as, i64 4, i64 0
  store ptr %.sink19, ptr %i.e, align 8, !captures !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink18, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %i.au, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.av, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.aw, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvXs7_NtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epollNtB5_10EpollGuardNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_20UnixDatagramReceiverNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.o) #12
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.ax) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !range !14, !alias.scope !524, !noundef !5
  %i.ba = icmp eq i8 %i.az, 2
  br i1 %i.ba, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.bb) #12
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait38attach_the_same_attachment_twice_failsNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1056 x i8], align 8              ; 3 uses
  %i.n = alloca [544 x i8], align 8               ; 6 uses
  %i.o = alloca [544 x i8], align 8               ; 7 uses
  %i.p = alloca [264 x i8], align 8               ; 4 uses
  %i.q = alloca [264 x i8], align 8               ; 4 uses
  %i.r = alloca [792 x i8], align 8               ; 4 uses
  %i.s = alloca [168 x i8], align 8               ; 6 uses
  %i.t = alloca [160 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_selectNtB5_14ReactorBuilderINtB7_14ReactorBuilderNtB5_7ReactorE6create(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.s) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.u = load i8, ptr %i.s, align 8, !range !7, !alias.scope !537, !noalias !538, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorNtBL_18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !7, !alias.scope !537, !noalias !538, !noundef !5
  store i8 %i.x, ptr %i.a, align 1, !noalias !539
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #13, !noalias !540
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorNtBL_18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.y, i64 160, i1 false), !alias.scope !540, !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configNtNtNtB4_5event20unix_datagram_socket9EventImplECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(address) dereferenceable(792) %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.p) #12
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXsf_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtNtB9_13named_concept19NamedConceptBuilderNtB5_9EventImplE3new(ptr noalias nofree noundef nonnull sret([1056 x i8]) align 8 captures(none) dereferenceable(1056) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.q) #12
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.z, ptr noundef nonnull align 8 dereferenceable(792) %i.r, i64 792, i1 false)
  call void @_RNvXsg_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_15ListenerBuilderINtB7_15ListenerBuilderNtB5_9EventImplE6create(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(none) dereferenceable(544) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1056) %i.m) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !range !14, !alias.scope !543, !noalias !544, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorNtBL_18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !545
  %i.ad = load i8, ptr %i.n, align 8, !range !14, !alias.scope !543, !noalias !544, !noundef !5
  store i8 %i.ad, ptr %i.b, align 1, !noalias !545
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13, !noalias !546
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_select7ReactorNtBL_18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(544) %i.n, i64 544, i1 false), !alias.scope !546, !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_selectNtB6_7ReactorNtB8_7Reactor6attachNtNtNtBa_5event20unix_datagram_socket8ListenerECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.o) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !548, !noalias !549, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !550
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !range !11, !alias.scope !548, !noalias !549, !noundef !5
  store i8 %i.ah, ptr %i.c, align 1, !noalias !550
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #13, !noalias !548
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerNtBL_19ListenerCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !548, !noalias !549, !nonnull !5, !align !20, !noundef !5
  store ptr %i.ae, ptr %i.l, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor12posix_selectNtB6_7ReactorNtB8_7Reactor6attachNtNtNtBa_5event20unix_datagram_socket8ListenerECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.al = load ptr, ptr %i.h, align 8, !noundef !5
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !range !11 ; 2 uses
  %storemerge = select i1 %i.am, i8 %i.ao, i8 -1
  store i8 %storemerge, ptr %i.i, align 1
  br i1 %i.am, label %bb.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

bb.e:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %0 = phi i8 [ -1, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.ao, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @18, ptr %i.g, align 8, !captures !4
  %i.ap = icmp eq i8 %0, 0
  br i1 %i.ap, label %bb.g, label %bb.f, !prof !21

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_set22FileDescriptorSetGuardNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB4_22FileDescriptorSetGuardNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #12
  br label %bb.e

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select = select i1 %i.aq, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select20 = select i1 %i.aq, i64 9, i64 0
  store ptr %spec.select, ptr %i.f, align 8, !captures !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %spec.select20, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.as = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink19 = select i1 %i.as, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink18 = select i1 %i.as, i64 4, i64 0
  store ptr %.sink19, ptr %i.e, align 8, !captures !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink18, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %i.au, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.av, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorAttachErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.aw, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB4_22FileDescriptorSetGuardNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_20UnixDatagramReceiverNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.o) #12
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.t) #12
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait38timed_wait_blocks_for_at_least_timeoutNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 12 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [1088 x i8], align 8              ; 6 uses
  %i.z = alloca [136 x i8], align 8               ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.z) #12
  call void @_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll12EpollBuilderINtB7_14ReactorBuilderNtBR_5EpollE6create(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.z) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ad = load i8, ptr %i.ac, align 4, !range !14, !alias.scope !570, !noalias !571, !noundef !5
  %i.ae = icmp eq i8 %i.ad, 2
  br i1 %i.ae, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  %i.af = load i8, ptr %i.aa, align 8, !range !7, !alias.scope !570, !noalias !571, !noundef !5
  store i8 %i.af, ptr %i.b, align 1, !noalias !572
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #13, !noalias !573
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !alias.scope !573, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvMNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_traitNtB2_20NotifierListenerPair3new(ptr noalias nofree noundef nonnull sret([1088 x i8]) align 8 captures(none) dereferenceable(1088) %i.y) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 544 ; 3 uses
  call void @_RINvXs_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtB7_7Reactor6attachNtNtNtB9_5event20unix_datagram_socket8ListenerECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull align 8 %i.ag) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time3now(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.aj = load i32, ptr %i.u, align 8, !range !18, !alias.scope !576, !noalias !575, !noundef !5
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !577
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !17, !alias.scope !576, !noalias !575, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !576, !noalias !575
  store i32 %i.am, ptr %i.a, align 4, !noalias !577
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !noalias !577
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13, !noalias !577
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor18ReactorCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RINvXs_NtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor5epollNtNtCsd8n3bqkFlU6_17iceoryx2_bb_linux5epoll5EpollNtB7_7Reactor10timed_waitNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests13reactor_trait13reactor_trait38timed_wait_blocks_for_at_least_timeoutBP_E0ECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef 0, i32 noundef 50000000) #12
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @41, ptr %i.r, align 8, !captures !4
  %i.aq = load i8, ptr %i.s, align 8, !range !7, !alias.scope !578, !noalias !579, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val2.i = load i64, ptr %i.as, align 8
  %i.at = icmp eq i64 %.val2.i, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false, !prof !22
  br i1 %or.cond, label %bb.d, label %_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultjNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor16ReactorWaitErrorENtNtB7_3cmp9PartialEq2eqCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, !prof !22

_RNvXsw_NtCs8Chj7Szqq0n_4core6resultINtB5_6ResultjNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor16ReactorWaitErrorENtNtB7_3cmp9PartialEq2eqCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.au = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %spec.select = select i1 %i.au, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select60 = select i1 %i.au, i64 9, i64 0
  store ptr %spec.select, ptr %i.q, align 8, !captures !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %spec.select60, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aw = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #12 ; 2 uses
  %.sink51 = select i1 %i.aw, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink50 = select i1 %i.aw, i64 4, i64 0
  store ptr %.sink51, ptr %i.p, align 8, !captures !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sink50, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.q, ptr %i.o, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.42.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %i.ay, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultjNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor16ReactorWaitErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.46.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.r, ptr %i.az, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6result6ResultjNtNtCs7gufeB8TUC6_12iceoryx2_cal7reactor16ReactorWaitErrorENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.p, ptr %i.ba, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock4TimeNtBJ_9TimeErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time7elapsed(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !range !9, !alias.scope !580, !noundef !5 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtB4_4time8DurationNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9TimeErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !15

end_hunk_0
begin_hunk_1_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait12remove_worksINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common
; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait16does_exist_worksINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait23cannot_be_created_twiceINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait24cannot_open_non_existingINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait25list_and_does_exist_worksINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait32custom_suffix_ensures_separationINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait44defaults_for_configuration_are_set_correctlyINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait51drop_does_not_panic_when_concept_is_already_removedINtB4_18DynamicStorageTestINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local7StorageyEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait12remove_worksINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2n_15dynamic_storage13process_local7StorageNtB2h_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait16does_exist_worksINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2r_15dynamic_storage13process_local7StorageNtB2l_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait23cannot_be_created_twiceINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2y_15dynamic_storage13process_local7StorageNtB2s_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait24cannot_open_non_existingINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2z_15dynamic_storage13process_local7StorageNtB2t_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait25list_and_does_exist_worksINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2A_15dynamic_storage13process_local7StorageNtB2u_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait32custom_suffix_ensures_separationINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2H_15dynamic_storage13process_local7StorageNtB2B_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait44defaults_for_configuration_are_set_correctlyINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB2T_15dynamic_storage13process_local7StorageNtB2N_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19named_concept_trait19named_concept_trait51drop_does_not_panic_when_concept_is_already_removedINtB4_22ZeroCopyConnectionTestINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details10ConnectionINtNtNtB30_15dynamic_storage13process_local7StorageNtB2U_20SharedManagementDataEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait18size_of_zero_failsINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB1Z_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB1Z_15dynamic_storage4file7StorageINtB1T_16AllocatorDetailsB32_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait19non_zero_size_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB20_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB20_15dynamic_storage4file7StorageINtB1U_16AllocatorDetailsB33_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait23create_after_drop_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB24_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB24_15dynamic_storage4file7StorageINtB1Y_16AllocatorDetailsB37_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait23creating_it_twice_failsINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB24_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB24_15dynamic_storage4file7StorageINtB1Y_16AllocatorDetailsB37_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait26opening_non_existing_failsINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB27_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB27_15dynamic_storage4file7StorageINtB21_16AllocatorDetailsB3a_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait29allocation_with_creator_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2a_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2a_15dynamic_storage4file7StorageINtB24_16AllocatorDetailsB3d_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait32abandoning_keeps_resources_aliveINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2d_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2d_15dynamic_storage4file7StorageINtB27_16AllocatorDetailsB3g_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait39allocated_chunks_have_correct_alignmentINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2k_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2k_15dynamic_storage4file7StorageINtB2e_16AllocatorDetailsB3n_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait40allocation_with_creator_and_client_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2l_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2l_15dynamic_storage4file7StorageINtB2f_16AllocatorDetailsB3o_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait44defaults_for_configuration_are_set_correctlyINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2p_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2p_15dynamic_storage4file7StorageINtB2j_16AllocatorDetailsB3s_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait47shm_does_not_remove_resources_without_ownershipINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2s_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2s_15dynamic_storage4file7StorageINtB2m_16AllocatorDetailsB3v_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests19shared_memory_trait19shared_memory_trait48acquired_ownership_leads_to_cleaned_up_resourcesINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2t_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2t_15dynamic_storage4file7StorageINtB2n_16AllocatorDetailsB3w_EEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait21add_and_acquire_worksINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait25add_and_acquire_all_worksINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait33add_acquire_and_acquire_all_worksINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait36add_max_trigger_id_and_acquire_worksINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait37add_until_full_and_then_acquire_worksINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests22event_id_tracker_trait22event_id_tracker_trait40max_trigger_id_must_be_at_least_capacityINtNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc7bit_set7details6BitSetINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8EEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests33arc_sync_policy_abandonable_trait33arc_sync_policy_abandonable_trait39create_and_locked_access_to_value_worksINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedNtNtCslCQgxiHprg6_19iceoryx2_bb_testing15abandon_tracker13AbandonTackerEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_CsfYvvZIldtH5_9inventoryNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseNtB4_10ErasedNode6submitCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRmNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread18ThreadSetNameErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs7gufeB8TUC6_12iceoryx2_cal5event9TriggerIdINtNtNtBa_5slice4iter4IterB14_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { noinline nounwind }
attributes #15 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{}
!6 = !{i64 8}
!7 = !{i8 0, i8 2}
!8 = !{i32 -2, i32 1000000003}
!9 = !{i32 -1, i32 1000000000}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i8 0, i8 4}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i8 0, i8 3}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i32 0, i32 2}
!18 = !{i32 0, i32 3}
!19 = !{i32 0, i32 8}
!20 = !{i64 4}
!21 = !{!"branch_weights", i32 4000000, i32 4001}
!22 = !{!"branch_weights", i32 -2146410, i32 2146410}
!23 = !{i64 0, i64 3}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{i8 0, i8 5}
!26 = distinct !{!26, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_61blocking_send_returns_when_backpressure_handler_retries_twiceB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!27 = distinct !{!27, !26, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_61blocking_send_returns_when_backpressure_handler_retries_twiceB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!28 = distinct !{!28, !26, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_61blocking_send_returns_when_backpressure_handler_retries_twiceB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!29 = distinct !{!29, !26, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_61blocking_send_returns_when_backpressure_handler_retries_twiceB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!30 = distinct !{!30, !26, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_61blocking_send_returns_when_backpressure_handler_retries_twiceB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!31 = distinct !{!31, !10}
!32 = !{!27}
!33 = !{!28}
!34 = !{!29}
!35 = !{!30}
!36 = distinct !{!36, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!37 = distinct !{!37, !36, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!38 = distinct !{!38, !36, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!39 = distinct !{!39, !36, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!40 = distinct !{!40, !36, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!41 = distinct !{!41, !10}
!42 = !{!37}
!43 = !{!38}
!44 = !{!39}
!45 = !{!40}
!46 = distinct !{!46, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!47 = distinct !{!47, !46, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!48 = distinct !{!48, !46, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!49 = distinct !{!49, !46, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!50 = distinct !{!50, !46, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!51 = distinct !{!51, !10}
!52 = !{!47}
!53 = !{!48}
!54 = !{!49}
!55 = !{!50}
!56 = distinct !{!56, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!57 = distinct !{!57, !56, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!58 = distinct !{!58, !56, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!59 = distinct !{!59, !56, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!60 = distinct !{!60, !56, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3q_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB63_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!61 = distinct !{!61, !10}
!62 = !{!57}
!63 = !{!58}
!64 = !{!59}
!65 = !{!60}
!66 = distinct !{!66, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!67 = distinct !{!67, !66, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!68 = distinct !{!68, !66, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!69 = distinct !{!69, !66, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!70 = distinct !{!70, !66, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!71 = distinct !{!71, !10}
!72 = !{!67}
!73 = !{!68}
!74 = !{!69}
!75 = !{!70}
!76 = distinct !{!76, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!77 = distinct !{!77, !76, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!78 = distinct !{!78, !76, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!79 = distinct !{!79, !76, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!80 = distinct !{!80, !76, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!81 = distinct !{!81, !10}
!82 = !{!77}
!83 = !{!78}
!84 = !{!79}
!85 = !{!80}
!86 = distinct !{!86, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!87 = distinct !{!87, !86, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!88 = distinct !{!88, !86, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!89 = distinct !{!89, !86, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!90 = distinct !{!90, !86, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!91 = distinct !{!91, !10}
!92 = !{!87}
!93 = !{!88}
!94 = !{!89}
!95 = !{!90}
!96 = distinct !{!96, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!97 = distinct !{!97, !96, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!98 = distinct !{!98, !96, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!99 = distinct !{!99, !96, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!100 = distinct !{!100, !96, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!101 = distinct !{!101, !10}
!102 = !{!97}
!103 = !{!98}
!104 = !{!99}
!105 = !{!100}
!106 = distinct !{!106, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!107 = distinct !{!107, !106, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!108 = distinct !{!108, !106, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!109 = distinct !{!109, !106, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!110 = distinct !{!110, !106, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage13process_local7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!111 = distinct !{!111, !10}
!112 = !{!107}
!113 = !{!108}
!114 = !{!109}
!115 = !{!110}
!116 = distinct !{!116, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_61blocking_send_returns_when_backpressure_handler_retries_twiceB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!117 = distinct !{!117, !116, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_61blocking_send_returns_when_backpressure_handler_retries_twiceB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!118 = distinct !{!118, !116, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_61blocking_send_returns_when_backpressure_handler_retries_twiceB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!119 = distinct !{!119, !116, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_61blocking_send_returns_when_backpressure_handler_retries_twiceB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!120 = distinct !{!120, !116, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_61blocking_send_returns_when_backpressure_handler_retries_twiceB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!121 = distinct !{!121, !10}
!122 = !{!117}
!123 = !{!118}
!124 = !{!119}
!125 = !{!120}
!126 = distinct !{!126, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!127 = distinct !{!127, !126, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!128 = distinct !{!128, !126, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!129 = distinct !{!129, !126, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!130 = distinct !{!130, !126, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!131 = distinct !{!131, !10}
!132 = !{!127}
!133 = !{!128}
!134 = !{!129}
!135 = !{!130}
!136 = distinct !{!136, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!137 = distinct !{!137, !136, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!138 = distinct !{!138, !136, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!139 = distinct !{!139, !136, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!140 = distinct !{!140, !136, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!141 = distinct !{!141, !10}
!142 = !{!137}
!143 = !{!138}
!144 = !{!139}
!145 = !{!140}
!146 = distinct !{!146, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!147 = distinct !{!147, !146, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!148 = distinct !{!148, !146, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!149 = distinct !{!149, !146, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!150 = distinct !{!150, !146, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3w_73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsB69_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!151 = distinct !{!151, !10}
!152 = !{!147}
!153 = !{!148}
!154 = !{!149}
!155 = !{!150}
!156 = distinct !{!156, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!157 = distinct !{!157, !156, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!158 = distinct !{!158, !156, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!159 = distinct !{!159, !156, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!160 = distinct !{!160, !156, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait61blocking_send_returns_when_backpressure_handler_retries_twiceINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!161 = distinct !{!161, !10}
!162 = !{!157}
!163 = !{!158}
!164 = !{!159}
!165 = !{!160}
!166 = distinct !{!166, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!167 = distinct !{!167, !166, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!168 = distinct !{!168, !166, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!169 = distinct !{!169, !166, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!170 = distinct !{!170, !166, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait69blocking_send_returns_when_backpressure_handler_retries_until_timeoutINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!171 = distinct !{!171, !10}
!172 = !{!167}
!173 = !{!168}
!174 = !{!169}
!175 = !{!170}
!176 = distinct !{!176, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!177 = distinct !{!177, !176, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!178 = distinct !{!178, !176, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!179 = distinct !{!179, !176, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!180 = distinct !{!180, !176, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait71blocking_send_returns_when_backpressure_handler_discards_pointer_offsetINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!181 = distinct !{!181, !10}
!182 = !{!177}
!183 = !{!178}
!184 = !{!179}
!185 = !{!180}
!186 = distinct !{!186, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!187 = distinct !{!187, !186, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!188 = distinct !{!188, !186, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!189 = distinct !{!189, !186, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!190 = distinct !{!190, !186, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait73blocking_send_returns_when_backpressure_handler_aborts_delivery_and_failsINtB8_10ConnectionB1u_EE0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!191 = distinct !{!191, !10}
!192 = !{!187}
!193 = !{!188}
!194 = !{!189}
!195 = !{!190}
!196 = distinct !{!196, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!197 = distinct !{!197, !196, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!198 = distinct !{!198, !196, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!199 = distinct !{!199, !196, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!200 = distinct !{!200, !196, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage19posix_shared_memory7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait28follow_backpressure_stratetyE0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!201 = distinct !{!201, !10}
!202 = !{!197}
!203 = !{!198}
!204 = !{!199}
!205 = !{!200}
!206 = distinct !{!206, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_61blocking_send_returns_when_backpressure_handler_retries_twiceB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!207 = distinct !{!207, !206, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_61blocking_send_returns_when_backpressure_handler_retries_twiceB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!208 = distinct !{!208, !206, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_61blocking_send_returns_when_backpressure_handler_retries_twiceB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!209 = distinct !{!209, !206, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_61blocking_send_returns_when_backpressure_handler_retries_twiceB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!210 = distinct !{!210, !206, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_61blocking_send_returns_when_backpressure_handler_retries_twiceB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!211 = distinct !{!211, !10}
!212 = !{!207}
!213 = !{!208}
!214 = !{!209}
!215 = !{!210}
!216 = distinct !{!216, i1 false, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common"}
!217 = distinct !{!217, !216, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0"}
!218 = distinct !{!218, !216, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:pre.rot"}
!219 = distinct !{!219, !216, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:Peel0"}
!220 = distinct !{!220, !216, !"_RNCINvXsc_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB8_6SenderINtNtNtBe_15dynamic_storage4file7StorageNtB8_20SharedManagementDataEENtBc_14ZeroCopySender13blocking_sendNCINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests26zero_copy_connection_trait26zero_copy_connection_trait55blocking_send_returns_when_backpressure_handler_is_usedINtB8_10ConnectionB1u_ENCINvB3g_69blocking_send_returns_when_backpressure_handler_retries_until_timeoutB5T_E0E0E0Cs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common: argument 0:h.rot"}
!221 = distinct !{!221, !10}
end_hunk_1
