Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.05?download=true
inline.NumInlined: 1062
inline.NumDeleted: 337
begin_hunk_0_@_RNvMs2_Cs1dRmD0u5Uiv_12libp2p_yamuxINtB5_5MuxerINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBK_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_innerCsiLZOIpitoQl_15metrics_example:bb.a
  %i.aee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1687
  unreachable

bb.ls:                                            ; preds = %bb.lm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit114.i unwind label %bb.lv, !noalias !1687

bb.lt:                                            ; preds = %bb.lm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit114.i unwind label %bb.lv, !noalias !1687

bb.lu:                                            ; preds = %bb.lm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit114.i unwind label %bb.lv, !noalias !1687

bb.lv:                                            ; preds = %bb.lu, %bb.lt, %bb.ls
  %i.aef = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i, i64 48, i1 false), !noalias !1684
  br label %.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit114.i: ; preds = %bb.lu, %bb.lt, %bb.ls, %bb.lm
  store i64 7, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i, i64 48, i1 false), !noalias !1684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !noalias !1683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1683
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1683
  br label %bb.b

bb.lw:                                            ; preds = %bb.ll, %bb.lk, %bb.lj
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false), !noalias !1684
  br label %.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit: ; preds = %.loopexit.i, %bb.lj, %bb.lk, %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false), !noalias !1684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.lq

.thread.i:                                        ; preds = %.thread228.i, %bb.mr, %bb.mq, %bb.lx, %.thread186.i, %bb.lw, %bb.lv, %bb.lo
  %.pn75.pn.i = phi { ptr, i32 } [ %eh.lpad-body189.i, %.thread186.i ], [ %i.aeg, %bb.lw ], [ %.pn73.ph.i, %bb.mq ], [ %i.aeh, %bb.lx ], [ %.pn71227.i, %.thread228.i ], [ %i.aes, %bb.mr ], [ %i.aed, %bb.lo ], [ %i.aef, %bb.lv ]
  resume { ptr, i32 } %.pn75.pn.i

.thread186.i:                                     ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.le, %bb.lc, %bb.kw, %bb.ku, %bb.kl, %.thread94.i.i.i, %bb.kh, %bb.kf, %bb.kd, %.body64.i.i.i, %bb.jz, %.thread.i.i.i.i, %bb.fm, %bb.ej, %bb.ef, %bb.ee, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, %bb.da, %bb.bv, %bb.br, %bb.bp, %bb.bg, %bb.bc, %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsiLZOIpitoQl_15metrics_example.exit.i.i.i, %bb.t
  %eh.lpad-body189.i = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i.i, %bb.da ], [ %.pn180237.i.i.i.i, %.thread.i.i.i.i ], [ %i.sp, %bb.ej ], [ %i.tz, %bb.fm ], [ %i.acp, %bb.kf ], [ %i.si, %bb.ee ], [ %eh.lpad-body65.i.i.i, %.body64.i.i.i ], [ %i.acq, %bb.kh ], [ %.pn97.i.i.i, %.thread94.i.i.i ], [ %i.acn, %bb.kd ], [ %i.ack, %bb.jz ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsiLZOIpitoQl_15metrics_example.exit.i.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsiLZOIpitoQl_15metrics_example.exit.i.i.i.i ], [ %i.ady, %bb.le ], [ %i.si, %bb.ef ], [ %i.adn, %bb.kw ], [ %i.acw, %bb.kl ], [ %i.adl, %bb.ku ], [ %i.adw, %bb.lc ], [ %lpad.loopexit.split-lp592, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(928) %i.db) #26
          to label %.thread.i unwind label %bb.lr, !noalias !1687

bb.lx:                                            ; preds = %bb.md, %bb.mc, %bb.mb
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529.i, i64 776, i1 false), !noalias !1684
  br label %.thread.i

bb.ly:                                            ; preds = %bb.lf
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.lz:                                            ; preds = %bb.lf
  %i.aej = load i8, ptr %i.cu, align 8, !range !42, !noalias !1683, !noundef !12 ; 3 uses
  switch i8 %i.aej, label %bb.me [
    i8 -2, label %bb.ma
    i8 -1, label %bb.mi
  ]

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529.i, ptr noundef nonnull align 8 dereferenceable(776) %i.cv, i64 776, i1 false), !noalias !1683
  %i.aek = load i64, ptr %1, align 8, !range !33, !alias.scope !1753, !noundef !12
  %i.ael = call i64 @llvm.usub.sat.i64(i64 %i.aek, i64 5)
  switch i64 %i.ael, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i [
    i64 0, label %bb.mb
    i64 1, label %bb.mc
    i64 2, label %bb.md
  ]

bb.mb:                                            ; preds = %bb.ma
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i unwind label %bb.lx, !noalias !1687

bb.mc:                                            ; preds = %bb.ma
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i unwind label %bb.lx, !noalias !1687

bb.md:                                            ; preds = %bb.ma
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i unwind label %bb.lx, !noalias !1687

bb.me:                                            ; preds = %bb.lz
  %.sroa.5161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload.i = load ptr, ptr %.sroa.5163.0..sroa_idx.i, align 8, !noalias !1683 ; 2 uses
  %i.aem = load i64, ptr %1, align 8, !range !33, !alias.scope !1754, !noundef !12
  %i.aen = call i64 @llvm.usub.sat.i64(i64 %i.aem, i64 5)
  switch i64 %i.aen, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i [
    i64 0, label %bb.mf
    i64 1, label %bb.mg
    i64 2, label %bb.mh
  ]

bb.mf:                                            ; preds = %bb.me
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i unwind label %bb.mo, !noalias !1687

bb.mg:                                            ; preds = %bb.me
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i unwind label %bb.mo, !noalias !1687

bb.mh:                                            ; preds = %bb.me
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i unwind label %bb.mo, !noalias !1687

bb.mi:                                            ; preds = %bb.lz
  %i.aeo = load i64, ptr %1, align 8, !range !33, !alias.scope !1755, !noundef !12
  %i.aep = call i64 @llvm.usub.sat.i64(i64 %i.aeo, i64 5)
  switch i64 %i.aep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i [
    i64 0, label %bb.mj
    i64 1, label %bb.mk
    i64 2, label %bb.ml
  ]

bb.mj:                                            ; preds = %bb.mi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i unwind label %bb.mm, !noalias !1687

bb.mk:                                            ; preds = %bb.mi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i unwind label %bb.mm, !noalias !1687

bb.ml:                                            ; preds = %bb.mi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i unwind label %bb.mm, !noalias !1687

bb.mm:                                            ; preds = %bb.ml, %bb.mk, %bb.mj
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8, !alias.scope !1681
  br label %bb.mq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i: ; preds = %bb.ml, %bb.mk, %bb.mj, %bb.mi
  store i64 8, ptr %1, align 8, !alias.scope !1681
  br label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i
  %.sroa.1170.2 = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i ]
  %.sroa.9.2 = phi ptr [ %.sroa.5163.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit126.i ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv), !noalias !1687
  br label %bb.mp

bb.mo:                                            ; preds = %bb.mh, %bb.mg, %bb.mf
  %i.aer = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8, !alias.scope !1681
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsiLZOIpitoQl_15metrics_example(i8 %i.aej, ptr %.sroa.5163.0.copyload.i) #26
          to label %bb.mq unwind label %bb.lr, !noalias !1687

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit122.i: ; preds = %bb.mh, %bb.mg, %bb.mf, %bb.me
  store i64 8, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx.i, i64 7, i1 false)
  br label %bb.mn

bb.mp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i, %bb.mn
  %.sroa.1170.3 = phi i8 [ %.sroa.1170.2, %bb.mn ], [ -3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i ]
  %.sroa.9.3 = phi ptr [ %.sroa.9.2, %bb.mn ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !1683
  br label %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit118.i: ; preds = %bb.md, %bb.mc, %bb.mb, %bb.ma
  store i64 6, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529.i, i64 776, i1 false), !noalias !1684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529.i)
  br label %bb.mp

bb.mq:                                            ; preds = %bb.mo, %bb.mm, %bb.ly
  %.pn73.ph.i = phi { ptr, i32 } [ %i.aei, %bb.ly ], [ %i.aeq, %bb.mm ], [ %i.aer, %bb.mo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv) #26
          to label %.thread.i unwind label %bb.lr, !noalias !1687

bb.mr:                                            ; preds = %bb.mx, %bb.mw, %bb.mv
  %i.aes = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552.i, i64 48, i1 false), !noalias !1684
  br label %.thread.i

bb.ms:                                            ; preds = %bb.lg
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %.thread228.i

bb.mt:                                            ; preds = %bb.lg
  %i.aeu = load i8, ptr %i.cs, align 8, !range !23, !noalias !1683, !noundef !12 ; 5 uses
  %3 = icmp eq i8 %i.aeu, -1
  br i1 %3, label %bb.mu, label %4

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false), !noalias !1683
  %i.aev = load i64, ptr %1, align 8, !range !33, !alias.scope !1756, !noundef !12
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 5)
  switch i64 %i.aew, label %bb.ni [
    i64 0, label %bb.mv
    i64 1, label %bb.mw
    i64 2, label %bb.mx
  ]

bb.mv:                                            ; preds = %bb.mu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.ni unwind label %bb.mr, !noalias !1687

bb.mw:                                            ; preds = %bb.mu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %bb.ni unwind label %bb.mr, !noalias !1687

bb.mx:                                            ; preds = %bb.mu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %bb.ni unwind label %bb.mr, !noalias !1687

4:                                                ; preds = %bb.mt
  %5 = icmp ne i8 %i.aeu, 4
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i8 %i.aeu, 6
  br i1 %6, label %bb.my, label %bb.nc

bb.my:                                            ; preds = %4
  %i.aex = load i64, ptr %1, align 8, !range !33, !alias.scope !1757, !noundef !12
  %i.aey = call i64 @llvm.usub.sat.i64(i64 %i.aex, i64 5)
  switch i64 %i.aey, label %bb.nj [
    i64 0, label %bb.mz
    i64 1, label %bb.na
    i64 2, label %bb.nb
  ]

bb.mz:                                            ; preds = %bb.my
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nj unwind label %bb.ng, !noalias !1687

bb.na:                                            ; preds = %bb.my
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %bb.nj unwind label %bb.ng, !noalias !1687

bb.nb:                                            ; preds = %bb.my
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %bb.nj unwind label %bb.ng, !noalias !1687

bb.nc:                                            ; preds = %4
  %.sroa.5170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload.i = load ptr, ptr %.sroa.5172.0..sroa_idx.i, align 8, !noalias !1683 ; 2 uses
  %i.aez = load i64, ptr %1, align 8, !range !33, !alias.scope !1758, !noundef !12
  %i.afa = call i64 @llvm.usub.sat.i64(i64 %i.aez, i64 5)
  switch i64 %i.afa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i [
    i64 0, label %bb.nd
    i64 1, label %bb.ne
    i64 2, label %bb.nf
  ]

bb.nd:                                            ; preds = %bb.nc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i unwind label %bb.nh, !noalias !1687

bb.ne:                                            ; preds = %bb.nc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i unwind label %bb.nh, !noalias !1687

bb.nf:                                            ; preds = %bb.nc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i unwind label %bb.nh, !noalias !1687

bb.ng:                                            ; preds = %bb.nb, %bb.na, %bb.mz
  %i.afb = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8, !alias.scope !1681
  %i.afc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78.i = load ptr, ptr %i.afc, align 8, !noalias !1683
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsiLZOIpitoQl_15metrics_example(i8 6, ptr %.val78.i) #26
          to label %.thread228.i unwind label %bb.lr, !noalias !1687

bb.nh:                                            ; preds = %bb.nf, %bb.ne, %bb.nd
  %i.afd = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8, !alias.scope !1681
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsiLZOIpitoQl_15metrics_example(i8 %i.aeu, ptr %.sroa.5172.0.copyload.i) #26
          to label %.thread228.i unwind label %bb.lr, !noalias !1687

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i: ; preds = %bb.nf, %bb.ne, %bb.nd, %bb.nc
  store i64 8, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx.i, i64 7, i1 false)
  br label %bb.nl

bb.ni:                                            ; preds = %bb.mx, %bb.mw, %bb.mv, %bb.mu
  store i64 7, ptr %1, align 8, !alias.scope !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552.i, i64 48, i1 false), !noalias !1684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.i)
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nb, %bb.na, %bb.mz, %bb.my
  store i64 8, ptr %1, align 8, !alias.scope !1681
  br label %bb.nl

bb.nk:                                            ; preds = %bb.nl, %bb.ni
  %.sroa.1170.1 = phi i8 [ -3, %bb.ni ], [ %.sroa.1170.0, %bb.nl ]
  %.sroa.9.1 = phi ptr [ undef, %bb.ni ], [ %.sroa.9.0, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1683
  br label %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit

bb.nl:                                            ; preds = %bb.nj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i
  %.sroa.1170.0 = phi i8 [ -2, %bb.nj ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i ]
  %.sroa.9.0 = phi ptr [ undef, %bb.nj ], [ %.sroa.5172.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsiLZOIpitoQl_15metrics_example.exit138.i ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct), !noalias !1687
  br label %bb.nk

.thread228.i:                                     ; preds = %bb.nh, %bb.ng, %bb.ms
  %.pn71227.i = phi { ptr, i32 } [ %i.afd, %bb.nh ], [ %i.aet, %bb.ms ], [ %i.afb, %bb.ng ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #26
          to label %.thread.i unwind label %bb.lr, !noalias !1687

_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %bb.b
  store i64 8, ptr %1, align 8, !alias.scope !1681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.nm

_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.lq, %bb.mp, %bb.nk
  %.sroa.1170.5 = phi i8 [ %.sroa.1170.4, %bb.lq ], [ %.sroa.1170.3, %bb.mp ], [ %.sroa.1170.1, %bb.nk ] ; 2 uses
  %.sroa.9.5 = phi ptr [ %.sroa.9.4, %bb.lq ], [ %.sroa.9.3, %bb.mp ], [ %.sroa.9.1, %bb.nk ]
  %.sroa.067.5 = phi i8 [ %.sroa.067.4, %bb.lq ], [ %i.aej, %bb.mp ], [ %i.aeu, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %i.afe = icmp eq i8 %.sroa.1170.5, -3
  br i1 %i.afe, label %bb.nq, label %bb.nm

bb.nm:                                            ; preds = %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit.thread, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit
  %.sroa.067.5145 = phi i8 [ undef, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.067.5, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit ] ; 2 uses
  %.sroa.9.5144 = phi ptr [ undef, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.9.5, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit ] ; 2 uses
  %.sroa.1170.5143 = phi i8 [ -2, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.1170.5, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit ] ; 2 uses
  switch i8 %.sroa.1170.5143, label %bb.np [
    i8 -2, label %bb.nn
    i8 -1, label %bb.no
  ]

bb.nn:                                            ; preds = %bb.nm
  store i8 6, ptr %0, align 8
  br label %bb.nq

bb.no:                                            ; preds = %bb.nm
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.059.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  store i8 %.sroa.067.5145, ptr %0, align 8
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.5144, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8
  br label %bb.nq

bb.np:                                            ; preds = %bb.nm
  %.sroa.036.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.036.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21, i64 7, i1 false)
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.036.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  store i8 %.sroa.067.5145, ptr %0, align 8
  %.sroa.036.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.5144, ptr %.sroa.036.sroa.5.0..sroa_idx, align 8
  br label %bb.nq

bb.nq:                                            ; preds = %bb.nn, %bb.no, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit, %bb.np
  %.sroa.1170.5143.sink = phi i8 [ %.sroa.1170.5143, %bb.np ], [ -1, %bb.no ], [ -1, %bb.nn ], [ -2, %_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsiLZOIpitoQl_15metrics_example.exit ]
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.1170.5143.sink, ptr %.sroa.437.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE11new_checkedCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1761
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.e, align 8, !noalias !1761, !noundef !12 ; 2 uses
  store i64 %.val1.i.i, ptr %i.b, align 8, !noalias !1761
  %i.f = icmp ult i64 %.val1.i.i, 4
  br i1 %i.f, label %.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !alias.scope !1761
  br label %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1761
  store ptr %i.b, ptr %i.a, align 8, !noalias !1761
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1761
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @65, ptr %i.g, align 8, !noalias !1761
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1761
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @89, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1761
  br label %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit

_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.b, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1761
  call void @_RNvXs_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtNtCskKLDkoKarTP_4core6result6ResultuNtB4_11DecodeErrorEINtB4_12ErrorContextReE7contextCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = load i64, ptr %i.d, align 8, !range !31, !noundef !12
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core5errorINtB5_11ErrorBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE11new_checkedCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1766
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.j, align 8, !noalias !1766, !noundef !12 ; 3 uses
  store i64 %.val1.i.i, ptr %i.f, align 8, !noalias !1766
  %i.k = icmp ult i64 %.val1.i.i, 16
  br i1 %i.k, label %.split35.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef i32 @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE6lengthCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !1765
  %i.m = zext i32 %i.l to i64
  %i.n = icmp ult i64 %.val1.i.i, %i.m
  br i1 %i.n, label %.split31.i, label %bb.c

.split35.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1766
  store ptr %i.f, ptr %i.e, align 8, !noalias !1766
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1766
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @103, i64 8), ptr %i.o, align 8, !noalias !1766
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1766
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @104, ptr noundef nonnull %i.e), !noalias !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1766
  br label %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef i32 @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE6lengthCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !1765
  %i.q = icmp ult i32 %i.p, 16
  br i1 %i.q, label %.split.i, label %bb.d

.split31.i:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1766
  %i.r = call noundef i32 @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE6lengthCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !1765
  store i32 %i.r, ptr %i.d, align 4, !noalias !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1766
  store ptr %i.d, ptr %i.c, align 8, !noalias !1766
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1766
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.s, align 8, !noalias !1766
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !1766
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @102, ptr noundef nonnull %i.c), !noalias !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1766
  br label %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.g, align 8, !alias.scope !1765
  br label %_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE19check_buffer_lengthCsiLZOIpitoQl_15metrics_example.exit

.split.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1766
  %i.t = call noundef i32 @_RNvMs6_NtCsgUwh0qa7Dto_19netlink_packet_core6bufferINtB5_13NetlinkBufferRRShE6lengthCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i), !noalias !1765
  store i32 %i.t, ptr %i.b, align 4, !noalias !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1766
  store ptr %i.b, ptr %i.a, align 8, !noalias !1766
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !1766
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.u, align 8, !noalias !1766
end_hunk_0
