Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_gossipsub-c8fcaed68e28bdd1.libp2p_gossipsub.10826421db8200d3-cgu.13?download=true
inline.NumInlined: 417
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENvYB1n_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2V_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3N_5accumjNtB5M_3Sum3sumIBO_BN_B4H_EE0E0EB1x_:bb.a
  %.not4.i.i.i.i = icmp eq i64 %i.i, -1
  br i1 %.not4.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsjjNvYBV_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2t_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4t_3Sum3sumINtB4_3MapIB53_INtNtNtBa_5slice4iter4IterBV_EB2j_EB3p_EE0E0E0B15_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !307, !noundef !5 ; 3 uses
  %i.k = icmp sgt i64 %.val.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %.val.i.i.i.i.i, 1
  %i.m = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = mul nuw nsw i64 %i.n, 9
  %i.p = add nuw nsw i64 %i.o, 73
  %i.q = lshr i64 %i.p, 6
  %i.r = add nuw i64 %.val.i.i.i.i.i, 1
  %i.s = add nuw i64 %i.r, %i.q
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsjjNvYBV_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2t_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4t_3Sum3sumINtB4_3MapIB53_INtNtNtBa_5slice4iter4IterBV_EB2j_EB3p_EE0E0E0B15_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsjjNvYBV_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2t_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4t_3Sum3sumINtB4_3MapIB53_INtNtNtBa_5slice4iter4IterBV_EB2j_EB3p_EE0E0E0B15_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %.not.i.i.i.i = icmp eq i8 %i.h, 2
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %i.u = load i8, ptr %i.t, align 1, !range !10, !alias.scope !306, !noundef !5
  %.not5.i.i.i.i = icmp eq i8 %i.u, 2
  %spec.select.i7.i.i.i.i = select i1 %.not5.i.i.i.i, i64 0, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !10, !alias.scope !306, !noundef !5
  %.not6.i.i.i.i = icmp eq i8 %i.w, 2
  %i.x = add nuw i64 %.sroa.02.0.i.i.i.i.i, %spec.select.i.i.i.i.i
  %i.y = add nuw i64 %i.x, %spec.select.i7.i.i.i.i
  %spec.select.i8.i.i.i.i = select i1 %.not6.i.i.i.i, i64 0, i64 2
  %i.z = add nuw i64 %i.y, %spec.select.i8.i.i.i.i ; 2 uses
  %i.aa = or i64 %i.z, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 73
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.z, %.sroa.02.0.i
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.e
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB31_jjjNCINvNtNtB3N_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB2h_5accumjNtB5O_3Sum3sumINtB33_3MapIB6g_BF_B3D_EB4K_EE0E0E0EB10_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNvYBQ_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB31_jjjNCINvNtNtB3N_8encoding7message20encoded_len_repeatedBQ_E0NCINvXsK_NtB2h_5accumjNtB5O_3Sum3sumINtB33_3MapIB6g_BF_B3D_EB4K_EE0E0E0EB10_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsjjNvYBV_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2t_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4t_3Sum3sumINtB4_3MapIB53_INtNtNtBa_5slice4iter4IterBV_EB2j_EB3p_EE0E0E0B15_.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.ah, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsjjNvYBV_NtNtCsbZN1VVVQjZP_5prost7message7Message11encoded_lenNCIB2_jjjNCINvNtNtB2t_8encoding7message20encoded_len_repeatedBV_E0NCINvXsK_NtNtB8_6traits5accumjNtB4t_3Sum3sumINtB4_3MapIB53_INtNtNtBa_5slice4iter4IterBV_EB2j_EB3p_EE0E0E0B15_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB12_3VechEENvYNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB22_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB22_E0INtNtBc_6result6ResultB45_zEEB26_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VechEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENCINvNtNtB1g_8adapters3map12map_try_foldBX_B2O_B2e_INtNtB1i_6result6ResultB2e_zENvYB2O_INtNtB1i_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2O_E0E0B4u_EB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types8PeerInfoENCNvXs8_B1N_NtNtNtNtB1P_9rpc_proto5proto12gossipsub_pb3RpcINtNtBc_7convert4FromNtB1N_6RpcOutE4froms1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB2P_8PeerInfoENCINvNtB12_16in_place_collect24write_in_place_with_dropB5y_E0INtNtBc_6result6ResultB4X_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtB11_9rpc_proto5proto12gossipsub_pb8PeerInfoENCINvNtNtB1T_8adapters3map12map_try_foldBX_B3r_B2R_INtNtB1V_6result6ResultB2R_zENCNvXs8_BZ_NtB3t_3RpcINtNtB1V_7convert4FromNtBZ_6RpcOutE4froms1_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3r_E0E0B56_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENCNvXs8_B1N_NtNtNtNtB1P_9rpc_proto5proto12gossipsub_pb3RpcINtNtBc_7convert4FromNtB1N_6RpcOutE4froms0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VechEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5z_E0INtNtBc_6result6ResultB4Y_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtB8_3VechEENCINvNtNtB1U_8adapters3map12map_try_foldBX_B3s_B2S_INtNtB1W_6result6ResultB2S_zENCNvXs8_BZ_NtNtNtNtB11_9rpc_proto5proto12gossipsub_pb3RpcINtNtB1W_7convert4FromNtBZ_6RpcOutE4froms0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0E0B4u_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENCNvXs8_B1N_NtNtNtNtB1P_9rpc_proto5proto12gossipsub_pb3RpcINtNtBc_7convert4FromNtB1N_6RpcOutE4froms2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VechEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5z_E0INtNtBc_6result6ResultB4Y_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtB8_3VechEENCINvNtNtB1U_8adapters3map12map_try_foldBX_B3s_B2S_INtNtB1W_6result6ResultB2S_zENCNvXs8_BZ_NtNtNtNtB11_9rpc_proto5proto12gossipsub_pb3RpcINtNtB1W_7convert4FromNtBZ_6RpcOutE4froms2_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0E0B4u_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENCNvXs8_B1N_NtNtNtNtB1P_9rpc_proto5proto12gossipsub_pb3RpcINtNtBc_7convert4FromNtB1N_6RpcOutE4froms_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VechEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5y_E0INtNtBc_6result6ResultB4X_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub5types9MessageIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtB8_3VechEENCINvNtNtB1U_8adapters3map12map_try_foldBX_B3s_B2S_INtNtB1W_6result6ResultB2S_zENCNvXs8_BZ_NtNtNtNtB11_9rpc_proto5proto12gossipsub_pb3RpcINtNtB1W_7convert4FromNtBZ_6RpcOutE4froms_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0E0B4u_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlGraftENCNvXs6_NtB1T_8protocolNtB3g_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4V_8for_each4callNtNtB1T_5types13ControlActionNCINvMsk_B12_INtB12_3VecB5Y_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlGraftENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2q_8adapters3map8map_foldBX_NtNtB15_5types13ControlActionuNCNvXs6_NtB15_8protocolNtB4z_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes1_0NCINvNvB2k_8for_each4callB3X_NCINvMsk_B8_INtB8_3VecB3X_E14extend_trustedINtB3q_3MapBI_B4r_EE0E0E0EB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlIHaveENCNvXs6_NtB1T_8protocolNtB3g_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4U_8for_each4callNtNtB1T_5types13ControlActionNCINvMsk_B12_INtB12_3VecB5X_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlIHaveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2q_8adapters3map8map_foldBX_NtNtB15_5types13ControlActionuNCNvXs6_NtB15_8protocolNtB4z_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes_0NCINvNvB2k_8for_each4callB3X_NCINvMsk_B8_INtB8_3VecB3X_E14extend_trustedINtB3q_3MapBI_B4r_EE0E0E0EB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlIWantENCNvXs6_NtB1T_8protocolNtB3g_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4V_8for_each4callNtNtB1T_5types13ControlActionNCINvMsk_B12_INtB12_3VecB5Y_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb12ControlIWantENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2q_8adapters3map8map_foldBX_NtNtB15_5types13ControlActionuNCNvXs6_NtB15_8protocolNtB4z_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes0_0NCINvNvB2k_8for_each4callB3X_NCINvMsk_B8_INtB8_3VecB3X_E14extend_trustedINtB3q_3MapBI_B4r_EE0E0E0EB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENCNvXs6_NtB1V_8protocolNtB3g_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes4_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB1V_5types12SubscriptionENCINvNtB12_16in_place_collect24write_in_place_with_dropB6d_E0INtNtBc_6result6ResultB5C_zEEB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB17_5types12SubscriptionENCINvNtNtB2q_8adapters3map12map_try_foldBX_B3Y_B3o_INtNtB2s_6result6ResultB3o_zENCNvXs6_NtB17_8protocolNtB5R_14GossipsubCodecNtNtCsjYje7j88m19_18asynchronous_codec7decoder7Decoder6decodes4_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3Y_E0E0B5g_EB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbbEENCNvXs8_NtB1Q_5typesNtNtNtNtB1Q_9rpc_proto5proto12gossipsub_pb3RpcINtNtBc_7convert4FromNtB2O_6RpcOutE4from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB32_3rpc7SubOptsENCINvNtB12_16in_place_collect24write_in_place_with_dropB5I_E0INtNtBc_6result6ResultB57_zEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashbbEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtNtB12_9rpc_proto5proto12gossipsub_pb3rpc7SubOptsENCINvNtNtB1Y_8adapters3map12map_try_foldBX_B3w_B2W_INtNtB20_6result6ResultB2W_zENCNvXs8_NtB12_5typesNtB3A_3RpcINtNtB20_7convert4FromNtB5R_6RpcOutE4from0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3w_E0E0B5g_EB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb16topic_descriptorNtB6_8AuthOptsNtNtCsbZN1VVVQjZP_5prost7message7Message10encode_rawINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBe_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5int326encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1pSuea8KFR7_16libp2p_gossipsub(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  tail call void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes15encode_repeatedINtNtCsexYYUdYSQU6_5alloc3vec3VechEBW_ECs1pSuea8KFR7_16libp2p_gossipsub(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtNtNtNtCs1pSuea8KFR7_16libp2p_gossipsub9rpc_proto5proto12gossipsub_pb16topic_descriptorNtB6_7EncOptsNtNtCsbZN1VVVQjZP_5prost7message7Message10encode_rawINtNtCsexYYUdYSQU6_5alloc3vec3VechEEBe_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5int326encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1pSuea8KFR7_16libp2p_gossipsub(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  tail call void @_RINvNtNtCsbZN1VVVQjZP_5prost8encoding5bytes15encode_repeatedINtNtCsexYYUdYSQU6_5alloc3vec3VechEBW_ECs1pSuea8KFR7_16libp2p_gossipsub(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs4PDs7pjxAW4_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs1pSuea8KFR7_16libp2p_gossipsub(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !316, !alias.scope !317, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEECs1pSuea8KFR7_16libp2p_gossipsub.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEECs1pSuea8KFR7_16libp2p_gossipsub.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEECs1pSuea8KFR7_16libp2p_gossipsub.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = inttoptr i64 %2 to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.t, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheE3newCs1pSuea8KFR7_16libp2p_gossipsub.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEECs1pSuea8KFR7_16libp2p_gossipsub.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.p, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

4:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #24
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #25
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheE3newCs1pSuea8KFR7_16libp2p_gossipsub.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bx, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %14
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEE8try_lockCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %12, align 8, !nonnull !5, !align !9, !noundef !5 ; 9 uses
  %i.aa = load i8, ptr %13, align 8, !range !318, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !12

.noexc19:                                         ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit, !prof !4

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = add nsw i64 %i.ac, -1                   ; 3 uses
  store i64 %i.an, ptr %i.ab, align 8
  %i.ao = load i64, ptr %i.am, align 8, !range !319, !noundef !5
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = icmp ult i64 %i.ac, 1152921504606846977
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !align !9, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.av, align 8
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.az = trunc nuw i8 %i.aa to i1
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22, !prof !4

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !320
  %i.bh = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 208, 1401) 1400, i64 noundef 8) #23, !noalias !320 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.v, !prof !4

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #24
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheECs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #25
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bl, align 8
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !321 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !10, !alias.scope !321, !noundef !5 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bp = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bp, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !321
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !12

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !321
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bo monotonic, align 1, !noalias !321
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bu = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !321
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32, !prof !4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !321
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs1pSuea8KFR7_16libp2p_gossipsub.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheEEEECs1pSuea8KFR7_16libp2p_gossipsub.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs1pSuea8KFR7_16libp2p_gossipsub(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !322
  %i.bx = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 208, 1401) 1400, i64 noundef 8) #23, !noalias !322 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %4, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4PDs7pjxAW4_14regex_automata4meta5regex5CacheE3newCs1pSuea8KFR7_16libp2p_gossipsub.exit9, !prof !4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEEEB3g_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEEEB3g_.exit unwind label %bb.e

_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit: ; preds = %bb.a, %bb.b
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics5gauge5GaugeEEEB3g_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit unwind label %bb.e

_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit: ; preds = %bb.a, %bb.b
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEEEB3g_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEEEB3g_.exit unwind label %bb.e

_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit: ; preds = %bb.a, %bb.b
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram9HistogramEEEB3g_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics10ChurnLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics10ChurnLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics10ChurnLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit unwind label %bb.e

_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit: ; preds = %bb.a, %bb.b
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics10ChurnLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit unwind label %bb.e

_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit: ; preds = %bb.a, %bb.b
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12PenaltyLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsl_NtCsBXGTqM1ILm_8lock_api6rwlockINtB5_16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12RpcSentLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEE9downgradeB2N_(ptr noundef nonnull returned align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 8 release, align 8
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock14downgrade_slow(ptr noundef nonnull align 8 %0)
          to label %_RNvXs0_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsBXGTqM1ILm_8lock_api6rwlock18RawRwLockDowngrade9downgrade.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = cmpxchg ptr %0, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsBXGTqM1ILm_8lock_api6rwlock16RwLockWriteGuardNtNtCsbNxlIVSzhBv_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub7metrics12RpcSentLabelNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics7counter7CounterEEEB3g_.exit, label %bb.d, !prof !12
end_hunk_0
