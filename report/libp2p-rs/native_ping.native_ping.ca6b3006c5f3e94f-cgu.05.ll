Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.05?download=true
inline.NumInlined: 2036
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE17poll_next_inboundCshnt8FRa5Rut_11native_ping:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lq:                                            ; preds = %bb.li
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.adz = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1792) %1, ptr noundef nonnull align 8 dereferenceable(1792) %i.cw, i64 1792, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1792) %1, ptr noundef nonnull align 8 dereferenceable(1792) %i.cw, i64 1792, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aeb, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.aea, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.aec, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.aeo, %bb.mp ], [ %i.adx, %bb.lk ], [ %i.adz, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body63.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread93.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180237.i.i.i, %.thread.i.i.i ], [ %i.sl, %bb.ei ], [ %i.tv, %bb.fl ], [ %i.acl, %bb.ke ], [ %i.se, %bb.ed ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acm, %bb.kg ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.acj, %bb.kc ], [ %i.acg, %bb.jy ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.adu, %bb.ld ], [ %i.se, %bb.ee ], [ %i.adj, %bb.kv ], [ %i.acs, %bb.kk ], [ %i.adh, %bb.kt ], [ %i.ads, %bb.lb ], [ %lpad.loopexit.split-lp697, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1792) %i.db) #29
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.aec = landingpad { ptr, i32 }
          cleanup
  store i64 5, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.529, i64 1640, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.aee = load i8, ptr %i.cu, align 8, !range !41, !noundef !9 ; 3 uses
  switch i8 %i.aee, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(1640) %i.cv, i64 1640, i1 false)
  %i.aef = load i64, ptr %1, align 8, !range !24, !alias.scope !2147, !noundef !9
  %i.aeg = call i64 @llvm.usub.sat.i64(i64 %i.aef, i64 4)
  switch i64 %i.aeg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aeh = load i64, ptr %1, align 8, !range !24, !alias.scope !2148, !noundef !9
  %i.aei = call i64 @llvm.usub.sat.i64(i64 %i.aeh, i64 4)
  switch i64 %i.aei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.aej = load i64, ptr %1, align 8, !range !24, !alias.scope !2149, !noundef !9
  %i.aek = call i64 @llvm.usub.sat.i64(i64 %i.aej, i64 4)
  switch i64 %i.aek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 7, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %i.cv)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.aem = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aee, ptr %.sroa.5163.0.copyload) #29
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 7, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aee, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 5, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.529, i64 1640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aen, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.aed, %bb.lw ], [ %i.ael, %bb.mk ], [ %i.aem, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %i.cv) #29
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.aeq = load i8, ptr %i.cs, align 8, !range !30, !noundef !9 ; 4 uses
  switch i8 %i.aeq, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aer = load i64, ptr %1, align 8, !range !24, !alias.scope !2150, !noundef !9
  %i.aes = call i64 @llvm.usub.sat.i64(i64 %i.aer, i64 4)
  switch i64 %i.aes, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.aet = load i64, ptr %1, align 8, !range !24, !alias.scope !2151, !noundef !9
  %i.aeu = call i64 @llvm.usub.sat.i64(i64 %i.aet, i64 4)
  switch i64 %i.aeu, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.aeq, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.aev = load i64, ptr %1, align 8, !range !24, !alias.scope !2152, !noundef !9
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 4)
  switch i64 %i.aew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1640) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.aex = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.aey, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 6, ptr %.val78) #29
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.aez = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aeq, ptr %.sroa.5172.0.copyload) #29
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 7, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aeq, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afa, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 7, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138
  %.sink695 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink695, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.aez, %bb.nf ], [ %i.aep, %bb.mq ], [ %i.aex, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #29
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 7, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1760) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.532 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.520 = alloca [1608 x i8], align 8        ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [1608 x i8], align 8              ; 9 uses
  %.sroa.0 = alloca [1600 x i8], align 8          ; 6 uses
  %.sroa.5.sroa.0 = alloca [1600 x i8], align 8   ; 5 uses
  %i.o = alloca [1760 x i8], align 8              ; 18 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.o, i64 1616
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1584
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1664 ; 2 uses
  %.sroa.0.1576..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1576
  %.sroa.0.1544..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1544
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1624 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1632 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1712 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1720 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1736 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1688 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1696 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 1704 ; 6 uses
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx90 = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 2 uses
  %.sroa.0.0.copyload.pre116 = load i64, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1544
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre116, %bb.a ], [ %.sroa.0.0.copyload.be, %.backedge ] ; 2 uses
  store i64 8, ptr %1, align 8
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 4)
  switch i64 %i.ac, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %bb.ci
    i64 4, label %bb.ak
  ], !prof !40

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx, i64 1608, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !2206
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !2208

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !2211, !nonnull !9, !noundef !9
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !2212
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2206

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1576..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(1544) %i.o, i64 1544, i1 false), !alias.scope !2208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1544..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2208
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  %i.ah = load ptr, ptr %i.s, align 8, !alias.scope !2215, !nonnull !9, !noundef !9
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2216
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i unwind label %bb.i, !noalias !2206

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB1B_10connection6stream6SharedEEINtNtB4_4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherB1v_EEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2206

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i: ; preds = %bb.h, %bb.g
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCshnt8FRa5Rut_11native_ping:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lq:                                            ; preds = %bb.li
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.adz = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1760) %1, ptr noundef nonnull align 8 dereferenceable(1760) %i.cw, i64 1760, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1760) %1, ptr noundef nonnull align 8 dereferenceable(1760) %i.cw, i64 1760, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aeb, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.aea, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.aec, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.aeo, %bb.mp ], [ %i.adx, %bb.lk ], [ %i.adz, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body63.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread93.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180237.i.i.i, %.thread.i.i.i ], [ %i.sl, %bb.ei ], [ %i.tv, %bb.fl ], [ %i.acl, %bb.ke ], [ %i.se, %bb.ed ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acm, %bb.kg ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.acj, %bb.kc ], [ %i.acg, %bb.jy ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.adu, %bb.ld ], [ %i.se, %bb.ee ], [ %i.adj, %bb.kv ], [ %i.acs, %bb.kk ], [ %i.adh, %bb.kt ], [ %i.ads, %bb.lb ], [ %lpad.loopexit.split-lp697, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1760) %i.db) #29
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.aec = landingpad { ptr, i32 }
          cleanup
  store i64 5, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.529, i64 1608, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.aee = load i8, ptr %i.cu, align 8, !range !41, !noundef !9 ; 3 uses
  switch i8 %i.aee, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(1608) %i.cv, i64 1608, i1 false)
  %i.aef = load i64, ptr %1, align 8, !range !24, !alias.scope !2481, !noundef !9
  %i.aeg = call i64 @llvm.usub.sat.i64(i64 %i.aef, i64 4)
  switch i64 %i.aeg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aeh = load i64, ptr %1, align 8, !range !24, !alias.scope !2482, !noundef !9
  %i.aei = call i64 @llvm.usub.sat.i64(i64 %i.aeh, i64 4)
  switch i64 %i.aei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.aej = load i64, ptr %1, align 8, !range !24, !alias.scope !2483, !noundef !9
  %i.aek = call i64 @llvm.usub.sat.i64(i64 %i.aej, i64 4)
  switch i64 %i.aek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 7, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %i.cv)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.aem = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aee, ptr %.sroa.5163.0.copyload) #29
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 7, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aee, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 5, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.529, i64 1608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aen, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.aed, %bb.lw ], [ %i.ael, %bb.mk ], [ %i.aem, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %i.cv) #29
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.aeq = load i8, ptr %i.cs, align 8, !range !30, !noundef !9 ; 4 uses
  switch i8 %i.aeq, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aer = load i64, ptr %1, align 8, !range !24, !alias.scope !2484, !noundef !9
  %i.aes = call i64 @llvm.usub.sat.i64(i64 %i.aer, i64 4)
  switch i64 %i.aes, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.aet = load i64, ptr %1, align 8, !range !24, !alias.scope !2485, !noundef !9
  %i.aeu = call i64 @llvm.usub.sat.i64(i64 %i.aet, i64 4)
  switch i64 %i.aeu, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.aeq, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.aev = load i64, ptr %1, align 8, !range !24, !alias.scope !2486, !noundef !9
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 4)
  switch i64 %i.aew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.aex = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.aey, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 6, ptr %.val78) #29
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.aez = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aeq, ptr %.sroa.5172.0.copyload) #29
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 7, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aeq, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afa, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 7, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138
  %.sink695 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink695, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.aez, %bb.nf ], [ %i.aep, %bb.mq ], [ %i.aex, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #29
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 7, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(960) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.532 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.520 = alloca [808 x i8], align 8         ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [808 x i8], align 8               ; 9 uses
  %.sroa.0 = alloca [800 x i8], align 8           ; 6 uses
  %.sroa.5.sroa.0 = alloca [800 x i8], align 8    ; 5 uses
  %i.o = alloca [960 x i8], align 8               ; 17 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.o, i64 816
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 864 ; 2 uses
  %.sroa.0.776..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 776
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 824 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 832 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 912 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 920 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 928 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 936 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 888 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 896 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 904 ; 6 uses
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx90 = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %.sroa.0.0.copyload.pre116 = load i64, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre116, %bb.a ], [ %.sroa.0.0.copyload.be, %.backedge ] ; 3 uses
  store i64 -9223372036854775805, ptr %1, align 8
  %i.ac = icmp slt i64 %.sroa.0.0.copyload, -9223372036854775804
  %i.ad = add i64 %.sroa.0.0.copyload, -9223372036854775807
  %i.ae = select i1 %i.ac, i64 %i.ad, i64 0
  switch i64 %i.ae, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %bb.ci
    i64 4, label %bb.ak
  ], !prof !40

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx, i64 808, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(960) %i.o, i64 40, i1 false), !noalias !2540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !2542

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !2545, !nonnull !9, !noundef !9
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !2546
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2540

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.776..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(744) %i.r, i64 744, i1 false), !alias.scope !2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2542
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.aj = load ptr, ptr %i.s, align 8, !alias.scope !2549, !nonnull !9, !noundef !9
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !2550
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i unwind label %bb.i, !noalias !2540

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB1B_10connection6stream6SharedEEINtNtB4_4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherB1v_EEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2540

end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE17poll_next_inboundCshnt8FRa5Rut_11native_ping:bb.a

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.aea = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %1, ptr noundef nonnull align 8 dereferenceable(960) %i.cw, i64 960, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %1, ptr noundef nonnull align 8 dereferenceable(960) %i.cw, i64 960, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aec, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.aeb, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.aed, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.aev, %bb.mp ], [ %i.ady, %bb.lk ], [ %i.aea, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body63.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread93.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.ng, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180237.i.i.i, %.thread.i.i.i ], [ %i.sm, %bb.ei ], [ %i.tw, %bb.fl ], [ %i.acm, %bb.ke ], [ %i.sf, %bb.ed ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acn, %bb.kg ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.ack, %bb.kc ], [ %i.ach, %bb.jy ], [ %i.mz, %bb.bp ], [ %i.mh, %bb.bc ], [ %i.jz, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i ], [ %i.mk, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.nb, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.adt, %bb.ld ], [ %i.sf, %bb.ee ], [ %i.adj, %bb.kv ], [ %i.act, %bb.kk ], [ %i.adh, %bb.kt ], [ %i.adr, %bb.lb ], [ %lpad.loopexit.split-lp697, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(960) %i.db) #29
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.aed = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, i64 808, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.aef = load i8, ptr %i.cu, align 8, !range !41, !noundef !9 ; 3 uses
  switch i8 %i.aef, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(808) %i.cv, i64 808, i1 false)
  %i.aeg = load i64, ptr %1, align 8, !range !25, !alias.scope !2815, !noundef !9 ; 2 uses
  %i.aeh = icmp slt i64 %i.aeg, -9223372036854775804
  %i.aei = add i64 %i.aeg, -9223372036854775807
  %i.aej = select i1 %i.aeh, i64 %i.aei, i64 0
  switch i64 %i.aej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aek = load i64, ptr %1, align 8, !range !25, !alias.scope !2816, !noundef !9 ; 2 uses
  %i.ael = icmp slt i64 %i.aek, -9223372036854775804
  %i.aem = add i64 %i.aek, -9223372036854775807
  %i.aen = select i1 %i.ael, i64 %i.aem, i64 0
  switch i64 %i.aen, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.aeo = load i64, ptr %1, align 8, !range !25, !alias.scope !2817, !noundef !9 ; 2 uses
  %i.aep = icmp slt i64 %i.aeo, -9223372036854775804
  %i.aeq = add i64 %i.aeo, -9223372036854775807
  %i.aer = select i1 %i.aep, i64 %i.aeq, i64 0
  switch i64 %i.aer, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.aes = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %i.cv)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.aet = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aef, ptr %.sroa.5163.0.copyload) #29
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aef, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, i64 808, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aeu, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.aee, %bb.lw ], [ %i.aes, %bb.mk ], [ %i.aet, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %i.cv) #29
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.aev = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.aex = load i8, ptr %i.cs, align 8, !range !30, !noundef !9 ; 4 uses
  switch i8 %i.aex, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aey = load i64, ptr %1, align 8, !range !25, !alias.scope !2818, !noundef !9 ; 2 uses
  %i.aez = icmp slt i64 %i.aey, -9223372036854775804
  %i.afa = add i64 %i.aey, -9223372036854775807
  %i.afb = select i1 %i.aez, i64 %i.afa, i64 0
  switch i64 %i.afb, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.afc = load i64, ptr %1, align 8, !range !25, !alias.scope !2819, !noundef !9 ; 2 uses
  %i.afd = icmp slt i64 %i.afc, -9223372036854775804
  %i.afe = add i64 %i.afc, -9223372036854775807
  %i.aff = select i1 %i.afd, i64 %i.afe, i64 0
  switch i64 %i.aff, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.aex, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.afg = load i64, ptr %1, align 8, !range !25, !alias.scope !2820, !noundef !9 ; 2 uses
  %i.afh = icmp slt i64 %i.afg, -9223372036854775804
  %i.afi = add i64 %i.afg, -9223372036854775807
  %i.afj = select i1 %i.afh, i64 %i.afi, i64 0
  switch i64 %i.afj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.afk = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  %i.afl = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.afl, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 6, ptr %.val78) #29
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.afm = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aex, ptr %.sroa.5172.0.copyload) #29
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aex, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afn, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138
  %.sink695 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECshnt8FRa5Rut_11native_ping.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink695, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.afm, %bb.nf ], [ %i.aew, %bb.mq ], [ %i.afk, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #29
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(928) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.532 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.520 = alloca [776 x i8], align 8         ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [776 x i8], align 8               ; 9 uses
  %.sroa.0 = alloca [768 x i8], align 8           ; 6 uses
  %.sroa.5.sroa.0 = alloca [768 x i8], align 8    ; 5 uses
  %i.o = alloca [928 x i8], align 8               ; 18 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.o, i64 784
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 752
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 832 ; 2 uses
  %.sroa.0.744..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 744
  %.sroa.0.712..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 712
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 792 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 800 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 880 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 888 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 896 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 904 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 856 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 864 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 872 ; 6 uses
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx90 = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %.sroa.0.0.copyload.pre116 = load i64, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 712
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre116, %bb.a ], [ %.sroa.0.0.copyload.be, %.backedge ] ; 2 uses
  store i64 9, ptr %1, align 8
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 5)
  switch i64 %i.ac, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %bb.ci
    i64 4, label %bb.ak
  ], !prof !40

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, i64 776, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !2874
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !2876

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !2879, !nonnull !9, !noundef !9
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !2880
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2874

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.744..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(712) %i.o, i64 712, i1 false), !alias.scope !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.712..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.ah = load ptr, ptr %i.s, align 8, !alias.scope !2883, !nonnull !9, !noundef !9
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2884
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit21.i unwind label %bb.i, !noalias !2874

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB1B_10connection6stream6SharedEEINtNtB4_4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherB1v_EEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.y, !noalias !2874

end_hunk_2
begin_hunk_3_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCshnt8FRa5Rut_11native_ping:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lq:                                            ; preds = %bb.li
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.adz = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aeb, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.aea, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.aec, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.aeo, %bb.mp ], [ %i.adx, %bb.lk ], [ %i.adz, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body63.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread93.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180237.i.i.i, %.thread.i.i.i ], [ %i.sl, %bb.ei ], [ %i.tv, %bb.fl ], [ %i.acl, %bb.ke ], [ %i.se, %bb.ed ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acm, %bb.kg ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.acj, %bb.kc ], [ %i.acg, %bb.jy ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECshnt8FRa5Rut_11native_ping.exit.i.i.i ], [ %i.adu, %bb.ld ], [ %i.se, %bb.ee ], [ %i.adj, %bb.kv ], [ %i.acs, %bb.kk ], [ %i.adh, %bb.kt ], [ %i.ads, %bb.lb ], [ %lpad.loopexit.split-lp697, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(928) %i.db) #29
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.aec = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.aee = load i8, ptr %i.cu, align 8, !range !41, !noundef !9 ; 3 uses
  switch i8 %i.aee, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(776) %i.cv, i64 776, i1 false)
  %i.aef = load i64, ptr %1, align 8, !range !26, !alias.scope !3149, !noundef !9
  %i.aeg = call i64 @llvm.usub.sat.i64(i64 %i.aef, i64 5)
  switch i64 %i.aeg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aeh = load i64, ptr %1, align 8, !range !26, !alias.scope !3150, !noundef !9
  %i.aei = call i64 @llvm.usub.sat.i64(i64 %i.aeh, i64 5)
  switch i64 %i.aei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.aej = load i64, ptr %1, align 8, !range !26, !alias.scope !3151, !noundef !9
  %i.aek = call i64 @llvm.usub.sat.i64(i64 %i.aej, i64 5)
  switch i64 %i.aek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 8, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.aem = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aee, ptr %.sroa.5163.0.copyload) #29
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 8, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aee, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aen, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.aed, %bb.lw ], [ %i.ael, %bb.mk ], [ %i.aem, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv) #29
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.aeq = load i8, ptr %i.cs, align 8, !range !30, !noundef !9 ; 4 uses
  switch i8 %i.aeq, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aer = load i64, ptr %1, align 8, !range !26, !alias.scope !3152, !noundef !9
  %i.aes = call i64 @llvm.usub.sat.i64(i64 %i.aer, i64 5)
  switch i64 %i.aes, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.aet = load i64, ptr %1, align 8, !range !26, !alias.scope !3153, !noundef !9
  %i.aeu = call i64 @llvm.usub.sat.i64(i64 %i.aet, i64 5)
  switch i64 %i.aeu, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.aeq, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.aev = load i64, ptr %1, align 8, !range !26, !alias.scope !3154, !noundef !9
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 5)
  switch i64 %i.aew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.aex = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.aey, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 6, ptr %.val78) #29
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.aez = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECshnt8FRa5Rut_11native_ping(i8 %i.aeq, ptr %.sroa.5172.0.copyload) #29
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 8, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aeq, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afa, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 8, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138
  %.sink695 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECshnt8FRa5Rut_11native_ping.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink695, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.aez, %bb.nf ], [ %i.aep, %bb.mq ], [ %i.aex, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #29
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 8, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtCsjouRnuJWSBB_5yamux10connectionINtB5_6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBR_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE23make_new_inbound_streamCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1792) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsgV0iE8Xkxiy_15futures_channel4mpsc7channelNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef 10)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %.sroa.511.0..sroa_idx, align 4
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB7_6stream11into_future12StreamFutureINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB2c_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB2c_10connection13StreamCommandEEEE4pushCshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !12, !noundef !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1752
  %i.p = load ptr, ptr %i.o, align 8
  store ptr null, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  invoke void %i.r(ptr noundef %i.p)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.t = load i32, ptr %i.s, align 8, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1720
  %.val = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %.val16 = load ptr, ptr %i.v, align 8           ; 3 uses
  %i.w = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.y = atomicrmw add ptr %.val16, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1736 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !9, !noundef !9
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.aa, align 8, !nonnull !9, !noundef !9
  call void @_RNvMs1_NtNtCsjouRnuJWSBB_5yamux10connection6streamNtB5_6Stream11new_inbound(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i32 noundef %2, i32 noundef %i.t, ptr noundef nonnull %i.f, i32 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %.val, ptr noundef nonnull %.val16, ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.r, %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.p:                                             ; preds = %bb.g, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.q unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECshnt8FRa5Rut_11native_ping.exit18: ; preds = %bb.q, %bb.r
end_hunk_3
