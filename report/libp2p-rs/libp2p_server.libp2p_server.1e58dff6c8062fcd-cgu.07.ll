Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.07?download=true
inline.NumInlined: 3696
inline.NumDeleted: 1699
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNvXs_NtNtB2G_8adapters4takeINtB4s_4TakepEB2A_8try_fold5checkBX_B3E_INtNtB2I_6result6ResultB3E_zENCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0INtNtNtB2I_3ops12control_flow11ControlFlowB5s_B3E_EECs2Bxje7pdMIr_13libp2p_server:bb.a
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.m, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

.lr.ph37:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.n = phi ptr [ %i.k, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.o = phi i64 [ %i.i, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %.sink.split, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB2G_8adapters3map12map_try_foldBX_TNtB10_8DistanceNtNtNtNtB14_5query5peers7closest4PeerEjINtNtB2I_6option6OptionjENCINvMs_B4E_NtB4E_16ClosestPeersIter11with_configINtB8_3VecBX_EBX_E0NCINvNvXs7_NtB3M_4takeINtB6V_4TakepENtB6V_8SpecTake13spec_for_each5checkB4m_NCINvMsk_B8_IB6s_B4m_E14extend_trustedIB77_INtB3K_3MapBI_B5E_EEE0E0E0B5f_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.3 = alloca [112 x i8], align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.d
  br i1 %.not15, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5220, !nonnull !17, !align !22, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted17 = load i64, ptr %i.k, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val11 = phi i64 [ %.promoted17, %.lr.ph ], [ %i.q, %bb.d ] ; 3 uses
  %.sroa.0.016 = phi i64 [ %1, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 3 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !5221, !nonnull !17, !noundef !17
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i)
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d, %.._crit_edge_crit_edge
  %.lcssa.sink = phi i64 [ %.val9.pre, %.._crit_edge_crit_edge ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %.sroa.0.014 = phi i64 [ %1, %.._crit_edge_crit_edge ], [ 0, %bb.c ], [ %i.s, %bb.d ]
  %.sroa.02.0 = phi i64 [ 1, %.._crit_edge_crit_edge ], [ 0, %bb.c ], [ 1, %bb.d ]
  %.val = load ptr, ptr %2, align 8, !nonnull !17, !align !22, !noundef !17
  store i64 %.lcssa.sink, ptr %.val, align 8
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.0.014, 1
  ret { i64, i64 } %i.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, i64 112, i1 false), !noalias !5220
  store i32 1000000000, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5221
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %i.j, i64 %.val11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !5221
  %i.q = add i64 %.val11, 1                       ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.016, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  br i1 %i.r, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %.sroa.0.016, -1                 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val10 = load ptr, ptr %2, align 8, !nonnull !17, !align !22, !noundef !17
  store i64 %.val11, ptr %.val10, align 8
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB2G_8adapters3map12map_try_foldBX_TNtB10_8DistanceNtNtNtNtB14_5query5peers7closest4PeerEjINtNtB2I_6option6OptionjENCINvMs_B4E_NtB4E_16ClosestPeersIter11with_configINtB8_3VecBX_EIBY_NtNtB14_6record3KeyEE0NCINvNvXs7_NtB3M_4takeINtB7g_4TakepENtB7g_8SpecTake13spec_for_each5checkB4m_NCINvMsk_B8_IB6s_B4m_E14extend_trustedIB7s_INtB3K_3MapBI_B5E_EEE0E0E0B5f_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.3 = alloca [112 x i8], align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.d
  br i1 %.not15, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5225, !nonnull !17, !align !22, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted17 = load i64, ptr %i.k, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val11 = phi i64 [ %.promoted17, %.lr.ph ], [ %i.q, %bb.d ] ; 3 uses
  %.sroa.0.016 = phi i64 [ %1, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 3 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !5226, !nonnull !17, !noundef !17
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i)
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d, %.._crit_edge_crit_edge
  %.lcssa.sink = phi i64 [ %.val9.pre, %.._crit_edge_crit_edge ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %.sroa.0.014 = phi i64 [ %1, %.._crit_edge_crit_edge ], [ 0, %bb.c ], [ %i.s, %bb.d ]
  %.sroa.02.0 = phi i64 [ 1, %.._crit_edge_crit_edge ], [ 0, %bb.c ], [ 1, %bb.d ]
  %.val = load ptr, ptr %2, align 8, !nonnull !17, !align !22, !noundef !17
  store i64 %.lcssa.sink, ptr %.val, align 8
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.0.014, 1
  ret { i64, i64 } %i.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, i64 112, i1 false), !noalias !5225
  store i32 1000000000, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5226
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %i.j, i64 %.val11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false), !noalias !5226
  %i.q = add i64 %.val11, 1                       ; 3 uses
  %i.r = icmp eq i64 %.sroa.0.016, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  br i1 %i.r, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %.sroa.0.016, -1                 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val10 = load ptr, ptr %2, align 8, !nonnull !17, !align !22, !noundef !17
  store i64 %.val11, ptr %.val10, align 8
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldBX_NtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dial11PendingDialuNCINvMs0_B3j_INtB3j_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB3j_9dial_opts8DialOptsEs_0NCINvNvB1y_8for_each4callB3b_NCINvMsk_B8_INtB8_3VecB3b_E14extend_trustedINtB2E_3MapBI_B4x_EE0E0E0EB51_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.015.i.i = alloca [112 x i8], align 8     ; 5 uses
  %.sroa.08.i.i = alloca [112 x i8], align 8      ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [128 x i8], align 8               ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.4.i.i = alloca [80 x i8], align 8        ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.01.i = alloca [32 x i8], align 8         ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.ab, align 8       ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %.not.not101 = icmp eq ptr %.promoted, %i.ac
  br i1 %.not.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.sroa.485.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.08.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.i.i, i64 32
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.015.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.i.i, i64 32
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted102 = load i64, ptr %i.bb, align 8
  %.pre = load ptr, ptr %i.ad, align 8, !alias.scope !5276 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ba
  %.val714 = phi i64 [ %.promoted102, %.lr.ph ], [ %i.fc, %bb.ba ] ; 3 uses
  %i.bc = phi ptr [ %.promoted, %.lr.ph ], [ %i.bd, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  store ptr %i.bd, ptr %i.ab, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  call void @llvm.experimental.noalias.scope.decl(metadata !5280)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %.sroa.0.0.copyload.i.i = load i64, ptr %.pre, align 8, !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i.i, i64 80, i1 false), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5281
  %i.be = load ptr, ptr %i.y, align 8, !alias.scope !5280, !noalias !5277, !nonnull !17, !align !22, !noundef !17
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !5281, !nonnull !17, !noundef !17
  %i.bg = load ptr, ptr %i.af, align 8, !alias.scope !5280, !noalias !5277, !noundef !17
  %i.bh = load i64, ptr %i.ag, align 8, !alias.scope !5280, !noalias !5277, !noundef !17
  invoke void %i.bf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.ae, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %bb.d unwind label %bb.c, !noalias !5282

.body67.i.i:                                      ; preds = %bb.ay, %bb.av, %.thread6.i, %bb.ar, %bb.al, %bb.j, %bb.f, %bb.c
  %.pn57.i.i = phi { ptr, i32 } [ %i.em, %bb.av ], [ %.pn.pn88.i.i, %.thread6.i ], [ %i.bu, %bb.f ], [ %.pn.i.i, %bb.j ], [ %i.bo, %bb.c ], [ %i.eo, %bb.ay ], [ %i.eb, %bb.al ], [ %.pn.i.i, %bb.ar ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  call void @llvm.experimental.noalias.scope.decl(metadata !5285)
  %i.bi = load ptr, ptr %i.ae, align 8, !alias.scope !5286, !noalias !5277, !noundef !17
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !5286, !noalias !5277, !nonnull !17, !align !22, !noundef !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !5287, !nonnull !17, !noundef !17
  %i.bm = load ptr, ptr %i.af, align 8, !alias.scope !5286, !noalias !5277, !noundef !17
  %i.bn = load i64, ptr %i.ag, align 8, !alias.scope !5286, !noalias !5277, !noundef !17
  invoke void %i.bl(ptr noundef %i.bi, ptr noundef %i.bm, i64 noundef %i.bn)
          to label %bb.bd unwind label %bb.z, !noalias !5282, !inline_history !37

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrBX_EECs2Bxje7pdMIr_13libp2p_server.exit4.i.i.i, %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i

bb.d:                                             ; preds = %bb.b
  %.sroa.084.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !5281 ; 5 uses
  %.sroa.485.0.copyload.i.i = load ptr, ptr %.sroa.485.0..sroa_idx.i.i, align 8, !noalias !5281 ; 3 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5281 ; 3 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5281 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5281
  call void @llvm.experimental.noalias.scope.decl(metadata !5288)
  call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  %i.bp = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.bp, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i.i, i64 80, i1 false), !noalias !5291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5292
  %i.bq = load ptr, ptr %i.y, align 8, !alias.scope !5280, !noalias !5293, !nonnull !17, !align !22, !noundef !17
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !5294, !nonnull !17, !noundef !17
  %i.bs = load ptr, ptr %i.af, align 8, !alias.scope !5280, !noalias !5293, !noundef !17
  %i.bt = load i64, ptr %i.ag, align 8, !alias.scope !5280, !noalias !5293, !noundef !17
  invoke void %i.br(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.ae, ptr noundef %i.bs, i64 noundef %i.bt)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !5295, !inline_history !5247

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_RNvMCsbli3iz7XG76_9multiaddrNtB2_9Multiaddr8with_p2p(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrBX_EECs2Bxje7pdMIr_13libp2p_server.exit4.i.i.i unwind label %bb.f, !noalias !5296

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.thread.i.i: ; preds = %bb.d
  store i64 0, ptr %i.x, align 8, !alias.scope !5297, !noalias !5281
  store ptr %.sroa.084.0.copyload.i.i, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5281
  store ptr %.sroa.485.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5281
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5281
  store ptr %.sroa.6.0.copyload.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !5297, !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %bb.i

bb.f:                                             ; preds = %.noexc.i.i.i, %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.084.0.copyload.i.i) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.084.0.copyload.i.i, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !5298, !nonnull !17, !noundef !17
  invoke void %i.bw(ptr noundef %.sroa.6.0.copyload.i.i, ptr noundef %.sroa.485.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.i.i)
          to label %.body67.i.i unwind label %bb.g, !noalias !5295, !inline_history !5250

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrBX_EECs2Bxje7pdMIr_13libp2p_server.exit4.i.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5290
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.084.0.copyload.i.i) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.084.0.copyload.i.i, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !5299, !nonnull !17, !noundef !17
  invoke void %i.by(ptr noundef %.sroa.6.0.copyload.i.i, ptr noundef %.sroa.485.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.i.i)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.i.i unwind label %bb.c, !noalias !5282, !inline_history !5253

bb.g:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !5295
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrBX_EECs2Bxje7pdMIr_13libp2p_server.exit4.i.i.i
  %.pre.i.i = load i64, ptr %i.x, align 8, !range !25, !noalias !5281
  %i.ca = trunc nuw i64 %.pre.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.479.0..sroa_idx.i.i, i64 32, i1 false), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5281
  %i.cb = load ptr, ptr %i.h, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !5282, !nonnull !17, !noundef !17
  %i.cd = load ptr, ptr %i.ay, align 8, !noalias !5281, !noundef !17
  %i.ce = load i64, ptr %i.az, align 8, !noalias !5281, !noundef !17
  invoke void %i.cc(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.ax, ptr noundef %i.cd, i64 noundef %i.ce)
          to label %bb.at unwind label %bb.ay, !noalias !5282

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdE6map_orINtNtB5_6result6ResultNtCsbli3iz7XG76_9multiaddr9MultiaddrB20_ENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB2Q_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB2Q_9dial_opts8DialOptsEs_00EB3z_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.479.0..sroa_idx.i.i, i64 32, i1 false), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5281
  %i.cf = load ptr, ptr %i.ah, align 8, !alias.scope !5276, !nonnull !17, !align !22, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5281
  %i.cg = load ptr, ptr %i.w, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !5282, !nonnull !17, !noundef !17
  %i.ci = load ptr, ptr %i.aj, align 8, !noalias !5281, !noundef !17
  %i.cj = load i64, ptr %i.ak, align 8, !noalias !5281, !noundef !17
  invoke void %i.ch(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.ai, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %bb.k unwind label %.thread.i.i, !noalias !5282

bb.j:                                             ; preds = %bb.as
  %i.ck = trunc nuw i8 %.sroa.021.0.i.i to i1
  br i1 %i.ck, label %.thread6.i, label %.body67.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.thread6.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5281
  %i.cm = load ptr, ptr %i.al, align 8, !alias.scope !5276, !nonnull !17, !align !22, !noundef !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 121
  %i.co = load i8, ptr %i.cn, align 1, !range !26, !noalias !5282, !noundef !17
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 122
  %i.cr = load i8, ptr %i.cq, align 2, !range !26, !noalias !5282, !noundef !17
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = load ptr, ptr %i.cf, align 8, !noalias !5282, !nonnull !17, !noundef !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !5282, !nonnull !17, !align !22, !noundef !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !17, !noalias !5282, !nonnull !17
  invoke void %i.cx(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.v, ptr noundef nonnull %i.ct, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.u, i1 noundef zeroext %i.cp, i1 noundef zeroext %i.cs)
          to label %bb.m unwind label %.thread.i.i, !noalias !5282

.body.i.i:                                        ; preds = %bb.aq, %bb.u, %bb.l
  %.sroa.021.0.i.i = phi i8 [ %.sroa.022.2.i.i, %bb.l ], [ %.sroa.021.2.lpad-body.ph.i.i, %bb.aq ], [ 1, %bb.u ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.da, %bb.l ], [ %eh.lpad-body.ph.i.i, %bb.aq ], [ %i.dk, %bb.u ] ; 4 uses
  %i.cy = load i64, ptr %i.v, align 8, !range !25, !noalias !5281, !noundef !17
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.as, label %bb.ar

bb.l:                                             ; preds = %bb.ap, %bb.aa, %bb.s, %bb.p, %bb.o
  %.sroa.022.2.i.i = phi i8 [ 0, %bb.ap ], [ 1, %bb.aa ], [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ]
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5281
  %i.db = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5281
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.dd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB9_5SwarmpE4dials_010___CALLSITE, i64 16) monotonic, align 8, !noalias !5281 ; 3 uses
  switch i8 %i.dd, label %bb.o [
    i8 0, label %bb.v
    i8 1, label %bb.p
    i8 2, label %bb.p
  ], !prof !21

bb.o:                                             ; preds = %bb.n
  %i.de = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB9_5SwarmpE4dials_010___CALLSITE)
          to label %bb.q unwind label %bb.l, !noalias !5282 ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.q, %bb.n
  %.sroa.05.0.i.i = phi i8 [ %i.de, %bb.q ], [ %i.dd, %bb.n ], [ %i.dd, %bb.n ]
  %i.df = load ptr, ptr @_RNvNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB9_5SwarmpE4dials_010___CALLSITE, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  %i.dg = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.df, i8 noundef %.sroa.05.0.i.i)
          to label %bb.r unwind label %bb.l, !noalias !5282

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i, label %bb.v, label %bb.p

bb.r:                                             ; preds = %bb.p
  br i1 %i.dg, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr @_RNvNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB9_5SwarmpE4dials_010___CALLSITE, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5281
  store i64 2, ptr %i.s, align 8, !noalias !5281
  store ptr null, ptr %i.am, align 8, !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5281
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5281
  store ptr %i.w, ptr %i.p, align 8, !noalias !5281
  store ptr %i.p, ptr %i.q, align 8, !noalias !5281
  store ptr @54, ptr %i.an, align 8, !noalias !5281
  store i64 1, ptr %i.r, align 8, !noalias !5281
  store ptr %i.q, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !5281
  store i64 1, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !5281
  store ptr %i.di, ptr %i.ao, align 8, !noalias !5281
  %i.dj = invoke noundef i64 @_RNvXs4_NtCs1SQIzZDXHNl_7tracing4spanINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core4span2IdEINtNtBD_7convert4FromNtB5_4SpanE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.aa unwind label %bb.l, !noalias !5282

bb.t:                                             ; preds = %bb.x, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5281
  br label %bb.y

bb.u:                                             ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #38
          to label %.body.i.i unwind label %bb.z, !noalias !5282

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5281
  %i.dl = load ptr, ptr @_RNvNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB9_5SwarmpE4dials_010___CALLSITE, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17 ; 2 uses
  store i64 2, ptr %i.o, align 8, !noalias !5281
  store ptr %i.dl, ptr %i.ar, align 8, !noalias !5281
  %i.dm = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5281
  %.not54.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not54.i.i, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5281
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5281
  store ptr %i.w, ptr %i.l, align 8, !noalias !5281
  store ptr %i.l, ptr %i.m, align 8, !noalias !5281
  store ptr @54, ptr %i.as, align 8, !noalias !5281
  store i64 1, ptr %i.n, align 8, !noalias !5281
  store ptr %i.m, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !5281
  store i64 1, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !5281
  store ptr %i.dn, ptr %i.at, align 8, !noalias !5281
  %i.do = invoke noundef nonnull align 8 ptr @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.x unwind label %bb.u, !noalias !5282 ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5281
  br label %bb.t

bb.y:                                             ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5281
  invoke void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span7current(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.ad unwind label %bb.ac, !noalias !5282

bb.z:                                             ; preds = %bb.ay, %.thread6.i, %.thread119.i.i, %bb.as, %bb.aq, %bb.u, %.body67.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !5282
  unreachable

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5281
  store i64 %i.dj, ptr %i.ap, align 8, !noalias !5281
  store ptr %i.dh, ptr %i.c, align 8, !noalias !5281
  store ptr %i.r, ptr %i.aq, align 8, !noalias !5281
  invoke void @_RINvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher11get_defaultNtNtCs1SQIzZDXHNl_7tracing4span4SpanNCINvMBX_BV_8child_ofBV_E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ab unwind label %bb.l, !noalias !5282

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5281
  br label %bb.y

bb.ac:                                            ; preds = %bb.ad, %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %bb.y
  %i.dr = invoke noundef nonnull align 8 ptr @_RINvMNtCs1SQIzZDXHNl_7tracing4spanNtB3_4Span12follows_fromBw_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.ae unwind label %bb.ac, !noalias !5282 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5281
  %i.ds = load i64, ptr %i.v, align 8, !range !25, !noalias !5281, !noundef !17
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.32..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !5281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.08.i.i, i64 112, i1 false), !noalias !5281
  store ptr null, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !5281
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5300
  %i.du = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 945) 128, i64 noundef range(i64 1, 9) 8) #34, !noalias !5300 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ag, label %bb.ap, !prof !16

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #35
          to label %.noexc69.i.i unwind label %bb.ah, !noalias !5282

.noexc69.i.i:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB3l_9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.i) #38
          to label %bb.aq unwind label %bb.ai, !noalias !5282

bb.ai:                                            ; preds = %bb.ah
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !5282
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !noalias !5281
  %i.dy = load <2 x ptr>, ptr %i.au, align 8, !noalias !5281
  store <2 x ptr> %i.dy, ptr %i.aw, align 8, !noalias !5281
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5301
  %i.dz = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 945) 88, i64 noundef range(i64 1, 9) 8) #34, !noalias !5301 ; 3 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ak, label %bb.an, !prof !16

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #35
          to label %.noexc70.i.i unwind label %bb.al, !noalias !5282

.noexc70.i.i:                                     ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1SQIzZDXHNl_7tracing10instrument12InstrumentedINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB6V_5SwarmNtNtCs2Bxje7pdMIr_13libp2p_server9behaviour9BehaviourE4dialNtNtB6V_9dial_opts8DialOptsEs_0s_0EEEB7E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #38
          to label %.body67.i.i unwind label %bb.am, !noalias !5282

bb.am:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !5282
  unreachable

bb.an:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dz, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5281
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %.sroa.411.0.i.i = phi ptr [ @56, %bb.ap ], [ @55, %bb.an ]
  %.sroa.010.0.i.i = phi ptr [ %i.du, %bb.ap ], [ %i.dz, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5281
  br label %bb.ba

bb.ap:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.du, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5281
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t)
          to label %bb.ao unwind label %bb.l, !noalias !5282

bb.aq:                                            ; preds = %bb.ah, %bb.ac
  %.sroa.021.2.lpad-body.ph.i.i = phi i8 [ 1, %bb.ac ], [ 0, %bb.ah ]
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.dw, %bb.ah ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #38
          to label %.body.i.i unwind label %bb.z, !noalias !5282

bb.ar:                                            ; preds = %.body.i.i
  %i.ed = trunc nuw i8 %.sroa.021.0.i.i to i1
  br i1 %i.ed, label %.thread119.i.i, label %.body67.i.i

bb.as:                                            ; preds = %.body.i.i
  %.val.i.i = load ptr, ptr %i.au, align 8, !noalias !5281
  %.val66.i.i = load ptr, ptr %i.av, align 8, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs2Bxje7pdMIr_13libp2p_server(ptr %.val.i.i, ptr nonnull %.val66.i.i) #38
          to label %bb.j unwind label %bb.z, !noalias !5282

.thread119.i.i:                                   ; preds = %bb.ar
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.au) #38
          to label %.thread6.i unwind label %bb.z, !noalias !5282

.thread6.i:                                       ; preds = %.thread119.i.i, %.thread.i.i, %bb.j
  %.pn.pn88.i.i = phi { ptr, i32 } [ %i.cl, %.thread.i.i ], [ %.pn.i.i, %bb.j ], [ %.pn.i.i, %.thread119.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  call void @llvm.experimental.noalias.scope.decl(metadata !5304)
  %i.ee = load ptr, ptr %i.ai, align 8, !alias.scope !5305, !noalias !5281, !noundef !17
  %i.ef = load ptr, ptr %i.w, align 8, !alias.scope !5305, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !5306, !nonnull !17, !noundef !17
  %i.ei = load ptr, ptr %i.aj, align 8, !alias.scope !5305, !noalias !5281, !noundef !17
  %i.ej = load i64, ptr %i.ak, align 8, !alias.scope !5305, !noalias !5281, !noundef !17
  invoke void %i.eh(ptr noundef %i.ee, ptr noundef %i.ei, i64 noundef %i.ej)
          to label %.body67.i.i unwind label %bb.z, !noalias !5282, !inline_history !37

bb.at:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.32..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.015.i.i, i64 112, i1 false), !noalias !5281
  store ptr null, ptr %.sroa.450.0..sroa_idx.i.i, align 8, !noalias !5281
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !5307
  %i.ek = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 945) 128, i64 noundef range(i64 1, 9) 8) #34, !noalias !5307 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.au, label %bb.ax, !prof !16

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #35
          to label %.noexc74.i.i unwind label %bb.av, !noalias !5282

.noexc74.i.i:                                     ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEINtNtB3l_9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.g) #38
          to label %.body67.i.i unwind label %bb.aw, !noalias !5282

bb.aw:                                            ; preds = %bb.av
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !5282
  unreachable

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ek, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5281
  br label %bb.ba

bb.ay:                                            ; preds = %bb.h
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !5308)
  call void @llvm.experimental.noalias.scope.decl(metadata !5309)
  call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.ep = load ptr, ptr %i.ax, align 8, !alias.scope !5311, !noalias !5281, !noundef !17
  %i.eq = load ptr, ptr %i.h, align 8, !alias.scope !5311, !noalias !5281, !nonnull !17, !align !22, !noundef !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !noalias !5312, !nonnull !17, !noundef !17
  %i.et = load ptr, ptr %i.ay, align 8, !alias.scope !5311, !noalias !5281, !noundef !17
  %i.eu = load i64, ptr %i.az, align 8, !alias.scope !5311, !noalias !5281, !noundef !17
  invoke void %i.es(ptr noundef %i.ep, ptr noundef %i.et, i64 noundef %i.eu)
          to label %.body67.i.i unwind label %bb.z, !noalias !5282, !inline_history !37

._crit_edge:                                      ; preds = %bb.ba, %bb.a
  %i.ev = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %i.ex, ptr %i.z, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ev, ptr %i.ey, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !22, !noundef !17
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ez, align 8, !noundef !17
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.ba:                                            ; preds = %bb.ax, %bb.ao
  %.sroa.411.1.i.i = phi ptr [ @56, %bb.ax ], [ %.sroa.411.0.i.i, %bb.ao ]
  %.sroa.010.1.i.i = phi ptr [ %i.ek, %bb.ax ], [ %.sroa.010.0.i.i, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !5277
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5277
  call void @llvm.experimental.noalias.scope.decl(metadata !5313)
  call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  %i.fa = load ptr, ptr %i.ba, align 8, !alias.scope !5315, !noundef !17
  %i.fb = getelementptr inbounds nuw [48 x i8], ptr %i.fa, i64 %.val714 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i, i64 32, i1 false), !noalias !5316
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store ptr %.sroa.010.1.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5316
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr %.sroa.411.1.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5316
  %i.fc = add i64 %.val714, 1                     ; 2 uses
  store i64 %i.fc, ptr %i.bb, align 8, !alias.scope !5315
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  %.not.not = icmp eq ptr %i.bd, %i.ac
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.bb:                                            ; preds = %bb.bd
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.bc:                                            ; preds = %._crit_edge
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !17, !align !22, !noundef !17
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.ff, align 8, !noundef !17
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.bd, %bb.bc
  %.pn10 = phi { ptr, i32 } [ %.pn57.i.i, %bb.bd ], [ %i.fe, %bb.bc ]
  resume { ptr, i32 } %.pn10

bb.bd:                                            ; preds = %.body67.i.i
  %.val613 = load ptr, ptr %1, align 8, !nonnull !17, !align !22, !noundef !17
  store i64 %.val714, ptr %.val613, align 8
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldBX_INtCscu2bAJ62uie_6either6EitherBX_ReEuFBX_EB3E_NCIB35_B3E_IB3F_B3E_B4c_EuFB3E_EB4A_NCIB35_B4A_IB3F_IB3F_IB3F_B4A_BX_EIB3F_BX_BX_EEB4A_EuFB4A_EB5a_NCIB35_B5a_IB3F_B5a_B3E_EuFB5a_EB6b_QNCIB35_B6b_TINtNtB11_10connection11AsStrHashEqB6b_EbEuNCINvB6Q_26gather_supported_protocolsINtNtNtB11_7handler6select23ConnectionHandlerSelectIB85_IB85_IB85_IB3F_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB11_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEINtNtNtB11_9behaviour6toggle23ToggleConnectionHandlerNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerEEIBcm_INtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEE0NCINvNvB21_8for_each4callB6M_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBgJ_7HashMapB6N_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendB6M_E6extendINtB37_3MapINtNtB39_5chain5ChainIBiV_IBj6_IBiV_IBj6_IBiV_IBj6_IBiV_IB3F_IBiV_IB3F_IBiV_INtNtNtB27_7sources4once4OnceBX_EB4g_EIBiV_INtNtBko_5empty5EmptyB4c_EFB4c_EB3E_EEB4P_EIBiV_Bl0_FB4c_EB4A_EEFB4A_EB5k_EIBiV_Bkj_FBX_EB5k_EEFB5k_EB5f_EIBiV_IBj6_IBiV_Bkj_FBX_EB5x_EBmS_EFB5x_EB5f_EEFB5f_EB5a_EIBiV_IB3F_IBiV_IB3F_IBiV_BI_B4g_EBkV_EB4P_EBlH_EB5Q_EEB6q_EIBiV_IB3F_IBiV_INtCsczYENlYh6wI_8smallvec8IntoIterABX_j2_EB4g_EBkV_EFB3E_EB6b_EEB7t_EE0E0E0E0E0E0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.i, align 8        ; 2 uses
  %.not.not13 = icmp eq ptr %.promoted, %i.h
  br i1 %.not.not13, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5331)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !5331, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5332
  invoke void %.val.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc unwind label %bb.d, !inline_history !5323

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5330
  call void @llvm.experimental.noalias.scope.decl(metadata !5333)
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !5334, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5335
  invoke void %.val.i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc4 unwind label %bb.d, !inline_history !5323

.noexc4:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5332
  call void @llvm.experimental.noalias.scope.decl(metadata !5336)
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5337, !nonnull !17, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5338
  invoke void %.val.i.i.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc5 unwind label %bb.d, !inline_history !5323

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5335
  call void @llvm.experimental.noalias.scope.decl(metadata !5339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5338
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5340, !nonnull !17, !noundef !17
  invoke void %.val.i.i.i.i(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc6 unwind label %bb.d, !inline_history !5323

.noexc6:                                          ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5338
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldINtCscu2bAJ62uie_6either6EitherIB1u_IB1u_IB1u_IB1u_IB1u_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB3q_EB2n_EIB1u_B2n_B2n_EEB2d_EB2i_ETINtNtB2r_10connection11AsStrHashEqB1t_EbEuNCINvB46_26gather_supported_protocolsINtNtNtB2r_7handler6select23ConnectionHandlerSelectIB5l_IB5l_IB5l_IB1u_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB2r_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEINtNtNtB2r_9behaviour6toggle23ToggleConnectionHandlerNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerEEIB9C_INtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEE0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB42_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBet_7HashMapB43_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBdx_7collect6ExtendB42_E6extendINtBT_3MapINtNtBV_5chain5ChainIBgF_IBgP_IBgF_IBgP_IBgF_IBgP_IBgF_IB1u_IBgF_IB1u_IBgF_INtNtNtBX_7sources4once4OnceB2n_EFB2n_EB2i_EIBgF_INtNtBi6_5empty5EmptyB3q_EFB3q_EB2i_EEFB2i_EB2d_EIBgF_BiO_FB3q_EB2d_EEFB2d_EB28_EIBgF_Bi1_FB2n_EB28_EEFB28_EB23_EIBgF_IBgP_IBgF_Bi1_FB2n_EB3D_EBkN_EFB3D_EB23_EEFB23_EB1Y_EIBgF_IB1u_IBgF_IB1u_IBgF_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2n_EBiy_EBiJ_EBjq_EBjB_EFB2d_EB1Y_EEFB1Y_EB1t_EIBgF_IB1u_IBgF_INtCsczYENlYh6wI_8smallvec8IntoIterAB2n_j2_EBiy_EBiJ_EFB2i_EB1t_EEB4J_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.c unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %bb.a
  %i.p = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_0
