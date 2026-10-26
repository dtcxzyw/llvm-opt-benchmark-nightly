Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/hole_punching_tests.hole_punching_tests.c9f93ab45a8f7f17-cgu.15?download=true
inline.NumInlined: 1471
inline.NumDeleted: 637
begin_hunk_0_@_RNvXs0_NtCskFgHTArva8k_13netlink_proto10connectionINtB5_10ConnectionNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshl6eeJekvqJ_19hole_punching_tests:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.fo

bb.fo:                                            ; preds = %_RNvMNtCskFgHTArva8k_13netlink_proto10connectionINtB2_10ConnectionNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageE18poll_send_messagesCshl6eeJekvqJ_19hole_punching_tests.exit, %bb.fn
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.rl = load i8, ptr %i.rk, align 8, !range !29, !noundef !11
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ro = load i64, ptr %i.rn, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.ro, 0
  %i.rp = load i64, ptr %i.kx, align 8, !range !10
  %.not1 = icmp eq i64 %i.rp, 0
  %or.cond = select i1 %.not, i1 %.not1, i1 false
  br i1 %or.cond, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %.sroa.0.0 = phi i1 [ false, %bb.fq ], [ true, %bb.fp ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iterINtB5_10IterPinMutINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection18SubstreamRequestedINtCscu2bAJ62uie_6either6EitherIB2u_IB2u_IB2u_uuEuEB38_EuEIB2u_INtNtB1v_7upgrade11SendWrapperIB2u_IB3v_IB2u_IB3v_IB2u_IB3v_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB1v_15stream_protocol14StreamProtocolEEIB3v_NtNtB4x_6denied13DeniedUpgradeEEEIB3v_IB2u_B4s_B4s_EEEEB4d_EEB4n_EEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !20, !noundef !11
  %.not = icmp eq i64 %i.d, 3
  br i1 %.not, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  store ptr %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iterINtB5_10IterPinMutINtNtNtB9_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2b_8provider5tokio3TcpEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !23, !noundef !11
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  store ptr %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iterINtB5_10IterPinMutINtNtNtB9_6stream11into_future12StreamFutureINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB2d_8provider5tokio8ProviderEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.d, -2
  br i1 %.not, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8
  store ptr %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iterINtB5_10IterPinMutINtNtNtB9_6stream11into_future12StreamFutureINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB2d_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB2d_10connection13StreamCommandEEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !17, !noundef !11
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8
  store ptr %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s0_0EENtNtNtB6U_6future6future6Future4pollCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 7 uses
  %i.b = alloca [696 x i8], align 8               ; 9 uses
  %i.c = alloca [696 x i8], align 8               ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -4, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa.0.0..sroa_idx, i64 688, i1 false)
  %i.d = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s0_0EE14try_start_sendCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.c) ; 3 uses
  switch i8 %i.d, label %bb.d [
    i8 -1, label %bb.f
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.d, 2
  call void @llvm.assume(i1 %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.i, %.loopexit, %bb.l, %bb.m, %bb.j, %bb.j, %bb.p, %bb.f
  %.sroa.01.1 = phi i8 [ %i.d, %bb.f ], [ -1, %bb.j ], [ -1, %bb.j ], [ %2, %.loopexit ], [ %i.o, %bb.l ], [ %i.h, %bb.i ], [ %i.o, %bb.m ], [ %i.k, %bb.p ], [ %i.o, %bb.l ]
  ret i8 %.sroa.01.1

bb.h:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4fuseINtB5_4FuseQINtNtB7_3map3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1T_10ConnectionINtNtNtB1V_7handler6select23ConnectionHandlerSelectIB2T_IB2T_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB1V_5dummy17ConnectionHandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB3S_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB5n_EENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE5close0ENCNCINvNtNtB1T_4pool4task30new_for_established_connectionB2S_E0s0_0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([696 x i8]) align 8 captures(address) dereferenceable(696) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %i.b, align 8, !range !30, !noundef !11 ; 2 uses
  switch i64 %i.g, label %bb.k [
    i64 -6, label %bb.j
    i64 -5, label %bb.l
    i64 -4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.h = load i8, ptr %.sroa.456.0..sroa_idx, align 8, !range !29, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !19, !noundef !11
  %i.k = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB2t_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB68_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  switch i8 %i.k, label %bb.p [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.k:                                             ; preds = %bb.h
  %.sroa.456.0.copyload = load i8, ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(687) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(687) %.sroa.557.0..sroa_idx, i64 687, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.a, align 8
  store i8 %.sroa.456.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  %i.l = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s0_0EE14try_start_sendCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.a) ; 3 uses
  switch i8 %i.l, label %bb.n [
    i8 -1, label %.loopexit
    i8 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !11, !align !19, !noundef !11
  %i.o = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB2t_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB68_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 5 uses
  switch i8 %i.o, label %bb.m [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.m:                                             ; preds = %bb.l
  %i.p = icmp samesign ult i8 %i.o, 2
  call void @llvm.assume(i1 %i.p)
  br label %bb.g

bb.n:                                             ; preds = %bb.k
  %i.q = icmp samesign ult i8 %i.l, 2
  call void @llvm.assume(i1 %i.q)
  br label %.loopexit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

.loopexit:                                        ; preds = %bb.k, %bb.n
  %2 = phi i8 [ %i.l, %bb.n ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.p:                                             ; preds = %bb.j
  %i.r = icmp samesign ult i8 %i.k, 2
  call void @llvm.assume(i1 %i.r)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s_0EENtNtNtB6U_6future6future6Future4pollCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 7 uses
  %i.b = alloca [696 x i8], align 8               ; 9 uses
  %i.c = alloca [696 x i8], align 8               ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -4, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa.0.0..sroa_idx, i64 688, i1 false)
  %i.d = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s_0EE14try_start_sendCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.c) ; 3 uses
  switch i8 %i.d, label %bb.d [
    i8 -1, label %bb.f
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.d, 2
  call void @llvm.assume(i1 %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.i, %.loopexit, %bb.l, %bb.m, %bb.j, %bb.j, %bb.p, %bb.f
  %.sroa.01.1 = phi i8 [ %i.d, %bb.f ], [ -1, %bb.j ], [ -1, %bb.j ], [ %2, %.loopexit ], [ %i.o, %bb.l ], [ %i.h, %bb.i ], [ %i.o, %bb.m ], [ %i.k, %bb.p ], [ %i.o, %bb.l ]
  ret i8 %.sroa.01.1

bb.h:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4fuseINtB5_4FuseQINtNtB7_3map3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1T_10ConnectionINtNtNtB1V_7handler6select23ConnectionHandlerSelectIB2T_IB2T_INtCscu2bAJ62uie_6either6EitherNtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler7HandlerNtNtB1V_5dummy17ConnectionHandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEIB3S_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed7HandlerB5n_EENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE5close0ENCNCINvNtNtB1T_4pool4task30new_for_established_connectionB2S_E0s_0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull sret([696 x i8]) align 8 captures(address) dereferenceable(696) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %i.b, align 8, !range !30, !noundef !11 ; 2 uses
  switch i64 %i.g, label %bb.k [
    i64 -6, label %bb.j
    i64 -5, label %bb.l
    i64 -4, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.h = load i8, ptr %.sroa.456.0..sroa_idx, align 8, !range !29, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !19, !noundef !11
  %i.k = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB2t_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB68_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  switch i8 %i.k, label %bb.p [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.k:                                             ; preds = %bb.h
  %.sroa.456.0.copyload = load i8, ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(687) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(687) %.sroa.557.0..sroa_idx, i64 687, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.a, align 8
  store i8 %.sroa.456.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  %i.l = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB3f_IB3f_IB3f_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB3f_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6U_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB8J_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectIBa4_IBa4_IB3f_NtB40_7HandlerNtNtB1Y_5dummy17ConnectionHandlerENtB51_7HandlerEIB3f_NtB5U_7HandlerBbl_EENtB7P_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionBa3_E0s_0EE14try_start_sendCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.a) ; 3 uses
  switch i8 %i.l, label %bb.n [
    i8 -1, label %.loopexit
    i8 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !11, !align !19, !noundef !11
  %i.o = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB2t_IB2t_IB2t_NtNtNtCsaD87b1AYckX_12libp2p_relay11priv_client7handler5EventzENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEIB2t_NtNtNtCsiZBANkraIbZ_12libp2p_dcutr7handler7relayed5EventzEEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB68_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 5 uses
  switch i8 %i.o, label %bb.m [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.m:                                             ; preds = %bb.l
  %i.p = icmp samesign ult i8 %i.o, 2
  call void @llvm.assume(i1 %i.p)
  br label %bb.g

bb.n:                                             ; preds = %bb.k
  %i.q = icmp samesign ult i8 %i.l, 2
  call void @llvm.assume(i1 %i.q)
  br label %.loopexit

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

.loopexit:                                        ; preds = %bb.k, %bb.n
  %2 = phi i8 [ %i.l, %bb.n ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.p:                                             ; preds = %bb.j
  %i.r = icmp samesign ult i8 %i.k, 2
  call void @llvm.assume(i1 %i.r)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linux13AddressFamilyNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linuxNtB5_13AddressFamilyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #24
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdAHj8hiIvQh_11quinn_proto15transport_error5ErrorNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2178
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !2178
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @230)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2178
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdAHj8hiIvQh_11quinn_proto5frame15ConnectionCloseNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2181
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.a, align 8, !noalias !2181
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 10, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2181
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdAHj8hiIvQh_11quinn_proto5frame16ApplicationCloseNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2184
  store ptr %i.b, ptr %i.a, align 8, !noalias !2184
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @186, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2184
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdAHj8hiIvQh_11quinn_proto5frame9FrameTypeNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11
  %i.b = tail call noundef zeroext i1 @_RNvXsZ_NtCsdAHj8hiIvQh_11quinn_proto5frameNtB5_9FrameTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgV0iE8Xkxiy_15futures_channel7oneshot8CanceledNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @385, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table6config20NeighbourTableConfigNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !31, !noundef !11 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2188
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2188
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.k, ptr %i.a, align 8, !noalias !2188
  store ptr %i.d, ptr %i.b, align 8, !noalias !2188
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @134, ptr %i.l, align 8, !noalias !2188
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.m, align 8, !noalias !2188
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @134, ptr %i.n, align 8, !noalias !2188
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.o, align 8, !noalias !2188
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @133, ptr %i.p, align 8, !noalias !2188
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.q, align 8, !noalias !2188
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @133, ptr %i.r, align 8, !noalias !2188
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.s, align 8, !noalias !2188
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @133, ptr %i.t, align 8, !noalias !2188
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.u, align 8, !noalias !2188
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @133, ptr %i.v, align 8, !noalias !2188
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.w, align 8, !noalias !2188
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @133, ptr %i.x, align 8, !noalias !2188
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.y, align 8, !noalias !2188
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @133, ptr %i.z, align 8, !noalias !2188
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.aa, align 8, !noalias !2188
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @135, ptr %i.ab, align 8, !noalias !2188
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @165, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2188
  ret i1 %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_mode8LinkModeNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %i.c = load i8, ptr %i.b, align 1, !range !2193, !alias.scope !2192, !noundef !11
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 7), !noalias !2192
  br label %_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_modeNtB5_8LinkModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 7), !noalias !2192
  br label %_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_modeNtB5_8LinkModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 7), !noalias !2192
  br label %_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_modeNtB5_8LinkModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2194
  store ptr %i.g, ptr %i.a, align 8, !noalias !2194
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2194
  br label %_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_modeNtB5_8LinkModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_modeNtB5_8LinkModeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4rule10port_range13RulePortRangeNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !32, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2198
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.c, ptr %i.a, align 8, !noalias !2198
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 5, ptr noundef nonnull readonly align 2 dereferenceable(4) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2198
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route8lwtunnel14RouteIp6TunnelNtB6_5Debug3fmtCshl6eeJekvqJ_19hole_punching_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !11, !align !19, !noundef !11 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.i = load i64, ptr %i.h, align 8, !range !2203, !alias.scope !2202, !noundef !11 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808
end_hunk_0
