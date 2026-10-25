Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.02?download=true
inline.NumInlined: 1671
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs0_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshnt8FRa5Rut_11native_ping.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2499
  br label %bb.ce

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body134.thread.i, %.thread162.i, %.body134.i
  %.pn123.pn.pn.i = phi { ptr, i32 } [ %.pn123.pn198.i, %.body134.thread.i ], [ %.pn123.pn.i, %.body134.i ], [ %i.gk, %.thread162.i ], [ %lpad.loopexit.split-lp301, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gi = load i64, ptr %i.af, align 8, !range !32, !noalias !2499, !noundef !10
  %i.gj = icmp samesign ult i64 %i.gi, 2
  br i1 %i.gj, label %bb.cj, label %bb.ck

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %bb.ce, %._crit_edge.i
  %lpad.loopexit.split-lp301 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i

.thread162.i:                                     ; preds = %.loopexit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.056.i, i64 136, i1 false), !noalias !2500
  store i8 %i.cm, ptr %.sroa.662.0..sroa.05.0.8.sroa_idx63.i, align 8, !alias.scope !2497
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i

bb.cf:                                            ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.056.i, i64 136, i1 false), !noalias !2500
  store i8 %i.cm, ptr %.sroa.662.0..sroa.05.0.8.sroa_idx63.i, align 8, !alias.scope !2497
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.056.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2499
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit.i

bb.cg:                                            ; preds = %bb.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2499
  br label %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(144) %i.af)
  br label %bb.cg

.body.thread.i:                                   ; preds = %.body.thread171.loopexit.split-lp.i, %.body.thread171.loopexit.i, %bb.an, %bb.t
  %.pn123167.i = phi { ptr, i32 } [ %i.cu, %bb.t ], [ %.pn.i, %bb.an ], [ %lpad.loopexit.i, %.body.thread171.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread171.loopexit.split-lp.i ]
  %.sroa.084.0166.i = phi i8 [ 1, %bb.t ], [ %.sroa.084.2.i, %bb.an ], [ 1, %.body.thread171.loopexit.i ], [ %.sroa.084.4.i, %.body.thread171.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #28
          to label %.body134.i unwind label %bb.bz

.body134.thread.i:                                ; preds = %.body134.i, %bb.ap
  %.pn123.pn198.i = phi { ptr, i32 } [ %.pn123.pn.i, %.body134.i ], [ %i.el, %bb.ap ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited15LengthDelimitedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i unwind label %bb.bz

bb.ci:                                            ; preds = %._crit_edge.i
  unreachable

bb.cj:                                            ; preds = %bb.ck, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i, %bb.l
  %.pn123.pn.pn.pn.i = phi { ptr, i32 } [ %.pn123.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i ], [ %.pn123.pn.pn.i, %bb.ck ], [ %i.ch, %bb.l ]
  resume { ptr, i32 } %.pn123.pn.pn.pn.i

bb.ck:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping.exit148.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(144) %i.af) #28
          to label %bb.cj unwind label %bb.bz

_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit: ; preds = %.threadthread-pre-split.i, %bb.cg
  %.sroa.9.5.i = phi ptr [ undef, %.threadthread-pre-split.i ], [ %.sroa.9.3.i, %bb.cg ]
  %.sroa.0.5.i = phi i64 [ -2, %.threadthread-pre-split.i ], [ %.sroa.0.3.i, %bb.cg ] ; 2 uses
  switch i64 %.sroa.0.5.i, label %.loopexit [
    i64 -3, label %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread12
    i64 -2, label %bb.b
  ]

bb.cl:                                            ; preds = %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread12, %bb.c
  %.merged = phi { i64, ptr } [ %i.bj, %bb.c ], [ %i.gn, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread12 ]
  ret { i64, ptr } %.merged

.loopexit:                                        ; preds = %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread
  %.sroa.0.5.i11 = phi i64 [ 0, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread ], [ %.sroa.0.5.i, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit ]
  %.sroa.9.5.i10 = phi ptr [ %i.bn, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread ], [ %.sroa.9.5.i, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit ]
  %i.gl = call noundef nonnull ptr @_RNvXs4_NtCsbVDXp34Q3tF_18multistream_select10negotiatedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBX_7convert4FromNtB5_16NegotiationErrorE4from(i64 noundef %.sroa.0.5.i11, ptr %.sroa.9.5.i10)
  br label %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread12

_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit.thread12: ; preds = %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit.i, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit, %.loopexit
  %.sroa.4.1 = phi ptr [ %i.gl, %.loopexit ], [ undef, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit ], [ undef, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit.i ]
  %.sroa.0.1 = phi i64 [ 1, %.loopexit ], [ 2, %_RNvMs_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB4_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamE4pollCshnt8FRa5Rut_11native_ping.exit ], [ 2, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit.i ]
  %i.gm = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.gn = insertvalue { i64, ptr } %i.gm, ptr %.sroa.4.1, 1
  br label %bb.cl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs3g1xDapxWLs_6base646encodeNtB5_16EncodeSliceErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.j = load i64, ptr %0, align 8, !range !29, !alias.scope !2523, !noundef !10
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !55

default.unreachable:                              ; preds = %bb.h, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1464) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  %i.n = load i64, ptr %i.m, align 8, !range !18, !alias.scope !2525, !noundef !10
  %.not.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2527
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.r = load i8, ptr %i.q, align 8, !range !35, !alias.scope !2528, !noundef !10
  %i.s = and i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.t, ptr %i.b, align 8, !noalias !2527
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2527
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2527
  %i.u = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2527
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #34, !noalias !2529
  unreachable

_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi { i64, ptr } [ %i.l, %bb.b ], [ %i.o, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = extractvalue { i64, ptr } %.pn.i, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %i.x = extractvalue { i64, ptr } %.pn.i, 1      ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.z = call i64 @llvm.usub.sat.i64(i64 %i.y, i64 2)
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
  ], !prof !55

bb.i:                                             ; preds = %bb.h
  %i.aa = call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  %.not34 = icmp ne ptr %i.ac, null
  %or.cond.not = select i1 %i.ad, i1 true, i1 %.not34
  br i1 %or.cond.not, label %bb.ag, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.af = load i64, ptr %i.ae, align 8, !range !18, !alias.scope !2530, !noundef !10
  %.not.i = icmp eq i64 %i.af, 2
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !35, !alias.scope !2532, !noundef !10 ; 2 uses
  %switch.not.i.i = icmp samesign ult i8 %i.aj, 2
  br i1 %switch.not.i.i, label %.sink.split.i.i, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i

.sink.split.i.i:                                  ; preds = %bb.l
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.ah), !noalias !2533
  %2 = load i8, ptr %i.ai, align 8, !range !35, !alias.scope !2532, !noundef !10
  %3 = or i8 %2, 2                                ; 2 uses
  store i8 %3, ptr %i.ai, align 8, !alias.scope !2532
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %.sink.split.i.i, %bb.l
  %i.ak = phi i8 [ %i.aj, %bb.l ], [ %3, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2534
  %i.al = and i8 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.am, ptr %i.a, align 8, !noalias !2534
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2534
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.al, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2534
  %i.an = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2534
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.k, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i
  %.pn.i38 = phi { i64, ptr } [ %i.ag, %bb.k ], [ %i.an, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i ] ; 2 uses
  %i.ao = extractvalue { i64, ptr } %.pn.i38, 0
  %i.ap = extractvalue { i64, ptr } %.pn.i38, 1
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #34
  unreachable

bb.n:                                             ; preds = %bb.u, %bb.ab, %bb.z, %bb.y, %bb.r, %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping(i64 0, ptr null) #28
          to label %bb.af unwind label %bb.ae

bb.o:                                             ; preds = %bb.i
  %i.ar = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.at = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.at, label %bb.q [
    i8 0, label %bb.w
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !49

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.s
  %.sroa.019.0 = phi i8 [ %i.au, %bb.s ], [ %i.at, %bb.p ], [ %i.at, %bb.p ]
  %i.av = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.aw = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, i8 noundef %.sroa.019.0)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.ax = icmp eq i8 %i.au, 0
  br i1 %i.ax, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.aw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ay = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @167, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.ba, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @22, ptr %i.bb, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.az, ptr %.sroa.422.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBU_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close0Cshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.t
  %i.bc = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not35 = icmp eq i8 %i.bc, 0
  br i1 %.not35, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bd = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 6
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp samesign ugt i64 %i.bd, 3
  br i1 %i.bf, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !10
  store i64 4, ptr %i.f, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bi, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bk, ptr %i.bm, align 8
  %i.bn = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.z unwind label %bb.n       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !10, !nonnull !10
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.aa unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bt = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @167, ptr %i.c, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.bv, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @22, ptr %i.bw, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bu, ptr %i.bx, align 8
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, ptr noundef nonnull %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.ad unwind label %bb.n

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.af:                                            ; preds = %bb.n
  resume { ptr, i32 } %i.aq

bb.ag:                                            ; preds = %bb.i, %bb.v, %bb.w, %bb.x, %bb.ac, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit, %bb.g, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit
  %.sroa.5.1 = phi ptr [ %i.ap, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit ], [ %i.x, %bb.g ], [ undef, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit ], [ null, %bb.ac ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ %i.ac, %bb.i ]
  %.sroa.0.1 = phi i64 [ %i.ao, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit ], [ 0, %bb.g ], [ 1, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.ab, %bb.i ]
  %i.bz = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ca = insertvalue { i64, ptr } %i.bz, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.ca
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 2)
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !55

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.f = load i64, ptr %i.e, align 8, !range !18, !alias.scope !2541, !noundef !10
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2543
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.j = load i8, ptr %i.i, align 8, !range !35, !alias.scope !2544, !noundef !10
  %i.k = and i8 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.l, ptr %i.a, align 8, !noalias !2543
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2543
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2543
  %i.m = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2543
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #34
  unreachable

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { i64, ptr } [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.m, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1464) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 2)
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !55

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs4_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_21LengthDelimitedReaderINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  %i.f = load i64, ptr %i.e, align 8, !range !18, !alias.scope !2553, !noundef !10
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2555
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.j = load i8, ptr %i.i, align 8, !range !35, !alias.scope !2556, !noundef !10
  %i.k = and i8 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.l, ptr %i.a, align 8, !noalias !2555
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2555
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2555
  %i.m = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2555
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #34
  unreachable

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.pn = phi { i64, ptr } [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.m, %bb.e ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1432) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  %i.j = load i64, ptr %0, align 8, !range !29, !alias.scope !2572, !noundef !10
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !55

default.unreachable:                              ; preds = %bb.h, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  %i.n = load i64, ptr %i.m, align 8, !range !18, !alias.scope !2574, !noundef !10
  %.not.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2576
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.r = load i8, ptr %i.q, align 8, !range !35, !alias.scope !2577, !noundef !10
  %i.s = and i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.t, ptr %i.b, align 8, !noalias !2576
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2576
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2576
  %i.u = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2576
  br label %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #34, !noalias !2578
  unreachable

_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi { i64, ptr } [ %i.l, %bb.b ], [ %i.o, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = extractvalue { i64, ptr } %.pn.i, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %i.x = extractvalue { i64, ptr } %.pn.i, 1      ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.z = call i64 @llvm.usub.sat.i64(i64 %i.y, i64 2)
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.m
  ], !prof !55

bb.i:                                             ; preds = %bb.h
  %i.aa = call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  %.not34 = icmp ne ptr %i.ac, null
  %or.cond.not = select i1 %i.ad, i1 true, i1 %.not34
  br i1 %or.cond.not, label %bb.ag, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2579)
  %i.af = load i64, ptr %i.ae, align 8, !range !18, !alias.scope !2579, !noundef !10
  %.not.i = icmp eq i64 %i.af, 2
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !35, !alias.scope !2581, !noundef !10 ; 2 uses
  %switch.not.i.i = icmp samesign ult i8 %i.aj, 2
  br i1 %switch.not.i.i, label %.sink.split.i.i, label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i

.sink.split.i.i:                                  ; preds = %bb.l
  call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.ah), !noalias !2582
  %2 = load i8, ptr %i.ai, align 8, !range !35, !alias.scope !2581, !noundef !10
  %3 = or i8 %2, 2                                ; 2 uses
  store i8 %3, ptr %i.ai, align 8, !alias.scope !2581
  br label %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i

_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i: ; preds = %.sink.split.i.i, %bb.l
  %i.ak = phi i8 [ %i.aj, %bb.l ], [ %3, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2583
  %i.al = and i8 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.am, ptr %i.a, align 8, !noalias !2583
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2583
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.al, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2583
  %i.an = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2583
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit

_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.k, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i
  %.pn.i38 = phi { i64, ptr } [ %i.ag, %bb.k ], [ %i.an, %_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit.i ] ; 2 uses
  %i.ao = extractvalue { i64, ptr } %.pn.i38, 0
  %i.ap = extractvalue { i64, ptr } %.pn.i38, 1
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #34
  unreachable

bb.n:                                             ; preds = %bb.u, %bb.ab, %bb.z, %bb.y, %bb.r, %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping(i64 0, ptr null) #28
          to label %bb.af unwind label %bb.ae

bb.o:                                             ; preds = %bb.i
  %i.ar = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.at = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.at, label %bb.q [
    i8 0, label %bb.w
    i8 1, label %bb.r
    i8 2, label %bb.r
  ], !prof !49

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE)
          to label %bb.s unwind label %bb.n       ; 2 uses

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.s
  %.sroa.019.0 = phi i8 [ %i.au, %bb.s ], [ %i.at, %bb.p ], [ %i.at, %bb.p ]
  %i.av = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.aw = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.av, i8 noundef %.sroa.019.0)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  %i.ax = icmp eq i8 %i.au, 0
  br i1 %i.ax, label %bb.w, label %bb.r

bb.t:                                             ; preds = %bb.r
  br i1 %i.aw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ay = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @167, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.ba, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @22, ptr %i.bb, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.az, ptr %.sroa.422.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBU_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close0Cshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.t
  %i.bc = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not35 = icmp eq i8 %i.bc, 0
  br i1 %.not35, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bd = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 6
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp samesign ugt i64 %i.bd, 3
  br i1 %i.bf, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.bg = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !10
  store i64 4, ptr %i.f, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bi, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bk, ptr %i.bm, align 8
  %i.bn = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.z unwind label %bb.n       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !10, !nonnull !10
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.aa unwind label %bb.n

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bt = load ptr, ptr @_RNvNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB7_10NegotiatedpENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_close10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @167, ptr %i.c, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 177 to ptr), ptr %i.bv, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @22, ptr %i.bw, align 8
  store i64 1, ptr %i.e, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.bu, ptr %i.bx, align 8
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, ptr noundef nonnull %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.ad unwind label %bb.n

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.ae:                                            ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.af:                                            ; preds = %bb.n
  resume { ptr, i32 } %i.aq

bb.ag:                                            ; preds = %bb.i, %bb.v, %bb.w, %bb.x, %bb.ac, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit, %bb.g, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit
  %.sroa.5.1 = phi ptr [ %i.ap, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit ], [ %i.x, %bb.g ], [ undef, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit ], [ null, %bb.ac ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ %i.ac, %bb.i ]
  %.sroa.0.1 = phi i64 [ %i.ao, %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping.exit ], [ 0, %bb.g ], [ 1, %_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ %i.ab, %bb.i ]
  %i.bz = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.ca = insertvalue { i64, ptr } %i.bz, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.ca
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBS_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1432) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 2)
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ], !prof !55

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select16length_delimitedINtB5_15LengthDelimitedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamINtNtB7_10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtCs7OkeAlsyVKR_12futures_sink4SinkNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsg_Csgrcu2UPjJtD_14futures_rustlsINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  %i.f = load i64, ptr %i.e, align 8, !range !18, !alias.scope !2590, !noundef !10
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping:bb.a
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
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.j
  %.sroa.5.2 = phi ptr [ %i.i, %bb.j ], [ null, %bb.a ], [ null, %bb.a ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.a ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbVDXp34Q3tF_18multistream_select8protocol10HeaderLineNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbVDXp34Q3tF_18multistream_select8protocol7MessageNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !10, !align !15, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %i.e = load i64, ptr %i.d, align 8, !range !29, !alias.scope !2629, !noundef !10
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2630
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.c, align 8, !noalias !2630
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @267)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2630
  br label %_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2630
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.b, align 8, !noalias !2630
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2630
  br label %_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 13), !noalias !2629
  br label %_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2630
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.a, align 8, !noalias !2630
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2630
  br label %_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 12), !noalias !2629
  br label %_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXss_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_7MessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2634
  store ptr %i.b, ptr %i.a, align 8, !noalias !2634
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2634
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolNtB6_7Display3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !15, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_8ProtocolNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRRNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolNtB6_7Display3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !15, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2637, !nonnull !10, !align !15, !noundef !10
  %i.c = tail call noundef zeroext i1 @_RNvXs3_NtCsbVDXp34Q3tF_18multistream_select8protocolNtB5_8ProtocolNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !2637
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_Cs62FBUrD8956_10libp2p_tcpINtB5_9TransportNtNtNtB5_8provider5tokio3TcpENtNtCskKLDkoKarTP_4core7default7Default7defaultCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEEENtNtB2j_7default7Default7defaultCshnt8FRa5Rut_11native_ping() ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB7_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2a_8provider5tokio3TcpEEE3newCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !2644
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEEE9drop_slowCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECshnt8FRa5Rut_11native_ping.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1024, ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.i, align 8
  store i64 0, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCscK5W4trzgIe_6anyhow7contextINtNtB7_5error12ContextErrorReNtNtCsG258MDvU3F_3std3env8VarErrorENtNtCskKLDkoKarTP_4core5error5Error6sourceCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @173, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %2 = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %3 = or i8 %2, 2                                ; 2 uses
  store i8 %3, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %3, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0)
  %2 = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %3 = or i8 %2, 2                                ; 2 uses
  store i8 %3, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.d = phi i8 [ %i.c, %bb.a ], [ %3, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = and i8 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.c, 2
  br i1 %switch.not, label %.sink.split.a, label %bb.b

.sink.split.a:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.d)
  %i.e = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %2 = or i8 %i.e, 2                              ; 2 uses
  store i8 %2, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.a, %bb.a
  %i.f = phi i8 [ %i.c, %bb.a ], [ %2, %.sink.split.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = and i8 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.c = load i8, ptr %i.b, align 8, !range !35, !noundef !10
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = call { i64, ptr } @_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs5hzaM3VbZx4_5redis6errors11redis_errorNtB5_10RedisErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !43, !noundef !10
  switch i8 %i.a, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.5.0 = phi ptr [ @179, %bb.d ], [ @175, %bb.b ], [ @177, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB5_7AsyncFdNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [8 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2651
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !range !19, !alias.scope !2651, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !2651 ; 3 uses
  store i32 0, ptr %i.f, align 8, !alias.scope !2651
  %i.j = trunc nuw i32 %i.g to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB2_7AsyncFdNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE10take_innerCshnt8FRa5Rut_11native_ping.exit.thread

_RNvMNtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB2_7AsyncFdNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE10take_innerCshnt8FRa5Rut_11native_ping.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2651
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketEECshnt8FRa5Rut_11native_ping.exit

bb.b:                                             ; preds = %bb.h, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCskGfSpwhqogB_11netlink_sys6socketNtB5_6SocketNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.d, align 4, !noalias !2651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2651
  store i32 %i.i, ptr %i.c, align 4, !noalias !2651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2651
  store ptr %i.c, ptr %i.b, align 8, !noalias !2651
  %i.l = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = invoke noundef ptr @_RINvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3sys4unix8sourcefd8SourceFdECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.b       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2652
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i
    i64 1, label %bb.h
  ], !prof !22

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.r = icmp ult ptr %i.n, inttoptr (i64 188978561024 to ptr)
  %i.s = and i64 %i.p, 1095216660480
  %i.t = icmp ne i64 %i.s, 1095216660480
  call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !2653, !noalias !2652
  store i8 3, ptr %i.a, align 8, !alias.scope !2653, !noalias !2652
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2652
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2651
  store i32 1, ptr %i.e, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %i.i, ptr %i.x, align 4
  call void @_RNvXs1_NtCskGfSpwhqogB_11netlink_sys6socketNtB5_6SocketNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketEECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RNvMNtNtCsc13h7DQFCSE_5tokio2io8async_fdINtB2_7AsyncFdNtNtCskGfSpwhqogB_11netlink_sys6socket6SocketE10take_innerCshnt8FRa5Rut_11native_ping.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs3_Cs62FBUrD8956_10libp2p_tcpINtB5_9TransportNtNtNtB5_8provider5tokio3TcpENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport15remove_listenerCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 664
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  store ptr %i.f, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.03.0, ptr %i.j, align 8
  br label %bb.d
end_hunk_1
