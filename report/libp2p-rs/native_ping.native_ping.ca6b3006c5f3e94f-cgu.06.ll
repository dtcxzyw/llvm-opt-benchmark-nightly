Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.06?download=true
inline.NumInlined: 1790
inline.NumDeleted: 570
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping:bb.a

.thread51.i:                                      ; preds = %.thread.i
  %i.cd = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.loopexit130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.n, %._crit_edge.thread
  %.sroa.07.192.i.lcssa239243 = phi i64 [ %.sroa.07.192.i206, %._crit_edge.thread ], [ %.sroa.07.192.i.lcssa, %bb.n ]
  %i.ce = phi i8 [ %i.bm, %._crit_edge.thread ], [ %i.bi, %bb.n ]
  %i.cf = phi i8 [ %i.bo, %._crit_edge.thread ], [ %i.bk, %bb.n ]
  %i.cg = icmp eq i64 %.sroa.07.192.i.lcssa239243, 0
  %i.ch = icmp eq i64 %.sroa.0.1.lcssa136.i, 0
  %or.cond3.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit181

._crit_edge215:                                   ; preds = %.loopexit181, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4146
  store ptr %i.n, ptr %i.c, align 8, !noalias !4146
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @57, ptr %i.ci, align 8, !noalias !4146
  %i.cj = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc83:                                         ; preds = %._crit_edge215
  %.not.i = icmp eq ptr %i.cj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4146
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc83
  %i.ck = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.cj, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.p:                                             ; preds = %.noexc83
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  br label %bb.q

bb.q:                                             ; preds = %.noexc85, %bb.p
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4147, !noundef !9
  %.not16.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.co = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.noexc85 unwind label %.loopexit ; 2 uses

.noexc85:                                         ; preds = %bb.s
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  switch i64 %i.cp, label %bb.t [
    i64 2, label %.loopexit.i82
    i64 0, label %bb.q
  ]

bb.t:                                             ; preds = %.noexc85
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.loopexit.i82

.loopexit.i82:                                    ; preds = %.noexc85, %bb.t
  %.sroa.5.1.i = phi ptr [ %i.cq, %bb.t ], [ undef, %.noexc85 ]
  %.sroa.04.1.i = phi i64 [ 0, %bb.t ], [ 1, %.noexc85 ]
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.5.1.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %.loopexit.i82, %bb.o, %bb.r
  %.merged.i = phi { i64, ptr } [ %i.ck, %bb.o ], [ %i.cs, %.loopexit.i82 ], [ %i.cn, %bb.r ] ; 2 uses
  %i.ct = extractvalue { i64, ptr } %.merged.i, 0
  %i.cu = extractvalue { i64, ptr } %.merged.i, 1 ; 3 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.d, ptr noundef nonnull align 8 dereferenceable(1240) %i.n, i64 1240, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %1)
          to label %bb.ab unwind label %bb.aa

bb.v:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.e, ptr noundef nonnull align 8 dereferenceable(1240) %i.n, i64 1240, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.cw, i64 176, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.e)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(1240) %i.n, i64 1240, i1 false)
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.cu) #36
          to label %.thread135 unwind label %bb.z

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.f, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.ad, %bb.ax, %3, %.thread118, %bb.bc, %bb.bb, %.loopexit.split-lp
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(1240) %i.d, i64 1240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88, %bb.af, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.g, ptr noundef nonnull align 8 dereferenceable(1240) %i.n, i64 1240, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %1)
          to label %bb.af unwind label %bb.ae

.loopexit130.i:                                   ; preds = %bb.k, %.noexc, %.noexc77, %.noexc79, %.thread51.i
  %.sroa.11105.0.ph = phi ptr [ %i.cd, %.thread51.i ], [ %i.aq, %.noexc77 ], [ %i.cb, %.noexc79 ], [ %i.bb, %bb.k ], [ %i.ak, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %i.h, ptr noundef nonnull align 8 dereferenceable(1240) %i.n, i64 1240, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.da, i64 176, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1240) %i.h)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88 unwind label %bb.ad

.loopexit181:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.db = phi i8 [ 1, %.thread.i ], [ %i.cf, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.dc = phi i8 [ 1, %.thread.i ], [ %i.ce, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bq, %.thread.i ], [ %i.ae, %.thread ], [ %i.ae, %._crit_edge.thread ], [ %i.ae, %._crit_edge ]
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = trunc nuw i8 %i.db to i1
  %or.cond161 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond161, label %._crit_edge215, label %bb.g

bb.ad:                                            ; preds = %.loopexit130.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.11105.0.ph) #36
          to label %.thread135 unwind label %bb.z

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88: ; preds = %.loopexit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph) ]
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.i, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11105.0.ph, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split

bb.af:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(1240) %i.g, i64 1240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread135.sink.split:                            ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.d, %bb.aa ], [ %i.g, %bb.ae ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.dg, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(1240) %.sink, i64 1240, i1 false)
  br label %.thread135

.thread135:                                       ; preds = %.thread135.sink.split, %bb.ax, %bb.y, %bb.ad, %bb.av, %bb.bc, %.thread153, %.loopexit.split-lp
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.en, %bb.av ], [ %.pn.pn126151, %bb.bc ], [ %.pn.pn126151, %.thread153 ], [ %i.ep, %bb.ax ], [ %i.cx, %bb.y ], [ %i.df, %bb.ad ], [ %.pn67.pn.ph, %.thread135.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit171.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit174.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit142.i, %.lr.ph.preheader.i
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %._crit_edge215, %.thread51.i
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit171.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit174.a, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %i.n) #36
          to label %.thread135 unwind label %bb.z

bb.ah:                                            ; preds = %bb.ap, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.q, align 8
  %i.dh = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @33)
          to label %bb.ai unwind label %.thread128.thread145 ; 2 uses

.thread128.thread145:                             ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

.thread147:                                       ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.dk = extractvalue { i64, ptr } %i.dh, 0
  %i.dl = extractvalue { i64, ptr } %i.dh, 1      ; 11 uses
  %i.dm = trunc nuw i64 %i.dk to i1               ; 2 uses
  br i1 %i.dm, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dn = ptrtoint ptr %i.dl to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dn, 3                        ; 2 uses
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !20

default.unreachable:                              ; preds = %bb.ay, %bb.ar, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90 unwind label %3

.noexc90:                                         ; preds = %bb.ak
  %i.dq = lshr i64 %i.dn, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !9, !noundef !9
  %i.du = invoke noundef i8 %i.dt(i32 noundef %i.dr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

bb.al:                                            ; preds = %bb.aj
  %i.dv = lshr i64 %i.dn, 32
  %i.dw = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dv to i8  ; 2 uses
  %i.dx = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.am:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr i8, ptr %i.dl, i64 31
  %i.eb = load i8, ptr %i.ea, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ec = icmp eq ptr %i.dl, null
  br i1 %i.ec, label %.loopexit182, label %bb.ap

.loopexit182:                                     ; preds = %bb.ao, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.ed = phi ptr [ %i.dl, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.ao ] ; 3 uses
  %i.ee = phi i64 [ %i.dn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.m, i64 176, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  br i1 %i.dm, label %bb.ar, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

3:                                                ; preds = %bb.ak, %.noexc90
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread118 unwind label %bb.z

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.an, %bb.am, %bb.al, %.noexc90
  %.sroa.0.0.i89 = phi i8 [ %i.eb, %bb.an ], [ %switch.idx.cast.i.i.i, %bb.al ], [ %i.dz, %bb.am ], [ %i.du, %.noexc90 ]
  %i.ef = icmp eq i8 %.sroa.0.0.i89, 13
  br i1 %i.ef, label %bb.aq, label %.loopexit182

bb.aq:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(176) %i.m, i64 176, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1240) %1)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %.loopexit182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.eg = and i64 %i.ee, 3
  switch i64 %i.eg, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.as
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.at
  ], !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.eh = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.ei = and i64 %i.ee, 1095216660480
  %i.ej = icmp ne i64 %i.ei, 1095216660480
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ej)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.at:                                            ; preds = %bb.ar
  %i.ek = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !4148
  store i8 3, ptr %i.b, align 8, !alias.scope !4148
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread147

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.at, %bb.ar, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %.thread135 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.au
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.ax:                                            ; preds = %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, i64 176, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread135 unwind label %bb.z

bb.ay:                                            ; preds = %bb.aq
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, i64 176, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.az
    i64 0, label %.critedge
    i64 1, label %bb.ba
  ], !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.eq = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.dn, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  %i.et = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !4149
  store i8 3, ptr %i.a, align 8, !alias.scope !4149
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu)
  br label %.critedge

.critedge:                                        ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.thread153:                                       ; preds = %bb.bb
  br i1 %.sroa.059.0124152, label %bb.bc, label %.thread135

.thread118:                                       ; preds = %.thread128.thread145, %3
  %.pn.pn127 = phi { ptr, i32 } [ %i.di, %.thread128.thread145 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.bb unwind label %bb.z

bb.bb:                                            ; preds = %.thread118, %.thread147
  %.sroa.059.0124152 = phi i1 [ false, %.thread147 ], [ true, %.thread118 ]
  %.pn.pn126151 = phi { ptr, i32 } [ %i.dj, %.thread147 ], [ %.pn.pn127, %.thread118 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread153 unwind label %bb.z

bb.bc:                                            ; preds = %.thread153
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(176) %i.m) #36
          to label %.thread135 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(1208) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1208 x i8], align 8              ; 5 uses
  %i.e = alloca [1208 x i8], align 8              ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [1208 x i8], align 8              ; 5 uses
  %i.h = alloca [1208 x i8], align 8              ; 4 uses
  %i.i = alloca [144 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517 = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.619 = alloca [144 x i8], align 8         ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %i.m = alloca [144 x i8], align 8               ; 9 uses
  %i.n = alloca [1208 x i8], align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !45

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  %.sroa.9.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr %.sroa.9.0.copyload, ptr %.sroa.9.64..sroa_idx, align 8
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, i64 56, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, i64 144, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, i64 144, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx, i64 992, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store ptr %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1200
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1056 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.r, align 8, !range !46, !noundef !9
  %i.u = and i8 %i.t, 1                           ; 2 uses
  store ptr %i.s, ptr %i.j, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.u, ptr %.sroa.538.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 822 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 823 ; 4 uses
  %i.x = load i8, ptr %i.v, align 2, !range !28, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr %i.w, align 1, !range !28
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond161212 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond161212, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 827 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph214, %.loopexit181
  %i.ae = phi i8 [ %i.u, %.lr.ph214 ], [ %.ph, %.loopexit181 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4162)
  %i.af = trunc nuw i8 %i.ae to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ false, %bb.n ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.192.i.lcssa, %bb.n ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa136.i, %bb.n ] ; 3 uses
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !4163, !noundef !9
  %.not78.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not78.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ai = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  switch i64 %i.aj, label %.loopexit130.i [
    i64 2, label %._crit_edge.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %.sroa.0.0.i, %i.al             ; 2 uses
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4163, !noundef !9
  %.not.not.peel.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.peel.i, label %.loopexit142.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.180.i = phi i64 [ %i.as, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.ao = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc77:                                         ; preds = %.lr.ph.i
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  switch i64 %i.ap, label %.loopexit130.i [
    i64 2, label %.loopexit142.i
    i64 0, label %bb.j
  ]

bb.j:                                             ; preds = %.noexc77
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %.sroa.0.180.i, %i.ar           ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4163, !noundef !9
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.loopexit142.i, label %.lr.ph.i, !llvm.loop !4153

._crit_edge.i:                                    ; preds = %bb.k, %.noexc78, %.noexc, %bb.h
  %.sroa.0.1.lcssa136.i = phi i64 [ %.sroa.0.1.lcssa.ph.i, %.noexc78 ], [ %.sroa.0.1.lcssa.ph.i, %bb.k ], [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.0.i, %.noexc ] ; 2 uses
  %.sroa.011.1.i = phi i1 [ true, %.noexc78 ], [ %.not.lcssa.ph.i, %bb.k ], [ false, %bb.h ], [ true, %.noexc ]
  br i1 %i.ag, label %.thread.i, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %._crit_edge.i
  %i.au = load i64, ptr %i.ac, align 8, !noalias !4163, !noundef !9
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = load i8, ptr %i.ad, align 1, !range !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond165205 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond165205, label %._crit_edge, label %.lr.ph

.loopexit142.i:                                   ; preds = %bb.j, %.noexc77, %bb.i
  %.sroa.0.1.lcssa.ph.i = phi i64 [ %i.am, %bb.i ], [ %i.as, %bb.j ], [ %.sroa.0.180.i, %.noexc77 ] ; 2 uses
  %.not.lcssa.ph.i = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ true, %.noexc77 ]
  %i.ay = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc78:                                         ; preds = %.loopexit142.i
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %.noexc78
  %i.bb = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %.not45.i = icmp eq ptr %i.bb, null
  br i1 %.not45.i, label %._crit_edge.i, label %.loopexit130.i

.lr.ph94.i:                                       ; preds = %bb.m
  %i.bc = ptrtoint ptr %i.cb to i64
  %i.bd = add i64 %.sroa.07.192.i206, %i.bc       ; 2 uses
  %i.be = load i64, ptr %i.ac, align 8, !noalias !4163, !noundef !9
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = load i8, ptr %i.ad, align 1, !range !28
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping:bb.a

.thread51.i:                                      ; preds = %.thread.i
  %i.cd = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.loopexit130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.n, %._crit_edge.thread
  %.sroa.07.192.i.lcssa239243 = phi i64 [ %.sroa.07.192.i206, %._crit_edge.thread ], [ %.sroa.07.192.i.lcssa, %bb.n ]
  %i.ce = phi i8 [ %i.bm, %._crit_edge.thread ], [ %i.bi, %bb.n ]
  %i.cf = phi i8 [ %i.bo, %._crit_edge.thread ], [ %i.bk, %bb.n ]
  %i.cg = icmp eq i64 %.sroa.07.192.i.lcssa239243, 0
  %i.ch = icmp eq i64 %.sroa.0.1.lcssa136.i, 0
  %or.cond3.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit181

._crit_edge215:                                   ; preds = %.loopexit181, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4165
  store ptr %i.n, ptr %i.c, align 8, !noalias !4165
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @57, ptr %i.ci, align 8, !noalias !4165
  %i.cj = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc83:                                         ; preds = %._crit_edge215
  %.not.i = icmp eq ptr %i.cj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4165
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc83
  %i.ck = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.cj, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.p:                                             ; preds = %.noexc83
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  br label %bb.q

bb.q:                                             ; preds = %.noexc85, %bb.p
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4166, !noundef !9
  %.not16.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.co = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.noexc85 unwind label %.loopexit ; 2 uses

.noexc85:                                         ; preds = %bb.s
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  switch i64 %i.cp, label %bb.t [
    i64 2, label %.loopexit.i82
    i64 0, label %bb.q
  ]

bb.t:                                             ; preds = %.noexc85
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.loopexit.i82

.loopexit.i82:                                    ; preds = %.noexc85, %bb.t
  %.sroa.5.1.i = phi ptr [ %i.cq, %bb.t ], [ undef, %.noexc85 ]
  %.sroa.04.1.i = phi i64 [ 0, %bb.t ], [ 1, %.noexc85 ]
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.5.1.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %.loopexit.i82, %bb.o, %bb.r
  %.merged.i = phi { i64, ptr } [ %i.ck, %bb.o ], [ %i.cs, %.loopexit.i82 ], [ %i.cn, %bb.r ] ; 2 uses
  %i.ct = extractvalue { i64, ptr } %.merged.i, 0
  %i.cu = extractvalue { i64, ptr } %.merged.i, 1 ; 3 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.ab unwind label %bb.aa

bb.v:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.cw, i64 144, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.e)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.cu) #36
          to label %.thread135 unwind label %bb.z

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.ad, %bb.ax, %3, %.thread118, %bb.bc, %bb.bb, %.loopexit.split-lp
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.d, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88, %bb.af, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.af unwind label %bb.ae

.loopexit130.i:                                   ; preds = %bb.k, %.noexc, %.noexc77, %.noexc79, %.thread51.i
  %.sroa.11105.0.ph = phi ptr [ %i.cd, %.thread51.i ], [ %i.aq, %.noexc77 ], [ %i.cb, %.noexc79 ], [ %i.bb, %bb.k ], [ %i.ak, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.h, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.da, i64 144, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %i.h)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88 unwind label %bb.ad

.loopexit181:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.db = phi i8 [ 1, %.thread.i ], [ %i.cf, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.dc = phi i8 [ 1, %.thread.i ], [ %i.ce, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bq, %.thread.i ], [ %i.ae, %.thread ], [ %i.ae, %._crit_edge.thread ], [ %i.ae, %._crit_edge ]
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = trunc nuw i8 %i.db to i1
  %or.cond161 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond161, label %._crit_edge215, label %bb.g

bb.ad:                                            ; preds = %.loopexit130.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.11105.0.ph) #36
          to label %.thread135 unwind label %bb.z

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit88: ; preds = %.loopexit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11105.0.ph) ]
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11105.0.ph, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.sink.split

bb.af:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.g, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread135.sink.split:                            ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.d, %bb.aa ], [ %i.g, %bb.ae ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.dg, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %.sink, i64 1208, i1 false)
  br label %.thread135

.thread135:                                       ; preds = %.thread135.sink.split, %bb.ax, %bb.y, %bb.ad, %bb.av, %bb.bc, %.thread153, %.loopexit.split-lp
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.en, %bb.av ], [ %.pn.pn126151, %bb.bc ], [ %.pn.pn126151, %.thread153 ], [ %i.ep, %bb.ax ], [ %i.cx, %bb.y ], [ %i.df, %bb.ad ], [ %.pn67.pn.ph, %.thread135.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit171.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit174.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit142.i, %.lr.ph.preheader.i
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %._crit_edge215, %.thread51.i
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit171.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit174.a, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.n) #36
          to label %.thread135 unwind label %bb.z

bb.ah:                                            ; preds = %bb.ap, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.q, align 8
  %i.dh = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @36)
          to label %bb.ai unwind label %.thread128.thread145 ; 2 uses

.thread128.thread145:                             ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

.thread147:                                       ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.dk = extractvalue { i64, ptr } %i.dh, 0
  %i.dl = extractvalue { i64, ptr } %i.dh, 1      ; 11 uses
  %i.dm = trunc nuw i64 %i.dk to i1               ; 2 uses
  br i1 %i.dm, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dn = ptrtoint ptr %i.dl to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dn, 3                        ; 2 uses
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !20

default.unreachable:                              ; preds = %bb.ay, %bb.ar, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc90 unwind label %3

.noexc90:                                         ; preds = %bb.ak
  %i.dq = lshr i64 %i.dn, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !9, !noundef !9
  %i.du = invoke noundef i8 %i.dt(i32 noundef %i.dr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

bb.al:                                            ; preds = %bb.aj
  %i.dv = lshr i64 %i.dn, 32
  %i.dw = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dv to i8  ; 2 uses
  %i.dx = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.am:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr i8, ptr %i.dl, i64 31
  %i.eb = load i8, ptr %i.ea, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ec = icmp eq ptr %i.dl, null
  br i1 %i.ec, label %.loopexit182, label %bb.ap

.loopexit182:                                     ; preds = %bb.ao, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.ed = phi ptr [ %i.dl, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.ao ] ; 3 uses
  %i.ee = phi i64 [ %i.dn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  br i1 %i.dm, label %bb.ar, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

3:                                                ; preds = %bb.ak, %.noexc90
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread118 unwind label %bb.z

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.an, %bb.am, %bb.al, %.noexc90
  %.sroa.0.0.i89 = phi i8 [ %i.eb, %bb.an ], [ %switch.idx.cast.i.i.i, %bb.al ], [ %i.dz, %bb.am ], [ %i.du, %.noexc90 ]
  %i.ef = icmp eq i8 %.sroa.0.0.i89, 13
  br i1 %i.ef, label %bb.aq, label %.loopexit182

bb.aq:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %.loopexit182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.eg = and i64 %i.ee, 3
  switch i64 %i.eg, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.as
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.at
  ], !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.eh = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.ei = and i64 %i.ee, 1095216660480
  %i.ej = icmp ne i64 %i.ei, 1095216660480
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ej)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.at:                                            ; preds = %bb.ar
  %i.ek = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !4167
  store i8 3, ptr %i.b, align 8, !alias.scope !4167
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread147

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.at, %bb.ar, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %.thread135 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.au
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.ax:                                            ; preds = %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, i64 144, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread135 unwind label %bb.z

bb.ay:                                            ; preds = %bb.aq
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, i64 144, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.az
    i64 0, label %.critedge
    i64 1, label %bb.ba
  ], !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.eq = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.dn, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  %i.et = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !4168
  store i8 3, ptr %i.a, align 8, !alias.scope !4168
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu)
  br label %.critedge

.critedge:                                        ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.thread153:                                       ; preds = %bb.bb
  br i1 %.sroa.059.0124152, label %bb.bc, label %.thread135

.thread118:                                       ; preds = %.thread128.thread145, %3
  %.pn.pn127 = phi { ptr, i32 } [ %i.di, %.thread128.thread145 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.bb unwind label %bb.z

bb.bb:                                            ; preds = %.thread118, %.thread147
  %.sroa.059.0124152 = phi i1 [ false, %.thread147 ], [ true, %.thread118 ]
  %.pn.pn126151 = phi { ptr, i32 } [ %i.dj, %.thread147 ], [ %.pn.pn127, %.thread118 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread153 unwind label %bb.z

bb.bc:                                            ; preds = %.thread153
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(144) %i.m) #36
          to label %.thread135 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, ptr noalias nofree noundef align 8 dereferenceable(1096) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1096 x i8], align 8              ; 5 uses
  %i.e = alloca [1096 x i8], align 8              ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [1096 x i8], align 8              ; 5 uses
  %i.h = alloca [1096 x i8], align 8              ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.518 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.620 = alloca [56 x i8], align 8          ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [1096 x i8], align 8              ; 27 uses
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
  ], !prof !45

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
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(992) %.sroa.815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(992) %.sroa.11.0..sroa_idx, i64 992, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.8.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1088
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load i8, ptr %i.q, align 8, !range !46, !noundef !9
  %i.t = and i8 %i.s, 1                           ; 2 uses
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.r, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.t, ptr %.sroa.539.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 854 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 855 ; 4 uses
  %i.w = load i8, ptr %i.u, align 2, !range !28, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %i.v, align 1, !range !28
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
  call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %i.af = phi i1 [ %i.ae, %bb.g ], [ false, %bb.l ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.184.i.lcssa, %bb.l ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa.i, %bb.l ] ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !4181, !noundef !9
  %.not73.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not73.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.174.i = phi i64 [ %i.al, %bb.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %i.ah = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
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
  %i.am = load i64, ptr %i.aa, align 8, !noalias !4181, !noundef !9
  %.not.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %.noexc, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.174.i, %.noexc ], [ %i.al, %bb.i ] ; 2 uses
  %.not.lcssa.i = phi i1 [ false, %bb.h ], [ true, %.noexc ], [ false, %bb.i ]
  br i1 %i.af, label %.thread.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %._crit_edge.i
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4181, !noundef !9
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = load i8, ptr %i.ac, align 1, !range !28
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond173208 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond173208, label %._crit_edge, label %.lr.ph

.lr.ph86.i:                                       ; preds = %bb.k
  %i.ar = ptrtoint ptr %i.bq to i64
  %i.as = add i64 %.sroa.07.184.i209, %i.ar       ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4181, !noundef !9
  %i.au = icmp ne i64 %i.at, 0
  %i.av = load i8, ptr %i.ac, align 1, !range !28
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond173 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond173, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph86.i, %.lr.ph, %.lr.ph86.i.preheader
  %.sroa.07.184.i.lcssa = phi i64 [ %.sroa.07.0.i, %.lr.ph86.i.preheader ], [ %.sroa.07.184.i209, %.lr.ph ], [ %i.as, %.lr.ph86.i ] ; 2 uses
  %i.ax = load i8, ptr %i.u, align 2, !range !28, !noalias !4181, !noundef !9 ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.v, align 1, !range !28  ; 2 uses
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond177 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond177, label %.loopexit184, label %bb.l

._crit_edge.thread:                               ; preds = %.noexc78
  %i.bb = load i8, ptr %i.u, align 2, !range !28, !noalias !4181, !noundef !9 ; 2 uses
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.v, align 1, !range !28  ; 2 uses
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond177238 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond177238, label %.loopexit184, label %.thread

.thread.i:                                        ; preds = %._crit_edge.i, %.thread118.i
  %i.bf = phi i8 [ 1, %.thread118.i ], [ %i.ad, %._crit_edge.i ]
  %i.bg = load i8, ptr %i.u, align 2, !range !28, !noalias !4181, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i8, ptr %i.v, align 1, !range !28
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond171 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond171, label %.loopexit184, label %.thread50.i

.lr.ph:                                           ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %.sroa.07.184.i209 = phi i64 [ %i.as, %.lr.ph86.i ], [ %.sroa.07.0.i, %.lr.ph86.i.preheader ] ; 3 uses
  %i.bk = load i8, ptr %i.u, align 2, !range !28, !noalias !4181, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i64, ptr %i.aa, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  %or.cond175 = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond175, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE7read_ioCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
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
  store i8 1, ptr %.sroa.539.0..sroa_idx, align 8, !alias.scope !4180, !noalias !4182
  br label %.thread.i

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread50.i:                                      ; preds = %.thread.i
  %i.bs = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.l, %._crit_edge.thread
  %.sroa.07.184.i.lcssa239243 = phi i64 [ %.sroa.07.184.i209, %._crit_edge.thread ], [ %.sroa.07.184.i.lcssa, %bb.l ]
  %i.bt = phi i8 [ %i.bb, %._crit_edge.thread ], [ %i.ax, %bb.l ]
  %i.bu = phi i8 [ %i.bd, %._crit_edge.thread ], [ %i.az, %bb.l ]
  %i.bv = icmp eq i64 %.sroa.07.184.i.lcssa239243, 0
  %i.bw = icmp eq i64 %.sroa.0.1.lcssa.i, 0
  %or.cond3.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit184

._crit_edge218:                                   ; preds = %.loopexit184, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4183
  store ptr %i.r, ptr %i.c, align 8, !noalias !4183
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @57, ptr %i.bx, align 8, !noalias !4183
  %i.by = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc82:                                         ; preds = %._crit_edge218
  %.not.i = icmp eq ptr %i.by, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4183
  br i1 %.not.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc83, %bb.m
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !4184, !noundef !9
  %.not16.i = icmp eq i64 %i.ca, 0
  br i1 %.not16.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.w unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %.noexc82
  %.sroa.5.0.i.ph.ph = phi ptr [ %i.by, %.noexc82 ], [ %i.cd, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.e, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.ce)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %0, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.5.0.i.ph.ph) #36
          to label %.thread143 unwind label %bb.u

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.r
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
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

bb.x:                                             ; preds = %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit86, %bb.aa, %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.g, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.aa unwind label %bb.z

.noexc79:                                         ; preds = %.noexc, %.noexc78, %.thread50.i
  %.sroa.10103.0.ph = phi ptr [ %i.bs, %.thread50.i ], [ %i.bq, %.noexc78 ], [ %i.aj, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.h, ptr noundef nonnull align 8 dereferenceable(1096) %i.n, i64 1096, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.ci)
          to label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit86 unwind label %bb.y

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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.10103.0.ph) #36
          to label %.thread143 unwind label %bb.u

_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6clientINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB7_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit86: ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10103.0.ph) ]
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10103.0.ph, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.sink.split

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %i.g, i64 1096, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.ab:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread143.sink.split:                            ; preds = %bb.z, %bb.v
  %.sink = phi ptr [ %i.d, %bb.v ], [ %i.g, %bb.z ]
  %.pn68.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.co, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %1, ptr noundef nonnull align 8 dereferenceable(1096) %.sink, i64 1096, i1 false)
  br label %.thread143

.thread143:                                       ; preds = %.thread143.sink.split, %bb.as, %bb.t, %bb.y, %bb.aq, %bb.ax, %.thread161, %.loopexit.split-lp
  %.pn68.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dv, %bb.aq ], [ %.pn.pn134159, %bb.ax ], [ %.pn.pn134159, %.thread161 ], [ %i.dx, %bb.as ], [ %i.cf, %bb.t ], [ %i.cn, %bb.y ], [ %.pn68.pn.ph, %.thread143.sink.split ]
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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %i.n) #36
          to label %.thread143 unwind label %bb.u

bb.ac:                                            ; preds = %bb.ak, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.cp = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @38)
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
  ], !prof !20

default.unreachable:                              ; preds = %bb.at, %bb.am, %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc88 unwind label %3

.noexc88:                                         ; preds = %bb.af
  %i.cy = lshr i64 %i.cv, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !9, !noundef !9
  %i.dc = invoke noundef i8 %i.db(i32 noundef %i.cz)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

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
  %i.dh = load i8, ptr %i.dg, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ai:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %i.ct, i64 31
  %i.dj = load i8, ptr %i.di, align 8, !range !41, !noundef !9
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

3:                                                ; preds = %bb.af, %.noexc88
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.ct) #36
          to label %.thread126 unwind label %bb.u

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.noexc88
  %.sroa.0.0.i87 = phi i8 [ %i.dj, %bb.ai ], [ %switch.idx.cast.i.i.i, %bb.ag ], [ %i.dh, %bb.ah ], [ %i.dc, %.noexc88 ]
  %i.dn = icmp eq i8 %.sroa.0.0.i87, 13
  br i1 %i.dn, label %bb.al, label %.loopexit185

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1096) %1)
          to label %bb.at unwind label %bb.as

bb.am:                                            ; preds = %.loopexit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dm, 3
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.an
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.ao
  ], !prof !20

bb.an:                                            ; preds = %bb.am
  %i.dp = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.dq = and i64 %i.dm, 1095216660480
  %i.dr = icmp ne i64 %i.dq, 1095216660480
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.assume(i1 %i.dr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.ao:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !alias.scope !4185
  store i8 3, ptr %i.b, align 8, !alias.scope !4185
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread155

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.ao, %bb.am, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %.thread143 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.ap
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.as:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.ct) #36
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
  ], !prof !20

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
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !4186
  store i8 3, ptr %i.a, align 8, !alias.scope !4186
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
  br label %.critedge

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

.thread161:                                       ; preds = %bb.aw
  br i1 %.sroa.060.0132160, label %bb.ax, label %.thread143

.thread126:                                       ; preds = %.thread136.thread153, %3
  %.pn.pn135 = phi { ptr, i32 } [ %i.cq, %.thread136.thread153 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.aw unwind label %bb.u

bb.aw:                                            ; preds = %.thread126, %.thread155
  %.sroa.060.0132160 = phi i1 [ false, %.thread155 ], [ true, %.thread126 ]
  %.pn.pn134159 = phi { ptr, i32 } [ %i.cr, %.thread155 ], [ %.pn.pn135, %.thread126 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread161 unwind label %bb.u

bb.ax:                                            ; preds = %.thread161
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #36
          to label %.thread143 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1352 x i8]) align 8 captures(none) dereferenceable(1352) %0, ptr noalias nofree noundef align 8 dereferenceable(1352) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1352 x i8], align 8              ; 5 uses
  %i.e = alloca [1352 x i8], align 8              ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 4 uses
  %i.g = alloca [1352 x i8], align 8              ; 5 uses
  %i.h = alloca [1352 x i8], align 8              ; 4 uses
  %i.i = alloca [176 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517 = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.619 = alloca [176 x i8], align 8         ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %i.m = alloca [176 x i8], align 8               ; 9 uses
  %i.n = alloca [1352 x i8], align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !45

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(120) %i.p, i64 120, i1 false)
  %.sroa.9.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr %.sroa.9.0.copyload, ptr %.sroa.9.64..sroa_idx, align 8
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, i64 56, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx, i64 176, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.6.0..sroa_idx, i64 176, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx, i64 1104, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  store ptr %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1344
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1168 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.r, align 8, !range !46, !noundef !9
  %i.u = and i8 %i.t, 1                           ; 2 uses
  store ptr %i.s, ptr %i.j, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.u, ptr %.sroa.538.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 822 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 823 ; 4 uses
  %i.x = load i8, ptr %i.v, align 2, !range !28, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr %i.w, align 1, !range !28
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond162213 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond162213, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 827 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph215, %.loopexit182
  %i.ae = phi i8 [ %i.u, %.lr.ph215 ], [ %.ph, %.loopexit182 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  %i.af = trunc nuw i8 %i.ae to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ false, %bb.n ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.192.i.lcssa, %bb.n ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa136.i, %bb.n ] ; 3 uses
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !4199, !noundef !9
  %.not78.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not78.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ai = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  switch i64 %i.aj, label %.loopexit130.i [
    i64 2, label %._crit_edge.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %.sroa.0.0.i, %i.al             ; 2 uses
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4199, !noundef !9
  %.not.not.peel.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.peel.i, label %.loopexit142.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.180.i = phi i64 [ %i.as, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.ao = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc79:                                         ; preds = %.lr.ph.i
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  switch i64 %i.ap, label %.loopexit130.i [
    i64 2, label %.loopexit142.i
    i64 0, label %bb.j
  ]

bb.j:                                             ; preds = %.noexc79
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %.sroa.0.180.i, %i.ar           ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4199, !noundef !9
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.loopexit142.i, label %.lr.ph.i, !llvm.loop !4190

._crit_edge.i:                                    ; preds = %bb.k, %.noexc80, %.noexc, %bb.h
  %.sroa.0.1.lcssa136.i = phi i64 [ %.sroa.0.1.lcssa.ph.i, %.noexc80 ], [ %.sroa.0.1.lcssa.ph.i, %bb.k ], [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.0.i, %.noexc ] ; 2 uses
  %.sroa.011.1.i = phi i1 [ true, %.noexc80 ], [ %.not.lcssa.ph.i, %bb.k ], [ false, %bb.h ], [ true, %.noexc ]
  br i1 %i.ag, label %.thread.i, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %._crit_edge.i
  %i.au = load i64, ptr %i.ac, align 8, !noalias !4199, !noundef !9
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = load i8, ptr %i.ad, align 1, !range !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond166206 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond166206, label %._crit_edge, label %.lr.ph

.loopexit142.i:                                   ; preds = %bb.j, %.noexc79, %bb.i
  %.sroa.0.1.lcssa.ph.i = phi i64 [ %i.am, %bb.i ], [ %i.as, %bb.j ], [ %.sroa.0.180.i, %.noexc79 ] ; 2 uses
  %.not.lcssa.ph.i = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ true, %.noexc79 ]
  %i.ay = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc80:                                         ; preds = %.loopexit142.i
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %.noexc80
  %i.bb = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %.not45.i = icmp eq ptr %i.bb, null
  br i1 %.not45.i, label %._crit_edge.i, label %.loopexit130.i

.lr.ph94.i:                                       ; preds = %bb.m
  %i.bc = ptrtoint ptr %i.cb to i64
  %i.bd = add i64 %.sroa.07.192.i207, %i.bc       ; 2 uses
  %i.be = load i64, ptr %i.ac, align 8, !noalias !4199, !noundef !9
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = load i8, ptr %i.ad, align 1, !range !28
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping:bb.a

.thread51.i:                                      ; preds = %.thread.i
  %i.cd = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.loopexit130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.n, %._crit_edge.thread
  %.sroa.07.192.i.lcssa240244 = phi i64 [ %.sroa.07.192.i207, %._crit_edge.thread ], [ %.sroa.07.192.i.lcssa, %bb.n ]
  %i.ce = phi i8 [ %i.bm, %._crit_edge.thread ], [ %i.bi, %bb.n ]
  %i.cf = phi i8 [ %i.bo, %._crit_edge.thread ], [ %i.bk, %bb.n ]
  %i.cg = icmp eq i64 %.sroa.07.192.i.lcssa240244, 0
  %i.ch = icmp eq i64 %.sroa.0.1.lcssa136.i, 0
  %or.cond3.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit182

._crit_edge216:                                   ; preds = %.loopexit182, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4201
  store ptr %i.n, ptr %i.c, align 8, !noalias !4201
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @60, ptr %i.ci, align 8, !noalias !4201
  %i.cj = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc84:                                         ; preds = %._crit_edge216
  %.not.i = icmp eq ptr %i.cj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4201
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc84
  %i.ck = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.cj, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.p:                                             ; preds = %.noexc84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  br label %bb.q

bb.q:                                             ; preds = %.noexc86, %bb.p
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4201, !noundef !9
  %.not16.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.co = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc86 unwind label %.loopexit ; 2 uses

.noexc86:                                         ; preds = %bb.s
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  switch i64 %i.cp, label %bb.t [
    i64 2, label %.loopexit.i83
    i64 0, label %bb.q
  ]

bb.t:                                             ; preds = %.noexc86
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.loopexit.i83

.loopexit.i83:                                    ; preds = %.noexc86, %bb.t
  %.sroa.5.1.i = phi ptr [ %i.cq, %bb.t ], [ undef, %.noexc86 ]
  %.sroa.04.1.i = phi i64 [ 0, %bb.t ], [ 1, %.noexc86 ]
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.5.1.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %.loopexit.i83, %bb.o, %bb.r
  %.merged.i = phi { i64, ptr } [ %i.ck, %bb.o ], [ %i.cs, %.loopexit.i83 ], [ %i.cn, %bb.r ] ; 2 uses
  %i.ct = extractvalue { i64, ptr } %.merged.i, 0
  %i.cu = extractvalue { i64, ptr } %.merged.i, 1 ; 3 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.d, ptr noundef nonnull align 8 dereferenceable(1352) %i.n, i64 1352, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1352) %1)
          to label %bb.ab unwind label %bb.aa

bb.v:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.e, ptr noundef nonnull align 8 dereferenceable(1352) %i.n, i64 1352, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.cw, i64 176, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.e)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %0, ptr noundef nonnull align 8 dereferenceable(1352) %i.n, i64 1352, i1 false)
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.cu) #36
          to label %.thread136 unwind label %bb.z

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.f, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.ad, %bb.ax, %3, %.thread119, %bb.bc, %bb.bb, %.loopexit.split-lp
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.sink.split

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %1, ptr noundef nonnull align 8 dereferenceable(1352) %i.d, i64 1352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89, %bb.af, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.g, ptr noundef nonnull align 8 dereferenceable(1352) %i.n, i64 1352, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1352) %1)
          to label %bb.af unwind label %bb.ae

.loopexit130.i:                                   ; preds = %bb.k, %.noexc, %.noexc79, %.noexc81, %.thread51.i
  %.sroa.11106.0.ph = phi ptr [ %i.cd, %.thread51.i ], [ %i.aq, %.noexc79 ], [ %i.cb, %.noexc81 ], [ %i.bb, %bb.k ], [ %i.ak, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %i.h, ptr noundef nonnull align 8 dereferenceable(1352) %i.n, i64 1352, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.da, i64 176, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1352) %i.h)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89 unwind label %bb.ad

.loopexit182:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.db = phi i8 [ 1, %.thread.i ], [ %i.cf, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.dc = phi i8 [ 1, %.thread.i ], [ %i.ce, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bq, %.thread.i ], [ %i.ae, %.thread ], [ %i.ae, %._crit_edge.thread ], [ %i.ae, %._crit_edge ]
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = trunc nuw i8 %i.db to i1
  %or.cond162 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond162, label %._crit_edge216, label %bb.g

bb.ad:                                            ; preds = %.loopexit130.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11106.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.11106.0.ph) #36
          to label %.thread136 unwind label %bb.z

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89: ; preds = %.loopexit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11106.0.ph) ]
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.i, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11106.0.ph, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.sink.split

bb.af:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %1, ptr noundef nonnull align 8 dereferenceable(1352) %i.g, i64 1352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread136.sink.split:                            ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.d, %bb.aa ], [ %i.g, %bb.ae ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.dg, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1352) %1, ptr noundef nonnull align 8 dereferenceable(1352) %.sink, i64 1352, i1 false)
  br label %.thread136

.thread136:                                       ; preds = %.thread136.sink.split, %bb.ax, %bb.y, %bb.ad, %bb.av, %bb.bc, %.thread154, %.loopexit.split-lp
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.en, %bb.av ], [ %.pn.pn127152, %bb.bc ], [ %.pn.pn127152, %.thread154 ], [ %i.ep, %bb.ax ], [ %i.cx, %bb.y ], [ %i.df, %bb.ad ], [ %.pn67.pn.ph, %.thread136.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit172.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit175.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit142.i, %.lr.ph.preheader.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %._crit_edge216, %.thread51.i
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit172.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit175.a, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.n) #36
          to label %.thread136 unwind label %bb.z

bb.ah:                                            ; preds = %bb.ap, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.q, align 8
  %i.dh = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @33)
          to label %bb.ai unwind label %.thread129.thread146 ; 2 uses

.thread129.thread146:                             ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.thread148:                                       ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.dk = extractvalue { i64, ptr } %i.dh, 0
  %i.dl = extractvalue { i64, ptr } %i.dh, 1      ; 11 uses
  %i.dm = trunc nuw i64 %i.dk to i1               ; 2 uses
  br i1 %i.dm, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dn = ptrtoint ptr %i.dl to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dn, 3                        ; 2 uses
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !20

default.unreachable:                              ; preds = %bb.ay, %bb.ar, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc91 unwind label %3

.noexc91:                                         ; preds = %bb.ak
  %i.dq = lshr i64 %i.dn, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !9, !noundef !9
  %i.du = invoke noundef i8 %i.dt(i32 noundef %i.dr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

bb.al:                                            ; preds = %bb.aj
  %i.dv = lshr i64 %i.dn, 32
  %i.dw = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dv to i8  ; 2 uses
  %i.dx = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.am:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr i8, ptr %i.dl, i64 31
  %i.eb = load i8, ptr %i.ea, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ec = icmp eq ptr %i.dl, null
  br i1 %i.ec, label %.loopexit183, label %bb.ap

.loopexit183:                                     ; preds = %bb.ao, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.ed = phi ptr [ %i.dl, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.ao ] ; 3 uses
  %i.ee = phi i64 [ %i.dn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %i.m, i64 176, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  br i1 %i.dm, label %bb.ar, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

3:                                                ; preds = %bb.ak, %.noexc91
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread119 unwind label %bb.z

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.an, %bb.am, %bb.al, %.noexc91
  %.sroa.0.0.i90 = phi i8 [ %i.eb, %bb.an ], [ %switch.idx.cast.i.i.i, %bb.al ], [ %i.dz, %bb.am ], [ %i.du, %.noexc91 ]
  %i.ef = icmp eq i8 %.sroa.0.0.i90, 13
  br i1 %i.ef, label %bb.aq, label %.loopexit183

bb.aq:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(176) %i.m, i64 176, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1352) %1)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %.loopexit183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.eg = and i64 %i.ee, 3
  switch i64 %i.eg, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.as
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.at
  ], !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.eh = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.ei = and i64 %i.ee, 1095216660480
  %i.ej = icmp ne i64 %i.ei, 1095216660480
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ej)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.at:                                            ; preds = %bb.ar
  %i.ek = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !4202
  store i8 3, ptr %i.b, align 8, !alias.scope !4202
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread148

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.at, %bb.ar, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %.thread136 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.au
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.ax:                                            ; preds = %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, i64 176, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread136 unwind label %bb.z

bb.ay:                                            ; preds = %bb.aq
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.619, i64 176, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.az
    i64 0, label %.critedge
    i64 1, label %bb.ba
  ], !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.eq = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.dn, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  %i.et = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !4203
  store i8 3, ptr %i.a, align 8, !alias.scope !4203
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu)
  br label %.critedge

.critedge:                                        ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.thread154:                                       ; preds = %bb.bb
  br i1 %.sroa.059.0125153, label %bb.bc, label %.thread136

.thread119:                                       ; preds = %.thread129.thread146, %3
  %.pn.pn128 = phi { ptr, i32 } [ %i.di, %.thread129.thread146 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.bb unwind label %bb.z

bb.bb:                                            ; preds = %.thread119, %.thread148
  %.sroa.059.0125153 = phi i1 [ false, %.thread148 ], [ true, %.thread119 ]
  %.pn.pn127152 = phi { ptr, i32 } [ %i.dj, %.thread148 ], [ %.pn.pn128, %.thread119 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread154 unwind label %bb.z

bb.bc:                                            ; preds = %.thread154
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(176) %i.m) #36
          to label %.thread136 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1320 x i8]) align 8 captures(none) dereferenceable(1320) %0, ptr noalias nofree noundef align 8 dereferenceable(1320) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1320 x i8], align 8              ; 5 uses
  %i.e = alloca [1320 x i8], align 8              ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [1320 x i8], align 8              ; 5 uses
  %i.h = alloca [1320 x i8], align 8              ; 4 uses
  %i.i = alloca [144 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.517 = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.619 = alloca [144 x i8], align 8         ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %i.m = alloca [144 x i8], align 8               ; 9 uses
  %i.n = alloca [1320 x i8], align 8              ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %.sroa.107.0.copyload = load ptr, ptr %.sroa.107.0..sroa_idx, align 8 ; 6 uses
  store i64 2, ptr %1, align 8
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 1)
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.f
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 1, label %bb.e
  ], !prof !45

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false)
  %.sroa.9.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr %.sroa.9.0.copyload, ptr %.sroa.9.64..sroa_idx, align 8
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, i64 56, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.107.0.copyload) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.432.sroa.4.0..sroa.432.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, i64 144, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store i64 2, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40
  unreachable

bb.f:                                             ; preds = %bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx, i64 144, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx, i64 48, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1104) %.sroa.11.0..sroa_idx, i64 1104, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store ptr %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  store ptr %.sroa.107.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1312
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1168 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = load i8, ptr %i.r, align 8, !range !46, !noundef !9
  %i.u = and i8 %i.t, 1                           ; 2 uses
  store ptr %i.s, ptr %i.j, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.u, ptr %.sroa.538.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 822 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 823 ; 4 uses
  %i.x = load i8, ptr %i.v, align 2, !range !28, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr %i.w, align 1, !range !28
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond162213 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond162213, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 827 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph215, %.loopexit182
  %i.ae = phi i8 [ %i.u, %.lr.ph215 ], [ %.ph, %.loopexit182 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4215)
  %i.af = trunc nuw i8 %i.ae to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ false, %bb.n ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.192.i.lcssa, %bb.n ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa136.i, %bb.n ] ; 3 uses
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !4216, !noundef !9
  %.not78.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not78.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ai = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  switch i64 %i.aj, label %.loopexit130.i [
    i64 2, label %._crit_edge.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %.sroa.0.0.i, %i.al             ; 2 uses
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4216, !noundef !9
  %.not.not.peel.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.peel.i, label %.loopexit142.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.sroa.0.180.i = phi i64 [ %i.as, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.ao = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc79:                                         ; preds = %.lr.ph.i
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  switch i64 %i.ap, label %.loopexit130.i [
    i64 2, label %.loopexit142.i
    i64 0, label %bb.j
  ]

bb.j:                                             ; preds = %.noexc79
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %.sroa.0.180.i, %i.ar           ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4216, !noundef !9
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.loopexit142.i, label %.lr.ph.i, !llvm.loop !4207

._crit_edge.i:                                    ; preds = %bb.k, %.noexc80, %.noexc, %bb.h
  %.sroa.0.1.lcssa136.i = phi i64 [ %.sroa.0.1.lcssa.ph.i, %.noexc80 ], [ %.sroa.0.1.lcssa.ph.i, %bb.k ], [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.0.i, %.noexc ] ; 2 uses
  %.sroa.011.1.i = phi i1 [ true, %.noexc80 ], [ %.not.lcssa.ph.i, %bb.k ], [ false, %bb.h ], [ true, %.noexc ]
  br i1 %i.ag, label %.thread.i, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %._crit_edge.i
  %i.au = load i64, ptr %i.ac, align 8, !noalias !4216, !noundef !9
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = load i8, ptr %i.ad, align 1, !range !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond166206 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond166206, label %._crit_edge, label %.lr.ph

.loopexit142.i:                                   ; preds = %bb.j, %.noexc79, %bb.i
  %.sroa.0.1.lcssa.ph.i = phi i64 [ %i.am, %bb.i ], [ %i.as, %bb.j ], [ %.sroa.0.180.i, %.noexc79 ] ; 2 uses
  %.not.lcssa.ph.i = phi i1 [ false, %bb.i ], [ false, %bb.j ], [ true, %.noexc79 ]
  %i.ay = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc80:                                         ; preds = %.loopexit142.i
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %.noexc80
  %i.bb = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %.not45.i = icmp eq ptr %i.bb, null
  br i1 %.not45.i, label %._crit_edge.i, label %.loopexit130.i

.lr.ph94.i:                                       ; preds = %bb.m
  %i.bc = ptrtoint ptr %i.cb to i64
  %i.bd = add i64 %.sroa.07.192.i207, %i.bc       ; 2 uses
  %i.be = load i64, ptr %i.ac, align 8, !noalias !4216, !noundef !9
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = load i8, ptr %i.ad, align 1, !range !28
end_hunk_2
begin_hunk_3_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping:bb.a

.thread51.i:                                      ; preds = %.thread.i
  %i.cd = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.loopexit130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.n, %._crit_edge.thread
  %.sroa.07.192.i.lcssa240244 = phi i64 [ %.sroa.07.192.i207, %._crit_edge.thread ], [ %.sroa.07.192.i.lcssa, %bb.n ]
  %i.ce = phi i8 [ %i.bm, %._crit_edge.thread ], [ %i.bi, %bb.n ]
  %i.cf = phi i8 [ %i.bo, %._crit_edge.thread ], [ %i.bk, %bb.n ]
  %i.cg = icmp eq i64 %.sroa.07.192.i.lcssa240244, 0
  %i.ch = icmp eq i64 %.sroa.0.1.lcssa136.i, 0
  %or.cond3.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit182

._crit_edge216:                                   ; preds = %.loopexit182, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4218
  store ptr %i.n, ptr %i.c, align 8, !noalias !4218
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @60, ptr %i.ci, align 8, !noalias !4218
  %i.cj = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc84:                                         ; preds = %._crit_edge216
  %.not.i = icmp eq ptr %i.cj, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4218
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc84
  %i.ck = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.cj, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

bb.p:                                             ; preds = %.noexc84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  br label %bb.q

bb.q:                                             ; preds = %.noexc86, %bb.p
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4218, !noundef !9
  %.not16.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = invoke { i64, ptr } @_RNvXs1_NtCsbVDXp34Q3tF_18multistream_select10negotiatedINtB5_10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.co = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.s, ptr nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc86 unwind label %.loopexit ; 2 uses

.noexc86:                                         ; preds = %bb.s
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  switch i64 %i.cp, label %bb.t [
    i64 2, label %.loopexit.i83
    i64 0, label %bb.q
  ]

bb.t:                                             ; preds = %.noexc86
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.loopexit.i83

.loopexit.i83:                                    ; preds = %.noexc86, %bb.t
  %.sroa.5.1.i = phi ptr [ %i.cq, %bb.t ], [ undef, %.noexc86 ]
  %.sroa.04.1.i = phi i64 [ 0, %bb.t ], [ 1, %.noexc86 ]
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.04.1.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.5.1.i, 1
  br label %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit

_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit: ; preds = %.loopexit.i83, %bb.o, %bb.r
  %.merged.i = phi { i64, ptr } [ %i.ck, %bb.o ], [ %i.cs, %.loopexit.i83 ], [ %i.cn, %bb.r ] ; 2 uses
  %i.ct = extractvalue { i64, ptr } %.merged.i, 0
  %i.cu = extractvalue { i64, ptr } %.merged.i, 1 ; 3 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.d, ptr noundef nonnull align 8 dereferenceable(1320) %i.n, i64 1320, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1320) %1)
          to label %bb.ab unwind label %bb.aa

bb.v:                                             ; preds = %_RNvXs1_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCshnt8FRa5Rut_11native_ping.exit
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.e, ptr noundef nonnull align 8 dereferenceable(1320) %i.n, i64 1320, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.cw, i64 144, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.e)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %0, ptr noundef nonnull align 8 dereferenceable(1320) %i.n, i64 1320, i1 false)
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.cu) #36
          to label %.thread136 unwind label %bb.z

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.ad, %bb.ax, %3, %.thread119, %bb.bc, %bb.bb, %.loopexit.split-lp
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.sink.split

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %1, ptr noundef nonnull align 8 dereferenceable(1320) %i.d, i64 1320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89, %bb.af, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.g, ptr noundef nonnull align 8 dereferenceable(1320) %i.n, i64 1320, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1320) %1)
          to label %bb.af unwind label %bb.ae

.loopexit130.i:                                   ; preds = %bb.k, %.noexc, %.noexc79, %.noexc81, %.thread51.i
  %.sroa.11106.0.ph = phi ptr [ %i.cd, %.thread51.i ], [ %i.aq, %.noexc79 ], [ %i.cb, %.noexc81 ], [ %i.bb, %bb.k ], [ %i.ak, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %i.h, ptr noundef nonnull align 8 dereferenceable(1320) %i.n, i64 1320, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.da, i64 144, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1320) %i.h)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89 unwind label %bb.ad

.loopexit182:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.db = phi i8 [ 1, %.thread.i ], [ %i.cf, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.dc = phi i8 [ 1, %.thread.i ], [ %i.ce, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bq, %.thread.i ], [ %i.ae, %.thread ], [ %i.ae, %._crit_edge.thread ], [ %i.ae, %._crit_edge ]
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = trunc nuw i8 %i.db to i1
  %or.cond162 = select i1 %i.dd, i1 %i.de, i1 false
  br i1 %or.cond162, label %._crit_edge216, label %bb.g

bb.ad:                                            ; preds = %.loopexit130.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11106.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.11106.0.ph) #36
          to label %.thread136 unwind label %bb.z

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit89: ; preds = %.loopexit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11106.0.ph) ]
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11106.0.ph, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.sink.split

bb.af:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %1, ptr noundef nonnull align 8 dereferenceable(1320) %i.g, i64 1320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.ac, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread136.sink.split:                            ; preds = %bb.ae, %bb.aa
  %.sink = phi ptr [ %i.d, %bb.aa ], [ %i.g, %bb.ae ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.dg, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1320) %1, ptr noundef nonnull align 8 dereferenceable(1320) %.sink, i64 1320, i1 false)
  br label %.thread136

.thread136:                                       ; preds = %.thread136.sink.split, %bb.ax, %bb.y, %bb.ad, %bb.av, %bb.bc, %.thread154, %.loopexit.split-lp
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.en, %bb.av ], [ %.pn.pn127152, %bb.bc ], [ %.pn.pn127152, %.thread154 ], [ %i.ep, %bb.ax ], [ %i.cx, %bb.y ], [ %i.df, %bb.ad ], [ %.pn67.pn.ph, %.thread136.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit172.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit175.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit142.i, %.lr.ph.preheader.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %._crit_edge216, %.thread51.i
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit172.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit175.a, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1320) %i.n) #36
          to label %.thread136 unwind label %bb.z

bb.ah:                                            ; preds = %bb.ap, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.q, align 8
  %i.dh = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @36)
          to label %bb.ai unwind label %.thread129.thread146 ; 2 uses

.thread129.thread146:                             ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.thread148:                                       ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  %i.dk = extractvalue { i64, ptr } %i.dh, 0
  %i.dl = extractvalue { i64, ptr } %i.dh, 1      ; 11 uses
  %i.dm = trunc nuw i64 %i.dk to i1               ; 2 uses
  br i1 %i.dm, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dn = ptrtoint ptr %i.dl to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dn, 3                        ; 2 uses
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !20

default.unreachable:                              ; preds = %bb.ay, %bb.ar, %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc91 unwind label %3

.noexc91:                                         ; preds = %bb.ak
  %i.dq = lshr i64 %i.dn, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !9, !noundef !9
  %i.du = invoke noundef i8 %i.dt(i32 noundef %i.dr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

bb.al:                                            ; preds = %bb.aj
  %i.dv = lshr i64 %i.dn, 32
  %i.dw = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.dv to i8  ; 2 uses
  %i.dx = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.am:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr i8, ptr %i.dl, i64 31
  %i.eb = load i8, ptr %i.ea, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ec = icmp eq ptr %i.dl, null
  br i1 %i.ec, label %.loopexit183, label %bb.ap

.loopexit183:                                     ; preds = %bb.ao, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  %i.ed = phi ptr [ %i.dl, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.ao ] ; 3 uses
  %i.ee = phi i64 [ %i.dn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.ao ] ; 2 uses
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.427.0..sroa_idx, align 8
  br i1 %i.dm, label %bb.ar, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

3:                                                ; preds = %bb.ak, %.noexc91
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread119 unwind label %bb.z

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.an, %bb.am, %bb.al, %.noexc91
  %.sroa.0.0.i90 = phi i8 [ %i.eb, %bb.an ], [ %switch.idx.cast.i.i.i, %bb.al ], [ %i.dz, %bb.am ], [ %i.du, %.noexc91 ]
  %i.ef = icmp eq i8 %.sroa.0.0.i90, 13
  br i1 %i.ef, label %bb.aq, label %.loopexit183

bb.aq:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1320) %1)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %.loopexit183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.eg = and i64 %i.ee, 3
  switch i64 %i.eg, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.as
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.at
  ], !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.eh = icmp ult ptr %i.ed, inttoptr (i64 188978561024 to ptr)
  %i.ei = and i64 %i.ee, 1095216660480
  %i.ej = icmp ne i64 %i.ei, 1095216660480
  call void @llvm.assume(i1 %i.eh)
  call void @llvm.assume(i1 %i.ej)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.at:                                            ; preds = %bb.ar
  %i.ek = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !4219
  store i8 3, ptr %i.b, align 8, !alias.scope !4219
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread148

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.at, %bb.ar, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
          to label %.thread136 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.au
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.em)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.ax:                                            ; preds = %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, i64 144, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.dl) #36
          to label %.thread136 unwind label %bb.z

bb.ay:                                            ; preds = %bb.aq
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.517, i64 56, i1 false)
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.619, i64 144, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.az
    i64 0, label %.critedge
    i64 1, label %bb.ba
  ], !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.eq = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.er = and i64 %i.dn, 1095216660480
  %i.es = icmp ne i64 %i.er, 1095216660480
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.assume(i1 %i.es)
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  %i.et = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !alias.scope !4220
  store i8 3, ptr %i.a, align 8, !alias.scope !4220
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu)
  br label %.critedge

.critedge:                                        ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ag

.thread154:                                       ; preds = %bb.bb
  br i1 %.sroa.059.0125153, label %bb.bc, label %.thread136

.thread119:                                       ; preds = %.thread129.thread146, %3
  %.pn.pn128 = phi { ptr, i32 } [ %i.di, %.thread129.thread146 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.bb unwind label %bb.z

bb.bb:                                            ; preds = %.thread119, %.thread148
  %.sroa.059.0125153 = phi i1 [ false, %.thread148 ], [ true, %.thread119 ]
  %.pn.pn127152 = phi { ptr, i32 } [ %i.dj, %.thread148 ], [ %.pn.pn128, %.thread119 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread154 unwind label %bb.z

bb.bc:                                            ; preds = %.thread154
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(144) %i.m) #36
          to label %.thread136 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(1208) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  ], !prof !45

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
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #40
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
  %i.s = load i8, ptr %i.q, align 8, !range !46, !noundef !9
  %i.t = and i8 %i.s, 1                           ; 2 uses
  store ptr %i.n, ptr %i.j, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.r, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i8 %i.t, ptr %.sroa.539.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 854 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 855 ; 4 uses
  %i.w = load i8, ptr %i.u, align 2, !range !28, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %i.v, align 1, !range !28
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond170216 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond170216, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 859 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph218, %.loopexit185
  %i.ad = phi i8 [ %i.t, %.lr.ph218 ], [ %.ph, %.loopexit185 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %i.af = phi i1 [ %i.ae, %bb.g ], [ false, %bb.l ]
  %.sroa.07.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.07.184.i.lcssa, %bb.l ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %.sroa.0.1.lcssa.i, %bb.l ] ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !4232, !noundef !9
  %.not73.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not73.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.174.i = phi i64 [ %i.al, %bb.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %i.ah = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  switch i64 %i.ai, label %.noexc81 [
    i64 2, label %._crit_edge.i
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = add i64 %.sroa.0.174.i, %i.ak           ; 2 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !4232, !noundef !9
  %.not.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %.noexc, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.0.174.i, %.noexc ], [ %i.al, %bb.i ] ; 2 uses
  %.not.lcssa.i = phi i1 [ false, %bb.h ], [ true, %.noexc ], [ false, %bb.i ]
  br i1 %i.af, label %.thread.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %._crit_edge.i
  %i.an = load i64, ptr %i.ab, align 8, !noalias !4232, !noundef !9
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = load i8, ptr %i.ac, align 1, !range !28
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond174209 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond174209, label %._crit_edge, label %.lr.ph

.lr.ph86.i:                                       ; preds = %bb.k
  %i.ar = ptrtoint ptr %i.bq to i64
  %i.as = add i64 %.sroa.07.184.i210, %i.ar       ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !noalias !4232, !noundef !9
  %i.au = icmp ne i64 %i.at, 0
  %i.av = load i8, ptr %i.ac, align 1, !range !28
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond174 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph86.i, %.lr.ph, %.lr.ph86.i.preheader
  %.sroa.07.184.i.lcssa = phi i64 [ %.sroa.07.0.i, %.lr.ph86.i.preheader ], [ %.sroa.07.184.i210, %.lr.ph ], [ %i.as, %.lr.ph86.i ] ; 2 uses
  %i.ax = load i8, ptr %i.u, align 2, !range !28, !noalias !4232, !noundef !9 ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.v, align 1, !range !28  ; 2 uses
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond178 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond178, label %.loopexit185, label %bb.l

._crit_edge.thread:                               ; preds = %.noexc80
  %i.bb = load i8, ptr %i.u, align 2, !range !28, !noalias !4232, !noundef !9 ; 2 uses
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.v, align 1, !range !28  ; 2 uses
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond178239 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond178239, label %.loopexit185, label %.thread

.thread.i:                                        ; preds = %._crit_edge.i, %.thread118.i
  %i.bf = phi i8 [ 1, %.thread118.i ], [ %i.ad, %._crit_edge.i ]
  %i.bg = load i8, ptr %i.u, align 2, !range !28, !noalias !4232, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load i8, ptr %i.v, align 1, !range !28
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond172 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond172, label %.loopexit185, label %.thread50.i

.lr.ph:                                           ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %.sroa.07.184.i210 = phi i64 [ %i.as, %.lr.ph86.i ], [ %.sroa.07.0.i, %.lr.ph86.i.preheader ] ; 3 uses
  %i.bk = load i8, ptr %i.u, align 2, !range !28, !noalias !4232, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load i64, ptr %i.aa, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  %or.cond176 = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond176, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bo = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc80:                                         ; preds = %bb.j
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1      ; 3 uses
  switch i64 %i.bp, label %.noexc81 [
    i64 2, label %._crit_edge.thread
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc80
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread118.i, label %.lr.ph86.i

.thread118.i:                                     ; preds = %bb.k
  store i8 1, ptr %.sroa.539.0..sroa_idx, align 8, !alias.scope !4231, !noalias !4233
  br label %.thread.i

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not.lcssa.i, label %.thread, label %bb.h

.thread50.i:                                      ; preds = %.thread.i
  %i.bs = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 37, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 17) #37
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.l, %._crit_edge.thread
  %.sroa.07.184.i.lcssa240244 = phi i64 [ %.sroa.07.184.i210, %._crit_edge.thread ], [ %.sroa.07.184.i.lcssa, %bb.l ]
  %i.bt = phi i8 [ %i.bb, %._crit_edge.thread ], [ %i.ax, %bb.l ]
  %i.bu = phi i8 [ %i.bd, %._crit_edge.thread ], [ %i.az, %bb.l ]
  %i.bv = icmp eq i64 %.sroa.07.184.i.lcssa240244, 0
  %i.bw = icmp eq i64 %.sroa.0.1.lcssa.i, 0
  %or.cond3.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond3.i, label %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit, label %.loopexit185

._crit_edge219:                                   ; preds = %.loopexit185, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4234
  store ptr %i.r, ptr %i.c, align 8, !noalias !4234
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @60, ptr %i.bx, align 8, !noalias !4234
  %i.by = invoke noundef ptr @_RNvXs5_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6WriterNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc83:                                         ; preds = %._crit_edge219
  %.not.i = icmp eq ptr %i.by, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4234
  br i1 %.not.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  br label %bb.n

bb.n:                                             ; preds = %.noexc84, %bb.m
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !4234, !noundef !9
  %.not16.i = icmp eq i64 %i.ca, 0
  br i1 %.not16.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = invoke fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE8write_ioCshnt8FRa5Rut_11native_ping(ptr nonnull %i.n, ptr nonnull %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc84 unwind label %.loopexit ; 2 uses

.noexc84:                                         ; preds = %bb.o
  %i.cc = extractvalue { i64, ptr } %i.cb, 0
  switch i64 %i.cc, label %bb.p [
    i64 2, label %bb.q
    i64 0, label %bb.n
  ]

bb.p:                                             ; preds = %.noexc84
  %i.cd = extractvalue { i64, ptr } %i.cb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br label %bb.r

bb.q:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.w unwind label %bb.v

bb.r:                                             ; preds = %bb.p, %.noexc83
  %.sroa.5.0.i.ph.ph = phi ptr [ %i.by, %.noexc83 ], [ %i.cd, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.e, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.ce)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.5.0.i.ph.ph) #36
          to label %.thread144 unwind label %bb.u

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.451.sroa.4.0..sroa.451.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.ph.ph, ptr %.sroa.451.0..sroa_idx, align 8
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.y, %bb.as, %3, %.thread127, %bb.ax, %bb.aw, %.loopexit.split-lp
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread144.sink.split

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.d, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit87, %bb.aa, %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ab

_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.g, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.aa unwind label %bb.z

.noexc81:                                         ; preds = %.noexc, %.noexc80, %.thread50.i
  %.sroa.10104.0.ph = phi ptr [ %i.bs, %.thread50.i ], [ %i.bq, %.noexc80 ], [ %i.aj, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.h, ptr noundef nonnull align 8 dereferenceable(1208) %i.n, i64 1208, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshPShd8ZVvJf_6rustls4conn16ConnectionCommonNtNtNtBG_6server11server_conn20ServerConnectionDataEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1168) %i.ci)
          to label %_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit87 unwind label %bb.y

.loopexit185:                                     ; preds = %._crit_edge, %._crit_edge.thread, %.thread.i, %.thread
  %i.cj = phi i8 [ 1, %.thread.i ], [ %i.bu, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %i.ck = phi i8 [ 1, %.thread.i ], [ %i.bt, %.thread ], [ 1, %._crit_edge.thread ], [ 1, %._crit_edge ]
  %.ph = phi i8 [ %i.bf, %.thread.i ], [ %i.ad, %.thread ], [ %i.ad, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = trunc nuw i8 %i.cj to i1
  %or.cond170 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond170, label %._crit_edge219, label %bb.g

bb.y:                                             ; preds = %.noexc81
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10104.0.ph) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.10104.0.ph) #36
          to label %.thread144 unwind label %bb.u

_RNvXs_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB4_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtNtB6_6common9handshake9IoSession7into_ioCshnt8FRa5Rut_11native_ping.exit87: ; preds = %.noexc81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10104.0.ph) ]
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10104.0.ph, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.x

bb.z:                                             ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread144.sink.split

bb.aa:                                            ; preds = %_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE9handshakeCshnt8FRa5Rut_11native_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %i.g, i64 1208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.ab:                                            ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit, %bb.x, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread144.sink.split:                            ; preds = %bb.z, %bb.v
  %.sink = phi ptr [ %i.d, %bb.v ], [ %i.g, %bb.z ]
  %.pn68.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.co, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef nonnull align 8 dereferenceable(1208) %.sink, i64 1208, i1 false)
  br label %.thread144

.thread144:                                       ; preds = %.thread144.sink.split, %bb.as, %bb.t, %bb.y, %bb.aq, %bb.ax, %.thread162, %.loopexit.split-lp
  %.pn68.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dv, %bb.aq ], [ %.pn.pn135160, %bb.ax ], [ %.pn.pn135160, %.thread162 ], [ %i.dx, %bb.as ], [ %i.cf, %bb.t ], [ %i.cn, %bb.y ], [ %.pn68.pn.ph, %.thread144.sink.split ]
  resume { ptr, i32 } %.pn68.pn

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit179.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread50.i, %._crit_edge219
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit179.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit182, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgrcu2UPjJtD_14futures_rustls6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %i.n) #36
          to label %.thread144 unwind label %bb.u

bb.ac:                                            ; preds = %bb.ak, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr %2, ptr %i.p, align 8
  %i.cp = invoke { i64, ptr } @_RNvMs7_NtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @38)
          to label %bb.ad unwind label %.thread137.thread154 ; 2 uses

.thread137.thread154:                             ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread127

.thread156:                                       ; preds = %bb.ao
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
  ], !prof !20

default.unreachable:                              ; preds = %bb.at, %bb.am, %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc89 unwind label %3

.noexc89:                                         ; preds = %bb.af
  %i.cy = lshr i64 %i.cv, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !9, !noundef !9
  %i.dc = invoke noundef i8 %i.db(i32 noundef %i.cz)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !43

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
  %i.dh = load i8, ptr %i.dg, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.ai:                                            ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %i.ct, i64 31
  %i.dj = load i8, ptr %i.di, align 8, !range !41, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit

bb.aj:                                            ; preds = %bb.ad
  %i.dk = icmp eq ptr %i.ct, null
  br i1 %i.dk, label %.loopexit186, label %bb.ak

.loopexit186:                                     ; preds = %bb.aj, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
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

3:                                                ; preds = %bb.af, %.noexc89
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.ct) #36
          to label %.thread127 unwind label %bb.u

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.noexc89
  %.sroa.0.0.i88 = phi i8 [ %i.dj, %bb.ai ], [ %switch.idx.cast.i.i.i, %bb.ag ], [ %i.dh, %bb.ah ], [ %i.dc, %.noexc89 ]
  %i.dn = icmp eq i8 %.sroa.0.0.i88, 13
  br i1 %i.dn, label %bb.al, label %.loopexit186

bb.al:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshake12MidHandshakeINtNtBI_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %1)
          to label %bb.at unwind label %bb.as

bb.am:                                            ; preds = %.loopexit186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.do = and i64 %i.dm, 3
  switch i64 %i.do, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.an
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.ao
  ], !prof !20

bb.an:                                            ; preds = %bb.am
  %i.dp = icmp ult ptr %i.dl, inttoptr (i64 188978561024 to ptr)
  %i.dq = and i64 %i.dm, 1095216660480
  %i.dr = icmp ne i64 %i.dq, 1095216660480
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.assume(i1 %i.dr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.ao:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %i.dl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !alias.scope !4235
  store i8 3, ptr %i.b, align 8, !alias.scope !4235
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit unwind label %.thread156

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.ao, %bb.am, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %.loopexit186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %.thread144 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.ap
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.du)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

bb.as:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %i.ct) #36
          to label %.thread144 unwind label %bb.u

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
  ], !prof !20

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
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !4236
  store i8 3, ptr %i.a, align 8, !alias.scope !4236
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ec)
  br label %.critedge

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshPShd8ZVvJf_6rustls6vecbuf14ChunkVecBufferECshnt8FRa5Rut_11native_ping.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

.thread162:                                       ; preds = %bb.aw
  br i1 %.sroa.060.0133161, label %bb.ax, label %.thread144

.thread127:                                       ; preds = %.thread137.thread154, %3
  %.pn.pn136 = phi { ptr, i32 } [ %i.cq, %.thread137.thread154 ], [ %4, %3 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping(ptr nonnull %.sroa.107.0.copyload) #36
          to label %bb.aw unwind label %bb.u

bb.aw:                                            ; preds = %.thread127, %.thread156
  %.sroa.060.0133161 = phi i1 [ false, %.thread156 ], [ true, %.thread127 ]
  %.pn.pn135160 = phi { ptr, i32 } [ %i.cr, %.thread156 ], [ %.pn.pn136, %.thread127 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection13AcceptedAlertECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #36
          to label %.thread162 unwind label %bb.u

bb.ax:                                            ; preds = %.thread162
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #36
          to label %.thread144 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherIBW_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1h_6server9TlsStreamB22_EEB22_ENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1208) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %0, align 8, !range !16, !noundef !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call { i64, ptr } @_RNvXs0_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef %3)
  br label %_RNvXNtNtNtCsl9hx9jpF0W9_12futures_util6future6either6if_stdINtB4_6EitherINtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1d_6server9TlsStreamB1Y_EENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  %.not.i = icmp eq i64 %i.d, 2
  br i1 %.not.i, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !range !46, !alias.scope !4256, !noalias !4257, !noundef !9 ; 2 uses
  %i.k = and i8 %i.j, 1
  store ptr %0, ptr %i.c, align 8, !noalias !4255
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4255
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.k, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !4255
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %.preheader.i.i.i
    i8 1, label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping.exit.i
    i8 2, label %.preheader.i.i.i
    i8 3, label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6serverINtB5_9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping.exit.i
  ]

default.unreachable:                              ; preds = %bb.u, %bb.q, %bb.h, %bb.d
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 859 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 854
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.old.i.i = load i64, ptr %i.l, align 8, !alias.scope !4256, !noalias !4259, !noundef !9
  %.old15.i.i = icmp eq i64 %.old.i.i, 0
  br i1 %.old15.i.i, label %.preheader.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i.i, %.preheader.i.i.i
  %.sroa.010.0.i.i.i = phi i1 [ false, %.preheader.i.i.i ], [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.f ], [ false, %.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4260
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i8, ptr %i.m, align 1, !range !28, !alias.scope !4256, !noalias !4259, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.s = load i8, ptr %i.r, align 4, !range !28, !alias.scope !4256, !noalias !4259, !noundef !9
  store ptr %i.p, ptr %i.b, align 8, !noalias !4260
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.q, ptr %i.t, align 8, !noalias !4260
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.s, ptr %i.u, align 1, !noalias !4260
  %i.v = call { i64, ptr } @_RNvXs2_NtNtCshPShd8ZVvJf_6rustls4conn10connectionNtB5_6ReaderNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !4261 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.o

.preheader.i.i:                                   ; preds = %.preheader.i.i.i, %bb.g
  %i.aa = load i8, ptr %i.m, align 1, !range !28, !alias.scope !4256, !noalias !4259, !noundef !9
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.ac = load i8, ptr %i.n, align 2, !range !28, !alias.scope !4256, !noalias !4259, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i64, ptr %i.o, align 8, !alias.scope !4256, !noalias !4257
  %i.af = icmp eq i64 %i.ae, 0
  %or.cond19.i.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond19.i.i, label %bb.f, label %.loopexit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = call fastcc { i64, ptr } @_RNvMs_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB4_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionE7read_ioCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !noalias !4262 ; 3 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  switch i64 %i.ah, label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping.exit.i.i [
    i64 2, label %.loopexit.i.i.i
    i64 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = icmp ne ptr %i.ai, null
  %i.ak = load i64, ptr %i.l, align 8, !alias.scope !4256, !noalias !4257
  %i.al = icmp eq i64 %i.ak, 0
  %or.cond16.i.i = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond16.i.i, label %.preheader.i.i, label %.loopexit.i.i.i

bb.h:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.am = and i64 %i.y, 3                         ; 2 uses
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 0, label %bb.k
    i64 1, label %bb.l
  ], !prof !20

bb.i:                                             ; preds = %bb.h
  %i.an = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.m, !noalias !4261

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.ao = lshr i64 %i.y, 32
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !4261, !nonnull !9, !noundef !9
  %i.as = invoke noundef i8 %i.ar(i32 noundef %i.ap)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i unwind label %bb.m, !noalias !4261, !inline_history !43

bb.j:                                             ; preds = %bb.h
  %i.at = lshr i64 %i.y, 32
  %i.au = icmp ult ptr %i.x, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.at to i8 ; 2 uses
  %i.av = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.av)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !range !41, !noalias !4261, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.x, i64 31
  %i.az = load i8, ptr %i.ay, align 8, !range !41, !noalias !4261, !noundef !9
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.m:                                             ; preds = %bb.p, %.noexc.i.i.i, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping(i64 1, ptr nonnull %i.x) #36
          to label %common.resume.i.i unwind label %bb.t, !noalias !4261

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.az, %bb.l ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.j ], [ %i.ax, %bb.k ], [ %i.as, %.noexc.i.i.i ]
  %i.bb = icmp eq i8 %.sroa.0.0.i.i.i.i, 13
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  br i1 %.sroa.010.0.i.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.7.2.i.i.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.x, %.loopexit.i.i.i ], [ %i.x, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i ]
  %.sroa.04.2.i.i.i = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ 0, %.loopexit.i.i.i ], [ 1, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4260
  %i.bc = insertvalue { i64, ptr } poison, i64 %.sroa.04.2.i.i.i, 0
  %i.bd = insertvalue { i64, ptr } %i.bc, ptr %.sroa.7.2.i.i.i, 1
  br label %_RNvXs0_NtCsgrcu2UPjJtD_14futures_rustls6commonINtB5_6StreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtNtCshPShd8ZVvJf_6rustls6server11server_conn10connection16ServerConnectionENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCshnt8FRa5Rut_11native_ping.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %1, align 8, !alias.scope !4263, !noalias !4264, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !4261, !nonnull !9, !align !11, !noundef !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !4261, !nonnull !9, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !4261, !noundef !9
  invoke void %i.bh(ptr noundef %i.bj)
          to label %bb.q unwind label %bb.m, !noalias !4261

bb.q:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4260
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i
    i64 1, label %bb.s
  ], !prof !20

bb.r:                                             ; preds = %bb.q
  %i.bk = icmp ult ptr %i.x, inttoptr (i64 188978561024 to ptr)
  %i.bl = and i64 %i.y, 1095216660480
  %i.bm = icmp ne i64 %i.bl, 1095216660480
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 %i.bm)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit.i.i.i

end_hunk_3
