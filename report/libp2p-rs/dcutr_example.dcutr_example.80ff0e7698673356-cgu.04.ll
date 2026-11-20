Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/dcutr_example.dcutr_example.80ff0e7698673356-cgu.04?download=true
inline.NumInlined: 1768
inline.NumDeleted: 681
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEE17poll_next_inboundCsb4DWTO89qhm_13dcutr_example:bb.a

bb.mc:                                            ; preds = %bb.mb, %bb.ma, %bb.lz
  %i.aer = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit113: ; preds = %bb.lt, %bb.lz, %bb.ma, %bb.mb
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.b

bb.md:                                            ; preds = %.loopexit
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1064) %1, ptr noundef nonnull align 8 dereferenceable(1064) %i.da, i64 1064, i1 false)
  br label %.thread

bb.me:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1064) %1, ptr noundef nonnull align 8 dereferenceable(1064) %i.da, i64 1064, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aet, align 8
  br label %bb.lx

bb.mf:                                            ; preds = %bb.nv, %bb.nt, %bb.my, %bb.lx
  ret void

.thread:                                          ; preds = %bb.na, %bb.lv, %bb.mc, %bb.md, %bb.mg, %.thread227, %bb.mz, %.thread185
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body188, %.thread185 ], [ %i.aes, %bb.md ], [ %.pn73.ph, %bb.mz ], [ %i.aeu, %bb.mg ], [ %.pn71226, %.thread227 ], [ %i.afm, %bb.na ], [ %i.aep, %bb.lv ], [ %i.aer, %bb.mc ]
  resume { ptr, i32 } %.pn75.pn

.thread185:                                       ; preds = %.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.p, %bb.t, %bb.v, %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i, %bb.ah, %bb.bn, %bb.br, %bb.ca, %bb.cc, %bb.cg, %bb.dk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i, %bb.eo, %bb.ep, %bb.et, %bb.fw, %.thread.i.i.i, %bb.kj, %.body64.i.i, %bb.kn, %bb.kp, %bb.kr, %.thread94.i.i, %bb.kv, %bb.le, %bb.lg, %bb.lm, %bb.lo
  %eh.lpad-body188 = phi { ptr, i32 } [ %i.nx, %bb.cg ], [ %.pn172.i.i.i, %bb.dk ], [ %.pn180244.i.i.i, %.thread.i.i.i ], [ %i.td, %bb.et ], [ %i.un, %bb.fw ], [ %i.add, %bb.kp ], [ %i.sw, %bb.eo ], [ %eh.lpad-body65.i.i, %.body64.i.i ], [ %i.ade, %bb.kr ], [ %.pn97.i.i, %.thread94.i.i ], [ %i.adb, %bb.kn ], [ %i.acy, %bb.kj ], [ %i.nq, %bb.ca ], [ %i.my, %bb.bn ], [ %i.kq, %bb.ae ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i ], [ %i.nb, %bb.br ], [ %.pn68.i.i, %bb.ah ], [ %i.ns, %bb.cc ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i ], [ %i.aek, %bb.lo ], [ %i.sw, %bb.ep ], [ %i.aea, %bb.lg ], [ %i.adk, %bb.kv ], [ %i.jw, %bb.v ], [ %i.jr, %bb.p ], [ %i.ady, %bb.le ], [ %i.aei, %bb.lm ], [ %i.ju, %bb.t ], [ %i.jp, %bb.n ], [ %lpad.loopexit.split-lp834, %.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(1064) %i.df) #32
          to label %.thread unwind label %bb.ly

bb.mg:                                            ; preds = %bb.mk, %bb.ml, %bb.mm
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(912) %.sroa.529, i64 912, i1 false)
  br label %.thread

bb.mh:                                            ; preds = %bb.lp
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.mi:                                            ; preds = %bb.lp
  %i.aew = load i8, ptr %i.cy, align 8, !range !44, !noundef !8 ; 3 uses
  switch i8 %i.aew, label %bb.mn [
    i8 -2, label %bb.mj
    i8 -1, label %bb.mr
  ]

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(912) %i.cz, i64 912, i1 false)
  %i.aex = load i64, ptr %1, align 8, !range !26, !alias.scope !2980, !noundef !8 ; 2 uses
  %i.aey = icmp slt i64 %i.aex, -9223372036854775804
  %i.aez = add i64 %i.aex, -9223372036854775807
  %i.afa = select i1 %i.aey, i64 %i.aez, i64 0
  switch i64 %i.afa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117 [
    i64 0, label %bb.mk
    i64 1, label %bb.ml
    i64 2, label %bb.mm
  ]

bb.mk:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.ml:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.mm:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.mn:                                            ; preds = %bb.mi
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.5162.0.copyload = load ptr, ptr %.sroa.5162.0..sroa_idx, align 8 ; 2 uses
  %i.afb = load i64, ptr %1, align 8, !range !26, !alias.scope !2981, !noundef !8 ; 2 uses
  %i.afc = icmp slt i64 %i.afb, -9223372036854775804
  %i.afd = add i64 %i.afb, -9223372036854775807
  %i.afe = select i1 %i.afc, i64 %i.afd, i64 0
  switch i64 %i.afe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121 [
    i64 0, label %bb.mo
    i64 1, label %bb.mp
    i64 2, label %bb.mq
  ]

bb.mo:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mp:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mq:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mr:                                            ; preds = %bb.mi
  %i.aff = load i64, ptr %1, align 8, !range !26, !alias.scope !2982, !noundef !8 ; 2 uses
  %i.afg = icmp slt i64 %i.aff, -9223372036854775804
  %i.afh = add i64 %i.aff, -9223372036854775807
  %i.afi = select i1 %i.afg, i64 %i.afh, i64 0
  switch i64 %i.afi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125 [
    i64 0, label %bb.ms
    i64 1, label %bb.mt
    i64 2, label %bb.mu
  ]

bb.ms:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mt:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %bb.ms
  %i.afj = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.mz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125: ; preds = %bb.mr, %bb.ms, %bb.mt, %bb.mu
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.mw

bb.mw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit125 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %i.cz)
  br label %bb.my

bb.mx:                                            ; preds = %bb.mq, %bb.mp, %bb.mo
  %i.afk = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 %i.aew, ptr %.sroa.5162.0.copyload) #32
          to label %bb.mz unwind label %bb.ly

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit121: ; preds = %bb.mn, %bb.mo, %bb.mp, %bb.mq
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5160.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aew, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5162.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.mw

bb.my:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.mf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit117: ; preds = %bb.mj, %bb.mk, %bb.ml, %bb.mm
  store i64 -9223372036854775808, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(912) %.sroa.529, i64 912, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afl, align 8
  br label %bb.my

bb.mz:                                            ; preds = %bb.mx, %bb.mv, %bb.mh
  %.pn73.ph = phi { ptr, i32 } [ %i.aev, %bb.mh ], [ %i.afj, %bb.mv ], [ %i.afk, %bb.mx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %i.cz) #32
          to label %.thread unwind label %bb.ly

bb.na:                                            ; preds = %bb.ne, %bb.nf, %bb.ng
  %i.afm = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.nb:                                            ; preds = %bb.lq
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %.thread227

bb.nc:                                            ; preds = %bb.lq
  %i.afo = load i8, ptr %i.cw, align 8, !range !38, !noundef !8 ; 4 uses
  switch i8 %i.afo, label %bb.nl [
    i8 -1, label %bb.nd
    i8 6, label %bb.nh
  ]

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i64 48, i1 false)
  %i.afp = load i64, ptr %1, align 8, !range !26, !alias.scope !2983, !noundef !8 ; 2 uses
  %i.afq = icmp slt i64 %i.afp, -9223372036854775804
  %i.afr = add i64 %i.afp, -9223372036854775807
  %i.afs = select i1 %i.afq, i64 %i.afr, i64 0
  switch i64 %i.afs, label %bb.nr [
    i64 0, label %bb.ne
    i64 1, label %bb.nf
    i64 2, label %bb.ng
  ]

bb.ne:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %bb.nr unwind label %bb.na

bb.nf:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %bb.nr unwind label %bb.na

bb.ng:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nr unwind label %bb.na

bb.nh:                                            ; preds = %bb.nc
  %i.aft = load i64, ptr %1, align 8, !range !26, !alias.scope !2984, !noundef !8 ; 2 uses
  %i.afu = icmp slt i64 %i.aft, -9223372036854775804
  %i.afv = add i64 %i.aft, -9223372036854775807
  %i.afw = select i1 %i.afu, i64 %i.afv, i64 0
  switch i64 %i.afw, label %bb.ns [
    i64 0, label %bb.ni
    i64 1, label %bb.nj
    i64 2, label %bb.nk
  ]

bb.ni:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %bb.ns unwind label %bb.np

bb.nj:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %bb.ns unwind label %bb.np

bb.nk:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ns unwind label %bb.np

bb.nl:                                            ; preds = %bb.nc
  %3 = icmp ne i8 %i.afo, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.5171.0.copyload = load ptr, ptr %.sroa.5171.0..sroa_idx, align 8 ; 2 uses
  %i.afx = load i64, ptr %1, align 8, !range !26, !alias.scope !2985, !noundef !8 ; 2 uses
  %i.afy = icmp slt i64 %i.afx, -9223372036854775804
  %i.afz = add i64 %i.afx, -9223372036854775807
  %i.aga = select i1 %i.afy, i64 %i.afz, i64 0
  switch i64 %i.aga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137 [
    i64 0, label %bb.nm
    i64 1, label %bb.nn
    i64 2, label %bb.no
  ]

bb.nm:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1064) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.nn:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(912) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.no:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.np:                                            ; preds = %bb.ni, %bb.nj, %bb.nk
  %i.agb = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val78 = load ptr, ptr %i.agc, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 6, ptr %.val78) #32
          to label %.thread227 unwind label %bb.ly

bb.nq:                                            ; preds = %bb.no, %bb.nn, %bb.nm
  %i.agd = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 %i.afo, ptr %.sroa.5171.0.copyload) #32
          to label %.thread227 unwind label %bb.ly

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137: ; preds = %bb.nl, %bb.nm, %bb.nn, %bb.no
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5169.0..sroa_idx, i64 7, i1 false)
  store i8 %i.afo, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5171.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nu

bb.nr:                                            ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.nd
  store i64 -9223372036854775807, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.age, align 8
  br label %bb.nt

bb.ns:                                            ; preds = %bb.nh, %bb.ni, %bb.nj, %bb.nk
  store i64 -9223372036854775806, ptr %1, align 8
  br label %bb.nu

bb.nt:                                            ; preds = %bb.nr, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.mf

bb.nu:                                            ; preds = %bb.ns, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137
  %.sink829 = phi i8 [ -2, %bb.ns ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtCsaD87b1AYckX_12libp2p_relay11priv_client10ConnectionEEEEECsb4DWTO89qhm_13dcutr_example.exit137 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink829, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx)
  br label %bb.nt

.thread227:                                       ; preds = %bb.np, %bb.nb, %bb.nq
  %.pn71226 = phi { ptr, i32 } [ %i.agd, %bb.nq ], [ %i.afn, %bb.nb ], [ %i.agb, %bb.np ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #32
          to label %.thread unwind label %bb.ly

bb.nv:                                            ; preds = %bb.b
  store i64 -9223372036854775806, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.mf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCsb4DWTO89qhm_13dcutr_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(928) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.copyload, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, i64 776, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.8.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !3039
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEINtB2_12SpecFromIterB1k_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2v_6option8IntoIterB1k_EB3e_EE14spec_from_iterCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !3041

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !3044, !nonnull !8, !noundef !8
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !3045
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECsb4DWTO89qhm_13dcutr_example.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECsb4DWTO89qhm_13dcutr_example.exit.i unwind label %bb.y, !noalias !3039

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.744..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(712) %i.o, i64 712, i1 false), !alias.scope !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.712..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3041
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  %i.ah = load ptr, ptr %i.s, align 8, !alias.scope !3048, !nonnull !8, !noundef !8
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !3049
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECsb4DWTO89qhm_13dcutr_example.exit21.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtCsjouRnuJWSBB_5yamux6ConfigEECsb4DWTO89qhm_13dcutr_example.exit21.i unwind label %bb.i, !noalias !3039

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtBV_10connection6stream6SharedEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtB1B_10connection6stream6SharedEEINtNtB4_4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherB1v_EEEECsb4DWTO89qhm_13dcutr_example.exit.i unwind label %bb.y, !noalias !3039

end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_next_inboundCsb4DWTO89qhm_13dcutr_example:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit113 unwind label %bb.mc

bb.mb:                                            ; preds = %bb.lt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit113 unwind label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma, %bb.lz
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit113: ; preds = %bb.lt, %bb.lz, %bb.ma, %bb.mb
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.b

bb.md:                                            ; preds = %.loopexit
  %i.aer = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.da, i64 928, i1 false)
  br label %.thread

bb.me:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(928) %1, ptr noundef nonnull align 8 dereferenceable(928) %i.da, i64 928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.aes, align 8
  br label %bb.lx

bb.mf:                                            ; preds = %bb.nv, %bb.nt, %bb.my, %bb.lx
  ret void

.thread:                                          ; preds = %bb.na, %bb.lv, %bb.mc, %bb.md, %bb.mg, %.thread227, %bb.mz, %.thread185
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body188, %.thread185 ], [ %i.aer, %bb.md ], [ %.pn73.ph, %bb.mz ], [ %i.aet, %bb.mg ], [ %.pn71226, %.thread227 ], [ %i.aff, %bb.na ], [ %i.aeo, %bb.lv ], [ %i.aeq, %bb.mc ]
  resume { ptr, i32 } %.pn75.pn

.thread185:                                       ; preds = %.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.p, %bb.t, %bb.v, %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i, %bb.ah, %bb.bn, %bb.br, %bb.ca, %bb.cc, %bb.cg, %bb.dk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i, %bb.eo, %bb.ep, %bb.et, %bb.fw, %.thread.i.i.i, %bb.kj, %.body64.i.i, %bb.kn, %bb.kp, %bb.kr, %.thread94.i.i, %bb.kv, %bb.le, %bb.lg, %bb.lm, %bb.lo
  %eh.lpad-body188 = phi { ptr, i32 } [ %i.nw, %bb.cg ], [ %.pn172.i.i.i, %bb.dk ], [ %.pn180244.i.i.i, %.thread.i.i.i ], [ %i.tc, %bb.et ], [ %i.um, %bb.fw ], [ %i.adc, %bb.kp ], [ %i.sv, %bb.eo ], [ %eh.lpad-body65.i.i, %.body64.i.i ], [ %i.add, %bb.kr ], [ %.pn97.i.i, %.thread94.i.i ], [ %i.ada, %bb.kn ], [ %i.acx, %bb.kj ], [ %i.np, %bb.ca ], [ %i.mx, %bb.bn ], [ %i.kp, %bb.ae ], [ %.pn68.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i ], [ %i.na, %bb.br ], [ %.pn68.i.i, %bb.ah ], [ %i.nr, %bb.cc ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api5mutex10MutexGuardNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6SharedEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i ], [ %i.ael, %bb.lo ], [ %i.sv, %bb.ep ], [ %i.aea, %bb.lg ], [ %i.adj, %bb.kv ], [ %i.ju, %bb.v ], [ %i.jo, %bb.p ], [ %i.ady, %bb.le ], [ %i.aej, %bb.lm ], [ %i.js, %bb.t ], [ %i.jm, %bb.n ], [ %lpad.loopexit.split-lp834, %.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(928) %i.df) #32
          to label %.thread unwind label %bb.ly

bb.mg:                                            ; preds = %bb.mk, %bb.ml, %bb.mm
  %i.aet = landingpad { ptr, i32 }
          cleanup
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  br label %.thread

bb.mh:                                            ; preds = %bb.lp
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.mi:                                            ; preds = %bb.lp
  %i.aev = load i8, ptr %i.cy, align 8, !range !44, !noundef !8 ; 3 uses
  switch i8 %i.aev, label %bb.mn [
    i8 -2, label %bb.mj
    i8 -1, label %bb.mr
  ]

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, ptr noundef nonnull align 8 dereferenceable(776) %i.cz, i64 776, i1 false)
  %i.aew = load i64, ptr %1, align 8, !range !28, !alias.scope !3321, !noundef !8
  %i.aex = call i64 @llvm.usub.sat.i64(i64 %i.aew, i64 5)
  switch i64 %i.aex, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117 [
    i64 0, label %bb.mk
    i64 1, label %bb.ml
    i64 2, label %bb.mm
  ]

bb.mk:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.ml:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.mm:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117 unwind label %bb.mg

bb.mn:                                            ; preds = %bb.mi
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.5162.0.copyload = load ptr, ptr %.sroa.5162.0..sroa_idx, align 8 ; 2 uses
  %i.aey = load i64, ptr %1, align 8, !range !28, !alias.scope !3322, !noundef !8
  %i.aez = call i64 @llvm.usub.sat.i64(i64 %i.aey, i64 5)
  switch i64 %i.aez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121 [
    i64 0, label %bb.mo
    i64 1, label %bb.mp
    i64 2, label %bb.mq
  ]

bb.mo:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mp:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mq:                                            ; preds = %bb.mn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121 unwind label %bb.mx

bb.mr:                                            ; preds = %bb.mi
  %i.afa = load i64, ptr %1, align 8, !range !28, !alias.scope !3323, !noundef !8
  %i.afb = call i64 @llvm.usub.sat.i64(i64 %i.afa, i64 5)
  switch i64 %i.afb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125 [
    i64 0, label %bb.ms
    i64 1, label %bb.mt
    i64 2, label %bb.mu
  ]

bb.ms:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mt:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mu:                                            ; preds = %bb.mr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt, %bb.ms
  %i.afc = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  br label %bb.mz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125: ; preds = %bb.mr, %bb.ms, %bb.mt, %bb.mu
  store i64 8, ptr %1, align 8
  br label %bb.mw

bb.mw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125
  %.sink = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121 ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit125 ]
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %.sroa.425.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cz)
  br label %bb.my

bb.mx:                                            ; preds = %bb.mq, %bb.mp, %bb.mo
  %i.afd = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 %i.aev, ptr %.sroa.5162.0.copyload) #32
          to label %bb.mz unwind label %bb.ly

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit121: ; preds = %bb.mn, %bb.mo, %bb.mp, %bb.mq
  store i64 8, ptr %1, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.024.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5160.0..sroa_idx, i64 7, i1 false)
  store i8 %i.aev, ptr %0, align 8
  %.sroa.024.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5162.0.copyload, ptr %.sroa.024.sroa.5.0..sroa_idx, align 8
  br label %bb.mw

bb.my:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.mf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit117: ; preds = %bb.mj, %bb.mk, %bb.ml, %bb.mm
  store i64 6, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.529, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529)
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afe, align 8
  br label %bb.my

bb.mz:                                            ; preds = %bb.mx, %bb.mv, %bb.mh
  %.pn73.ph = phi { ptr, i32 } [ %i.aeu, %bb.mh ], [ %i.afc, %bb.mv ], [ %i.afd, %bb.mx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %i.cz) #32
          to label %.thread unwind label %bb.ly

bb.na:                                            ; preds = %bb.ne, %bb.nf, %bb.ng
  %i.aff = landingpad { ptr, i32 }
          cleanup
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  br label %.thread

bb.nb:                                            ; preds = %bb.lq
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %.thread227

bb.nc:                                            ; preds = %bb.lq
  %i.afh = load i8, ptr %i.cw, align 8, !range !38, !noundef !8 ; 4 uses
  switch i8 %i.afh, label %bb.nl [
    i8 -1, label %bb.nd
    i8 6, label %bb.nh
  ]

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i64 48, i1 false)
  %i.afi = load i64, ptr %1, align 8, !range !28, !alias.scope !3324, !noundef !8
  %i.afj = call i64 @llvm.usub.sat.i64(i64 %i.afi, i64 5)
  switch i64 %i.afj, label %bb.nr [
    i64 0, label %bb.ne
    i64 1, label %bb.nf
    i64 2, label %bb.ng
  ]

bb.ne:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.nr unwind label %bb.na

bb.nf:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.nr unwind label %bb.na

bb.ng:                                            ; preds = %bb.nd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.nr unwind label %bb.na

bb.nh:                                            ; preds = %bb.nc
  %i.afk = load i64, ptr %1, align 8, !range !28, !alias.scope !3325, !noundef !8
  %i.afl = call i64 @llvm.usub.sat.i64(i64 %i.afk, i64 5)
  switch i64 %i.afl, label %bb.ns [
    i64 0, label %bb.ni
    i64 1, label %bb.nj
    i64 2, label %bb.nk
  ]

bb.ni:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %bb.ns unwind label %bb.np

bb.nj:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %bb.ns unwind label %bb.np

bb.nk:                                            ; preds = %bb.nh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %bb.ns unwind label %bb.np

bb.nl:                                            ; preds = %bb.nc
  %3 = icmp ne i8 %i.afh, 4
  call void @llvm.assume(i1 %3)
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.5171.0.copyload = load ptr, ptr %.sroa.5171.0..sroa_idx, align 8 ; 2 uses
  %i.afm = load i64, ptr %1, align 8, !range !28, !alias.scope !3326, !noundef !8
  %i.afn = call i64 @llvm.usub.sat.i64(i64 %i.afm, i64 5)
  switch i64 %i.afn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137 [
    i64 0, label %bb.nm
    i64 1, label %bb.nn
    i64 2, label %bb.no
  ]

bb.nm:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection6ActiveINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1k_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(928) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.nn:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjouRnuJWSBB_5yamux10connection7closing7ClosingINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1v_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(776) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.no:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.6.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137 unwind label %bb.nq

bb.np:                                            ; preds = %bb.ni, %bb.nj, %bb.nk
  %i.afo = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.val78 = load ptr, ptr %i.afp, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 6, ptr %.val78) #32
          to label %.thread227 unwind label %bb.ly

bb.nq:                                            ; preds = %bb.no, %bb.nn, %bb.nm
  %i.afq = landingpad { ptr, i32 }
          cleanup
  store i64 8, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjouRnuJWSBB_5yamux5error15ConnectionErrorECsb4DWTO89qhm_13dcutr_example(i8 %i.afh, ptr %.sroa.5171.0.copyload) #32
          to label %.thread227 unwind label %bb.ly

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137: ; preds = %bb.nl, %bb.nm, %bb.nn, %bb.no
  store i64 8, ptr %1, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.047.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5169.0..sroa_idx, i64 7, i1 false)
  store i8 %i.afh, ptr %0, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5171.0.copyload, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  br label %bb.nu

bb.nr:                                            ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.nd
  store i64 7, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552)
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -3, ptr %i.afr, align 8
  br label %bb.nt

bb.ns:                                            ; preds = %bb.nh, %bb.ni, %bb.nj, %bb.nk
  store i64 8, ptr %1, align 8
  br label %bb.nu

bb.nt:                                            ; preds = %bb.nr, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.mf

bb.nu:                                            ; preds = %bb.ns, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137
  %.sink829 = phi i8 [ -2, %bb.ns ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEECsb4DWTO89qhm_13dcutr_example.exit137 ]
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink829, ptr %.sroa.338.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx)
  br label %bb.nt

.thread227:                                       ; preds = %bb.np, %bb.nb, %bb.nq
  %.pn71226 = phi { ptr, i32 } [ %i.afq, %bb.nq ], [ %i.afg, %bb.nb ], [ %i.afo, %bb.np ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjouRnuJWSBB_5yamux10connection7cleanup7CleanupECsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cx) #32
          to label %.thread unwind label %bb.ly

bb.nv:                                            ; preds = %bb.b
  store i64 8, ptr %1, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -2, ptr %.sroa.361.0..sroa_idx, align 8
  br label %bb.mf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCskeoOuuhwsQF_12sharded_slab4pageINtB5_6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE8allocateCsb4DWTO89qhm_13dcutr_example(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
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
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.g = load i64, ptr %i.b, align 8, !range !23, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !24, !noundef !8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #34
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
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3J_3ops5range5RangejENvMs2_BW_BT_3newEE11spec_extendCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1, i64 noundef %i.q)
          to label %bb.d unwind label %.body.thread22

.body.thread22:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @73, i64 32, i1 false)
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
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !3332, !noundef !8 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !34, !alias.scope !3332, !noundef !8
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBT_3cfg13DefaultConfigEE8grow_oneB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.f, !noalias !3333

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body.thread unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.noexc:                                           ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !3332, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !3332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ad = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBL_3cfg13DefaultConfigEE16into_boxed_sliceCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.val.i = load ptr, ptr %0, align 8, !noalias !3334, !align !9, !noundef !8 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val1.i = load i64, ptr %i.ag, align 8, !noalias !3334 ; 6 uses
  %i.ah = icmp eq ptr %.val.i, null
  %cond = icmp eq i64 %.val1.i, 0
  %or.cond = select i1 %i.ah, i1 true, i1 %cond
  br i1 %or.cond, label %bb.j, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i.i: ; preds = %.lr.ph
  %i.ai = icmp eq i64 %i.ak, %.val1.i
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i24 = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i.i ], [ 0, %.noexc ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i.i24
  %i.ak = add nuw nsw i64 %.sroa.0.0.i.i.i.i24, 1 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB28_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsb4DWTO89qhm_13dcutr_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit.i.i.i.i unwind label %bb.h, !noalias !3334

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEECsb4DWTO89qhm_13dcutr_example.exit7.i.i.i.i: ; preds = %.lr.ph26
  %i.am = add nuw nsw i64 %.sroa.0.1.i.i.i.i25, 1 ; 2 uses
end_hunk_1
