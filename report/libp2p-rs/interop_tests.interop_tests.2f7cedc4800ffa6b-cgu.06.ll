Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.06?download=true
inline.NumInlined: 2945
inline.NumDeleted: 1160
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs1_CshuexzQAPOo_12libp2p_noiseNtB5_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outboundCs44McOc0n4RX_13interop_tests:bb.a
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBM_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outbound0E3newCs44McOc0n4RX_13interop_tests.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2448) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBJ_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outbound0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 dereferenceable(2448) %i.a) #36
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBM_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE16upgrade_outbound0E3newCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2448) %i.d, ptr noundef nonnull align 8 dereferenceable(2448) %i.a, i64 2448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @146, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_CshuexzQAPOo_12libp2p_noiseNtB5_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outboundCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(424) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2384 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %i.a, ptr noundef nonnull align 8 dereferenceable(424) %0, i64 424, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2248
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !10686
  %i.d = tail call noundef align 8 dereferenceable_or_null(2384) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2384, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !10686 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBM_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outbound0E3newCs44McOc0n4RX_13interop_tests.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2384) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBJ_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outbound0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 dereferenceable(2384) %i.a) #36
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXs1_CshuexzQAPOo_12libp2p_noiseNtBM_6ConfigINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade25OutboundConnectionUpgradeINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEE16upgrade_outbound0E3newCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2384) %i.d, ptr noundef nonnull align 8 dereferenceable(2384) %i.a, i64 2384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @147, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs3g1xDapxWLs_6base646encodeNtB5_16EncodeSliceErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10708)
  %i.l = load i64, ptr %0, align 8, !range !11, !alias.scope !10708, !noundef !10
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 2)
  switch i64 %i.m, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !59

default.unreachable:                              ; preds = %bb.h, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1464) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10709)
  %i.p = load i64, ptr %i.o, align 8, !range !29, !alias.scope !10710, !noundef !10
  %.not.i.i = icmp eq i64 %i.p, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10712
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.r = load i8, ptr %i.q, align 8, !range !46, !alias.scope !10713, !noundef !10
  %i.s = and i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.t, ptr %i.d, align 8, !noalias !10712
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !10712
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !10712
  %i.u = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10712
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10715
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.x = load i8, ptr %i.w, align 8, !range !46, !alias.scope !10716, !noundef !10
  %i.y = and i8 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.z, ptr %i.c, align 8, !noalias !10715
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !noalias !10715
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.y, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !10715
  %i.aa = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10715
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #42, !noalias !10717
  unreachable

_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi { i64, ptr } [ %i.n, %bb.b ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = extractvalue { i64, ptr } %.pn.i, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit
  %i.ad = extractvalue { i64, ptr } %.pn.i, 1     ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %0, align 8, !range !11, !noundef !10
  %i.af = call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 2)
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
  ], !prof !59

bb.i:                                             ; preds = %bb.h
  %i.ag = call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  %.not34 = icmp ne ptr %i.ai, null
  %or.cond.not = select i1 %i.aj, i1 true, i1 %.not34
  br i1 %or.cond.not, label %bb.ag, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10718)
  %i.al = load i64, ptr %i.ak, align 8, !range !29, !alias.scope !10718, !noundef !10
  %.not.i = icmp eq i64 %i.al, 2
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !10719)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !range !46, !alias.scope !10720, !noundef !10 ; 2 uses
  %switch.not.i.i = icmp samesign ult i8 %i.an, 2
  br i1 %switch.not.i.i, label %2, label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

2:                                                ; preds = %bb.k
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.ak), !noalias !10721
  %3 = load i8, ptr %i.am, align 8, !range !46, !alias.scope !10720, !noundef !10
  switch i8 %3, label %.sink.split.i.i [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split.i.i:                                  ; preds = %4, %2
  %.sink.i.i = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph.i.i = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink.i.i, ptr %i.am, align 8, !alias.scope !10720
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

4:                                                ; preds = %2, %2
  br label %.sink.split.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %.sink.split.i.i, %bb.k
  %i.ao = phi i8 [ %i.an, %bb.k ], [ %.ph.i.i, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10722
  %i.ap = and i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.aq, ptr %i.b, align 8, !noalias !10722
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10722
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.ap, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10722
  %i.ar = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10722
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !range !46, !alias.scope !10724, !noundef !10 ; 2 uses
  %switch.not.i2.i = icmp samesign ult i8 %i.au, 2
  br i1 %switch.not.i2.i, label %5, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

5:                                                ; preds = %bb.l
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.as), !noalias !10725
  %6 = load i8, ptr %i.at, align 8, !range !46, !alias.scope !10724, !noundef !10
  switch i8 %6, label %.sink.split.i5.i [
    i8 1, label %7
    i8 3, label %7
  ]

.sink.split.i5.i:                                 ; preds = %7, %5
  %.sink.i6.i = phi i8 [ 3, %7 ], [ 2, %5 ]
  %.ph.i7.i = phi i8 [ 1, %7 ], [ 0, %5 ]
  store i8 %.sink.i6.i, ptr %i.at, align 8, !alias.scope !10724
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

7:                                                ; preds = %5, %5
  br label %.sink.split.i5.i

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %.sink.split.i5.i, %bb.l
  %i.av = phi i8 [ %i.au, %bb.l ], [ %.ph.i7.i, %.sink.split.i5.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10726
  %i.aw = and i8 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.ax, ptr %i.a, align 8, !noalias !10726
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !noalias !10726
  %.sroa.5.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.aw, ptr %.sroa.5.0..sroa_idx.i4.i, align 8, !noalias !10726
  %i.ay = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10726
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i
  %.pn.i38 = phi { i64, ptr } [ %i.ar, %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i ], [ %i.ay, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i ] ; 2 uses
  %i.az = extractvalue { i64, ptr } %.pn.i38, 0
  %i.ba = extractvalue { i64, ptr } %.pn.i38, 1
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #42
  unreachable

bb.n:                                             ; preds = %bb.u, %bb.ab, %bb.z, %bb.y, %bb.r, %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs44McOc0n4RX_13interop_tests(i64 0, ptr null) #36
          to label %bb.af unwind label %bb.ae

bb.o:                                             ; preds = %bb.i
  %i.bc = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bd = icmp ult i64 %i.bc, 2
  br i1 %i.bd, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.be = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.be, label %bb.q [
    i8 0, label %bb.w
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !58

bb.q:                                             ; preds = %bb.p
  %i.bf = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.s
  %.sroa.019.0 = phi i8 [ %i.bf, %bb.s ], [ %i.be, %bb.p ], [ %i.be, %bb.p ]
  %i.bg = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.bh = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, i8 noundef %.sroa.019.0)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bf, 0
  br i1 %i.bi, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.bh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bj = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @149, ptr %i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.bl, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @69, ptr %i.bm, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bk, ptr %.sroa.422.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBU_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close0Cs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.t
  %i.bn = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not35 = icmp eq i8 %i.bn, 0
  br i1 %.not35, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bo = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 3
  br i1 %i.bq, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !10
  store i64 4, ptr %i.h, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bt, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bv, ptr %i.bx, align 8
  %i.by = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.z unwind label %bb.n       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bz = extractvalue { ptr, ptr } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.by, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !10, !nonnull !10
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ce = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @149, ptr %i.e, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.cg, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @69, ptr %i.ch, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cf, ptr %i.ci, align 8
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.br, ptr noundef nonnull %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ad unwind label %bb.n

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.af:                                            ; preds = %bb.n
  resume { ptr, i32 } %i.bb

bb.ag:                                            ; preds = %bb.i, %bb.v, %bb.w, %bb.x, %bb.ac, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit, %bb.g, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit
  %.sroa.5.1 = phi ptr [ %i.ba, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit ], [ %i.ad, %bb.g ], [ undef, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit ], [ null, %bb.ac ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ %i.ai, %bb.i ]
  %.sroa.0.1 = phi i64 [ %i.az, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.g ], [ 1, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.ah, %bb.i ]
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !10
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !59

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10736)
  %i.g = load i64, ptr %i.f, align 8, !range !29, !alias.scope !10736, !noundef !10
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.e, label %bb.d

end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests:bb.a
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !noalias !10741
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.p, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !noalias !10741
  %i.r = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10741
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #42
  unreachable

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ %i.r, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !10
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !59

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvXs4_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_21LengthDelimitedReaderINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10755)
  %i.g = load i64, ptr %i.f, align 8, !range !29, !alias.scope !10755, !noundef !10
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10757
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.i = load i8, ptr %i.h, align 8, !range !46, !alias.scope !10758, !noundef !10
  %i.j = and i8 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.k, ptr %i.b, align 8, !noalias !10757
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10757
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.j, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10757
  %i.l = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10757
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10759)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10760
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.o = load i8, ptr %i.n, align 8, !range !46, !alias.scope !10761, !noundef !10
  %i.p = and i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.q, ptr %i.a, align 8, !noalias !10760
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !noalias !10760
  %.sroa.5.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.p, ptr %.sroa.5.0..sroa_idx.i3.i, align 8, !noalias !10760
  %i.r = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10760
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #42
  unreachable

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ %i.r, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1432) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10783)
  %i.l = load i64, ptr %0, align 8, !range !11, !alias.scope !10783, !noundef !10
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 2)
  switch i64 %i.m, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !59

default.unreachable:                              ; preds = %bb.h, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10784)
  %i.p = load i64, ptr %i.o, align 8, !range !29, !alias.scope !10785, !noundef !10
  %.not.i.i = icmp eq i64 %i.p, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10786)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10787
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.r = load i8, ptr %i.q, align 8, !range !46, !alias.scope !10788, !noundef !10
  %i.s = and i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.t, ptr %i.d, align 8, !noalias !10787
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !10787
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !10787
  %i.u = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10787
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10790
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.x = load i8, ptr %i.w, align 8, !range !46, !alias.scope !10791, !noundef !10
  %i.y = and i8 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.z, ptr %i.c, align 8, !noalias !10790
  %.sroa.4.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !noalias !10790
  %.sroa.5.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.y, ptr %.sroa.5.0..sroa_idx.i3.i.i, align 8, !noalias !10790
  %i.aa = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10790
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #42, !noalias !10792
  unreachable

_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi { i64, ptr } [ %i.n, %bb.b ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = extractvalue { i64, ptr } %.pn.i, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit
  %i.ad = extractvalue { i64, ptr } %.pn.i, 1     ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %0, align 8, !range !11, !noundef !10
  %i.af = call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 2)
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
  ], !prof !59

bb.i:                                             ; preds = %bb.h
  %i.ag = call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1      ; 2 uses
  %i.aj = trunc nuw i64 %i.ah to i1
  %.not34 = icmp ne ptr %i.ai, null
  %or.cond.not = select i1 %i.aj, i1 true, i1 %.not34
  br i1 %or.cond.not, label %bb.ag, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10793)
  %i.al = load i64, ptr %i.ak, align 8, !range !29, !alias.scope !10793, !noundef !10
  %.not.i = icmp eq i64 %i.al, 2
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !10794)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !range !46, !alias.scope !10795, !noundef !10 ; 2 uses
  %switch.not.i.i = icmp samesign ult i8 %i.an, 2
  br i1 %switch.not.i.i, label %2, label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

2:                                                ; preds = %bb.k
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ak), !noalias !10796
  %3 = load i8, ptr %i.am, align 8, !range !46, !alias.scope !10795, !noundef !10
  switch i8 %3, label %.sink.split.i.i [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split.i.i:                                  ; preds = %4, %2
  %.sink.i.i = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph.i.i = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink.i.i, ptr %i.am, align 8, !alias.scope !10795
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

4:                                                ; preds = %2, %2
  br label %.sink.split.i.i

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %.sink.split.i.i, %bb.k
  %i.ao = phi i8 [ %i.an, %bb.k ], [ %.ph.i.i, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10797
  %i.ap = and i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.aq, ptr %i.b, align 8, !noalias !10797
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10797
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.ap, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10797
  %i.ar = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10797
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10798)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !range !46, !alias.scope !10799, !noundef !10 ; 2 uses
  %switch.not.i2.i = icmp samesign ult i8 %i.au, 2
  br i1 %switch.not.i2.i, label %5, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

5:                                                ; preds = %bb.l
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.as), !noalias !10800
  %6 = load i8, ptr %i.at, align 8, !range !46, !alias.scope !10799, !noundef !10
  switch i8 %6, label %.sink.split.i5.i [
    i8 1, label %7
    i8 3, label %7
  ]

.sink.split.i5.i:                                 ; preds = %7, %5
  %.sink.i6.i = phi i8 [ 3, %7 ], [ 2, %5 ]
  %.ph.i7.i = phi i8 [ 1, %7 ], [ 0, %5 ]
  store i8 %.sink.i6.i, ptr %i.at, align 8, !alias.scope !10799
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i

7:                                                ; preds = %5, %5
  br label %.sink.split.i5.i

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i: ; preds = %.sink.split.i5.i, %bb.l
  %i.av = phi i8 [ %i.au, %bb.l ], [ %.ph.i7.i, %.sink.split.i5.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10801
  %i.aw = and i8 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.ax, ptr %i.a, align 8, !noalias !10801
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !noalias !10801
  %.sroa.5.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.aw, ptr %.sroa.5.0..sroa_idx.i4.i, align 8, !noalias !10801
  %i.ay = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10801
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i
  %.pn.i38 = phi { i64, ptr } [ %i.ar, %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i ], [ %i.ay, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit.i ] ; 2 uses
  %i.az = extractvalue { i64, ptr } %.pn.i38, 0
  %i.ba = extractvalue { i64, ptr } %.pn.i38, 1
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #42
  unreachable

bb.n:                                             ; preds = %bb.u, %bb.ab, %bb.z, %bb.y, %bb.r, %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs44McOc0n4RX_13interop_tests(i64 0, ptr null) #36
          to label %bb.af unwind label %bb.ae

bb.o:                                             ; preds = %bb.i
  %i.bc = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bd = icmp ult i64 %i.bc, 2
  br i1 %i.bd, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.be = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.be, label %bb.q [
    i8 0, label %bb.w
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !58

bb.q:                                             ; preds = %bb.p
  %i.bf = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.s
  %.sroa.019.0 = phi i8 [ %i.bf, %bb.s ], [ %i.be, %bb.p ], [ %i.be, %bb.p ]
  %i.bg = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.bh = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, i8 noundef %.sroa.019.0)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bf, 0
  br i1 %i.bi, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.bh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bj = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @149, ptr %i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.bl, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @69, ptr %i.bm, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bk, ptr %.sroa.422.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBU_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close0Cs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.t
  %i.bn = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not35 = icmp eq i8 %i.bn, 0
  br i1 %.not35, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bo = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 3
  br i1 %i.bq, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !10
  store i64 4, ptr %i.h, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bt, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bv, ptr %i.bx, align 8
  %i.by = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.z unwind label %bb.n       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bz = extractvalue { ptr, ptr } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, ptr } %i.by, 1      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !10, !nonnull !10
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ce = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !14, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @149, ptr %i.e, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.cg, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @69, ptr %i.ch, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cf, ptr %i.ci, align 8
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.br, ptr noundef nonnull %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ad unwind label %bb.n

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.af:                                            ; preds = %bb.n
  resume { ptr, i32 } %i.bb

bb.ag:                                            ; preds = %bb.i, %bb.v, %bb.w, %bb.x, %bb.ac, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit, %bb.g, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit
  %.sroa.5.1 = phi ptr [ %i.ba, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit ], [ %i.ad, %bb.g ], [ undef, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit ], [ null, %bb.ac ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ %i.ai, %bb.i ]
  %.sroa.0.1 = phi i64 [ %i.az, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.g ], [ 1, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.ah, %bb.i ]
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.cl
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1432) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !10
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !59

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10811)
  %i.g = load i64, ptr %i.f, align 8, !range !29, !alias.scope !10811, !noundef !10
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.e, label %bb.d

end_hunk_1
begin_hunk_2_@_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !54, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.i, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !54, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.i, null
  %i.aa = load i8, ptr %.sroa.54.0..sroa_idx, align 8, !range !47
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %bb.h
  %.sroa.0.0.ph = phi i64 [ 0, %bb.h ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ]
  %.sink.in = load i8, ptr %i.c, align 8, !range !46, !noundef !10
  %.sink = or i8 %.sink.in, 1
  store i8 %.sink, ptr %i.c, align 8
  br label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %cond = icmp eq i64 %i.h, 1
  br i1 %cond, label %bb.l, label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.g, %bb.f, %bb.e, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.y, %bb.g ], [ %switch.idx.cast.i.i.i, %bb.e ], [ %i.w, %bb.f ], [ %i.r, %.noexc ]
  %i.ad = icmp eq i8 %.sroa.0.0.i, 6
  br i1 %i.ad, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.h, %.sink.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %i.h, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ %i.h, %bb.b ], [ 0, %bb.h ], [ %.sroa.0.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.l
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #36
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.j
  %.sroa.5.2 = phi ptr [ %i.i, %bb.j ], [ null, %bb.a ], [ null, %bb.a ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !46, !noundef !10 ; 2 uses
  switch i8 %i.d, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.b
    i8 3, label %bb.n
  ]

default.unreachable11:                            ; preds = %bb.c, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = and i8 %i.d, 1
  store ptr %0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 %i.f, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = call { i64, ptr } @_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 5 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 8 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  switch i64 %i.h, label %bb.c [
    i64 2, label %bb.j
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable11 [
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
    i64 1, label %bb.g
  ], !prof !33

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10
  %i.r = invoke noundef i8 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.i, !inline_history !4

bb.e:                                             ; preds = %bb.c
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8   ; 2 uses
  %i.u = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.u)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !54, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.i, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !54, !noundef !10
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.i, null
  %i.aa = load i8, ptr %.sroa.54.0..sroa_idx, align 8, !range !47
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %bb.h
  %.sroa.0.0.ph = phi i64 [ 0, %bb.h ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ]
  %.sink.in = load i8, ptr %i.c, align 8, !range !46, !noundef !10
  %.sink = or i8 %.sink.in, 1
  store i8 %.sink, ptr %i.c, align 8
  br label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %cond = icmp eq i64 %i.h, 1
  br i1 %cond, label %bb.l, label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.g, %bb.f, %bb.e, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.y, %bb.g ], [ %switch.idx.cast.i.i.i, %bb.e ], [ %i.w, %bb.f ], [ %i.r, %.noexc ]
  %i.ad = icmp eq i8 %.sroa.0.0.i, 6
  br i1 %i.ad, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.h, %.sink.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %i.h, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ %i.h, %bb.b ], [ 0, %bb.h ], [ %.sroa.0.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.l
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #36
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.j
  %.sroa.5.2 = phi ptr [ %i.i, %bb.j ], [ null, %bb.a ], [ null, %bb.a ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1352) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %2, label %bb.b

2:                                                ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %3 = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %3, label %.sink.split [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split:                                      ; preds = %2, %4
  %.sink = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g

4:                                                ; preds = %2, %2
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1352) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1352) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1320) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %2, label %bb.b

2:                                                ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %3 = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %3, label %.sink.split [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split:                                      ; preds = %2, %4
  %.sink = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g

4:                                                ; preds = %2, %2
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1320) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1320) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d)
  %i.e = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %i.e, label %.sink.split [
    i8 1, label %2
    i8 3, label %2
  ]

.sink.split:                                      ; preds = %.sink.split.a, %2
  %.sink = phi i8 [ 3, %2 ], [ 2, %.sink.split.a ]
  %.ph = phi i8 [ 1, %2 ], [ 0, %.sink.split.a ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i

2:                                                ; preds = %.sink.split.a, %.sink.split.a
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3O_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB6q_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectNtB4J_7HandlerNtB5v_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionB7K_E0s0_0EENtNtNtB3O_6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 7 uses
  %i.b = alloca [696 x i8], align 8               ; 9 uses
  %i.c = alloca [696 x i8], align 8               ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -2, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa.0.0..sroa_idx, i64 688, i1 false)
  %i.d = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3O_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB6q_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectNtB4J_7HandlerNtB5v_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionB7K_E0s0_0EE14try_start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.c) ; 3 uses
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
  %.sroa.01.1 = phi i8 [ %i.d, %bb.f ], [ -1, %bb.j ], [ -1, %bb.j ], [ %i.l, %.loopexit ], [ %i.o, %bb.l ], [ %i.h, %bb.i ], [ %i.o, %bb.m ], [ %i.k, %bb.p ], [ %i.o, %bb.l ]
  ret i8 %.sroa.01.1

bb.h:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4fuseINtB5_4FuseQINtNtB7_3map3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1T_10ConnectionINtNtNtB1V_7handler6select23ConnectionHandlerSelectNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEE5close0ENCNCINvNtNtB1T_4pool4task30new_for_established_connectionB2S_E0s0_0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([696 x i8]) align 8 captures(address) dereferenceable(696) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %i.b, align 8, !range !60, !noundef !10 ; 2 uses
  switch i64 %i.g, label %bb.k [
    i64 -4, label %bb.j
    i64 -3, label %bb.l
    i64 -2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.h = load i8, ptr %.sroa.456.0..sroa_idx, align 8, !range !47, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !14, !noundef !10
  %i.k = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB32_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
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
  %i.l = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3O_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB6q_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectNtB4J_7HandlerNtB5v_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionB7K_E0s0_0EE14try_start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.a) ; 3 uses
  switch i8 %i.l, label %bb.n [
    i8 -1, label %.loopexit
    i8 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !align !14, !noundef !10
  %i.o = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB32_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 5 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.p:                                             ; preds = %bb.j
  %i.r = icmp samesign ult i8 %i.k, 2
  call void @llvm.assume(i1 %i.r)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3O_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB6q_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectNtB4J_7HandlerNtB5v_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionB7K_E0s_0EENtNtNtB3O_6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [696 x i8], align 8               ; 7 uses
  %i.b = alloca [696 x i8], align 8               ; 9 uses
  %i.c = alloca [696 x i8], align 8               ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -2, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(688) %.sroa.6.0..sroa.0.0..sroa_idx, i64 688, i1 false)
  %i.d = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3O_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB6q_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionINtNtNtB1Y_7handler6select23ConnectionHandlerSelectNtB4J_7HandlerNtB5v_7HandlerEE5close0ENCNCINvB1S_30new_for_established_connectionB7K_E0s_0EE14try_start_sendCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(720) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(696) %i.c) ; 3 uses
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

end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlan9InfoVxlanNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests:bb.a
  store ptr %i.bh, ptr %i.u, align 8, !noalias !10942
  %i.bi = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 5, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10942
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bj, ptr %i.t, align 8, !noalias !10942
  %i.bk = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 9, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10942
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bl, ptr %i.s, align 8, !noalias !10942
  %i.bm = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 5, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10942
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bn, ptr %i.r, align 8, !noalias !10942
  %i.bo = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 3, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10942
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bp, ptr %i.q, align 8, !noalias !10942
  %i.bq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 6, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10942
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.br, ptr %i.p, align 8, !noalias !10942
  %i.bs = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10942
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bt, ptr %i.o, align 8, !noalias !10942
  %i.bu = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 15, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10942
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bv, ptr %i.n, align 8, !noalias !10942
  %i.bw = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 4, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10942
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bx, ptr %i.m, align 8, !noalias !10942
  %i.by = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 7, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10942
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bz, ptr %i.l, align 8, !noalias !10942
  %i.ca = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 13, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10942
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cb, ptr %i.k, align 8, !noalias !10942
  %i.cc = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 13, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10942
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cd, ptr %i.j, align 8, !noalias !10942
  %i.ce = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 9, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10942
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cf, ptr %i.i, align 8, !noalias !10942
  %i.cg = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 9, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10942
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ch, ptr %i.h, align 8, !noalias !10942
  %i.ci = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 3, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10942
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cj, ptr %i.g, align 8, !noalias !10942
  %i.ck = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 3, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10942
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cl, ptr %i.f, align 8, !noalias !10942
  %i.cm = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 16, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10942
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cn, ptr %i.e, align 8, !noalias !10942
  %i.co = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 10, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10942
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cp, ptr %i.d, align 8, !noalias !10942
  %i.cq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 2, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10942
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cr, ptr %i.c, align 8, !noalias !10942
  %i.cs = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10942
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ct, ptr %i.b, align 8, !noalias !10942
  %i.cu = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10942
  store ptr %i.ag, ptr %i.a, align 8, !noalias !10942
  %i.cv = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10942
  br label %_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs0_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5vxlanNtB5_9InfoVxlanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.sroa.0.0.in.i = phi i1 [ %i.am, %bb.c ], [ %i.ao, %bb.d ], [ %i.aq, %bb.e ], [ %i.as, %bb.f ], [ %i.au, %bb.g ], [ %i.aw, %bb.h ], [ %i.ay, %bb.i ], [ %i.ba, %bb.j ], [ %i.bc, %bb.k ], [ %i.be, %bb.l ], [ %i.bg, %bb.m ], [ %i.bi, %bb.n ], [ %i.bk, %bb.o ], [ %i.bm, %bb.p ], [ %i.bo, %bb.q ], [ %i.bq, %bb.r ], [ %i.bs, %bb.s ], [ %i.bu, %bb.t ], [ %i.bw, %bb.u ], [ %i.by, %bb.v ], [ %i.ca, %bb.w ], [ %i.cc, %bb.x ], [ %i.ce, %bb.y ], [ %i.cg, %bb.z ], [ %i.ci, %bb.aa ], [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ], [ %i.co, %bb.ad ], [ %i.cq, %bb.ae ], [ %i.cs, %bb.af ], [ %i.cu, %bb.ag ], [ %i.cv, %bb.ah ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata10openpgpkey10OPENPGPKEYNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10946
  store ptr %i.b, ptr %i.a, align 8, !noalias !10946
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10946
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4null4NULLNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10950
  store ptr %i.b, ptr %i.a, align 8, !noalias !10950
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @191)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10950
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %2, label %bb.b

2:                                                ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %3 = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %3, label %.sink.split [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split:                                      ; preds = %2, %4
  %.sink = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g

4:                                                ; preds = %2, %2
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %2, label %bb.b

2:                                                ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %3 = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %3, label %.sink.split [
    i8 1, label %4
    i8 3, label %4
  ]

.sink.split:                                      ; preds = %2, %4
  %.sink = phi i8 [ 3, %4 ], [ 2, %2 ]
  %.ph = phi i8 [ 1, %4 ], [ 0, %2 ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g

4:                                                ; preds = %2, %2
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d)
  %i.e = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  switch i8 %i.e, label %.sink.split [
    i8 1, label %2
    i8 3, label %2
  ]

.sink.split:                                      ; preds = %.sink.split.a, %2
  %.sink = phi i8 [ 3, %2 ], [ 2, %.sink.split.a ]
  %.ph = phi i8 [ 1, %2 ], [ 0, %.sink.split.a ]
  store i8 %.sink, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i

2:                                                ; preds = %.sink.split.a, %.sink.split.a
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load i8, ptr %i.b, align 8, !range !46, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs3_NtCsdTHTBGblh3Z_11libp2p_core9transportINtB5_14TransportErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1a_3fmt7Display3fmtCs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !10
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_7Display3fmtCs44McOc0n4RX_13interop_tests, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !14, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @180, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.1 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @218)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connection15PipelineMessageNtNtB7_7bounded9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @_RNvMNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4listINtB2_2TxNtNtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connection15PipelineMessageE5closeCs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs5ZPBIviNNCa_3der3tag3TagENtNtB7_3fmt5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !10951, !noundef !10
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCs5vIp9T9TAX9_10futures_io6if_stdQINtNtNtCsl9hx9jpF0W9_12futures_util2io4take4TakeQINtNtBJ_5split8ReadHalfINtNtNtBL_6future6either6EitherIB1P_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2t_6server9TlsStreamB3e_EEB3e_EEENtB4_9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !14, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10954, !noundef !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util2io4takeINtB4_4TakeQINtNtB6_5split8ReadHalfINtNtNtB8_6future6either6EitherIB1i_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1W_6server9TlsStreamB2H_EEB2H_EEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 range(i64 0, -9223372036854775808) %3)
  %i.e = tail call { i64, ptr } @_RNvXs_NtCs5vIp9T9TAX9_10futures_io6if_stdQINtNtNtCsl9hx9jpF0W9_12futures_util2io5split8ReadHalfINtNtNtBL_6future6either6EitherIB1w_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2a_6server9TlsStreamB2V_EEB2V_EENtB4_9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %..i.i) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 4 uses
  switch i64 %i.f, label %bb.c [
    i64 2, label %_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util2io4takeINtB4_4TakeQINtNtB6_5split8ReadHalfINtNtNtB8_6future6either6EitherIB1i_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1W_6server9TlsStreamB2H_EEB2H_EEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit
    i64 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  br label %_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util2io4takeINtB4_4TakeQINtNtB6_5split8ReadHalfINtNtNtB8_6future6either6EitherIB1i_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1W_6server9TlsStreamB2H_EEB2H_EEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit

bb.d:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !10954, !noundef !10
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !10954
  br label %_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util2io4takeINtB4_4TakeQINtNtB6_5split8ReadHalfINtNtNtB8_6future6either6EitherIB1i_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1W_6server9TlsStreamB2H_EEB2H_EEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit

_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util2io4takeINtB4_4TakeQINtNtB6_5split8ReadHalfINtNtNtB8_6future6either6EitherIB1i_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1W_6server9TlsStreamB2H_EEB2H_EEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i = phi ptr [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.g, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.c ], [ %i.f, %bb.b ]
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsdTHTBGblh3Z_11libp2p_core6eitherINtB4_12EitherFutureINtNtNtB6_9transport3map9MapFutureINtNtB13_8and_then13AndThenFutureIB1x_IBZ_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2h_6future6future6Futurep6OutputINtNtB2h_6result6ResultINtNtCsknXHD0xsxtc_16libp2p_websocket6framed10ConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB4n_5error5ErrorINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB2h_2io5error5ErrorEEENtNtB2h_6marker4SendEL_EEFB4i_NtNtB6_10connection14ConnectedPointEINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtB4n_15BytesConnectionB5c_EEENCINvMNtB13_7upgradeINtB9U_7BuilderINtB4n_6ConfigINtB6w_9TransportINtB5i_9TransportNtB5e_3TcpEINtNtCsa9Jrx9KOzzM_16hickory_resolver8resolver8ResolverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEE12authenticateB8y_INtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB8y_EENtNtCs2oFjxwYQXCx_10libp2p_tls7upgrade6ConfigNtBfF_12UpgradeErrorE0INtB9U_12AuthenticateB8y_BfD_EENCINvMs1_B9U_INtB9U_13AuthenticatedINtB1z_7AndThenBan_B9O_EE9multiplexBdP_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIBex_BdP_EENtBis_6ConfigB72_E0INtB9U_9MultiplexBdP_Bjb_EENCNCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9websocketINtBka_12SwarmBuilderNtNtBk8_8provider5TokioINtBk6_14WebsocketPhaseINtNtB13_5dummy14DummyTransportTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEEEE14with_websocketNvMBfF_BfD_3newBdP_Bgm_NvYBjb_NtNtB2h_7default7Default7defaultBip_B72_E00EINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingIB3W_Bmv_B72_EEEB3i_4pollCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !29, !noundef !10
  %i.c = icmp eq i64 %i.b, 2
end_hunk_3
