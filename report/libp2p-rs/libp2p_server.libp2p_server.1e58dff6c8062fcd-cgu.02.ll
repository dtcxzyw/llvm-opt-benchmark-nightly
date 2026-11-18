Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.02?download=true
inline.NumInlined: 1917
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtCscu2bAJ62uie_6either6EitherIB11_IB1h_IB11_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIB1h_B2s_ReEEIB11_INtNtB25_5empty5EmptyB3L_EFB3L_EB3C_EEFB3C_EIB1h_B3C_B3L_EEIB11_B3U_FB3L_EB4C_EEFB4C_EIB1h_B4C_B2s_EEIB11_B20_FB2s_EB5i_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB5i_IB1h_B5i_IB1h_B2s_B2s_EEuINtNtNtBb_3ops12control_flow11ControlFlowTIB1h_IB1h_B71_B4C_EB3C_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB5i_EB71_QNCIB6D_B71_B8b_uB7q_FB71_EB8b_QNCIB6D_B8b_B86_uB7q_FB8b_EB86_QNCINvNvB5S_8find_map5checkB86_B85_QNCINvNtB8y_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxIBP_IB11_IBP_IB11_IBP_IB11_BO_B9q_EIB11_IBP_IB11_B20_FB2s_EB7a_EBdF_EFB7a_EB71_EEB9V_EIB11_IB1h_IB11_IB1h_IB11_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2s_EB3w_EB3P_EB4w_EB4R_EFB4C_EB8b_EEBaq_EIB11_IB1h_IB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB2s_j2_EB3w_EB3P_EFB3C_EB86_EEE0E0E0E0E0B7q_ECs2Bxje7pdMIr_13libp2p_server:bb.a
          cleanup
  store i64 -3, ptr %i.e, align 8
  resume { ptr, i32 } %i.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_IB1w_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2G_EIB1w_B2G_ReEEIBY_INtNtB2i_5empty5EmptyB3Z_EFB3Z_EB3Q_EEFB3Q_EIB1w_B3Q_B3Z_EEIBY_B47_FB3Z_EB4P_EEFB4P_EIB1w_B4P_B2G_EEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.k
  store i64 -3, ptr %i.e, align 8
  br label %bb.c

bb.m:                                             ; preds = %bb.c, %bb.o, %bb.p, %bb.d
  %.sink = phi i64 [ %i.g, %bb.d ], [ %i.t, %bb.o ], [ -2, %bb.p ], [ -2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = load ptr, ptr %i.c, align 8, !nonnull !8, !align !10, !noundef !8
  %i.s = load ptr, ptr %i.d, align 8, !nonnull !8, !align !10, !noundef !8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherIB2A_IB2A_B1p_ReEB3i_EB1p_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldB2z_IB2A_B2z_IB2A_B1p_B1p_EEuINtNtNtBc_3ops12control_flow11ControlFlowTIB2A_IB2A_B4E_B34_EB39_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2z_EB4E_QNCIB4h_B4E_B5O_uB53_FB4E_EB5O_QNCIB4h_B5O_B5J_uB53_FB5O_EB5J_QNCINvNvB3w_8find_map5checkB5J_B5I_QNCINvNtB6b_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IBaB_IBO_IBaB_IBO_IBaB_IBO_IB2A_IBO_IB2A_IBO_BX_FB1p_EB39_EIBO_INtNtB12_5empty5EmptyB3i_EFB3i_EB39_EEFB39_EB34_EIBO_BbZ_FB3i_EB34_EEFB34_EB2z_EBN_EB73_EIBO_IBaB_IBO_BX_FB1p_EB4N_EBdz_EFB4N_EB4E_EEB7y_EIBO_IB2A_IBO_IB2A_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EBbK_EBbV_EBcB_EBcM_EFB34_EB5O_EEB83_EIBO_IB2A_IBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EBbK_EBbV_EFB39_EB5J_EEE0E0E0E0E0B53_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.t = load i64, ptr %i.a, align 8, !range !14, !alias.scope !2245, !noundef !8 ; 2 uses
  %.not.i9 = icmp eq i64 %i.t, -2
  br i1 %.not.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.716.0..sroa_idx17, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1I_EINtCscu2bAJ62uie_6either6EitherB1I_B1I_EEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvB13_8map_foldB2S_IB2T_IB2T_IB2T_IB2T_B1I_ReEB50_EB1I_EB2S_EuFB2S_EB4C_NCIB4j_B4C_IB2T_B4C_B4M_EuFB4C_EB5E_QNCIB4j_B5E_IB2T_B5E_B4R_EuFB5E_EB6f_QNCIB4j_B6f_TINtNtB1M_10connection11AsStrHashEqB6f_EbEuNCINvB6U_26gather_supported_protocolsINtNtNtB1M_7handler6select23ConnectionHandlerSelectIB89_IB89_IB89_IB2T_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1M_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEINtNtNtB1M_9behaviour6toggle23ToggleConnectionHandlerNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerEEIBcq_INtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEE0NCINvNvB3C_8for_each4callB6Q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBgN_7HashMapB6R_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3G_7collect6ExtendB6Q_E6extendIB11_IBP_IB11_IBP_IB11_IBP_IB11_IBP_IB11_IB2T_IB11_IB2T_IB11_B1g_FB1I_EB4R_EIB11_INtNtB1l_5empty5EmptyB50_EFB50_EB4R_EEFB4R_EB4M_EIB11_Bkh_FB50_EB4M_EEFB4M_EB4H_EIB11_B1g_FB1I_EB4H_EEFB4H_EB4C_EIB11_BO_B5j_EEB5T_EIB11_IB2T_IB11_IB2T_IB11_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1I_EBk1_EBkc_EBkT_EBl4_EFB4M_EB5E_EEB6u_EIB11_IB2T_IB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB1I_j2_EBk1_EBkc_EFB4R_EB6f_EEB7x_EE0E0E0E0E0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !18, !noundef !8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB2z_IB2A_IB2A_IB2A_IB2A_B1p_ReEB4C_EB1p_EB2z_EuFB2z_EB4e_NCIB3W_B4e_IB2A_B4e_B4o_EuFB4e_EB5g_QNCIB3W_B5g_IB2A_B5g_B4t_EuFB5g_EB5R_QNCIB3W_B5R_TINtNtB1t_10connection11AsStrHashEqB5R_EbEuNCINvB6w_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7L_IB7L_IB7L_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEINtNtNtB1t_9behaviour6toggle23ToggleConnectionHandlerNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerEEIBc2_INtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEE0NCINvNvB3e_8for_each4callB6s_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBgp_7HashMapB6t_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3i_7collect6ExtendB6s_E6extendIBO_INtNtB8_5chain5ChainIBO_IBiF_IBO_IBiF_IBO_IBiF_IBO_IB2A_IBO_IB2A_IBO_BX_FB1p_EB4t_EIBO_INtNtB12_5empty5EmptyB4C_EFB4C_EB4t_EEFB4t_EB4o_EIBO_Bk3_FB4C_EB4o_EEFB4o_EB4j_EIBO_BX_FB1p_EB4j_EEFB4j_EB4e_EIBO_IBiF_BN_BN_EB4V_EEB5v_EIBO_IB2A_IBO_IB2A_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EBjO_EBjZ_EBkF_EBkQ_EFB4o_EB5g_EEB66_EIBO_IB2A_IBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EBjO_EBjZ_EFB4t_EB5R_EEB79_EE0E0E0E0E0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !18, !noundef !8
  %.not4 = icmp eq i64 %i.d, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !18, !noundef !8
  %.not7 = icmp eq i64 %i.g, -1
  br i1 %.not7, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB2z_IB2A_IB2A_IB2A_IB2A_B1p_ReEB4B_EB1p_EB2z_EuFB2z_EB4d_NCIB3V_B4d_IB2A_B4d_B4n_EuFB4d_EB5f_QNCIB3V_B5f_IB2A_B5f_B4s_EuFB5f_EB5Q_QNCIB3V_B5Q_TINtNtB1t_10connection11AsStrHashEqB5Q_EbEuNCINvB6v_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectIB7K_IB7K_IB7K_IB2A_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerENtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerENtNtCsfY02lUNHLPc_15libp2p_identify7handler7HandlerEINtNtNtB1t_9behaviour6toggle23ToggleConnectionHandlerNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerEEIBc1_INtNtCsfoiTdJnOWBy_23libp2p_request_response7handler7HandlerNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEE0NCINvNvB3e_8for_each4callB6r_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBgo_7HashMapB6s_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3i_7collect6ExtendB6r_E6extendIBO_INtNtB8_5chain5ChainIBO_IBiE_IBO_IBiE_IBO_IBiE_IBO_IB2A_IBO_IB2A_IBO_BX_FB1p_EB4s_EIBO_INtNtB12_5empty5EmptyB4B_EFB4B_EB4s_EEFB4s_EB4n_EIBO_Bk2_FB4B_EB4n_EEFB4n_EB4i_EIBO_BX_FB1p_EB4i_EEFB4i_EB4d_EIBO_IBiE_BN_BN_EB4U_EEB5u_EIBO_IB2A_IBO_IB2A_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EBjN_EBjY_EBkE_EBkP_EFB4n_EB5f_EEB65_EIBO_IB2A_IBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EBjN_EBjY_EFB4s_EB5Q_EEB78_EE0E0E0E0E0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  ret void

bb.g:                                             ; preds = %bb.h, %bb.d
  resume { ptr, i32 } %i.e

bb.h:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #28
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1I_EINtCscu2bAJ62uie_6either6EitherB1I_B1I_EEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvB13_12map_try_foldB2S_IB2T_IB2T_IB2T_IB2T_B1I_ReEB59_EB1I_EB2S_EuINtNtNtBb_3ops12control_flow11ControlFlowTIB2T_IB2T_B4L_B4V_EB50_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2S_EB4L_NCIB4n_B4L_B6d_uB5s_FB4L_EB6d_QNCIB4n_B6d_B68_uB5s_FB6d_EB68_QNCINvNvB3C_8find_map5checkB68_B67_QNCINvNtB6A_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxIBP_IB11_IBP_IB11_IBP_IB11_IBP_IB11_IB2T_IB11_IB2T_IB11_B1g_FB1I_EB50_EIB11_INtNtB1l_5empty5EmptyB59_EFB59_EB50_EEFB50_EB4V_EIB11_Bcc_FB59_EB4V_EEFB4V_EB4Q_EIB11_B1g_FB1I_EB4Q_EEFB4Q_EB4L_EIB11_BO_B7s_EEB7W_EIB11_IB2T_IB11_IB2T_IB11_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1I_EBbW_EBc7_EBcO_EBcZ_EFB4V_EB6d_EEB8r_EIB11_IB2T_IB11_INtCsczYENlYh6wI_8smallvec8IntoIterAB1I_j2_EBbW_EBc7_EFB50_EB68_EEE0E0E0E0E0B5s_ECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %1, align 8, !range !18, !noundef !8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldB2z_IB2A_IB2A_IB2A_IB2A_B1p_ReEB4L_EB1p_EB2z_EuINtNtNtBc_3ops12control_flow11ControlFlowTIB2A_IB2A_B4n_B4x_EB4C_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2z_EB4n_NCIB40_B4n_B5P_uB54_FB4n_EB5P_QNCIB40_B5P_B5K_uB54_FB5P_EB5K_QNCINvNvB3e_8find_map5checkB5K_B5J_QNCINvNtB6c_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IBaB_IBO_IBaB_IBO_IBaB_IBO_IB2A_IBO_IB2A_IBO_BX_FB1p_EB4C_EIBO_INtNtB12_5empty5EmptyB4L_EFB4L_EB4C_EEFB4C_EB4x_EIBO_BbZ_FB4L_EB4x_EEFB4x_EB4s_EIBO_BX_FB1p_EB4s_EEFB4s_EB4n_EIBO_IBaB_BN_BN_EB74_EEB7y_EIBO_IB2A_IBO_IB2A_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EBbK_EBbV_EBcB_EBcM_EFB4x_EB5P_EEB83_EIBO_IB2A_IBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EBbK_EBbV_EFB4C_EB5K_EEE0E0E0E0E0B54_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.e = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2270, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.e, -2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !18, !noundef !8
  %.not7 = icmp eq i64 %i.g, -1
  br i1 %.not7, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.h = load i64, ptr %1, align 8, !range !18, !alias.scope !2271, !noundef !8 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2281, !nonnull !8, !noundef !8
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !2281
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8
  resume { ptr, i32 } %i.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  store i64 -1, ptr %1, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.d
  %.sink = phi i64 [ %i.e, %bb.d ], [ %i.q, %bb.m ], [ -2, %bb.n ], [ -2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1p_EINtCscu2bAJ62uie_6either6EitherB1p_B1p_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldB2z_IB2A_IB2A_IB2A_IB2A_B1p_ReEB4K_EB1p_EB2z_EuINtNtNtBc_3ops12control_flow11ControlFlowTIB2A_IB2A_B4m_B4w_EB4B_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEEFB2z_EB4m_NCIB3Z_B4m_B5O_uB53_FB4m_EB5O_QNCIB3Z_B5O_B5J_uB53_FB5O_EB5J_QNCINvNvB3e_8find_map5checkB5J_B5I_QNCINvNtB6b_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IBaA_IBO_IBaA_IBO_IBaA_IBO_IB2A_IBO_IB2A_IBO_BX_FB1p_EB4B_EIBO_INtNtB12_5empty5EmptyB4K_EFB4K_EB4B_EEFB4B_EB4w_EIBO_BbY_FB4K_EB4w_EEFB4w_EB4r_EIBO_BX_FB1p_EB4r_EEFB4r_EB4m_EIBO_IBaA_BN_BN_EB73_EEB7x_EIBO_IB2A_IBO_IB2A_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EBbJ_EBbU_EBcA_EBcL_EFB4w_EB5O_EEB82_EIBO_IB2A_IBO_INtCsczYENlYh6wI_8smallvec8IntoIterAB1p_j2_EBbJ_EBbU_EFB4B_EB5J_EEE0E0E0E0E0B53_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load i64, ptr %i.b, align 8, !range !14, !alias.scope !2282, !noundef !8 ; 2 uses
  %.not.i9 = icmp eq i64 %i.q, -2
  br i1 %.not.i9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.716.0..sroa_idx17, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB27_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3n_3VecB1o_E14extend_trustedBO_E0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %0, align 8, !range !31, !noundef !8
  %.not = icmp eq i64 %i.d, -2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2298
  %.sroa.0.0.copyload25.i = load i64, ptr %i.c, align 8, !alias.scope !2299 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !2300
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload25.i, -1
  br i1 %.not6.i, label %bb.f, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #28
          to label %.body unwind label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2298
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload25.i, ptr %i.a, align 8, !noalias !2298
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2A_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtBb_6option8IntoIterB1O_EB42_EE0E0INtB7_5FnMutTuB1O_EE8call_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs2Bxje7pdMIr_13libp2p_server.exit.loopexit.i unwind label %bb.c, !noalias !2297

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs2Bxje7pdMIr_13libp2p_server.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2298
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noundef !8 ; 2 uses
  %.val7 = load ptr, ptr %1, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.j, align 8            ; 4 uses
  switch i64 %i.i, label %._crit_edge.i [
    i64 -2, label %bb.h
    i64 -1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs2Bxje7pdMIr_13libp2p_server.exit.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.5.0.copyload, i64 %.val8 ; 2 uses
  store i64 %i.i, ptr %i.k, align 8, !noalias !2301
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
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !10, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.m, align 8, !noundef !8
  store i64 %.val6, ptr %.val, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !31, !noundef !8
  %.not20 = icmp eq i64 %i.o, -2
  br i1 %.not20, label %.body.thread15, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.body.thread15:                                   ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.e

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #28
          to label %.body.thread15 unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceReEENtNtNtB40_6future6future6Future4polls0_0Cs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls0_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls0_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !8, !nonnull !8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #31
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceReEENtNtNtB40_6future6future6Future4polls_0Cs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !8, !nonnull !8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #31
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtB6_10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtNtNtNtCskKLDkoKarTP_4core4iter7sources4once4OnceReEENtNtNtB5e_6future6future6Future4polls0_0Cs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls0_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXNtCsbVDXp34Q3tF_18multistream_select13dialer_selectINtB4_18DialerSelectFutureppENtNtNtCskKLDkoKarTP_4core6future6future6Future4polls0_10___CALLSITE, align 8, !nonnull !8, !align !10, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!2087 = !{!2052, !2048, !2044}
!2088 = !{!2050, !2048, !2046, !2044}
!2089 = !{!2054}
!2090 = !{!2056}
!2091 = !{!2058, !2056, !2057, !2046, !2044, !2045}
!2092 = !{!2060, !2056, !2044}
!2093 = !{!2058, !2056, !2046, !2044}
!2094 = !{!2062}
!2095 = !{!2065, !2064}
!2096 = !{!2067}
!2097 = !{!2069, !2067, !2068}
!2098 = !{!2071, !2067}
!2099 = !{!2075, !2074, !2073, !2069, !2067, !2068}
!2100 = !{!2075, !2069, !2067}
!2101 = !{!2077}
!2102 = !{!2080, !2079}
!2103 = !{!2082}
!2104 = distinct !{!2104, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2K_8find_map5checkB1O_B1O_QNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB49_13CachingClientINtNtB4b_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1O_EECs2Bxje7pdMIr_13libp2p_server"}
!2105 = distinct !{!2105, !2104, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2K_8find_map5checkB1O_B1O_QNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB49_13CachingClientINtNtB4b_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1O_EECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2106 = distinct !{!2106, !2104, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2K_8find_map5checkB1O_B1O_QNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB49_13CachingClientINtNtB4b_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1O_EECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2107 = distinct !{!2107, !2104, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduQNCINvNvB2K_8find_map5checkB1O_B1O_QNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB49_13CachingClientINtNtB4b_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE14handle_noerrors0_0E0INtNtNtBb_3ops12control_flow11ControlFlowB1O_EECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2108 = distinct !{!2108, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2109 = distinct !{!2109, !2108, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2110 = distinct !{!2110, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server"}
!2111 = distinct !{!2111, !2110, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2112 = distinct !{!2112, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2113 = distinct !{!2113, !2112, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2114 = distinct !{!2114, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server"}
!2115 = distinct !{!2115, !2114, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2116 = distinct !{!2116, !2114, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2117 = distinct !{!2117, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB1z_EEECs2Bxje7pdMIr_13libp2p_server"}
!2118 = distinct !{!2118, !2117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB1z_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2119 = distinct !{!2119, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB1d_EECs2Bxje7pdMIr_13libp2p_server"}
!2120 = distinct !{!2120, !2119, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEB1d_EECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2121 = distinct !{!2121, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server"}
!2122 = distinct !{!2122, !2121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2123 = distinct !{!2123, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server"}
!2124 = distinct !{!2124, !2123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2125 = distinct !{!2125, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server"}
!2126 = distinct !{!2126, !2125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2127 = distinct !{!2127, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2128 = distinct !{!2128, !2127, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2129 = distinct !{!2129, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try11from_outputCs2Bxje7pdMIr_13libp2p_server"}
!2130 = distinct !{!2130, !2129, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try11from_outputCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2131 = distinct !{!2131, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server"}
!2132 = distinct !{!2132, !2131, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2133 = distinct !{!2133, !2131, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2134 = distinct !{!2134, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try11from_outputCs2Bxje7pdMIr_13libp2p_server"}
!2135 = distinct !{!2135, !2134, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtB4_9try_trait3Try11from_outputCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2136 = !{!2105}
!2137 = !{!2107, !2105, !2106}
!2138 = !{!2107}
!2139 = !{!2109}
!2140 = !{!2111, !2105}
!2141 = !{!2113}
!2142 = !{!2116, !2115}
!2143 = !{!2118}
!2144 = !{!2122, !2120, !2118}
!2145 = !{!2124, !2120, !2118}
!2146 = !{!2126, !2120, !2118}
!2147 = !{!2128}
!2148 = !{!2130}
!2149 = !{!2133, !2132}
!2150 = !{!2135}
!2151 = distinct !{!2151, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2152 = distinct !{!2152, !2151, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2153 = distinct !{!2153, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_IB1w_IBY_IB1w_IBY_INtCscu2bAJ62uie_6either6EitherIBY_IB2d_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB3n_EIB2d_B3n_ReEEIBY_INtNtB2Z_5empty5EmptyB4G_EFB4G_EB4x_EEFB4x_EIB2d_B4x_B4G_EEIBY_B4O_FB4G_EB5w_EEFB5w_EIB2d_B5w_B3n_EEIBY_B2U_FB3n_EB6b_EEFB6b_EIB2d_B6b_IB2d_B3n_B3n_EEEIBY_IB1w_IBY_B2U_FB3n_EB6Z_EB7o_EFB6Z_EB6Q_EEFB6Q_EIB2d_B6Q_B5w_EEIBY_IB2d_IBY_IB2d_IBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB3n_EB4r_EB4K_EB5q_EB5L_EFB5w_EB84_EEFB84_EIB2d_B84_B4x_EEEECs2Bxje7pdMIr_13libp2p_server"}
!2154 = distinct !{!2154, !2153, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_5chain5ChainIBY_IB1w_IBY_IB1w_IBY_INtCscu2bAJ62uie_6either6EitherIBY_IB2d_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB3n_EIB2d_B3n_ReEEIBY_INtNtB2Z_5empty5EmptyB4G_EFB4G_EB4x_EEFB4x_EIB2d_B4x_B4G_EEIBY_B4O_FB4G_EB5w_EEFB5w_EIB2d_B5w_B3n_EEIBY_B2U_FB3n_EB6b_EEFB6b_EIB2d_B6b_IB2d_B3n_B3n_EEEIBY_IB1w_IBY_B2U_FB3n_EB6Z_EB7o_EFB6Z_EB6Q_EEFB6Q_EIB2d_B6Q_B5w_EEIBY_IB2d_IBY_IB2d_IBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB3n_EB4r_EB4K_EB5q_EB5L_EFB5w_EB84_EEFB84_EIB2d_B84_B4x_EEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2155 = distinct !{!2155, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_IB1a_IBC_IB1a_IBC_INtCscu2bAJ62uie_6either6EitherIBC_IB1Q_IBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2Z_EIB1Q_B2Z_ReEEIBC_INtNtB2C_5empty5EmptyB4i_EFB4i_EB49_EEFB49_EIB1Q_B49_B4i_EEIBC_B4q_FB4i_EB58_EEFB58_EIB1Q_B58_B2Z_EEIBC_B2x_FB2Z_EB5N_EEFB5N_EIB1Q_B5N_IB1Q_B2Z_B2Z_EEEIBC_IB1a_IBC_B2x_FB2Z_EB6B_EB70_EFB6B_EB6s_EEFB6s_EIB1Q_B6s_B58_EEIBC_IB1Q_IBC_IB1Q_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2Z_EB43_EB4m_EB52_EB5n_EFB58_EB7G_EEFB7G_EIB1Q_B7G_B49_EEECs2Bxje7pdMIr_13libp2p_server"}
!2156 = distinct !{!2156, !2155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_IB1a_IBC_IB1a_IBC_INtCscu2bAJ62uie_6either6EitherIBC_IB1Q_IBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2Z_EIB1Q_B2Z_ReEEIBC_INtNtB2C_5empty5EmptyB4i_EFB4i_EB49_EEFB49_EIB1Q_B49_B4i_EEIBC_B4q_FB4i_EB58_EEFB58_EIB1Q_B58_B2Z_EEIBC_B2x_FB2Z_EB5N_EEFB5N_EIB1Q_B5N_IB1Q_B2Z_B2Z_EEEIBC_IB1a_IBC_B2x_FB2Z_EB6B_EB70_EFB6B_EB6s_EEFB6s_EIB1Q_B6s_B58_EEIBC_IB1Q_IBC_IB1Q_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2Z_EB43_EB4m_EB52_EB5n_EFB58_EB7G_EEFB7G_EIB1Q_B7G_B49_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2157 = distinct !{!2157, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapIBC_IB1e_IBC_IB1e_INtCscu2bAJ62uie_6either6EitherIB1e_IB1M_IB1e_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2X_EIB1M_B2X_ReEEIB1e_INtNtB2A_5empty5EmptyB4g_EFB4g_EB47_EEFB47_EIB1M_B47_B4g_EEIB1e_B4p_FB4g_EB57_EEFB57_EIB1M_B57_B2X_EEIB1e_B2v_FB2X_EB5N_EEFB5N_EIB1M_B5N_IB1M_B2X_B2X_EEEIB1e_IBC_IB1e_B2v_FB2X_EB6C_EB71_EFB6C_EB6t_EEFB6t_EIB1M_B6t_B57_EEIB1e_IB1M_IB1e_IB1M_IB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2X_EB41_EB4k_EB51_EB5m_EFB57_EB7I_EEECs2Bxje7pdMIr_13libp2p_server"}
!2158 = distinct !{!2158, !2157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapIBC_IB1e_IBC_IB1e_INtCscu2bAJ62uie_6either6EitherIB1e_IB1M_IB1e_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2X_EIB1M_B2X_ReEEIB1e_INtNtB2A_5empty5EmptyB4g_EFB4g_EB47_EEFB47_EIB1M_B47_B4g_EEIB1e_B4p_FB4g_EB57_EEFB57_EIB1M_B57_B2X_EEIB1e_B2v_FB2X_EB5N_EEFB5N_EIB1M_B5N_IB1M_B2X_B2X_EEEIB1e_IBC_IB1e_B2v_FB2X_EB6C_EB71_EFB6C_EB6t_EEFB6t_EIB1M_B6t_B57_EEIB1e_IB1M_IB1e_IB1M_IB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2X_EB41_EB4k_EB51_EB5m_EFB57_EB7I_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2159 = distinct !{!2159, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_IB1w_IBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB31_EIB1w_B31_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4k_EFB4k_EB4b_EEFB4b_EIB1w_B4b_B4k_EEIBY_B4s_FB4k_EB5k_EEFB5k_EIB1w_IB1w_IB1w_B5k_B31_EIB1w_B31_B31_EEB5k_EEEECs2Bxje7pdMIr_13libp2p_server"}
!2160 = distinct !{!2160, !2159, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_IB1w_IBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB31_EIB1w_B31_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4k_EFB4k_EB4b_EEFB4b_EIB1w_B4b_B4k_EEIBY_B4s_FB4k_EB5k_EEFB5k_EIB1w_IB1w_IB1w_B5k_B31_EIB1w_B31_B31_EEB5k_EEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2161 = distinct !{!2161, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2F_EIB1a_B2F_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3Y_EFB3Y_EB3P_EEFB3P_EIB1a_B3P_B3Y_EEIBC_B46_FB3Y_EB4X_EEFB4X_EIB1a_IB1a_IB1a_B4X_B2F_EIB1a_B2F_B2F_EEB4X_EEECs2Bxje7pdMIr_13libp2p_server"}
!2162 = distinct !{!2162, !2161, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2F_EIB1a_B2F_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3Y_EFB3Y_EB3P_EEFB3P_EIB1a_B3P_B3Y_EEIBC_B46_FB3Y_EB4X_EEFB4X_EIB1a_IB1a_IB1a_B4X_B2F_EIB1a_B2F_B2F_EEB4X_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2163 = distinct !{!2163, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2B_EIBC_B2B_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3T_EFB3T_EB3L_EEFB3L_EIBC_B3L_B3T_EEIB17_B42_FB3T_EB4U_EEECs2Bxje7pdMIr_13libp2p_server"}
!2164 = distinct !{!2164, !2163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2B_EIBC_B2B_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3T_EFB3T_EB3L_EEFB3L_EIBC_B3L_B3T_EEIB17_B42_FB3T_EB4U_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2165 = distinct !{!2165, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs2Bxje7pdMIr_13libp2p_server"}
!2166 = distinct !{!2166, !2165, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2167 = distinct !{!2167, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs2Bxje7pdMIr_13libp2p_server"}
!2168 = distinct !{!2168, !2167, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2169 = distinct !{!2169, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2170 = distinct !{!2170, !2169, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2171 = !{!2152}
!2172 = !{!2154}
!2173 = !{!2160, !2158, !2156, !2154}
!2174 = !{!2168, !2166, !2164, !2162, !2160, !2158, !2156, !2154}
!2175 = !{!2170}
!2176 = distinct !{!2176, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2F_EIB1a_B2F_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3Y_EFB3Y_EB3P_EEFB3P_EIB1a_B3P_B3Y_EEIBC_B46_FB3Y_EB4X_EEFB4X_EIB1a_IB1a_IB1a_B4X_B2F_EIB1a_B2F_B2F_EEB4X_EEECs2Bxje7pdMIr_13libp2p_server"}
!2177 = distinct !{!2177, !2176, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2F_EIB1a_B2F_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3Y_EFB3Y_EB3P_EEFB3P_EIB1a_B3P_B3Y_EEIBC_B46_FB3Y_EB4X_EEFB4X_EIB1a_IB1a_IB1a_B4X_B2F_EIB1a_B2F_B2F_EEB4X_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2178 = distinct !{!2178, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2B_EIBC_B2B_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3T_EFB3T_EB3L_EEFB3L_EIBC_B3L_B3T_EEIB17_B42_FB3T_EB4U_EEECs2Bxje7pdMIr_13libp2p_server"}
!2179 = distinct !{!2179, !2178, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2B_EIBC_B2B_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3T_EFB3T_EB3L_EEFB3L_EIBC_B3L_B3T_EEIB17_B42_FB3T_EB4U_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2180 = distinct !{!2180, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs2Bxje7pdMIr_13libp2p_server"}
!2181 = distinct !{!2181, !2180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2182 = distinct !{!2182, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs2Bxje7pdMIr_13libp2p_server"}
!2183 = distinct !{!2183, !2182, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2184 = !{!2183, !2181, !2179, !2177}
!2185 = distinct !{!2185, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2186 = distinct !{!2186, !2185, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2187 = distinct !{!2187, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2188 = distinct !{!2188, !2187, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2189 = !{!2186}
!2190 = !{!2188}
!2191 = distinct !{!2191, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2192 = distinct !{!2192, !2191, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2193 = distinct !{!2193, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2194 = distinct !{!2194, !2193, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2195 = !{!2192}
!2196 = !{!2194}
!2197 = distinct !{!2197, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2198 = distinct !{!2198, !2197, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2199 = distinct !{!2199, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_IB1w_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2G_EIB1w_B2G_ReEEIBY_INtNtB2i_5empty5EmptyB3Z_EFB3Z_EB3Q_EEFB3Q_EIB1w_B3Q_B3Z_EEIBY_B47_FB3Z_EB4P_EEFB4P_EIB1w_B4P_B2G_EEEECs2Bxje7pdMIr_13libp2p_server"}
!2200 = distinct !{!2200, !2199, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_IB1w_IBY_INtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2G_EIB1w_B2G_ReEEIBY_INtNtB2i_5empty5EmptyB3Z_EFB3Z_EB3Q_EEFB3Q_EIB1w_B3Q_B3Z_EEIBY_B47_FB3Z_EB4P_EEFB4P_EIB1w_B4P_B2G_EEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2201 = distinct !{!2201, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2j_EIB1a_B2j_ReEEIBC_INtNtB1W_5empty5EmptyB3C_EFB3C_EB3t_EEFB3t_EIB1a_B3t_B3C_EEIBC_B3K_FB3C_EB4s_EEFB4s_EIB1a_B4s_B2j_EEECs2Bxje7pdMIr_13libp2p_server"}
!2202 = distinct !{!2202, !2201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_IB1a_IBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2j_EIB1a_B2j_ReEEIBC_INtNtB1W_5empty5EmptyB3C_EFB3C_EB3t_EEFB3t_EIB1a_B3t_B3C_EEIBC_B3K_FB3C_EB4s_EEFB4s_EIB1a_B4s_B2j_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2203 = distinct !{!2203, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtB1d_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2g_EIBC_B2g_ReEEIB17_INtNtB1S_5empty5EmptyB3y_EFB3y_EB3q_EEFB3q_EIBC_B3q_B3y_EEIB17_B3H_FB3y_EB4p_EEECs2Bxje7pdMIr_13libp2p_server"}
!2204 = distinct !{!2204, !2203, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapIBC_IB17_INtNtNtB1d_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2g_EIBC_B2g_ReEEIB17_INtNtB1S_5empty5EmptyB3y_EFB3y_EB3q_EEFB3q_EIBC_B3q_B3y_EEIB17_B3H_FB3y_EB4p_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2205 = distinct !{!2205, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2a_EIB1a_B2a_ReEEIBC_INtNtB1N_5empty5EmptyB3t_EFB3t_EB3k_EEFB3k_EIB1a_B3k_B3t_EEECs2Bxje7pdMIr_13libp2p_server"}
!2206 = distinct !{!2206, !2205, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2a_EIB1a_B2a_ReEEIBC_INtNtB1N_5empty5EmptyB3t_EFB3t_EB3k_EEFB3k_EIB1a_B3k_B3t_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2207 = distinct !{!2207, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1d_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB27_EIBC_B27_ReEEIB17_INtNtB1J_5empty5EmptyB3p_EFB3p_EB3h_EEECs2Bxje7pdMIr_13libp2p_server"}
!2208 = distinct !{!2208, !2207, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB1d_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB27_EIBC_B27_ReEEIB17_INtNtB1J_5empty5EmptyB3p_EFB3p_EB3h_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2209 = distinct !{!2209, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_ReEEECs2Bxje7pdMIr_13libp2p_server"}
!2210 = distinct !{!2210, !2209, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_ReEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2211 = distinct !{!2211, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2212 = distinct !{!2212, !2211, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2213 = distinct !{!2213, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2214 = distinct !{!2214, !2213, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2215 = distinct !{!2215, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2216 = distinct !{!2216, !2215, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2217 = distinct !{!2217, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2218 = distinct !{!2218, !2217, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2219 = distinct !{!2219, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server"}
!2220 = distinct !{!2220, !2219, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2221 = distinct !{!2221, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server"}
!2222 = distinct !{!2222, !2221, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2223 = distinct !{!2223, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server"}
!2224 = distinct !{!2224, !2223, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2225 = distinct !{!2225, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!2226 = distinct !{!2226, !2225, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2227 = distinct !{!2227, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2228 = distinct !{!2228, !2227, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2229 = !{!2198}
!2230 = !{!2200}
!2231 = !{!2202}
!2232 = !{!2204}
!2233 = !{!2206}
!2234 = !{!2208}
!2235 = !{!2210}
!2236 = !{!2212}
!2237 = !{!2214}
!2238 = !{!2216}
!2239 = !{!2218}
!2240 = !{!2220}
!2241 = !{!2222}
!2242 = !{!2224}
!2243 = !{!2226}
!2244 = !{!2226, !2224, !2222, !2220, !2218, !2216, !2214, !2212, !2210, !2208, !2206, !2204, !2202, !2200}
!2245 = !{!2228}
!2246 = distinct !{!2246, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2247 = distinct !{!2247, !2246, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2248 = distinct !{!2248, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server"}
!2249 = distinct !{!2249, !2248, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1Y_EINtCscu2bAJ62uie_6either6EitherB1Y_B1Y_EEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2250 = distinct !{!2250, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECs2Bxje7pdMIr_13libp2p_server"}
!2251 = distinct !{!2251, !2250, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1B_EINtCscu2bAJ62uie_6either6EitherB1B_B1B_EEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2252 = distinct !{!2252, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2253 = distinct !{!2253, !2252, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2254 = distinct !{!2254, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2255 = distinct !{!2255, !2254, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2256 = distinct !{!2256, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2257 = distinct !{!2257, !2256, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option4ItemNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2258 = distinct !{!2258, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server"}
!2259 = distinct !{!2259, !2258, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2260 = distinct !{!2260, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server"}
!2261 = distinct !{!2261, !2260, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2262 = distinct !{!2262, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server"}
!2263 = distinct !{!2263, !2262, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2264 = distinct !{!2264, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server"}
!2265 = distinct !{!2265, !2264, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2266 = distinct !{!2266, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!2267 = distinct !{!2267, !2266, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2268 = distinct !{!2268, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server"}
!2269 = distinct !{!2269, !2268, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_IB12_IB12_IB12_IB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2Y_EB1V_EIB12_B1V_B1V_EEB1L_EB1Q_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2270 = !{!2247}
!2271 = !{!2249}
!2272 = !{!2251}
!2273 = !{!2253}
!2274 = !{!2255}
!2275 = !{!2257}
!2276 = !{!2259}
!2277 = !{!2261}
!2278 = !{!2263}
!2279 = !{!2265}
!2280 = !{!2267}
!2281 = !{!2267, !2265, !2263, !2261, !2259, !2257, !2255, !2253, !2251, !2249}
!2282 = !{!2269}
!2283 = distinct !{!2283, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2284 = distinct !{!2284, !2283, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2285 = distinct !{!2285, !2283, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2286 = distinct !{!2286, i1 true, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server"}
!2287 = distinct !{!2287, !2286, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2288 = distinct !{!2288, i1 true, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server"}
!2289 = distinct !{!2289, !2288, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server: argument 0:pre.rot"}
!2290 = distinct !{!2290, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2291 = distinct !{!2291, !2290, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2292 = distinct !{!2292, !2290, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2293 = distinct !{!2293, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2294 = distinct !{!2294, !2293, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2295 = distinct !{!2295, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0Cs2Bxje7pdMIr_13libp2p_server"}
!2296 = distinct !{!2296, !2295, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2297 = !{!2284}
!2298 = !{!2284, !2285}
!2299 = !{!2289, !2287, !2284}
!2300 = !{!2287, !2284}
!2301 = !{!2296, !2294, !2292, !2291}
!2302 = distinct !{!2302, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server"}
!2303 = distinct !{!2303, !2302, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2304 = distinct !{!2304, !2302, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2305 = distinct !{!2305, !2302, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2306 = distinct !{!2306, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2307 = distinct !{!2307, !2306, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2308 = !{!2307, !2305, !2304, !2303}
!2309 = distinct !{!2309, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server"}
!2310 = distinct !{!2310, !2309, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2311 = distinct !{!2311, !2309, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2312 = distinct !{!2312, !2309, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_4fuse4FuseQNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v15proto7structs7MessageEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2313 = distinct !{!2313, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2314 = distinct !{!2314, !2313, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2315 = !{!2314, !2312, !2311, !2310}
!2316 = distinct !{!2316, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server"}
!2317 = distinct !{!2317, !2316, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2318 = distinct !{!2318, !2316, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2319 = distinct !{!2319, !2316, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2320 = distinct !{!2320, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2321 = distinct !{!2321, !2320, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2322 = distinct !{!2322, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server"}
!2323 = distinct !{!2323, !2322, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2324 = distinct !{!2324, !2322, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2325 = distinct !{!2325, !2322, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2326 = distinct !{!2326, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2327 = distinct !{!2327, !2326, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2328 = !{!2317}
!2329 = !{!2318}
!2330 = !{!2317, !2318, !2319}
!2331 = !{!2317, !2319}
!2332 = !{!2321, !2317, !2318, !2319}
!2333 = !{!2317, !2318}
!2334 = !{!2325, !2324, !2323}
!2335 = !{!2325, !2323}
!2336 = !{!2327, !2325, !2324, !2323}
!2337 = distinct !{!2337, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server"}
!2338 = distinct !{!2338, !2337, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2339 = distinct !{!2339, !2337, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2340 = distinct !{!2340, !2337, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2341 = distinct !{!2341, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2342 = distinct !{!2342, !2341, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2343 = distinct !{!2343, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server"}
!2344 = distinct !{!2344, !2343, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2345 = distinct !{!2345, !2343, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2346 = distinct !{!2346, !2343, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2347 = distinct !{!2347, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2348 = distinct !{!2348, !2347, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2349 = !{!2338}
!2350 = !{!2339}
!2351 = !{!2338, !2339, !2340}
!2352 = !{!2338, !2340}
!2353 = !{!2342, !2338, !2339, !2340}
!2354 = !{!2338, !2339}
!2355 = !{!2346, !2345, !2344}
!2356 = !{!2346, !2344}
!2357 = !{!2348, !2346, !2345, !2344}
!2358 = distinct !{!2358, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server"}
!2359 = distinct !{!2359, !2358, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2360 = distinct !{!2360, !2358, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2361 = distinct !{!2361, !2358, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2362 = distinct !{!2362, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2363 = distinct !{!2363, !2362, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2364 = distinct !{!2364, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server"}
!2365 = distinct !{!2365, !2364, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2366 = distinct !{!2366, !2364, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2367 = distinct !{!2367, !2364, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2368 = distinct !{!2368, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2369 = distinct !{!2369, !2368, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2370 = !{!2359}
!2371 = !{!2360}
!2372 = !{!2359, !2360, !2361}
!2373 = !{!2359, !2361}
!2374 = !{!2363, !2359, !2360, !2361}
!2375 = !{!2359, !2360}
!2376 = !{!2367, !2366, !2365}
!2377 = !{!2367, !2365}
!2378 = !{!2369, !2367, !2366, !2365}
!2379 = distinct !{!2379, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server"}
!2380 = distinct !{!2380, !2379, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2381 = distinct !{!2381, !2379, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2382 = distinct !{!2382, !2379, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2383 = distinct !{!2383, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2384 = distinct !{!2384, !2383, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2385 = distinct !{!2385, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server"}
!2386 = distinct !{!2386, !2385, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2387 = distinct !{!2387, !2385, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2388 = distinct !{!2388, !2385, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2389 = distinct !{!2389, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2390 = distinct !{!2390, !2389, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2391 = !{!2380}
!2392 = !{!2381}
!2393 = !{!2380, !2381, !2382}
!2394 = !{!2380, !2382}
!2395 = !{!2384, !2380, !2381, !2382}
!2396 = !{!2380, !2381}
!2397 = !{!2388, !2387, !2386}
!2398 = !{!2388, !2386}
!2399 = !{!2390, !2388, !2387, !2386}
!2400 = distinct !{!2400, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_13KadRequestMsgNtB2b_14KadResponseMsgEEECs2Bxje7pdMIr_13libp2p_server"}
!2401 = distinct !{!2401, !2400, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_13KadRequestMsgNtB2b_14KadResponseMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2402 = distinct !{!2402, !2400, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_13KadRequestMsgNtB2b_14KadResponseMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2403 = distinct !{!2403, !2400, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_13KadRequestMsgNtB2b_14KadResponseMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2404 = distinct !{!2404, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2405 = distinct !{!2405, !2404, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2406 = distinct !{!2406, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_13KadRequestMsgNtB2J_14KadResponseMsgEEEECs2Bxje7pdMIr_13libp2p_server"}
!2407 = distinct !{!2407, !2406, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_13KadRequestMsgNtB2J_14KadResponseMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2408 = distinct !{!2408, !2406, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_13KadRequestMsgNtB2J_14KadResponseMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2409 = distinct !{!2409, !2406, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_13KadRequestMsgNtB2J_14KadResponseMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2410 = distinct !{!2410, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2411 = distinct !{!2411, !2410, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2412 = !{!2403, !2402, !2401}
!2413 = !{!2403, !2401}
!2414 = !{!2405, !2403, !2402, !2401}
!2415 = !{!2409, !2408, !2407}
!2416 = !{!2409, !2407}
!2417 = !{!2411, !2409, !2408, !2407}
!2418 = distinct !{!2418, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_14KadResponseMsgNtB2b_13KadRequestMsgEEECs2Bxje7pdMIr_13libp2p_server"}
!2419 = distinct !{!2419, !2418, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_14KadResponseMsgNtB2b_13KadRequestMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2420 = distinct !{!2420, !2418, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_14KadResponseMsgNtB2b_13KadRequestMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2421 = distinct !{!2421, !2418, !"_RINvNtCsjYje7j88m19_18asynchronous_codec12framed_write14framed_write_2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2b_14KadResponseMsgNtB2b_13KadRequestMsgEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2422 = distinct !{!2422, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2423 = distinct !{!2423, !2422, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2424 = distinct !{!2424, i1 true, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_14KadResponseMsgNtB2J_13KadRequestMsgEEEECs2Bxje7pdMIr_13libp2p_server"}
!2425 = distinct !{!2425, !2424, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_14KadResponseMsgNtB2J_13KadRequestMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 2"}
!2426 = distinct !{!2426, !2424, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_14KadResponseMsgNtB2J_13KadRequestMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2427 = distinct !{!2427, !2424, !"_RINvNtCsjYje7j88m19_18asynchronous_codec11framed_read13framed_read_2INtNtB4_12framed_write12FramedWrite2INtNtB4_4fuse4FuseNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtNtCskC4O4hr3vz7_10libp2p_kad8protocol5CodecNtB2J_14KadResponseMsgNtB2J_13KadRequestMsgEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2428 = distinct !{!2428, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2429 = distinct !{!2429, !2428, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2430 = !{!2421, !2420, !2419}
!2431 = !{!2421, !2419}
!2432 = !{!2423, !2421, !2420, !2419}
!2433 = !{!2427, !2426, !2425}
!2434 = !{!2427, !2425}
!2435 = !{!2429, !2427, !2426, !2425}
!2436 = !{i8 0, i8 44}
!2437 = distinct !{!2437, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2438 = distinct !{!2438, !2437, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!2439 = !{!2438}
!2440 = distinct !{!2440, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2441 = distinct !{!2441, !2440, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2442 = distinct !{!2442, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!2443 = distinct !{!2443, !2442, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!2444 = distinct !{!2444, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2445 = distinct !{!2445, !2444, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2446 = !{!2441}
!2447 = !{!2443, !2441}
!2448 = !{!2445}
!2449 = distinct !{!2449, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2450 = distinct !{!2450, !2449, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!2451 = !{!2450}
!2452 = distinct !{!2452, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2453 = distinct !{!2453, !2452, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2454 = distinct !{!2454, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!2455 = distinct !{!2455, !2454, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!2456 = distinct !{!2456, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2457 = distinct !{!2457, !2456, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2458 = !{!2453}
!2459 = !{!2455, !2453}
!2460 = !{!2457}
!2461 = distinct !{!2461, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2462 = distinct !{!2462, !2461, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!2463 = !{!2462}
!2464 = distinct !{!2464, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2465 = distinct !{!2465, !2464, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2466 = distinct !{!2466, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!2467 = distinct !{!2467, !2466, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!2468 = distinct !{!2468, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2469 = distinct !{!2469, !2468, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2470 = !{!2465}
!2471 = !{!2467, !2465}
!2472 = !{!2469}
!2473 = distinct !{!2473, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2474 = distinct !{!2474, !2473, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!2475 = !{!2474}
!2476 = distinct !{!2476, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2477 = distinct !{!2477, !2476, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2478 = distinct !{!2478, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!2479 = distinct !{!2479, !2478, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!2480 = distinct !{!2480, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2481 = distinct !{!2481, !2480, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2482 = !{!2477}
!2483 = !{!2479, !2477}
!2484 = !{!2481}
!2485 = distinct !{!2485, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2486 = distinct !{!2486, !2485, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!2487 = !{!2486}
!2488 = distinct !{!2488, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2489 = distinct !{!2489, !2488, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2490 = distinct !{!2490, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec"}
!2491 = distinct !{!2491, !2490, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8from_vec: argument 0"}
!2492 = distinct !{!2492, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!2493 = distinct !{!2493, !2492, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!2494 = !{!2489}
!2495 = !{!2491, !2489}
!2496 = !{!2493}
!2497 = distinct !{!2497, i1 true, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!2498 = distinct !{!2498, !2497, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!2499 = distinct !{!2499, !2497, !"_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!2500 = distinct !{!2500, i1 true, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!2501 = distinct !{!2501, !2500, !"_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
end_hunk_1
