Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.11?download=true
inline.NumInlined: 3374
inline.NumDeleted: 1483
begin_hunk_0_@_RNvXs_NtCsdTHTBGblh3Z_11libp2p_core6eitherINtB4_12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamzEEIBF_BY_BY_EENtNtNtB1V_6future6future6Future4pollCshnt8FRa5Rut_11native_ping:bb.a
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9385)
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !9388, !noalias !9389 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !9388, !noalias !9389
  %.not.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.i, !prof !78

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36, !noalias !9394
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9398)
  %.sroa.01.0.copyload.i.i2.i.i = load i64, ptr %i.c, align 8, !alias.scope !9401, !noalias !9402 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !9401, !noalias !9402
  %.not.i.i3.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i2.i.i, -1
  br i1 %.not.i.i3.i.i, label %bb.f, label %bb.i, !prof !78

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36, !noalias !9405
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9409)
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !9412, !noalias !9413 ; 2 uses
  store i64 -1, ptr %i.d, align 8, !alias.scope !9412, !noalias !9413
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.h, label %bb.i, !prof !78

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #36, !noalias !9416
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sink.i.sink = phi i64 [ 1, %bb.c ], [ 0, %bb.e ], [ 2, %bb.g ]
  %.sroa.01.0.copyload.i.i2.i.sink.i.sink = phi i64 [ %.sroa.01.0.copyload.i.i.i.i, %bb.c ], [ %.sroa.01.0.copyload.i.i2.i.i, %bb.e ], [ %.sroa.01.0.copyload.i.i, %bb.g ]
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i4.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa.0.0..sroa_idx.i.i4.i.i, i64 128, i1 false)
  store i64 %.sink.i.sink, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.copyload.i.i2.i.sink.i.sink, ptr %.sroa.435.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsdTHTBGblh3Z_11libp2p_core6eitherINtB4_12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxENtNtNtB1Z_2io5error5ErrorEEINtNtNtB6_9transport3map9MapFutureINtNtB1Z_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1Z_6future6future6Futurep6OutputIB1V_TB2x_NtNtCs5xzCmWPONXx_11libp2p_quic10connection10ConnectionENtB6F_5ErrorENtNtB1Z_6marker4SendEL_EENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB8k_12SwarmBuilderNtNtB8i_8provider5TokioINtB8g_9QuicPhaseINtNtB4u_5dummy14DummyTransportB2w_EEE16with_quic_configINvNtB1Z_7convert8identityNtNtB6F_6config6ConfigEE0EEB5O_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !589, !noundef !8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB5_9MapFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputINtNtB19_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs5xzCmWPONXx_11libp2p_quic10connection10ConnectionENtB43_5ErrorENtNtB19_6marker4SendEL_EENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB5I_12SwarmBuilderNtNtB5G_8provider5TokioINtB5E_9QuicPhaseINtNtB7_5dummy14DummyTransportTB3b_NtNtNtB9_6muxing5boxed14StreamMuxerBoxEEEE16with_quic_configINvNtB19_7convert8identityNtNtB43_6config6ConfigEE0EB2a_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i64, ptr %i.a, align 8, !range !627, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.sink.split, %bb.a
  %.sink.sink = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %.sink.ph, %.sink.split ]
  store i64 %.sink.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !noundef !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.542.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink.ph = phi i64 [ 1, %bb.e ], [ 2, %bb.d ]
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsdTHTBGblh3Z_11libp2p_core6eitherINtB4_12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxENtNtNtB1Z_2io5error5ErrorEEINtNtNtB6_9transport3map9MapFutureINtNtB1Z_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1Z_6future6future6Futurep6OutputIB1V_TB2x_NtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connection10ConnectionENtNtB6F_5error5ErrorENtNtB1Z_6marker4SendEL_EENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB8z_12SwarmBuilderNtNtB8x_8provider5TokioINtB8v_19OtherTransportPhaseINtNtB4u_5dummy14DummyTransportB2w_EEE20with_other_transportB6B_NtNtB6F_9transport9TransportIB1V_BbD_IB5f_DNtNtB1Z_5error5ErrorB80_NtB82_4SyncEL_EENCNCINvNtNtCs44McOc0n4RX_13interop_tests4arch6native11build_swarmNtBd9_9BehaviourNvBd9_15build_behaviourE00E0EEB5O_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 10 uses
  %.sroa.529.sroa.6 = alloca [96 x i8], align 8   ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !589, !noundef !8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB5_9MapFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputINtNtB19_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio10connection10ConnectionENtNtB43_5error5ErrorENtNtB19_6marker4SendEL_EENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtB5X_12SwarmBuilderNtNtB5V_8provider5TokioINtB5T_19OtherTransportPhaseINtNtB7_5dummy14DummyTransportTB3b_NtNtNtB9_6muxing5boxed14StreamMuxerBoxEEEE20with_other_transportB3Z_NtNtB43_9transport9TransportIB2O_B9E_IB1B_DNtNtB19_5error5ErrorB5o_NtB5q_4SyncEL_EENCNCINvNtNtCs44McOc0n4RX_13interop_tests4arch6native11build_swarmNtBba_9BehaviourNvBba_15build_behaviourE00E0EB2a_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i64, ptr %i.a, align 8, !range !9417, !noundef !8 ; 2 uses
  switch i64 %i.c, label %bb.f [
    i64 -2, label %bb.e
    i64 -1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -3, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.437.sroa.0.0.copyload = load i64, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, i64 96, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.674.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.538.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.sroa.6, i64 96, i1 false)
  store i64 %i.c, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.437.sroa.0.0.copyload, ptr %.sroa.472.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.529.sroa.6, i64 96, i1 false)
  store i64 -2, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.440.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529.sroa.6)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsdTHTBGblh3Z_11libp2p_core6eitherINtB4_12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingINtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxENtNtNtB1Z_2io5error5ErrorEEINtNtNtB6_9transport3map9MapFutureNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB6h_12SwarmBuilderNtNtB6f_8provider5TokioINtB6d_9QuicPhaseINtNtB4u_5dummy14DummyTransportB2w_EEE16with_quic_configINvNtB1Z_7convert8identityNtNtB53_6config6ConfigEE0EENtNtNtB1Z_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !589, !noundef !8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB5_9MapFutureNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2o_12SwarmBuilderNtNtB2m_8provider5TokioINtB2k_9QuicPhaseINtNtB7_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB9_6muxing5boxed14StreamMuxerBoxEEEE16with_quic_configINvNtCskKLDkoKarTP_4core7convert8identityNtNtB1a_6config6ConfigEE0ENtNtNtB6p_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i64, ptr %i.a, align 8, !range !627, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.sink.split, %bb.a
  %.sink.sink = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %.sink.ph, %.sink.split ]
  store i64 %.sink.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !noundef !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.542.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink.ph = phi i64 [ 1, %bb.e ], [ 2, %bb.d ]
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEENtNtB1L_7default7Default7defaultCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 9), (16, 64)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @90), !noalias !9418 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @92, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4certNtB5_8CertTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i16, ptr %0, align 2, !range !9421, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  switch i16 %i.c, label %default.unreachable1 [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
    i16 6, label %bb.h
    i16 7, label %bb.i
    i16 8, label %bb.j
    i16 9, label %bb.k
    i16 10, label %bb.l
    i16 11, label %bb.m
    i16 12, label %bb.n
    i16 13, label %bb.o
    i16 14, label %bb.p
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 9)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 4)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 4)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 3)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 5)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 5)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 4)
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 6)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 7)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 3)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @288, i64 noundef 3)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 11)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @292, i64 noundef 13)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.l, %bb.i ], [ %i.m, %bb.j ], [ %i.n, %bb.k ], [ %i.o, %bb.l ], [ %i.p, %bb.m ], [ %i.q, %bb.n ], [ %i.r, %bb.o ], [ %i.s, %bb.p ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB14_6future6future6Futurep6OutputINtNtB14_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB14_2io5error5ErrorENtNtB14_6marker4SendEL_EENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5V_5SwarmNtCs44McOc0n4RX_13interop_tests9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0EB25_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB1a_2io5error5ErrorENtNtB1a_6marker4SendEL_EENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB61_5SwarmNtCs44McOc0n4RX_13interop_tests9BehaviourE4dialNtCsbli3iz7XG76_9multiaddr9MultiaddrEs_0s_0EB2b_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB14_6future6future6Futurep6OutputINtNtB14_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB14_2io5error5ErrorENtNtB14_6marker4SendEL_EENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5V_5SwarmNtCs44McOc0n4RX_13interop_tests9BehaviourE4dialNtNtB5V_9dial_opts8DialOptsEs_0s_0EB25_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputINtNtB1a_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtB1a_2io5error5ErrorENtNtB1a_6marker4SendEL_EENCNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB61_5SwarmNtCs44McOc0n4RX_13interop_tests9BehaviourE4dialNtNtB61_9dial_opts8DialOptsEs_0s_0EB2b_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtB14_6MapErrINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2n_2io5error5ErrorEEFB3P_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB3P_EEEINtNtB9_3fns8MapErrFnNcNtINtNtCsknXHD0xsxtc_16libp2p_websocket5error5ErrorB4m_E9Transport0EENtNtNtB2n_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtB1a_6MapErrINtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2t_2io5error5ErrorEEFB3V_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB3V_EEEINtNtBb_3fns8MapErrFnNcNtINtNtCsknXHD0xsxtc_16libp2p_websocket5error5ErrorB4s_E9Transport0EENtNtNtB2t_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls6AcceptNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtB9_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3Q_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2u_9TransportNtB2q_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE11map_upgrade00EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(1240) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls6AcceptNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtBb_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3W_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2A_9TransportNtB2w_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE11map_upgrade00EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls7ConnectNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtB9_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3R_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2v_9TransportNtB2r_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9dial_once0s_0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(1104) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtCsgrcu2UPjJtD_14futures_rustls7ConnectNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtBb_3fns8MapErrFnNCNCNvMs0_NtCsknXHD0xsxtc_16libp2p_websocket6framedINtB3X_6ConfigINtCs9jG2ha9joJM_10libp2p_dns9TransportINtB2B_9TransportNtB2x_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE9dial_once0s_0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1104) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB29_2io5error5ErrorEEEINtNtB9_3fns8MapErrFnFB3B_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB3B_EEENtNtNtB29_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2f_2io5error5ErrorEEEINtNtBb_3fns8MapErrFnFB3H_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB3H_EEENtNtNtB2f_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtB7_6either6EitherINtB14_6MapErrINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2p_2io5error5ErrorENtNtB2p_6marker4SendEL_EEFB5l_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB5l_EEIB2l_IB2R_DB3q_p6OutputIB44_B4q_B6g_EB5L_EL_EEEEINtNtB9_3fns8MapErrFnNcNtINtNtCsknXHD0xsxtc_16libp2p_websocket5error5ErrorB6g_E9Transport0EEB3q_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtB9_6either6EitherINtB1a_6MapErrINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2v_6future6future6Futurep6OutputINtNtB2v_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2v_2io5error5ErrorENtNtB2v_6marker4SendEL_EEFB5r_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB5r_EEIB2r_IB2X_DB3w_p6OutputIB4a_B4w_B6m_EB5R_EL_EEEEINtNtBb_3fns8MapErrFnNcNtINtNtCsknXHD0xsxtc_16libp2p_websocket5error5ErrorB6m_E9Transport0EEB3w_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1P_6future6future6Futurep6OutputINtNtB1P_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB1P_2io5error5ErrorENtNtB1P_6marker4SendEL_EEEINtNtB9_3fns8MapErrFnFB4L_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB4L_EEEB2Q_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputINtNtB1V_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB1V_2io5error5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnFB4R_EINtCs9jG2ha9joJM_10libp2p_dns5ErrorB4R_EEEB2W_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB46_2io5error5ErrorEENCINvMNtB1P_7upgradeINtB65_7BuilderINtB4J_9TransportNtB4F_3TcpEE12authenticateB4D_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4D_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtB99_12UpgradeErrorE0INtB65_12AuthenticateB4D_B97_EENCINvMs1_B65_INtB65_13AuthenticatedINtB38_7AndThenB6y_B5Z_EE9multiplexB7j_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB81_B7j_EENtBbW_6ConfigB5y_E0INtB65_9MultiplexB7j_BcF_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBdC_12SwarmBuilderNtNtBdA_8provider5TokioNtBdy_8TcpPhaseE8with_tcpNvMB99_B97_3newB7j_B9Q_NvYBcF_NtNtB46_7default7Default7defaultBbT_B5y_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBhO_B5y_INtNtNtB1R_7upgrade5error12UpgradeErrorB9Q_EEIBis_B5y_EEEEEENtNtNtB46_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1V_3map9MapFutureINtNtB1V_8and_then13AndThenFutureIB3c_INtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4c_2io5error5ErrorEENCINvMNtB1V_7upgradeINtB6b_7BuilderINtB4P_9TransportNtB4L_3TcpEE12authenticateB4J_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4J_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtB9f_12UpgradeErrorE0INtB6b_12AuthenticateB4J_B9d_EENCINvMs1_B6b_INtB6b_13AuthenticatedINtB3e_7AndThenB6E_B65_EE9multiplexB7p_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB87_B7p_EENtBc2_6ConfigB5E_E0INtB6b_9MultiplexB7p_BcL_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBdI_12SwarmBuilderNtNtBdG_8provider5TokioNtBdE_8TcpPhaseE8with_tcpNvMB9f_B9d_3newB7p_B9W_NvYBcL_NtNtB4c_7default7Default7defaultBbZ_B5E_E0EEEINtNtBb_3fns8MapErrFnINvNtB1V_5boxed7box_errINtB1T_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBhU_B5E_INtNtNtB1X_7upgrade5error12UpgradeErrorB9W_EEIBiy_B5E_EEEEEENtNtNtB4c_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB46_2io5error5ErrorEENCINvMNtB1P_7upgradeINtB65_7BuilderINtB4J_9TransportNtB4F_3TcpEE12authenticateB4D_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4D_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtB99_12UpgradeErrorE0INtB65_12AuthenticateB4D_B97_EENCINvMs1_B65_INtB65_13AuthenticatedINtB38_7AndThenB6y_B5Z_EE9multiplexB7j_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB81_B7j_EENtNtBbW_6config6ConfigB5y_E0INtB65_9MultiplexB7j_BcJ_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBdP_12SwarmBuilderNtNtBdN_8provider5TokioNtBdL_8TcpPhaseE8with_tcpNvMB99_B97_3newB7j_B9Q_NvYBcJ_NtNtB46_7default7Default7defaultBbT_B5y_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBi1_B5y_INtNtNtB1R_7upgrade5error12UpgradeErrorB9Q_EEIBiF_B5y_EEEEEENtNtNtB46_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1V_3map9MapFutureINtNtB1V_8and_then13AndThenFutureIB3c_INtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4c_2io5error5ErrorEENCINvMNtB1V_7upgradeINtB6b_7BuilderINtB4P_9TransportNtB4L_3TcpEE12authenticateB4J_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4J_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtB9f_12UpgradeErrorE0INtB6b_12AuthenticateB4J_B9d_EENCINvMs1_B6b_INtB6b_13AuthenticatedINtB3e_7AndThenB6E_B65_EE9multiplexB7p_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB87_B7p_EENtNtBc2_6config6ConfigB5E_E0INtB6b_9MultiplexB7p_BcP_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBdV_12SwarmBuilderNtNtBdT_8provider5TokioNtBdR_8TcpPhaseE8with_tcpNvMB9f_B9d_3newB7p_B9W_NvYBcP_NtNtB4c_7default7Default7defaultBbZ_B5E_E0EEEINtNtBb_3fns8MapErrFnINvNtB1V_5boxed7box_errINtB1T_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBi7_B5E_INtNtNtB1X_7upgrade5error12UpgradeErrorB9W_EEIBiL_B5E_EEEEEENtNtNtB4c_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB46_2io5error5ErrorEENCINvMNtB1P_7upgradeINtB65_7BuilderINtB4J_9TransportNtB4F_3TcpEE12authenticateB4D_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4D_EENtB7o_6ConfigNtB7o_5ErrorE0INtB65_12AuthenticateB4D_B96_EENCINvMs1_B65_INtB65_13AuthenticatedINtB38_7AndThenB6y_B5Z_EE9multiplexB7j_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB80_B7j_EENtBbh_6ConfigB5y_E0INtB65_9MultiplexB7j_Bc0_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBcX_12SwarmBuilderNtNtBcV_8provider5TokioNtBcT_8TcpPhaseE8with_tcpNvMB7o_B96_3newB7j_B9j_NvYBc0_NtNtB46_7default7Default7defaultBbe_B5y_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBh9_B5y_INtNtNtB1R_7upgrade5error12UpgradeErrorB9j_EEIBhN_B5y_EEEEEENtNtNtB46_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1V_3map9MapFutureINtNtB1V_8and_then13AndThenFutureIB3c_INtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4c_2io5error5ErrorEENCINvMNtB1V_7upgradeINtB6b_7BuilderINtB4P_9TransportNtB4L_3TcpEE12authenticateB4J_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4J_EENtB7u_6ConfigNtB7u_5ErrorE0INtB6b_12AuthenticateB4J_B9c_EENCINvMs1_B6b_INtB6b_13AuthenticatedINtB3e_7AndThenB6E_B65_EE9multiplexB7p_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB86_B7p_EENtBbn_6ConfigB5E_E0INtB6b_9MultiplexB7p_Bc6_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBd3_12SwarmBuilderNtNtBd1_8provider5TokioNtBcZ_8TcpPhaseE8with_tcpNvMB7u_B9c_3newB7p_B9p_NvYBc6_NtNtB4c_7default7Default7defaultBbk_B5E_E0EEEINtNtBb_3fns8MapErrFnINvNtB1V_5boxed7box_errINtB1T_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBhf_B5E_INtNtNtB1X_7upgrade5error12UpgradeErrorB9p_EEIBhT_B5E_EEEEEENtNtNtB4c_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtB7_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB46_2io5error5ErrorEENCINvMNtB1P_7upgradeINtB65_7BuilderINtB4J_9TransportNtB4F_3TcpEE12authenticateB4D_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4D_EENtB7o_6ConfigNtB7o_5ErrorE0INtB65_12AuthenticateB4D_B96_EENCINvMs1_B65_INtB65_13AuthenticatedINtB38_7AndThenB6y_B5Z_EE9multiplexB7j_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB80_B7j_EENtNtBbh_6config6ConfigB5y_E0INtB65_9MultiplexB7j_Bc4_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBda_12SwarmBuilderNtNtBd8_8provider5TokioNtBd6_8TcpPhaseE8with_tcpNvMB7o_B96_3newB7j_B9j_NvYBc4_NtNtB46_7default7Default7defaultBbe_B5y_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBhm_B5y_INtNtNtB1R_7upgrade5error12UpgradeErrorB9j_EEIBi0_B5y_EEEEEENtNtNtB46_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1V_3map9MapFutureINtNtB1V_8and_then13AndThenFutureIB3c_INtNtB9_5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4c_2io5error5ErrorEENCINvMNtB1V_7upgradeINtB6b_7BuilderINtB4P_9TransportNtB4L_3TcpEE12authenticateB4J_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4J_EENtB7u_6ConfigNtB7u_5ErrorE0INtB6b_12AuthenticateB4J_B9c_EENCINvMs1_B6b_INtB6b_13AuthenticatedINtB3e_7AndThenB6E_B65_EE9multiplexB7p_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB86_B7p_EENtNtBbn_6config6ConfigB5E_E0INtB6b_9MultiplexB7p_Bca_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBdg_12SwarmBuilderNtNtBde_8provider5TokioNtBdc_8TcpPhaseE8with_tcpNvMB7u_B9c_3newB7p_B9p_NvYBca_NtNtB4c_7default7Default7defaultBbk_B5E_E0EEEINtNtBb_3fns8MapErrFnINvNtB1V_5boxed7box_errINtB1T_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBhs_B5E_INtNtNtB1X_7upgrade5error12UpgradeErrorB9p_EEIBi6_B5E_EEEEEENtNtNtB4c_6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3M_6future6future6Futurep6OutputINtNtB3M_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3M_2io5error5ErrorENtNtB3M_6marker4SendEL_EENCINvMNtB1P_7upgradeINtB7D_7BuilderINtB5T_9TransportNtB5P_3TcpEE12authenticateB5N_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB5N_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBaH_12UpgradeErrorE0INtB7D_12AuthenticateB5N_BaF_EENCINvMs1_B7D_INtB7D_13AuthenticatedINtB38_7AndThenB86_B7x_EE9multiplexB8R_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB9z_B8R_EENtBdu_6ConfigB6I_E0INtB7D_9MultiplexB8R_Bed_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBfa_12SwarmBuilderNtNtBf8_8provider5TokioNtBf6_8TcpPhaseE8with_tcpNvMBaH_BaF_3newB8R_Bbo_NvYBed_NtNtB3M_7default7Default7defaultBdr_B6I_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBjm_B6I_INtNtNtB1R_7upgrade5error12UpgradeErrorBbo_EEIBk0_B6I_EEEEEEB4N_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future3mapINtB5_3MapINtNtNtB9_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1V_3map9MapFutureINtNtB1V_8and_then13AndThenFutureIB3c_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3S_6future6future6Futurep6OutputINtNtB3S_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3S_2io5error5ErrorENtNtB3S_6marker4SendEL_EENCINvMNtB1V_7upgradeINtB7J_7BuilderINtB5Z_9TransportNtB5V_3TcpEE12authenticateB5T_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB5T_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBaN_12UpgradeErrorE0INtB7J_12AuthenticateB5T_BaL_EENCINvMs1_B7J_INtB7J_13AuthenticatedINtB3e_7AndThenB8c_B7D_EE9multiplexB8X_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB9F_B8X_EENtBdA_6ConfigB6O_E0INtB7J_9MultiplexB8X_Bej_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBfg_12SwarmBuilderNtNtBfe_8provider5TokioNtBfc_8TcpPhaseE8with_tcpNvMBaN_BaL_3newB8X_Bbu_NvYBej_NtNtB3S_7default7Default7defaultBdx_B6O_E0EEEINtNtBb_3fns8MapErrFnINvNtB1V_5boxed7box_errINtB1T_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBjs_B6O_INtNtNtB1X_7upgrade5error12UpgradeErrorBbu_EEIBk6_B6O_EEEEEEB4T_4pollCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport7timeout7TimeoutINtNtB1P_3map9MapFutureINtNtB1P_8and_then13AndThenFutureIB36_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3M_6future6future6Futurep6OutputINtNtB3M_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3M_2io5error5ErrorENtNtB3M_6marker4SendEL_EENCINvMNtB1P_7upgradeINtB7D_7BuilderINtB5T_9TransportNtB5P_3TcpEE12authenticateB5N_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB5N_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBaH_12UpgradeErrorE0INtB7D_12AuthenticateB5N_BaF_EENCINvMs1_B7D_INtB7D_13AuthenticatedINtB38_7AndThenB86_B7x_EE9multiplexB8R_INtCsdV5RFaui74W_12libp2p_mplex9MultiplexIB9z_B8R_EENtNtBdu_6config6ConfigB6I_E0INtB7D_9MultiplexB8R_Beh_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBfn_12SwarmBuilderNtNtBfl_8provider5TokioNtBfj_8TcpPhaseE8with_tcpNvMBaH_BaF_3newB8R_Bbo_NvYBeh_NtNtB3M_7default7Default7defaultBdr_B6I_E0EEEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errINtB1N_21TransportTimeoutErrorINtCscu2bAJ62uie_6either6EitherIBjz_B6I_INtNtNtB1R_7upgrade5error12UpgradeErrorBbo_EEIBkd_B6I_EEEEEEB4N_4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
end_hunk_0
