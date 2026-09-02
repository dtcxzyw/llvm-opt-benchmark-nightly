Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.12?download=true
inline.NumInlined: 1969
inline.NumDeleted: 1054
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE6retainNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB1y_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB1y_9dial_opts8DialOptsE0E0B2f_:bb.a
  %.not610.i.i.i.i = icmp ne ptr %i.k, null
  %.not11.i.i.i.i = select i1 %.not.i9.i.i.i.i, i1 %.not610.i.i.i.i, i1 false
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2h_EuB2W_NCINvNvB3U_3any5checkRB2h_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5U_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB5U_9dial_opts8DialOptsE00E0E0E0B6B_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.v, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2h_EuB2W_NCINvNvB3U_3any5checkRB2h_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5U_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB5U_9dial_opts8DialOptsE00E0E0E0B6B_.exit.i.i.i.i ]
  %i.n = call { ptr, ptr } @_RNvXsN_CsczYENlYh6wI_8smallvecRINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.m), !noalias !2374 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  store ptr %i.p, ptr %i.l, align 8, !alias.scope !2375, !noalias !2376
  call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2379
  store ptr %i.c, ptr %i.b, align 8, !noalias !2380
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.c ] ; 3 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2h_EuB2W_NCINvNvB3U_3any5checkRB2h_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5U_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB5U_9dial_opts8DialOptsE00E0E0E0B6B_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !alias.scope !2381, !noalias !2382
  %i.s = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtCsbli3iz7XG76_9multiaddr9MultiaddrNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2w_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB2w_9dial_opts8DialOptsE00E0INtB7_5FnMutTuB1K_EE8call_mutB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.q), !noalias !2383
  br i1 %i.s, label %bb.f, label %bb.d

_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2h_EuB2W_NCINvNvB3U_3any5checkRB2h_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5U_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB5U_9dial_opts8DialOptsE00E0E0E0B6B_.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2379
  %i.t = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i), !noalias !2374 ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %.not.i.i.i.i.i = icmp ne ptr %i.u, null
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  %.not6.i.i.i.i = icmp ne ptr %i.v, null
  %.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not6.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i, label %bb.c, label %.loopexit.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2379
  br label %bb.l

.loopexit.i.i:                                    ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2h_EuB2W_NCINvNvB3U_3any5checkRB2h_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5U_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB5U_9dial_opts8DialOptsE00E0E0E0B6B_.exit.i.i.i.i, %bb.b, %bb.a
  store ptr null, ptr %i.e, align 8, !alias.scope !2365, !noalias !2367
  %i.w = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2367, !noundef !12 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2386
  store ptr %i.c, ptr %i.a, align 8, !noalias !2387
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2388, !noalias !2389, !nonnull !12, !noundef !12
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.z = phi ptr [ %i.aa, %bb.i ], [ %i.w, %bb.g ] ; 3 uses
  %.not.not.not.i.not.not.not.i7.not.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.not.not.i.not.not.not.i7.not.i.i, label %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4s_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB4s_9dial_opts8DialOptsE00E0E0B59_.exit8.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2388, !noalias !2389
  %i.ab = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtCsbli3iz7XG76_9multiaddr9MultiaddrNCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2w_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB2w_9dial_opts8DialOptsE00E0INtB7_5FnMutTuB1K_EE8call_mutB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.z), !noalias !2390
  br i1 %i.ab, label %bb.j, label %bb.h

_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4s_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB4s_9dial_opts8DialOptsE00E0E0B59_.exit8.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2386
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2386
  br label %bb.l

bb.k:                                             ; preds = %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4s_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB4s_9dial_opts8DialOptsE00E0E0B59_.exit8.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !12
  call void %i.ad(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.ae, ptr noundef %i.ag, i64 noundef %i.ai), !inline_history !2364
  %i.aj = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  %i.ak = xor i1 %i.aj, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB8_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB8_9dial_opts8DialOptsE0BO_.exit

bb.l:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB8_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB8_9dial_opts8DialOptsE0BO_.exit

_RNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB8_5SwarmNtCsiLZOIpitoQl_15metrics_example9BehaviourE4dialNtNtB8_9dial_opts8DialOptsE0BO_.exit: ; preds = %bb.k, %bb.l
  %.sroa.0.0.i = phi i1 [ false, %bb.l ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE12insert_routeCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [136 x i8], align 8               ; 20 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 23 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [136 x i8], align 8               ; 22 uses
  %i.j = alloca [136 x i8], align 8               ; 13 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree13find_wildcard(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.q = load i64, ptr %i.p, align 8, !range !15, !noundef !12
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 133
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.3111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx118.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.397.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 133
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.3152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.389.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.492.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %bb.a

._crit_edge:                                      ; preds = %bb.ap, %.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8
  %i.ar = load <2 x i64>, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store <2 x i64> %i.ar, ptr %0, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.558.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8
  br label %bb.ao

bb.a:                                             ; preds = %.lr.ph, %bb.ap
  %.sroa.0.0298 = phi ptr [ %1, %.lr.ph ], [ %i.dx, %bb.ap ] ; 24 uses
  %.sroa.050.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.451.0.copyload = load i64, ptr %.sroa.451.0..sroa_idx, align 8 ; 11 uses
  %.sroa.552.0.copyload = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.as = trunc nuw i64 %.sroa.050.0.copyload to i1
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %i.au = load i64, ptr %i.t, align 8, !noundef !12 ; 3 uses
  %i.av = icmp ult i64 %.sroa.552.0.copyload, %.sroa.451.0.copyload
  br i1 %i.av, label %bb.i, label %bb.g, !prof !17

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 120
  store i32 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 124
  store i32 %3, ptr %i.ax, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.sink.split unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0298, ptr %i.bd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ao

bb.g:                                             ; preds = %bb.b
  %i.be = sub nuw i64 %.sroa.552.0.copyload, %.sroa.451.0.copyload ; 4 uses
  %.not = icmp ugt i64 %.sroa.552.0.copyload, %i.au
  br i1 %.not, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp ugt i64 %i.be, 1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.451.0.copyload, i64 noundef %.sroa.552.0.copyload, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #30
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.451.0.copyload ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !12
  %i.bj = icmp eq i8 %i.bi, 42
  br i1 %i.bj, label %bb.l, label %bb.aa

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not173 = icmp eq i64 %.sroa.552.0.copyload, %i.au
  br i1 %.not173, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not174 = icmp eq i64 %.sroa.451.0.copyload, 0
  br i1 %.not174, label %bb.o, label %bb.r

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ao

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit192, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.576.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 132
  store i8 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %.sroa.567.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 133
  store i8 3, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store i64 0, ptr %i.bo, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i32 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.570.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %.sroa.564.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  store i8 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 133
  store i8 2, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i32 1, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  store i32 %3, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i184 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx)
          to label %bb.y unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i184: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit187 unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i189 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.sink.split unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i189: ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit192 unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i189
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit192: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.o

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i184
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit187: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ch = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.0.0298, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.j) ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 132
  store i8 1, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 88
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !12 ; 2 uses
  %i.cl = icmp ult i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit187
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !12, !noundef !12
  %i.co = getelementptr inbounds nuw [136 x i8], ptr %i.cn, i64 %i.ch
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ao

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit187
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #27
  unreachable

bb.y:                                             ; preds = %bb.p, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.cg, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(136) %i.j) #25
          to label %bb.ar unwind label %bb.z

bb.z:                                             ; preds = %.body195.thread, %bb.y
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.j
  %i.cr = load i8, ptr %i.bg, align 1, !noundef !12
  %i.cs = icmp eq i8 %i.cr, 123
  br i1 %i.cs, label %bb.ab, label %bb.ac, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %.not170 = icmp eq i64 %.sroa.451.0.copyload, 0
  br i1 %.not170, label %bb.ad, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedhhECs6TEPlfJKwSA_12aho_corasick(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bg, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @46, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
  unreachable

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit202, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.386.0 = call i64 @llvm.usub.sat.i64(i64 %.sroa.552.0.copyload, i64 %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.386.0)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx, align 8
  store i8 3, ptr %i.x, align 1
  store i64 0, ptr %i.y, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4104.0..sroa_idx, align 8
  store i32 0, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5105.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx, align 8
  store i32 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ad, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i8 1, ptr %i.af, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ct = load i32, ptr %i.aa, align 4
  store i32 0, ptr %i.ah, align 8
  store i32 %i.ct, ptr %i.ai, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i194 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5117.0..sroa_idx)
          to label %.body195.thread unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i194: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5117.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit197 unwind label %.body195

bb.af:                                            ; preds = %bb.ae
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef11slice_until(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i199 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %.sink.split unwind label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i199: ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit202 unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i199
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit202: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.sroa.451.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ad

.body195:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i194
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body195.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit197: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiLZOIpitoQl_15metrics_example.exit.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(136) %.sroa.0.0298, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.e) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 132
  store i8 1, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 88
  %i.de = load i64, ptr %i.dd, align 8, !noundef !12 ; 2 uses
  %i.df = icmp ult i64 %i.db, %i.de
  br i1 %i.df, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit197
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0298, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !12, !noundef !12
  %i.di = getelementptr inbounds nuw [136 x i8], ptr %i.dh, i64 %i.db ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 128 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !noundef !12
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8
  %i.dm = load i64, ptr %i.t, align 8, !noundef !12
  %i.dn = icmp ult i64 %i.be, %i.dm
  br i1 %i.dn, label %bb.an, label %bb.am

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit197
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #27
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  store i32 1, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 124
  store i32 %3, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dq, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCsjQblLEOeBB3_7matchit6escapeNtB5_12UnescapedRef9slice_off(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3111.0..sroa_idx112, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4114.0..sroa_idx115, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5117.sroa.3.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i64 0, ptr %.sroa.5117.sroa.4.0..sroa.5117.0..sroa_idx118.sroa_idx, align 8
  store i32 1, ptr %i.ak, align 8
  store i8 0, ptr %i.al, align 4
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.397.0..sroa_idx98, align 8
  store i64 0, ptr %.sroa.4100.0..sroa_idx101, align 8
  store i8 3, ptr %i.an, align 1
  store i64 0, ptr %i.ao, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2151.0..sroa_idx, align 8
  store i32 0, ptr %i.ap, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3152.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.389.0..sroa_idx90, align 8
  store i64 0, ptr %.sroa.492.0..sroa_idx93, align 8
  %i.dr = call fastcc noundef i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE9add_childCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(136) %i.di, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.a) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !12 ; 2 uses
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %._crit_edge, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECsiLZOIpitoQl_15metrics_example.exit, %bb.w, %bb.am
  ret void

bb.ap:                                            ; preds = %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !12, !noundef !12
  %i.dx = getelementptr inbounds nuw [136 x i8], ptr %i.dw, i64 %i.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCsjQblLEOeBB3_7matchit4tree13find_wildcard(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dy = load i64, ptr %i.p, align 8, !range !15, !noundef !12
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %._crit_edge, label %bb.a

bb.aq:                                            ; preds = %bb.an
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #27
  unreachable

.body195.thread:                                  ; preds = %bb.ae, %.body195
  %eh.lpad-body196210 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body195 ], [ %i.cu, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #25
          to label %bb.ar unwind label %bb.z

.sink.split:                                      ; preds = %bb.aj, %bb.ah, %bb.u, %bb.s, %bb.f, %bb.d
  %.sink = phi ptr [ %i.m, %bb.u ], [ %i.n, %bb.f ], [ %i.n, %bb.d ], [ %i.m, %bb.s ], [ %i.h, %bb.ah ], [ %i.h, %bb.aj ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.bc, %bb.f ], [ %i.ay, %bb.d ], [ %i.cb, %bb.s ], [ %i.cw, %bb.ah ], [ %i.da, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0298, ptr noundef nonnull align 8 dereferenceable(48) %.sink, i64 48, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.y, %.body195.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph, %bb.y ], [ %eh.lpad-body196210, %.body195.thread ], [ %.pn.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 9223372036854775807) i64 @_RNvMs0_NtCsjQblLEOeBB3_7matchit4treeINtB5_4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdE21update_child_priorityCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 9223372036854775807) %1) unnamed_addr #0 {
bb.a:
end_hunk_0
