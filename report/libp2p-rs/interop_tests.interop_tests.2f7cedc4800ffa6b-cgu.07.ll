Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.07?download=true
inline.NumInlined: 2713
inline.NumDeleted: 1141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNCNCINvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retryNtNtNtBc_7runtime13tokio_runtime20TokioRuntimeProviderINtB8_10UdpRequestB16_EE000Cs44McOc0n4RX_13interop_tests:bb.a
  %i.f = load atomic i8, ptr %i.e monotonic, align 8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4next4NextINtNtB13_17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB2N_10UdpRequestNtNtNtB2R_7runtime13tokio_runtime20TokioRuntimeProviderENtB2N_7Request4send0EEENtB4_6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.a, align 8, !range !28, !noundef !12 ; 2 uses
  %i.h = icmp eq i64 %i.g, -3
  br i1 %i.h, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -5, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.45.0..sroa_idx, i64 168, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %i.g, %bb.d ], [ -4, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNCINvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retryNtNtNtBc_7runtime13tokio_runtime20TokioRuntimeProviderINtB8_10UdpRequestB16_EE00s_0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !align !14, !noundef !12 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !align !14, !noundef !12
  %i.d = tail call noundef zeroext i1 @_RNvXs_NtCsgtKVDLJNbYN_12futures_core6futureINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtNtCsl9hx9jpF0W9_12futures_util6future6future4fuse4FuseIBG_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputuNtNtBK_6marker4SendEL_EEEENtB4_11FusedFuture13is_terminatedCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQQIBG_QINtNtNtNtCsl9hx9jpF0W9_12futures_util6future6future4fuse4FuseIBG_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEEEEB2F_4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %. = select i1 %i.e, i64 -4, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %., %bb.b ], [ -5, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE15upgrade_inbound0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1432 x i8]) align 8 captures(none) dereferenceable(1432) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1352 x i8], align 8              ; 5 uses
  %i.e = alloca [1352 x i8], align 8              ; 4 uses
  %.sroa.4113 = alloca [168 x i8], align 8        ; 4 uses
  %i.f = alloca [1352 x i8], align 8              ; 5 uses
  %i.g = alloca [1352 x i8], align 8              ; 4 uses
  %.sroa.4111 = alloca [168 x i8], align 8        ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.619.i.i = alloca [176 x i8], align 8     ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [176 x i8], align 8               ; 12 uses
  %i.l = alloca [1352 x i8], align 8              ; 32 uses
  %i.m = alloca [184 x i8], align 8               ; 5 uses
  %.sroa.17.i.sroa.10 = alloca [168 x i8], align 8 ; 11 uses
  %.sroa.21.i = alloca [1160 x i8], align 8       ; 5 uses
  %i.n = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.574 = alloca [40 x i8], align 8          ; 3 uses
  %.sroa.677 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.882 = alloca [1344 x i8], align 8        ; 2 uses
  %i.o = alloca [880 x i8], align 8               ; 10 uses
  %.sroa.860.sroa.9 = alloca [40 x i8], align 8   ; 7 uses
  %i.p = alloca [880 x i8], align 8               ; 12 uses
  %i.q = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [1328 x i8], align 8          ; 4 uses
  %.sroa.11.sroa.6 = alloca [168 x i8], align 8   ; 6 uses
  %.sroa.12 = alloca [1160 x i8], align 8         ; 6 uses
  %i.r = alloca [176 x i8], align 8               ; 5 uses
  %i.s = alloca [1352 x i8], align 8              ; 6 uses
  %i.t = alloca [1352 x i8], align 8              ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1776 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !47, !noundef !12
  switch i8 %i.v, label %default.unreachable202 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.f
  ]

default.unreachable202:                           ; preds = %bb.bi, %bb.bb, %bb.at, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1777 ; 2 uses
  store i8 1, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.x, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  store i64 1, ptr %i.n, align 8, !noalias !3982
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.y, align 8, !noalias !3982
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !3983
  %i.z = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 256, i64 noundef 8) #20, !noalias !3983 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.g, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #31
          to label %.noexc.i unwind label %bb.d, !noalias !3982

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(240) %i.x)
          to label %.body unwind label %bb.e, !noalias !3982

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !3982
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %bb.m

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.body33

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.z, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false), !noalias !3982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3982
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  store ptr %i.z, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.w, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i64 176, i1 false)
  invoke void @_RINvMs1_Csgrcu2UPjJtD_14futures_rustlsNtB6_11TlsAcceptor11accept_withINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENCINvB2_6acceptB15_E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([1352 x i8]) align 8 captures(none) dereferenceable(1352) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(1352) %i.s, i64 1352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.bs, %.body22, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.fr, %bb.bs ], [ %.pn5, %.body22 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !3987, !nonnull !12, !noundef !12
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !3987
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.j, label %.body33

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #34
          to label %.body33 unwind label %bb.cd

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35
  unreachable

.body22:                                          ; preds = %bb.bp, %bb.bm, %.thread153.i.i, %bb.bh, %bb.bf, %.loopexit.split-lp.i.i, %.thread135.sink.split.i.i, %bb.ao, %bb.aj
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread135.sink.split.i.i ], [ %i.fo, %bb.bp ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.fg, %bb.bf ], [ %.pn.pn126.ph.i.i, %bb.bm ], [ %.pn.pn126.ph.i.i, %.thread153.i.i ], [ %i.fi, %bb.bh ], [ %i.du, %bb.aj ], [ %i.eb, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.cd

bb.m:                                             ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3988)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  call void @llvm.experimental.noalias.scope.decl(metadata !3990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3991
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 8, !alias.scope !3992, !noalias !3993 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !3992, !noalias !3993 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !3992, !noalias !3993 ; 6 uses
  store i64 2, ptr %i.al, align 8, !alias.scope !3992, !noalias !3993
  %i.am = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.am, label %bb.n [
    i64 0, label %bb.q
    i64 2, label %bb.o
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
    i64 1, label %bb.p
  ], !prof !53

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3991
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 120, i1 false), !noalias !3993
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !3991
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !3993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !3993
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.ar

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i: ; preds = %bb.m
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3994, !noalias !3995
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 168, i1 false), !alias.scope !3994, !noalias !3995
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3991
  br label %bb.bn

bb.p:                                             ; preds = %bb.m
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
          to label %.noexc21 unwind label %bb.bp

.noexc21:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.m
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx.i.i, i64 176, i1 false), !noalias !3993
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !3993
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx.i.i, i64 1104, i1 false), !noalias !3993
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.l, align 8, !noalias !3991
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3991
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3991
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 1344
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 1168 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3991
  %i.ar = load i8, ptr %i.ap, align 8, !range !47, !noalias !3991, !noundef !12
  %i.as = and i8 %i.ar, 1                         ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !noalias !3991
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !3991
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i8 %i.as, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !3991
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 822 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 823 ; 4 uses
  %i.av = load i8, ptr %i.at, align 2, !range !48, !noalias !3991, !noundef !12
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load i8, ptr %i.au, align 1, !range !48, !noalias !3991
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond161212.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond161212.i.i, label %._crit_edge215.i.i, label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 827 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit181.i.i, %.lr.ph214.i.i
  %i.bc = phi i8 [ %i.as, %.lr.ph214.i.i ], [ %.ph.i.i, %.loopexit181.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  %i.bd = trunc nuw i8 %i.bc to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.be = phi i1 [ %i.bd, %bb.r ], [ false, %bb.y ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.07.192.i.lcssa.i.i, %bb.y ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.y ] ; 3 uses
  %i.bf = load i64, ptr %i.az, align 8, !noalias !3997, !noundef !12
  %.not78.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %i.bg = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !3998 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = extractvalue { i64, ptr } %i.bg, 1      ; 2 uses
  switch i64 %i.bh, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.t
  ]

bb.t:                                             ; preds = %.noexc.i.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i.i.i, %i.bj         ; 2 uses
  %i.bl = load i64, ptr %i.az, align 8, !noalias !3997, !noundef !12
  %.not.not.peel.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %.sroa.0.180.i.i.i = phi i64 [ %i.bq, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  %i.bm = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !3998 ; 2 uses

.noexc77.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1      ; 2 uses
  switch i64 %i.bn, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.u
  ]

bb.u:                                             ; preds = %.noexc77.i.i
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = add i64 %.sroa.0.180.i.i.i, %i.bp       ; 2 uses
  %i.br = load i64, ptr %i.az, align 8, !noalias !3997, !noundef !12
  %.not.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3958

._crit_edge.i.i.i:                                ; preds = %bb.v, %.noexc78.i.i, %.noexc.i.i, %bb.s
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc78.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.v ], [ %.sroa.0.0.i.i.i, %bb.s ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc78.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.v ], [ false, %bb.s ], [ true, %.noexc.i.i ]
  br i1 %i.be, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.bs = load i64, ptr %i.ba, align 8, !noalias !3997, !noundef !12
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = load i8, ptr %i.bb, align 1, !range !48, !noalias !3991
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond165205.i.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond165205.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.u, %.noexc77.i.i, %bb.t
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.bk, %bb.t ], [ %i.bq, %bb.u ], [ %.sroa.0.180.i.i.i, %.noexc77.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.t ], [ false, %bb.u ], [ true, %.noexc77.i.i ]
  %i.bw = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !3998 ; 2 uses

.noexc78.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %._crit_edge.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc78.i.i
  %i.bz = extractvalue { i64, ptr } %i.bw, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.x
  %i.ca = ptrtoint ptr %i.cz to i64
  %i.cb = add i64 %.sroa.07.192.i206.i.i, %i.ca   ; 2 uses
  %i.cc = load i64, ptr %i.ba, align 8, !noalias !3997, !noundef !12
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = load i8, ptr %i.bb, align 1, !range !48, !noalias !3991
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond165.i.i = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond165.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i206.i.i, %.lr.ph.i.i ], [ %i.cb, %.lr.ph94.i.i.i ] ; 2 uses
  %i.cg = load i8, ptr %i.at, align 2, !range !48, !noalias !3997, !noundef !12 ; 2 uses
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i8, ptr %i.au, align 1, !range !48, !noalias !3991 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond169.i.i = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond169.i.i, label %.loopexit181.i.i, label %bb.y

._crit_edge.thread.i.i:                           ; preds = %.noexc79.i.i
  %i.ck = load i8, ptr %i.at, align 2, !range !48, !noalias !3997, !noundef !12 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i8, ptr %i.au, align 1, !range !48, !noalias !3991 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond169238.i.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond169238.i.i, label %.loopexit181.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.co = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bc, %._crit_edge.i.i.i ]
  %i.cp = load i8, ptr %i.at, align 2, !range !48, !noalias !3997, !noundef !12
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = load i8, ptr %i.au, align 1, !range !48, !noalias !3991
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond163.i.i = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond163.i.i, label %.loopexit181.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i206.i.i = phi i64 [ %i.cb, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.ct = load i8, ptr %i.at, align 2, !range !48, !noalias !3997, !noundef !12
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = load i64, ptr %i.az, align 8, !noalias !3991
  %i.cw = icmp eq i64 %i.cv, 0
  %or.cond167.i.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond167.i.i, label %bb.w, label %._crit_edge.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cx = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !3998 ; 2 uses

.noexc79.i.i:                                     ; preds = %bb.w
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = extractvalue { i64, ptr } %i.cx, 1      ; 3 uses
  switch i64 %i.cy, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.x
  ]

bb.x:                                             ; preds = %.noexc79.i.i
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.x
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !3996, !noalias !3999
  br label %.thread.i.i.i

bb.y:                                             ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.s

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.db = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !3998

.thread.i.i:                                      ; preds = %bb.y, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa239243.i.i = phi i64 [ %.sroa.07.192.i206.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.y ]
  %i.dc = phi i8 [ %i.ck, %._crit_edge.thread.i.i ], [ %i.cg, %bb.y ]
  %i.dd = phi i8 [ %i.cm, %._crit_edge.thread.i.i ], [ %i.ci, %bb.y ]
  %i.de = icmp eq i64 %.sroa.07.192.i.lcssa239243.i.i, 0
  %i.df = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i, label %.loopexit181.i.i

._crit_edge215.i.i:                               ; preds = %.loopexit181.i.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4000
  store ptr %i.l, ptr %i.c, align 8, !noalias !4000
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @238, ptr %i.dg, align 8, !noalias !4000
  %i.dh = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !3998 ; 2 uses

.noexc83.i.i:                                     ; preds = %._crit_edge215.i.i
  %.not.i.i.i = icmp eq ptr %i.dh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4000
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc83.i.i
  %i.di = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dh, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

bb.aa:                                            ; preds = %.noexc83.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc85.i.i, %bb.aa
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !4001, !noundef !12
  %.not16.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not16.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !3998

bb.ad:                                            ; preds = %bb.ab
  %i.dm = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc85.i.i unwind label %.loopexit.i.i, !noalias !3998 ; 2 uses

.noexc85.i.i:                                     ; preds = %bb.ad
  %i.dn = extractvalue { i64, ptr } %i.dm, 0
  switch i64 %i.dn, label %bb.ae [
    i64 2, label %.loopexit.i82.i.i
    i64 0, label %bb.ab
  ]

bb.ae:                                            ; preds = %.noexc85.i.i
  %i.do = extractvalue { i64, ptr } %i.dm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  br label %.loopexit.i82.i.i

.loopexit.i82.i.i:                                ; preds = %.noexc85.i.i, %bb.ae
  %.sroa.5.1.i.i.i = phi ptr [ %i.do, %bb.ae ], [ undef, %.noexc85.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.ae ], [ 1, %.noexc85.i.i ]
  %i.dp = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.dq = insertvalue { i64, ptr } %i.dp, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.loopexit.i82.i.i, %bb.ac, %bb.z
  %.merged.i.i.i = phi { i64, ptr } [ %i.di, %bb.z ], [ %i.dq, %.loopexit.i82.i.i ], [ %i.dl, %bb.ac ] ; 2 uses
  %i.dr = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ds = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.dt = trunc nuw i64 %i.dr to i1
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.d, ptr noundef nonnull align 8 dereferenceable(1352) %i.l, i64 1352, i1 false), !noalias !3991
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.al)
          to label %bb.am unwind label %bb.al, !noalias !4002

bb.ag:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.e, ptr noundef nonnull align 8 dereferenceable(1352) %i.l, i64 1352, i1 false), !noalias !3991
  %.sroa.0112.0.copyload = load ptr, ptr %i.aq, align 8, !noalias !3991
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113.0..sroa_idx, i64 168, i1 false), !noalias !3991
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.e)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.aj, !noalias !3998

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3991
  %.sroa.0.0.copyload2.i = load i64, ptr %i.l, align 8, !noalias !4003
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !4003
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.17.i.sroa.0.0.copyload106 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !4003
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 168, i1 false), !noalias !4003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.614.0..sroa_idx.i.i, i64 1160, i1 false), !noalias !4003
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ds) #32
          to label %.body22 unwind label %bb.ak, !noalias !3998

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113, i64 168, i1 false), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4113)
  br label %bb.an

bb.ak:                                            ; preds = %bb.bm, %bb.bl, %.thread118.i.i, %3, %bb.bh, %.loopexit.split-lp.i.i, %bb.ao, %bb.aj
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4002
  unreachable

bb.al:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.am:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.al, ptr noundef nonnull align 8 dereferenceable(1352) %i.d, i64 1352, i1 false), !noalias !3993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3991
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i, %bb.am, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.am ], [ %.sroa.0112.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.0110.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.aq ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.am ], [ %i.ds, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.11105.0.ph.i.i, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.aq ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.am ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ -1, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3991
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.f, ptr noundef nonnull align 8 dereferenceable(1352) %i.l, i64 1352, i1 false), !noalias !3991
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.al)
          to label %bb.aq unwind label %bb.ap, !noalias !4002

.loopexit130.i.i.i:                               ; preds = %bb.v, %.noexc.i.i, %.noexc77.i.i, %.noexc79.i.i, %.thread51.i.i.i
  %.sroa.11105.0.ph.i.i = phi ptr [ %i.db, %.thread51.i.i.i ], [ %i.bo, %.noexc77.i.i ], [ %i.cz, %.noexc79.i.i ], [ %i.bz, %bb.v ], [ %i.bi, %.noexc.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.g, ptr noundef nonnull align 8 dereferenceable(1352) %i.l, i64 1352, i1 false), !noalias !3991
  %.sroa.0110.0.copyload = load ptr, ptr %i.aq, align 8, !noalias !3991
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111.0..sroa_idx, i64 168, i1 false), !noalias !3991
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.g)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i unwind label %bb.ao, !noalias !3998

.loopexit181.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.dx = phi i8 [ 1, %.thread.i.i.i ], [ %i.dd, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.dy = phi i8 [ 1, %.thread.i.i.i ], [ %i.dc, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.co, %.thread.i.i.i ], [ %i.bc, %.thread.i.i ], [ %i.bc, %._crit_edge.thread.i.i ], [ %i.bc, %._crit_edge.i.i ]
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = trunc nuw i8 %i.dx to i1
  %or.cond161.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond161.i.i, label %._crit_edge215.i.i, label %bb.r

bb.ao:                                            ; preds = %.loopexit130.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.11105.0.ph.i.i) #32
          to label %.body22 unwind label %bb.ak, !noalias !3998

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3991
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111, i64 168, i1 false), !noalias !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4111)
  br label %bb.an

bb.ap:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.aq:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.al, ptr noundef nonnull align 8 dereferenceable(1352) %i.f, i64 1352, i1 false), !noalias !3993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3991
  br label %bb.an

.thread135.sink.split.i.i:                        ; preds = %bb.ap, %bb.al
  %.sink.i.i = phi ptr [ %i.d, %bb.al ], [ %i.f, %bb.ap ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.dw, %bb.al ], [ %i.ec, %bb.ap ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.al, ptr noundef nonnull align 8 dereferenceable(1352) %.sink.i.i, i64 1352, i1 false), !noalias !3993
  br label %.body22

.loopexit.i.i:                                    ; preds = %bb.ad
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.w
  %lpad.loopexit171.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit174.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ac, %._crit_edge215.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp178.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit171.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit174.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp178.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.l) #32
          to label %.body22 unwind label %bb.ak, !noalias !3998

bb.ar:                                            ; preds = %bb.az, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3991
  store ptr %i.k, ptr %i.i, align 8, !noalias !3991
  store ptr %2, ptr %i.ao, align 8, !noalias !3991
  %i.ed = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @49)
          to label %bb.as unwind label %.thread128.thread145.i.i, !noalias !3998 ; 2 uses

.thread128.thread145.i.i:                         ; preds = %bb.ar
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i.i

.thread147.i.i:                                   ; preds = %bb.bd
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.eg = extractvalue { i64, ptr } %i.ed, 0
  %i.eh = extractvalue { i64, ptr } %i.ed, 1      ; 12 uses
  %i.ei = trunc nuw i64 %i.eg to i1
  br i1 %i.ei, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ej = ptrtoint ptr %i.eh to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ek = and i64 %i.ej, 3                        ; 3 uses
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %bb.au
    i64 3, label %bb.av
    i64 0, label %bb.aw
    i64 1, label %bb.ax
  ], !prof !23

bb.au:                                            ; preds = %bb.at
  %i.el = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90.i.i unwind label %3, !noalias !3998

.noexc90.i.i:                                     ; preds = %bb.au
  %i.em = lshr i64 %i.ej, 32
  %i.en = trunc nuw i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !3998, !nonnull !12, !noundef !12
  %i.eq = invoke noundef i8 %i.ep(i32 noundef %i.en)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !3998, !inline_history !6

bb.av:                                            ; preds = %bb.at
  %i.er = lshr i64 %i.ej, 32
  %i.es = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.er to i8 ; 2 uses
  %i.et = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.es)
  call void @llvm.assume(i1 %i.et)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.aw:                                            ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ev = load i8, ptr %i.eu, align 8, !range !55, !noalias !3998, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ax:                                            ; preds = %bb.at
  %i.ew = getelementptr i8, ptr %i.eh, i64 31
  %i.ex = load i8, ptr %i.ew, align 8, !range !55, !noalias !3998, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ay:                                            ; preds = %bb.as
  %i.ey = icmp eq ptr %i.eh, null
  br i1 %i.ey, label %.loopexit182.i.i, label %bb.az

.loopexit182.i.i:                                 ; preds = %bb.ay
  %.sroa.17.i.sroa.0.0.copyload102 = load ptr, ptr %i.k, align 8, !noalias !4003
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa_idx, i64 168, i1 false), !noalias !4003
  br label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3991
  br label %bb.ar

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %.noexc90.i.i
  %.sroa.0.0.i89.i.i = phi i8 [ %i.ex, %bb.ax ], [ %switch.idx.cast.i.i.i.i.i, %bb.av ], [ %i.ev, %bb.aw ], [ %i.eq, %.noexc90.i.i ]
  %i.ez = icmp eq i8 %.sroa.0.0.i89.i.i, 13
  br i1 %i.ez, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.k, i64 176, i1 false), !noalias !3991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !3991
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.al)
          to label %bb.bi unwind label %bb.bh, !noalias !4002

bb.bb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload103 = load ptr, ptr %i.k, align 8, !noalias !4003
  %.sroa.17.i.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa_idx107, i64 168, i1 false), !noalias !4003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3991
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 3, label %bb.bc
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 1, label %bb.bd
  ], !prof !23

bb.bc:                                            ; preds = %bb.bb
  %i.fa = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %i.fb = and i64 %i.ej, 1095216660480
  %i.fc = icmp ne i64 %i.fb, 1095216660480
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fc)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.fd = getelementptr i8, ptr %i.eh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !alias.scope !4004, !noalias !3991
  store i8 3, ptr %i.b, align 8, !alias.scope !4004, !noalias !3991
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.thread147.i.i, !noalias !3998

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3991
  br label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i, %.loopexit182.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload102, %.loopexit182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3991
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i unwind label %bb.bf, !noalias !3998

bb.bf:                                            ; preds = %bb.be
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %.body22 unwind label %bb.bg, !noalias !3998

bb.bg:                                            ; preds = %bb.bf
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !3998
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.bp

bb.bh:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.al, align 8, !alias.scope !3992, !noalias !3993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !3993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.an, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, i64 176, i1 false), !noalias !3993
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !3992, !noalias !3993
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.eh) #32
          to label %.body22 unwind label %bb.ak, !noalias !4002

bb.bi:                                            ; preds = %bb.ba
  store i64 3, ptr %i.al, align 8, !alias.scope !3992, !noalias !3993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !3993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.an, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, i64 176, i1 false), !noalias !3993
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !3992, !noalias !3993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3991
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.bj
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bk
  ], !prof !23

bb.bj:                                            ; preds = %bb.bi
  %i.fj = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %i.fk = and i64 %i.ej, 1095216660480
  %i.fl = icmp ne i64 %i.fk, 1095216660480
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.assume(i1 %i.fl)
  br label %.critedge.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.fm = getelementptr i8, ptr %i.eh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !alias.scope !4005, !noalias !3991
  store i8 3, ptr %i.a, align 8, !alias.scope !4005, !noalias !3991
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.critedge.i.i unwind label %bb.bp

.critedge.i.i:                                    ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3991
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3991
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

.thread153.i.i:                                   ; preds = %bb.bl
  br i1 %.sroa.059.0124.ph.i.i, label %bb.bm, label %.body22

3:                                                ; preds = %.noexc90.i.i, %bb.au
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.eh) #32
          to label %.thread118.i.i unwind label %bb.ak, !noalias !3998

.thread118.i.i:                                   ; preds = %3, %.thread128.thread145.i.i
  %.pn.pn127.i.i = phi { ptr, i32 } [ %i.ee, %.thread128.thread145.i.i ], [ %lpad.thr_comm.i.i, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload.i.i) #32
          to label %bb.bl unwind label %bb.ak, !noalias !3998

bb.bl:                                            ; preds = %.thread118.i.i, %.thread147.i.i
  %.pn.pn126.ph.i.i = phi { ptr, i32 } [ %i.ef, %.thread147.i.i ], [ %.pn.pn127.i.i, %.thread118.i.i ] ; 2 uses
  %.sroa.059.0124.ph.i.i = phi i1 [ false, %.thread147.i.i ], [ true, %.thread118.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #32
          to label %.thread153.i.i unwind label %bb.ak, !noalias !3998

bb.bm:                                            ; preds = %.thread153.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %i.k) #32
          to label %.body22 unwind label %bb.ak, !noalias !3998

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i, %bb.an, %bb.ai
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.an ], [ %.sroa.17.i.sroa.0.0.copyload106, %bb.ai ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.an ], [ %.sroa.12.0.copyload4.i, %bb.ai ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.an ], [ %.sroa.0.0.copyload2.i, %bb.ai ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3991
  switch i64 %.sroa.0.3.i, label %bb.bo [
    i64 -1, label %bb.bq
    i64 2, label %bb.bn
  ]

bb.bn:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4006
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4006
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, i64 168, i1 false), !noalias !4006
  store ptr %.sroa.12.317.i, ptr %i.m, align 8, !noalias !4006
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %.sroa.414.0..sroa_idx.i)
          to label %.noexc26 unwind label %bb.bp

.noexc26:                                         ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4006
  br label %bb.br

bb.bo:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.11.sroa.6, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, i64 168, i1 false), !noalias !4007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, i64 1160, i1 false), !noalias !4007
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %bb.p
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body22

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit, %bb.bq
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit ], [ 3, %bb.bq ]
  store i8 %storemerge, ptr %i.u, align 8
  ret void

bb.bq:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.br:                                            ; preds = %bb.bo, %.noexc26
  %.sroa.11.sroa.052.0.ph = phi ptr [ undef, %.noexc26 ], [ %.sroa.17.i.sroa.0.3, %bb.bo ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc26 ], [ %.sroa.12.3.i, %bb.bo ] ; 3 uses
  %.sroa.048.0.ph = phi i64 [ 2, %.noexc26 ], [ %.sroa.0.3.i, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.fq = ptrtoint ptr %.sroa.9.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.11.sroa.6, i64 168, i1 false)
  %.sroa.8.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.8.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.12, i64 1160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit28 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit28: ; preds = %bb.br
  %i.fs = icmp eq i64 %.sroa.048.0.ph, 2
  br i1 %i.fs, label %bb.ck, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit28
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1288) %i.ft, i64 1288, i1 false)
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.657.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.048.0.ph, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 %i.fq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.11.sroa.052.0.ph, ptr %.sroa.556.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  call void @llvm.experimental.noalias.scope.decl(metadata !4010)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !4011, !nonnull !12, !noundef !12
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !4011
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu) #34
          to label %bb.bw unwind label %.thread138

.thread138:                                       ; preds = %bb.bu
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bv:                                            ; preds = %bb.bw
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread142

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 1168
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.t)
          to label %bb.bx unwind label %bb.bv

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  %i.gb = load i64, ptr %i.o, align 8, !range !25, !alias.scope !4013, !noalias !4012, !noundef !12 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.860.sroa.0.0.copyload87 = load i64, ptr %i.gd, align 8, !alias.scope !4014 ; 2 uses
  %.sroa.860.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.860.sroa.8.0.copyload89 = load ptr, ptr %.sroa.860.sroa.8.0..sroa_idx, align 8, !alias.scope !4014 ; 2 uses
  %.sroa.860.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !4014
  br i1 %i.gc, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.10.0..sroa_idx62, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9, i64 40, i1 false)
  store i64 %i.gb, ptr %i.p, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.860.sroa.0.0.copyload87, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.860.sroa.8.0.copyload89, ptr %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.p)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p) #32
          to label %.thread142 unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p)
          to label %bb.cc unwind label %bb.cb

.thread142:                                       ; preds = %bb.bv, %bb.bz, %bb.cb
  %.pn11 = phi { ptr, i32 } [ %i.fz, %bb.bv ], [ %i.gf, %bb.cb ], [ %i.ge, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.thread142

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.099.0.copyload = load i64, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1344) %.sroa.882, ptr noundef nonnull align 8 dereferenceable(1344) %.sroa.4.0..sroa_idx, i64 1344, i1 false)
  %.sroa.091.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.592.0.copyload = load ptr, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.574, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.693.0..sroa_idx, i64 40, i1 false)
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.794.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.cl, %bb.ck, %bb.cg, %bb.cc
  %.sroa.679.0 = phi i64 [ %.sroa.099.0.copyload, %bb.cc ], [ -1, %bb.cg ], [ -1, %bb.ck ], [ -1, %bb.cl ]
  %.sroa.469.0 = phi ptr [ %.sroa.592.0.copyload, %bb.cc ], [ %.sroa.860.sroa.8.0.copyload89, %bb.cg ], [ %.sroa.9.0.ph, %bb.ck ], [ %.sroa.9.0.ph, %bb.cl ]
  %.sroa.066.0 = phi i64 [ %.sroa.091.0.copyload, %bb.cc ], [ %.sroa.860.sroa.0.0.copyload87, %bb.cg ], [ -9223372036854775757, %bb.ck ], [ -9223372036854775757, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %.sroa.066.0, ptr %0, align 8
  %.sroa.469.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.469.0, ptr %.sroa.469.0..sroa_idx70, align 8
  %.sroa.574.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE15upgrade_inbound0Cs44McOc0n4RX_13interop_tests:bb.a
bb.cg:                                            ; preds = %bb.ce
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

.body33:                                          ; preds = %.body, %bb.cm, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit, %bb.ci, %bb.cf, %bb.cj
  %.pn17.pn = phi { ptr, i32 } [ %i.gm, %bb.ci ], [ %i.gh, %bb.cf ], [ %.pn11.pn.pn141, %bb.cj ], [ %i.gr, %bb.cm ], [ %i.ab, %.body ], [ %.pn15, %bb.j ], [ %.pn15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1777
  %i.gk = load i8, ptr %i.gj, align 1, !range !48, !noundef !12
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.co, label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.cj:                                            ; preds = %.thread142, %.thread138
  %.pn11.pn.pn141 = phi { ptr, i32 } [ %i.fy, %.thread138 ], [ %.pn11, %.thread142 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.t) #32
          to label %.body33 unwind label %bb.cd

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit28
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4015)
  call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  call void @llvm.experimental.noalias.scope.decl(metadata !4017)
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !4018, !nonnull !12, !noundef !12
  %i.gp = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !4018
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gn) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.cn:                                            ; preds = %bb.co, %.body33
  store i8 2, ptr %i.u, align 8
  resume { ptr, i32 } %.pn17.pn

bb.co:                                            ; preds = %.body33
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %i.gs) #32
          to label %bb.cn unwind label %bb.cd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE15upgrade_inbound0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1320 x i8], align 8              ; 5 uses
  %i.e = alloca [1320 x i8], align 8              ; 4 uses
  %.sroa.4113 = alloca [136 x i8], align 8        ; 4 uses
  %i.f = alloca [1320 x i8], align 8              ; 5 uses
  %i.g = alloca [1320 x i8], align 8              ; 4 uses
  %.sroa.4111 = alloca [136 x i8], align 8        ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.619.i.i = alloca [144 x i8], align 8     ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [144 x i8], align 8               ; 12 uses
  %i.l = alloca [1320 x i8], align 8              ; 32 uses
  %i.m = alloca [152 x i8], align 8               ; 5 uses
  %.sroa.17.i.sroa.10 = alloca [136 x i8], align 8 ; 11 uses
  %.sroa.21.i = alloca [1160 x i8], align 8       ; 5 uses
  %i.n = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.574 = alloca [40 x i8], align 8          ; 3 uses
  %.sroa.677 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.882 = alloca [1312 x i8], align 8        ; 2 uses
  %i.o = alloca [880 x i8], align 8               ; 10 uses
  %.sroa.860.sroa.9 = alloca [40 x i8], align 8   ; 7 uses
  %i.p = alloca [880 x i8], align 8               ; 12 uses
  %i.q = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [1296 x i8], align 8          ; 4 uses
  %.sroa.11.sroa.6 = alloca [136 x i8], align 8   ; 6 uses
  %.sroa.12 = alloca [1160 x i8], align 8         ; 6 uses
  %i.r = alloca [144 x i8], align 8               ; 5 uses
  %i.s = alloca [1320 x i8], align 8              ; 6 uses
  %i.t = alloca [1320 x i8], align 8              ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1712 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !47, !noundef !12
  switch i8 %i.v, label %default.unreachable202 [
    i8 0, label %bb.b
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.f
  ]

default.unreachable202:                           ; preds = %bb.bi, %bb.bb, %bb.at, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1713 ; 2 uses
  store i8 1, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.x, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  store i64 1, ptr %i.n, align 8, !noalias !4064
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.y, align 8, !noalias !4064
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !4065
  %i.z = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 256, i64 noundef 8) #20, !noalias !4065 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.g, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #31
          to label %.noexc.i unwind label %bb.d, !noalias !4064

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(240) %i.x)
          to label %.body unwind label %bb.e, !noalias !4064

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4064
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br label %bb.m

.body:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.body33

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.z, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false), !noalias !4064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4064
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  store ptr %i.z, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.w, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i64 144, i1 false)
  invoke void @_RINvMs1_Csgrcu2UPjJtD_14futures_rustlsNtB6_11TlsAcceptor11accept_withINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENCINvB2_6acceptB15_E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([1320 x i8]) align 8 captures(none) dereferenceable(1320) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(1320) %i.s, i64 1320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.bs, %.body22, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.fr, %bb.bs ], [ %.pn5, %.body22 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !4069, !nonnull !12, !noundef !12
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !4069
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.j, label %.body33

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #34
          to label %.body33 unwind label %bb.cd

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #35
  unreachable

.body22:                                          ; preds = %bb.bp, %bb.bm, %.thread153.i.i, %bb.bh, %bb.bf, %.loopexit.split-lp.i.i, %.thread135.sink.split.i.i, %bb.ao, %bb.aj
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread135.sink.split.i.i ], [ %i.fo, %bb.bp ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.fg, %bb.bf ], [ %.pn.pn126.ph.i.i, %bb.bm ], [ %.pn.pn126.ph.i.i, %.thread153.i.i ], [ %i.fi, %bb.bh ], [ %i.du, %bb.aj ], [ %i.eb, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.cd

bb.m:                                             ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4070)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4071)
  call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4073
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 8, !alias.scope !4074, !noalias !4075 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !4074, !noalias !4075 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4074, !noalias !4075 ; 6 uses
  store i64 2, ptr %i.al, align 8, !alias.scope !4074, !noalias !4075
  %i.am = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.am, label %bb.n [
    i64 0, label %bb.q
    i64 2, label %bb.o
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
    i64 1, label %bb.p
  ], !prof !53

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4073
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false), !noalias !4075
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !4073
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !4075
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.ar

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i: ; preds = %bb.m
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !4076, !noalias !4077
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 136, i1 false), !alias.scope !4076, !noalias !4077
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4073
  br label %bb.bn

bb.p:                                             ; preds = %bb.m
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
          to label %.noexc21 unwind label %bb.bp

.noexc21:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.m
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx.i.i, i64 144, i1 false), !noalias !4075
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4075
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx.i.i, i64 1104, i1 false), !noalias !4075
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.l, align 8, !noalias !4073
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4073
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4073
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 1312
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 1168 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4073
  %i.ar = load i8, ptr %i.ap, align 8, !range !47, !noalias !4073, !noundef !12
  %i.as = and i8 %i.ar, 1                         ; 2 uses
  store ptr %i.aq, ptr %i.h, align 8, !noalias !4073
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !4073
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i8 %i.as, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !4073
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 822 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 823 ; 4 uses
  %i.av = load i8, ptr %i.at, align 2, !range !48, !noalias !4073, !noundef !12
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load i8, ptr %i.au, align 1, !range !48, !noalias !4073
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond161212.i.i = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond161212.i.i, label %._crit_edge215.i.i, label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 827 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit181.i.i, %.lr.ph214.i.i
  %i.bc = phi i8 [ %i.as, %.lr.ph214.i.i ], [ %.ph.i.i, %.loopexit181.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4078)
  %i.bd = trunc nuw i8 %i.bc to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.be = phi i1 [ %i.bd, %bb.r ], [ false, %bb.y ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.07.192.i.lcssa.i.i, %bb.y ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.r ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.y ] ; 3 uses
  %i.bf = load i64, ptr %i.az, align 8, !noalias !4079, !noundef !12
  %.not78.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %i.bg = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4080 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = extractvalue { i64, ptr } %i.bg, 1      ; 2 uses
  switch i64 %i.bh, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.t
  ]

bb.t:                                             ; preds = %.noexc.i.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = add i64 %.sroa.0.0.i.i.i, %i.bj         ; 2 uses
  %i.bl = load i64, ptr %i.az, align 8, !noalias !4079, !noundef !12
  %.not.not.peel.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %.sroa.0.180.i.i.i = phi i64 [ %i.bq, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  %i.bm = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4080 ; 2 uses

.noexc77.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1      ; 2 uses
  switch i64 %i.bn, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.u
  ]

bb.u:                                             ; preds = %.noexc77.i.i
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = add i64 %.sroa.0.180.i.i.i, %i.bp       ; 2 uses
  %i.br = load i64, ptr %i.az, align 8, !noalias !4079, !noundef !12
  %.not.not.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4040

._crit_edge.i.i.i:                                ; preds = %bb.v, %.noexc78.i.i, %.noexc.i.i, %bb.s
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc78.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.v ], [ %.sroa.0.0.i.i.i, %bb.s ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc78.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.v ], [ false, %bb.s ], [ true, %.noexc.i.i ]
  br i1 %i.be, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.bs = load i64, ptr %i.ba, align 8, !noalias !4079, !noundef !12
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = load i8, ptr %i.bb, align 1, !range !48, !noalias !4073
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond165205.i.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond165205.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.u, %.noexc77.i.i, %bb.t
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.bk, %bb.t ], [ %i.bq, %bb.u ], [ %.sroa.0.180.i.i.i, %.noexc77.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.t ], [ false, %bb.u ], [ true, %.noexc77.i.i ]
  %i.bw = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4080 ; 2 uses

.noexc78.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %._crit_edge.i.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc78.i.i
  %i.bz = extractvalue { i64, ptr } %i.bw, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.x
  %i.ca = ptrtoint ptr %i.cz to i64
  %i.cb = add i64 %.sroa.07.192.i206.i.i, %i.ca   ; 2 uses
  %i.cc = load i64, ptr %i.ba, align 8, !noalias !4079, !noundef !12
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = load i8, ptr %i.bb, align 1, !range !48, !noalias !4073
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond165.i.i = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond165.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i206.i.i, %.lr.ph.i.i ], [ %i.cb, %.lr.ph94.i.i.i ] ; 2 uses
  %i.cg = load i8, ptr %i.at, align 2, !range !48, !noalias !4079, !noundef !12 ; 2 uses
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i8, ptr %i.au, align 1, !range !48, !noalias !4073 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond169.i.i = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond169.i.i, label %.loopexit181.i.i, label %bb.y

._crit_edge.thread.i.i:                           ; preds = %.noexc79.i.i
  %i.ck = load i8, ptr %i.at, align 2, !range !48, !noalias !4079, !noundef !12 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i8, ptr %i.au, align 1, !range !48, !noalias !4073 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond169238.i.i = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond169238.i.i, label %.loopexit181.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.co = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bc, %._crit_edge.i.i.i ]
  %i.cp = load i8, ptr %i.at, align 2, !range !48, !noalias !4079, !noundef !12
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = load i8, ptr %i.au, align 1, !range !48, !noalias !4073
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond163.i.i = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond163.i.i, label %.loopexit181.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i206.i.i = phi i64 [ %i.cb, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.ct = load i8, ptr %i.at, align 2, !range !48, !noalias !4079, !noundef !12
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = load i64, ptr %i.az, align 8, !noalias !4073
  %i.cw = icmp eq i64 %i.cv, 0
  %or.cond167.i.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond167.i.i, label %bb.w, label %._crit_edge.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cx = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4080 ; 2 uses

.noexc79.i.i:                                     ; preds = %bb.w
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %i.cz = extractvalue { i64, ptr } %i.cx, 1      ; 3 uses
  switch i64 %i.cy, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.x
  ]

bb.x:                                             ; preds = %.noexc79.i.i
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.x
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !4078, !noalias !4081
  br label %.thread.i.i.i

bb.y:                                             ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.s

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.db = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4080

.thread.i.i:                                      ; preds = %bb.y, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa239243.i.i = phi i64 [ %.sroa.07.192.i206.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.y ]
  %i.dc = phi i8 [ %i.ck, %._crit_edge.thread.i.i ], [ %i.cg, %bb.y ]
  %i.dd = phi i8 [ %i.cm, %._crit_edge.thread.i.i ], [ %i.ci, %bb.y ]
  %i.de = icmp eq i64 %.sroa.07.192.i.lcssa239243.i.i, 0
  %i.df = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i, label %.loopexit181.i.i

._crit_edge215.i.i:                               ; preds = %.loopexit181.i.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4082
  store ptr %i.l, ptr %i.c, align 8, !noalias !4082
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @238, ptr %i.dg, align 8, !noalias !4082
  %i.dh = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4080 ; 2 uses

.noexc83.i.i:                                     ; preds = %._crit_edge215.i.i
  %.not.i.i.i = icmp eq ptr %i.dh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4082
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc83.i.i
  %i.di = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dh, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

bb.aa:                                            ; preds = %.noexc83.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc85.i.i, %bb.aa
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !4083, !noundef !12
  %.not16.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not16.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4080

bb.ad:                                            ; preds = %bb.ab
  %i.dm = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.aq, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc85.i.i unwind label %.loopexit.i.i, !noalias !4080 ; 2 uses

.noexc85.i.i:                                     ; preds = %bb.ad
  %i.dn = extractvalue { i64, ptr } %i.dm, 0
  switch i64 %i.dn, label %bb.ae [
    i64 2, label %.loopexit.i82.i.i
    i64 0, label %bb.ab
  ]

bb.ae:                                            ; preds = %.noexc85.i.i
  %i.do = extractvalue { i64, ptr } %i.dm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  br label %.loopexit.i82.i.i

.loopexit.i82.i.i:                                ; preds = %.noexc85.i.i, %bb.ae
  %.sroa.5.1.i.i.i = phi ptr [ %i.do, %bb.ae ], [ undef, %.noexc85.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.ae ], [ 1, %.noexc85.i.i ]
  %i.dp = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.dq = insertvalue { i64, ptr } %i.dp, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.loopexit.i82.i.i, %bb.ac, %bb.z
  %.merged.i.i.i = phi { i64, ptr } [ %i.di, %bb.z ], [ %i.dq, %.loopexit.i82.i.i ], [ %i.dl, %bb.ac ] ; 2 uses
  %i.dr = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ds = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.dt = trunc nuw i64 %i.dr to i1
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.d, ptr noundef nonnull align 8 dereferenceable(1320) %i.l, i64 1320, i1 false), !noalias !4073
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.al)
          to label %bb.am unwind label %bb.al, !noalias !4084

bb.ag:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.e, ptr noundef nonnull align 8 dereferenceable(1320) %i.l, i64 1320, i1 false), !noalias !4073
  %.sroa.0112.0.copyload = load ptr, ptr %i.aq, align 8, !noalias !4073
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113.0..sroa_idx, i64 136, i1 false), !noalias !4073
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.e)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.aj, !noalias !4080

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4073
  %.sroa.0.0.copyload2.i = load i64, ptr %i.l, align 8, !noalias !4085
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !4085
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.17.i.sroa.0.0.copyload106 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !4085
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 136, i1 false), !noalias !4085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.614.0..sroa_idx.i.i, i64 1160, i1 false), !noalias !4085
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ds) #32
          to label %.body22 unwind label %bb.ak, !noalias !4080

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113, i64 136, i1 false), !noalias !4085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4113)
  br label %bb.an

bb.ak:                                            ; preds = %bb.bm, %bb.bl, %.thread118.i.i, %3, %bb.bh, %.loopexit.split-lp.i.i, %bb.ao, %bb.aj
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4084
  unreachable

bb.al:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.am:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.al, ptr noundef nonnull align 8 dereferenceable(1320) %i.d, i64 1320, i1 false), !noalias !4075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4073
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i, %bb.am, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.am ], [ %.sroa.0112.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.0110.0.copyload, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.aq ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.am ], [ %i.ds, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.11105.0.ph.i.i, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.aq ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.am ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ 2, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ -1, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4073
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.f, ptr noundef nonnull align 8 dereferenceable(1320) %i.l, i64 1320, i1 false), !noalias !4073
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.al)
          to label %bb.aq unwind label %bb.ap, !noalias !4084

.loopexit130.i.i.i:                               ; preds = %bb.v, %.noexc.i.i, %.noexc77.i.i, %.noexc79.i.i, %.thread51.i.i.i
  %.sroa.11105.0.ph.i.i = phi ptr [ %i.db, %.thread51.i.i.i ], [ %i.bo, %.noexc77.i.i ], [ %i.cz, %.noexc79.i.i ], [ %i.bz, %bb.v ], [ %i.bi, %.noexc.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.g, ptr noundef nonnull align 8 dereferenceable(1320) %i.l, i64 1320, i1 false), !noalias !4073
  %.sroa.0110.0.copyload = load ptr, ptr %i.aq, align 8, !noalias !4073
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111.0..sroa_idx, i64 136, i1 false), !noalias !4073
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.g)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i unwind label %bb.ao, !noalias !4080

.loopexit181.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.dx = phi i8 [ 1, %.thread.i.i.i ], [ %i.dd, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.dy = phi i8 [ 1, %.thread.i.i.i ], [ %i.dc, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.co, %.thread.i.i.i ], [ %i.bc, %.thread.i.i ], [ %i.bc, %._crit_edge.thread.i.i ], [ %i.bc, %._crit_edge.i.i ]
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = trunc nuw i8 %i.dx to i1
  %or.cond161.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond161.i.i, label %._crit_edge215.i.i, label %bb.r

bb.ao:                                            ; preds = %.loopexit130.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.11105.0.ph.i.i) #32
          to label %.body22 unwind label %bb.ak, !noalias !4080

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4073
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111, i64 136, i1 false), !noalias !4085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4111)
  br label %bb.an

bb.ap:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.aq:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.al, ptr noundef nonnull align 8 dereferenceable(1320) %i.f, i64 1320, i1 false), !noalias !4075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4073
  br label %bb.an

.thread135.sink.split.i.i:                        ; preds = %bb.ap, %bb.al
  %.sink.i.i = phi ptr [ %i.d, %bb.al ], [ %i.f, %bb.ap ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.dw, %bb.al ], [ %i.ec, %bb.ap ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.al, ptr noundef nonnull align 8 dereferenceable(1320) %.sink.i.i, i64 1320, i1 false), !noalias !4075
  br label %.body22

.loopexit.i.i:                                    ; preds = %bb.ad
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.w
  %lpad.loopexit171.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit174.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ac, %._crit_edge215.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp178.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit171.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit174.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp178.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1320) %i.l) #32
          to label %.body22 unwind label %bb.ak, !noalias !4080

bb.ar:                                            ; preds = %bb.az, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4073
  store ptr %i.k, ptr %i.i, align 8, !noalias !4073
  store ptr %2, ptr %i.ao, align 8, !noalias !4073
  %i.ed = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @52)
          to label %bb.as unwind label %.thread128.thread145.i.i, !noalias !4080 ; 2 uses

.thread128.thread145.i.i:                         ; preds = %bb.ar
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i.i

.thread147.i.i:                                   ; preds = %bb.bd
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.eg = extractvalue { i64, ptr } %i.ed, 0
  %i.eh = extractvalue { i64, ptr } %i.ed, 1      ; 12 uses
  %i.ei = trunc nuw i64 %i.eg to i1
  br i1 %i.ei, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ej = ptrtoint ptr %i.eh to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ek = and i64 %i.ej, 3                        ; 3 uses
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %bb.au
    i64 3, label %bb.av
    i64 0, label %bb.aw
    i64 1, label %bb.ax
  ], !prof !23

bb.au:                                            ; preds = %bb.at
  %i.el = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90.i.i unwind label %3, !noalias !4080

.noexc90.i.i:                                     ; preds = %bb.au
  %i.em = lshr i64 %i.ej, 32
  %i.en = trunc nuw i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !4080, !nonnull !12, !noundef !12
  %i.eq = invoke noundef i8 %i.ep(i32 noundef %i.en)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !4080, !inline_history !6

bb.av:                                            ; preds = %bb.at
  %i.er = lshr i64 %i.ej, 32
  %i.es = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.er to i8 ; 2 uses
  %i.et = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.es)
  call void @llvm.assume(i1 %i.et)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.aw:                                            ; preds = %bb.at
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ev = load i8, ptr %i.eu, align 8, !range !55, !noalias !4080, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ax:                                            ; preds = %bb.at
  %i.ew = getelementptr i8, ptr %i.eh, i64 31
  %i.ex = load i8, ptr %i.ew, align 8, !range !55, !noalias !4080, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ay:                                            ; preds = %bb.as
  %i.ey = icmp eq ptr %i.eh, null
  br i1 %i.ey, label %.loopexit182.i.i, label %bb.az

.loopexit182.i.i:                                 ; preds = %bb.ay
  %.sroa.17.i.sroa.0.0.copyload102 = load ptr, ptr %i.k, align 8, !noalias !4085
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx, i64 136, i1 false), !noalias !4085
  br label %bb.be

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4073
  br label %bb.ar

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %.noexc90.i.i
  %.sroa.0.0.i89.i.i = phi i8 [ %i.ex, %bb.ax ], [ %switch.idx.cast.i.i.i.i.i, %bb.av ], [ %i.ev, %bb.aw ], [ %i.eq, %.noexc90.i.i ]
  %i.ez = icmp eq i8 %.sroa.0.0.i89.i.i, 13
  br i1 %i.ez, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false), !noalias !4073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !4073
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.al)
          to label %bb.bi unwind label %bb.bh, !noalias !4084

bb.bb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload103 = load ptr, ptr %i.k, align 8, !noalias !4085
  %.sroa.17.i.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx107, i64 136, i1 false), !noalias !4085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4073
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 3, label %bb.bc
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 1, label %bb.bd
  ], !prof !23

bb.bc:                                            ; preds = %bb.bb
  %i.fa = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %i.fb = and i64 %i.ej, 1095216660480
  %i.fc = icmp ne i64 %i.fb, 1095216660480
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fc)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.fd = getelementptr i8, ptr %i.eh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !alias.scope !4086, !noalias !4073
  store i8 3, ptr %i.b, align 8, !alias.scope !4086, !noalias !4073
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.thread147.i.i, !noalias !4080

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4073
  br label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i, %.loopexit182.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload102, %.loopexit182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4073
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i unwind label %bb.bf, !noalias !4080

bb.bf:                                            ; preds = %bb.be
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %.body22 unwind label %bb.bg, !noalias !4080

bb.bg:                                            ; preds = %bb.bf
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4080
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i: ; preds = %bb.be
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.bp

bb.bh:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.al, align 8, !alias.scope !4074, !noalias !4075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.an, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !4075
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4074, !noalias !4075
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.eh) #32
          to label %.body22 unwind label %bb.ak, !noalias !4084

bb.bi:                                            ; preds = %bb.ba
  store i64 3, ptr %i.al, align 8, !alias.scope !4074, !noalias !4075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.an, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !4075
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4074, !noalias !4075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4073
  switch i64 %i.ek, label %default.unreachable202 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.bj
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bk
  ], !prof !23

bb.bj:                                            ; preds = %bb.bi
  %i.fj = icmp ult ptr %i.eh, inttoptr (i64 188978561024 to ptr)
  %i.fk = and i64 %i.ej, 1095216660480
  %i.fl = icmp ne i64 %i.fk, 1095216660480
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.assume(i1 %i.fl)
  br label %.critedge.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.fm = getelementptr i8, ptr %i.eh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !alias.scope !4087, !noalias !4073
  store i8 3, ptr %i.a, align 8, !alias.scope !4087, !noalias !4073
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.critedge.i.i unwind label %bb.bp

.critedge.i.i:                                    ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4073
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4073
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

.thread153.i.i:                                   ; preds = %bb.bl
  br i1 %.sroa.059.0124.ph.i.i, label %bb.bm, label %.body22

3:                                                ; preds = %.noexc90.i.i, %bb.au
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.eh) #32
          to label %.thread118.i.i unwind label %bb.ak, !noalias !4080

.thread118.i.i:                                   ; preds = %3, %.thread128.thread145.i.i
  %.pn.pn127.i.i = phi { ptr, i32 } [ %i.ee, %.thread128.thread145.i.i ], [ %lpad.thr_comm.i.i, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload.i.i) #32
          to label %bb.bl unwind label %bb.ak, !noalias !4080

bb.bl:                                            ; preds = %.thread118.i.i, %.thread147.i.i
  %.pn.pn126.ph.i.i = phi { ptr, i32 } [ %i.ef, %.thread147.i.i ], [ %.pn.pn127.i.i, %.thread118.i.i ] ; 2 uses
  %.sroa.059.0124.ph.i.i = phi i1 [ false, %.thread147.i.i ], [ true, %.thread118.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #32
          to label %.thread153.i.i unwind label %bb.ak, !noalias !4080

bb.bm:                                            ; preds = %.thread153.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #32
          to label %.body22 unwind label %bb.ak, !noalias !4080

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i, %bb.an, %bb.ai
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.an ], [ %.sroa.17.i.sroa.0.0.copyload106, %bb.ai ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.an ], [ %.sroa.12.0.copyload4.i, %bb.ai ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.an ], [ %.sroa.0.0.copyload2.i, %bb.ai ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4073
  switch i64 %.sroa.0.3.i, label %bb.bo [
    i64 -1, label %bb.bq
    i64 2, label %bb.bn
  ]

bb.bn:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4088
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4088
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !4088
  store ptr %.sroa.12.317.i, ptr %i.m, align 8, !noalias !4088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(144) %.sroa.414.0..sroa_idx.i)
          to label %.noexc26 unwind label %bb.bp

.noexc26:                                         ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4088
  br label %bb.br

bb.bo:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11.sroa.6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !4089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.21.i, i64 1160, i1 false), !noalias !4089
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %bb.p
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body22

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit, %bb.bq
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit ], [ 3, %bb.bq ]
  store i8 %storemerge, ptr %i.u, align 8
  ret void

bb.bq:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.br:                                            ; preds = %bb.bo, %.noexc26
  %.sroa.11.sroa.052.0.ph = phi ptr [ undef, %.noexc26 ], [ %.sroa.17.i.sroa.0.3, %bb.bo ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc26 ], [ %.sroa.12.3.i, %bb.bo ] ; 3 uses
  %.sroa.048.0.ph = phi i64 [ 2, %.noexc26 ], [ %.sroa.0.3.i, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.fq = ptrtoint ptr %.sroa.9.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11.sroa.6, i64 136, i1 false)
  %.sroa.8.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.8.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1160) %.sroa.12, i64 1160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit28 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit28: ; preds = %bb.br
  %i.fs = icmp eq i64 %.sroa.048.0.ph, 2
  br i1 %i.fs, label %bb.ck, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit28
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1256) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1256) %i.ft, i64 1256, i1 false)
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.657.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  store i64 %.sroa.048.0.ph, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 %i.fq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.11.sroa.052.0.ph, ptr %.sroa.556.0..sroa_idx, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  call void @llvm.experimental.noalias.scope.decl(metadata !4092)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !4093, !nonnull !12, !noundef !12
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !4093
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu) #34
          to label %bb.bw unwind label %.thread138

.thread138:                                       ; preds = %bb.bu
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bv:                                            ; preds = %bb.bw
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread142

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 1168
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.t)
          to label %bb.bx unwind label %bb.bv

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  %i.gb = load i64, ptr %i.o, align 8, !range !25, !alias.scope !4095, !noalias !4094, !noundef !12 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.860.sroa.0.0.copyload87 = load i64, ptr %i.gd, align 8, !alias.scope !4096 ; 2 uses
  %.sroa.860.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.860.sroa.8.0.copyload89 = load ptr, ptr %.sroa.860.sroa.8.0..sroa_idx, align 8, !alias.scope !4096 ; 2 uses
  %.sroa.860.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !4096
  br i1 %i.gc, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.10.0..sroa_idx62, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.860.sroa.9, i64 40, i1 false)
  store i64 %i.gb, ptr %i.p, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.860.sroa.0.0.copyload87, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.860.sroa.8.0.copyload89, ptr %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.p)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p) #32
          to label %.thread142 unwind label %bb.cd

bb.ca:                                            ; preds = %bb.by
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p)
          to label %bb.cc unwind label %bb.cb

.thread142:                                       ; preds = %bb.bv, %bb.bz, %bb.cb
  %.pn11 = phi { ptr, i32 } [ %i.fz, %bb.bv ], [ %i.gf, %bb.cb ], [ %i.ge, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.thread142

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.860.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.099.0.copyload = load i64, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1312) %.sroa.882, ptr noundef nonnull align 8 dereferenceable(1312) %.sroa.4.0..sroa_idx, i64 1312, i1 false)
  %.sroa.091.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.592.0.copyload = load ptr, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.574, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.693.0..sroa_idx, i64 40, i1 false)
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.794.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.cl, %bb.ck, %bb.cg, %bb.cc
  %.sroa.679.0 = phi i64 [ %.sroa.099.0.copyload, %bb.cc ], [ -1, %bb.cg ], [ -1, %bb.ck ], [ -1, %bb.cl ]
  %.sroa.469.0 = phi ptr [ %.sroa.592.0.copyload, %bb.cc ], [ %.sroa.860.sroa.8.0.copyload89, %bb.cg ], [ %.sroa.9.0.ph, %bb.ck ], [ %.sroa.9.0.ph, %bb.cl ]
  %.sroa.066.0 = phi i64 [ %.sroa.091.0.copyload, %bb.cc ], [ %.sroa.860.sroa.0.0.copyload87, %bb.cg ], [ -9223372036854775757, %bb.ck ], [ -9223372036854775757, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %.sroa.066.0, ptr %0, align 8
  %.sroa.469.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.469.0, ptr %.sroa.469.0..sroa_idx70, align 8
  %.sroa.574.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_RNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE15upgrade_inbound0Cs44McOc0n4RX_13interop_tests:bb.a
          to label %.body33 unwind label %bb.cd

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls6AcceptINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit28
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4097)
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !4100, !nonnull !12, !noundef !12
  %i.gp = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !4100
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gn) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.cn:                                            ; preds = %bb.co, %.body33
  store i8 2, ptr %i.u, align 8
  resume { ptr, i32 } %.pn17.pn

bb.co:                                            ; preds = %.body33
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 240
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(144) %i.gs) #32
          to label %bb.cn unwind label %bb.cd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outbound0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1432 x i8]) align 8 captures(none) dereferenceable(1432) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1240 x i8], align 8              ; 5 uses
  %i.e = alloca [1240 x i8], align 8              ; 4 uses
  %.sroa.4113 = alloca [168 x i8], align 8        ; 4 uses
  %i.f = alloca [1240 x i8], align 8              ; 5 uses
  %i.g = alloca [1240 x i8], align 8              ; 4 uses
  %.sroa.4111 = alloca [168 x i8], align 8        ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.619.i.i = alloca [176 x i8], align 8     ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [176 x i8], align 8               ; 12 uses
  %i.l = alloca [1240 x i8], align 8              ; 32 uses
  %i.m = alloca [184 x i8], align 8               ; 5 uses
  %.sroa.17.i.sroa.10 = alloca [168 x i8], align 8 ; 11 uses
  %.sroa.21.i = alloca [1048 x i8], align 8       ; 5 uses
  %i.n = alloca [360 x i8], align 8               ; 6 uses
  %.sroa.588 = alloca [40 x i8], align 8          ; 3 uses
  %.sroa.690 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.992 = alloca [1240 x i8], align 8        ; 2 uses
  %i.o = alloca [880 x i8], align 8               ; 10 uses
  %.sroa.868.sroa.9 = alloca [40 x i8], align 8   ; 7 uses
  %i.p = alloca [880 x i8], align 8               ; 12 uses
  %i.q = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.857 = alloca [1216 x i8], align 8        ; 4 uses
  %.sroa.11.sroa.6 = alloca [168 x i8], align 8   ; 6 uses
  %.sroa.12 = alloca [1048 x i8], align 8         ; 6 uses
  %i.r = alloca [176 x i8], align 8               ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [1240 x i8], align 8              ; 6 uses
  %i.u = alloca [1240 x i8], align 8              ; 16 uses
  %i.v = alloca [32 x i8], align 8                ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1768 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !47, !noundef !12
  switch i8 %i.x, label %default.unreachable201 [
    i8 0, label %bb.c
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.b
  ]

default.unreachable201:                           ; preds = %bb.bj, %bb.bc, %bb.au, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1769 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1771
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1770 ; 2 uses
  store i8 1, ptr %i.aa, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 1, ptr %i.y, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.ab, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 2
  store i8 1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 0, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  store i64 1, ptr %i.n, align 8, !noalias !4146
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !4146
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !4147
  %i.ae = tail call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 360, i64 noundef 8) #20, !noalias !4147 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %bb.g, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #31
          to label %.noexc.i unwind label %bb.e, !noalias !4146

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.ac)
          to label %.body unwind label %bb.f, !noalias !4146

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4146
  unreachable

.body:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.body34

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ae, ptr noundef nonnull align 8 dereferenceable(360) %i.n, i64 360, i1 false), !noalias !4146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4146
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  store ptr %i.ae, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 0, ptr %i.y, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.aa, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.aj, i64 176, i1 false)
  invoke void @_RINvMs0_Csgrcu2UPjJtD_14futures_rustlsNtB6_12TlsConnector12connect_withINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENCINvB2_7connectB17_E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([1240 x i8]) align 8 captures(none) dereferenceable(1240) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(1240) %i.t, i64 1240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.bt, %.body23, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.fz, %bb.bt ], [ %.pn5, %.body23 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  call void @llvm.experimental.noalias.scope.decl(metadata !4149)
  call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4151, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !4151
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %.body34

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #34
          to label %.body34 unwind label %bb.ce

bb.k:                                             ; preds = %bb.co, %.body34
  store i8 0, ptr %i.gs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1771
  %i.ar = load i8, ptr %i.aq, align 1, !range !48, !noundef !12
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.cq, label %bb.cp

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35
  unreachable

.body23:                                          ; preds = %bb.bq, %bb.bn, %.thread153.i.i, %bb.bi, %bb.bg, %.loopexit.split-lp.i.i, %.thread135.sink.split.i.i, %bb.ap, %bb.ak
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread135.sink.split.i.i ], [ %i.fw, %bb.bq ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.fo, %bb.bg ], [ %.pn.pn126.ph.i.i, %bb.bn ], [ %.pn.pn126.ph.i.i, %.thread153.i.i ], [ %i.fq, %bb.bi ], [ %i.ec, %bb.ak ], [ %i.ej, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.ce

bb.n:                                             ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4152)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4155
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.at, align 8, !alias.scope !4156, !noalias !4157 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !4156, !noalias !4157 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4156, !noalias !4157 ; 6 uses
  store i64 2, ptr %i.at, align 8, !alias.scope !4156, !noalias !4157
  %i.au = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.au, label %bb.o [
    i64 0, label %bb.r
    i64 2, label %bb.p
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
    i64 1, label %bb.q
  ], !prof !53

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4155
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 120, i1 false), !noalias !4157
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !4155
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !4157
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.as

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i: ; preds = %bb.n
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !4158, !noalias !4159
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 168, i1 false), !alias.scope !4158, !noalias !4159
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4155
  br label %bb.bo

bb.q:                                             ; preds = %bb.n
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
          to label %.noexc22 unwind label %bb.bq

.noexc22:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.n
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx.i.i, i64 176, i1 false), !noalias !4157
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4157
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx.i.i, i64 992, i1 false), !noalias !4157
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.l, align 8, !noalias !4155
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4155
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4155
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 1232
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 1056 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4155
  %i.az = load i8, ptr %i.ax, align 8, !range !47, !noalias !4155, !noundef !12
  %i.ba = and i8 %i.az, 1                         ; 2 uses
  store ptr %i.ay, ptr %i.h, align 8, !noalias !4155
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !4155
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i8 %i.ba, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !4155
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 822 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 823 ; 4 uses
  %i.bd = load i8, ptr %i.bb, align 2, !range !48, !noalias !4155, !noundef !12
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = load i8, ptr %i.bc, align 1, !range !48, !noalias !4155
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond161212.i.i = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond161212.i.i, label %._crit_edge215.i.i, label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 827 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.loopexit181.i.i, %.lr.ph214.i.i
  %i.bk = phi i8 [ %i.ba, %.lr.ph214.i.i ], [ %.ph.i.i, %.loopexit181.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.bl = trunc nuw i8 %i.bk to i1
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %i.bm = phi i1 [ %i.bl, %bb.s ], [ false, %bb.z ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.s ], [ %.sroa.07.192.i.lcssa.i.i, %bb.z ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.s ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.z ] ; 3 uses
  %i.bn = load i64, ptr %i.bh, align 8, !noalias !4161, !noundef !12
  %.not78.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4162 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 2 uses
  switch i64 %i.bp, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.u
  ]

bb.u:                                             ; preds = %.noexc.i.i
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.i.i.i, %i.br         ; 2 uses
  %i.bt = load i64, ptr %i.bh, align 8, !noalias !4161, !noundef !12
  %.not.not.peel.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.0.180.i.i.i = phi i64 [ %i.by, %bb.v ], [ %i.bs, %bb.u ] ; 2 uses
  %i.bu = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4162 ; 2 uses

.noexc77.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1      ; 2 uses
  switch i64 %i.bv, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.v
  ]

bb.v:                                             ; preds = %.noexc77.i.i
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = add i64 %.sroa.0.180.i.i.i, %i.bx       ; 2 uses
  %i.bz = load i64, ptr %i.bh, align 8, !noalias !4161, !noundef !12
  %.not.not.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4122

._crit_edge.i.i.i:                                ; preds = %bb.w, %.noexc78.i.i, %.noexc.i.i, %bb.t
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc78.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.w ], [ %.sroa.0.0.i.i.i, %bb.t ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc78.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.w ], [ false, %bb.t ], [ true, %.noexc.i.i ]
  br i1 %i.bm, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.ca = load i64, ptr %i.bi, align 8, !noalias !4161, !noundef !12
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = load i8, ptr %i.bj, align 1, !range !48, !noalias !4155
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond165205.i.i = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond165205.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.v, %.noexc77.i.i, %bb.u
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.bs, %bb.u ], [ %i.by, %bb.v ], [ %.sroa.0.180.i.i.i, %.noexc77.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ true, %.noexc77.i.i ]
  %i.ce = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4162 ; 2 uses

.noexc78.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.cf = extractvalue { i64, ptr } %i.ce, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %._crit_edge.i.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc78.i.i
  %i.ch = extractvalue { i64, ptr } %i.ce, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.y
  %i.ci = ptrtoint ptr %i.dh to i64
  %i.cj = add i64 %.sroa.07.192.i206.i.i, %i.ci   ; 2 uses
  %i.ck = load i64, ptr %i.bi, align 8, !noalias !4161, !noundef !12
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = load i8, ptr %i.bj, align 1, !range !48, !noalias !4155
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond165.i.i = select i1 %i.cl, i1 true, i1 %i.cn
  br i1 %or.cond165.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i206.i.i, %.lr.ph.i.i ], [ %i.cj, %.lr.ph94.i.i.i ] ; 2 uses
  %i.co = load i8, ptr %i.bb, align 2, !range !48, !noalias !4161, !noundef !12 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = load i8, ptr %i.bc, align 1, !range !48, !noalias !4155 ; 2 uses
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond169.i.i = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond169.i.i, label %.loopexit181.i.i, label %bb.z

._crit_edge.thread.i.i:                           ; preds = %.noexc79.i.i
  %i.cs = load i8, ptr %i.bb, align 2, !range !48, !noalias !4161, !noundef !12 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = load i8, ptr %i.bc, align 1, !range !48, !noalias !4155 ; 2 uses
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond169238.i.i = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond169238.i.i, label %.loopexit181.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.cw = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bk, %._crit_edge.i.i.i ]
  %i.cx = load i8, ptr %i.bb, align 2, !range !48, !noalias !4161, !noundef !12
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = load i8, ptr %i.bc, align 1, !range !48, !noalias !4155
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond163.i.i = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond163.i.i, label %.loopexit181.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i206.i.i = phi i64 [ %i.cj, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.db = load i8, ptr %i.bb, align 2, !range !48, !noalias !4161, !noundef !12
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load i64, ptr %i.bh, align 8, !noalias !4155
  %i.de = icmp eq i64 %i.dd, 0
  %or.cond167.i.i = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %or.cond167.i.i, label %bb.x, label %._crit_edge.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.df = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4162 ; 2 uses

.noexc79.i.i:                                     ; preds = %bb.x
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = extractvalue { i64, ptr } %i.df, 1      ; 3 uses
  switch i64 %i.dg, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.y
  ]

bb.y:                                             ; preds = %.noexc79.i.i
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.y
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !4160, !noalias !4163
  br label %.thread.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.t

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.dj = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4162

.thread.i.i:                                      ; preds = %bb.z, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa239243.i.i = phi i64 [ %.sroa.07.192.i206.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.z ]
  %i.dk = phi i8 [ %i.cs, %._crit_edge.thread.i.i ], [ %i.co, %bb.z ]
  %i.dl = phi i8 [ %i.cu, %._crit_edge.thread.i.i ], [ %i.cq, %bb.z ]
  %i.dm = icmp eq i64 %.sroa.07.192.i.lcssa239243.i.i, 0
  %i.dn = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i, label %.loopexit181.i.i

._crit_edge215.i.i:                               ; preds = %.loopexit181.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4164
  store ptr %i.l, ptr %i.c, align 8, !noalias !4164
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @235, ptr %i.do, align 8, !noalias !4164
  %i.dp = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4162 ; 2 uses

.noexc83.i.i:                                     ; preds = %._crit_edge215.i.i
  %.not.i.i.i = icmp eq ptr %i.dp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4164
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc83.i.i
  %i.dq = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dp, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

bb.ab:                                            ; preds = %.noexc83.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc85.i.i, %bb.ab
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !4165, !noundef !12
  %.not16.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not16.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4162

bb.ae:                                            ; preds = %bb.ac
  %i.du = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc85.i.i unwind label %.loopexit.i.i, !noalias !4162 ; 2 uses

.noexc85.i.i:                                     ; preds = %bb.ae
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  switch i64 %i.dv, label %bb.af [
    i64 2, label %.loopexit.i82.i.i
    i64 0, label %bb.ac
  ]

bb.af:                                            ; preds = %.noexc85.i.i
  %i.dw = extractvalue { i64, ptr } %i.du, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  br label %.loopexit.i82.i.i

.loopexit.i82.i.i:                                ; preds = %.noexc85.i.i, %bb.af
  %.sroa.5.1.i.i.i = phi ptr [ %i.dw, %bb.af ], [ undef, %.noexc85.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.af ], [ 1, %.noexc85.i.i ]
  %i.dx = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.dy = insertvalue { i64, ptr } %i.dx, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.loopexit.i82.i.i, %bb.ad, %bb.aa
  %.merged.i.i.i = phi { i64, ptr } [ %i.dq, %bb.aa ], [ %i.dy, %.loopexit.i82.i.i ], [ %i.dt, %bb.ad ] ; 2 uses
  %i.dz = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ea = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.eb = trunc nuw i64 %i.dz to i1
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.d, ptr noundef nonnull align 8 dereferenceable(1240) %i.l, i64 1240, i1 false), !noalias !4155
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.at)
          to label %bb.an unwind label %bb.am, !noalias !4166

bb.ah:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.e, ptr noundef nonnull align 8 dereferenceable(1240) %i.l, i64 1240, i1 false), !noalias !4155
  %.sroa.0112.0.copyload = load ptr, ptr %i.ay, align 8, !noalias !4155
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113.0..sroa_idx, i64 168, i1 false), !noalias !4155
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.e)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.ak, !noalias !4162

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4155
  %.sroa.0.0.copyload2.i = load i64, ptr %i.l, align 8, !noalias !4167
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !4167
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.17.i.sroa.0.0.copyload106 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !4167
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 168, i1 false), !noalias !4167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.614.0..sroa_idx.i.i, i64 1048, i1 false), !noalias !4167
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ea) #32
          to label %.body23 unwind label %bb.al, !noalias !4162

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4113, i64 168, i1 false), !noalias !4167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4113)
  br label %bb.ao

bb.al:                                            ; preds = %bb.bn, %bb.bm, %.thread118.i.i, %3, %bb.bi, %.loopexit.split-lp.i.i, %bb.ap, %bb.ak
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4166
  unreachable

bb.am:                                            ; preds = %bb.ag
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.an:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.at, ptr noundef nonnull align 8 dereferenceable(1240) %i.d, i64 1240, i1 false), !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4155
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i, %bb.an, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.an ], [ %.sroa.0112.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.0110.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.ar ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.an ], [ %i.ea, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.11105.0.ph.i.i, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.ar ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.an ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ -1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4155
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.f, ptr noundef nonnull align 8 dereferenceable(1240) %i.l, i64 1240, i1 false), !noalias !4155
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.at)
          to label %bb.ar unwind label %bb.aq, !noalias !4166

.loopexit130.i.i.i:                               ; preds = %bb.w, %.noexc.i.i, %.noexc77.i.i, %.noexc79.i.i, %.thread51.i.i.i
  %.sroa.11105.0.ph.i.i = phi ptr [ %i.dj, %.thread51.i.i.i ], [ %i.bw, %.noexc77.i.i ], [ %i.dh, %.noexc79.i.i ], [ %i.ch, %bb.w ], [ %i.bq, %.noexc.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.g, ptr noundef nonnull align 8 dereferenceable(1240) %i.l, i64 1240, i1 false), !noalias !4155
  %.sroa.0110.0.copyload = load ptr, ptr %i.ay, align 8, !noalias !4155
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111.0..sroa_idx, i64 168, i1 false), !noalias !4155
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.g)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i unwind label %bb.ap, !noalias !4162

.loopexit181.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.ef = phi i8 [ 1, %.thread.i.i.i ], [ %i.dl, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.eg = phi i8 [ 1, %.thread.i.i.i ], [ %i.dk, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.cw, %.thread.i.i.i ], [ %i.bk, %.thread.i.i ], [ %i.bk, %._crit_edge.thread.i.i ], [ %i.bk, %._crit_edge.i.i ]
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = trunc nuw i8 %i.ef to i1
  %or.cond161.i.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond161.i.i, label %._crit_edge215.i.i, label %bb.s

bb.ap:                                            ; preds = %.loopexit130.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.11105.0.ph.i.i) #32
          to label %.body23 unwind label %bb.al, !noalias !4162

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4111, i64 168, i1 false), !noalias !4167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4111)
  br label %bb.ao

bb.aq:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.ar:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.at, ptr noundef nonnull align 8 dereferenceable(1240) %i.f, i64 1240, i1 false), !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4155
  br label %bb.ao

.thread135.sink.split.i.i:                        ; preds = %bb.aq, %bb.am
  %.sink.i.i = phi ptr [ %i.d, %bb.am ], [ %i.f, %bb.aq ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.ee, %bb.am ], [ %i.ek, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.at, ptr noundef nonnull align 8 dereferenceable(1240) %.sink.i.i, i64 1240, i1 false), !noalias !4157
  br label %.body23

.loopexit.i.i:                                    ; preds = %bb.ae
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.x
  %lpad.loopexit171.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit174.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ad, %._crit_edge215.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp178.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit171.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit174.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp178.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1240) %i.l) #32
          to label %.body23 unwind label %bb.al, !noalias !4162

bb.as:                                            ; preds = %bb.ba, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4155
  store ptr %i.k, ptr %i.i, align 8, !noalias !4155
  store ptr %2, ptr %i.aw, align 8, !noalias !4155
  %i.el = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @49)
          to label %bb.at unwind label %.thread128.thread145.i.i, !noalias !4162 ; 2 uses

.thread128.thread145.i.i:                         ; preds = %bb.as
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i.i

.thread147.i.i:                                   ; preds = %bb.be
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.at:                                            ; preds = %bb.as
  %i.eo = extractvalue { i64, ptr } %i.el, 0
  %i.ep = extractvalue { i64, ptr } %i.el, 1      ; 12 uses
  %i.eq = trunc nuw i64 %i.eo to i1
  br i1 %i.eq, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.er = ptrtoint ptr %i.ep to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.es = and i64 %i.er, 3                        ; 3 uses
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %bb.av
    i64 3, label %bb.aw
    i64 0, label %bb.ax
    i64 1, label %bb.ay
  ], !prof !23

bb.av:                                            ; preds = %bb.au
  %i.et = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90.i.i unwind label %3, !noalias !4162

.noexc90.i.i:                                     ; preds = %bb.av
  %i.eu = lshr i64 %i.er, 32
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !4162, !nonnull !12, !noundef !12
  %i.ey = invoke noundef i8 %i.ex(i32 noundef %i.ev)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !4162, !inline_history !6

bb.aw:                                            ; preds = %bb.au
  %i.ez = lshr i64 %i.er, 32
  %i.fa = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.ez to i8 ; 2 uses
  %i.fb = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fb)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ax:                                            ; preds = %bb.au
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fd = load i8, ptr %i.fc, align 8, !range !55, !noalias !4162, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ay:                                            ; preds = %bb.au
  %i.fe = getelementptr i8, ptr %i.ep, i64 31
  %i.ff = load i8, ptr %i.fe, align 8, !range !55, !noalias !4162, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.az:                                            ; preds = %bb.at
  %i.fg = icmp eq ptr %i.ep, null
  br i1 %i.fg, label %.loopexit182.i.i, label %bb.ba

.loopexit182.i.i:                                 ; preds = %bb.az
  %.sroa.17.i.sroa.0.0.copyload102 = load ptr, ptr %i.k, align 8, !noalias !4167
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa_idx, i64 168, i1 false), !noalias !4167
  br label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4155
  br label %bb.as

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %.noexc90.i.i
  %.sroa.0.0.i89.i.i = phi i8 [ %i.ff, %bb.ay ], [ %switch.idx.cast.i.i.i.i.i, %bb.aw ], [ %i.fd, %bb.ax ], [ %i.ey, %.noexc90.i.i ]
  %i.fh = icmp eq i8 %.sroa.0.0.i89.i.i, 13
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.k, i64 176, i1 false), !noalias !4155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !4155
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.at)
          to label %bb.bj unwind label %bb.bi, !noalias !4166

bb.bc:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload103 = load ptr, ptr %i.k, align 8, !noalias !4167
  %.sroa.17.i.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa_idx107, i64 168, i1 false), !noalias !4167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4155
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 3, label %bb.bd
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 1, label %bb.be
  ], !prof !23

bb.bd:                                            ; preds = %bb.bc
  %i.fi = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %i.fj = and i64 %i.er, 1095216660480
  %i.fk = icmp ne i64 %i.fj, 1095216660480
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.assume(i1 %i.fk)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fl = getelementptr i8, ptr %i.ep, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !alias.scope !4168, !noalias !4155
  store i8 3, ptr %i.b, align 8, !alias.scope !4168, !noalias !4155
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.thread147.i.i, !noalias !4162

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4155
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i, %.loopexit182.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload102, %.loopexit182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4155
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i unwind label %bb.bg, !noalias !4162

bb.bg:                                            ; preds = %bb.bf
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %.body23 unwind label %bb.bh, !noalias !4162

bb.bh:                                            ; preds = %bb.bg
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4162
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bb
  %i.fq = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.at, align 8, !alias.scope !4156, !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.av, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, i64 176, i1 false), !noalias !4157
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4156, !noalias !4157
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ep) #32
          to label %.body23 unwind label %bb.al, !noalias !4166

bb.bj:                                            ; preds = %bb.bb
  store i64 3, ptr %i.at, align 8, !alias.scope !4156, !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.av, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.i.i, i64 176, i1 false), !noalias !4157
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4156, !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4155
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.bk
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bl
  ], !prof !23

bb.bk:                                            ; preds = %bb.bj
  %i.fr = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %i.fs = and i64 %i.er, 1095216660480
  %i.ft = icmp ne i64 %i.fs, 1095216660480
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.assume(i1 %i.ft)
  br label %.critedge.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.fu = getelementptr i8, ptr %i.ep, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fv, align 8, !alias.scope !4169, !noalias !4155
  store i8 3, ptr %i.a, align 8, !alias.scope !4169, !noalias !4155
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %.critedge.i.i unwind label %bb.bq

.critedge.i.i:                                    ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4155
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4155
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

.thread153.i.i:                                   ; preds = %bb.bm
  br i1 %.sroa.059.0124.ph.i.i, label %bb.bn, label %.body23

3:                                                ; preds = %.noexc90.i.i, %bb.av
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ep) #32
          to label %.thread118.i.i unwind label %bb.al, !noalias !4162

.thread118.i.i:                                   ; preds = %3, %.thread128.thread145.i.i
  %.pn.pn127.i.i = phi { ptr, i32 } [ %i.em, %.thread128.thread145.i.i ], [ %lpad.thr_comm.i.i, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload.i.i) #32
          to label %bb.bm unwind label %bb.al, !noalias !4162

bb.bm:                                            ; preds = %.thread118.i.i, %.thread147.i.i
  %.pn.pn126.ph.i.i = phi { ptr, i32 } [ %i.en, %.thread147.i.i ], [ %.pn.pn127.i.i, %.thread118.i.i ] ; 2 uses
  %.sroa.059.0124.ph.i.i = phi i1 [ false, %.thread147.i.i ], [ true, %.thread118.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #32
          to label %.thread153.i.i unwind label %bb.al, !noalias !4162

bb.bn:                                            ; preds = %.thread153.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %i.k) #32
          to label %.body23 unwind label %bb.al, !noalias !4162

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i, %bb.ao, %bb.aj
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.ao ], [ %.sroa.17.i.sroa.0.0.copyload106, %bb.aj ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.ao ], [ %.sroa.12.0.copyload4.i, %bb.aj ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.ao ], [ %.sroa.0.0.copyload2.i, %bb.aj ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4155
  switch i64 %.sroa.0.3.i, label %bb.bp [
    i64 -1, label %bb.br
    i64 2, label %bb.bo
  ]

bb.bo:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4170
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4170
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, i64 168, i1 false), !noalias !4170
  store ptr %.sroa.12.317.i, ptr %i.m, align 8, !noalias !4170
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %.sroa.414.0..sroa_idx.i)
          to label %.noexc27 unwind label %bb.bq

.noexc27:                                         ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4170
  br label %bb.bs

bb.bp:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.11.sroa.6, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.17.i.sroa.10, i64 168, i1 false), !noalias !4171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, i64 1048, i1 false), !noalias !4171
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body23

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit, %bb.br
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit ], [ 3, %bb.br ]
  store i8 %storemerge, ptr %i.w, align 8
  ret void

bb.br:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.fx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %common.ret

bb.bs:                                            ; preds = %bb.bp, %.noexc27
  %.sroa.11.sroa.058.0.ph = phi ptr [ undef, %.noexc27 ], [ %.sroa.17.i.sroa.0.3, %bb.bp ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc27 ], [ %.sroa.12.3.i, %bb.bp ] ; 3 uses
  %.sroa.053.0.ph = phi i64 [ 2, %.noexc27 ], [ %.sroa.0.3.i, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.fy = ptrtoint ptr %.sroa.9.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.857, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.11.sroa.6, i64 168, i1 false)
  %.sroa.857.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.857, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.857.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.12, i64 1048, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit29 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit29: ; preds = %bb.bs
  %i.ga = icmp eq i64 %.sroa.053.0.ph, 2
  br i1 %i.ga, label %bb.cl, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit29
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.857, i64 40
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1176) %.sroa.765.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1176) %i.gb, i64 1176, i1 false)
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.857, i64 40, i1 false)
  store i64 %.sroa.053.0.ph, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.fy, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.11.sroa.058.0.ph, ptr %.sroa.563.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4172)
  call void @llvm.experimental.noalias.scope.decl(metadata !4173)
  call void @llvm.experimental.noalias.scope.decl(metadata !4174)
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !4175, !nonnull !12, !noundef !12
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !4175
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gc) #34
          to label %bb.bx unwind label %.thread137

.thread137:                                       ; preds = %bb.bv
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bw:                                            ; preds = %bb.bx
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread141

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 1056
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.u)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !4176)
  %i.gj = load i64, ptr %i.o, align 8, !range !25, !alias.scope !4177, !noalias !4176, !noundef !12 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.868.sroa.0.0.copyload97 = load i64, ptr %i.gl, align 8, !alias.scope !4178 ; 2 uses
  %.sroa.868.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.868.sroa.8.0.copyload99 = load ptr, ptr %.sroa.868.sroa.8.0..sroa_idx, align 8, !alias.scope !4178 ; 2 uses
  %.sroa.868.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !4178
  br i1 %i.gk, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.10.0..sroa_idx70, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9, i64 40, i1 false)
  store i64 %i.gj, ptr %i.p, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.868.sroa.0.0.copyload97, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.472.sroa.4.0..sroa.472.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.868.sroa.8.0.copyload99, ptr %.sroa.472.sroa.4.0..sroa.472.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.p)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p) #32
          to label %.thread141 unwind label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p)
          to label %bb.cd unwind label %bb.cc

.thread141:                                       ; preds = %bb.bw, %bb.ca, %bb.cc
  %.pn11 = phi { ptr, i32 } [ %i.gh, %bb.bw ], [ %i.gn, %bb.cc ], [ %i.gm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.thread141

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %.sroa.992, ptr noundef nonnull align 8 dereferenceable(1240) %i.u, i64 1240, i1 false)
  %.sroa.077.sroa.0.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.077.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.077.sroa.5.0.copyload = load ptr, ptr %.sroa.077.sroa.5.0..sroa_idx, align 8
  %.sroa.077.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.588, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.077.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.077.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.690, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.077.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.cm, %bb.cl, %bb.ch, %bb.cd
  %.sroa.691.0 = phi i64 [ 2, %bb.cd ], [ -1, %bb.ch ], [ -1, %bb.cl ], [ -1, %bb.cm ]
  %.sroa.484.0 = phi ptr [ %.sroa.077.sroa.5.0.copyload, %bb.cd ], [ %.sroa.868.sroa.8.0.copyload99, %bb.ch ], [ %.sroa.9.0.ph, %bb.cl ], [ %.sroa.9.0.ph, %bb.cm ]
  %.sroa.081.0 = phi i64 [ %.sroa.077.sroa.0.0.copyload, %bb.cd ], [ %.sroa.868.sroa.0.0.copyload97, %bb.ch ], [ -9223372036854775756, %bb.cl ], [ -9223372036854775756, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 1769
  store i8 0, ptr %i.go, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %.sroa.081.0, ptr %0, align 8
end_hunk_2
begin_hunk_3_@_RNCNvXs1_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outbound0Cs44McOc0n4RX_13interop_tests:bb.a
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gw) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.co:                                            ; preds = %.body34
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FOtPNjzuti_16rustls_pki_types11server_name10ServerNameECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #32
          to label %bb.k unwind label %bb.ce

bb.cp:                                            ; preds = %bb.cq, %bb.k
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 1770
  %i.hc = load i8, ptr %i.hb, align 2, !range !48, !noundef !12
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %1) #32
          to label %bb.cp unwind label %bb.ce

bb.cr:                                            ; preds = %bb.cs, %bb.cp
  store i8 2, ptr %i.w, align 8
  resume { ptr, i32 } %.pn17.pn

bb.cs:                                            ; preds = %bb.cp
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(176) %i.he) #32
          to label %bb.cr unwind label %bb.ce
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB7_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outbound0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1208 x i8], align 8              ; 5 uses
  %i.e = alloca [1208 x i8], align 8              ; 4 uses
  %.sroa.4113 = alloca [136 x i8], align 8        ; 4 uses
  %i.f = alloca [1208 x i8], align 8              ; 5 uses
  %i.g = alloca [1208 x i8], align 8              ; 4 uses
  %.sroa.4111 = alloca [136 x i8], align 8        ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.619.i.i = alloca [144 x i8], align 8     ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [144 x i8], align 8               ; 12 uses
  %i.l = alloca [1208 x i8], align 8              ; 32 uses
  %i.m = alloca [152 x i8], align 8               ; 5 uses
  %.sroa.17.i.sroa.10 = alloca [136 x i8], align 8 ; 11 uses
  %.sroa.21.i = alloca [1048 x i8], align 8       ; 5 uses
  %i.n = alloca [360 x i8], align 8               ; 6 uses
  %.sroa.588 = alloca [40 x i8], align 8          ; 3 uses
  %.sroa.690 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.992 = alloca [1208 x i8], align 8        ; 2 uses
  %i.o = alloca [880 x i8], align 8               ; 10 uses
  %.sroa.868.sroa.9 = alloca [40 x i8], align 8   ; 7 uses
  %i.p = alloca [880 x i8], align 8               ; 12 uses
  %i.q = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.857 = alloca [1184 x i8], align 8        ; 4 uses
  %.sroa.11.sroa.6 = alloca [136 x i8], align 8   ; 6 uses
  %.sroa.12 = alloca [1048 x i8], align 8         ; 6 uses
  %i.r = alloca [144 x i8], align 8               ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [1208 x i8], align 8              ; 6 uses
  %i.u = alloca [1208 x i8], align 8              ; 16 uses
  %i.v = alloca [32 x i8], align 8                ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1704 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !47, !noundef !12
  switch i8 %i.x, label %default.unreachable201 [
    i8 0, label %bb.c
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.b
  ]

default.unreachable201:                           ; preds = %bb.bj, %bb.bc, %bb.au, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1705 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1707
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1706 ; 2 uses
  store i8 1, ptr %i.aa, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 1, ptr %i.y, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.ab, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 2
  store i8 1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 0, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.ac, ptr noundef nonnull align 8 dereferenceable(344) %1, i64 344, i1 false)
  store i64 1, ptr %i.n, align 8, !noalias !4228
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !4228
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !4229
  %i.ae = tail call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 360, i64 noundef 8) #20, !noalias !4229 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %bb.g, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #31
          to label %.noexc.i unwind label %bb.e, !noalias !4228

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.ac)
          to label %.body unwind label %bb.f, !noalias !4228

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4228
  unreachable

.body:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.body34

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ae, ptr noundef nonnull align 8 dereferenceable(360) %i.n, i64 360, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4228
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  store ptr %i.ae, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 0, ptr %i.y, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.aa, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i64 144, i1 false)
  invoke void @_RINvMs0_Csgrcu2UPjJtD_14futures_rustlsNtB6_12TlsConnector12connect_withINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENCINvB2_7connectB17_E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(1208) %i.t, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.bt, %.body23, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.fz, %bb.bt ], [ %.pn5, %.body23 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4233, !nonnull !12, !noundef !12
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !4233
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %.body34

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #34
          to label %.body34 unwind label %bb.ce

bb.k:                                             ; preds = %bb.co, %.body34
  store i8 0, ptr %i.gs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1707
  %i.ar = load i8, ptr %i.aq, align 1, !range !48, !noundef !12
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.cq, label %bb.cp

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #35
  unreachable

.body23:                                          ; preds = %bb.bq, %bb.bn, %.thread153.i.i, %bb.bi, %bb.bg, %.loopexit.split-lp.i.i, %.thread135.sink.split.i.i, %bb.ap, %bb.ak
  %.pn5 = phi { ptr, i32 } [ %.pn67.pn.ph.i.i, %.thread135.sink.split.i.i ], [ %i.fw, %bb.bq ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.fo, %bb.bg ], [ %.pn.pn126.ph.i.i, %bb.bn ], [ %.pn.pn126.ph.i.i, %.thread153.i.i ], [ %i.fq, %bb.bi ], [ %i.ec, %bb.ak ], [ %i.ej, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit unwind label %bb.ce

bb.n:                                             ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4234)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4235)
  call void @llvm.experimental.noalias.scope.decl(metadata !4236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4237
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.at, align 8, !alias.scope !4238, !noalias !4239 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !4238, !noalias !4239 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %.sroa.107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  %.sroa.107.0.copyload.i.i = load ptr, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4238, !noalias !4239 ; 6 uses
  store i64 2, ptr %i.at, align 8, !alias.scope !4238, !noalias !4239
  %i.au = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i, i64 1)
  switch i64 %i.au, label %bb.o [
    i64 0, label %bb.r
    i64 2, label %bb.p
    i64 3, label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
    i64 1, label %bb.q
  ], !prof !53

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4237
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.av, i64 88, i1 false), !noalias !4239
  %.sroa.9.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.9.64..sroa_idx.i.i, align 8, !noalias !4237
  %.sroa.10.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, i64 56, i1 false), !noalias !4239
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload.i.i) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.as

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i: ; preds = %bb.n
  %.sroa.17.i.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !4240, !noalias !4241
  %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.6.0..sroa_idx.i.i.sroa_idx, i64 136, i1 false), !alias.scope !4240, !noalias !4241
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4237
  br label %bb.bo

bb.q:                                             ; preds = %bb.n
  invoke void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
          to label %.noexc22 unwind label %bb.bq

.noexc22:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.n
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx.i.i, i64 144, i1 false), !noalias !4239
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, i64 48, i1 false), !noalias !4239
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx.i.i, i64 992, i1 false), !noalias !4239
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.l, align 8, !noalias !4237
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store ptr %.sroa.9.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4237
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4237
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 1200
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 1056 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4237
  %i.az = load i8, ptr %i.ax, align 8, !range !47, !noalias !4237, !noundef !12
  %i.ba = and i8 %i.az, 1                         ; 2 uses
  store ptr %i.ay, ptr %i.h, align 8, !noalias !4237
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !4237
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i8 %i.ba, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !noalias !4237
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 822 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 823 ; 4 uses
  %i.bd = load i8, ptr %i.bb, align 2, !range !48, !noalias !4237, !noundef !12
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = load i8, ptr %i.bc, align 1, !range !48, !noalias !4237
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond161212.i.i = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond161212.i.i, label %._crit_edge215.i.i, label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 176 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 827 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.loopexit181.i.i, %.lr.ph214.i.i
  %i.bk = phi i8 [ %i.ba, %.lr.ph214.i.i ], [ %.ph.i.i, %.loopexit181.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4242)
  %i.bl = trunc nuw i8 %i.bk to i1
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %i.bm = phi i1 [ %i.bl, %bb.s ], [ false, %bb.z ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %bb.s ], [ %.sroa.07.192.i.lcssa.i.i, %bb.z ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.s ], [ %.sroa.0.1.lcssa136.i.i.i, %bb.z ] ; 3 uses
  %i.bn = load i64, ptr %i.bh, align 8, !noalias !4243, !noundef !12
  %.not78.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not78.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4244 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.preheader.i.i.i
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 2 uses
  switch i64 %i.bp, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.i.i.i
    i64 0, label %bb.u
  ]

bb.u:                                             ; preds = %.noexc.i.i
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.i.i.i, %i.br         ; 2 uses
  %i.bt = load i64, ptr %i.bh, align 8, !noalias !4243, !noundef !12
  %.not.not.peel.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.not.peel.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.0.180.i.i.i = phi i64 [ %i.by, %bb.v ], [ %i.bs, %bb.u ] ; 2 uses
  %i.bu = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4244 ; 2 uses

.noexc77.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1      ; 2 uses
  switch i64 %i.bv, label %.loopexit130.i.i.i [
    i64 2, label %.loopexit142.i.i.i
    i64 0, label %bb.v
  ]

bb.v:                                             ; preds = %.noexc77.i.i
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = add i64 %.sroa.0.180.i.i.i, %i.bx       ; 2 uses
  %i.bz = load i64, ptr %i.bh, align 8, !noalias !4243, !noundef !12
  %.not.not.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.not.i.i.i, label %.loopexit142.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4204

._crit_edge.i.i.i:                                ; preds = %bb.w, %.noexc78.i.i, %.noexc.i.i, %bb.t
  %.sroa.0.1.lcssa136.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph.i.i.i, %.noexc78.i.i ], [ %.sroa.0.1.lcssa.ph.i.i.i, %bb.w ], [ %.sroa.0.0.i.i.i, %bb.t ], [ %.sroa.0.0.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.011.1.i.i.i = phi i1 [ true, %.noexc78.i.i ], [ %.not.lcssa.ph.i.i.i, %bb.w ], [ false, %bb.t ], [ true, %.noexc.i.i ]
  br i1 %i.bm, label %.thread.i.i.i, label %.lr.ph94.i.preheader.i.i

.lr.ph94.i.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.ca = load i64, ptr %i.bi, align 8, !noalias !4243, !noundef !12
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = load i8, ptr %i.bj, align 1, !range !48, !noalias !4237
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond165205.i.i = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond165205.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit142.i.i.i:                               ; preds = %bb.v, %.noexc77.i.i, %bb.u
  %.sroa.0.1.lcssa.ph.i.i.i = phi i64 [ %i.bs, %bb.u ], [ %i.by, %bb.v ], [ %.sroa.0.180.i.i.i, %.noexc77.i.i ] ; 2 uses
  %.not.lcssa.ph.i.i.i = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ true, %.noexc77.i.i ]
  %i.ce = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !4244 ; 2 uses

.noexc78.i.i:                                     ; preds = %.loopexit142.i.i.i
  %i.cf = extractvalue { i64, ptr } %i.ce, 0
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %._crit_edge.i.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc78.i.i
  %i.ch = extractvalue { i64, ptr } %i.ce, 1      ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.loopexit130.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %bb.y
  %i.ci = ptrtoint ptr %i.dh to i64
  %i.cj = add i64 %.sroa.07.192.i206.i.i, %i.ci   ; 2 uses
  %i.ck = load i64, ptr %i.bi, align 8, !noalias !4243, !noundef !12
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = load i8, ptr %i.bj, align 1, !range !48, !noalias !4237
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond165.i.i = select i1 %i.cl, i1 true, i1 %i.cn
  br i1 %or.cond165.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph94.i.i.i, %.lr.ph94.i.preheader.i.i
  %.sroa.07.192.i.lcssa.i.i = phi i64 [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ], [ %.sroa.07.192.i206.i.i, %.lr.ph.i.i ], [ %i.cj, %.lr.ph94.i.i.i ] ; 2 uses
  %i.co = load i8, ptr %i.bb, align 2, !range !48, !noalias !4243, !noundef !12 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = load i8, ptr %i.bc, align 1, !range !48, !noalias !4237 ; 2 uses
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond169.i.i = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond169.i.i, label %.loopexit181.i.i, label %bb.z

._crit_edge.thread.i.i:                           ; preds = %.noexc79.i.i
  %i.cs = load i8, ptr %i.bb, align 2, !range !48, !noalias !4243, !noundef !12 ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = load i8, ptr %i.bc, align 1, !range !48, !noalias !4237 ; 2 uses
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond169238.i.i = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond169238.i.i, label %.loopexit181.i.i, label %.thread.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.thread140.i.i.i
  %i.cw = phi i8 [ 1, %.thread140.i.i.i ], [ %i.bk, %._crit_edge.i.i.i ]
  %i.cx = load i8, ptr %i.bb, align 2, !range !48, !noalias !4243, !noundef !12
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = load i8, ptr %i.bc, align 1, !range !48, !noalias !4237
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond163.i.i = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %or.cond163.i.i, label %.loopexit181.i.i, label %.thread51.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph94.i.preheader.i.i, %.lr.ph94.i.i.i
  %.sroa.07.192.i206.i.i = phi i64 [ %i.cj, %.lr.ph94.i.i.i ], [ %.sroa.07.0.i.i.i, %.lr.ph94.i.preheader.i.i ] ; 3 uses
  %i.db = load i8, ptr %i.bb, align 2, !range !48, !noalias !4243, !noundef !12
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load i64, ptr %i.bh, align 8, !noalias !4237
  %i.de = icmp eq i64 %i.dd, 0
  %or.cond167.i.i = select i1 %i.dc, i1 true, i1 %i.de
  br i1 %or.cond167.i.i, label %bb.x, label %._crit_edge.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.df = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !4244 ; 2 uses

.noexc79.i.i:                                     ; preds = %bb.x
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = extractvalue { i64, ptr } %i.df, 1      ; 3 uses
  switch i64 %i.dg, label %.loopexit130.i.i.i [
    i64 2, label %._crit_edge.thread.i.i
    i64 0, label %bb.y
  ]

bb.y:                                             ; preds = %.noexc79.i.i
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread140.i.i.i, label %.lr.ph94.i.i.i

.thread140.i.i.i:                                 ; preds = %bb.y
  store i8 1, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !alias.scope !4242, !noalias !4245
  br label %.thread.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  br i1 %.sroa.011.1.i.i.i, label %.thread.i.i, label %bb.t

.thread51.i.i.i:                                  ; preds = %.thread.i.i.i
  %i.dj = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.loopexit130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4244

.thread.i.i:                                      ; preds = %bb.z, %._crit_edge.thread.i.i
  %.sroa.07.192.i.lcssa239243.i.i = phi i64 [ %.sroa.07.192.i206.i.i, %._crit_edge.thread.i.i ], [ %.sroa.07.192.i.lcssa.i.i, %bb.z ]
  %i.dk = phi i8 [ %i.cs, %._crit_edge.thread.i.i ], [ %i.co, %bb.z ]
  %i.dl = phi i8 [ %i.cu, %._crit_edge.thread.i.i ], [ %i.cq, %bb.z ]
  %i.dm = icmp eq i64 %.sroa.07.192.i.lcssa239243.i.i, 0
  %i.dn = icmp eq i64 %.sroa.0.1.lcssa136.i.i.i, 0
  %or.cond3.i.i.i = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond3.i.i.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i, label %.loopexit181.i.i

._crit_edge215.i.i:                               ; preds = %.loopexit181.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4246
  store ptr %i.l, ptr %i.c, align 8, !noalias !4246
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @235, ptr %i.do, align 8, !noalias !4246
  %i.dp = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4244 ; 2 uses

.noexc83.i.i:                                     ; preds = %._crit_edge215.i.i
  %.not.i.i.i = icmp eq ptr %i.dp, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4246
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc83.i.i
  %i.dq = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dp, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

bb.ab:                                            ; preds = %.noexc83.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc85.i.i, %bb.ab
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !4247, !noundef !12
  %.not16.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not16.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !4244

bb.ae:                                            ; preds = %bb.ac
  %i.du = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.ay, ptr nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc85.i.i unwind label %.loopexit.i.i, !noalias !4244 ; 2 uses

.noexc85.i.i:                                     ; preds = %bb.ae
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  switch i64 %i.dv, label %bb.af [
    i64 2, label %.loopexit.i82.i.i
    i64 0, label %bb.ac
  ]

bb.af:                                            ; preds = %.noexc85.i.i
  %i.dw = extractvalue { i64, ptr } %i.du, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  br label %.loopexit.i82.i.i

.loopexit.i82.i.i:                                ; preds = %.noexc85.i.i, %bb.af
  %.sroa.5.1.i.i.i = phi ptr [ %i.dw, %bb.af ], [ undef, %.noexc85.i.i ]
  %.sroa.04.1.i.i.i = phi i64 [ 0, %bb.af ], [ 1, %.noexc85.i.i ]
  %i.dx = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i.i.i, 0
  %i.dy = insertvalue { i64, ptr } %i.dx, ptr %.sroa.5.1.i.i.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.loopexit.i82.i.i, %bb.ad, %bb.aa
  %.merged.i.i.i = phi { i64, ptr } [ %i.dq, %bb.aa ], [ %i.dy, %.loopexit.i82.i.i ], [ %i.dt, %bb.ad ] ; 2 uses
  %i.dz = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.ea = extractvalue { i64, ptr } %.merged.i.i.i, 1 ; 3 uses
  %i.eb = trunc nuw i64 %i.dz to i1
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.l, i64 1208, i1 false), !noalias !4237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.at)
          to label %bb.an unwind label %bb.am, !noalias !4248

bb.ah:                                            ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit.i.i
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.l, i64 1208, i1 false), !noalias !4237
  %.sroa.0112.0.copyload = load ptr, ptr %i.ay, align 8, !noalias !4237
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113.0..sroa_idx, i64 136, i1 false), !noalias !4237
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.e)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.ak, !noalias !4244

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4237
  %.sroa.0.0.copyload2.i = load i64, ptr %i.l, align 8, !noalias !4249
  %.sroa.12.0.copyload4.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !4249
  %.sroa.17.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.17.i.sroa.0.0.copyload106 = load ptr, ptr %.sroa.17.0..sroa_idx5.i, align 8, !noalias !4249
  %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.17.0..sroa_idx5.i.sroa_idx, i64 136, i1 false), !noalias !4249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.614.0..sroa_idx.i.i, i64 1048, i1 false), !noalias !4249
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ea) #32
          to label %.body23 unwind label %bb.al, !noalias !4244

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4113, i64 136, i1 false), !noalias !4249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4113)
  br label %bb.ao

bb.al:                                            ; preds = %bb.bn, %bb.bm, %.thread118.i.i, %3, %bb.bi, %.loopexit.split-lp.i.i, %bb.ap, %bb.ak
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4248
  unreachable

bb.am:                                            ; preds = %bb.ag
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.an:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.at, ptr noundef nonnull align 8 dereferenceable(1208) %i.d, i64 1208, i1 false), !noalias !4239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4237
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i, %bb.an, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.17.i.sroa.0.4 = phi ptr [ undef, %bb.an ], [ %.sroa.0112.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.0110.0.copyload, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.ar ]
  %.sroa.12.2.i = phi ptr [ undef, %bb.an ], [ %i.ea, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.11105.0.ph.i.i, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ undef, %bb.ar ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.an ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit.i.i ], [ 2, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i ], [ -1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4237
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.f, ptr noundef nonnull align 8 dereferenceable(1208) %i.l, i64 1208, i1 false), !noalias !4237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.at)
          to label %bb.ar unwind label %bb.aq, !noalias !4248

.loopexit130.i.i.i:                               ; preds = %bb.w, %.noexc.i.i, %.noexc77.i.i, %.noexc79.i.i, %.thread51.i.i.i
  %.sroa.11105.0.ph.i.i = phi ptr [ %i.dj, %.thread51.i.i.i ], [ %i.bw, %.noexc77.i.i ], [ %i.dh, %.noexc79.i.i ], [ %i.ch, %bb.w ], [ %i.bq, %.noexc.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.l, i64 1208, i1 false), !noalias !4237
  %.sroa.0110.0.copyload = load ptr, ptr %i.ay, align 8, !noalias !4237
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111.0..sroa_idx, i64 136, i1 false), !noalias !4237
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.g)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i unwind label %bb.ap, !noalias !4244

.loopexit181.i.i:                                 ; preds = %._crit_edge.i.i, %.thread.i.i, %.thread.i.i.i, %._crit_edge.thread.i.i
  %i.ef = phi i8 [ 1, %.thread.i.i.i ], [ %i.dl, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %i.eg = phi i8 [ 1, %.thread.i.i.i ], [ %i.dk, %.thread.i.i ], [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ]
  %.ph.i.i = phi i8 [ %i.cw, %.thread.i.i.i ], [ %i.bk, %.thread.i.i ], [ %i.bk, %._crit_edge.thread.i.i ], [ %i.bk, %._crit_edge.i.i ]
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = trunc nuw i8 %i.ef to i1
  %or.cond161.i.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond161.i.i, label %._crit_edge215.i.i, label %bb.s

bb.ap:                                            ; preds = %.loopexit130.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.11105.0.ph.i.i) #32
          to label %.body23 unwind label %bb.al, !noalias !4244

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit88.i.i: ; preds = %.loopexit130.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4237
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4111, i64 136, i1 false), !noalias !4249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4111)
  br label %bb.ao

bb.aq:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split.i.i

bb.ar:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.at, ptr noundef nonnull align 8 dereferenceable(1208) %i.f, i64 1208, i1 false), !noalias !4239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4237
  br label %bb.ao

.thread135.sink.split.i.i:                        ; preds = %bb.aq, %bb.am
  %.sink.i.i = phi ptr [ %i.d, %bb.am ], [ %i.f, %bb.aq ]
  %.pn67.pn.ph.i.i = phi { ptr, i32 } [ %i.ee, %bb.am ], [ %i.ek, %bb.aq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.at, ptr noundef nonnull align 8 dereferenceable(1208) %.sink.i.i, i64 1208, i1 false), !noalias !4239
  br label %.body23

.loopexit.i.i:                                    ; preds = %bb.ae
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.x
  %lpad.loopexit171.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit174.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.loopexit142.i.i.i, %.lr.ph.preheader.i.i.i
  %lpad.loopexit177.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ad, %._crit_edge215.i.i, %.thread51.i.i.i
  %lpad.loopexit.split-lp178.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit171.i.i.a, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit174.i.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit177.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp178.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.l) #32
          to label %.body23 unwind label %bb.al, !noalias !4244

bb.as:                                            ; preds = %bb.ba, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4237
  store ptr %i.k, ptr %i.i, align 8, !noalias !4237
  store ptr %2, ptr %i.aw, align 8, !noalias !4237
  %i.el = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @52)
          to label %bb.at unwind label %.thread128.thread145.i.i, !noalias !4244 ; 2 uses

.thread128.thread145.i.i:                         ; preds = %bb.as
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i.i

.thread147.i.i:                                   ; preds = %bb.be
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.at:                                            ; preds = %bb.as
  %i.eo = extractvalue { i64, ptr } %i.el, 0
  %i.ep = extractvalue { i64, ptr } %i.el, 1      ; 12 uses
  %i.eq = trunc nuw i64 %i.eo to i1
  br i1 %i.eq, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.er = ptrtoint ptr %i.ep to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.es = and i64 %i.er, 3                        ; 3 uses
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %bb.av
    i64 3, label %bb.aw
    i64 0, label %bb.ax
    i64 1, label %bb.ay
  ], !prof !23

bb.av:                                            ; preds = %bb.au
  %i.et = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90.i.i unwind label %3, !noalias !4244

.noexc90.i.i:                                     ; preds = %bb.av
  %i.eu = lshr i64 %i.er, 32
  %i.ev = trunc nuw i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !4244, !nonnull !12, !noundef !12
  %i.ey = invoke noundef i8 %i.ex(i32 noundef %i.ev)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i unwind label %3, !noalias !4244, !inline_history !6

bb.aw:                                            ; preds = %bb.au
  %i.ez = lshr i64 %i.er, 32
  %i.fa = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.ez to i8 ; 2 uses
  %i.fb = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fb)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ax:                                            ; preds = %bb.au
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fd = load i8, ptr %i.fc, align 8, !range !55, !noalias !4244, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.ay:                                            ; preds = %bb.au
  %i.fe = getelementptr i8, ptr %i.ep, i64 31
  %i.ff = load i8, ptr %i.fe, align 8, !range !55, !noalias !4244, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.az:                                            ; preds = %bb.at
  %i.fg = icmp eq ptr %i.ep, null
  br i1 %i.fg, label %.loopexit182.i.i, label %bb.ba

.loopexit182.i.i:                                 ; preds = %bb.az
  %.sroa.17.i.sroa.0.0.copyload102 = load ptr, ptr %i.k, align 8, !noalias !4249
  %.sroa.17.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx, i64 136, i1 false), !noalias !4249
  br label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4237
  br label %bb.as

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %.noexc90.i.i
  %.sroa.0.0.i89.i.i = phi i8 [ %i.ff, %bb.ay ], [ %switch.idx.cast.i.i.i.i.i, %bb.aw ], [ %i.fd, %bb.ax ], [ %i.ey, %.noexc90.i.i ]
  %i.fh = icmp eq i8 %.sroa.0.0.i89.i.i, 13
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false), !noalias !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !4237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.at)
          to label %bb.bj unwind label %bb.bi, !noalias !4248

bb.bc:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i
  %.sroa.17.i.sroa.0.0.copyload103 = load ptr, ptr %i.k, align 8, !noalias !4249
  %.sroa.17.i.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa_idx107, i64 136, i1 false), !noalias !4249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4237
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 3, label %bb.bd
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i
    i64 1, label %bb.be
  ], !prof !23

bb.bd:                                            ; preds = %bb.bc
  %i.fi = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %i.fj = and i64 %i.er, 1095216660480
  %i.fk = icmp ne i64 %i.fj, 1095216660480
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.assume(i1 %i.fk)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fl = getelementptr i8, ptr %i.ep, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !alias.scope !4250, !noalias !4237
  store i8 3, ptr %i.b, align 8, !alias.scope !4250, !noalias !4237
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %.thread147.i.i, !noalias !4244

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4237
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i, %.loopexit182.i.i
  %.sroa.17.i.sroa.0.1 = phi ptr [ %.sroa.17.i.sroa.0.0.copyload103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit.i.i ], [ %.sroa.17.i.sroa.0.0.copyload102, %.loopexit182.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4237
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i unwind label %bb.bg, !noalias !4244

bb.bg:                                            ; preds = %bb.bf
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %.body23 unwind label %bb.bh, !noalias !4244

bb.bh:                                            ; preds = %bb.bg
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !4244
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bb
  %i.fq = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.at, align 8, !alias.scope !4238, !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.av, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !4239
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4238, !noalias !4239
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ep) #32
          to label %.body23 unwind label %bb.al, !noalias !4248

bb.bj:                                            ; preds = %bb.bb
  store i64 3, ptr %i.at, align 8, !alias.scope !4238, !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517.i.i, i64 56, i1 false), !noalias !4239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.av, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.i.i, i64 144, i1 false), !noalias !4239
  store ptr %.sroa.107.0.copyload.i.i, ptr %.sroa.107.0..sroa_idx.i.i, align 8, !alias.scope !4238, !noalias !4239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4237
  switch i64 %i.es, label %default.unreachable201 [
    i64 2, label %.critedge.i.i
    i64 3, label %bb.bk
    i64 0, label %.critedge.i.i
    i64 1, label %bb.bl
  ], !prof !23

bb.bk:                                            ; preds = %bb.bj
  %i.fr = icmp ult ptr %i.ep, inttoptr (i64 188978561024 to ptr)
  %i.fs = and i64 %i.er, 1095216660480
  %i.ft = icmp ne i64 %i.fs, 1095216660480
  call void @llvm.assume(i1 %i.fr)
  call void @llvm.assume(i1 %i.ft)
  br label %.critedge.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.fu = getelementptr i8, ptr %i.ep, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fv, align 8, !alias.scope !4251, !noalias !4237
  store i8 3, ptr %i.a, align 8, !alias.scope !4251, !noalias !4237
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fv)
          to label %.critedge.i.i unwind label %bb.bq

.critedge.i.i:                                    ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %.critedge.i.i
  %.sroa.17.i.sroa.0.2 = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.17.i.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.12.1.i = phi ptr [ undef, %.critedge.i.i ], [ %.sroa.107.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  %.sroa.0.1.i = phi i64 [ -1, %.critedge.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4237
  br label %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i

.thread153.i.i:                                   ; preds = %bb.bm
  br i1 %.sroa.059.0124.ph.i.i, label %bb.bn, label %.body23

3:                                                ; preds = %.noexc90.i.i, %bb.av
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ep) #32
          to label %.thread118.i.i unwind label %bb.al, !noalias !4244

.thread118.i.i:                                   ; preds = %3, %.thread128.thread145.i.i
  %.pn.pn127.i.i = phi { ptr, i32 } [ %i.em, %.thread128.thread145.i.i ], [ %lpad.thr_comm.i.i, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload.i.i) #32
          to label %bb.bm unwind label %bb.al, !noalias !4244

bb.bm:                                            ; preds = %.thread118.i.i, %.thread147.i.i
  %.pn.pn126.ph.i.i = phi { ptr, i32 } [ %i.en, %.thread147.i.i ], [ %.pn.pn127.i.i, %.thread118.i.i ] ; 2 uses
  %.sroa.059.0124.ph.i.i = phi i1 [ false, %.thread147.i.i ], [ true, %.thread118.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #32
          to label %.thread153.i.i unwind label %bb.al, !noalias !4244

bb.bn:                                            ; preds = %.thread153.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #32
          to label %.body23 unwind label %bb.al, !noalias !4244

_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i, %bb.ao, %bb.aj
  %.sroa.17.i.sroa.0.3 = phi ptr [ %.sroa.17.i.sroa.0.4, %bb.ao ], [ %.sroa.17.i.sroa.0.0.copyload106, %bb.aj ], [ %.sroa.17.i.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.12.3.i = phi ptr [ %.sroa.12.2.i, %bb.ao ], [ %.sroa.12.0.copyload4.i, %bb.aj ], [ %.sroa.12.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %bb.ao ], [ %.sroa.0.0.copyload2.i, %bb.aj ], [ %.sroa.0.1.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4237
  switch i64 %.sroa.0.3.i, label %bb.bp [
    i64 -1, label %bb.br
    i64 2, label %bb.bo
  ]

bb.bo:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i
  %.sroa.17.i.sroa.0.0 = phi ptr [ %.sroa.17.i.sroa.0.3, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.17.i.sroa.0.0.copyload, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ]
  %.sroa.12.317.i = phi ptr [ %.sroa.12.3.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i ], [ %.sroa.9.0.copyload.i.i, %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.thread.i ] ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4252
  store ptr %.sroa.17.i.sroa.0.0, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !4252
  %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10.0..sroa.414.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !4252
  store ptr %.sroa.12.317.i, ptr %i.m, align 8, !noalias !4252
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(144) %.sroa.414.0..sroa_idx.i)
          to label %.noexc27 unwind label %bb.bq

.noexc27:                                         ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4252
  br label %bb.bs

bb.bp:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11.sroa.6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.17.i.sroa.10, i64 136, i1 false), !noalias !4253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.21.i, i64 1048, i1 false), !noalias !4253
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i.i.i, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body23

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit, %bb.br
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit ], [ 3, %bb.br ]
  store i8 %storemerge, ptr %i.w, align 8
  ret void

bb.br:                                            ; preds = %_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -2, ptr %i.fx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %common.ret

bb.bs:                                            ; preds = %bb.bp, %.noexc27
  %.sroa.11.sroa.058.0.ph = phi ptr [ undef, %.noexc27 ], [ %.sroa.17.i.sroa.0.3, %bb.bp ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.12.317.i, %.noexc27 ], [ %.sroa.12.3.i, %bb.bp ] ; 3 uses
  %.sroa.053.0.ph = phi i64 [ 2, %.noexc27 ], [ %.sroa.0.3.i, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  %i.fy = ptrtoint ptr %.sroa.9.0.ph to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.857, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.11.sroa.6, i64 136, i1 false)
  %.sroa.857.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.857, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.857.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1048) %.sroa.12, i64 1048, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit29 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit29: ; preds = %bb.bs
  %i.ga = icmp eq i64 %.sroa.053.0.ph, 2
  br i1 %i.ga, label %bb.cl, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgrcu2UPjJtD_14futures_rustls7ConnectINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit29
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.857, i64 40
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %.sroa.765.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1144) %i.gb, i64 1144, i1 false)
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.857, i64 40, i1 false)
  store i64 %.sroa.053.0.ph, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.fy, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.11.sroa.058.0.ph, ptr %.sroa.563.0..sroa_idx, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  call void @llvm.experimental.noalias.scope.decl(metadata !4255)
  call void @llvm.experimental.noalias.scope.decl(metadata !4256)
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !4257, !nonnull !12, !noundef !12
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !4257
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gc) #34
          to label %bb.bx unwind label %.thread137

.thread137:                                       ; preds = %bb.bv
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bw:                                            ; preds = %bb.bx
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.thread141

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 1056
  invoke void @_RNvNtCs2oFjxwYQXCx_10libp2p_tls7upgrade26extract_single_certificate(ptr noalias nofree noundef nonnull sret([880 x i8]) align 8 captures(address) dereferenceable(880) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(840) %i.u)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  %i.gj = load i64, ptr %i.o, align 8, !range !25, !alias.scope !4259, !noalias !4258, !noundef !12 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.868.sroa.0.0.copyload97 = load i64, ptr %i.gl, align 8, !alias.scope !4260 ; 2 uses
  %.sroa.868.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.868.sroa.8.0.copyload99 = load ptr, ptr %.sroa.868.sroa.8.0..sroa_idx, align 8, !alias.scope !4260 ; 2 uses
  %.sroa.868.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9.0..sroa_idx, i64 40, i1 false), !alias.scope !4260
  br i1 %i.gk, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(816) %.sroa.10.0..sroa_idx70, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.472.sroa.5.0..sroa.472.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.868.sroa.9, i64 40, i1 false)
  store i64 %i.gj, ptr %i.p, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.868.sroa.0.0.copyload97, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.472.sroa.4.0..sroa.472.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.868.sroa.8.0.copyload99, ptr %.sroa.472.sroa.4.0..sroa.472.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvMs1_NtCs2oFjxwYQXCx_10libp2p_tls11certificateNtB5_14P2pCertificate7peer_id(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.p)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p) #32
          to label %.thread141 unwind label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2oFjxwYQXCx_10libp2p_tls11certificate14P2pCertificateECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(880) %i.p)
          to label %bb.cd unwind label %bb.cc

.thread141:                                       ; preds = %bb.bw, %bb.ca, %bb.cc
  %.pn11 = phi { ptr, i32 } [ %i.gh, %bb.bw ], [ %i.gn, %bb.cc ], [ %i.gm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ck

bb.cc:                                            ; preds = %bb.cb
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.thread141

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.868.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %.sroa.992, ptr noundef nonnull align 8 dereferenceable(1208) %i.u, i64 1208, i1 false)
  %.sroa.077.sroa.0.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.077.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.077.sroa.5.0.copyload = load ptr, ptr %.sroa.077.sroa.5.0..sroa_idx, align 8
  %.sroa.077.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.588, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.077.sroa.6.0..sroa_idx, i64 40, i1 false)
  %.sroa.077.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.690, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.077.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.cm, %bb.cl, %bb.ch, %bb.cd
  %.sroa.691.0 = phi i64 [ 2, %bb.cd ], [ -1, %bb.ch ], [ -1, %bb.cl ], [ -1, %bb.cm ]
  %.sroa.484.0 = phi ptr [ %.sroa.077.sroa.5.0.copyload, %bb.cd ], [ %.sroa.868.sroa.8.0.copyload99, %bb.ch ], [ %.sroa.9.0.ph, %bb.cl ], [ %.sroa.9.0.ph, %bb.cm ]
  %.sroa.081.0 = phi i64 [ %.sroa.077.sroa.0.0.copyload, %bb.cd ], [ %.sroa.868.sroa.0.0.copyload97, %bb.ch ], [ -9223372036854775756, %bb.cl ], [ -9223372036854775756, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 1705
  store i8 0, ptr %i.go, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %.sroa.081.0, ptr %0, align 8
end_hunk_3
begin_hunk_4_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests:bb.a
  %or.cond175 = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond175, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc78:                                         ; preds = %bb.j
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 3 uses
  switch i64 %i.bp, label %.noexc79 [
    i64 2, label %._crit_edge.thread
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc78
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread118.i, label %.lr.ph86.i

.thread118.i:                                     ; preds = %bb.k
  store i8 1, ptr %.sroa.539.0..sroa_idx, align 8, !alias.scope !4442, !noalias !4444
  br label %.thread.i

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread50.i:                                      ; preds = %.thread.i
  %i.bs = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.l, %._crit_edge.thread
  %.sroa.07.184.i.lcssa239243 = phi i64 [ %.sroa.07.184.i209, %._crit_edge.thread ], [ %.sroa.07.184.i.lcssa, %bb.l ]
  %i.bt = phi i8 [ %i.bb, %._crit_edge.thread ], [ %i.ax, %bb.l ]
  %i.bu = phi i8 [ %i.bd, %._crit_edge.thread ], [ %i.az, %bb.l ]
  %i.bv = icmp eq i64 %.sroa.07.184.i.lcssa239243, 0
  %i.bw = icmp eq i64 %.sroa.0.1.lcssa.i, 0
  %or.cond3.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit, label %.loopexit184

._crit_edge218:                                   ; preds = %.loopexit184, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4445
  store ptr %i.r, ptr %i.c, align 8, !noalias !4445
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @235, ptr %i.bx, align 8, !noalias !4445
  %i.by = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc82:                                         ; preds = %._crit_edge218
  %.not.i = icmp eq ptr %i.by, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4445
  br i1 %.not.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc83, %bb.m
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !4446, !noundef !12
  %.not16.i = icmp eq i64 %i.ca, 0
  br i1 %.not16.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.noexc83 unwind label %.loopexit ; 2 uses

.noexc83:                                         ; preds = %bb.o
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  switch i64 %i.cc, label %bb.p [
    i64 2, label %bb.q
    i64 0, label %bb.n
  ]

bb.p:                                             ; preds = %.noexc83
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br label %bb.r

bb.q:                                             ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.d, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.w unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %.noexc82
  %.sroa.5.0.i.ph.ph = phi ptr [ %i.by, %.noexc82 ], [ %i.cd, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.e, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.ce)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.5.0.i.ph.ph) #32
          to label %.thread143 unwind label %bb.u

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.ph.ph, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.y, %bb.as, %3, %.thread126, %bb.ax, %bb.aw, %.loopexit.split-lp
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.sink.split

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.d, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86, %bb.aa, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.g, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.aa unwind label %bb.z

.noexc79:                                         ; preds = %.noexc, %.noexc78, %.thread50.i
  %.sroa.10103.0.ph = phi ptr [ %i.bs, %.thread50.i ], [ %i.bq, %.noexc78 ], [ %i.aj, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.h, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.ci)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86 unwind label %bb.y

.loopexit184:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.cj = phi i8 [ 1, %.thread.i ], [ %i.bu, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.ck = phi i8 [ 1, %.thread.i ], [ %i.bt, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bf, %.thread.i ], [ %i.ad, %.thread ], [ %i.ad, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = trunc nuw i8 %i.cj to i1
  %or.cond169 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond169, label %._crit_edge218, label %bb.g

bb.y:                                             ; preds = %.noexc79
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10103.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.10103.0.ph) #32
          to label %.thread143 unwind label %bb.u

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86: ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10103.0.ph) ]
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10103.0.ph, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.sink.split

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.g, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.ab:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread143.sink.split:                            ; preds = %bb.z, %bb.v
  %.sink = phi ptr [ %i.d, %bb.v ], [ %i.g, %bb.z ]
  %.pn68.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.co, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %.sink, i64 1096, i1 false)
  br label %.thread143

.thread143:                                       ; preds = %.thread143.sink.split, %bb.as, %bb.t, %bb.y, %bb.aq, %bb.ax, %.thread161, %.loopexit.split-lp
  %.pn68.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dv, %bb.aq ], [ %.pn.pn134.ph, %bb.ax ], [ %.pn.pn134.ph, %.thread161 ], [ %i.dx, %bb.as ], [ %i.cf, %bb.t ], [ %i.cn, %bb.y ], [ %.pn68.pn.ph, %.thread143.sink.split ]
  resume { ptr, i32 } %.pn68.pn

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit178.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread50.i, %._crit_edge218
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit178.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit181, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.n) #32
          to label %.thread143 unwind label %bb.u

bb.ac:                                            ; preds = %bb.ak, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.cp = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @54)
          to label %bb.ad unwind label %.thread136.thread153 ; 2 uses

.thread136.thread153:                             ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

.thread155:                                       ; preds = %bb.ao
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.cs = extractvalue { i64, ptr } %i.cp, 0
  %i.ct = extractvalue { i64, ptr } %i.cp, 1      ; 11 uses
  %i.cu = trunc nuw i64 %i.cs to i1               ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.cv = ptrtoint ptr %i.ct to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.cw = and i64 %i.cv, 3                        ; 2 uses
  switch i64 %i.cw, label %default.unreachable [
    i64 2, label %bb.af
    i64 3, label %bb.ag
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ], !prof !23

default.unreachable:                              ; preds = %bb.at, %bb.am, %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc88 unwind label %3

.noexc88:                                         ; preds = %bb.af
  %i.cy = lshr i64 %i.cv, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !12, !noundef !12
  %i.dc = invoke noundef i8 %i.db(i32 noundef %i.cz)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !6

bb.ag:                                            ; preds = %bb.ae
  %i.dd = lshr i64 %i.cv, 32
  %i.de = icmp ult ptr %i.ct, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dd to i8  ; 2 uses
  %i.df = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.df)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dh = load i8, ptr %i.dg, align 8, !range !55, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ai:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %i.ct, i64 31
  %i.dj = load i8, ptr %i.di, align 8, !range !55, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ad
  %i.dk = icmp eq ptr %i.ct, null
  br i1 %i.dk, label %.loopexit185, label %bb.ak

.loopexit185:                                     ; preds = %bb.aj, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.dl = phi ptr [ %i.ct, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.aj ] ; 3 uses
  %i.dm = phi i64 [ %i.cv, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.cu, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.noexc88
  %.sroa.0.0.i87 = phi i8 [ %i.dj, %bb.ai ], [ %switch.idx.cast.i.i.i, %bb.ag ], [ %i.dh, %bb.ah ], [ %i.dc, %.noexc88 ]
  %i.dn = icmp eq i8 %.sroa.0.0.i87, 13
  br i1 %i.dn, label %bb.al, label %.loopexit185

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.at unwind label %bb.as

bb.am:                                            ; preds = %.loopexit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dm, 3
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit
    i64 3, label %bb.an
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit
    i64 1, label %bb.ao
  ], !prof !23

bb.an:                                            ; preds = %bb.am
  %i.dp = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.dq = and i64 %i.dm, 1095216660480
  %i.dr = icmp ne i64 %i.dq, 1095216660480
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.assume(i1 %i.dr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit

bb.ao:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !alias.scope !4447
  store i8 3, ptr %i.b, align 8, !alias.scope !4447
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit unwind label %.thread155

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.ao, %bb.am, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit, %.loopexit185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %.thread143 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %bb.ap
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit

bb.as:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ct) #32
          to label %.thread143 unwind label %bb.u

bb.at:                                            ; preds = %bb.al
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.cw, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.au
    i64 0, label %.critedge
    i64 1, label %bb.av
  ], !prof !23

bb.au:                                            ; preds = %bb.at
  %i.dy = icmp ult ptr %i.ct, inttoptr (i64 188978561024 to ptr)
  %i.dz = and i64 %i.cv, 1095216660480
  %i.ea = icmp ne i64 %i.dz, 1095216660480
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.assume(i1 %i.ea)
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  %i.eb = getelementptr i8, ptr %i.ct, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !4448
  store i8 3, ptr %i.a, align 8, !alias.scope !4448
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
  br label %.critedge

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

.thread161:                                       ; preds = %bb.aw
  br i1 %.sroa.060.0132.ph, label %bb.ax, label %.thread143

3:                                                ; preds = %.noexc88, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ct) #32
          to label %.thread126 unwind label %bb.u

.thread126:                                       ; preds = %3, %.thread136.thread153
  %.pn.pn135 = phi { ptr, i32 } [ %i.cq, %.thread136.thread153 ], [ %lpad.thr_comm, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload) #32
          to label %bb.aw unwind label %bb.u

bb.aw:                                            ; preds = %.thread126, %.thread155
  %.pn.pn134.ph = phi { ptr, i32 } [ %i.cr, %.thread155 ], [ %.pn.pn135, %.thread126 ] ; 2 uses
  %.sroa.060.0132.ph = phi i1 [ false, %.thread155 ], [ true, %.thread126 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #32
          to label %.thread161 unwind label %bb.u

bb.ax:                                            ; preds = %.thread161
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #32
          to label %.thread143 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(1208) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1208 x i8], align 8              ; 5 uses
  %i.e = alloca [1208 x i8], align 8              ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [1208 x i8], align 8              ; 5 uses
  %i.h = alloca [1208 x i8], align 8              ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.518 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.620 = alloca [56 x i8], align 8          ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [1208 x i8], align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !53

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.8.0.copyload, ptr %i.l, align 8
  %.sroa.10.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.sroa.4.0..sroa.433.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx, i64 1104, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1200
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load i8, ptr %i.q, align 8, !range !47, !noundef !12
  %i.t = and i8 %i.s, 1                           ; 2 uses
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.r, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.t, ptr %.sroa.539.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 854 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 855 ; 4 uses
  %i.w = load i8, ptr %i.u, align 2, !range !48, !noundef !12
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %i.v, align 1, !range !48
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond169215 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond169215, label %._crit_edge218, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 859 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph217, %.loopexit184
  %i.ad = phi i8 [ %i.t, %.lr.ph217 ], [ %.ph, %.loopexit184 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %i.af = phi i1 [ %i.ae, %bb.g ], [ false, %bb.l ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.184.i.lcssa, %bb.l ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa.i, %bb.l ] ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !4461, !noundef !12
  %.not73.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not73.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.174.i = phi i64 [ %i.al, %bb.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %i.ah = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  switch i64 %i.ai, label %.noexc79 [
    i64 2, label %._crit_edge.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %.sroa.0.174.i, %i.ak           ; 2 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !4461, !noundef !12
  %.not.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %.noexc, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.174.i, %.noexc ], [ %i.al, %bb.i ] ; 2 uses
  %.not.lcssa.i = phi i1 [ false, %bb.h ], [ true, %.noexc ], [ false, %bb.i ]
  br i1 %i.af, label %.thread.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %._crit_edge.i
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4461, !noundef !12
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = load i8, ptr %i.ac, align 1, !range !48
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond173208 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond173208, label %._crit_edge, label %.lr.ph

.lr.ph86.i:                                       ; preds = %bb.k
  %i.ar = ptrtoint ptr %i.bq to i64
  %i.as = add i64 %.sroa.07.184.i209, %i.ar       ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4461, !noundef !12
  %i.au = icmp ne i64 %i.at, 0
  %i.av = load i8, ptr %i.ac, align 1, !range !48
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond173 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond173, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph86.i, %.lr.ph, %.lr.ph86.i.preheader
  %.sroa.07.184.i.lcssa = phi i64 [ %.sroa.07.0.i, %.lr.ph86.i.preheader ], [ %.sroa.07.184.i209, %.lr.ph ], [ %i.as, %.lr.ph86.i ] ; 2 uses
  %i.ax = load i8, ptr %i.u, align 2, !range !48, !noalias !4461, !noundef !12 ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.v, align 1, !range !48  ; 2 uses
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond177 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond177, label %.loopexit184, label %bb.l

._crit_edge.thread:                               ; preds = %.noexc78
  %i.bb = load i8, ptr %i.u, align 2, !range !48, !noalias !4461, !noundef !12 ; 2 uses
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.v, align 1, !range !48  ; 2 uses
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond177238 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond177238, label %.loopexit184, label %.thread

.thread.i:                                        ; preds = %._crit_edge.i, %.thread118.i
  %i.bf = phi i8 [ 1, %.thread118.i ], [ %i.ad, %._crit_edge.i ]
  %i.bg = load i8, ptr %i.u, align 2, !range !48, !noalias !4461, !noundef !12
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i8, ptr %i.v, align 1, !range !48
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond171 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond171, label %.loopexit184, label %.thread50.i

.lr.ph:                                           ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %.sroa.07.184.i209 = phi i64 [ %i.as, %.lr.ph86.i ], [ %.sroa.07.0.i, %.lr.ph86.i.preheader ] ; 3 uses
  %i.bk = load i8, ptr %i.u, align 2, !range !48, !noalias !4461, !noundef !12
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i64, ptr %i.aa, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  %or.cond175 = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond175, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc78:                                         ; preds = %bb.j
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 3 uses
  switch i64 %i.bp, label %.noexc79 [
    i64 2, label %._crit_edge.thread
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc78
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread118.i, label %.lr.ph86.i

.thread118.i:                                     ; preds = %bb.k
  store i8 1, ptr %.sroa.539.0..sroa_idx, align 8, !alias.scope !4460, !noalias !4462
  br label %.thread.i

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread50.i:                                      ; preds = %.thread.i
  %i.bs = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17) #34
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.l, %._crit_edge.thread
  %.sroa.07.184.i.lcssa239243 = phi i64 [ %.sroa.07.184.i209, %._crit_edge.thread ], [ %.sroa.07.184.i.lcssa, %bb.l ]
  %i.bt = phi i8 [ %i.bb, %._crit_edge.thread ], [ %i.ax, %bb.l ]
  %i.bu = phi i8 [ %i.bd, %._crit_edge.thread ], [ %i.az, %bb.l ]
  %i.bv = icmp eq i64 %.sroa.07.184.i.lcssa239243, 0
  %i.bw = icmp eq i64 %.sroa.0.1.lcssa.i, 0
  %or.cond3.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit, label %.loopexit184

._crit_edge218:                                   ; preds = %.loopexit184, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4463
  store ptr %i.r, ptr %i.c, align 8, !noalias !4463
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @238, ptr %i.bx, align 8, !noalias !4463
  %i.by = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc82:                                         ; preds = %._crit_edge218
  %.not.i = icmp eq ptr %i.by, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4463
  br i1 %.not.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc83, %bb.m
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !4464, !noundef !12
  %.not16.i = icmp eq i64 %i.ca, 0
  br i1 %.not16.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCs44McOc0n4RX_13interop_tests(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.noexc83 unwind label %.loopexit ; 2 uses

.noexc83:                                         ; preds = %bb.o
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  switch i64 %i.cc, label %bb.p [
    i64 2, label %bb.q
    i64 0, label %bb.n
  ]

bb.p:                                             ; preds = %.noexc83
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br label %bb.r

bb.q:                                             ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.w unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %.noexc82
  %.sroa.5.0.i.ph.ph = phi ptr [ %i.by, %.noexc82 ], [ %i.cd, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.ce)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.5.0.i.ph.ph) #32
          to label %.thread143 unwind label %bb.u

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.ph.ph, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.y, %bb.as, %3, %.thread126, %bb.ax, %bb.aw, %.loopexit.split-lp
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.sink.split

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.d, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86, %bb.aa, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.aa unwind label %bb.z

.noexc79:                                         ; preds = %.noexc, %.noexc78, %.thread50.i
  %.sroa.10103.0.ph = phi ptr [ %i.bs, %.thread50.i ], [ %i.bq, %.noexc78 ], [ %i.aj, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.h, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.ci)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86 unwind label %bb.y

.loopexit184:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.cj = phi i8 [ 1, %.thread.i ], [ %i.bu, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.ck = phi i8 [ 1, %.thread.i ], [ %i.bt, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bf, %.thread.i ], [ %i.ad, %.thread ], [ %i.ad, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = trunc nuw i8 %i.cj to i1
  %or.cond169 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond169, label %._crit_edge218, label %bb.g

bb.y:                                             ; preds = %.noexc79
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10103.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.10103.0.ph) #32
          to label %.thread143 unwind label %bb.u

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCs44McOc0n4RX_13interop_tests.exit86: ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10103.0.ph) ]
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10103.0.ph, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.sink.split

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCs44McOc0n4RX_13interop_tests.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.g, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.ab:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread143.sink.split:                            ; preds = %bb.z, %bb.v
  %.sink = phi ptr [ %i.d, %bb.v ], [ %i.g, %bb.z ]
  %.pn68.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.co, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %.sink, i64 1208, i1 false)
  br label %.thread143

.thread143:                                       ; preds = %.thread143.sink.split, %bb.as, %bb.t, %bb.y, %bb.aq, %bb.ax, %.thread161, %.loopexit.split-lp
  %.pn68.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dv, %bb.aq ], [ %.pn.pn134.ph, %bb.ax ], [ %.pn.pn134.ph, %.thread161 ], [ %i.dx, %bb.as ], [ %i.cf, %bb.t ], [ %i.cn, %bb.y ], [ %.pn68.pn.ph, %.thread143.sink.split ]
  resume { ptr, i32 } %.pn68.pn

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit178.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread50.i, %._crit_edge218
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit178.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit181, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.n) #32
          to label %.thread143 unwind label %bb.u

bb.ac:                                            ; preds = %bb.ak, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.cp = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @54)
          to label %bb.ad unwind label %.thread136.thread153 ; 2 uses

.thread136.thread153:                             ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

.thread155:                                       ; preds = %bb.ao
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.cs = extractvalue { i64, ptr } %i.cp, 0
  %i.ct = extractvalue { i64, ptr } %i.cp, 1      ; 11 uses
  %i.cu = trunc nuw i64 %i.cs to i1               ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.cv = ptrtoint ptr %i.ct to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.cw = and i64 %i.cv, 3                        ; 2 uses
  switch i64 %i.cw, label %default.unreachable [
    i64 2, label %bb.af
    i64 3, label %bb.ag
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ], !prof !23

default.unreachable:                              ; preds = %bb.at, %bb.am, %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc88 unwind label %3

.noexc88:                                         ; preds = %bb.af
  %i.cy = lshr i64 %i.cv, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !12, !noundef !12
  %i.dc = invoke noundef i8 %i.db(i32 noundef %i.cz)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !6

bb.ag:                                            ; preds = %bb.ae
  %i.dd = lshr i64 %i.cv, 32
  %i.de = icmp ult ptr %i.ct, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dd to i8  ; 2 uses
  %i.df = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.df)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dh = load i8, ptr %i.dg, align 8, !range !55, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ai:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %i.ct, i64 31
  %i.dj = load i8, ptr %i.di, align 8, !range !55, !noundef !12
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ad
  %i.dk = icmp eq ptr %i.ct, null
  br i1 %i.dk, label %.loopexit185, label %bb.ak

.loopexit185:                                     ; preds = %bb.aj, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.dl = phi ptr [ %i.ct, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.aj ] ; 3 uses
  %i.dm = phi i64 [ %i.cv, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.aj ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.cu, label %bb.am, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.noexc88
  %.sroa.0.0.i87 = phi i8 [ %i.dj, %bb.ai ], [ %switch.idx.cast.i.i.i, %bb.ag ], [ %i.dh, %bb.ah ], [ %i.dc, %.noexc88 ]
  %i.dn = icmp eq i8 %.sroa.0.0.i87, 13
  br i1 %i.dn, label %bb.al, label %.loopexit185

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.at unwind label %bb.as

bb.am:                                            ; preds = %.loopexit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dm, 3
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit
    i64 3, label %bb.an
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit
    i64 1, label %bb.ao
  ], !prof !23

bb.an:                                            ; preds = %bb.am
  %i.dp = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.dq = and i64 %i.dm, 1095216660480
  %i.dr = icmp ne i64 %i.dq, 1095216660480
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.assume(i1 %i.dr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit

bb.ao:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !alias.scope !4465
  store i8 3, ptr %i.b, align 8, !alias.scope !4465
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit unwind label %.thread155

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.ao, %bb.am, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests.exit, %.loopexit185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %.thread143 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %bb.ap
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit

bb.as:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ct) #32
          to label %.thread143 unwind label %bb.u

bb.at:                                            ; preds = %bb.al
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.cw, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.au
    i64 0, label %.critedge
    i64 1, label %bb.av
  ], !prof !23

bb.au:                                            ; preds = %bb.at
  %i.dy = icmp ult ptr %i.ct, inttoptr (i64 188978561024 to ptr)
  %i.dz = and i64 %i.cv, 1095216660480
  %i.ea = icmp ne i64 %i.dz, 1095216660480
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.assume(i1 %i.ea)
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  %i.eb = getelementptr i8, ptr %i.ct, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !4466
  store i8 3, ptr %i.a, align 8, !alias.scope !4466
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
  br label %.critedge

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECs44McOc0n4RX_13interop_tests.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

.thread161:                                       ; preds = %bb.aw
  br i1 %.sroa.060.0132.ph, label %bb.ax, label %.thread143

3:                                                ; preds = %.noexc88, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %i.ct) #32
          to label %.thread126 unwind label %bb.u

.thread126:                                       ; preds = %3, %.thread136.thread153
  %.pn.pn135 = phi { ptr, i32 } [ %i.cq, %.thread136.thread153 ], [ %lpad.thr_comm, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr nonnull %.sroa.107.0.copyload) #32
          to label %bb.aw unwind label %bb.u

bb.aw:                                            ; preds = %.thread126, %.thread155
  %.pn.pn134.ph = phi { ptr, i32 } [ %i.cr, %.thread155 ], [ %.pn.pn135, %.thread126 ] ; 2 uses
  %.sroa.060.0132.ph = phi i1 [ false, %.thread155 ], [ true, %.thread126 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #32
          to label %.thread161 unwind label %bb.u

bb.ax:                                            ; preds = %.thread161
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #32
          to label %.thread143 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsiw6lwv6qtEL_6libp2p7builder5phaseNvMNtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtBI_6Config3newINtB2_19IntoSecurityUpgradeNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE21into_security_upgradeCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([584 x i8]) align 8 captures(none) dereferenceable(584) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB2_6Config3new(ptr noalias nofree noundef nonnull sret([584 x i8]) align 8 captures(none) dereferenceable(584) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB24_6option8IntoIterBU_EB2N_EE9from_iterCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %1)
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ult i64 %.sroa.54.0.copyload, 230584300921369396
  call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.54.0.copyload, ptr %i.d, align 8
  store i64 %.sroa.02.0.copyload, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.43.0.copyload, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherIBW_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1h_6server9TlsStreamB22_EEB22_ENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !12
  switch i64 %i.a, label %bb.c [
    i64 -1, label %bb.b
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call { i64, ptr } @_RNvXs0_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3)
  br label %_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1d_6server9TlsStreamB1Y_EENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  br label %_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1d_6server9TlsStreamB1Y_EENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1096) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  br label %_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1d_6server9TlsStreamB1Y_EENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit

_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1d_6server9TlsStreamB1Y_EENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB5_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE15upgrade_inboundCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(584) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1784 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %0, i64 240, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %1, i64 176, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1776
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !4469
  %i.d = tail call noundef align 8 dereferenceable_or_null(1784) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 1784, i64 noundef 8) #20, !noalias !4469 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1784) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtBJ_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE15upgrade_inbound0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 dereferenceable(1784) %i.a) #32
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.h) #32
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %i.d, ptr noundef nonnull align 8 dereferenceable(1784) %i.a, i64 1784, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.i)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @58, 1
  ret { ptr, ptr } %i.k

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtB5_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE15upgrade_inboundCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(584) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1720 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %0, i64 240, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1712
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !4472
  %i.d = tail call noundef align 8 dereferenceable_or_null(1720) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1961) 1720, i64 noundef 8) #20, !noalias !4472 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1720) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtCs2oFjxwYQXCx_10libp2p_tls7upgradeNtBJ_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade24InboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE15upgrade_inbound0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 dereferenceable(1720) %i.a) #32
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.h) #32
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1720) %i.d, ptr noundef nonnull align 8 dereferenceable(1720) %i.a, i64 1720, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn12ClientConfigECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(344) %i.i)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @59, 1
  ret { ptr, ptr } %i.k

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linuxNtB5_13AddressFamilyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !4473, !noundef !12
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
end_hunk_4
