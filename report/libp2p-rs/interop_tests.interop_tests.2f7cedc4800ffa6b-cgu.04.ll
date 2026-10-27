Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.04?download=true
inline.NumInlined: 2646
inline.NumDeleted: 1133
begin_hunk_0_@_RNvXs0_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB5_9MapFutureNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2o_12SwarmBuilderNtNtB2m_8provider5TokioINtB2k_9QuicPhaseINtNtB7_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB9_6muxing5boxed14StreamMuxerBoxEEEE16with_quic_configINvNtCskKLDkoKarTP_4core7convert8identityNtNtB1a_6config6ConfigEE0ENtNtNtB6p_6future6future6Future4pollCs44McOc0n4RX_13interop_tests:bb.a

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #37
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs5xzCmWPONXx_11libp2p_quic10connection10ConnectionEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5xzCmWPONXx_11libp2p_quic10connection10ConnectionECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs5xzCmWPONXx_11libp2p_quic10connection10ConnectionEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3H_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEB1I_ENtNtNtB3H_6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(704) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.d = tail call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB32_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  switch i8 %i.d, label %bb.b [
    i8 -1, label %bb.f
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.07.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -2, ptr %0, align 8
  %.not15 = icmp eq i64 %.sroa.07.0.copyload, -2
  br i1 %.not15, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.07.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.5.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.5.0..sroa_idx, i64 688, i1 false)
  %i.f = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB32_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(696) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %i.d, %bb.a ], [ %i.f, %bb.d ], [ %i.d, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEB1I_ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = tail call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_readyCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  switch i8 %i.c, label %bb.b [
    i8 -1, label %bb.f
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i64 -3, ptr %.sroa.4.0..sroa_idx, align 8
  %.not17 = icmp eq i64 %.sroa.4.0.copyload, -3
  br i1 %.not17, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false)
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx8, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.f = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderNtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task22PendingConnectionEventEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %i.c, %bb.a ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEERNtNtNtNtB5s_9handshake5proto13payload_proto21NoiseHandshakePayloadENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.b = tail call { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEINtCs7OkeAlsyVKR_12futures_sink4SinkRNtNtNtNtB4E_9handshake5proto13payload_proto21NoiseHandshakePayloadE10poll_readyCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !align !24, !noundef !19 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEINtCs7OkeAlsyVKR_12futures_sink4SinkRNtNtNtNtB4E_9handshake5proto13payload_proto21NoiseHandshakePayloadE10start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.5.0 = phi ptr [ %i.h, %bb.d ], [ undef, %bb.a ], [ %i.e, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEERNtNtNtNtB3P_9handshake5proto13payload_proto21NoiseHandshakePayloadENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.b = tail call { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEINtCs7OkeAlsyVKR_12futures_sink4SinkRNtNtNtNtB31_9handshake5proto13payload_proto21NoiseHandshakePayloadE10poll_readyCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1136) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !align !24, !noundef !19 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef ptr @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec6framedINtB5_6FramedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEINtCs7OkeAlsyVKR_12futures_sink4SinkRNtNtNtNtB31_9handshake5proto13payload_proto21NoiseHandshakePayloadE10start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1136) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.5.0 = phi ptr [ %i.h, %bb.d ], [ undef, %bb.a ], [ %i.e, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util4sink4feedINtB5_4FeedINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5hzaM3VbZx4_5redis3aio11AsyncStreamNtNtB1S_6marker4SendNtB3A_4SyncEL_EENtNtNtB2X_6parser11aio_support10ValueCodecEINtNtB2o_3vec3VechEENtNtNtB1S_6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  call void @_RNvXs0_NtNtCs3r7LNfiWgbg_10tokio_util5codec6framedINtB5_6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5hzaM3VbZx4_5redis3aio11AsyncStreamNtNtB14_6marker4SendNtB2M_4SyncEL_EENtNtNtB29_6parser11aio_support10ValueCodecEINtCs7OkeAlsyVKR_12futures_sink4SinkINtNtB1A_3vec3VechEE10poll_readyCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i8, ptr %i.c, align 8, !range !8581, !noundef !19 ; 2 uses
  switch i8 %i.f, label %bb.b [
    i8 -2, label %bb.i
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, i64 31, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.04.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -1, ptr %1, align 8
  %.not23 = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not23, label %bb.e, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.04.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs3r7LNfiWgbg_10tokio_util5codec6framedINtB5_6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5hzaM3VbZx4_5redis3aio11AsyncStreamNtNtB14_6marker4SendNtB2M_4SyncEL_EENtNtNtB29_6parser11aio_support10ValueCodecEINtCs7OkeAlsyVKR_12futures_sink4SinkINtNtB1A_3vec3VechEE10start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  %i.g = load i8, ptr %i.a, align 8, !range !8582, !noundef !19
  %.not24 = icmp eq i8 %i.g, -1
  br i1 %.not24, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 -1, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.i
  ret void

bb.i:                                             ; preds = %bb.a, %bb.b
  store i8 %i.f, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvCs44McOc0n4RX_13interop_tests1__NtBa_12BlpopRequestNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB11_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvCs44McOc0n4RX_13interop_testss1_1__NtBa_6ReportNtNtCscWOm1fvf9pm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtBX_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCsbTgMbcnmcyu_13hickory_proto2op7op_codeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !104, !noundef !19
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 5)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 6)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 6)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 6)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @240)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtNtCsbCXxVlMkWND_6webrtc15peer_connection3sdp8sdp_typeNtB5_10RTCSdpTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !104, !noundef !19 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCsbCXxVlMkWND_6webrtc15peer_connection3sdp8sdp_typeNtB5_10RTCSdpTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtNtNtCsbCXxVlMkWND_6webrtc15peer_connection3sdp8sdp_typeNtB5_10RTCSdpTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.346, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtBX_15ProtocolsChange22from_initial_protocolsINtCscu2bAJ62uie_6either6EitherNtNtBZ_15stream_protocol14StreamProtocolIB2k_B2O_B2O_EEINtNtNtNtBb_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtBZ_10connection11AsStrHashEqB2j_EbENCNvMs2_B59_INtB59_10ConnectionINtNtBX_6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE3new0EE0INtB7_5FnMutTRB2j_EE8call_mutCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8587
  %i.d = tail call { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolIBr_BD_BD_EEINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !noalias !8586 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8587
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !8586
  %i.g = load i64, ptr %i.a, align 8, !range !27, !noalias !8587, !noundef !19
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !31, !noalias !8587, !noundef !19 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !8587
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #37, !noalias !8586
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !8587, !nonnull !19, !noundef !19 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8587
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.j, ptr %i.b, align 8, !noalias !8587
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8587
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8587
  call void @_RNvMNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB2_14StreamProtocol14try_from_owned(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !8586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8587
  %i.o = load i64, ptr %i.c, align 8, !range !18, !noalias !8587, !noundef !19
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtBZ_15InvalidProtocolEECs44McOc0n4RX_13interop_tests.exit.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.f, i1 false), !noalias !8586
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8588
  br label %_RNCINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB8_15ProtocolsChange22from_initial_protocolsINtCscu2bAJ62uie_6either6EitherNtNtBa_15stream_protocol14StreamProtocolIB1v_B1Z_B1Z_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtBa_10connection11AsStrHashEqB1u_EbENCNvMs2_B4A_INtB4A_10ConnectionINtNtB8_6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE3new0EE0Cs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtBZ_15InvalidProtocolEECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %bb.d
  store i64 2, ptr %0, align 8, !alias.scope !8586
  br label %_RNCINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB8_15ProtocolsChange22from_initial_protocolsINtCscu2bAJ62uie_6either6EitherNtNtBa_15stream_protocol14StreamProtocolIB1v_B1Z_B1Z_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtBa_10connection11AsStrHashEqB1u_EbENCNvMs2_B4A_INtB4A_10ConnectionINtNtB8_6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE3new0EE0Cs44McOc0n4RX_13interop_tests.exit

_RNCINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB8_15ProtocolsChange22from_initial_protocolsINtCscu2bAJ62uie_6either6EitherNtNtBa_15stream_protocol14StreamProtocolIB1v_B1Z_B1Z_EEINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtBa_10connection11AsStrHashEqB1u_EbENCNvMs2_B4A_INtB4A_10ConnectionINtNtB8_6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE3new0EE0Cs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtBZ_15InvalidProtocolEECs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8587
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8592)
  %i.c = load i64, ptr %i.b, align 8, !range !48, !alias.scope !8592, !noundef !19
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8593
  store ptr %i.b, ptr %i.a, align 8, !noalias !8593
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @597, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @596)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8593
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 4), !noalias !8592
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshPShd8ZVvJf_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8597)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8597, !noundef !19
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8598
  store ptr %i.b, ptr %i.a, align 8, !noalias !8598
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @597, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @599)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8598
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @595, i64 noundef 4), !noalias !8597
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
