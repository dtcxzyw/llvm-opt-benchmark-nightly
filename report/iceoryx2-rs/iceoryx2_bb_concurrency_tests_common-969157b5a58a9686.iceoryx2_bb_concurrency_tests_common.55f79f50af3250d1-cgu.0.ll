Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_concurrency_tests_common-969157b5a58a9686.iceoryx2_bb_concurrency_tests_common.55f79f50af3250d1-cgu.0?download=true
inline.NumInlined: 278
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common24strategy_semaphore_tests11wait_blocks0EB12_:_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !387
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common24strategy_semaphore_tests11wait_blocks00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #10, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !385
  store i64 %i.ff, ptr %i.bj, align 8, !noalias !385
  %i.fg = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E4pushCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bj) #10, !noalias !390 ; 2 uses
  %.not.i14.i.i = icmp eq i8 %i.fg, 2
  br i1 %.not.i14.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, label %bb.av, !prof !14

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !385
  store i8 %i.fg, ptr %i.b, align 1, !noalias !385
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 37, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #11, !noalias !390
  unreachable

bb.aw:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.at, %bb.as, %bb.ar
  %.sroa.4.0.i.ph.i = phi i32 [ undef, %bb.ar ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.as ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ undef, %bb.ar ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.at ], [ undef, %bb.ar ]
  %.sroa.0.0.i.ph.i = phi i32 [ %.sroa.27.8.ph.i.i, %bb.ar ], [ 14, %bb.as ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ %.sroa.27.8.ph.i.i, %bb.ar ], [ 15, %bb.at ], [ %.sroa.27.8.ph.i.i, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  store i32 %.sroa.0.0.i.ph.i, ptr %i.a, align 4, !noalias !391
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.i.ph.i, ptr %i.fh, align 4, !noalias !391
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #11
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !384
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9nanosleep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bs, i64 noundef 0, i32 noundef 25000000) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !range !15, !alias.scope !392, !noalias !393, !noundef !4
  %.not.i.i = icmp eq i32 %i.fj, -1
  br i1 %.not.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !noalias !393
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 43, ptr noundef nonnull %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #11, !noalias !392
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !384
  %i.fk = load atomic i32, ptr %1 monotonic, align 4, !noalias !384 ; 2 uses
  store i32 %i.fk, ptr %i.br, align 4, !noalias !384
  call void @_RINvMNtNtCsdPvzwAcGc8J_29iceoryx2_pal_concurrency_sync8strategy9semaphoreNtB3_9Semaphore4postNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common24strategy_semaphore_tests11wait_blocks0s_0EB1B_(ptr noundef nonnull align 8 %0, i64 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !384
  store ptr %i.br, ptr %i.bq, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !384
  store ptr @72, ptr %i.bp, align 8, !noalias !384, !captures !11
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %_RNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common24strategy_semaphore_tests11wait_blocks0B5_.exit, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !384
  %i.fm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %spec.select.i = select i1 %i.fm, ptr @39, ptr inttoptr (i64 1 to ptr)
  %spec.select38.i = select i1 %i.fm, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.bo, align 8, !noalias !384, !captures !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %spec.select38.i, ptr %i.fn, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !384
  %i.fo = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #10 ; 2 uses
  %.sink33.i = select i1 %i.fo, ptr @40, ptr inttoptr (i64 1 to ptr)
  %.sink32.i = select i1 %i.fo, i64 4, i64 0
  store ptr %.sink33.i, ptr %i.bn, align 8, !noalias !384, !captures !11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sink32.i, ptr %i.fp, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !384
  store ptr %i.bo, ptr %i.bm, align 8, !noalias !384
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !384
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bq, ptr %i.fq, align 8, !noalias !384
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRmNtB6_5Debug3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !384
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bp, ptr %i.fr, align 8, !noalias !384
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRmNtB6_5Debug3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !384
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr %i.bn, ptr %i.fs, align 8, !noalias !384
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !384
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @123, ptr noundef nonnull %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #11
  unreachable

_RNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common24strategy_semaphore_tests11wait_blocks0B5_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bt, ptr noundef nonnull align 8 dereferenceable(4104) %i.bu, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bt) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 3 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [1088 x i8], align 8             ; 14 uses
  %i.bx = alloca [4104 x i8], align 8             ; 4 uses
  %i.by = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1076
  %i.ca = load <2 x ptr>, ptr %0, align 8, !alias.scope !410, !noalias !411
  %i.cb = load ptr, ptr %0, align 8, !alias.scope !410, !noalias !411, !nonnull !4, !align !5, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %1 = load <4 x ptr>, ptr %i.cc, align 8, !alias.scope !410, !noalias !411 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !410, !noalias !411, !nonnull !4, !align !6, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.d

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @_RINvMNtNtCsdPvzwAcGc8J_29iceoryx2_pal_concurrency_sync8strategy7barrierNtB3_7Barrier4waitNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0s_0NCB1r_s0_0EB1x_(ptr noundef nonnull align 8 %i.cb) #10, !noalias !410
  call void @_RNvMNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_testsINtB2_12ThreadInWaitKj5_E35block_until_all_threads_are_waitingB4_(ptr noundef nonnull align 4 %i.cd) #10, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !412
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9nanosleep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bv, i64 noundef 0, i32 noundef 25000000) #10, !noalias !410
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !range !15, !alias.scope !413, !noalias !414, !noundef !4
  %.not.i.i = icmp eq i32 %i.cy, -1
  br i1 %.not.i.i, label %_RNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0B5_.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !noalias !414
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 43, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #11, !noalias !416
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, %bb.a
  %.sroa.08.0108.i = phi i64 [ 0, %bb.a ], [ %i.cz, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i ]
  %i.cz = add nuw nsw i64 %.sroa.08.0108.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !412
  store ptr %i.by, ptr %i.bz, align 8, !noalias !412
  store i64 0, ptr %i.bw, align 8, !noalias !412
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !412
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !412
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !412
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !412
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !412
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !412
  %i.da = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !411, !noalias !417, !noundef !4
  %i.db = icmp eq i64 %i.da, 128
  br i1 %i.db, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.bw, i64 1080, i1 false), !noalias !419
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !418
  %i.dc = load i8, ptr %i.ce, align 2, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = load i8, ptr %i.cf, align 1, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.h, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !422
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !422
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !422
  store ptr @22, ptr %i.bn, align 8, !noalias !422
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bo, ptr noundef nonnull @23, ptr noundef nonnull %i.bn) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !422
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i: ; preds = %bb.az, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 56, i1 false), !noalias !422
  store ptr %i.bq, ptr %i.ch, align 8, !noalias !422
  store ptr %i.bq, ptr %i.cg, align 8, !noalias !422
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all00E0NCB3J_s_0E6createB4A_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bg) #10, !noalias !423
  %i.dg = load i32, ptr %i.bh, align 8, !range !8, !noalias !422, !noundef !4
  %i.dh = trunc nuw i32 %i.dg to i1
  br i1 %i.dh, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.di = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #10, !noalias !423 ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 1024
  br i1 %i.dj, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %.add.i.i.i = add nuw nsw i64 %i.di, 16         ; 2 uses
  %i.dk = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.dk, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.di, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #11, !noalias !423
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i.i.i: ; preds = %bb.i, %bb.az
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.az ], [ %.add.i.i.i, %bb.i ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.gi, %bb.az ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !422
  store i64 %.sroa.8.0242.i.i.i, ptr %i.bm, align 8, !noalias !422
  %i.dl = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ba, label %bb.az

bb.k:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !range !10, !noalias !422, !noundef !4
  %i.dp = load i32, ptr %i.ci, align 8, !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !422
  br label %bb.bc

bb.l:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.ci, align 8, !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !422
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.bi, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !422
  store ptr @1, ptr %i.bf, align 8, !noalias !422, !captures !11
  store i64 24, ptr %i.cj, align 8, !noalias !422
  %i.dq = load i64, ptr %i.ck, align 8, !alias.scope !420, !noalias !421, !noundef !4
  %i.dr = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.bi, i64 noundef %i.dq) #10, !noalias !423
  %i.ds = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dr) #10, !noalias !423 ; 3 uses
  switch i32 %i.ds, label %bb.m [
    i32 0, label %bb.n
    i32 22, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !422
  store i32 %i.ds, ptr %i.bc, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !422
  store ptr %i.bq, ptr %i.bb, align 8, !noalias !422
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !422
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !422
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.dt, align 8, !noalias !422
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bb, ptr noundef nonnull @13, ptr noundef nonnull %i.ba) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !422
  br label %bb.ay

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !422
  store ptr @2, ptr %i.az, align 8, !noalias !422, !captures !11
  store i64 53, ptr %i.cl, align 8, !noalias !422
  %i.du = load i8, ptr %i.cm, align 4, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.dv = xor i8 %i.du, 1
  %not..i.i.i = zext nneg i8 %i.dv to i32
  %i.dw = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.bi, i32 noundef %not..i.i.i) #10, !noalias !423
  %i.dx = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.dw) #10, !noalias !423 ; 3 uses
  switch i32 %i.dx, label %bb.p [
    i32 0, label %bb.q
    i32 38, label %bb.r
    i32 95, label %bb.s
  ]

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !422
  store ptr %i.bq, ptr %i.be, align 8, !noalias !422
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !422
  store ptr %i.bf, ptr %i.bd, align 8, !noalias !422
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.be, ptr noundef nonnull @19, ptr noundef nonnull %i.bd) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !422
  br label %bb.ay

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !422
  store i32 %i.dx, ptr %i.au, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !422
  store ptr %i.bq, ptr %i.at, align 8, !noalias !422
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !422
  store ptr %i.az, ptr %i.as, align 8, !noalias !422
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.dy, align 8, !noalias !422
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.at, ptr noundef nonnull @13, ptr noundef nonnull %i.as) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !422
  br label %bb.ax

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !422
  store ptr @3, ptr %i.ar, align 8, !noalias !422, !captures !11
  store i64 30, ptr %i.cn, align 8, !noalias !422
  %i.dz = load i32, ptr %i.co, align 8, !range !12, !alias.scope !420, !noalias !421, !noundef !4
  %i.ea = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.bi, i32 noundef %i.dz) #10, !noalias !423
  %i.eb = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.ea) #10, !noalias !423 ; 3 uses
  switch i32 %i.eb, label %bb.t [
    i32 0, label %bb.u
    i32 38, label %bb.v
    i32 95, label %bb.w
end_hunk_0
begin_hunk_1_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0EB12_:bb.a
bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !422
  store ptr %i.bq, ptr %i.ao, align 8, !noalias !422
  %.sroa.494.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.494.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !422
  store ptr %i.ar, ptr %i.an, align 8, !noalias !422
  %.sroa.4109.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !422
  br label %bb.aw

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !422
  store i32 %i.eg, ptr %i.af, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !422
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !422
  %.sroa.4121.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !422
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !422
  %.sroa.4133.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.eh, align 8, !noalias !422
  %.sroa.4137.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !422
  br label %bb.ar

bb.y:                                             ; preds = %bb.u
  %i.ei = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !420, !noalias !421, !noundef !4
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !422
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !422
  %.sroa.4125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !422
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !422
  %.sroa.4129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !422
  br label %bb.ar

bb.aa:                                            ; preds = %bb.y
  %i.ek = load i64, ptr %i.cr, align 8, !alias.scope !420, !noalias !421, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !422
  store ptr @5, ptr %i.ac, align 8, !noalias !422, !captures !11
  store i64 36, ptr %i.cs, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !422
  %i.el = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #10, !noalias !423 ; 2 uses
  store i64 %i.el, ptr %i.ab, align 8, !noalias !422
  %i.em = icmp ult i64 %i.ek, %i.el
  br i1 %i.em, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.ae, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !422
  %i.en = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #10, !noalias !423 ; 3 uses
  %i.eo = call i64 @llvm.umin.i64(i64 %i.en, i64 1024) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ab
  %xtraiter = and i64 %i.eo, 1
  %i.ep = icmp eq i64 %i.en, 1
  br i1 %i.ep, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.eo, 2046
  br label %.lr.ph.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.eq = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.ek) #10, !noalias !423
  %i.er = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.eq) #10, !noalias !423 ; 3 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !422
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !422
  %.sroa.4141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !422
  store ptr %i.ac, ptr %i.z, align 8, !noalias !422
  %.sroa.4145.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.et = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.et, align 8, !noalias !422
  %.sroa.4149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !422
  br label %bb.av

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !422
  br label %bb.ab

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !422
  store i32 %i.er, ptr %i.y, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !422
  store ptr %i.bq, ptr %i.x, align 8, !noalias !422
  %.sroa.4153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !422
  store ptr %i.ac, ptr %i.w, align 8, !noalias !422
  %.sroa.4157.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.eu, align 8, !noalias !422
  %.sroa.4161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !422
  br label %bb.av

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.at
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0162.0245.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fq, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod451 = trunc i64 %i.eo to i1
  call void @llvm.assume(i1 %lcmp.mod451)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.0162.0245.i.i.i.epil.init
  %i.ew = load i8, ptr %i.ev, align 1, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ey = trunc i64 %.sroa.0162.0245.i.i.i.epil.init to i8
  %i.ez = and i8 %i.ey, 7
  %i.fa = shl nuw i8 1, %i.ez
  %i.fb = lshr i64 %.sroa.0162.0245.i.i.i.epil.init, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fb ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !422, !noundef !4
  %i.fe = or i8 %i.fd, %i.fa
  store i8 %i.fe, ptr %i.fc, align 1, !noalias !422
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.ag, %.lr.ph.i.i.i.epil.preheader, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !422
  store ptr @7, ptr %i.u, align 8, !noalias !422, !captures !11
  store i64 37, ptr %i.cu, align 8, !noalias !422
  %i.ff = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #10, !noalias !423
  %i.fg = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.ff) #10, !noalias !423 ; 3 uses
  switch i32 %i.fg, label %bb.ah [
    i32 0, label %bb.ai
    i32 12, label %bb.aj
    i32 22, label %bb.ak
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.at, %.lr.ph.i.i.i.preheader.new
  %.sroa.0162.0245.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fq, %bb.at ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.fh = or disjoint i64 %.sroa.0162.0245.i.i.i, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.0162.0245.i.i.i
  %i.fj = load i8, ptr %i.fi, align 2, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.au, label %.lr.ph.i.i.i.1

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !422
  store i32 %i.fg, ptr %i.p, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !422
  store ptr %i.bq, ptr %i.o, align 8, !noalias !422
  %.sroa.4167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !422
  store ptr %i.u, ptr %i.n, align 8, !noalias !422
  %.sroa.4187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.fl, align 8, !noalias !422
  %.sroa.4191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !422
  br label %bb.aq

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !422
  %i.fm = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 72) #10, !noalias !423 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !421
  store <2 x ptr> %i.ca, ptr %i.fm, align 8, !noalias !423
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x ptr> %1, ptr %.sroa.719.0..sroa_idx.i, align 8, !noalias !423
  %.sroa.9.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !422
  store i64 0, ptr %i.m, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !422
  store ptr @8, ptr %i.l, align 8, !noalias !422, !captures !11
  store i64 23, ptr %i.cw, align 8, !noalias !422
  %i.fn = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all00uEB1H_, ptr noundef nonnull %i.fm) #10, !noalias !423
  %i.fo = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.fn) #10, !noalias !423 ; 3 uses
  switch i32 %i.fo, label %bb.al [
    i32 0, label %bb.bg
    i32 1, label %bb.am
    i32 11, label %bb.an
    i32 22, label %bb.ao
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !422
  store ptr %i.bq, ptr %i.r, align 8, !noalias !422
  %.sroa.4171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !422
  store ptr %i.u, ptr %i.q, align 8, !noalias !422
  %.sroa.4183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !422
  br label %bb.aq

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !422
  store ptr %i.bq, ptr %i.t, align 8, !noalias !422
  %.sroa.4175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !422
  store ptr %i.u, ptr %i.s, align 8, !noalias !422
  %.sroa.4179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !422
  br label %bb.aq

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !422
  store i32 %i.fo, ptr %i.e, align 4, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !422
  store ptr %i.bq, ptr %i.d, align 8, !noalias !422
  %.sroa.4196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !422
  store ptr %i.l, ptr %i.c, align 8, !noalias !422
  %.sroa.4224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fp, align 8, !noalias !422
  %.sroa.4228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !422
  br label %bb.ap

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !422
  store ptr %i.bq, ptr %i.g, align 8, !noalias !422
  %.sroa.4200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !422
  store ptr %i.l, ptr %i.f, align 8, !noalias !422
  %.sroa.4220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !422
  br label %bb.ap

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !422
  store ptr %i.bq, ptr %i.k, align 8, !noalias !422
  %.sroa.4208.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !422
  store ptr %i.l, ptr %i.j, align 8, !noalias !422
  %.sroa.4212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !422
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !422
  store ptr %i.bq, ptr %i.i, align 8, !noalias !422
  %.sroa.4204.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !422
  store ptr %i.l, ptr %i.h, align 8, !noalias !422
  %.sroa.4216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !422
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.27.6.i.i = phi i32 [ 13, %bb.al ], [ 3, %bb.am ], [ 1, %bb.an ], [ 2, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !422
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #10, !noalias !423
  br label %bb.bc

bb.aq:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.sroa.27.5.i.i = phi i32 [ 13, %bb.ah ], [ 0, %bb.aj ], [ 12, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !422
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %bb.aq, %bb.z, %bb.x
  %.sroa.50.sroa.0.4.i.i = phi i32 [ %i.eg, %bb.x ], [ %.sroa.50.sroa.0.7.i.i, %bb.av ], [ %i.fg, %bb.aq ], [ undef, %bb.z ]
  %.sroa.27.4.i.i = phi i32 [ 13, %bb.x ], [ %.sroa.27.7.i.i, %bb.av ], [ %.sroa.27.5.i.i, %bb.aq ], [ 11, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !422
  br label %bb.aw

.lr.ph.i.i.i.1:                                   ; preds = %bb.au, %.lr.ph.i.i.i
  %i.fq = add nuw nsw i64 %.sroa.0162.0245.i.i.i, 2 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.fh
  %i.fs = load i8, ptr %i.fr, align 1, !range !7, !alias.scope !420, !noalias !421, !noundef !4
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i.i.1
  %i.fu = trunc i64 %i.fh to i8
  %i.fv = and i8 %i.fu, 7
  %i.fw = shl nuw i8 1, %i.fv
  %i.fx = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fx ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !422, !noundef !4
  %i.ga = or i8 %i.fz, %i.fw
  store i8 %i.ga, ptr %i.fy, align 1, !noalias !422
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.gb = trunc i64 %.sroa.0162.0245.i.i.i to i8
  %i.gc = and i8 %i.gb, 6
  %i.gd = shl nuw nsw i8 1, %i.gc
  %i.ge = lshr i64 %.sroa.0162.0245.i.i.i, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !422, !noundef !4
  %i.gh = or i8 %i.gg, %i.gd
  store i8 %i.gh, ptr %i.gf, align 1, !noalias !422
  br label %.lr.ph.i.i.i.1

bb.av:                                            ; preds = %bb.af, %bb.ad
  %.sroa.50.sroa.0.7.i.i = phi i32 [ undef, %bb.ad ], [ %i.er, %bb.af ]
  %.sroa.27.7.i.i = phi i32 [ 7, %bb.ad ], [ 13, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !422
  br label %bb.ar

bb.aw:                                            ; preds = %bb.ar, %bb.w, %bb.v, %bb.t
  %.sroa.50.sroa.0.3.i.i = phi i32 [ %i.eb, %bb.t ], [ %.sroa.50.sroa.0.4.i.i, %bb.ar ], [ undef, %bb.v ], [ undef, %bb.w ]
  %.sroa.27.3.i.i = phi i32 [ 13, %bb.t ], [ %.sroa.27.4.i.i, %bb.ar ], [ 6, %bb.v ], [ 6, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !422
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.s, %bb.r, %bb.p
  %.sroa.50.sroa.0.2.i.i = phi i32 [ %i.dx, %bb.p ], [ %.sroa.50.sroa.0.3.i.i, %bb.aw ], [ undef, %bb.r ], [ undef, %bb.s ]
  %.sroa.27.2.i.i = phi i32 [ 13, %bb.p ], [ %.sroa.27.3.i.i, %bb.aw ], [ 10, %bb.r ], [ 10, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !422
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.o, %bb.m
  %.sroa.50.sroa.0.0.i.i = phi i32 [ %i.ds, %bb.m ], [ %.sroa.50.sroa.0.2.i.i, %bb.ax ], [ undef, %bb.o ]
  %.sroa.27.0.i.i = phi i32 [ 13, %bb.m ], [ %.sroa.27.2.i.i, %bb.ax ], [ 4, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !422
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #10, !noalias !423
  br label %bb.bc

bb.az:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i.i.i
  %i.gi = add nuw nsw i64 %.sroa.8.0242.i.i.i, 1
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !422
  %i.gj = icmp eq i64 %.sroa.0.0.add.i.i.i, 1040
  br i1 %i.gj, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i.i.i

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !422
  store ptr %i.bq, ptr %i.bl, align 8, !noalias !422
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !422
  %i.gk = add nsw i64 %i.di, -1
  store i64 %i.gk, ptr %i.bk, align 8, !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !422
  store ptr %i.bk, ptr %i.bj, align 8, !noalias !422
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.432.0..sroa_idx.i.i.i, align 8, !noalias !422
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bm, ptr %i.gl, align 8, !noalias !422
  %.sroa.436.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !noalias !422
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bl, ptr noundef nonnull @20, ptr noundef nonnull %i.bj) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !422
  br label %.thread.i.i

bb.bb:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !418
  store ptr %i.bw, ptr %i.bt, align 8, !noalias !418
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @_RNvXs1s_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_19ScopedThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !418
  store i64 128, ptr %i.bs, align 8, !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !418
  store ptr %i.bs, ptr %i.br, align 8, !noalias !418
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !418
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.bt, ptr noundef nonnull @30, ptr noundef nonnull %i.br) #10, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !418
  br label %bb.bi

.thread.i.i:                                      ; preds = %bb.ba, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !418
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay, %bb.ap, %bb.k
  %.sroa.50.sroa.0.8.ph.i.i = phi i32 [ %i.fo, %bb.ap ], [ %i.dp, %bb.k ], [ %.sroa.50.sroa.0.0.i.i, %bb.ay ] ; 2 uses
  %.sroa.27.8.ph.i.i = phi i32 [ %.sroa.27.6.i.i, %bb.ap ], [ %i.do, %bb.k ], [ %.sroa.27.0.i.i, %bb.ay ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !418
  switch i32 %.sroa.27.8.ph.i.i, label %default.unreachable [
    i32 0, label %bb.bi
    i32 1, label %bb.bi
    i32 2, label %bb.bi
    i32 3, label %bb.bi
    i32 4, label %bb.bi
    i32 5, label %bb.bi
    i32 6, label %bb.bi
    i32 7, label %bb.bi
    i32 8, label %bb.bi
    i32 9, label %bb.bi
    i32 10, label %bb.bi
    i32 11, label %bb.bi
    i32 12, label %bb.bd
    i32 13, label %bb.be
    i32 14, label %bb.bf
  ]

default.unreachable:                              ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bc, %.thread.i.i
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bc
  br label %bb.bi

bb.bg:                                            ; preds = %bb.ai
  %i.gm = load i64, ptr %i.m, align 8, !noalias !422, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !422
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #10, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !418
  store i64 %i.gm, ptr %i.bp, align 8, !noalias !418
  %i.gn = call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E4pushCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp) #10, !noalias !417 ; 2 uses
  %.not.i14.i.i = icmp eq i8 %i.gn, 2
  br i1 %.not.i14.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !418
  store i8 %i.gn, ptr %i.b, align 1, !noalias !418
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 37, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #11, !noalias !417
  unreachable

bb.bi:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.sroa.4.0.i.ph.i = phi i32 [ undef, %bb.bc ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.be ], [ undef, %bb.bd ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bc ], [ undef, %bb.bb ], [ %.sroa.50.sroa.0.8.ph.i.i, %bb.bf ], [ undef, %bb.bc ]
  %.sroa.0.0.i.ph.i = phi i32 [ %.sroa.27.8.ph.i.i, %bb.bc ], [ 14, %bb.be ], [ 12, %bb.bd ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ %.sroa.27.8.ph.i.i, %bb.bc ], [ 13, %bb.bb ], [ 15, %bb.bf ], [ %.sroa.27.8.ph.i.i, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  store i32 %.sroa.0.0.i.ph.i, ptr %i.a, align 4, !noalias !425
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.4.0.i.ph.i, ptr %i.go, align 4, !noalias !425
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #11, !noalias !410
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !412
  %exitcond.not.i = icmp eq i64 %i.cz, 5
  br i1 %exitcond.not.i, label %bb.b, label %bb.d

_RNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0B5_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !412
  %2 = extractelement <4 x ptr> %1, i64 1
  %3 = extractelement <4 x ptr> %1, i64 2
  call void @_RINvMs_NtNtCsdPvzwAcGc8J_29iceoryx2_pal_concurrency_sync8strategy18condition_variableNtB5_17ConditionVariable10notify_allNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_all_unblocks_all0s1_0EB23_(ptr noundef nonnull align 8 %2, ptr noundef nonnull align 4 %3) #10, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bx, ptr noundef nonnull align 8 dereferenceable(4104) %i.by, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_one_unblocks_one0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.9.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 3 uses
  %i.bv = alloca [64 x i8], align 8               ; 10 uses
  %i.bw = alloca [16 x i8], align 8               ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [4 x i8], align 4                ; 4 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [1088 x i8], align 8             ; 14 uses
  %i.cd = alloca [4104 x i8], align 8             ; 4 uses
  %i.ce = alloca [4104 x i8], align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 4096 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1076
  %i.cg = load <2 x ptr>, ptr %0, align 8, !alias.scope !441, !noalias !442
  %i.ch = load ptr, ptr %0, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !5, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.d

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i
  call void @_RINvMNtNtCsdPvzwAcGc8J_29iceoryx2_pal_concurrency_sync8strategy7barrierNtB3_7Barrier4waitNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_one_unblocks_one0s_0NCB1r_s0_0EB1x_(ptr noundef nonnull align 8 %i.ch) #10, !noalias !441
  call void @_RNvMNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_testsINtB2_12ThreadInWaitKj3_E35block_until_all_threads_are_waitingB4_(ptr noundef nonnull align 4 %i.cj) #10, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !443
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock9nanosleep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cb, i64 noundef 0, i32 noundef 25000000) #10, !noalias !441
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !range !15, !alias.scope !444, !noalias !445, !noundef !4
  %.not.i.i = icmp eq i32 %i.dk, -1
  br i1 %.not.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !noalias !445
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 43, ptr noundef nonnull %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #11, !noalias !447
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clock14NanosleepErrorE6unwrapCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !443
  %i.dl = load atomic i32, ptr %i.cp monotonic, align 4, !noalias !441 ; 2 uses
  store i32 %i.dl, ptr %i.ca, align 4, !noalias !443
  call void @_RINvMs_NtNtCsdPvzwAcGc8J_29iceoryx2_pal_concurrency_sync8strategy18condition_variableNtB5_17ConditionVariable10notify_oneNCNCNvNtCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common33strategy_condition_variable_tests23notify_one_unblocks_one0s1_0EB23_(ptr noundef nonnull align 8 %i.cl, ptr noundef nonnull align 4 %i.cn) #10, !noalias !441
  br label %bb.bm

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i, %bb.a
  %.sroa.028.0129.i = phi i64 [ 0, %bb.a ], [ %i.dm, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.i ]
  %i.dm = add nuw nsw i64 %.sroa.028.0129.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.5.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !443
  store ptr %i.ce, ptr %i.cf, align 8, !noalias !443
  store i64 0, ptr %i.cc, align 8, !noalias !443
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !443
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !443
  store i8 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !noalias !443
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !443
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !443
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !443
  %i.dn = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !442, !noalias !448, !noundef !4
  %i.do = icmp eq i64 %i.dn, 128
  br i1 %i.do, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.cc, i64 1080, i1 false), !noalias !450
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !449
  %i.dp = load i8, ptr %i.cq, align 2, !range !7, !alias.scope !451, !noalias !452, !noundef !4
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dr = load i8, ptr %i.cr, align 1, !range !7, !alias.scope !451, !noalias !452, !noundef !4
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.h, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs7nBjgsJFv3h_36iceoryx2_bb_concurrency_tests_common.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.e
end_hunk_1
