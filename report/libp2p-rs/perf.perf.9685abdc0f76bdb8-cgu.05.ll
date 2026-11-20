Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/perf.perf.9685abdc0f76bdb8-cgu.05?download=true
inline.NumInlined: 2020
inline.NumDeleted: 874
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCscVe0kjRb1xs_4perf:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit114 unwind label %bb.lr

bb.lq:                                            ; preds = %bb.li
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit114 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %i.adz = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit114: ; preds = %bb.li, %bb.lo, %bb.lp, %bb.lq
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

.thread186:                                       ; preds = %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECscVe0kjRb1xs_4perf.exit.i.i, %bb.w, %bb.bc, %bb.bg, %bb.bp, %bb.br, %bb.bv, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECscVe0kjRb1xs_4perf.exit.i.i.i, %bb.ed, %bb.ee, %bb.ei, %bb.fl, %.thread.i.i.i, %bb.jy, %.body63.i.i, %bb.kc, %bb.ke, %bb.kg, %.thread93.i.i, %bb.kk, %bb.kt, %bb.kv, %bb.lb, %bb.ld
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.nf, %bb.bv ], [ %.pn172.i.i.i, %bb.cz ], [ %.pn180237.i.i.i, %.thread.i.i.i ], [ %i.sl, %bb.ei ], [ %i.tv, %bb.fl ], [ %i.acl, %bb.ke ], [ %i.se, %bb.ed ], [ %eh.lpad-body64.i.i, %.body63.i.i ], [ %i.acm, %bb.kg ], [ %.pn96.i.i, %.thread93.i.i ], [ %i.acj, %bb.kc ], [ %i.acg, %bb.jy ], [ %i.my, %bb.bp ], [ %i.mg, %bb.bc ], [ %i.jy, %bb.t ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECscVe0kjRb1xs_4perf.exit.i.i ], [ %i.mj, %bb.bg ], [ %.pn68.i.i, %bb.w ], [ %i.na, %bb.br ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECscVe0kjRb1xs_4perf.exit.i.i.i ], [ %i.adu, %bb.ld ], [ %i.se, %bb.ee ], [ %i.adj, %bb.kv ], [ %i.acs, %bb.kk ], [ %i.adh, %bb.kt ], [ %i.ads, %bb.lb ], [ %lpad.loopexit.split-lp697, %.thread191.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1760) %i.db) #28
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
  %i.aee = load i8, ptr %i.cu, align 8, !range !54, !noundef !12 ; 3 uses
  switch i8 %i.aee, label %bb.mc [
    i8 -2, label %bb.ly
    i8 -1, label %bb.mg
  ]

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(1608) %i.cv, i64 1608, i1 false)
  %i.aef = load i64, ptr %1, align 8, !range !16, !alias.scope !3988, !noundef !12
  %i.aeg = call i64 @llvm.usub.sat.i64(i64 %i.aef, i64 4)
  switch i64 %i.aeg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118 [
    i64 0, label %bb.lz
    i64 1, label %bb.ma
    i64 2, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118 unwind label %bb.lv

bb.ma:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118 unwind label %bb.lv

bb.mb:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118 unwind label %bb.lv

bb.mc:                                            ; preds = %bb.lx
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8 ; 2 uses
  %i.aeh = load i64, ptr %1, align 8, !range !16, !alias.scope !3989, !noundef !12
  %i.aei = call i64 @llvm.usub.sat.i64(i64 %i.aeh, i64 4)
  switch i64 %i.aei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122 [
    i64 0, label %bb.md
    i64 1, label %bb.me
    i64 2, label %bb.mf
  ]

bb.md:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122 unwind label %bb.mm

bb.me:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122 unwind label %bb.mm

bb.mf:                                            ; preds = %bb.mc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122 unwind label %bb.mm

bb.mg:                                            ; preds = %bb.lx
  %i.aej = load i64, ptr %1, align 8, !range !16, !alias.scope !3990, !noundef !12
  %i.aek = call i64 @llvm.usub.sat.i64(i64 %i.aej, i64 4)
  switch i64 %i.aek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126 [
    i64 0, label %bb.mh
    i64 1, label %bb.mi
    i64 2, label %bb.mj
  ]

bb.mh:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126 unwind label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126 unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126 unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi, %bb.mh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  br label %bb.mo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126: ; preds = %bb.mg, %bb.mh, %bb.mi, %bb.mj
  store i64 7, ptr %1, align 8
  br label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit126 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %i.cv)
  br label %bb.mn

bb.mm:                                            ; preds = %bb.mf, %bb.me, %bb.md
  %i.aem = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECscVe0kjRb1xs_4perf(i8 %i.aee, ptr %.sroa.5163.0.copyload) #28
          to label %bb.mo unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit122: ; preds = %bb.mc, %bb.md, %bb.me, %bb.mf
  store i64 7, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5161.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aee, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5163.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.ml

bb.mn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.lu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit118: ; preds = %bb.ly, %bb.lz, %bb.ma, %bb.mb
  store i64 5, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1608) %.sroa.529, i64 1608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aen, align 8
  br label %bb.mn

bb.mo:                                            ; preds = %bb.mm, %bb.mk, %bb.lw
  %.pn73.ph = phi { ptr, i32 } [ %i.aed, %bb.lw ], [ %i.ael, %bb.mk ], [ %i.aem, %bb.mm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %i.cv) #28
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
  %i.aeq = load i8, ptr %i.cs, align 8, !range !48, !noundef !12 ; 5 uses
  %3 = icmp eq i8 %i.aeq, -1
  br i1 %3, label %bb.ms, label %4

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.aer = load i64, ptr %1, align 8, !range !16, !alias.scope !3991, !noundef !12
  %i.aes = call i64 @llvm.usub.sat.i64(i64 %i.aer, i64 4)
  switch i64 %i.aes, label %bb.ng [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %bb.ng unwind label %bb.mp

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ng unwind label %bb.mp

4:                                                ; preds = %bb.mr
  %5 = icmp ne i8 %i.aeq, 4
  call void @llvm.assume(i1 %5)
  %6 = icmp eq i8 %i.aeq, 6
  br i1 %6, label %bb.mw, label %bb.na

bb.mw:                                            ; preds = %4
  %i.aet = load i64, ptr %1, align 8, !range !16, !alias.scope !3992, !noundef !12
  %i.aeu = call i64 @llvm.usub.sat.i64(i64 %i.aet, i64 4)
  switch i64 %i.aeu, label %bb.nh [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %bb.nh unwind label %bb.ne

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nh unwind label %bb.ne

bb.na:                                            ; preds = %4
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5172.0.copyload = load ptr, ptr %.sroa.5172.0..sroa_idx, align 8 ; 2 uses
  %i.aev = load i64, ptr %1, align 8, !range !16, !alias.scope !3993, !noundef !12
  %i.aew = call i64 @llvm.usub.sat.i64(i64 %i.aev, i64 4)
  switch i64 %i.aew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138 [
    i64 0, label %bb.nb
    i64 1, label %bb.nc
    i64 2, label %bb.nd
  ]

bb.nb:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1760) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138 unwind label %bb.nf

bb.nc:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(1608) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138 unwind label %bb.nf

bb.nd:                                            ; preds = %bb.na
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138 unwind label %bb.nf

bb.ne:                                            ; preds = %bb.mx, %bb.my, %bb.mz
  %i.aex = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.aey, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECscVe0kjRb1xs_4perf(i8 6, ptr %.val78) #28
          to label %.thread228 unwind label %bb.ln

bb.nf:                                            ; preds = %bb.nd, %bb.nc, %bb.nb
  %i.aez = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECscVe0kjRb1xs_4perf(i8 %i.aeq, ptr %.sroa.5172.0.copyload) #28
          to label %.thread228 unwind label %bb.ln

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138: ; preds = %bb.na, %bb.nb, %bb.nc, %bb.nd
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

bb.nj:                                            ; preds = %bb.nh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138
  %.sink695 = phi i8 [ -2, %bb.nh ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECscVe0kjRb1xs_4perf.exit138 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink695, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ni

.thread228:                                       ; preds = %bb.ne, %bb.mq, %bb.nf
  %.pn71227 = phi { ptr, i32 } [ %i.aez, %bb.nf ], [ %i.aep, %bb.mq ], [ %i.aex, %bb.ne ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECscVe0kjRb1xs_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #28
          to label %.thread unwind label %bb.ln

bb.nk:                                            ; preds = %bb.b
  store i64 7, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.lu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtCsl6TgSXZDiW0_4slab4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterEE4lockCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtCsl6TgSXZDiW0_4slab4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterEENCNvMs9_BZ_BW_3new0ECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtCsl6TgSXZDiW0_4slab4SlabIBX_NtNtNtB11_4task4wake5WakerEEEE4lockCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionINtCsl6TgSXZDiW0_4slab4SlabIB1n_NtNtNtB1r_4task4wake5WakerEEEENCNvMs9_BZ_BW_3new0ECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEE4lockCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEENCNvMs9_BZ_BW_3new0ECscVe0kjRb1xs_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequejEE4lockCscVe0kjRb1xs_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
end_hunk_0
