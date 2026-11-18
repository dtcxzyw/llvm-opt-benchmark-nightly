Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/distributed_key_value_store_example.distributed_key_value_store_example.32415d2ae8513850-cgu.09?download=true
inline.NumInlined: 1197
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_8protocol7KadPeerENCINvNtNtB1V_8adapters10filter_map19filter_map_try_foldBX_B3t_B2T_INtNtNtB1X_3ops12control_flow11ControlFlowINtNtB1X_6result6ResultB2T_zEB2T_ENCNvMs0_NtB11_9behaviourINtB6j_9BehaviourNtNtNtBZ_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB40_4takeINtB7R_4TakepEB1P_8try_fold5checkB3t_B2T_B5D_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0E0E0B4X_ECs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  store ptr %i.ew, ptr %i.fa, align 8, !alias.scope !2250
  store i64 1, ptr %0, align 8, !alias.scope !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.av

bb.ax:                                            ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit._crit_edge, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.thread
  %i.fb = phi ptr [ %i.ar, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.thread ], [ %.pre58, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit._crit_edge ] ; 2 uses
  %i.fc = phi ptr [ %i.ap, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.thread ], [ %.pre, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit._crit_edge ] ; 2 uses
  %.sroa.7.014 = phi ptr [ %.sroa.4.045, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.thread ], [ %i.ew, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq ptr %i.fb, %i.fc
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_8find_map5checkBX_NtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0E0INtNtNtB2m_3ops12control_flow11ControlFlowB3M_EECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [18 x i8], align 1                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.e
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2255
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0INtB7_5FnMutTNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeEE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(address) dereferenceable(18) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2255
  %i.i = load i8, ptr %i.b, align 1, !range !18, !noalias !2255, !noundef !15 ; 2 uses
  %.not.i = icmp eq i8 %i.i, 2
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi i8 [ %i.i, %bb.b ], [ 2, %bb.a ], [ 2, %bb.c ]
  store i8 %storemerge, ptr %0, align 1
  ret void

bb.b:                                             ; preds = %.lr.ph
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.6.0..sroa_idx, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2255
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2255
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2w_8adapters3map3MapINtNtB3y_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5a_9behaviourINtB66_9BehaviourNtNtNtB58_5store6memory11MemoryStoreE13get_providers0ENCB60_s_0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !2260
  call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2y_8adapters3map3MapIB3z_INtNtB3D_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5k_9behaviourINtB6g_9BehaviourNtNtNtB5i_5store6memory11MemoryStoreE13get_providers0ENCB6a_s_0ENCINvXs8_NtB9_3setINtB7Y_7HashSetBP_B1E_EIB2s_BP_E6extendB40_E0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2w_8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCNvXs1_NtB4q_9behaviourINtB5g_9BehaviourNtNtNtNtB4q_6record5store6memory11MemoryStoreENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_event0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2y_8adapters3map3MapIB3z_INtNtNtB2A_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCNvXs1_NtB4A_9behaviourINtB5q_9BehaviourNtNtNtNtB4A_6record5store6memory11MemoryStoreENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_event0ENCINvXs8_NtB9_3setINtB8j_7HashSetBP_B1E_EIB2s_BP_E6extendB40_E0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtCscu2bAJ62uie_6either6EitherIB11_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2E_EIB1h_B2E_ReEEIB11_INtNtNtB9_7sources5empty5EmptyB3X_EFB3X_EB3O_EEFB3O_EIB1h_B3O_B3X_EEIB11_B46_FB3X_EB4X_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB13_8map_foldB4X_TINtNtB2I_10connection11AsStrHashEqB4X_EbEuNCINvB6B_26gather_supported_protocolsINtNtNtB2I_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB2I_5dummy17ConnectionHandlerEE0NCINvNvB5x_8for_each4callB6x_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtBaB_7HashMapB6y_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB5B_7collect6ExtendB6x_E6extendIB11_BO_B7e_EE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !noundef !15
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2k_EIBY_B2k_ReEEIBO_INtNtNtBa_7sources5empty5EmptyB3C_EFB3C_EB3u_EEFB3u_EIBY_B3u_B3C_EENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldB4B_TINtNtB2o_10connection11AsStrHashEqB4B_EbEuNCINvB5T_26gather_supported_protocolsINtNtNtB2o_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB2o_5dummy17ConnectionHandlerEE0NCINvNvB4P_8for_each4callB5P_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9T_7HashMapB5Q_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4T_7collect6ExtendB5P_E6extendIBO_INtNtB8_5chain5ChainBN_IBO_B3K_FB3C_EB4B_EEB6w_EE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !15, !align !16, !noundef !15
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources5empty5EmptyReEFB1r_EINtCscu2bAJ62uie_6either6EitherIB1B_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1r_EB1r_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1A_TINtNtB2e_10connection11AsStrHashEqB1A_EbEuNCINvB4r_26gather_supported_protocolsINtNtNtB2e_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB2e_5dummy17ConnectionHandlerEE0NCINvNvB3o_8for_each4callB4n_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapB4o_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3s_7collect6ExtendB4n_E6extendIBO_INtNtB8_5chain5ChainIBO_IB1B_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2a_EFB2a_EB25_EIBO_BX_FB1r_EB25_EEFB25_EB1A_EBN_EB54_EE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtCscu2bAJ62uie_6either6EitherIB11_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2E_EIB1h_B2E_ReEEIB11_INtNtNtB9_7sources5empty5EmptyB3X_EFB3X_EB3O_EEFB3O_EIB1h_B3O_B3X_EEIB11_B46_FB3X_EB4X_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB5x_8find_map5checkB4X_TB4X_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEQNCINvNtB6S_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxBO_E0E0INtNtNtBb_3ops12control_flow11ControlFlowB6J_EECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %1, align 8, !noundef !15
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCscu2bAJ62uie_6either6EitherIBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2k_EIBY_B2k_ReEEIBO_INtNtNtBa_7sources5empty5EmptyB3C_EFB3C_EB3u_EEFB3u_EIBY_B3u_B3C_EENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4P_8find_map5checkB4B_TB4B_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEQNCINvNtB6b_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainBN_IBO_B3K_FB3C_EB4B_EEE0E0INtNtNtBc_3ops12control_flow11ControlFlowB62_EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = load i64, ptr %i.b, align 8, !range !24, !alias.scope !2271, !noundef !15 ; 2 uses
  %.not.i = icmp eq i64 %i.e, -2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !15
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx12, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !2272, !noundef !15
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2273, !noundef !15
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  resume { ptr, i32 } %i.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.f, %bb.e, %bb.g
  store ptr null, ptr %1, align 8
  br label %bb.c

bb.i:                                             ; preds = %bb.c, %bb.k, %bb.l, %bb.d
  %.sink = phi i64 [ %i.e, %bb.d ], [ %i.n, %bb.k ], [ -2, %bb.l ], [ -2, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources5empty5EmptyReEFB1r_EINtCscu2bAJ62uie_6either6EitherIB1B_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1r_EB1r_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3o_8find_map5checkB1A_TB1A_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEQNCINvNtB4J_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtB8_5chain5ChainIBO_IB1B_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2a_EFB2a_EB25_EIBO_BX_FB1r_EB25_EEFB25_EB1A_EBN_EE0E0INtNtNtBc_3ops12control_flow11ControlFlowB4A_EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull %i.m)
  %i.n = load i64, ptr %i.a, align 8, !range !24, !alias.scope !2274, !noundef !15 ; 2 uses
  %.not.i9 = icmp eq i64 %i.n, -2
  br i1 %.not.i9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.716.0..sroa_idx17, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB27_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3n_3VecB1o_E14extend_trustedBO_E0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %0, align 8, !range !42, !noundef !15
  %.not = icmp eq i64 %i.d, -2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %.sroa.0.0.copyload25.i = load i64, ptr %i.c, align 8, !alias.scope !2291 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !alias.scope !2292
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload25.i, -1
  br i1 %.not6.i, label %bb.f, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #32
          to label %.body unwind label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2289
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload25.i, ptr %i.a, align 8, !noalias !2289
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2A_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtBb_6option8IntoIterB1O_EB42_EE0E0INtB7_5FnMutTuB1O_EE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs4jvuubEK18G_35distributed_key_value_store_example.exit.loopexit.i unwind label %bb.c, !noalias !2288

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs4jvuubEK18G_35distributed_key_value_store_example.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2289
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.e:                                             ; preds = %bb.f, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !range !42, !noundef !15 ; 2 uses
  %.val7 = load ptr, ptr %1, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.j, align 8            ; 4 uses
  switch i64 %i.i, label %._crit_edge.i [
    i64 -2, label %bb.h
    i64 -1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs4jvuubEK18G_35distributed_key_value_store_example.exit.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.5.0.copyload, i64 %.val8 ; 2 uses
  store i64 %i.i, ptr %i.k, align 8, !noalias !2293
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
  %.val = load ptr, ptr %1, align 8, !nonnull !15, !align !16, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.m, align 8, !noundef !15
  store i64 %.val6, ptr %.val, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !42, !noundef !15
  %.not20 = icmp eq i64 %i.o, -2
  br i1 %.not20, label %.body.thread15, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

.body.thread15:                                   ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.e

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.n) #32
          to label %.body.thread15 unwind label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdEENtB6_11BuildHasher8hash_oneRB1A_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !2296, !noundef !15
  %i.a = zext i32 %.val.i to i64
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2312, !noalias !2313, !noundef !15 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !alias.scope !2315, !noalias !2313, !noundef !15 ; 4 uses
  %i.e = zext i8 %i.d to i64                      ; 4 uses
  %i.f = icmp ult i8 %i.d, 65
  br i1 %i.f, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #37, !noalias !2316
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i: ; preds = %bb.a
  %i.g = and i64 %i.b, 255
  %i.h = xor i64 %i.g, -3750763034362895579
  %i.i = mul i64 %i.h, 1099511628211
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.b, 8
  %i.j = and i64 %.sroa.4.0.extract.shift.i.i.i.i, 255
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.b, 16
  %i.m = and i64 %.sroa.5.0.extract.shift.i.i.i.i, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %i.b, 24
  %i.p = and i64 %.sroa.6.0.extract.shift.i.i.i.i, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i64 %i.b, 32
  %i.s = and i64 %.sroa.7.0.extract.shift.i.i.i.i, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %.sroa.8.0.extract.shift.i.i.i.i = lshr i64 %i.b, 40
  %i.v = and i64 %.sroa.8.0.extract.shift.i.i.i.i, 255
  %i.w = xor i64 %i.u, %i.v
  %i.x = mul i64 %i.w, 1099511628211
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i64 %i.b, 48
  %i.y = and i64 %.sroa.9.0.extract.shift.i.i.i.i, 255
  %i.z = xor i64 %i.x, %i.y
  %i.aa = mul i64 %i.z, 1099511628211
  %.sroa.10.0.extract.shift.i.i.i.i = lshr i64 %i.b, 56
  %i.ab = xor i64 %i.aa, %.sroa.10.0.extract.shift.i.i.i.i
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = xor i64 %i.ac, %i.e
  %i.ae = mul i64 %i.ad, 2232315406967589409      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.ag = icmp eq i8 %i.d, 0
  br i1 %i.ag, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example.exit.i.i.i
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.aj = zext i8 %i.ai to i64
  %i.ak = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.aj
  %i.al = mul i64 %i.ak, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2309

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %i.am = icmp ult i8 %i.d, 8
  br i1 %i.am, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.ao = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %.sroa.0.06.i.i.i.i, %i.ap
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.at = load i8, ptr %i.an, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ar, %i.au
  %i.aw = mul i64 %i.av, 1099511628211
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.ay = load i8, ptr %i.as, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.az = zext i8 %i.ay to i64
  %i.ba = xor i64 %i.aw, %i.az
  %i.bb = mul i64 %i.ba, 1099511628211
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.bd = load i8, ptr %i.ax, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.bi = load i8, ptr %i.bc, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.bn = load i8, ptr %i.bh, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %i.bl, %i.bo
  %i.bq = mul i64 %i.bp, 1099511628211
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.bs = load i8, ptr %i.bm, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = mul i64 %i.bu, 1099511628211
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.br, align 1, !alias.scope !2317, !noalias !2313, !noundef !15
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, 1099511628211            ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!2079 = !{!2039}
!2080 = !{!2041}
!2081 = !{!2041, !2039, !1994}
!2082 = !{!2041, !2039, !1994, !1997}
!2083 = distinct !{!2083, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtCscu2bAJ62uie_6either6EitherBU_ReEuFBU_EB1X_NCIB2_B1X_IB1Y_B1X_B2v_EuFB1X_EB2S_QNCIB2_B2S_TINtNtBY_10connection11AsStrHashEqB2S_EbEuNCINvB3w_26gather_supported_protocolsINtNtNtBY_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBY_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3s_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7X_7HashMapB3t_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB71_7collect6ExtendB3s_E6extendINtB4_3MapINtNtB6_5chain5ChainIBa9_IB1Y_IBa9_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBU_EB2z_EIBa9_INtNtNtB8_7sources5empty5EmptyB2v_EFB2v_EB1X_EEB37_EIBa9_BbT_FB2v_EB2S_EEB48_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2084 = distinct !{!2084, !2083, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtCscu2bAJ62uie_6either6EitherBU_ReEuFBU_EB1X_NCIB2_B1X_IB1Y_B1X_B2v_EuFB1X_EB2S_QNCIB2_B2S_TINtNtBY_10connection11AsStrHashEqB2S_EbEuNCINvB3w_26gather_supported_protocolsINtNtNtBY_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBY_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3s_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7X_7HashMapB3t_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB71_7collect6ExtendB3s_E6extendINtB4_3MapINtNtB6_5chain5ChainIBa9_IB1Y_IBa9_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBU_EB2z_EIBa9_INtNtNtB8_7sources5empty5EmptyB2v_EFB2v_EB1X_EEB37_EIBa9_BbT_FB2v_EB2S_EEB48_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2085 = distinct !{!2085, !2083, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtCscu2bAJ62uie_6either6EitherBU_ReEuFBU_EB1X_NCIB2_B1X_IB1Y_B1X_B2v_EuFB1X_EB2S_QNCIB2_B2S_TINtNtBY_10connection11AsStrHashEqB2S_EbEuNCINvB3w_26gather_supported_protocolsINtNtNtBY_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBY_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3s_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7X_7HashMapB3t_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB71_7collect6ExtendB3s_E6extendINtB4_3MapINtNtB6_5chain5ChainIBa9_IB1Y_IBa9_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBU_EB2z_EIBa9_INtNtNtB8_7sources5empty5EmptyB2v_EFB2v_EB1X_EEB37_EIBa9_BbT_FB2v_EB2S_EEB48_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2086 = distinct !{!2086, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEIBV_BU_B2s_EuFBU_EB2v_QNCIB2_B2v_TINtNtB1t_10connection11AsStrHashEqB2v_EbEuNCINvB36_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB32_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7A_7HashMapB33_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB6E_7collect6ExtendB32_E6extendINtB4_3MapINtNtB6_5chain5ChainIB9M_IBV_IB9M_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EFB1p_EBU_EIB9M_INtNtNtB8_7sources5empty5EmptyB2s_EFB2s_EBU_EEB2I_EIB9M_BbB_FB2s_EB2v_EEB3J_EE0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2087 = distinct !{!2087, !2086, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEIBV_BU_B2s_EuFBU_EB2v_QNCIB2_B2v_TINtNtB1t_10connection11AsStrHashEqB2v_EbEuNCINvB36_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB32_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7A_7HashMapB33_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB6E_7collect6ExtendB32_E6extendINtB4_3MapINtNtB6_5chain5ChainIB9M_IBV_IB9M_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EFB1p_EBU_EIB9M_INtNtNtB8_7sources5empty5EmptyB2s_EFB2s_EBU_EEB2I_EIB9M_BbB_FB2s_EB2v_EEB3J_EE0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2088 = distinct !{!2088, !2086, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldINtCscu2bAJ62uie_6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEIBV_BU_B2s_EuFBU_EB2v_QNCIB2_B2v_TINtNtB1t_10connection11AsStrHashEqB2v_EbEuNCINvB36_26gather_supported_protocolsINtNtNtB1t_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB1t_5dummy17ConnectionHandlerEE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB32_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7A_7HashMapB33_bNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB6E_7collect6ExtendB32_E6extendINtB4_3MapINtNtB6_5chain5ChainIB9M_IBV_IB9M_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1p_EFB1p_EBU_EIB9M_INtNtNtB8_7sources5empty5EmptyB2s_EFB2s_EBU_EEB2I_EIB9M_BbB_FB2s_EB2v_EEB3J_EE0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2089 = distinct !{null}
!2090 = !{!2085, !2084}
!2091 = !{!2085}
!2092 = !{!2088, !2087, !2085, !2084}
!2093 = !{!2088}
!2094 = !{!2088, !2085}
!2095 = distinct !{!2095, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNCNvMs0_NtB15_9behaviourINtB21_9BehaviourNtNtNtB13_5store6memory11MemoryStoreE13get_providers0NCINvNtB6_3map8map_foldB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNCB1V_s_0NCIB3s_B3Q_TB3Q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5g_7HashSetB3Q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EB1T_EB4F_EE0NCINvNvNtNtB6V_8iterator8Iterator8for_each4callB4Z_NCINvXs1i_NtB5i_3mapINtBa0_7HashMapB3Q_uB63_EIB6R_B4Z_E6extendIB7z_B7y_B57_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2096 = distinct !{!2096, !2095, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNCNvMs0_NtB15_9behaviourINtB21_9BehaviourNtNtNtB13_5store6memory11MemoryStoreE13get_providers0NCINvNtB6_3map8map_foldB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNCB1V_s_0NCIB3s_B3Q_TB3Q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5g_7HashSetB3Q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EB1T_EB4F_EE0NCINvNvNtNtB6V_8iterator8Iterator8for_each4callB4Z_NCINvXs1i_NtB5i_3mapINtBa0_7HashMapB3Q_uB63_EIB6R_B4Z_E6extendIB7z_B7y_B57_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2097 = distinct !{!2097, !2095, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecorduNCNvMs0_NtB15_9behaviourINtB21_9BehaviourNtNtNtB13_5store6memory11MemoryStoreE13get_providers0NCINvNtB6_3map8map_foldB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNCB1V_s_0NCIB3s_B3Q_TB3Q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB5g_7HashSetB3Q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB3Q_E6extendINtB3u_3MapINtB4_6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB11_EB1T_EB4F_EE0NCINvNvNtNtB6V_8iterator8Iterator8for_each4callB4Z_NCINvXs1i_NtB5i_3mapINtBa0_7HashMapB3Q_uB63_EIB6R_B4Z_E6extendIB7z_B7y_B57_EE0E0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2098 = distinct !{!2098, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example"}
!2099 = distinct !{!2099, !2098, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2100 = distinct !{!2100, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2101 = distinct !{!2101, !2100, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2102 = distinct !{!2102, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2103 = distinct !{!2103, !2102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2104 = distinct !{!2104, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2105 = distinct !{!2105, !2104, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2106 = distinct !{!2106, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNCNvMs0_NtBY_9behaviourINtB2I_9BehaviourNtNtNtBW_5store6memory11MemoryStoreE13get_providerss_0NCIB2_B1L_TB1L_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4x_7HashSetB1L_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1L_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBU_ENCB2C_0EB2A_EE0NCINvNvNtNtB6c_8iterator8Iterator8for_each4callB4g_NCINvXs1i_NtB4z_3mapINtB9r_7HashMapB1L_uB5k_EIB68_B4g_E6extendIB6Q_B6P_B4o_EE0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2107 = distinct !{!2107, !2106, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNCNvMs0_NtBY_9behaviourINtB2I_9BehaviourNtNtNtBW_5store6memory11MemoryStoreE13get_providerss_0NCIB2_B1L_TB1L_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4x_7HashSetB1L_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB1L_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBU_ENCB2C_0EB2A_EE0NCINvNvNtNtB6c_8iterator8Iterator8for_each4callB4g_NCINvXs1i_NtB4z_3mapINtB9r_7HashMapB1L_uB5k_EIB68_B4g_E6extendIB6Q_B6P_B4o_EE0E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2108 = distinct !{!2108, i1 true, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE13get_providerss_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2109 = distinct !{!2109, !2108, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE13get_providerss_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2110 = distinct !{!2110, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example"}
!2111 = distinct !{!2111, !2110, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2112 = distinct !{!2112, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2113 = distinct !{!2113, !2112, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2114 = distinct !{!2114, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2115 = distinct !{!2115, !2114, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2116 = distinct !{!2116, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2117 = distinct !{!2117, !2116, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2118 = distinct !{!2118, !2108, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE13get_providerss_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2119 = distinct !{!2119, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTBU_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1Y_7HashSetBU_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5C_9behaviourINtB6y_9BehaviourNtNtNtB5A_5store6memory11MemoryStoreE13get_providers0ENCB6s_s_0EE0NCINvNvNtNtB3C_8iterator8Iterator8for_each4callB1I_NCINvXs1i_NtB20_3mapINtB98_7HashMapBU_uB2K_EIB3y_B1I_E6extendIB4f_B4e_B1P_EE0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2120 = distinct !{!2120, !2119, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTBU_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1Y_7HashSetBU_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtB4_3MapINtNtB6_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5C_9behaviourINtB6y_9BehaviourNtNtNtB5A_5store6memory11MemoryStoreE13get_providers0ENCB6s_s_0EE0NCINvNvNtNtB3C_8iterator8Iterator8for_each4callB1I_NCINvXs1i_NtB20_3mapINtB98_7HashMapBU_uB2K_EIB3y_B1I_E6extendIB4f_B4e_B1P_EE0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2121 = distinct !{!2121, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2g_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4r_INtNtB4v_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB6b_9behaviourINtB77_9BehaviourNtNtNtB69_5store6memory11MemoryStoreE13get_providers0ENCB71_s_0ENCINvXs8_NtB2i_3setINtB8P_7HashSetB1g_B34_EIB3S_B1g_E6extendB4R_E0EE0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2122 = distinct !{!2122, !2121, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2g_7HashMapB1g_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters3map3MapIB4r_INtNtB4v_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB6b_9behaviourINtB77_9BehaviourNtNtNtB69_5store6memory11MemoryStoreE13get_providers0ENCB71_s_0ENCINvXs8_NtB2i_3setINtB8P_7HashSetB1g_B34_EIB3S_B1g_E6extendB4R_E0EE0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2123 = distinct !{!2123, i1 true, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2A_8adapters3map3MapIB3B_INtNtB3F_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5m_9behaviourINtB6i_9BehaviourNtNtNtB5k_5store6memory11MemoryStoreE13get_providers0ENCB6c_s_0ENCINvXs8_NtBb_3setINtB80_7HashSetBR_B1G_EIB2u_BR_E6extendB42_E0EE0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2124 = distinct !{!2124, !2123, !"_RNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBR_uEE6extendINtNtNtB2A_8adapters3map3MapIB3B_INtNtB3F_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB5m_9behaviourINtB6i_9BehaviourNtNtNtB5k_5store6memory11MemoryStoreE13get_providers0ENCB6c_s_0ENCINvXs8_NtBb_3setINtB80_7HashSetBR_B1G_EIB2u_BR_E6extendB42_E0EE0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2125 = !{!2096}
!2126 = !{!2097}
!2127 = !{!2096, !2097}
!2128 = !{!2099}
!2129 = !{!2101}
!2130 = !{!2103}
!2131 = !{!2105}
!2132 = !{!2105, !2103, !2101, !2099, !2097}
!2133 = !{!2105, !2103, !2101, !2099, !2096}
!2134 = !{!2099, !2096}
!2135 = !{!2107, !2096, !2097}
!2136 = !{!2109}
!2137 = !{!2111}
!2138 = !{!2113}
!2139 = !{!2115}
!2140 = !{!2117}
!2141 = !{!2117, !2115, !2113, !2111, !2109}
!2142 = !{!2117, !2115, !2113, !2111, !2118, !2109, !2107, !2096, !2097}
!2143 = !{!2111, !2118, !2109, !2107, !2096, !2097}
!2144 = !{!2118, !2107, !2096, !2097}
!2145 = !{!2124, !2122, !2120, !2107, !2096, !2097}
!2146 = distinct !{!2146, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2147 = distinct !{!2147, !2146, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2148 = distinct !{!2148, !2146, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordNtNtB1i_8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB25_EINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB2u_zEB2u_ENCNvMs0_NtB1i_9behaviourINtB4Q_9BehaviourNtNtNtB1g_5store6memory11MemoryStoreE14provider_peers0NCINvNvXs_NtB6_4takeINtB6p_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB25_B2u_B4b_NCINvNtB2z_16in_place_collect24write_in_place_with_dropB25_E0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2149 = distinct !{!2149, i1 true, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2150 = distinct !{!2150, !2149, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2151 = distinct !{!2151, !2149, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 2"}
!2152 = distinct !{!2152, !2149, !"_RNCNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourNtNtNtNtB9_6record5store6memory11MemoryStoreE14provider_peers0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2153 = distinct !{!2153, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2154 = distinct !{!2154, !2153, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2155 = distinct !{!2155, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2156 = distinct !{!2156, !2155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2157 = distinct !{!2157, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2158 = distinct !{!2158, !2157, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2159 = distinct !{!2159, i1 true, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example"}
!2160 = distinct !{!2160, !2159, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2161 = distinct !{!2161, !2159, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2162 = distinct !{!2162, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2163 = distinct !{!2163, !2162, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2164 = distinct !{!2164, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2165 = distinct !{!2165, !2164, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2166 = distinct !{!2166, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2167 = distinct !{!2167, !2166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2168 = distinct !{!2168, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2169 = distinct !{!2169, !2168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2170 = distinct !{!2170, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2171 = distinct !{!2171, !2170, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2172 = distinct !{!2172, i1 true, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example"}
!2173 = distinct !{!2173, !2172, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2174 = distinct !{!2174, !2172, !"_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2175 = distinct !{!2175, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2176 = distinct !{!2176, !2175, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2177 = distinct !{!2177, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2178 = distinct !{!2178, !2177, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2179 = distinct !{!2179, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2180 = distinct !{!2180, !2179, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2181 = distinct !{!2181, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2182 = distinct !{!2182, !2181, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2183 = distinct !{!2183, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2184 = distinct !{!2184, !2183, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2185 = distinct !{null}
!2186 = distinct !{!2186, i1 true, !"_RNvXsx_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4jvuubEK18G_35distributed_key_value_store_example"}
!2187 = distinct !{!2187, !2186, !"_RNvXsx_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2188 = distinct !{!2188, i1 true, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4jvuubEK18G_35distributed_key_value_store_example"}
!2189 = distinct !{!2189, !2188, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_E6tripleCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2190 = distinct !{!2190, i1 true, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4jvuubEK18G_35distributed_key_value_store_example"}
!2191 = distinct !{!2191, !2190, !"_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj6_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2192 = distinct !{!2192, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example"}
!2193 = distinct !{!2193, !2192, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2194 = distinct !{!2194, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!2195 = distinct !{!2195, !2194, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2196 = distinct !{!2196, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!2197 = distinct !{!2197, !2196, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2198 = distinct !{!2198, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2199 = distinct !{!2199, !2198, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2200 = distinct !{!2200, i1 true, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1R_EINtNtBf_6result6ResultB2C_zENCINvNtB2H_16in_place_collect24write_in_place_with_dropB1R_E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2201 = distinct !{!2201, !2200, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1R_EINtNtBf_6result6ResultB2C_zENCINvNtB2H_16in_place_collect24write_in_place_with_dropB1R_E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2202 = distinct !{!2202, !2200, !"_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropB1R_EINtNtBf_6result6ResultB2C_zENCINvNtB2H_16in_place_collect24write_in_place_with_dropB1R_E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2203 = distinct !{!2203, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowINtNtB6_6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEzEB1m_ENtNtB4_9try_trait3Try11from_outputCs4jvuubEK18G_35distributed_key_value_store_example"}
!2204 = distinct !{!2204, !2203, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowINtNtB6_6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEzEB1m_ENtNtB4_9try_trait3Try11from_outputCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2205 = distinct !{!2205, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowINtNtB8_6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEzEB1o_EINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs4jvuubEK18G_35distributed_key_value_store_example"}
!2206 = distinct !{!2206, !2205, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowINtNtB8_6result6ResultINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEzEB1o_EINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2207 = !{!2148, !2147}
!2208 = !{!2150}
!2209 = !{!2151}
!2210 = !{!2152, !2150, !2151, !2148, !2147}
!2211 = !{!2154}
!2212 = !{!2156}
!2213 = !{!2158}
!2214 = !{!2158, !2156, !2154, !2151}
!2215 = !{!2158, !2156, !2154, !2152, !2150, !2148, !2147}
!2216 = !{!2152, !2150, !2148, !2147}
!2217 = !{!2160}
!2218 = !{!2161}
!2219 = !{!2160, !2151}
!2220 = !{!2163, !2160, !2151}
!2221 = !{!2165, !2161}
!2222 = !{!2160, !2161}
!2223 = !{!2167}
!2224 = !{!2169}
!2225 = !{!2171}
!2226 = !{!2171, !2169, !2167, !2151}
!2227 = !{!2171, !2169, !2167, !2152, !2150, !2151, !2148, !2147}
!2228 = !{!2173}
!2229 = !{!2174}
!2230 = !{!2176, !2173}
!2231 = !{!2178, !2174}
!2232 = !{!2180}
!2233 = !{!2182}
!2234 = !{!2184}
!2235 = !{!2184, !2182, !2180, !2151}
!2236 = !{!2184, !2182, !2180, !2152, !2150, !2151, !2148, !2147}
!2237 = !{!2173, !2174}
!2238 = !{!2189, !2187, !2152, !2150, !2151, !2148, !2147}
!2239 = !{!2191, !2187, !2152, !2150, !2151, !2148, !2147}
!2240 = !{!2193}
!2241 = !{!2195}
!2242 = !{!2197}
!2243 = !{!2199}
!2244 = !{!2199, !2197, !2195, !2193, !2151}
!2245 = !{!2199, !2197, !2195, !2193, !2152, !2150, !2148, !2147}
!2246 = !{!2193, !2152, !2150, !2148, !2147}
!2247 = !{!2202, !2201, !2148, !2147}
!2248 = !{!2202, !2148, !2147}
!2249 = !{!2204}
!2250 = !{!2206}
!2251 = distinct !{!2251, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2252 = distinct !{!2252, !2251, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 2"}
!2253 = distinct !{!2253, !2251, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2254 = distinct !{!2254, !2251, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetQNCNvNtCs99BRLcPURNo_8if_watch5linux9iter_nets0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2255 = !{!2254, !2253, !2252}
!2256 = !{!2254, !2252}
!2257 = distinct !{!2257, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB25_9behaviourINtB31_9BehaviourNtNtNtB23_5store6memory11MemoryStoreE13get_providers0ENCB2V_s_0ENtNtNtBa_6traits8iterator8Iterator3mapTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6c_7HashSetB5d_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB5d_E6extendB3_E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!2258 = distinct !{!2258, !2257, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB25_9behaviourINtB31_9BehaviourNtNtNtB23_5store6memory11MemoryStoreE13get_providers0ENCB2V_s_0ENtNtNtBa_6traits8iterator8Iterator3mapTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6c_7HashSetB5d_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB5d_E6extendB3_E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2259 = distinct !{!2259, !2257, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCskC4O4hr3vz7_10libp2p_kad6record14ProviderRecordENCNvMs0_NtB25_9behaviourINtB31_9BehaviourNtNtNtB23_5store6memory11MemoryStoreE13get_providers0ENCB2V_s_0ENtNtNtBa_6traits8iterator8Iterator3mapTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6c_7HashSetB5d_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4E_7collect6ExtendB5d_E6extendB3_E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2260 = !{!2259, !2258}
!2261 = distinct !{!2261, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2E_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs4jvuubEK18G_35distributed_key_value_store_example"}
!2262 = distinct !{!2262, !2261, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2E_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2263 = distinct !{!2263, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example"}
!2264 = distinct !{!2264, !2263, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBY_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2S_EIB1w_B2S_ReEEIBY_INtNtNtB14_7sources5empty5EmptyB4b_EFB4b_EB42_EEFB42_EIB1w_B42_B4b_EEEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2265 = distinct !{!2265, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs4jvuubEK18G_35distributed_key_value_store_example"}
!2266 = distinct !{!2266, !2265, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2w_EIB1a_B2w_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB3P_EFB3P_EB3G_EEFB3G_EIB1a_B3G_B3P_EEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2267 = distinct !{!2267, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs4jvuubEK18G_35distributed_key_value_store_example"}
!2268 = distinct !{!2268, !2267, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2s_EIBC_B2s_ReEEIB17_INtNtNtB1d_7sources5empty5EmptyB3K_EFB3K_EB3C_EEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2269 = distinct !{!2269, i1 true, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2E_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs4jvuubEK18G_35distributed_key_value_store_example"}
!2270 = distinct !{!2270, !2269, !"_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowTINtCscu2bAJ62uie_6either6EitherIB12_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB2E_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtB4_9try_trait3Try6branchCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2271 = !{!2262}
!2272 = !{!2264}
!2273 = !{!2268, !2266, !2264}
!2274 = !{!2270}
!2275 = distinct !{!2275, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!2276 = distinct !{!2276, !2275, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2277 = distinct !{!2277, !2275, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2278 = distinct !{!2278, i1 true, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example"}
!2279 = distinct !{!2279, !2278, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example: argument 0:pre.rot"}
!2280 = distinct !{!2280, !2278, !"_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example: argument 1:pre.rot"}
!2281 = distinct !{!2281, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!2282 = distinct !{!2282, !2281, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2283 = distinct !{!2283, !2281, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2H_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2284 = distinct !{!2284, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2285 = distinct !{!2285, !2284, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsjouRnuJWSBB_5yamux5frame5FrameuENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters5chain5ChainINtNtBe_6option8IntoIterB1f_EB3s_EE0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2286 = distinct !{!2286, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2287 = distinct !{!2287, !2286, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1L_6option8IntoIterBI_EB2u_EE0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2288 = !{!2276}
!2289 = !{!2276, !2277}
!2290 = !{!2279}
!2291 = !{!2279, !2280, !2276}
!2292 = !{!2280, !2276}
!2293 = !{!2287, !2285, !2283, !2282}
!2294 = distinct !{!2294, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdNtB8_4Hash4hashINtCsldc21sZubFy_13nohash_hasher12NoHashHasherBF_EECs4jvuubEK18G_35distributed_key_value_store_example"}
!2295 = distinct !{!2295, !2294, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdNtB8_4Hash4hashINtCsldc21sZubFy_13nohash_hasher12NoHashHasherBF_EECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2296 = !{!2295}
!2297 = distinct !{!2297, i1 true, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2298 = distinct !{!2298, !2297, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2299 = distinct !{!2299, i1 true, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2300 = distinct !{!2300, !2299, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2301 = distinct !{!2301, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2302 = distinct !{!2302, !2301, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2303 = distinct !{!2303, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2304 = distinct !{!2304, !2303, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2305 = distinct !{!2305, !2297, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2306 = distinct !{!2306, !2299, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2307 = distinct !{!2307, i1 true, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!2308 = distinct !{!2308, !2307, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!2309 = distinct !{!2309, !43}
!2310 = !{!2298}
!2311 = !{!2300}
!2312 = !{!2300, !2298}
!2313 = !{!2302}
!2314 = !{!2304}
!2315 = !{!2304, !2300, !2298}
!2316 = !{!2304, !2300, !2306, !2298, !2305, !2302}
!2317 = !{!2308, !2300, !2298}
!2318 = distinct !{!2318, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2319 = distinct !{!2319, !2318, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2320 = !{!2319}
!2321 = distinct !{!2321, i1 true, !"_RINvXsF_NtCsepmHL8YmS2V_5ipnet5ipnetNtB6_5IpNetNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2322 = distinct !{!2322, !2321, !"_RINvXsF_NtCsepmHL8YmS2V_5ipnet5ipnetNtB6_5IpNetNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2323 = distinct !{!2323, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2324 = distinct !{!2324, !2323, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2325 = !{!2322}
!2326 = !{!2324}
!2327 = distinct !{!2327, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCskC4O4hr3vz7_10libp2p_kad5query7QueryIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2328 = distinct !{!2328, !2327, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCskC4O4hr3vz7_10libp2p_kad5query7QueryIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2329 = !{!2328}
!2330 = distinct !{!2330, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry10extensions8IdHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2331 = distinct !{!2331, !2330, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry10extensions8IdHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2332 = !{!2331}
!2333 = distinct !{!2333, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2334 = distinct !{!2334, !2333, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2335 = distinct !{!2335, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1C_NtNtBK_15stream_protocol14StreamProtocolReEB2P_EENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2336 = distinct !{!2336, !2335, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1C_NtNtBK_15stream_protocol14StreamProtocolReEB2P_EENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2337 = distinct !{!2337, i1 true, !"_RINvXsd_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB6_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB16_NtNtB8_15stream_protocol14StreamProtocolReEB2j_EENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2338 = distinct !{!2338, !2337, !"_RINvXsd_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB6_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB16_NtNtB8_15stream_protocol14StreamProtocolReEB2j_EENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2339 = distinct !{!2339, !2337, !"_RINvXsd_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB6_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB16_NtNtB8_15stream_protocol14StreamProtocolReEB2j_EENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2340 = distinct !{!2340, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!2341 = distinct !{!2341, !2340, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!2342 = distinct !{!2342, !2340, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!2343 = distinct !{!2343, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example"}
!2344 = distinct !{!2344, !2343, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2345 = distinct !{!2345, !2343, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2346 = distinct !{!2346, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2347 = distinct !{!2347, !2346, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2348 = distinct !{!2348, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2349 = distinct !{!2349, !2348, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2350 = !{!2334}
!2351 = !{!2338, !2336}
!2352 = !{!2345, !2344, !2342, !2341, !2339, !2338, !2336}
!2353 = !{!2344, !2341}
!2354 = !{!2349, !2347}
!2355 = distinct !{!2355, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2356 = distinct !{!2356, !2355, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2357 = distinct !{!2357, i1 true, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2358 = distinct !{!2358, !2357, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2359 = distinct !{!2359, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_ENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2360 = distinct !{!2360, !2359, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_ENtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2361 = distinct !{!2361, !2357, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2362 = distinct !{!2362, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2363 = distinct !{!2363, !2362, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2364 = distinct !{!2364, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2365 = distinct !{!2365, !2364, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2366 = distinct !{!2366, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example"}
!2367 = distinct !{!2367, !2366, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2368 = distinct !{!2368, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example"}
!2369 = distinct !{!2369, !2368, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2370 = distinct !{!2370, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2371 = distinct !{!2371, !2370, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2372 = distinct !{!2372, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2373 = distinct !{!2373, !2372, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2374 = !{!2356}
!2375 = !{!2358}
!2376 = !{!2360}
!2377 = !{!2363, !2358, !2361, !2360}
!2378 = !{!2365}
!2379 = !{!2365, !2358}
!2380 = !{!2365, !2358, !2361, !2360}
!2381 = !{!2369, !2367, !2358, !2361, !2360}
!2382 = !{!2373, !2371}
!2383 = distinct !{!2383, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2384 = distinct !{!2384, !2383, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2385 = distinct !{!2385, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2386 = distinct !{!2386, !2385, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2387 = distinct !{!2387, i1 true, !"_RINvXsm_Csbli3iz7XG76_9multiaddrNtB6_9MultiaddrNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2388 = distinct !{!2388, !2387, !"_RINvXsm_Csbli3iz7XG76_9multiaddrNtB6_9MultiaddrNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2389 = distinct !{!2389, i1 true, !"_RINvXs6_NtCs1eA6bChxBZF_5bytes5bytesNtB6_5BytesNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2390 = distinct !{!2390, !2389, !"_RINvXs6_NtCs1eA6bChxBZF_5bytes5bytesNtB6_5BytesNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2391 = distinct !{!2391, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example"}
!2392 = distinct !{!2392, !2391, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2393 = distinct !{!2393, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example"}
!2394 = distinct !{!2394, !2393, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2395 = distinct !{!2395, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2396 = distinct !{!2396, !2395, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2397 = distinct !{!2397, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2398 = distinct !{!2398, !2397, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2399 = !{!2384}
!2400 = !{!2386}
!2401 = !{!2394, !2392, !2390, !2388, !2386}
!2402 = !{!2398, !2396}
!2403 = distinct !{!2403, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2404 = distinct !{!2404, !2403, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2405 = distinct !{!2405, i1 true, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2406 = distinct !{!2406, !2405, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2407 = distinct !{!2407, i1 true, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2408 = distinct !{!2408, !2407, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2409 = distinct !{!2409, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2410 = distinct !{!2410, !2409, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2411 = distinct !{!2411, !2405, !"_RINvXsd_NtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB6_6PeerIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2412 = distinct !{!2412, !2407, !"_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2413 = distinct !{!2413, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2414 = distinct !{!2414, !2413, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2415 = distinct !{!2415, i1 true, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example"}
!2416 = distinct !{!2416, !2415, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2417 = distinct !{!2417, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example"}
!2418 = distinct !{!2418, !2417, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2419 = distinct !{!2419, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example"}
!2420 = distinct !{!2420, !2419, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2421 = distinct !{!2421, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2422 = distinct !{!2422, !2421, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2423 = distinct !{!2423, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2424 = distinct !{!2424, !2423, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2425 = !{!2404}
!2426 = !{!2406}
!2427 = !{!2408}
!2428 = !{!2408, !2406}
!2429 = !{!2410}
!2430 = !{!2414, !2408, !2412, !2406, !2411, !2410}
!2431 = !{!2416}
!2432 = !{!2416, !2408, !2406}
!2433 = !{!2416, !2408, !2412, !2406, !2411, !2410}
!2434 = !{!2420, !2418, !2408, !2412, !2406, !2411, !2410}
!2435 = !{!2424, !2422}
!2436 = distinct !{!2436, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2437 = distinct !{!2437, !2436, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2438 = distinct !{!2438, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2439 = distinct !{!2439, !2438, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2440 = distinct !{!2440, i1 true, !"_RINvXsj_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionNtB6_12ConnectionIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2441 = distinct !{!2441, !2440, !"_RINvXsj_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionNtB6_12ConnectionIdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2442 = distinct !{!2442, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example"}
!2443 = distinct !{!2443, !2442, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2444 = distinct !{!2444, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2445 = distinct !{!2445, !2444, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2446 = distinct !{!2446, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2447 = distinct !{!2447, !2446, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2448 = !{!2437}
!2449 = !{!2439}
!2450 = !{!2443, !2441, !2439}
!2451 = !{!2447, !2445}
!2452 = distinct !{!2452, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2453 = distinct !{!2453, !2452, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2454 = distinct !{!2454, i1 true, !"_RINvXs5_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB6_14StreamProtocolNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2455 = distinct !{!2455, !2454, !"_RINvXs5_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB6_14StreamProtocolNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2456 = distinct !{!2456, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2457 = distinct !{!2457, !2456, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2458 = distinct !{!2458, !2454, !"_RINvXs5_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB6_14StreamProtocolNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2459 = distinct !{!2459, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str"}
!2460 = distinct !{!2460, !2459, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 1"}
!2461 = distinct !{!2461, !2459, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_str: argument 0"}
!2462 = distinct !{!2462, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example"}
!2463 = distinct !{!2463, !2462, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!2464 = distinct !{!2464, !2462, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2465 = distinct !{!2465, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2466 = distinct !{!2466, !2465, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2467 = distinct !{!2467, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2468 = distinct !{!2468, !2467, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2469 = !{!2453}
!2470 = !{!2455}
!2471 = !{!2457}
!2472 = !{!2464, !2463, !2461, !2460, !2455, !2458, !2457}
!2473 = !{!2463, !2460, !2455}
!2474 = !{!2468, !2466}
!2475 = distinct !{!2475, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2476 = distinct !{!2476, !2475, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2477 = distinct !{!2477, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs9Bqz0CSWZZv_12tracing_core4span2IdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2478 = distinct !{!2478, !2477, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs9Bqz0CSWZZv_12tracing_core4span2IdNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2479 = distinct !{!2479, i1 true, !"_RINvXsc_NtCs9Bqz0CSWZZv_12tracing_core4spanNtB6_2IdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
!2480 = distinct !{!2480, !2479, !"_RINvXsc_NtCs9Bqz0CSWZZv_12tracing_core4spanNtB6_2IdNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2481 = distinct !{!2481, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example"}
!2482 = distinct !{!2482, !2481, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2483 = distinct !{!2483, i1 true, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish"}
!2484 = distinct !{!2484, !2483, !"_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher6finish: argument 0"}
!2485 = distinct !{!2485, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example"}
!2486 = distinct !{!2486, !2485, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!2487 = !{!2476}
!2488 = !{!2478}
!2489 = !{!2482, !2480, !2478}
!2490 = !{!2486, !2484}
!2491 = distinct !{!2491, i1 true, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher"}
!2492 = distinct !{!2492, !2491, !"_RNvXs_NtNtCsG258MDvU3F_3std4hash6randomNtB4_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher12build_hasher: argument 0"}
!2493 = distinct !{!2493, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs9Bqz0CSWZZv_12tracing_core8callsite10IdentifierNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs4jvuubEK18G_35distributed_key_value_store_example"}
end_hunk_1
