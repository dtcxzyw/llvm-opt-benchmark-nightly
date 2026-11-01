Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_client.autonatv2_client.d4707b358e500bd8-cgu.11?download=true
inline.NumInlined: 1470
inline.NumDeleted: 622
begin_hunk_0_@_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_6choice11OrTransportIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1X_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2t_8provider5tokio3TcpENCINvMB1w_INtB1w_7BuilderB2q_E12authenticateNtB35_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4f_EENtB4A_6ConfigNtB4A_5ErrorE0ENCINvMs1_B1w_INtB1w_13AuthenticatedB2l_E9multiplexB4v_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5c_B4v_EENtB7F_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9w_12SwarmBuilderNtNtB9u_8provider5TokioNtB9s_8TcpPhaseE8with_tcpNvMB4A_B6i_3newB4v_B6v_NvYB8o_NtNtB8H_7default7Default7defaultB7C_B8B_E0EIBO_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcC_8provider5tokio8ProviderENCINvMs3_NtB9u_4quicIBac_Baw_INtBe9_9QuicPhaseB1p_EE16with_quic_configINvNtB8H_7convert8identityNtNtBcC_6config6ConfigEE0EENCBe2_s_0ENtB6_9Transport4pollCsieOd0lErO6i_16autonatv2_client:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.741, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.525.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1543, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx, i64 64, i1 false)
  br label %_RINvMs0_NtCsdTHTBGblh3Z_11libp2p_core9transportINtB6_14TransportEventINtNtB8_6either12EitherFutureINtNtB6_3map9MapFutureINtNtB6_8and_then13AndThenFutureIB1V_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3s_2io5error5ErrorEENCINvMNtB6_7upgradeINtB5r_7BuilderINtB45_9TransportNtB41_3TcpEE12authenticateB3Z_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3Z_EENtB6J_6ConfigNtB6J_5ErrorE0INtB5r_12AuthenticateB3Z_B8r_EENCINvMs1_B5r_INtB5r_13AuthenticatedINtB1X_7AndThenB5T_B5l_EE9multiplexB6E_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7l_B6E_EENtBaC_6ConfigB4U_E0INtB5r_9MultiplexB6E_Bbl_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBci_12SwarmBuilderNtNtBcg_8provider5TokioNtBce_8TcpPhaseE8with_tcpNvMB6J_B8r_3newB6E_B8E_NvYBbl_NtNtB3s_7default7Default7defaultBaz_B4U_E0EIB1z_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10Connecting11

bb.bh:                                            ; preds = %bb.be
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.17.0.copyload, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !3942, !nonnull !13, !noundef !13
  invoke void %i.fs(ptr noundef %.sroa.20.0.copyload, ptr noundef %.sroa.18.0.copyload, i64 noundef %.sroa.19.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit.i unwind label %bb.bi, !noalias !3940, !inline_history !0

.unreachable.i:                                   ; preds = %bb.be
  unreachable

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit.i, %bb.bh
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !3940
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1339.0.copyload) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.1339.0.copyload, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !3943, !nonnull !13, !noundef !13
  invoke void %i.fv(ptr noundef %.sroa.16.0.copyload, ptr noundef %.sroa.14.0.copyload, i64 noundef %.sroa.15.0.copyload)
          to label %common.resume unwind label %bb.bi, !noalias !3940, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit12: ; preds = %bb.bl, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bl ], [ %i.gf, %bb.bj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  call void @llvm.experimental.noalias.scope.decl(metadata !3946)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !3947, !noundef !13
  %i.fy = load ptr, ptr %i.q, align 8, !alias.scope !3947, !nonnull !13, !align !15, !noundef !13
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !3947, !nonnull !13, !noundef !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !3947, !noundef !13
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !3947, !noundef !13
  invoke void %i.ga(ptr noundef %i.fx, ptr noundef %i.gc, i64 noundef %i.ge)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.bn, !inline_history !0

bb.bj:                                            ; preds = %bb.az
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit12

bb.bk:                                            ; preds = %bb.az
  %i.gg = load <2 x ptr>, ptr %i.p, align 16      ; 3 uses
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx18, align 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.gh = load ptr, ptr %i.q, align 8, !nonnull !13, !align !15, !noundef !13
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !13, !noundef !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noundef !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !13
  invoke void %i.gi(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.gj, ptr noundef %i.gl, i64 noundef %i.gn)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = landingpad { ptr, i32 }
          cleanup
  %i.gp = extractelement <2 x ptr> %i.gg, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !3948, !nonnull !13, !noundef !13
  %i.gs = extractelement <2 x ptr> %i.gg, i64 1
  invoke void %i.gr(ptr noundef %.sroa.7.0.copyload, ptr noundef %i.gs, i64 noundef %.sroa.6.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit12 unwind label %bb.bn, !inline_history !0

bb.bm:                                            ; preds = %bb.bk
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %i.s, i64 200, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.gg, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.0.sroa.4.sroa.5.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0.copyload, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.ff, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.pre = load i64, ptr %i.t, align 8, !range !22 ; 3 uses
  %i.gt = icmp eq i64 %.pre, -1
  br i1 %i.gt, label %bb.bp, label %bb.bs

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit12, %bb.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit13
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  %i.gv = load ptr, ptr %i.fl, align 8, !alias.scope !3952, !noundef !13
  %i.gw = load ptr, ptr %i.r, align 8, !alias.scope !3952, !nonnull !13, !align !15, !noundef !13
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !3952, !nonnull !13, !noundef !13
  %i.gz = load ptr, ptr %i.fm, align 8, !alias.scope !3952, !noundef !13
  %i.ha = load i64, ptr %i.fo, align 8, !alias.scope !3952, !noundef !13
  invoke void %i.gy(ptr noundef %i.gv, ptr noundef %i.gz, i64 noundef %i.ha)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit13 unwind label %bb.bn, !inline_history !0

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit13
  %i.hb = load i64, ptr %i.t, align 8, !range !22, !noundef !13 ; 3 uses
  %.not = icmp eq i64 %i.hb, -1
  br i1 %.not, label %common.resume, label %bb.bq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit13: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsieOd0lErO6i_16autonatv2_client.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core6either12EitherFutureINtNtNtBG_9transport3map9MapFutureINtNtB1x_8and_then13AndThenFutureIB21_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCINvMNtB1x_7upgradeINtB5h_7BuilderINtB3W_9TransportNtB3S_3TcpEE12authenticateB3Q_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3Q_EENtB6A_6ConfigNtB6A_5ErrorE0INtB5h_12AuthenticateB3Q_B8i_EENCINvMs1_B5h_INtB5h_13AuthenticatedINtB23_7AndThenB5K_B5b_EE9multiplexB6v_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7c_B6v_EENtBat_6ConfigB4L_E0INtB5h_9MultiplexB6v_Bbc_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBc9_12SwarmBuilderNtNtBc7_8provider5TokioNtBc5_8TcpPhaseE8with_tcpNvMB6A_B8i_3newB6v_B8v_NvYBbc_NtNtB4_7default7Default7defaultBaq_B4L_E0EIB1t_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtBc7_4quicIBcP_Bd9_INtBgq_9QuicPhaseINtB1v_3MapINtB5h_11MultiplexedIB9O_B9N_B9e_EEBbW_EEE16with_quic_configINvNtB4_7convert8identityNtNtBfg_6config6ConfigEE0EEECsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.s) #30
          to label %bb.bo unwind label %bb.bn

_RINvMs0_NtCsdTHTBGblh3Z_11libp2p_core9transportINtB6_14TransportEventINtNtB8_6either12EitherFutureINtNtB6_3map9MapFutureINtNtB6_8and_then13AndThenFutureIB1V_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3s_2io5error5ErrorEENCINvMNtB6_7upgradeINtB5r_7BuilderINtB45_9TransportNtB41_3TcpEE12authenticateB3Z_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3Z_EENtB6J_6ConfigNtB6J_5ErrorE0INtB5r_12AuthenticateB3Z_B8r_EENCINvMs1_B5r_INtB5r_13AuthenticatedINtB1X_7AndThenB5T_B5l_EE9multiplexB6E_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7l_B6E_EENtBaC_6ConfigB4U_E0INtB5r_9MultiplexB6E_Bbl_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBci_12SwarmBuilderNtNtBcg_8provider5TokioNtBce_8TcpPhaseE8with_tcpNvMB6J_B8r_3newB6E_B8E_NvYBbl_NtNtB3s_7default7Default7defaultBaz_B4U_E0EIB1z_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10Connecting11: ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc
  %.sroa.1744.0 = phi i64 [ undef, %bb.bc ], [ undef, %bb.bd ], [ %.sroa.1134.0.copyload, %bb.bf ], [ %.sroa.1134.0.copyload, %bb.bg ]
  %.sroa.040.0 = phi i64 [ 2, %bb.bc ], [ 3, %bb.bd ], [ 5, %bb.bf ], [ 6, %bb.bg ]
  store i64 %.sroa.040.0, ptr %0, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.741.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.741, i64 32, i1 false)
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0.copyload, ptr %.sroa.1142.0..sroa_idx, align 8
  %.sroa.1543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1543, i64 64, i1 false)
  %.sroa.1744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.1744.0, ptr %.sroa.1744.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1543)
  br label %bb.bp

bb.bp:                                            ; preds = %.thread, %_RINvMs0_NtCsdTHTBGblh3Z_11libp2p_core9transportINtB6_14TransportEventINtNtB8_6either12EitherFutureINtNtB6_3map9MapFutureINtNtB6_8and_then13AndThenFutureIB1V_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB3s_2io5error5ErrorEENCINvMNtB6_7upgradeINtB5r_7BuilderINtB45_9TransportNtB41_3TcpEE12authenticateB3Z_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3Z_EENtB6J_6ConfigNtB6J_5ErrorE0INtB5r_12AuthenticateB3Z_B8r_EENCINvMs1_B5r_INtB5r_13AuthenticatedINtB1X_7AndThenB5T_B5l_EE9multiplexB6E_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7l_B6E_EENtBaC_6ConfigB4U_E0INtB5r_9MultiplexB6E_Bbl_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBci_12SwarmBuilderNtNtBcg_8provider5TokioNtBce_8TcpPhaseE8with_tcpNvMB6J_B8r_3newB6E_B8E_NvYBbl_NtNtB3s_7default7Default7defaultBaz_B4U_E0EIB1z_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10Connecting11, %bb.bt, %bb.bs, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.bq:                                            ; preds = %bb.bo
  %i.hc = icmp ne i64 %i.hb, 5
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp samesign ult i64 %i.hb, 3
  br i1 %i.hd, label %common.resume, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBG_6either12EitherFutureINtNtBE_3map9MapFutureINtNtBE_8and_then13AndThenFutureIB2n_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCINvMNtBE_7upgradeINtB5C_7BuilderINtB4h_9TransportNtB4d_3TcpEE12authenticateB4b_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB6U_6ConfigNtB6U_5ErrorE0INtB5C_12AuthenticateB4b_B8C_EENCINvMs1_B5C_INtB5C_13AuthenticatedINtB2p_7AndThenB64_B5w_EE9multiplexB6P_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7w_B6P_EENtBaN_6ConfigB56_E0INtB5C_9MultiplexB6P_Bbw_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBct_12SwarmBuilderNtNtBcr_8provider5TokioNtBcp_8TcpPhaseE8with_tcpNvMB6U_B8C_3newB6P_B8P_NvYBbw_NtNtB4_7default7Default7defaultBaK_B56_E0EIB21_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtBcr_4quicIBd9_Bdt_INtBgK_9QuicPhaseINtB23_3MapINtB5C_11MultiplexedIBa8_Ba7_B9y_EEBcg_EEE16with_quic_configINvNtB4_7convert8identityNtNtBfA_6config6ConfigEE0EEINtCscu2bAJ62uie_6either6EitherIBjl_IBjl_B56_INtNtNtBG_7upgrade5error12UpgradeErrorB8P_EEIBk4_B56_EENtBfA_5ErrorEEECsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.t) #30
          to label %common.resume unwind label %bb.bn

bb.bs:                                            ; preds = %bb.bm
  %i.he = icmp ne i64 %.pre, 5
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ult i64 %.pre, 3
  br i1 %i.hf, label %bb.bp, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBG_6either12EitherFutureINtNtBE_3map9MapFutureINtNtBE_8and_then13AndThenFutureIB2n_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCINvMNtBE_7upgradeINtB5C_7BuilderINtB4h_9TransportNtB4d_3TcpEE12authenticateB4b_INtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB6U_6ConfigNtB6U_5ErrorE0INtB5C_12AuthenticateB4b_B8C_EENCINvMs1_B5C_INtB5C_13AuthenticatedINtB2p_7AndThenB64_B5w_EE9multiplexB6P_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB7w_B6P_EENtBaN_6ConfigB56_E0INtB5C_9MultiplexB6P_Bbw_EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtBct_12SwarmBuilderNtNtBcr_8provider5TokioNtBcp_8TcpPhaseE8with_tcpNvMB6U_B8C_3newB6P_B8P_NvYBbw_NtNtB4_7default7Default7defaultBaK_B56_E0EIB21_NtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingNCINvMs3_NtBcr_4quicIBd9_Bdt_INtBgK_9QuicPhaseINtB23_3MapINtB5C_11MultiplexedIBa8_Ba7_B9y_EEBcg_EEE16with_quic_configINvNtB4_7convert8identityNtNtBfA_6config6ConfigEE0EEINtCscu2bAJ62uie_6either6EitherIBjl_IBjl_B56_INtNtNtBG_7upgrade5error12UpgradeErrorB8P_EEIBk4_B56_EENtBfA_5ErrorEEECsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.t)
  br label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_6choice11OrTransportIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1X_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2t_8provider5tokio3TcpENCINvMB1w_INtB1w_7BuilderB2q_E12authenticateNtB35_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4f_EENtB4A_6ConfigNtB4A_5ErrorE0ENCINvMs1_B1w_INtB1w_13AuthenticatedB2l_E9multiplexB4v_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5c_B4v_EENtB7F_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9w_12SwarmBuilderNtNtB9u_8provider5TokioNtB9s_8TcpPhaseE8with_tcpNvMB4A_B6i_3newB4v_B6v_NvYB8o_NtNtB8H_7default7Default7defaultB7C_B8B_E0EIBO_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcC_8provider5tokio8ProviderENCINvMs3_NtB9u_4quicIBac_Baw_INtBe9_9QuicPhaseB1p_EE16with_quic_configINvNtB8H_7convert8identityNtNtBcC_6config6ConfigEE0EENCBe2_s_0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(1104) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 16               ; 12 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [56 x i8], align 8                ; 12 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [32 x i8], align 8               ; 10 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [104 x i8], align 8              ; 11 uses
  %i.ba = alloca [32 x i8], align 8               ; 10 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 7 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.bo = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4001
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.bq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE, i64 16) monotonic, align 8, !noalias !4001 ; 3 uses
  switch i8 %i.bq, label %bb.c [
    i8 0, label %bb.k
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !50

bb.c:                                             ; preds = %bb.b
  %i.br = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE)
          to label %bb.e unwind label %bb.cl, !noalias !3999 ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.b
  %.sroa.09.0.i = phi i8 [ %i.br, %bb.e ], [ %i.bq, %bb.b ], [ %i.bq, %bb.b ]
  %i.bs = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.bt = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, i8 noundef %.sroa.09.0.i)
          to label %bb.f unwind label %bb.cl, !noalias !3999

bb.e:                                             ; preds = %bb.c
  %i.bu = icmp eq i8 %i.br, 0
  br i1 %i.bu, label %bb.k, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.bt, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4001
  %i.bv = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4001
  store ptr @127, ptr %i.bk, align 8, !noalias !4001, !captures !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 1948, ptr %i.bx, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4001
  store ptr %i.bk, ptr %i.bj, align 8, !noalias !4001
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @133, ptr %i.bl, align 8, !noalias !4001
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bj, ptr %i.by, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !4001
  store ptr %3, ptr %i.bi, align 8, !noalias !4001
  store ptr %i.bl, ptr %i.bm, align 8, !noalias !4001
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @15, ptr %i.bz, align 8, !noalias !4001
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bi, ptr %i.ca, align 8, !noalias !4001
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr @129, ptr %i.cb, align 8, !noalias !4001
  store i64 1, ptr %i.bn, align 8, !noalias !4001
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 2, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4001
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %.noexc.i unwind label %bb.cl, !noalias !3999

.noexc.i:                                         ; preds = %bb.g
  %i.cc = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4002
  %.not.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i, label %bb.h, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons0_0Cs

bb.h:                                             ; preds = %.noexc.i
  %i.cd = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4002 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 6
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i64 %i.cd, 4
  br i1 %i.cf, label %bb.i, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons0_0Cs

bb.i:                                             ; preds = %bb.h
  %i.cg = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE, align 8, !noalias !4002, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4002
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !3999, !noundef !13
  store i64 5, ptr %i.d, align 8, !noalias !4002
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !noalias !4002
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ck, ptr %i.cm, align 8, !noalias !4002
  %i.cn = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc150.i unwind label %bb.cl, !noalias !3999 ; 2 uses

.noexc150.i:                                      ; preds = %bb.i
  %i.co = extractvalue { ptr, ptr } %i.cn, 0      ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.cs = invoke noundef zeroext i1 %i.cr(ptr noundef %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #34
          to label %.noexc151.i unwind label %bb.cl, !noalias !3999, !inline_history !3959

.noexc151.i:                                      ; preds = %.noexc150.i
  br i1 %i.cs, label %bb.j, label %.noexc152.i

bb.j:                                             ; preds = %.noexc151.i
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cg, ptr noundef nonnull %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %.noexc152.i unwind label %bb.cl, !noalias !3999

.noexc152.i:                                      ; preds = %bb.j, %.noexc151.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4002
  br label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons0_0Cs

_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons0_0Cs: ; preds = %.noexc152.i, %bb.h, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4001
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.q, %bb.l, %bb.k, %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons0_0Cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !4003
  call void @_RNvXs3_NtNtCsdTHTBGblh3Z_11libp2p_core9transport7upgradeINtB5_11MultiplexedINtNtB7_8and_then7AndThenIB1c_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1I_8provider5tokio3TcpENCINvMB5_INtB5_7BuilderB1F_E12authenticateNtB2k_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3s_EENtB3N_6ConfigNtB3N_5ErrorE0ENCINvMs1_B5_INtB5_13AuthenticatedB1A_E9multiplexB3I_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4p_B3I_EENtB6Q_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENtB7_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(1104) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ay), !noalias !3999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4001
  %i.ct = load i8, ptr %i.az, align 8, !range !27, !noalias !4001, !noundef !13 ; 2 uses
  switch i8 %i.ct, label %bb.ci [
    i8 -4, label %bb.t
    i8 -5, label %bb.ch
  ]

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.cu = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4001
  %.not.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i, label %bb.l, label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cv = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4001 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 6
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp samesign ugt i64 %i.cv, 4
  br i1 %i.cx, label %bb.m, label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_on10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4001
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !noalias !3999, !noundef !13
  store i64 5, ptr %i.bh, align 8, !noalias !4001
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.da, ptr %i.dd, align 8, !noalias !4001
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_6choice11OrTransportIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1X_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2t_8provider5tokio3TcpENCINvMB1w_INtB1w_7BuilderB2q_E12authenticateNtB35_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4f_EENtB4A_6ConfigNtB4A_5ErrorE0ENCINvMs1_B1w_INtB1w_13AuthenticatedB2l_E9multiplexB4v_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5c_B4v_EENtB7F_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9w_12SwarmBuilderNtNtB9u_8provider5TokioNtB9s_8TcpPhaseE8with_tcpNvMB4A_B6i_3newB4v_B6v_NvYB8o_NtNtB8H_7default7Default7defaultB7C_B8B_E0EIBO_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcC_8provider5tokio8ProviderENCINvMs3_NtB9u_4quicIBac_Baw_INtBe9_9QuicPhaseB1p_EE16with_quic_configINvNtB8H_7convert8identityNtNtBcC_6config6ConfigEE0EENCBe2_s_0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client:bb.a
  store i64 %i.fs, ptr %i.fu, align 8, !noalias !4001
  %i.fv = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.ah unwind label %bb.s, !noalias !3999 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.fw = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  %i.fx = extractvalue { ptr, ptr } %i.fv, 1      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.ga = invoke noundef zeroext i1 %i.fz(ptr noundef %i.fw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %bb.ai unwind label %bb.s, !noalias !3999

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ga, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4001
  %i.gb = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4001
  store ptr @127, ptr %i.am, align 8, !noalias !4001, !captures !55
  %i.gd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 1948, ptr %i.gd, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4001
  store ptr %i.am, ptr %i.al, align 8, !noalias !4001
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @134, ptr %i.an, align 8, !noalias !4001
  %i.ge = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.al, ptr %i.ge, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4001
  store ptr %i.ax, ptr %i.ak, align 8, !noalias !4001
  store ptr %i.an, ptr %i.ao, align 8, !noalias !4001
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @15, ptr %i.gf, align 8, !noalias !4001
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ak, ptr %i.gg, align 8, !noalias !4001
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @129, ptr %i.gh, align 8, !noalias !4001
  store i64 1, ptr %i.ap, align 8, !noalias !4001
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 2, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !4001
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.gc, ptr %i.gi, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !4001
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fo, ptr noundef nonnull %i.fw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap)
          to label %bb.al unwind label %bb.s, !noalias !3999

bb.ak:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4001
  br label %bb.ad

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4001
  br label %bb.ak

bb.am:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.az)
          to label %bb.an unwind label %bb.cg, !noalias !3999

bb.an:                                            ; preds = %bb.am, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4001
  %i.gj = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4001
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.gl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4001 ; 3 uses
  switch i8 %i.gl, label %bb.ap [
    i8 0, label %bb.ax
    i8 1, label %bb.aq
    i8 2, label %bb.aq
  ], !prof !50

bb.ap:                                            ; preds = %bb.ao
  %i.gm = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE)
          to label %bb.ar unwind label %bb.cg, !noalias !3999 ; 2 uses

bb.aq:                                            ; preds = %bb.ao, %bb.ar, %bb.ao
  %.sroa.031.0.i = phi i8 [ %i.gm, %bb.ar ], [ %i.gl, %bb.ao ], [ %i.gl, %bb.ao ]
  %i.gn = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.go = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gn, i8 noundef %.sroa.031.0.i)
          to label %bb.as unwind label %bb.cg, !noalias !3999

bb.ar:                                            ; preds = %bb.ap
  %i.gp = icmp eq i8 %i.gm, 0
  br i1 %i.gp, label %bb.ax, label %bb.aq

bb.as:                                            ; preds = %bb.aq
  br i1 %i.go, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4001
  %i.gq = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4001
  store ptr @130, ptr %i.ag, align 8, !noalias !4001, !captures !55
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 2295, ptr %i.gs, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4001
  store ptr %i.ag, ptr %i.af, align 8, !noalias !4001
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @133, ptr %i.ah, align 8, !noalias !4001
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %i.gt, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4001
  store ptr %i.ba, ptr %i.ae, align 8, !noalias !4001
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !4001
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @15, ptr %i.gu, align 8, !noalias !4001
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ae, ptr %i.gv, align 8, !noalias !4001
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @129, ptr %i.gw, align 8, !noalias !4001
  store i64 1, ptr %i.aj, align 8, !noalias !4001
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.033.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 2, ptr %.sroa.033.sroa.5.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.gr, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !4001
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc163.i unwind label %bb.cg, !noalias !3999

.noexc163.i:                                      ; preds = %bb.at
  %i.gx = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4010
  %.not.i162.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i162.i, label %bb.au, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons2_0Cs

bb.au:                                            ; preds = %.noexc163.i
  %i.gy = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4010 ; 2 uses
  %i.gz = icmp ult i64 %i.gy, 6
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp samesign ugt i64 %i.gy, 4
  br i1 %i.ha, label %bb.av, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons2_0Cs

bb.av:                                            ; preds = %bb.au
  %i.hb = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, align 8, !noalias !4010, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4010
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hf = load i64, ptr %i.he, align 8, !noalias !3999, !noundef !13
  store i64 5, ptr %i.b, align 8, !noalias !4010
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.hd, ptr %i.hg, align 8, !noalias !4010
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.hf, ptr %i.hh, align 8, !noalias !4010
  %i.hi = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc164.i unwind label %bb.cg, !noalias !3999 ; 2 uses

.noexc164.i:                                      ; preds = %bb.av
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef %i.hj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #34
          to label %.noexc165.i unwind label %bb.cg, !noalias !3999, !inline_history !3971

.noexc165.i:                                      ; preds = %.noexc164.i
  br i1 %i.hn, label %bb.aw, label %.noexc166.i

bb.aw:                                            ; preds = %.noexc165.i
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hb, ptr noundef nonnull %i.hj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc166.i unwind label %bb.cg, !noalias !3999

.noexc166.i:                                      ; preds = %bb.aw, %.noexc165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4010
  br label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons2_0Cs

_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons2_0Cs: ; preds = %.noexc166.i, %bb.au, %.noexc163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4001
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.bd, %bb.ay, %bb.ax, %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons2_0Cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4001
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !4001
  call void @_RNvXs_NtCs5xzCmWPONXx_11libp2p_quic9transportINtB4_12GenTransportNtNtNtB6_8provider5tokio8ProviderENtNtCsdTHTBGblh3Z_11libp2p_core9transport9Transport9listen_onCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %i.ho, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v), !noalias !3999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4001
  %i.hp = load i64, ptr %i.w, align 8, !range !54, !noalias !4001, !noundef !13 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  switch i64 %i.hp, label %bb.cd [
    i64 -1, label %bb.bg
    i64 -2, label %bb.cc
  ]

bb.ax:                                            ; preds = %bb.as, %bb.ar, %bb.ao, %bb.an
  %i.hq = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4001
  %.not128.i = icmp eq i8 %i.hq, 0
  br i1 %.not128.i, label %bb.ay, label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.hr = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4001 ; 2 uses
  %i.hs = icmp ult i64 %i.hr, 6
  call void @llvm.assume(i1 %i.hs)
  %i.ht = icmp samesign ugt i64 %i.hr, 4
  br i1 %i.ht, label %bb.az, label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hu = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4001
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hy = load i64, ptr %i.hx, align 8, !noalias !3999, !noundef !13
  store i64 5, ptr %i.ad, align 8, !noalias !4001
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.hw, ptr %i.hz, align 8, !noalias !4001
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.hy, ptr %i.ia, align 8, !noalias !4001
  %i.ib = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.ba unwind label %bb.cg, !noalias !3999 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.ic = extractvalue { ptr, ptr } %i.ib, 0      ; 2 uses
  %i.id = extractvalue { ptr, ptr } %i.ib, 1      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.ig = invoke noundef zeroext i1 %i.if(ptr noundef %i.ic, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.bb unwind label %bb.cg, !noalias !3999

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ig, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4001
  %i.ih = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons0_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4001
  store ptr @130, ptr %i.z, align 8, !noalias !4001, !captures !55
  %i.ij = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 2295, ptr %i.ij, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4001
  store ptr %i.z, ptr %i.y, align 8, !noalias !4001
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.499.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @133, ptr %i.aa, align 8, !noalias !4001
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ik, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4001
  store ptr %i.ba, ptr %i.x, align 8, !noalias !4001
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !4001
  %i.il = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @15, ptr %i.il, align 8, !noalias !4001
  %i.im = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.x, ptr %i.im, align 8, !noalias !4001
  %i.in = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @129, ptr %i.in, align 8, !noalias !4001
  store i64 1, ptr %i.ac, align 8, !noalias !4001
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.4101.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 2, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !4001
  %i.io = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ii, ptr %i.io, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !4001
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hu, ptr noundef nonnull %i.ic, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.id, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.be unwind label %bb.cg, !noalias !3999

bb.bd:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4001
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4001
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bw, %bb.bu, %bb.bt, %bb.bp, %.noexc172.i, %bb.bo, %bb.bm, %bb.bj, %bb.bi
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  call void @llvm.experimental.noalias.scope.decl(metadata !4013)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !4014, !noalias !4001, !noundef !13
  %i.is = load ptr, ptr %i.u, align 16, !alias.scope !4014, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !4015, !nonnull !13, !noundef !13
  %i.iv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !4014, !noalias !4001, !noundef !13
  %i.ix = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.iy = load i64, ptr %i.ix, align 16, !alias.scope !4014, !noalias !4001, !noundef !13
  invoke void %i.iu(ptr noundef %i.ir, ptr noundef %i.iw, i64 noundef %i.iy)
          to label %bb.ce unwind label %bb.cb, !noalias !3999, !inline_history !0

bb.bg:                                            ; preds = %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !noalias !4001
  %i.iz = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !4001
  %i.ja = icmp ult i64 %i.iz, 2
  br i1 %i.ja, label %bb.bh, label %bb.br

bb.bh:                                            ; preds = %bb.bg
  %i.jb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !4001 ; 3 uses
  switch i8 %i.jb, label %bb.bi [
    i8 0, label %bb.br
    i8 1, label %bb.bj
    i8 2, label %bb.bj
  ], !prof !50

bb.bi:                                            ; preds = %bb.bh
  %i.jc = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE)
          to label %bb.bk unwind label %bb.bf, !noalias !3999 ; 2 uses

bb.bj:                                            ; preds = %bb.bh, %bb.bk, %bb.bh
  %.sroa.041.0.i = phi i8 [ %i.jc, %bb.bk ], [ %i.jb, %bb.bh ], [ %i.jb, %bb.bh ]
  %i.jd = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.je = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jd, i8 noundef %.sroa.041.0.i)
          to label %bb.bl unwind label %bb.bf, !noalias !3999

bb.bk:                                            ; preds = %bb.bi
  %i.jf = icmp eq i8 %i.jc, 0
  br i1 %i.jf, label %bb.br, label %bb.bj

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.je, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4001
  %i.jg = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4001
  store ptr @130, ptr %i.q, align 8, !noalias !4001, !captures !55
  %i.ji = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2295, ptr %i.ji, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4001
  store ptr %i.q, ptr %i.p, align 8, !noalias !4001
  %.sroa.4107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.4107.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @134, ptr %i.r, align 8, !noalias !4001
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %i.jj, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4001
  store ptr %i.u, ptr %i.o, align 8, !noalias !4001
  store ptr %i.r, ptr %i.s, align 8, !noalias !4001
  %i.jk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @15, ptr %i.jk, align 8, !noalias !4001
  %i.jl = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.o, ptr %i.jl, align 8, !noalias !4001
  %i.jm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @129, ptr %i.jm, align 8, !noalias !4001
  store i64 1, ptr %i.t, align 8, !noalias !4001
  %.sroa.043.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.043.sroa.4.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.043.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 2, ptr %.sroa.043.sroa.5.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.jh, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !4001
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc171.i unwind label %bb.bf, !noalias !3999

.noexc171.i:                                      ; preds = %bb.bm
  %i.jn = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4016
  %.not.i170.i = icmp eq i8 %i.jn, 0
  br i1 %.not.i170.i, label %bb.bn, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons3_0Cs

bb.bn:                                            ; preds = %.noexc171.i
  %i.jo = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4016 ; 2 uses
  %i.jp = icmp ult i64 %i.jo, 6
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp samesign ugt i64 %i.jo, 3
  br i1 %i.jq, label %bb.bo, label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons3_0Cs

bb.bo:                                            ; preds = %bb.bn
  %i.jr = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, align 8, !noalias !4016, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4016
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !3999, !noundef !13
  store i64 4, ptr %i.a, align 8, !noalias !4016
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.jt, ptr %i.jw, align 8, !noalias !4016
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.jv, ptr %i.jx, align 8, !noalias !4016
  %i.jy = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc172.i unwind label %bb.bf, !noalias !3999 ; 2 uses

.noexc172.i:                                      ; preds = %bb.bo
  %i.jz = extractvalue { ptr, ptr } %i.jy, 0      ; 2 uses
  %i.ka = extractvalue { ptr, ptr } %i.jy, 1      ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.kd = invoke noundef zeroext i1 %i.kc(ptr noundef %i.jz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #34
          to label %.noexc173.i unwind label %bb.bf, !noalias !3999, !inline_history !3980

.noexc173.i:                                      ; preds = %.noexc172.i
  br i1 %i.kd, label %bb.bp, label %.noexc174.i

bb.bp:                                            ; preds = %.noexc173.i
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jr, ptr noundef nonnull %i.jz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc174.i unwind label %bb.bf, !noalias !3999

.noexc174.i:                                      ; preds = %bb.bp, %.noexc173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4016
  br label %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons3_0Cs

_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons3_0Cs: ; preds = %.noexc174.i, %bb.bn, %.noexc171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4001
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bx, %bb.bs, %bb.br, %_RNCNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportINtNtB8_3map3MapINtNtB8_7upgrade11MultiplexedINtNtB8_8and_then7AndThenIB1V_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2r_8provider5tokio3TcpENCINvMB1u_INtB1u_7BuilderB2o_E12authenticateNtB33_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4d_EENtB4y_6ConfigNtB4y_5ErrorE0ENCINvMs1_B1u_INtB1u_13AuthenticatedB2j_E9multiplexB4t_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB5a_B4t_EENtB7D_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9u_12SwarmBuilderNtNtB9s_8provider5TokioNtB9q_8TcpPhaseE8with_tcpNvMB4y_B6g_3newB4t_B6t_NvYB8m_NtNtB8F_7default7Default7defaultB7A_B8z_E0EIB1c_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcB_8provider5tokio8ProviderENCINvMs3_NtB9s_4quicIBaa_Bau_INtBe8_9QuicPhaseB1b_EE16with_quic_configINvNtB8F_7convert8identityNtNtBcB_6config6ConfigEE0EENtB8_9Transport9listen_ons3_0Cs
  %i.ke = load <2 x ptr>, ptr %i.u, align 16, !noalias !4001 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 16, !noalias !4001 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4001 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4001
  %i.kf = load i64, ptr %i.w, align 8, !range !54, !noalias !4001, !noundef !13
  %switch145.i = icmp ugt i64 %i.kf, -3
  br i1 %switch145.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client.exit.i, label %bb.bz

bb.br:                                            ; preds = %bb.bl, %bb.bk, %bb.bh, %bb.bg
  %i.kg = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4001
  %.not131.i = icmp eq i8 %i.kg, 0
  br i1 %.not131.i, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.kh = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4001 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, 6
  call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp samesign ugt i64 %i.kh, 3
  br i1 %i.kj, label %bb.bt, label %bb.bq

bb.bt:                                            ; preds = %bb.bs
  %i.kk = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4001
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !3999, !nonnull !13, !noundef !13
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !3999, !noundef !13
  store i64 4, ptr %i.n, align 8, !noalias !4001
  %i.kp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.km, ptr %i.kp, align 8, !noalias !4001
  %i.kq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ko, ptr %i.kq, align 8, !noalias !4001
  %i.kr = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.bu unwind label %bb.bf, !noalias !3999 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 2 uses
  %i.kt = extractvalue { ptr, ptr } %i.kr, 1      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !invariant.load !13, !noalias !3999, !nonnull !13
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef %i.ks, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.bv unwind label %bb.bf, !noalias !3999

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.kw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4001
  %i.kx = load ptr, ptr @_RNvNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB6_11OrTransportppENtB8_9Transport9listen_ons1_10___CALLSITE, align 8, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4001
  store ptr @130, ptr %i.j, align 8, !noalias !4001, !captures !55
  %i.kz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 2295, ptr %i.kz, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4001
  store ptr %i.j, ptr %i.i, align 8, !noalias !4001
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsieOd0lErO6i_16autonatv2_client, ptr %.sroa.4114.0..sroa_idx.i, align 8, !noalias !4001
  store ptr @134, ptr %i.k, align 8, !noalias !4001
  %i.la = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.la, align 8, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4001
  store ptr %i.u, ptr %i.h, align 8, !noalias !4001
  store ptr %i.k, ptr %i.l, align 8, !noalias !4001
  %i.lb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @15, ptr %i.lb, align 8, !noalias !4001
  %i.lc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.h, ptr %i.lc, align 8, !noalias !4001
  %i.ld = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @129, ptr %i.ld, align 8, !noalias !4001
  store i64 1, ptr %i.m, align 8, !noalias !4001
  %.sroa.4116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4116.0..sroa_idx.i, align 8, !noalias !4001
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !4001
  %i.le = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ky, ptr %i.le, align 8, !noalias !4001
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kk, ptr noundef nonnull %i.ks, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kt, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.by unwind label %bb.bf, !noalias !3999

bb.bx:                                            ; preds = %bb.by, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4001
  br label %bb.bq

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4001
  br label %bb.bx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.bz, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4001
  store i8 -5, ptr %0, align 8, !alias.scope !3999
  %.sroa.450.sroa.3.0..sroa.450.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ke, ptr %.sroa.450.sroa.3.0..sroa.450.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  %.sroa.450.sroa.5.0..sroa.450.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.450.sroa.5.0..sroa.450.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  %.sroa.450.sroa.6.0..sroa.450.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.450.sroa.6.0..sroa.450.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB4_11OrTransportINtNtB6_3map3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1T_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2p_8provider5tokio3TcpENCINvMB1s_INtB1s_7BuilderB2m_E12authenticateNtB31_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB4w_6ConfigNtB4w_5ErrorE0ENCINvMs1_B1s_INtB1s_13AuthenticatedB2h_E9multiplexB4r_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB58_B4r_EENtB7B_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9s_12SwarmBuilderNtNtB9q_8provider5TokioNtB9o_8TcpPhaseE8with_tcpNvMB4w_B6e_3newB4r_B6r_NvYB8k_NtNtB8D_7default7Default7defaultB7y_B8x_E0EIB1a_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcz_8provider5tokio8ProviderENCINvMs3_NtB9q_4quicIBa8_Bas_INtBe6_9QuicPhaseB19_EE16with_quic_configINvNtB8D_7convert8identityNtNtBcz_6config6ConfigEE0EENtB6_9Transport9listen_onCsieOd0l

bb.bz:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs5xzCmWPONXx_11libp2p_quic5ErrorECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client.exit.i unwind label %bb.ca, !noalias !3999

bb.ca:                                            ; preds = %bb.bz
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = extractelement <2 x ptr> %i.ke, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lg) ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !4017, !nonnull !13, !noundef !13
  %i.lj = extractelement <2 x ptr> %i.ke, i64 1
  invoke void %i.li(ptr noundef %.sroa.8.0.copyload.i, ptr noundef %i.lj, i64 noundef %.sroa.7.0.copyload.i)
          to label %.thread.i unwind label %bb.cb, !noalias !3999, !inline_history !0

bb.cb:                                            ; preds = %bb.cl, %bb.ck, %bb.cg, %bb.cf, %bb.ca, %bb.bf, %bb.s
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !3999
  unreachable

bb.cc:                                            ; preds = %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i, %bb.cd
  %.sink237.i = phi i8 [ -4, %bb.cd ], [ -6, %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i ]
  store i8 %.sink237.i, ptr %0, align 8, !alias.scope !3999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4001
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB4_11OrTransportINtNtB6_3map3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1T_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2p_8provider5tokio3TcpENCINvMB1s_INtB1s_7BuilderB2m_E12authenticateNtB31_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB4w_6ConfigNtB4w_5ErrorE0ENCINvMs1_B1s_INtB1s_13AuthenticatedB2h_E9multiplexB4r_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB58_B4r_EENtB7B_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9s_12SwarmBuilderNtNtB9q_8provider5TokioNtB9o_8TcpPhaseE8with_tcpNvMB4w_B6e_3newB4r_B6r_NvYB8k_NtNtB8D_7default7Default7defaultB7y_B8x_E0EIB1a_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcz_8provider5tokio8ProviderENCINvMs3_NtB9q_4quicIBa8_Bas_INtBe6_9QuicPhaseB19_EE16with_quic_configINvNtB8D_7convert8identityNtNtBcz_6config6ConfigEE0EENtB6_9Transport9listen_onCsieOd0l

bb.cd:                                            ; preds = %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtB12_8provider5tokio8ProviderENCINvMs3_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase4quicINtB2D_12SwarmBuilderNtNtB2B_8provider5TokioINtB2z_9QuicPhaseIBO_INtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB4Q_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB5m_8provider5tokio3TcpENCINvMB4p_INtB4p_7BuilderB5j_E12authenticateNtB5Y_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB78_EENtB7t_6ConfigNtB7t_5ErrorE0ENCINvMs1_B4p_INtB4p_13AuthenticatedB5e_E9multiplexB7o_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB85_B7o_EENtBay_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtB2B_3tcpIB3k_B3E_NtBcl_8TcpPhaseE8with_tcpNvMB7t_B9b_3newB7o_B9o_NvYBbh_NtNtBbA_7default7Default7defaultBav_Bbu_E0EEE16with_quic_configINvNtBbA_7convert8identityNtNtB12_6config6ConfigEE0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i
  %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.4202.sroa.6.sroa.6.0..sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4202.sroa.6.sroa.6.0..sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !4018
  %.sroa.4202.sroa.4.0..sroa.4202.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hp, ptr %.sroa.4202.sroa.4.0..sroa.4202.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  %.sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ll = load <2 x i64>, ptr %4, align 8, !noalias !4001
  store <2 x i64> %i.ll, ptr %.sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  %.sroa.4202.sroa.6.sroa.5.sroa.5.0..sroa.4202.sroa.6.sroa.5.0..sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load <2 x i64>, ptr %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx.i, align 8, !noalias !4001
  store <2 x i64> %5, ptr %.sroa.4202.sroa.6.sroa.5.sroa.5.0..sroa.4202.sroa.6.sroa.5.0..sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3999
  br label %bb.cc

bb.ce:                                            ; preds = %bb.bf
  %i.lm = load i64, ptr %i.w, align 8, !range !54, !noalias !4001, !noundef !13
  %switch147.i = icmp ugt i64 %i.lm, -3
  br i1 %switch147.i, label %.thread.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.w) #30
          to label %.thread.i unwind label %bb.cb, !noalias !3999

bb.cg:                                            ; preds = %bb.bc, %bb.ba, %bb.az, %bb.aw, %.noexc164.i, %bb.av, %bb.at, %bb.aq, %bb.ap, %bb.am
  %lpad.thr_comm225.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !4022, !noalias !4001, !noundef !13
  %i.lp = load ptr, ptr %i.ba, align 8, !alias.scope !4022, !noalias !4001, !nonnull !13, !align !15, !noundef !13
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !4023, !nonnull !13, !noundef !13
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !4022, !noalias !4001, !noundef !13
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !alias.scope !4022, !noalias !4001, !noundef !13
  invoke void %i.lr(ptr noundef %i.lo, ptr noundef %i.lt, i64 noundef %i.lv)
          to label %.thread.i unwind label %bb.cb, !noalias !3999, !inline_history !0

bb.ch:                                            ; preds = %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i, %bb.ci
  %.sink.i = phi i8 [ %i.ct, %bb.ci ], [ -6, %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4001
  br label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB4_11OrTransportINtNtB6_3map3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1T_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2p_8provider5tokio3TcpENCINvMB1s_INtB1s_7BuilderB2m_E12authenticateNtB31_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB4w_6ConfigNtB4w_5ErrorE0ENCINvMs1_B1s_INtB1s_13AuthenticatedB2h_E9multiplexB4r_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB58_B4r_EENtB7B_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9s_12SwarmBuilderNtNtB9q_8provider5TokioNtB9o_8TcpPhaseE8with_tcpNvMB4w_B6e_3newB4r_B6r_NvYB8k_NtNtB8D_7default7Default7defaultB7y_B8x_E0EIB1a_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcz_8provider5tokio8ProviderENCINvMs3_NtB9q_4quicIBa8_Bas_INtBe6_9QuicPhaseB19_EE16with_quic_configINvNtB8D_7convert8identityNtNtBcz_6config6ConfigEE0EENtB6_9Transport9listen_onCsieOd0l

bb.ci:                                            ; preds = %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport3mapINtB4_3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1r_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB1X_8provider5tokio3TcpENCINvMB10_INtB10_7BuilderB1U_E12authenticateNtB2z_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB3J_EENtB44_6ConfigNtB44_5ErrorE0ENCINvMs1_B10_INtB10_13AuthenticatedB1P_E9multiplexB3Z_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB4G_B3Z_EENtB79_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB90_12SwarmBuilderNtNtB8Y_8provider5TokioNtB8W_8TcpPhaseE8with_tcpNvMB44_B5M_3newB3Z_B5Z_NvYB7S_NtNtB8b_7default7Default7defaultB76_B85_E0ENtB6_9Transport9listen_onCsieOd0lErO6i_16autonatv2_client.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.sroa.5198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(103) %.sroa.5198.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(103) %.sroa.5.0..sroa_idx.i, i64 103, i1 false), !noalias !4018
  br label %bb.ch

bb.cj:                                            ; preds = %bb.s
  %i.lw = load i8, ptr %i.az, align 8, !range !27, !noalias !4001, !noundef !13
  %switch149.i = icmp slt i8 %i.lw, -3
  br i1 %switch149.i, label %.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorINtCscu2bAJ62uie_6either6EitherIB1y_NtNtNtB4_2io5error5ErrorINtNtNtBG_7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2w_B27_EEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.az) #30
          to label %.thread.i unwind label %bb.cb, !noalias !3999

.thread.i:                                        ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.cg, %bb.cf, %bb.ce, %bb.ca
  %.pn139.pn214.i = phi { ptr, i32 } [ %i.lf, %bb.ca ], [ %i.ip, %bb.ce ], [ %i.ip, %bb.cf ], [ %lpad.thr_comm.i, %bb.cl ], [ %lpad.thr_comm225.i, %bb.cg ], [ %i.dt, %bb.cj ], [ %i.dt, %bb.ck ]
  resume { ptr, i32 } %.pn139.pn214.i

bb.cl:                                            ; preds = %bb.p, %bb.n, %bb.m, %bb.j, %.noexc150.i, %bb.i, %bb.g, %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !4024)
  call void @llvm.experimental.noalias.scope.decl(metadata !4025)
  call void @llvm.experimental.noalias.scope.decl(metadata !4026)
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !4027, !noundef !13
  %i.lz = load ptr, ptr %3, align 8, !alias.scope !4027, !nonnull !13, !align !15, !noundef !13
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8, !noalias !4028, !nonnull !13, !noundef !13
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !4027, !noundef !13
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !4027, !noundef !13
  invoke void %i.mb(ptr noundef %i.ly, ptr noundef %i.md, i64 noundef %i.mf)
          to label %.thread.i unwind label %bb.cb, !noalias !3999, !inline_history !0

_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core9transport6choiceINtB4_11OrTransportINtNtB6_3map3MapINtNtB6_7upgrade11MultiplexedINtNtB6_8and_then7AndThenIB1T_INtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtB2p_8provider5tokio3TcpENCINvMB1s_INtB1s_7BuilderB2m_E12authenticateNtB31_9TcpStreamINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB4b_EENtB4w_6ConfigNtB4w_5ErrorE0ENCINvMs1_B1s_INtB1s_13AuthenticatedB2h_E9multiplexB4r_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIB58_B4r_EENtB7B_6ConfigNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENCINvMs2_NtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase3tcpINtB9s_12SwarmBuilderNtNtB9q_8provider5TokioNtB9o_8TcpPhaseE8with_tcpNvMB4w_B6e_3newB4r_B6r_NvYB8k_NtNtB8D_7default7Default7defaultB7y_B8x_E0EIB1a_INtNtCs5xzCmWPONXx_11libp2p_quic9transport12GenTransportNtNtNtBcz_8provider5tokio8ProviderENCINvMs3_NtB9q_4quicIBa8_Bas_INtBe6_9QuicPhaseB19_EE16with_quic_configINvNtB8D_7convert8identityNtNtBcz_6config6ConfigEE0EENtB6_9Transport9listen_onCsieOd0l: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client.exit.i, %bb.cc, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4001
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store atomic i8 1, ptr %i.b seq_cst, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !15, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  store ptr null, ptr %i.e, align 8
  store atomic i8 0, ptr %i.c seq_cst, align 8, !noalias !4035
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !13, !noundef !13
  tail call void %i.k(ptr noundef %i.h), !inline_history !4033
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.m = atomicrmw xchg ptr %i.l, i8 1 seq_cst, align 1
  %.not9.i = icmp eq i8 %i.m, 0
  br i1 %.not9.i, label %bb.d, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !align !15, !noundef !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.n, align 8
  %.not10.i = icmp eq ptr %i.o, null
  store atomic i8 0, ptr %i.l seq_cst, align 8, !noalias !13
  br i1 %.not10.i, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13
  tail call void %i.s(ptr noundef %i.q), !inline_history !4034
  br label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit

_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store atomic i8 1, ptr %i.b seq_cst, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !15, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  store ptr null, ptr %i.e, align 8
  store atomic i8 0, ptr %i.c seq_cst, align 8, !noalias !4042
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !13, !noundef !13
  tail call void %i.k(ptr noundef %i.h), !inline_history !4040
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.m = atomicrmw xchg ptr %i.l, i8 1 seq_cst, align 1
  %.not9.i = icmp eq i8 %i.m, 0
  br i1 %.not9.i, label %bb.d, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !align !15, !noundef !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.n, align 8
  %.not10.i = icmp eq ptr %i.o, null
  store atomic i8 0, ptr %i.l seq_cst, align 8, !noalias !13
  br i1 %.not10.i, label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13
  tail call void %i.s(ptr noundef %i.q), !inline_history !4041
  br label %_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit

_RNvMs0_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_5InnerNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingE7drop_rxCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgV0iE8Xkxiy_15futures_channel7oneshotINtB5_8ReceiverNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store atomic i8 1, ptr %i.b seq_cst, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.d = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !15, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  store ptr null, ptr %i.e, align 8
  store atomic i8 0, ptr %i.c seq_cst, align 8, !noalias !4049
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsieOd0lErO6i_16autonatv2_client.exit.i, label %bb.c

end_hunk_1
