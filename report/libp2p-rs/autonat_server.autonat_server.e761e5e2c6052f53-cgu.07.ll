Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonat_server.autonat_server.e761e5e2c6052f53-cgu.07?download=true
inline.NumInlined: 1276
inline.NumDeleted: 531
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsjRDSj9tZLBn_14autonat_server:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit104 unwind label %bb.mh

bb.mg:                                            ; preds = %bb.ly
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit104 unwind label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf, %bb.me
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit104: ; preds = %bb.ly, %bb.me, %bb.mf, %bb.mg
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.b

bb.mi:                                            ; preds = %.loopexit
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  br label %.thread

bb.mj:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.cw, i64 928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aeq, align 8
  br label %bb.mc

bb.mk:                                            ; preds = %bb.oa, %bb.ny, %bb.nd, %bb.mc
  ret void

.thread:                                          ; preds = %bb.nf, %bb.ma, %bb.mh, %bb.mi, %bb.ml, %.thread218, %bb.ne, %.thread176
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body179, %.thread176 ], [ %i.aep, %bb.mi ], [ %.pn73.ph, %bb.ne ], [ %i.aer, %bb.ml ], [ %.pn71217, %.thread218 ], [ %i.afd, %bb.nf ], [ %i.aem, %bb.ma ], [ %i.aeo, %bb.mh ]
  resume { ptr, i32 } %.pn75.pn

.thread176:                                       ; preds = %.thread181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsjRDSj9tZLBn_14autonat_server.exit.i.i, %bb.w, %bb.bc, %bb.bd, %bb.bi, %bb.br, %bb.bs, %bb.bv, %bb.bz, %bb.ca, %bb.df, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsjRDSj9tZLBn_14autonat_server.exit.i.i.i, %bb.ej, %bb.ek, %bb.eo, %bb.fs, %.thread.i.i.i, %bb.kg, %common.resume.sink.split.i.i, %.body62.i.i, %bb.km, %bb.kp, %bb.kr, %.thread97.i.i, %bb.kw, %bb.lf, %bb.lg, %bb.lj, %bb.lp, %bb.lq, %bb.lt
  %eh.lpad-body179 = phi { ptr, i32 } [ %i.nm, %bb.bz ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %.pn180241.i.i.i, %.thread.i.i.i ], [ %i.sm, %bb.ej ], [ %i.sm, %bb.ek ], [ %i.st, %bb.eo ], [ %i.ue, %bb.fs ], [ %i.acx, %bb.kp ], [ %i.acy, %bb.kr ], [ %eh.lpad-body63.i.i, %.body62.i.i ], [ %i.acu, %bb.km ], [ %.pn100.i.i, %.thread97.i.i ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsjRDSj9tZLBn_14autonat_server.exit.i.i.i ], [ %.pn172.i.i.i, %bb.df ], [ %i.acq, %bb.kg ], [ %i.nm, %bb.ca ], [ %.pn68.i.i, %bb.w ], [ %i.aeg, %bb.lp ], [ %i.adu, %bb.lf ], [ %i.ne, %bb.br ], [ %i.ml, %bb.bc ], [ %i.kd, %bb.t ], [ %i.mp, %bb.bi ], [ %i.ml, %bb.bd ], [ %i.nh, %bb.bv ], [ %i.adu, %bb.lg ], [ %i.aej, %bb.lt ], [ %i.ne, %bb.bs ], [ %i.adx, %bb.lj ], [ %i.adf, %bb.kw ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsjRDSj9tZLBn_14autonat_server.exit.i.i ], [ %i.aeg, %bb.lq ], [ %lpad.loopexit.split-lp1153, %.thread181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(928) %i.db) #28
          to label %.thread unwind label %bb.md

bb.ml:                                            ; preds = %bb.mp, %bb.mq, %bb.mr
  %i.aer = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  br label %.thread

bb.mm:                                            ; preds = %bb.lu
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %bb.ne

bb.mn:                                            ; preds = %bb.lu
  %i.aet = load i8, ptr %i.cu, align 8, !range !36, !noundef !9 ; 3 uses
  switch i8 %i.aet, label %bb.ms [
    i8 -2, label %bb.mo
    i8 -1, label %bb.mw
  ]

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(776) %i.cv, i64 776, i1 false)
  %i.aeu = load i64, ptr %1, align 8, !range !17, !alias.scope !3422, !noundef !9
  %i.aev = call i64 @llvm.usub.sat.i64(i64 %i.aeu, i64 5)
  switch i64 %i.aev, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108 [
    i64 0, label %bb.mp
    i64 1, label %bb.mq
    i64 2, label %bb.mr
  ]

bb.mp:                                            ; preds = %bb.mo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108 unwind label %bb.ml

bb.mq:                                            ; preds = %bb.mo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108 unwind label %bb.ml

bb.mr:                                            ; preds = %bb.mo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108 unwind label %bb.ml

bb.ms:                                            ; preds = %bb.mn
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.5153.0.copyload = load ptr, ptr %.sroa.5153.0..sroa_idx, align 8 ; 2 uses
  %i.aew = load i64, ptr %1, align 8, !range !17, !alias.scope !3423, !noundef !9
  %i.aex = call i64 @llvm.usub.sat.i64(i64 %i.aew, i64 5)
  switch i64 %i.aex, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112 [
    i64 0, label %bb.mt
    i64 1, label %bb.mu
    i64 2, label %bb.mv
  ]

bb.mt:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112 unwind label %bb.nc

bb.mu:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112 unwind label %bb.nc

bb.mv:                                            ; preds = %bb.ms
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112 unwind label %bb.nc

bb.mw:                                            ; preds = %bb.mn
  %i.aey = load i64, ptr %1, align 8, !range !17, !alias.scope !3424, !noundef !9
  %i.aez = call i64 @llvm.usub.sat.i64(i64 %i.aey, i64 5)
  switch i64 %i.aez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116 [
    i64 0, label %bb.mx
    i64 1, label %bb.my
    i64 2, label %bb.mz
  ]

bb.mx:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116 unwind label %bb.na

bb.my:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116 unwind label %bb.na

bb.mz:                                            ; preds = %bb.mw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116 unwind label %bb.na

bb.na:                                            ; preds = %bb.mz, %bb.my, %bb.mx
  %i.afa = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  br label %bb.ne

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116: ; preds = %bb.mw, %bb.mx, %bb.my, %bb.mz
  store i64 8, ptr %1, align 8
  br label %bb.nb

bb.nb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit116 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv)
  br label %bb.nd

bb.nc:                                            ; preds = %bb.mv, %bb.mu, %bb.mt
  %i.afb = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsjRDSj9tZLBn_14autonat_server(i8 %i.aet, ptr %.sroa.5153.0.copyload) #28
          to label %bb.ne unwind label %bb.md

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit112: ; preds = %bb.ms, %bb.mt, %bb.mu, %bb.mv
  store i64 8, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5151.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aet, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5153.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.nb

bb.nd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108, %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.mk

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit108: ; preds = %bb.mo, %bb.mp, %bb.mq, %bb.mr
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afc, align 8
  br label %bb.nd

bb.ne:                                            ; preds = %bb.nc, %bb.na, %bb.mm
  %.pn73.ph = phi { ptr, i32 } [ %i.aes, %bb.mm ], [ %i.afa, %bb.na ], [ %i.afb, %bb.nc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cv) #28
          to label %.thread unwind label %bb.md

bb.nf:                                            ; preds = %bb.nj, %bb.nk, %bb.nl
  %i.afd = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.ng:                                            ; preds = %bb.lv
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %.thread218

bb.nh:                                            ; preds = %bb.lv
  %i.aff = load i8, ptr %i.cs, align 8, !range !30, !noundef !9 ; 4 uses
  switch i8 %i.aff, label %bb.nq [
    i8 -1, label %bb.ni
    i8 6, label %bb.nm
  ]

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  %i.afg = load i64, ptr %1, align 8, !range !17, !alias.scope !3425, !noundef !9
  %i.afh = call i64 @llvm.usub.sat.i64(i64 %i.afg, i64 5)
  switch i64 %i.afh, label %bb.nw [
    i64 0, label %bb.nj
    i64 1, label %bb.nk
    i64 2, label %bb.nl
  ]

bb.nj:                                            ; preds = %bb.ni
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nw unwind label %bb.nf

bb.nk:                                            ; preds = %bb.ni
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nw unwind label %bb.nf

bb.nl:                                            ; preds = %bb.ni
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nw unwind label %bb.nf

bb.nm:                                            ; preds = %bb.nh
  %i.afi = load i64, ptr %1, align 8, !range !17, !alias.scope !3426, !noundef !9
  %i.afj = call i64 @llvm.usub.sat.i64(i64 %i.afi, i64 5)
  switch i64 %i.afj, label %bb.nx [
    i64 0, label %bb.nn
    i64 1, label %bb.no
    i64 2, label %bb.np
  ]

bb.nn:                                            ; preds = %bb.nm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nx unwind label %bb.nu

bb.no:                                            ; preds = %bb.nm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nx unwind label %bb.nu

bb.np:                                            ; preds = %bb.nm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nx unwind label %bb.nu

bb.nq:                                            ; preds = %bb.nh
  %3 = icmp ne i8 %i.aff, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.5162.0.copyload = load ptr, ptr %.sroa.5162.0..sroa_idx, align 8 ; 2 uses
  %i.afk = load i64, ptr %1, align 8, !range !17, !alias.scope !3427, !noundef !9
  %i.afl = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 5)
  switch i64 %i.afl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128 [
    i64 0, label %bb.nr
    i64 1, label %bb.ns
    i64 2, label %bb.nt
  ]

bb.nr:                                            ; preds = %bb.nq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128 unwind label %bb.nv

bb.ns:                                            ; preds = %bb.nq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128 unwind label %bb.nv

bb.nt:                                            ; preds = %bb.nq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128 unwind label %bb.nv

bb.nu:                                            ; preds = %bb.nn, %bb.no, %bb.np
  %i.afm = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.val78 = load ptr, ptr %i.afn, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsjRDSj9tZLBn_14autonat_server(i8 6, ptr %.val78) #28
          to label %.thread218 unwind label %bb.md

bb.nv:                                            ; preds = %bb.nt, %bb.ns, %bb.nr
  %i.afo = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsjRDSj9tZLBn_14autonat_server(i8 %i.aff, ptr %.sroa.5162.0.copyload) #28
          to label %.thread218 unwind label %bb.md

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128: ; preds = %bb.nq, %bb.nr, %bb.ns, %bb.nt
  store i64 8, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5160.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aff, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5162.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nz

bb.nw:                                            ; preds = %bb.nl, %bb.nk, %bb.nj, %bb.ni
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afp, align 8
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nm, %bb.nn, %bb.no, %bb.np
  store i64 8, ptr %1, align 8
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nw, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.mk

bb.nz:                                            ; preds = %bb.nx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128
  %.sink1151 = phi i8 [ -2, %bb.nx ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsjRDSj9tZLBn_14autonat_server.exit128 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink1151, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct)
  br label %bb.ny

.thread218:                                       ; preds = %bb.nu, %bb.ng, %bb.nv
  %.pn71217 = phi { ptr, i32 } [ %i.afo, %bb.nv ], [ %i.afe, %bb.ng ], [ %i.afm, %bb.nu ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #28
          to label %.thread unwind label %bb.md

bb.oa:                                            ; preds = %bb.b
  store i64 8, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.mk
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #30
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #30 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtCsjRDSj9tZLBn_14autonat_server14BehaviourEventEE8grow_oneB1v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3430
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !3430
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 696), !noalias !3430
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !3430, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !3430, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !3430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3430
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3430, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3430
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !3430
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !3430
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2F_2io5error5ErrorEEB47_EE8grow_oneCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3433
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !3433
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjRDSj9tZLBn_14autonat_server(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 104), !noalias !3433
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !3433, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !3433, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !3433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3433
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3433, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3433
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !3433
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !3433
  ret void
end_hunk_0
