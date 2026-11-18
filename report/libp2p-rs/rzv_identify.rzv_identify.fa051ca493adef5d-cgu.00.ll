Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/rzv_identify.rzv_identify.fa051ca493adef5d-cgu.00?download=true
inline.NumInlined: 1079
inline.NumDeleted: 583
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapIBP_IB11_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1R_EINtCscu2bAJ62uie_6either6EitherB1R_B1R_EEB1k_EFB31_EIB32_B31_B1R_EEIB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB1R_j2_EFB1R_EB3R_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB3R_IB32_B3R_B1R_EuINtNtNtBb_3ops12control_flow11ControlFlowTB6e_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB3R_EB6e_QNCINvNvB55_8find_map5checkB6e_B78_QNCINvNtB7h_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxIBP_IB11_BO_B89_EIB11_B1p_FB1R_EB6e_EEE0E0E0B6t_ECslsQJ1ZceO0z_12rzv_identify:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2n_EINtCscu2bAJ62uie_6either6EitherB2n_B2n_EEB1Q_EFB3x_EIB3y_B3x_B2n_EEEECslsQJ1ZceO0z_12rzv_identify.exit: ; preds = %bb.n, %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit.i.i.i, %bb.e, %bb.o
  store i64 -2, ptr %i.e, align 8
  br label %bb.c

bb.r:                                             ; preds = %bb.c, %bb.t, %bb.u, %bb.d
  %.sink = phi i64 [ %i.g, %bb.d ], [ %i.ag, %bb.t ], [ -2, %bb.u ], [ -2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.s:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %i.c, align 8, !nonnull !8, !align !14, !noundef !8
  %i.af = load ptr, ptr %i.d, align 8, !nonnull !8, !align !14, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsczYENlYh6wI_8smallvec8IntoIterANtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolj2_EFB1x_EINtCscu2bAJ62uie_6either6EitherIB2L_B1x_B1x_EB1x_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldB2K_IB2L_B2K_B1x_EuINtNtNtBc_3ops12control_flow11ControlFlowTB4H_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2K_EB4H_QNCINvNvB3z_8find_map5checkB4H_B5B_QNCINvNtB5K_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IB9a_IBO_IB9a_IBO_INtNtNtBa_7sources4once4OnceB1x_EFB1x_EB3f_EB9L_EFB3f_EB2K_EBN_EB6C_EIBO_B9P_FB1x_EB4H_EEE0E0E0B4W_ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ag = load i64, ptr %i.a, align 8, !range !24, !alias.scope !1765, !noundef !8 ; 2 uses
  %.not.i9 = icmp eq i64 %i.ag, -2
  br i1 %.not.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.716.0..sroa_idx17, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1I_EINtCscu2bAJ62uie_6either6EitherB1I_B1I_EEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvB13_8map_foldB2S_IB2T_B2S_B1I_EuFB2S_EB4C_QNCIB4j_B4C_IB2T_B4C_B1I_EuFB4C_EB5d_QNCIB4j_B5d_TINtNtB1M_10connection11AsStrHashEqB5d_EbEuNCINvB5S_26gather_supported_protocolsINtNtNtB1M_7handler6select23ConnectionHandlerSelectIB77_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE0NCINvNvB3C_8for_each4callB5O_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBc3_7HashMapB5P_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3G_7collect6ExtendB5O_E6extendIB11_IBP_IB11_IBP_IB11_BO_B4R_EIB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB1I_j2_EFB1I_EB4C_EEB5s_EIB11_B1g_FB1I_EB5d_EEB6v_EE0E0E0E0E0ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = load i64, ptr %0, align 8, !range !19, !noundef !8
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB2z_IB2A_B2z_B1p_EuFB2z_EB4e_QNCIB3W_B4e_IB2A_B4e_B1p_EuFB4e_EB4P_QNCIB3W_B4P_TINtNtB1t_10connection11AsStrHashEqB4P_EbEuNCINvB5u_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB6J_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE0NCINvNvB3e_8for_each4callB5q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBbF_7HashMapB5r_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3i_7collect6ExtendB5q_E6extendIBO_INtNtB8_5chain5ChainIBO_IBdV_IBO_IBdV_BN_BN_EB4t_EIBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EFB1p_EB4e_EEB54_EIBO_BX_FB1p_EB4P_EEB67_EE0E0E0E0E0ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noundef !8
  %.not4 = icmp eq i64 %i.e, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !19, !noundef !8
  %.not7 = icmp eq i64 %i.h, -1
  br i1 %.not7, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !nonnull !8, !align !14, !noundef !8
  %i.j = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_B2z_B1p_EuFB2z_EB4d_QNCIB3V_B4d_IB2A_B4d_B1p_EuFB4d_EB4O_QNCIB3V_B4O_TINtNtB1t_10connection11AsStrHashEqB4O_EbEuNCINvB5t_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB6I_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerEE0NCINvNvB3e_8for_each4callB5p_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBbE_7HashMapB5q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3i_7collect6ExtendB5p_E6extendIBO_INtNtB8_5chain5ChainIBO_IBdU_IBO_IBdU_BN_BN_EB4s_EIBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EFB1p_EB4d_EEB53_EIBO_BX_FB1p_EB4O_EEB66_EE0E0E0E0E0ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %i.j)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  ret void

bb.g:                                             ; preds = %bb.h, %bb.d
  resume { ptr, i32 } %i.f

bb.h:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #25
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1I_EINtCscu2bAJ62uie_6either6EitherB1I_B1I_EEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB2S_IB2T_B2S_B1I_EuINtNtNtBb_3ops12control_flow11ControlFlowTIB2T_B4L_B1I_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2S_EB4L_QNCIB4n_B4L_B5G_uB50_FB4L_EB5G_QNCINvNvB3C_8find_map5checkB5G_B5F_QNCINvNtB5Y_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxIBP_IB11_IBP_IB11_BO_B6Q_EIB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB1I_j2_EFB1I_EB4L_EEB7l_EIB11_B1g_FB1I_EB5G_EEE0E0E0E0B50_ECslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = load i64, ptr %1, align 8, !range !19, !noundef !8
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldB2z_IB2A_B2z_B1p_EuINtNtNtBc_3ops12control_flow11ControlFlowTIB2A_B4n_B1p_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2z_EB4n_QNCIB40_B4n_B5i_uB4C_FB4n_EB5i_QNCINvNvB3e_8find_map5checkB5i_B5h_QNCINvNtB5A_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IB9v_IBO_IB9v_BN_BN_EB6s_EIBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EFB1p_EB4n_EEB6X_EIBO_BX_FB1p_EB5i_EEE0E0E0E0B4C_ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.f = load i64, ptr %i.b, align 8, !range !24, !alias.scope !1790, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.f, -2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !19, !noundef !8
  %.not7 = icmp eq i64 %i.h, -1
  br i1 %.not7, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx12, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.i = load i64, ptr %1, align 8, !range !19, !alias.scope !1791, !noundef !8 ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.k = icmp eq i64 %i.i, 2
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1801, !nonnull !8, !noundef !8
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !1801
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8
  resume { ptr, i32 } %i.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  store i64 -1, ptr %1, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.d
  %.sink = phi i64 [ %i.f, %bb.d ], [ %i.t, %bb.m ], [ -2, %bb.n ], [ -2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = load ptr, ptr %i.c, align 8, !nonnull !8, !align !14, !noundef !8
  %i.s = load ptr, ptr %i.d, align 8, !nonnull !8, !align !14, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldB2z_IB2A_B2z_B1p_EuINtNtNtBc_3ops12control_flow11ControlFlowTIB2A_B4m_B1p_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2z_EB4m_QNCIB3Z_B4m_B5h_uB4B_FB4m_EB5h_QNCINvNvB3e_8find_map5checkB5h_B5g_QNCINvNtB5z_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IB9u_IBO_IB9u_BN_BN_EB6r_EIBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EFB1p_EB4m_EEB6W_EIBO_BX_FB1p_EB5h_EEE0E0E0E0B4B_ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.t = load i64, ptr %i.a, align 8, !range !24, !alias.scope !1802, !noundef !8 ; 2 uses
  %.not.i9 = icmp eq i64 %i.t, -2
  br i1 %.not.i9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.716.0..sroa_idx17, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB27_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3n_3VecB1o_E14extend_trustedBO_E0E0ECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %0, align 8, !range !17, !noundef !8
  %.not = icmp eq i64 %i.d, -2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !1817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  %.sroa.0.0.copyload25.i = load i64, ptr %i.c, align 8, !alias.scope !1819 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !1820
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload25.i, -1
  br i1 %.not6.i, label %bb.f, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #25
          to label %.body unwind label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1817
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload25.i, ptr %i.a, align 8, !noalias !1817
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2A_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtBb_6option8IntoIterB1O_EB42_EE0E0INtB7_5FnMutTuB1O_EE8call_mutCslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECslsQJ1ZceO0z_12rzv_identify.exit.loopexit.i unwind label %bb.c, !noalias !1816

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECslsQJ1ZceO0z_12rzv_identify.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1817
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noundef !8 ; 2 uses
  %.val7 = load ptr, ptr %1, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.j, align 8            ; 4 uses
  switch i64 %i.i, label %._crit_edge.i [
    i64 -2, label %bb.h
    i64 -1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECslsQJ1ZceO0z_12rzv_identify.exit.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.5.0.copyload, i64 %.val8 ; 2 uses
  store i64 %i.i, ptr %i.k, align 8, !noalias !1821
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %i.l = add i64 %.val8, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge.i
  %.val5.i = phi i64 [ %i.l, %._crit_edge.i ], [ %.val8, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.val8.sink = phi i64 [ %.val5.i, %bb.g ], [ %.val8, %bb.e ]
  store i64 %.val8.sink, ptr %.val7, align 8
  ret void

.body:                                            ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !14, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.m, align 8, !noundef !8
  store i64 %.val6, ptr %.val, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !17, !noundef !8
  %.not20 = icmp eq i64 %i.o, -2
  br i1 %.not20, label %.body.thread15, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body.thread15:                                   ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.e

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECslsQJ1ZceO0z_12rzv_identify(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #25
          to label %.body.thread15 unwind label %bb.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_IB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBG_EBG_EBG_E4Left0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_IB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBG_EBG_EBG_E5Right0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBC_EBC_E4Left0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBC_EBC_E5Right0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBy_E4Left0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolBy_E5Right0CslsQJ1ZceO0z_12rzv_identify(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !align !14, !noundef !8 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !25, !noundef !8
  %switch.offset = sub nuw nsw i64 5, %i.j
  %i.k = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %.not38 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not38, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 5, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !8, !nonnull !8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #27
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %0, align 8, !range !16, !noundef !8
  %.not39 = icmp eq i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not39, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.o, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.v, align 8, !noundef !8 ; 2 uses
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load ptr, ptr %i.v, align 8, !noundef !8 ; 2 uses
  %.not40 = icmp eq ptr %i.x, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.z = load i64, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.3.sroa.2.0 = phi i64 [ undef, %bb.f ], [ %i.z, %bb.h ]
  %.sroa.016.0 = phi i64 [ 2, %bb.f ], [ 1, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !8 ; 2 uses
  %.not43 = icmp eq ptr %i.ab, null
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 104
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1607 = distinct !{!1607, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1e_5timer14ScheduledTimerEEECslsQJ1ZceO0z_12rzv_identify"}
!1608 = distinct !{!1608, !1607, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1e_5timer14ScheduledTimerEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1609 = distinct !{!1609, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1610 = distinct !{!1610, !1609, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1611 = !{!1600}
!1612 = !{!1604, !1602, !1600}
!1613 = !{!1606}
!1614 = !{!1610, !1608, !1606}
!1615 = distinct !{!1615, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECslsQJ1ZceO0z_12rzv_identify"}
!1616 = distinct !{!1616, !1615, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1617 = distinct !{!1617, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputuNtNtB2n_6marker4SendEL_EEEENtNtNtB2n_3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1618 = distinct !{!1618, !1617, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputuNtNtB2n_6marker4SendEL_EEEENtNtNtB2n_3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1619 = distinct !{!1619, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1620 = distinct !{!1620, !1619, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1621 = distinct !{!1621, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECslsQJ1ZceO0z_12rzv_identify"}
!1622 = distinct !{!1622, !1621, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1623 = distinct !{!1623, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputuNtNtB2n_6marker4SendEL_EEEENtNtNtB2n_3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1624 = distinct !{!1624, !1623, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputuNtNtB2n_6marker4SendEL_EEEENtNtNtB2n_3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1625 = !{!1616}
!1626 = !{!1618}
!1627 = !{!1618, !1616, !1620}
!1628 = !{!1618, !1616}
!1629 = !{!1622}
!1630 = !{!1624}
!1631 = !{!1624, !1622, !1620}
!1632 = !{!1624, !1622}
!1633 = distinct !{!1633, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify"}
!1634 = distinct !{!1634, !1633, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1635 = distinct !{!1635, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify"}
!1636 = distinct !{!1636, !1635, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1637 = distinct !{!1637, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1638 = distinct !{!1638, !1637, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1639 = distinct !{!1639, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEECslsQJ1ZceO0z_12rzv_identify"}
!1640 = distinct !{!1640, !1639, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1641 = distinct !{!1641, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify"}
!1642 = distinct !{!1642, !1641, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1643 = distinct !{!1643, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1644 = distinct !{!1644, !1643, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1645 = !{!1634}
!1646 = !{!1636}
!1647 = !{!1638}
!1648 = !{!1638, !1636, !1640, !1634}
!1649 = !{!1638, !1636}
!1650 = !{!1642}
!1651 = !{!1644}
!1652 = !{!1644, !1642, !1640, !1634}
!1653 = !{!1644, !1642}
!1654 = distinct !{!1654, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink9lru_cache8LruCacheNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdIBC_NtCsbli3iz7XG76_9multiaddr9MultiaddruEEECslsQJ1ZceO0z_12rzv_identify"}
!1655 = distinct !{!1655, !1654, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink9lru_cache8LruCacheNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdIBC_NtCsbli3iz7XG76_9multiaddr9MultiaddruEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1656 = distinct !{!1656, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map13LinkedHashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtBG_9lru_cache8LruCacheNtCsbli3iz7XG76_9multiaddr9MultiaddruEEECslsQJ1ZceO0z_12rzv_identify"}
!1657 = distinct !{!1657, !1656, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map13LinkedHashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtBG_9lru_cache8LruCacheNtCsbli3iz7XG76_9multiaddr9MultiaddruEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1658 = !{!1655}
!1659 = !{!1657}
!1660 = !{!1657, !1655}
!1661 = distinct !{!1661, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink9lru_cache8LruCacheNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify"}
!1662 = distinct !{!1662, !1661, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink9lru_cache8LruCacheNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1663 = distinct !{!1663, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map13LinkedHashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify"}
!1664 = distinct !{!1664, !1663, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9gyJhbkOeXY_8hashlink15linked_hash_map13LinkedHashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1665 = distinct !{!1665, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify"}
!1666 = distinct !{!1666, !1665, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtCsbli3iz7XG76_9multiaddr9MultiaddruEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1667 = distinct !{!1667, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1668 = distinct !{!1668, !1667, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1669 = distinct !{!1669, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1670 = distinct !{!1670, !1669, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1671 = distinct !{!1671, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1672 = distinct !{!1672, !1671, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1673 = distinct !{null}
!1674 = !{!1662}
!1675 = !{!1664}
!1676 = !{!1664, !1662}
!1677 = !{!1672, !1670, !1668, !1666, !1664, !1662}
!1678 = distinct !{!1678, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1679 = distinct !{!1679, !1678, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1680 = distinct !{!1680, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_IB1w_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EINtCscu2bAJ62uie_6either6EitherB2w_B2w_EEB1Z_EFB3G_EIB3H_B3G_B2w_EEIBY_INtCsczYENlYh6wI_8smallvec8IntoIterAB2w_j2_EFB2w_EB4w_EEFB4w_EIB3H_B4w_B2w_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1681 = distinct !{!1681, !1680, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_IB1w_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EINtCscu2bAJ62uie_6either6EitherB2w_B2w_EEB1Z_EFB3G_EIB3H_B3G_B2w_EEIBY_INtCsczYENlYh6wI_8smallvec8IntoIterAB2w_j2_EFB2w_EB4w_EEFB4w_EIB3H_B4w_B2w_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1682 = distinct !{!1682, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1683 = distinct !{!1683, !1682, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1684 = !{!1679}
!1685 = !{!1681}
!1686 = !{!1683}
!1687 = distinct !{!1687, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1688 = distinct !{!1688, !1687, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1689 = distinct !{!1689, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2n_EINtCscu2bAJ62uie_6either6EitherB2n_B2n_EEB1Q_EFB3x_EIB3y_B3x_B2n_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1690 = distinct !{!1690, !1689, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2n_EINtCscu2bAJ62uie_6either6EitherB2n_B2n_EEB1Q_EFB3x_EIB3y_B3x_B2n_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1691 = distinct !{!1691, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Z_EINtCscu2bAJ62uie_6either6EitherB1Z_B1Z_EEB1t_EFB39_EIB3a_B39_B1Z_EEECslsQJ1ZceO0z_12rzv_identify"}
!1692 = distinct !{!1692, !1691, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Z_EINtCscu2bAJ62uie_6either6EitherB1Z_B1Z_EEB1t_EFB39_EIB3a_B39_B1Z_EEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1693 = distinct !{!1693, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1V_EINtCscu2bAJ62uie_6either6EitherB1V_B1V_EEB1d_EECslsQJ1ZceO0z_12rzv_identify"}
!1694 = distinct !{!1694, !1693, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1V_EINtCscu2bAJ62uie_6either6EitherB1V_B1V_EEB1d_EECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1695 = distinct !{!1695, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1696 = distinct !{!1696, !1695, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1697 = distinct !{!1697, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify"}
!1698 = distinct !{!1698, !1697, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1699 = distinct !{!1699, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1700 = distinct !{!1700, !1699, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1701 = distinct !{!1701, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1702 = distinct !{!1702, !1701, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1703 = distinct !{!1703, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1704 = distinct !{!1704, !1703, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1705 = distinct !{!1705, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1706 = distinct !{!1706, !1705, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1707 = distinct !{!1707, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify"}
!1708 = distinct !{!1708, !1707, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1709 = distinct !{!1709, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify"}
!1710 = distinct !{!1710, !1709, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1711 = distinct !{!1711, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify"}
!1712 = distinct !{!1712, !1711, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1713 = distinct !{!1713, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1714 = distinct !{!1714, !1713, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1715 = distinct !{!1715, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1716 = distinct !{!1716, !1715, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1717 = distinct !{!1717, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify"}
!1718 = distinct !{!1718, !1717, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1719 = distinct !{!1719, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1720 = distinct !{!1720, !1719, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1721 = distinct !{!1721, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1722 = distinct !{!1722, !1721, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1723 = distinct !{!1723, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1724 = distinct !{!1724, !1723, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1725 = distinct !{!1725, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1726 = distinct !{!1726, !1725, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1727 = distinct !{!1727, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify"}
!1728 = distinct !{!1728, !1727, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1729 = distinct !{!1729, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify"}
!1730 = distinct !{!1730, !1729, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1731 = distinct !{!1731, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify"}
!1732 = distinct !{!1732, !1731, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1733 = distinct !{!1733, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1734 = distinct !{!1734, !1733, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1735 = distinct !{!1735, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1736 = distinct !{!1736, !1735, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1737 = !{!1688}
!1738 = !{!1690}
!1739 = !{!1692}
!1740 = !{!1694}
!1741 = !{!1696}
!1742 = !{!1698}
!1743 = !{!1700}
!1744 = !{!1702}
!1745 = !{!1704}
!1746 = !{!1706}
!1747 = !{!1708}
!1748 = !{!1710}
!1749 = !{!1712}
!1750 = !{!1714}
!1751 = !{!1714, !1712, !1710, !1708, !1706, !1704, !1702, !1700, !1698, !1696, !1694, !1692, !1690}
!1752 = !{!1716}
!1753 = !{!1716, !1694, !1692, !1690}
!1754 = !{!1718}
!1755 = !{!1720}
!1756 = !{!1722}
!1757 = !{!1724}
!1758 = !{!1726}
!1759 = !{!1728}
!1760 = !{!1730}
!1761 = !{!1732}
!1762 = !{!1734}
!1763 = !{!1734, !1732, !1730, !1728, !1726, !1724, !1722, !1720, !1718, !1716, !1694, !1692, !1690}
!1764 = !{!1734, !1732, !1730, !1728, !1726, !1724, !1722, !1720, !1718, !1716}
!1765 = !{!1736}
!1766 = distinct !{!1766, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1767 = distinct !{!1767, !1766, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1768 = distinct !{!1768, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify"}
!1769 = distinct !{!1769, !1768, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1770 = distinct !{!1770, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify"}
!1771 = distinct !{!1771, !1770, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1772 = distinct !{!1772, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1773 = distinct !{!1773, !1772, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1774 = distinct !{!1774, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1775 = distinct !{!1775, !1774, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1776 = distinct !{!1776, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1777 = distinct !{!1777, !1776, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1778 = distinct !{!1778, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!1779 = distinct !{!1779, !1778, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1780 = distinct !{!1780, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify"}
!1781 = distinct !{!1781, !1780, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1782 = distinct !{!1782, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify"}
!1783 = distinct !{!1783, !1782, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1784 = distinct !{!1784, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify"}
!1785 = distinct !{!1785, !1784, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1786 = distinct !{!1786, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify"}
!1787 = distinct !{!1787, !1786, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1788 = distinct !{!1788, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify"}
!1789 = distinct !{!1789, !1788, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1G_EB1G_EB1G_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1790 = !{!1767}
!1791 = !{!1769}
!1792 = !{!1771}
!1793 = !{!1773}
!1794 = !{!1775}
!1795 = !{!1777}
!1796 = !{!1779}
!1797 = !{!1781}
!1798 = !{!1783}
!1799 = !{!1785}
!1800 = !{!1787}
!1801 = !{!1787, !1785, !1783, !1781, !1779, !1777, !1775, !1773, !1771, !1769}
!1802 = !{!1789}
!1803 = distinct !{!1803, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify"}
!1804 = distinct !{!1804, !1803, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1805 = distinct !{!1805, !1803, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1806 = distinct !{!1806, i1 true, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCslsQJ1ZceO0z_12rzv_identify"}
!1807 = distinct !{!1807, !1806, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCslsQJ1ZceO0z_12rzv_identify: argument 0:pre.rot"}
!1808 = distinct !{!1808, !1806, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCslsQJ1ZceO0z_12rzv_identify: argument 1:pre.rot"}
!1809 = distinct !{!1809, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify"}
!1810 = distinct !{!1810, !1809, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1811 = distinct !{!1811, !1809, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1812 = distinct !{!1812, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0CslsQJ1ZceO0z_12rzv_identify"}
!1813 = distinct !{!1813, !1812, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0CslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1814 = distinct !{!1814, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0CslsQJ1ZceO0z_12rzv_identify"}
!1815 = distinct !{!1815, !1814, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0CslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1816 = !{!1804}
!1817 = !{!1804, !1805}
!1818 = !{!1807}
!1819 = !{!1807, !1808, !1804}
!1820 = !{!1808, !1804}
!1821 = !{!1815, !1813, !1811, !1810}
!1822 = distinct !{!1822, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm11listen_opts10ListenOptsECslsQJ1ZceO0z_12rzv_identify"}
!1823 = distinct !{!1823, !1822, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm11listen_opts10ListenOptsECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1824 = distinct !{!1824, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1825 = distinct !{!1825, !1824, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1826 = distinct !{!1826, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1827 = distinct !{!1827, !1826, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1828 = distinct !{!1828, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1829 = distinct !{!1829, !1828, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1830 = distinct !{null}
!1831 = !{!1823}
!1832 = !{!1825}
!1833 = !{!1827}
!1834 = !{!1829}
!1835 = !{!1829, !1827, !1825, !1823}
!1836 = distinct !{!1836, i1 true, !"_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter"}
!1837 = distinct !{!1837, !1836, !"_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span8do_enter: argument 0"}
!1838 = distinct !{!1838, i1 true, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE22handle_behaviour_eventBL_"}
!1839 = distinct !{!1839, !1838, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE22handle_behaviour_eventBL_: argument 0"}
!1840 = distinct !{!1840, !1838, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE22handle_behaviour_eventBL_: argument 1"}
!1841 = distinct !{!1841, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEECslsQJ1ZceO0z_12rzv_identify"}
!1842 = distinct !{!1842, !1841, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1843 = distinct !{!1843, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEECslsQJ1ZceO0z_12rzv_identify"}
!1844 = distinct !{!1844, !1843, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1845 = distinct !{!1845, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1846 = distinct !{!1846, !1845, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1847 = distinct !{!1847, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1848 = distinct !{!1848, !1847, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1849 = distinct !{!1849, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1850 = distinct !{!1850, !1849, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1851 = distinct !{null}
!1852 = distinct !{!1852, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslsQJ1ZceO0z_12rzv_identify"}
!1853 = distinct !{!1853, !1852, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1854 = distinct !{!1854, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslsQJ1ZceO0z_12rzv_identify"}
!1855 = distinct !{!1855, !1854, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1856 = distinct !{!1856, i1 true, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE23remove_external_addressBL_"}
!1857 = distinct !{!1857, !1856, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE23remove_external_addressBL_: argument 0"}
!1858 = distinct !{!1858, i1 true, !"_RINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB6_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB6_9dial_opts8DialOptsEBM_"}
!1859 = distinct !{!1859, !1858, !"_RINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB6_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB6_9dial_opts8DialOptsEBM_: argument 2"}
!1860 = distinct !{!1860, !1858, !"_RINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB6_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB6_9dial_opts8DialOptsEBM_: argument 1"}
!1861 = distinct !{!1861, !1858, !"_RINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB6_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB6_9dial_opts8DialOptsEBM_: argument 0"}
!1862 = distinct !{!1862, i1 true, !"_RNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB8_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB8_9dial_opts8DialOptsEs0_0BO_"}
!1863 = distinct !{!1863, !1862, !"_RNCINvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB8_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE4dialNtNtB8_9dial_opts8DialOptsEs0_0BO_: argument 0"}
!1864 = distinct !{null}
!1865 = distinct !{!1865, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorEECslsQJ1ZceO0z_12rzv_identify"}
!1866 = distinct !{!1866, !1865, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1867 = distinct !{!1867, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorEECslsQJ1ZceO0z_12rzv_identify"}
!1868 = distinct !{!1868, !1867, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1869 = distinct !{!1869, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify"}
!1870 = distinct !{!1870, !1869, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1871 = distinct !{!1871, i1 true, !"_RINvXs2_NtCscu2bAJ62uie_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionIBD_IBD_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEINtNtNtBW_7sources5empty5EmptyB2A_EENtNtNtBW_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB2A_ja_EECslsQJ1ZceO0z_12rzv_identify"}
!1872 = distinct !{!1872, !1871, !"_RINvXs2_NtCscu2bAJ62uie_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionIBD_IBD_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEINtNtNtBW_7sources5empty5EmptyB2A_EENtNtNtBW_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB2A_ja_EECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1873 = distinct !{!1873, !1871, !"_RINvXs2_NtCscu2bAJ62uie_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionIBD_IBD_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEINtNtNtBW_7sources5empty5EmptyB2A_EENtNtNtBW_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB2A_ja_EECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1874 = distinct !{!1874, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecABU_ja_EECslsQJ1ZceO0z_12rzv_identify"}
!1875 = distinct !{!1875, !1874, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecABU_ja_EECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1876 = distinct !{!1876, i1 true, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1Q_7sources5empty5EmptyBJ_EECslsQJ1ZceO0z_12rzv_identify"}
!1877 = distinct !{!1877, !1876, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1Q_7sources5empty5EmptyBJ_EECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1878 = distinct !{!1878, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3m_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECslsQJ1ZceO0z_12rzv_identify"}
!1879 = distinct !{!1879, !1878, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3m_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1880 = distinct !{!1880, !1878, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3m_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1881 = distinct !{!1881, i1 true, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1Q_8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBJ_INtNtBL_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB50_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEECslsQJ1ZceO0z_12rzv_identify"}
!1882 = distinct !{!1882, !1881, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1Q_8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBJ_INtNtBL_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB50_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1883 = distinct !{!1883, !1881, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1Q_8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBJ_INtNtBL_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB50_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1884 = distinct !{!1884, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1885 = distinct !{!1885, !1884, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1886 = distinct !{!1886, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1887 = distinct !{!1887, !1886, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1888 = distinct !{!1888, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1889 = distinct !{!1889, !1888, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1890 = distinct !{!1890, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1891 = distinct !{!1891, !1890, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1892 = distinct !{!1892, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1893 = distinct !{!1893, !1892, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1894 = distinct !{!1894, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1895 = distinct !{!1895, !1894, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1896 = distinct !{!1896, i1 true, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE20add_external_addressBL_"}
!1897 = distinct !{!1897, !1896, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE20add_external_addressBL_: argument 1"}
!1898 = distinct !{!1898, !1896, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE20add_external_addressBL_: argument 0"}
!1899 = distinct !{!1899, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1900 = distinct !{!1900, !1899, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1901 = distinct !{!1901, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1902 = distinct !{!1902, !1901, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1903 = distinct !{!1903, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1904 = distinct !{!1904, !1903, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1905 = distinct !{!1905, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1906 = distinct !{!1906, !1905, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1907 = distinct !{!1907, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1908 = distinct !{!1908, !1907, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1909 = distinct !{!1909, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1910 = distinct !{!1910, !1909, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1911 = distinct !{!1911, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1912 = distinct !{!1912, !1911, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1913 = distinct !{!1913, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1914 = distinct !{!1914, !1913, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1915 = distinct !{!1915, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1916 = distinct !{!1916, !1915, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1917 = distinct !{!1917, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1918 = distinct !{!1918, !1917, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1919 = distinct !{!1919, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1920 = distinct !{!1920, !1919, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1921 = distinct !{!1921, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1922 = distinct !{!1922, !1921, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1923 = distinct !{!1923, i1 true, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_"}
!1924 = distinct !{!1924, !1923, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_: argument 4"}
!1925 = distinct !{!1925, !1923, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_: argument 3"}
!1926 = distinct !{!1926, !1923, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_: argument 2"}
!1927 = distinct !{!1927, !1923, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_: argument 1"}
!1928 = distinct !{!1928, !1923, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB2_7handler6select23ConnectionHandlerSelectIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourEB4Y_: argument 0"}
!1929 = distinct !{!1929, i1 true, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCslsQJ1ZceO0z_12rzv_identify"}
!1930 = distinct !{!1930, !1929, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1931 = distinct !{!1931, i1 true, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCslsQJ1ZceO0z_12rzv_identify"}
!1932 = distinct !{!1932, !1931, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1933 = distinct !{!1933, i1 true, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCslsQJ1ZceO0z_12rzv_identify"}
!1934 = distinct !{!1934, !1933, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1935 = distinct !{!1935, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherIBY_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify"}
!1936 = distinct !{!1936, !1935, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherIBY_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1937 = distinct !{!1937, i1 true, !"_RNCINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB4_7handler6select23ConnectionHandlerSelectIBJ_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE0B50_"}
!1938 = distinct !{!1938, !1937, !"_RNCINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB4_7handler6select23ConnectionHandlerSelectIBJ_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE0B50_: argument 1"}
!1939 = distinct !{!1939, i1 true, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCslsQJ1ZceO0z_12rzv_identify"}
!1940 = distinct !{!1940, !1939, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1941 = distinct !{!1941, !1937, !"_RNCINvCs6b9j1MKPRPC_12libp2p_swarm10notify_anyINtNtNtB4_7handler6select23ConnectionHandlerSelectIBJ_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE0B50_: argument 0"}
!1942 = distinct !{!1942, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherIBY_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify"}
!1943 = distinct !{!1943, !1942, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCscu2bAJ62uie_6either6EitherIBY_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1944 = distinct !{!1944, i1 true, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_oneINtCscu2bAJ62uie_6either6EitherIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEECslsQJ1ZceO0z_12rzv_identify"}
!1945 = distinct !{!1945, !1944, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_oneINtCscu2bAJ62uie_6either6EitherIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1946 = distinct !{!1946, !1944, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_oneINtCscu2bAJ62uie_6either6EitherIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEECslsQJ1ZceO0z_12rzv_identify: argument 2"}
!1947 = distinct !{!1947, !1944, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_oneINtCscu2bAJ62uie_6either6EitherIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEECslsQJ1ZceO0z_12rzv_identify: argument 3"}
!1948 = distinct !{!1948, !1944, !"_RINvCs6b9j1MKPRPC_12libp2p_swarm10notify_oneINtCscu2bAJ62uie_6either6EitherIBH_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEECslsQJ1ZceO0z_12rzv_identify: argument 1"}
!1949 = distinct !{!1949, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify"}
!1950 = distinct !{!1950, !1949, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1951 = distinct !{!1951, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify"}
!1952 = distinct !{!1952, !1951, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1953 = distinct !{!1953, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify"}
!1954 = distinct !{!1954, !1953, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEzEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1955 = distinct !{!1955, i1 true, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_eventBL_"}
!1956 = distinct !{!1956, !1955, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_eventBL_: argument 1"}
!1957 = distinct !{!1957, !1955, !"_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_eventBL_: argument 0"}
!1958 = distinct !{!1958, i1 true, !"_RNvXsf_NtCsdTHTBGblh3Z_11libp2p_core10connectionNtB5_14ConnectedPointNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!1959 = distinct !{!1959, !1958, !"_RNvXsf_NtCsdTHTBGblh3Z_11libp2p_core10connectionNtB5_14ConnectedPointNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!1960 = distinct !{null}
!1961 = distinct !{!1961, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1962 = distinct !{!1962, !1961, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1963 = distinct !{!1963, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1964 = distinct !{!1964, !1963, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1965 = distinct !{!1965, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1966 = distinct !{!1966, !1965, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1967 = distinct !{!1967, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1968 = distinct !{!1968, !1967, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1969 = distinct !{!1969, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1970 = distinct !{!1970, !1969, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1971 = distinct !{!1971, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1972 = distinct !{!1972, !1971, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1973 = distinct !{!1973, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1974 = distinct !{!1974, !1973, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1975 = distinct !{!1975, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1976 = distinct !{!1976, !1975, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1977 = distinct !{!1977, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1978 = distinct !{!1978, !1977, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1979 = distinct !{!1979, i1 true, !"_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler15listen_protocolCslsQJ1ZceO0z_12rzv_identify"}
!1980 = distinct !{!1980, !1979, !"_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectIBR_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtB7_17ConnectionHandler15listen_protocolCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1981 = distinct !{!1981, i1 true, !"_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtB7_17ConnectionHandler15listen_protocolCslsQJ1ZceO0z_12rzv_identify"}
!1982 = distinct !{!1982, !1981, !"_RNvXs3_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB5_23ConnectionHandlerSelectNtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEENtB7_17ConnectionHandler15listen_protocolCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1983 = distinct !{!1983, i1 true, !"_RNvXs_NtCsfY02lUNHLPc_15libp2p_identify7handlerNtB4_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler15listen_protocol"}
!1984 = distinct !{!1984, !1983, !"_RNvXs_NtCsfY02lUNHLPc_15libp2p_identify7handlerNtB4_7HandlerNtNtCs6b9j1MKPRPC_12libp2p_swarm7handler17ConnectionHandler15listen_protocol: argument 0"}
!1985 = distinct !{!1985, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1986 = distinct !{!1986, !1985, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1987 = distinct !{!1987, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1988 = distinct !{!1988, !1987, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1989 = distinct !{!1989, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1990 = distinct !{!1990, !1989, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1991 = distinct !{!1991, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECslsQJ1ZceO0z_12rzv_identify"}
!1992 = distinct !{!1992, !1991, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1993 = distinct !{!1993, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!1994 = distinct !{!1994, !1993, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1995 = distinct !{!1995, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!1996 = distinct !{!1996, !1995, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!1997 = distinct !{!1997, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1998 = distinct !{!1998, !1997, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1999 = distinct !{!1999, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify"}
!2000 = distinct !{!2000, !1999, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2001 = distinct !{!2001, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify"}
!2002 = distinct !{!2002, !2001, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2003 = distinct !{!2003, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2004 = distinct !{!2004, !2003, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2005 = distinct !{!2005, i1 true, !"_RNvYRNtNtCskKLDkoKarTP_4core4time8DurationNtNtB7_3cmp3Ord3maxCslsQJ1ZceO0z_12rzv_identify"}
!2006 = distinct !{!2006, !2005, !"_RNvYRNtNtCskKLDkoKarTP_4core4time8DurationNtNtB7_3cmp3Ord3maxCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!2007 = distinct !{!2007, i1 true, !"_RNvXNtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtB2_11SendWrapperIBF_IB1H_IBF_INtNtBJ_5ready12ReadyUpgradeNtNtB4_15stream_protocol14StreamProtocolEB2c_EEIB1H_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2E_EEEEIB1H_B2c_EENtB2_15UpgradeInfoSend13protocol_infoCslsQJ1ZceO0z_12rzv_identify"}
!2008 = distinct !{!2008, !2007, !"_RNvXNtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtB2_11SendWrapperIBF_IB1H_IBF_INtNtBJ_5ready12ReadyUpgradeNtNtB4_15stream_protocol14StreamProtocolEB2c_EEIB1H_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2E_EEEEIB1H_B2c_EENtB2_15UpgradeInfoSend13protocol_infoCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!2009 = distinct !{!2009, !2007, !"_RNvXNtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtB2_11SendWrapperIBF_IB1H_IBF_INtNtBJ_5ready12ReadyUpgradeNtNtB4_15stream_protocol14StreamProtocolEB2c_EEIB1H_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2E_EEEEIB1H_B2c_EENtB2_15UpgradeInfoSend13protocol_infoCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2010 = distinct !{!2010, i1 true, !"_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6selectINtB4_13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBP_IB1a_IBP_INtNtB6_5ready12ReadyUpgradeNtNtB1e_15stream_protocol14StreamProtocolEB2e_EEIB1a_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2G_EEEEIB1a_B2e_EENtB6_11UpgradeInfo13protocol_infoCslsQJ1ZceO0z_12rzv_identify"}
!2011 = distinct !{!2011, !2010, !"_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6selectINtB4_13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBP_IB1a_IBP_INtNtB6_5ready12ReadyUpgradeNtNtB1e_15stream_protocol14StreamProtocolEB2e_EEIB1a_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2G_EEEEIB1a_B2e_EENtB6_11UpgradeInfo13protocol_infoCslsQJ1ZceO0z_12rzv_identify: argument 1"}
!2012 = distinct !{!2012, !2010, !"_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6selectINtB4_13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBP_IB1a_IBP_INtNtB6_5ready12ReadyUpgradeNtNtB1e_15stream_protocol14StreamProtocolEB2e_EEIB1a_INtNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler8protocol8ProtocolB2G_EEEEIB1a_B2e_EENtB6_11UpgradeInfo13protocol_infoCslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2013 = distinct !{!2013, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapIB4_IBW_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1L_EINtCscu2bAJ62uie_6either6EitherB1L_B1L_EEB1f_EFB2V_EIB2W_B2V_B1L_EEIBW_INtCsczYENlYh6wI_8smallvec8IntoIterAB1L_j2_EFB1L_EB3L_EENtNtNtBa_6traits8iterator8Iterator3mapIB2W_B3L_B1L_EFB3L_EB5A_ECslsQJ1ZceO0z_12rzv_identify"}
!2014 = distinct !{!2014, !2013, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapIB4_IBW_INtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1L_EINtCscu2bAJ62uie_6either6EitherB1L_B1L_EEB1f_EFB2V_EIB2W_B2V_B1L_EEIBW_INtCsczYENlYh6wI_8smallvec8IntoIterAB1L_j2_EFB1L_EB3L_EENtNtNtBa_6traits8iterator8Iterator3mapIB2W_B3L_B1L_EFB3L_EB5A_ECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2015 = distinct !{!2015, i1 true, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters3map3MapINtNtB2G_5chain5ChainIB2C_IB34_IB2C_IB34_IB2C_INtNtNtB1u_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB4g_EINtCscu2bAJ62uie_6either6EitherB4g_B4g_EEB3I_EFB5q_EIB5r_B5q_B4g_EEIB2C_INtB6_8IntoIterAB4g_j2_EFB4g_EB6g_EEFB6g_EIB5r_B6g_B4g_EEIB2C_B3N_FB4g_EB7g_EENCNvMs0_B4k_INtB4k_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_event0EEB8h_"}
!2016 = distinct !{!2016, !2015, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters3map3MapINtNtB2G_5chain5ChainIB2C_IB34_IB2C_IB34_IB2C_INtNtNtB1u_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB4g_EINtCscu2bAJ62uie_6either6EitherB4g_B4g_EEB3I_EFB5q_EIB5r_B5q_B4g_EEIB2C_INtB6_8IntoIterAB4g_j2_EFB4g_EB6g_EEFB6g_EIB5r_B6g_B4g_EEIB2C_B3N_FB4g_EB7g_EENCNvMs0_B4k_INtB4k_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_event0EEB8h_: argument 1"}
!2017 = distinct !{!2017, !2015, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters3map3MapINtNtB2G_5chain5ChainIB2C_IB34_IB2C_IB34_IB2C_INtNtNtB1u_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB4g_EINtCscu2bAJ62uie_6either6EitherB4g_B4g_EEB3I_EFB5q_EIB5r_B5q_B4g_EEIB2C_INtB6_8IntoIterAB4g_j2_EFB4g_EB6g_EEFB6g_EIB5r_B6g_B4g_EEIB2C_B3N_FB4g_EB7g_EENCNvMs0_B4k_INtB4k_5SwarmNtCslsQJ1ZceO0z_12rzv_identify11MyBehaviourE17handle_pool_event0EEB8h_: argument 0"}
!2018 = distinct !{!2018, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECslsQJ1ZceO0z_12rzv_identify"}
!2019 = distinct !{!2019, !2018, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
!2020 = distinct !{!2020, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify"}
!2021 = distinct !{!2021, !2020, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECslsQJ1ZceO0z_12rzv_identify: argument 0"}
end_hunk_1
