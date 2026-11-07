Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.06?download=true
inline.NumInlined: 1314
inline.NumDeleted: 530
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCs4w110Okq5IC_16ipfs_kad_example:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit114 unwind label %bb.ls

bb.lr:                                            ; preds = %bb.lj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit114 unwind label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %bb.lp
  %i.aed = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit114: ; preds = %bb.lj, %bb.lp, %bb.lq, %bb.lr
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.lt:                                            ; preds = %.loopexit
  %i.aee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  br label %.thread

bb.lu:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aef, align 8
  br label %bb.ln

bb.lv:                                            ; preds = %bb.nl, %bb.nj, %bb.mo, %bb.ln
  ret void

.thread:                                          ; preds = %bb.mq, %bb.ll, %bb.ls, %bb.lt, %bb.lw, %.thread228, %bb.mp, %.thread186
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body189, %.thread186 ], [ %i.aee, %bb.lt ], [ %.pn73.ph, %bb.mp ], [ %i.aeg, %bb.lw ], [ %.pn71227, %.thread228 ], [ %i.aes, %bb.mq ], [ %i.aeb, %bb.ll ], [ %i.aed, %bb.ls ]
  resume { ptr, i32 } %.pn75.pn

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.da, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i, %bb.ee, %bb.ef, %bb.ej, %bb.fm, %.thread.i.i.i, %bb.jz, %.body63.i.i, %bb.kd, %bb.kf, %bb.kh, %.thread93.i.i, %bb.kl, %bb.ku, %bb.kw, %bb.lc, %bb.le
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i, %bb.da ], [ %.pn180244.i.i.i, %.thread.i.i.i ], [ %i.sp, %bb.ej ], [ %i.tz, %bb.fm ], [ %i.acp, %bb.kf ], [ %i.si, %bb.ee ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acq, %bb.kh ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.acn, %bb.kd ], [ %i.ack, %bb.jz ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i ], [ %i.ady, %bb.le ], [ %i.si, %bb.ef ], [ %i.adn, %bb.kw ], [ %i.acw, %bb.kl ], [ %i.adl, %bb.ku ], [ %i.adw, %bb.lc ], [ %lpad.loopexit.split-lp775, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(928) %i.db) #25
          to label %.thread unwind label %bb.lo

bb.lw:                                            ; preds = %bb.ma, %bb.mb, %bb.mc
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  br label %.thread

bb.lx:                                            ; preds = %bb.lf
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.mp

bb.ly:                                            ; preds = %bb.lf
  %i.aei = load i8, ptr %i.cu, align 8, !range !34, !noundef !8 ; 3 uses
  switch i8 %i.aei, label %bb.md [
    i8 -2, label %bb.lz
    i8 -1, label %bb.mh
  ]

bb.lz:                                            ; preds = %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(776) %i.cv, i64 776, i1 false)
  %i.aej = load i64, ptr %1, align 8, !range !16, !alias.scope !1738, !noundef !8
  %i.aek = call i64 @llvm.usub.sat.i64(i64 %i.aej, i64 5)
  switch i64 %i.aek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118 [
    i64 0, label %bb.ma
    i64 1, label %bb.mb
    i64 2, label %bb.mc
  ]

bb.ma:                                            ; preds = %bb.lz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118 unwind label %bb.lw

bb.mb:                                            ; preds = %bb.lz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118 unwind label %bb.lw

bb.mc:                                            ; preds = %bb.lz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118 unwind label %bb.lw

bb.md:                                            ; preds = %bb.ly
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.ael = load i64, ptr %1, align 8, !range !16, !alias.scope !1739, !noundef !8
  %i.aem = call i64 @llvm.usub.sat.i64(i64 %i.ael, i64 5)
  switch i64 %i.aem, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122 [
    i64 0, label %bb.me
    i64 1, label %bb.mf
    i64 2, label %bb.mg
  ]

bb.me:                                            ; preds = %bb.md
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122 unwind label %bb.mn

bb.mf:                                            ; preds = %bb.md
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122 unwind label %bb.mn

bb.mg:                                            ; preds = %bb.md
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122 unwind label %bb.mn

bb.mh:                                            ; preds = %bb.ly
  %i.aen = load i64, ptr %1, align 8, !range !16, !alias.scope !1740, !noundef !8
  %i.aeo = call i64 @llvm.usub.sat.i64(i64 %i.aen, i64 5)
  switch i64 %i.aeo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126 [
    i64 0, label %bb.mi
    i64 1, label %bb.mj
    i64 2, label %bb.mk
  ]

bb.mi:                                            ; preds = %bb.mh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126 unwind label %bb.ml

bb.mj:                                            ; preds = %bb.mh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126 unwind label %bb.ml

bb.mk:                                            ; preds = %bb.mh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126 unwind label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mj, %bb.mi
  %i.aep = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  br label %bb.mp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126: ; preds = %bb.mh, %bb.mi, %bb.mj, %bb.mk
  store i64 8, ptr %1, align 8
  br label %bb.mm

bb.mm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv)
  br label %bb.mo

bb.mn:                                            ; preds = %bb.mg, %bb.mf, %bb.me
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs4w110Okq5IC_16ipfs_kad_example(i8 %i.aei, ptr %.sroa.5163.0.copyload) #25
          to label %bb.mp unwind label %bb.lo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit122: ; preds = %bb.md, %bb.me, %bb.mf, %bb.mg
  store i64 8, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aei, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.mm

bb.mo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118, %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit118: ; preds = %bb.lz, %bb.ma, %bb.mb, %bb.mc
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aer, align 8
  br label %bb.mo

bb.mp:                                            ; preds = %bb.mn, %bb.ml, %bb.lx
  %.pn73.ph = phi { ptr, i32 } [ %i.aeh, %bb.lx ], [ %i.aep, %bb.ml ], [ %i.aeq, %bb.mn ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv) #25
          to label %.thread unwind label %bb.lo

bb.mq:                                            ; preds = %bb.mu, %bb.mv, %bb.mw
  %i.aes = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.mr:                                            ; preds = %bb.lg
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.ms:                                            ; preds = %bb.lg
  %i.aeu = load i8, ptr %i.cs, align 8, !range !30, !noundef !8 ; 4 uses
  switch i8 %i.aeu, label %bb.nb [
    i8 -1, label %bb.mt
    i8 6, label %bb.mx
  ]

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aev = load i64, ptr %1, align 8, !range !16, !alias.scope !1741, !noundef !8
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 5)
  switch i64 %i.aew, label %bb.nh [
    i64 0, label %bb.mu
    i64 1, label %bb.mv
    i64 2, label %bb.mw
  ]

bb.mu:                                            ; preds = %bb.mt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nh unwind label %bb.mq

bb.mv:                                            ; preds = %bb.mt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.mq

bb.mw:                                            ; preds = %bb.mt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.mq

bb.mx:                                            ; preds = %bb.ms
  %i.aex = load i64, ptr %1, align 8, !range !16, !alias.scope !1742, !noundef !8
  %i.aey = call i64 @llvm.usub.sat.i64(i64 %i.aex, i64 5)
  switch i64 %i.aey, label %bb.ni [
    i64 0, label %bb.my
    i64 1, label %bb.mz
    i64 2, label %bb.na
  ]

bb.my:                                            ; preds = %bb.mx
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.ni unwind label %bb.nf

bb.mz:                                            ; preds = %bb.mx
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.ni unwind label %bb.nf

bb.na:                                            ; preds = %bb.mx
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ni unwind label %bb.nf

bb.nb:                                            ; preds = %bb.ms
  %3 = icmp ne i8 %i.aeu, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.aez = load i64, ptr %1, align 8, !range !16, !alias.scope !1743, !noundef !8
  %i.afa = call i64 @llvm.usub.sat.i64(i64 %i.aez, i64 5)
  switch i64 %i.afa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138 [
    i64 0, label %bb.nc
    i64 1, label %bb.nd
    i64 2, label %bb.ne
  ]

bb.nc:                                            ; preds = %bb.nb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138 unwind label %bb.ng

bb.nd:                                            ; preds = %bb.nb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138 unwind label %bb.ng

bb.ne:                                            ; preds = %bb.nb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138 unwind label %bb.ng

bb.nf:                                            ; preds = %bb.my, %bb.mz, %bb.na
  %i.afb = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.afc, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs4w110Okq5IC_16ipfs_kad_example(i8 6, ptr %.val78) #25
          to label %.thread228 unwind label %bb.lo

bb.ng:                                            ; preds = %bb.ne, %bb.nd, %bb.nc
  %i.afd = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECs4w110Okq5IC_16ipfs_kad_example(i8 %i.aeu, ptr %.sroa.5172.0.copyload) #25
          to label %.thread228 unwind label %bb.lo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138: ; preds = %bb.nb, %bb.nc, %bb.nd, %bb.ne
  store i64 8, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5170.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aeu, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5172.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nk

bb.nh:                                            ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mt
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afe, align 8
  br label %bb.nj

bb.ni:                                            ; preds = %bb.mx, %bb.my, %bb.mz, %bb.na
  store i64 8, ptr %1, align 8
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nh, %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.lv

bb.nk:                                            ; preds = %bb.ni, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138
  %.sink773 = phi i8 [ -2, %bb.ni ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECs4w110Okq5IC_16ipfs_kad_example.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink773, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.nj

.thread228:                                       ; preds = %bb.nf, %bb.mr, %bb.ng
  %.pn71227 = phi { ptr, i32 } [ %i.afd, %bb.ng ], [ %i.aet, %bb.mr ], [ %i.afb, %bb.nf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #25
          to label %.thread unwind label %bb.lo

bb.nl:                                            ; preds = %bb.b
  store i64 8, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lv
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCskeoOuuhwsQF_12sharded_slab4pageINtB5_6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE8allocateCs4w110Okq5IC_16ipfs_kad_example(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [39 x i8], align 1          ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.g = load i64, ptr %i.b, align 8, !range !14, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !36, !noundef !8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = load i64, ptr %i.e, align 8, !noundef !8
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3J_3ops5range5RangejENvMs2_BW_BT_3newEE11spec_extendCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1, i64 noundef %i.q)
          to label %bb.d unwind label %.body.thread22

.body.thread22:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @74, i64 32, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.513.0..sroa_idx, i8 0, i64 25, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 274877906944, ptr %i.t, align 8
  store ptr @_RNvNvXs5_NtNtCshEYSjulKtIJ_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCskKLDkoKarTP_4core7default7Default7default13NULL_METADATA, ptr %i.c, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.614.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, i64 39, i1 false)
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !1749, !noundef !8 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !17, !alias.scope !1749, !noundef !8
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBT_3cfg13DefaultConfigEE8grow_oneB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.f, !noalias !1750

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !1749, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ad = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE16into_boxed_sliceCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1751
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.val.i = load ptr, ptr %0, align 8, !noalias !1751, !align !9, !noundef !8 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val1.i = load i64, ptr %i.ag, align 8, !noalias !1751 ; 6 uses
  %i.ah = icmp eq ptr %.val.i, null
  %cond = icmp eq i64 %.val1.i, 0
  %or.cond = select i1 %i.ah, i1 true, i1 %cond
  br i1 %or.cond, label %bb.j, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i.i: ; preds = %.lr.ph
  %i.ai = icmp eq i64 %i.ak, %.val1.i
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i24 = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i.i24
  %i.ak = add nuw nsw i64 %.sroa.0.0.i.i.i.i24, 1 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i.i unwind label %bb.h, !noalias !1751

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i.i.i: ; preds = %.lr.ph26
  %i.am = add nuw nsw i64 %.sroa.0.1.i.i.i.i25, 1 ; 2 uses
end_hunk_0
