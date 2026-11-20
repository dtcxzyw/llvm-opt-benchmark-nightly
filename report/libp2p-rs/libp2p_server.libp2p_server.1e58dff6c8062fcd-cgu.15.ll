Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.15?download=true
inline.NumInlined: 2449
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE17poll_next_inboundCs2Bxje7pdMIr_13libp2p_server:bb.a

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.afj = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.afk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %1, ptr noundef nonnull align 8 dereferenceable(960) %i.cx, i64 960, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %1, ptr noundef nonnull align 8 dereferenceable(960) %i.cx, i64 960, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afl, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.afk, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.afm, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.age, %bb.mp ], [ %i.afh, %bb.lk ], [ %i.afj, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body71.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread108.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.op, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180278.i.i.i, %.thread.i.i.i ], [ %i.tv, %bb.ei ], [ %i.vf, %bb.fl ], [ %i.adv, %bb.ke ], [ %i.to, %bb.ed ], [ %eh.lpad-body72.i.i, %.body71.i.i ], [ %i.adw, %bb.kg ], [ %.pn111.i.i, %.thread108.i.i ], [ %i.adt, %bb.kc ], [ %i.adq, %bb.jy ], [ %i.oi, %bb.bp ], [ %i.nq, %bb.bc ], [ %i.li, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %i.nt, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.ok, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %i.afc, %bb.ld ], [ %i.to, %bb.ee ], [ %i.aes, %bb.kv ], [ %i.aec, %bb.kk ], [ %i.aeq, %bb.kt ], [ %i.afa, %bb.lb ], [ %lpad.loopexit.split-lp712, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(960) %i.dc) #32
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.afm = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, i64 808, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.afo = load i8, ptr %i.cv, align 8, !range !49, !noundef !11 ; 3 uses
  switch i8 %i.afo, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(808) %i.cw, i64 808, i1 false)
  %i.afp = load i64, ptr %1, align 8, !range !22, !alias.scope !2588, !noundef !11 ; 2 uses
  %i.afq = icmp slt i64 %i.afp, -9223372036854775804
  %i.afr = add i64 %i.afp, -9223372036854775807
  %i.afs = select i1 %i.afq, i64 %i.afr, i64 0
  switch i64 %i.afs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aft = load i64, ptr %1, align 8, !range !22, !alias.scope !2589, !noundef !11 ; 2 uses
  %i.afu = icmp slt i64 %i.aft, -9223372036854775804
  %i.afv = add i64 %i.aft, -9223372036854775807
  %i.afw = select i1 %i.afu, i64 %i.afv, i64 0
  switch i64 %i.afw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.afx = load i64, ptr %1, align 8, !range !22, !alias.scope !2590, !noundef !11 ; 2 uses
  %i.afy = icmp slt i64 %i.afx, -9223372036854775804
  %i.afz = add i64 %i.afx, -9223372036854775807
  %i.aga = select i1 %i.afy, i64 %i.afz, i64 0
  switch i64 %i.aga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.agb = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %i.cw)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.agc = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 %i.afo, ptr %.sroa.5163.0.copyload) #32
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.afo, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.529, i64 808, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.agd, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.afn, %bb.lw ], [ %i.agb, %bb.mk ], [ %i.agc, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %i.cw) #32
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.age = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.agg = load i8, ptr %i.ct, align 8, !range !45, !noundef !11 ; 4 uses
  switch i8 %i.agg, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 48, i1 false)
  %i.agh = load i64, ptr %1, align 8, !range !22, !alias.scope !2591, !noundef !11 ; 2 uses
  %i.agi = icmp slt i64 %i.agh, -9223372036854775804
  %i.agj = add i64 %i.agh, -9223372036854775807
  %i.agk = select i1 %i.agi, i64 %i.agj, i64 0
  switch i64 %i.agk, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.agl = load i64, ptr %1, align 8, !range !22, !alias.scope !2592, !noundef !11 ; 2 uses
  %i.agm = icmp slt i64 %i.agl, -9223372036854775804
  %i.agn = add i64 %i.agl, -9223372036854775807
  %i.ago = select i1 %i.agm, i64 %i.agn, i64 0
  switch i64 %i.ago, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.agg, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.agp = load i64, ptr %1, align 8, !range !22, !alias.scope !2593, !noundef !11 ; 2 uses
  %i.agq = icmp slt i64 %i.agp, -9223372036854775804
  %i.agr = add i64 %i.agp, -9223372036854775807
  %i.ags = select i1 %i.agq, i64 %i.agr, i64 0
  switch i64 %i.ags, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(808) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.agt = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val78 = load ptr, ptr %i.agu, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 6, ptr %.val78) #32
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.agv = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 %i.agg, ptr %.sroa.5172.0.copyload) #32
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.agg, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.agw, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138
  %.sink707 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink707, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cu)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.agv, %bb.nf ], [ %i.agf, %bb.mq ], [ %i.agt, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cu) #32
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(928) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.532 = alloca [48 x i8], align 8          ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.520 = alloca [776 x i8], align 8         ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [776 x i8], align 8               ; 9 uses
  %.sroa.0 = alloca [768 x i8], align 8           ; 6 uses
  %.sroa.5.sroa.0 = alloca [768 x i8], align 8    ; 5 uses
  %i.p = alloca [928 x i8], align 8               ; 18 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.p, i64 784
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 752
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 832 ; 2 uses
  %.sroa.0.744..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 744
  %.sroa.0.712..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 712
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 792 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 800 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 880 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 888 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 896 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 904 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 856 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 864 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 872 ; 6 uses
  %.sroa.5.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx91 = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %.sroa.0.0.copyload.pre120 = load i64, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 712
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre120, %bb.a ], [ %.sroa.0.0.copyload.be, %.backedge ] ; 2 uses
  store i64 9, ptr %1, align 8
  %i.ad = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload, i64 5)
  switch i64 %i.ad, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %bb.ci
    i64 4, label %bb.ak
  ], !prof !48

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0.0.copyload, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, i64 776, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !2651
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.e)
          to label %bb.g unwind label %bb.e, !noalias !2653

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  %i.af = load ptr, ptr %i.t, align 8, !alias.scope !2656, !nonnull !11, !noundef !11
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !2657
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECs2Bxje7pdMIr_13libp2p_server.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.y, !noalias !2651

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.744..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !alias.scope !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(712) %i.p, i64 712, i1 false), !alias.scope !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.712..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2653
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.ai = load ptr, ptr %i.t, align 8, !alias.scope !2660, !nonnull !11, !noundef !11
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !2661
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECs2Bxje7pdMIr_13libp2p_server.exit21.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECs2Bxje7pdMIr_13libp2p_server.exit21.i unwind label %bb.i, !noalias !2651

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB1B_10connection6stream6SharedEEINtNtB4_4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherB1v_EEEECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.y, !noalias !2651
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCs2Bxje7pdMIr_13libp2p_server:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit114 unwind label %bb.lr

bb.lq:                                            ; preds = %bb.li
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit114 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.afi = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.b

bb.ls:                                            ; preds = %.loopexit
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cx, i64 928, i1 false)
  br label %.thread

bb.lt:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cx, i64 928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afk, align 8
  br label %bb.lm

bb.lu:                                            ; preds = %bb.nk, %bb.ni, %bb.mn, %bb.lm
  ret void

.thread:                                          ; preds = %bb.mp, %bb.lk, %bb.lr, %bb.ls, %bb.lv, %.thread228, %bb.mo, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.afj, %bb.ls ], [ %.pn73.ph, %bb.mo ], [ %i.afl, %bb.lv ], [ %.pn71227, %.thread228 ], [ %i.afx, %bb.mp ], [ %i.afg, %bb.lk ], [ %i.afi, %bb.lr ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body71.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread108.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.oo, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180278.i.i.i, %.thread.i.i.i ], [ %i.tu, %bb.ei ], [ %i.ve, %bb.fl ], [ %i.adu, %bb.ke ], [ %i.tn, %bb.ed ], [ %eh.lpad-body72.i.i, %.body71.i.i ], [ %i.adv, %bb.kg ], [ %.pn111.i.i, %.thread108.i.i ], [ %i.ads, %bb.kc ], [ %i.adp, %bb.jy ], [ %i.oh, %bb.bp ], [ %i.np, %bb.bc ], [ %i.lh, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %i.ns, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.oj, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %i.afd, %bb.ld ], [ %i.tn, %bb.ee ], [ %i.aes, %bb.kv ], [ %i.aeb, %bb.kk ], [ %i.aeq, %bb.kt ], [ %i.afb, %bb.lb ], [ %lpad.loopexit.split-lp712, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(928) %i.dc) #32
          to label %.thread unwind label %bb.ln

bb.lv:                                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.afl = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  br label %.thread

bb.lw:                                            ; preds = %bb.le
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.lx:                                            ; preds = %bb.le
  %i.afn = load i8, ptr %i.cv, align 8, !range !49, !noundef !11 ; 3 uses
  switch i8 %i.afn, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(776) %i.cw, i64 776, i1 false)
  %i.afo = load i64, ptr %1, align 8, !range !23, !alias.scope !3025, !noundef !11
  %i.afp = call i64 @llvm.usub.sat.i64(i64 %i.afo, i64 5)
  switch i64 %i.afp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.afq = load i64, ptr %1, align 8, !range !23, !alias.scope !3026, !noundef !11
  %i.afr = call i64 @llvm.usub.sat.i64(i64 %i.afq, i64 5)
  switch i64 %i.afr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.afs = load i64, ptr %1, align 8, !range !23, !alias.scope !3027, !noundef !11
  %i.aft = call i64 @llvm.usub.sat.i64(i64 %i.afs, i64 5)
  switch i64 %i.aft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.afu = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 8, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cw)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.afv = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 %i.afn, ptr %.sroa.5163.0.copyload) #32
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 8, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.afn, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afw, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.afm, %bb.lw ], [ %i.afu, %bb.mk ], [ %i.afv, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cw) #32
          to label %.thread unwind label %bb.ln

bb.mp:                                            ; preds = %bb.mt, %bb.mu, %bb.mv
  %i.afx = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mq:                                            ; preds = %bb.lf
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.mr:                                            ; preds = %bb.lf
  %i.afz = load i8, ptr %i.ct, align 8, !range !45, !noundef !11 ; 4 uses
  switch i8 %i.afz, label %bb.na [
    i8 -1, label %bb.ms
    i8 6, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 48, i1 false)
  %i.aga = load i64, ptr %1, align 8, !range !23, !alias.scope !3028, !noundef !11
  %i.agb = call i64 @llvm.usub.sat.i64(i64 %i.aga, i64 5)
  switch i64 %i.agb, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mw:                                            ; preds = %bb.mr
  %i.agc = load i64, ptr %1, align 8, !range !23, !alias.scope !3029, !noundef !11
  %i.agd = call i64 @llvm.usub.sat.i64(i64 %i.agc, i64 5)
  switch i64 %i.agd, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %bb.mr
  %3 = icmp ne i8 %i.afz, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.age = load i64, ptr %1, align 8, !range !23, !alias.scope !3030, !noundef !11
  %i.agf = call i64 @llvm.usub.sat.i64(i64 %i.age, i64 5)
  switch i64 %i.agf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.agg = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val78 = load ptr, ptr %i.agh, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 6, ptr %.val78) #32
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.agi = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs2Bxje7pdMIr_13libp2p_server(i8 %i.afz, ptr %.sroa.5172.0.copyload) #32
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
  store i64 8, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.afz, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nj

bb.ng:                                            ; preds = %bb.mv, %bb.mu, %bb.mt, %bb.ms
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.agj, align 8
  br label %bb.ni

bb.nh:                                            ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 8, ptr %1, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.ng, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.lu

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138
  %.sink707 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs2Bxje7pdMIr_13libp2p_server.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink707, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cu)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.agi, %bb.nf ], [ %i.afy, %bb.mq ], [ %i.agg, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cu) #32
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 8, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtCsjouRnuJWSBB_5yamux10connectionINtB5_6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBR_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE23make_new_inbound_streamCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsgV0iE8Xkxiy_15futures_channel4mpsc7channelNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef 10)
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
  %i.k = load ptr, ptr %i.j, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %.sroa.511.0..sroa_idx, align 4
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB7_6stream11into_future12StreamFutureINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB2c_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB2c_10connection13StreamCommandEEEE4pushCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !15, !noundef !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.p = load ptr, ptr %i.o, align 8
  store ptr null, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  invoke void %i.r(ptr noundef %i.p)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.t = load i32, ptr %i.s, align 8, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 896
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
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.p:                                             ; preds = %bb.g, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %bb.q unwind label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECs2Bxje7pdMIr_13libp2p_server.exit18: ; preds = %bb.q, %bb.r
end_hunk_1
