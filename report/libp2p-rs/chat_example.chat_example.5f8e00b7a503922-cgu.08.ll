Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/chat_example.chat_example.5f8e00b7a503922-cgu.08?download=true
inline.NumInlined: 1531
inline.NumDeleted: 777
begin_hunk_0_@_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB21_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB3v_EEbEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_bEE9from_iterINtNtNtB3N_8adapters3map3MapINtNtB53_5chain5ChainIB4Z_IB21_IB4Z_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB2A_EFB2A_EB2v_EIB4Z_INtNtNtB3N_7sources5empty5EmptyB3v_EFB3v_EB2v_EEFB2v_EB20_EIB4Z_B79_FB3v_EB20_EENCINvB17_26gather_supported_protocolsINtNtNtB19_7handler6select23ConnectionHandlerSelectNtNtB2E_7handler7HandlerNtNtB19_5dummy17ConnectionHandlerEE0EECsvMXERwWlfq_12chat_example:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEFB2U_EIB1y_B2U_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB45_EFB45_EB3W_EEFB3W_EIB1y_B3W_B45_EEIBC_B4d_FB45_EB54_EENCINvNtCs6b9j1MKPRPC_12libp2p_swarm10connection26gather_supported_protocolsINtNtNtB5K_7handler6select23ConnectionHandlerSelectNtNtB2Y_7handler7HandlerNtNtB5K_5dummy17ConnectionHandlerEE0EECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.f, %bb.e, %bb.g, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.g ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !3104, !noundef !9
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEFB2U_EIB1y_B2U_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB45_EFB45_EB3W_EEFB3W_EIB1y_B3W_B45_EEIBC_B4d_FB45_EB54_EENCINvNtCs6b9j1MKPRPC_12libp2p_swarm10connection26gather_supported_protocolsINtNtNtB5K_7handler6select23ConnectionHandlerSelectNtNtB2Y_7handler7HandlerNtNtB5K_5dummy17ConnectionHandlerEE0EECsvMXERwWlfq_12chat_example.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3105, !noundef !9
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEFB2U_EIB1y_B2U_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB45_EFB45_EB3W_EEFB3W_EIB1y_B3W_B45_EEIBC_B4d_FB45_EB54_EENCINvNtCs6b9j1MKPRPC_12libp2p_swarm10connection26gather_supported_protocolsINtNtNtB5K_7handler6select23ConnectionHandlerSelectNtNtB2Y_7handler7HandlerNtNtB5K_5dummy17ConnectionHandlerEE0EECsvMXERwWlfq_12chat_example.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEFB2U_EIB1y_B2U_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB45_EFB45_EB3W_EEFB3W_EIB1y_B3W_B45_EEIBC_B4d_FB45_EB54_EENCINvNtCs6b9j1MKPRPC_12libp2p_swarm10connection26gather_supported_protocolsINtNtNtB5K_7handler6select23ConnectionHandlerSelectNtNtB2Y_7handler7HandlerNtNtB5K_5dummy17ConnectionHandlerEE0EECsvMXERwWlfq_12chat_example.exit unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBR_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_B1U_EE9from_iterINtNtNtB2W_8adapters3map3MapINtB7_4IterB14_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1Y_EENCNvMs6_NtB18_9behaviourNtB64_9Behaviour9heartbeatsn_0EECsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  invoke void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddENtNtNtB1O_4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_B1F_EE6extendINtNtNtB46_8adapters3map3MapINtB1I_4IterBP_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB2z_EENCNvMs6_NtBT_9behaviourNtB73_9Behaviour9heartbeatsn_0EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBC_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEECsvMXERwWlfq_12chat_example.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBC_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBR_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_B1U_EE9from_iterINtNtNtB2W_8adapters3map3MapINtB7_4IterB14_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB1Y_EENCNvMs6_NtB18_9behaviourNtB64_9Behaviour9heartbeatso_0EECsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  invoke void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddENtNtNtB1O_4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_B1F_EE6extendINtNtNtB46_8adapters3map3MapINtB1I_4IterBP_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetB2z_EENCNvMs6_NtBT_9behaviourNtB73_9Behaviour9heartbeatso_0EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBC_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEECsvMXERwWlfq_12chat_example.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashIBC_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEEECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_dEE9from_iterINtNtNtB21_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterB14_ENCNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB4O_9Behaviour9heartbeatsn_00EECsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  invoke void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_dEE6extendINtNtNtB2y_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterBP_ENCNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB59_9Behaviour9heartbeatsn_00EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEECsvMXERwWlfq_12chat_example.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_dEE9from_iterINtNtNtB21_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterB14_ENCNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB4O_9Behaviour9heartbeatso_00EECsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  invoke void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_dEE6extendINtNtNtB2y_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterBP_ENCNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB59_9Behaviour9heartbeatso_00EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEECsvMXERwWlfq_12chat_example.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIddEECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2, ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.c = sub nuw i64 %2, %1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !3122, !noundef !9 ; 3 uses
  %i.f = icmp ult i32 %i.e, 63
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !3123, !noalias !3124, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !3125, !noalias !3126
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #32, !noalias !3126
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !3124
  %i.m = load i32, ptr %i.d, align 4, !alias.scope !3123, !noalias !3124, !noundef !9 ; 2 uses
  %.not.i.i.i.i10.i = icmp eq i32 %i.e, 63        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !3123, !noalias !3124
  %.sroa.03.0.ph.i.i.i.i11.i = select i1 %.not.i.i.i.i10.i, i32 %i.m, i32 %i.o
  %.sroa.02.0.ph.i.i.i.i12.i = select i1 %.not.i.i.i.i10.i, i32 %i.h, i32 %i.m
  %.sroa.0.0.ph.i.i.i.i13.i = select i1 %.not.i.i.i.i10.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i

bb.f:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.e to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !3123, !noalias !3124, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !3123, !noalias !3124, !noundef !9
  %i.u = shl nuw nsw i64 %i.p, 32
  %i.v = add nuw nsw i64 %i.u, 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i: ; preds = %bb.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i
  %.sroa.0.018.i.i.i.i14.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i13.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.02.017.i.i.i.i15.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i12.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ %i.r, %bb.f ]
  %.sroa.03.016.i.i.i.i16.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i11.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ %i.t, %bb.f ]
  %.sroa.6.0.extract.shift.i.i.i.i.i17.i = lshr i64 %.sroa.0.018.i.i.i.i14.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i18.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i18.i, ptr %i.d, align 4, !alias.scope !3123, !noalias !3124
  %i.w = zext i32 %.sroa.03.016.i.i.i.i16.i to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = zext i32 %.sroa.02.017.i.i.i.i15.i to i64
  %i.z = or disjoint i64 %i.x, %i.y
  %i.aa = zext i64 %i.z to i128
  %i.ab = zext i64 %i.c to i128
  %i.ac = mul nuw i128 %i.aa, %i.ab               ; 2 uses
  %i.ad = lshr i128 %i.ac, 64
  %i.ae = trunc nuw i128 %i.ad to i64             ; 2 uses
  %i.af = trunc i128 %i.ac to i64                 ; 2 uses
  %i.ag = sub i64 %1, %2
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i
  %i.ai = icmp samesign ult i64 %.sroa.0.018.i.i.i.i14.i, 270582939648
  br i1 %i.ai, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !3127, !noalias !3128, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.an = load i64, ptr %i.am, align 4, !alias.scope !3129, !noalias !3130
  %i.ao = icmp ugt i64 %i.an, 1023
  br i1 %i.ao, label %bb.i, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al) #32, !noalias !3130
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !3128
  %i.ap = load i32, ptr %i.d, align 4, !alias.scope !3127, !noalias !3128, !noundef !9 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i, 63 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !3127, !noalias !3128
  %.sroa.03.0.ph.i.i.i.i22.i = select i1 %.not.i.i.i.i21.i, i32 %i.ap, i32 %i.ar
  %.sroa.02.0.ph.i.i.i.i23.i = select i1 %.not.i.i.i.i21.i, i32 %i.ak, i32 %i.ap
  %.sroa.0.0.ph.i.i.i.i24.i = select i1 %.not.i.i.i.i21.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !3127, !noalias !3128, !noundef !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !3127, !noalias !3128, !noundef !9
  %i.aw = and i64 %.sroa.0.018.i.i.i.i14.i, 270582939648
  %i.ax = add nuw nsw i64 %i.aw, 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i: ; preds = %bb.j, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i
  %.sroa.0.018.i.i.i.i25.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i24.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i ], [ %i.ax, %bb.j ]
  %.sroa.02.017.i.i.i.i26.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i23.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i ], [ %i.at, %bb.j ]
  %.sroa.03.016.i.i.i.i27.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i22.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i ], [ %i.av, %bb.j ]
  %.sroa.6.0.extract.shift.i.i.i.i.i28.i = lshr i64 %.sroa.0.018.i.i.i.i25.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i29.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i28.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i29.i, ptr %i.d, align 4, !alias.scope !3127, !noalias !3128
  %i.ay = zext i32 %.sroa.03.016.i.i.i.i27.i to i64
  %i.az = shl nuw i64 %i.ay, 32
  %i.ba = zext i32 %.sroa.02.017.i.i.i.i26.i to i64
  %i.bb = or disjoint i64 %i.az, %i.ba
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.bb, i64 %i.c)
  %i.bc = xor i64 %i.af, -1
  %.not6.i = icmp ugt i64 %3, %i.bc
  %i.bd = zext i1 %.not6.i to i64
  %i.be = add nuw i64 %i.bd, %i.ae
  br label %bb.k

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i
  %.sroa.01.0.i = phi i64 [ %i.be, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i ], [ %i.ae, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i ]
  %i.bf = add i64 %.sroa.01.0.i, %1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !3122
  br label %_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example.exit

_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.k, %bb.b
  %storemerge = phi i8 [ 1, %bb.b ], [ 0, %bb.k ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt11sample_iterhNtNtB9_5distr15StandardUniformECsvMXERwWlfq_12chat_example(ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.m, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8              ; 7 uses
  %i.d = icmp ugt i64 %1, 4294967295
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i64 %1 to i32                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !3152, !noundef !9 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !3153, !noalias !3154
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.e, label %.thread.i.i.i.i14.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #32, !noalias !3154
  br label %.thread.i.i.i.i14.i.i.i.i

.thread.i.i.i.i14.i.i.i.i:                        ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !3155
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  %i.o = add nuw nsw i32 %i.g, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i14.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i14.i.i.i.i ], [ %i.n, %bb.f ]
  %i.p = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !3156, !noalias !3155, !noundef !9
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, ptr %i.f, align 4, !alias.scope !3156, !noalias !3155
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw i64 %1, %i.q                     ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 0, %i.e
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i
  %i.w = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 63
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !3157, !noalias !3158
  %i.aa = icmp ugt i64 %i.z, 1023
  br i1 %i.aa, label %bb.i, label %.thread.i.i.i.i18.i.i.i.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x) #32, !noalias !3158
  br label %.thread.i.i.i.i18.i.i.i.i

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !3159
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i18.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ad, %bb.j ]
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ac, %bb.j ]
  %i.ae = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !3160, !noalias !3159, !noundef !9
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i, ptr %i.f, align 4, !alias.scope !3160, !noalias !3159
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.ae, i32 %i.e)
  %i.af = xor i32 %i.t, -1
  %.not9.i.i.i.i = icmp ugt i32 %3, %i.af
  %i.ag = zext i1 %.not9.i.i.i.i to i64
  %i.ah = add nuw nsw i64 %i.s, %i.ag
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3152
  call fastcc void @_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, i64 noundef 0, i64 noundef %1, ptr %.val1) #33, !noalias !3152
  %i.ai = load i8, ptr %i.a, align 8, !range !39, !noalias !3152, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %_RINvXsv_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsvMXERwWlfq_12chat_example.exit

_RINvXsv_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsvMXERwWlfq_12chat_example.exit: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !3152, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3152
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !39, !noalias !3152, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3161
  store i8 %i.an, ptr %i.b, align 1, !noalias !3161
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34, !noalias !3162
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i.i, %_RINvXsv_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsvMXERwWlfq_12chat_example.exit
  %.sroa.93.17 = phi i64 [ %i.al, %_RINvXsv_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsvMXERwWlfq_12chat_example.exit ], [ %i.s, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i.i ], [ %i.ah, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i.i ]
  ret i64 %.sroa.93.17

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !3193, !noalias !3194, !noundef !9 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !3194, !noalias !3193, !noundef !9 ; 2 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.p, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 13 uses
  %i.b = sub nuw i64 %.val1, %.val                ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 13 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !3195, !noundef !9 ; 5 uses
  %i.g = icmp ult i32 %i.f, 63                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !3196, !noalias !3197, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !3198, !noalias !3199
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j) #32, !noalias !3199
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3197
  %i.n = load i32, ptr %i.e, align 4, !alias.scope !3196, !noalias !3197, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 63        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !3196, !noalias !3197
  %.sroa.03.0.ph.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.n, i32 %i.p
  %.sroa.02.0.ph.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.i, i32 %i.n
  %.sroa.0.0.ph.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.f to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !3196, !noalias !3197, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !3196, !noalias !3197, !noundef !9
  %i.v = shl nuw nsw i64 %i.q, 32
  %i.w = add nuw nsw i64 %i.v, 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit.i.i: ; preds = %bb.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.w, %bb.f ]
  %.sroa.02.017.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.s, %bb.f ]
  %.sroa.03.016.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.u, %bb.f ]
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i, ptr %i.e, align 4, !alias.scope !3196, !noalias !3197
  %i.x = zext i32 %.sroa.03.016.i.i.i.i.i.i to i64
  %i.y = shl nuw i64 %i.x, 32
  %i.z = zext i32 %.sroa.02.017.i.i.i.i.i.i to i64
  %i.aa = or disjoint i64 %i.y, %i.z
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !3200, !noalias !3201, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !3202, !noalias !3203
  %i.ag = icmp ugt i64 %i.af, 1023
  br i1 %i.ag, label %bb.i, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ad) #32, !noalias !3203
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3201
  %i.ah = load i32, ptr %i.e, align 4, !alias.scope !3200, !noalias !3201, !noundef !9 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %i.f, 63      ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !3200, !noalias !3201
  %.sroa.03.0.ph.i.i.i.i11.i.i = select i1 %.not.i.i.i.i10.i.i, i32 %i.ah, i32 %i.aj
  %.sroa.02.0.ph.i.i.i.i12.i.i = select i1 %.not.i.i.i.i10.i.i, i32 %i.ac, i32 %i.ah
  %.sroa.0.0.ph.i.i.i.i13.i.i = select i1 %.not.i.i.i.i10.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i

bb.j:                                             ; preds = %bb.g
  %i.ak = zext nneg i32 %i.f to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !3200, !noalias !3201, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !3200, !noalias !3201, !noundef !9
  %i.ap = shl nuw nsw i64 %i.ak, 32
  %i.aq = add nuw nsw i64 %i.ap, 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i: ; preds = %bb.j, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %.sroa.0.018.i.i.i.i14.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i13.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.aq, %bb.j ] ; 3 uses
  %.sroa.02.017.i.i.i.i15.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i12.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.am, %bb.j ]
  %.sroa.03.016.i.i.i.i16.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i11.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ao, %bb.j ]
  %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i = lshr i64 %.sroa.0.018.i.i.i.i14.i.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i, ptr %i.e, align 4, !alias.scope !3200, !noalias !3201
  %i.ar = zext i32 %.sroa.03.016.i.i.i.i16.i.i to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = zext i32 %.sroa.02.017.i.i.i.i15.i.i to i64
  %i.au = or disjoint i64 %i.as, %i.at
  %i.av = zext i64 %i.au to i128
  %i.aw = zext i64 %i.c to i128
  %i.ax = mul nuw i128 %i.av, %i.aw               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = trunc nuw i128 %i.ay to i64             ; 2 uses
  %i.ba = trunc i128 %i.ax to i64                 ; 2 uses
  %i.bb = xor i64 %i.b, -1
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i
  %i.bd = icmp samesign ult i64 %.sroa.0.018.i.i.i.i14.i.i, 270582939648
  br i1 %i.bd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !3204, !noalias !3205, !noundef !9
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.bi = load i64, ptr %i.bh, align 4, !alias.scope !3206, !noalias !3207
  %i.bj = icmp ugt i64 %i.bi, 1023
  br i1 %i.bj, label %bb.m, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i, !prof !10

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bg) #32, !noalias !3207
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i: ; preds = %bb.m, %bb.l
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bg, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3205
  %i.bk = load i32, ptr %i.e, align 4, !alias.scope !3204, !noalias !3205, !noundef !9 ; 2 uses
  %.not.i.i.i.i21.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i, 63 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !3204, !noalias !3205
  %.sroa.03.0.ph.i.i.i.i22.i.i = select i1 %.not.i.i.i.i21.i.i, i32 %i.bk, i32 %i.bm
  %.sroa.02.0.ph.i.i.i.i23.i.i = select i1 %.not.i.i.i.i21.i.i, i32 %i.bf, i32 %i.bk
  %.sroa.0.0.ph.i.i.i.i24.i.i = select i1 %.not.i.i.i.i21.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i.i

bb.n:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !3204, !noalias !3205, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !3204, !noalias !3205, !noundef !9
  %i.br = and i64 %.sroa.0.018.i.i.i.i14.i.i, 270582939648
  %i.bs = add nuw nsw i64 %i.br, 8589935104
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i.i: ; preds = %bb.n, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i
  %.sroa.0.018.i.i.i.i25.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i24.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i ], [ %i.bs, %bb.n ]
  %.sroa.02.017.i.i.i.i26.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i23.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i ], [ %i.bo, %bb.n ]
  %.sroa.03.016.i.i.i.i27.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i22.i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i ], [ %i.bq, %bb.n ]
  %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i = lshr i64 %.sroa.0.018.i.i.i.i25.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i, ptr %i.e, align 4, !alias.scope !3204, !noalias !3205
  %i.bt = zext i32 %.sroa.03.016.i.i.i.i27.i.i to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = zext i32 %.sroa.02.017.i.i.i.i26.i.i to i64
  %i.bw = or disjoint i64 %i.bu, %i.bv
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.bw, i64 %i.c)
  %i.bx = xor i64 %i.ba, -1
  %.not6.i.i = icmp ugt i64 %3, %i.bx
  %i.by = zext i1 %.not6.i.i to i64
  %i.bz = add nuw i64 %i.by, %i.az
  br label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.bz, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit30.i.i ], [ %i.az, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit19.i.i ]
  %i.ca = add i64 %.sroa.01.0.i.i, %.val
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit: ; preds = %bb.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit.i.i
  %.sroa.65.0 = phi i64 [ %i.ca, %bb.o ], [ %i.aa, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsvMXERwWlfq_12chat_example.exit.i.i ]
  ret i64 %.sroa.65.0

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val2 = load ptr, ptr %0, align 8
  call fastcc void @_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, i64 noundef %1, i64 noundef %2, ptr %.val2) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %i.c = load i8, ptr %i.b, align 8, !range !39, !alias.scope !3211, !noalias !3212, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3213
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !39, !alias.scope !3211, !noalias !3212, !noundef !9
  store i8 %i.f, ptr %i.a, align 1, !noalias !3213
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #34, !noalias !3211
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3211, !noalias !3212, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTomEECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  %i.b = load ptr, ptr %.val5, align 8, !alias.scope !3228, !nonnull !9, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !3229, !noalias !3228, !noundef !9 ; 3 uses
  %i.e = icmp ugt i32 %i.d, 63
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.h = load i64, ptr %i.g, align 4, !alias.scope !3230, !noalias !3231
  %i.i = icmp ugt i64 %i.h, 1023
  br i1 %i.i, label %bb.d, label %.thread.i.i.i.i.i14.i.i.i, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.f) #32, !noalias !3231
  br label %.thread.i.i.i.i.i14.i.i.i

.thread.i.i.i.i.i14.i.i.i:                        ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.c), !noalias !3228
  br label %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = add nuw nsw i32 %i.d, 1
  br label %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i

_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i.i14.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i14.i.i.i ], [ %i.l, %bb.e ]
  %.in.i.i.i.i.i13.i.i.i = phi ptr [ %i.c, %.thread.i.i.i.i.i14.i.i.i ], [ %i.k, %bb.e ]
  %i.m = load i32, ptr %.in.i.i.i.i.i13.i.i.i, align 4, !alias.scope !3229, !noalias !3228, !noundef !9
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i, ptr %i.c, align 4, !alias.scope !3229, !noalias !3228
  %i.n = zext i32 %i.m to i64
  %i.o = zext i32 %1 to i64
  %i.p = mul nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %1
  %i.t = icmp ugt i32 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

bb.f:                                             ; preds = %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  %i.u = load ptr, ptr %.val5, align 8, !alias.scope !3232, !nonnull !9, !noundef !9 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !3233, !noalias !3232, !noundef !9 ; 3 uses
  %i.x = icmp ugt i32 %i.w, 63
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.aa = load i64, ptr %i.z, align 4, !alias.scope !3234, !noalias !3235
  %i.ab = icmp ugt i64 %i.aa, 1023
  br i1 %i.ab, label %bb.h, label %.thread.i.i.i.i.i18.i.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y) #32, !noalias !3235
  br label %.thread.i.i.i.i.i18.i.i.i

.thread.i.i.i.i.i18.i.i.i:                        ; preds = %bb.h, %bb.g
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.v), !noalias !3232
  br label %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.w, 1
  br label %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i

_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i: ; preds = %bb.i, %.thread.i.i.i.i.i18.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i18.i.i.i ], [ %i.ae, %bb.i ]
  %.in.i.i.i.i.i17.i.i.i = phi ptr [ %i.v, %.thread.i.i.i.i.i18.i.i.i ], [ %i.ad, %bb.i ]
  %i.af = load i32, ptr %.in.i.i.i.i.i17.i.i.i, align 4, !alias.scope !3233, !noalias !3232, !noundef !9
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i, ptr %i.v, align 4, !alias.scope !3233, !noalias !3232
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.af, i32 %1)
  %i.ag = xor i32 %i.r, -1
  %.not9.i.i.i = icmp ugt i32 %3, %i.ag
  %i.ah = zext i1 %.not9.i.i.i to i64
  %i.ai = add nuw nsw i64 %i.q, %i.ah
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsvMXERwWlfq_12chat_example.exit: ; preds = %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i, %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ai, %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit19.i.i.i ], [ %i.q, %_RINvYQNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsvMXERwWlfq_12chat_example.exit15.i.i.i ]
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.04.0.i.i.i to i32
  ret i32 %.sroa.6.0.extract.trunc.i

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB1x_E4Left0CsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEB1x_E5Right0CsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvCsvMXERwWlfq_12chat_example4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [5368 x i8], align 8              ; 4 uses
  %i.c = alloca [240 x i8], align 8               ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [5368 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 5361
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCsc13h7DQFCSE_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.c)
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.b:                                             ; preds = %.body
  br i1 %.sroa.01.2, label %bb.p, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 229
  store i8 1, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  store i8 1, ptr %i.i, align 2
  invoke void @_RNvMNtNtCsc13h7DQFCSE_5tokio7runtime7builderNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.c)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.g, %bb.d, %bb.k
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.j, %bb.d ], [ %i.o, %bb.g ] ; 2 uses
  %.sroa.01.2 = phi i1 [ false, %bb.k ], [ %.sroa.01.3, %bb.d ], [ true, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime7builder7BuilderECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(240) %i.c) #31
          to label %bb.b unwind label %bb.n

bb.d:                                             ; preds = %bb.l, %bb.c
  %.sroa.01.3 = phi i1 [ false, %bb.l ], [ true, %bb.c ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %i.k = load i64, ptr %i.d, align 8, !range !23, !alias.scope !3240, !noalias !3239, !noundef !9
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.f, label %bb.j, !prof !10

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3241
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3240, !noalias !3239, !nonnull !9, !noundef !9
  store ptr %i.n, ptr %i.a, align 8, !noalias !3241
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 27, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29
          to label %bb.h unwind label %bb.g, !noalias !3241

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.body unwind label %bb.i, !noalias !3241

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !3241
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.d, i64 80, i1 false), !alias.scope !3241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5368) %i.b, ptr noundef nonnull align 8 dereferenceable(5368) %i.f, i64 5368, i1 false)
  %i.q = invoke { ptr, ptr } @_RINvMNtNtCsc13h7DQFCSE_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvCsvMXERwWlfq_12chat_example4main0EB17_(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(5368) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime7runtime7RuntimeECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #31
          to label %.body unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime7runtime7RuntimeECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime7builder7BuilderECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(240) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret { ptr, ptr } %i.q

bb.n:                                             ; preds = %bb.p, %bb.k, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %bb.p, %bb.b
  %.pn46 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn47, %bb.p ]
  resume { ptr, i32 } %.pn46

bb.p:                                             ; preds = %.split.thread, %bb.b
  %.pn47 = phi { ptr, i32 } [ %i.g, %.split.thread ], [ %.pn, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsvMXERwWlfq_12chat_example4main0EBF_(ptr noundef nonnull align 8 %i.f) #31
          to label %bb.o unwind label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
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
  %i.i = load ptr, ptr %i.h, align 8, !align !13, !noundef !9 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !30, !noundef !9
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
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !9, !nonnull !9
  %i.t = call noundef zeroext i1 %i.s(ptr noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #33
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %0, align 8, !range !23, !noundef !9
  %.not39 = icmp eq i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not39, label %bb.g, label %bb.f

end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputuNtNtB2n_6marker4SendEL_EEEE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler12HandlerEventzEEEEEE9drop_slowCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairE9drop_slowCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsc13h7DQFCSE_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuE9drop_slowCsc13h7DQFCSE_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_3num7nonzero7NonZerolENtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_eventCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(2272), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6sOsJPswu84_11libp2p_mdns9behaviourINtB4_9BehaviourNtNtB4_5tokio5TokioENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_eventCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(1712), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour27on_connection_handler_eventCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(2272), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6sOsJPswu84_11libp2p_mdns9behaviourINtB4_9BehaviourNtNtB4_5tokio5TokioENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connectionCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1712), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noundef nonnull align 8, i64 noundef range(i64 0, 288230376151711744), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour37handle_established_inbound_connectionCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([944 x i8]) align 8 captures(none) dereferenceable(944), ptr noalias nofree noundef align 8 dereferenceable(2272), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour38handle_established_outbound_connectionCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([944 x i8]) align 8 captures(none) dereferenceable(944), ptr noalias nofree noundef align 8 dereferenceable(2272), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80), ptr noundef nonnull align 8, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB5_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4pollCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef align 8 dereferenceable(2272), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs6b9j1MKPRPC_12libp2p_swarm9behaviourINtB5_7ToSwarmNtNtCs1pSuea8KFR7_16libp2p_gossipsub9behaviour5EventNtNtB11_7handler9HandlerInE7map_outNtCsvMXERwWlfq_12chat_example16MyBehaviourEventNcNtB2m_9Gossipsub0EB2o_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6b9j1MKPRPC_12libp2p_swarm9behaviourINtB3_7ToSwarmNtCsvMXERwWlfq_12chat_example16MyBehaviourEventNtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInE6map_inINtCscu2bAJ62uie_6either6EitherB1G_zENCNvXs_BX_NtBX_11MyBehaviourNtB3_16NetworkBehaviour4poll0EBX_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6sOsJPswu84_11libp2p_mdns9behaviourINtB4_9BehaviourNtNtB4_5tokio5TokioENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour4pollCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(1712), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs6b9j1MKPRPC_12libp2p_swarm9behaviourINtB5_7ToSwarmNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5EventzE7map_outNtCsvMXERwWlfq_12chat_example16MyBehaviourEventNcNtB1S_4Mdns0EB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs6b9j1MKPRPC_12libp2p_swarm9behaviourINtB3_7ToSwarmNtCsvMXERwWlfq_12chat_example16MyBehaviourEventzE6map_inINtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInzENCNvXs_BX_NtBX_11MyBehaviourNtB3_16NetworkBehaviour4polls_0EBX_(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 8 captures(none) dereferenceable(256), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs2iisHxfqoT7_15libp2p_identity5errorNtB5_12SigningErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core4done11DoneMessageNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtB5_11SendWrapperINtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEENtB2y_11UpgradeInfo13protocol_infoCsvMXERwWlfq_12chat_example(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtB5_11SendWrapperNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeENtB14_11UpgradeInfo13protocol_infoCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapENtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Csbli3iz7XG76_9multiaddrNtB4_9MultiaddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdTHTBGblh3Z_11libp2p_core9transport7PortUseNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6b9j1MKPRPC_12libp2p_swarm9dial_opts13PeerConditionNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2iisHxfqoT7_15libp2p_identity7peer_idNtB2_6PeerIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB8_2io5error5ErrorEEENtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB8_2io5error5ErrorENtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB6_5Debug3fmtCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBW_2io5error5ErrorEE4fromCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtCshuexzQAPOo_12libp2p_noise5ErrorE4fromCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCs1pSuea8KFR7_16libp2p_gossipsub5error17SubscriptionErrorE4fromCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCsbli3iz7XG76_9multiaddr6errors5ErrorE4fromCsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsd_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase9behaviour14BehaviourErrorE4fromCsvMXERwWlfq_12chat_example(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link3xdp7LinkXdpINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route9attribute14RouteAttributeINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link7af_spec6unspec12AfSpecUnspecINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info3vrf7InfoVrfINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6geneve10InfoGeneveINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapINtNtNtBa_5slice4iter4IterB14_EECsvMXERwWlfq_12chat_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #26 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBF_5error5ErrorEL_EEECsvMXERwWlfq_12chat_example(ptr @_RNvCsvMXERwWlfq_12chat_example4main, i64 %i.a, ptr %1, i8 0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBF_5error5ErrorEL_EEECsvMXERwWlfq_12chat_example(ptr noundef nonnull, i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nonlazybind "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { cold }
attributes #32 = { noinline }
attributes #33 = { inlinehint }
attributes #34 = { noinline noreturn }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i64 0, i64 17}
!13 = !{i64 8}
!14 = !{i64 -1, i64 6}
!15 = !{i64 0, i64 2}
!16 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example}
!17 = !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECsvMXERwWlfq_12chat_example}
!18 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!19 = !{i64 -1, i64 -9223372036854775808}
!20 = !{i64 0, i64 -9223372036854775808}
!21 = !{i64 1, i64 536870913}
!22 = !{i64 -1, i64 3}
!23 = !{i64 0, i64 3}
!24 = !{i64 -1, i64 -9223372036854775802}
!25 = !{i64 -2, i64 -9223372036854775808}
!26 = !{i8 0, i8 3}
!27 = !{i64 0, i64 -9223372036854775806}
!28 = !{i32 0, i32 3}
!29 = !{i8 0, i8 4}
!30 = !{i64 0, i64 5}
!31 = !{i8 0, i8 7}
!32 = !{i64 1, i64 0}
!33 = !{!"address", !"read_provenance"}
!34 = !{i64 0, i64 -9223372036854775802}
!35 = !{i64 0, i64 -9223372036854775804}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!38 = !{!"branch_weights", i32 1, i32 6000, i32 1, i32 1}
!39 = !{i8 0, i8 2}
!40 = !{i64 -1, i64 20}
!41 = !{i64 -1, i64 17}
!42 = !{i64 0, i64 44}
!43 = !{i64 -2, i64 14}
!44 = !{!"branch_weights", i32 4001, i32 4000000}
!45 = !{i8 -6, i8 12}
!46 = !{i64 0, i64 -9223372036854775799}
!47 = !{i64 4}
!48 = !{i64 2}
!49 = distinct !{!49, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut"}
!50 = distinct !{!50, !49, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut: argument 0"}
!51 = distinct !{!51, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut"}
!52 = distinct !{!52, !51, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut: argument 0"}
!53 = !{!50}
!54 = !{!52}
!55 = distinct !{!55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!56 = distinct !{!56, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!57 = distinct !{!57, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!58 = distinct !{!58, !57, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!59 = distinct !{!59, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!60 = distinct !{!60, !59, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!61 = distinct !{!61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsvMXERwWlfq_12chat_example16MyBehaviourEventEBD_"}
!62 = distinct !{!62, !61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsvMXERwWlfq_12chat_example16MyBehaviourEventEBD_: argument 0"}
!63 = distinct !{!63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5EventECsvMXERwWlfq_12chat_example"}
!64 = distinct !{!64, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5EventECsvMXERwWlfq_12chat_example: argument 0"}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECsvMXERwWlfq_12chat_example"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECsvMXERwWlfq_12chat_example: argument 0"}
!67 = distinct !{!67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!69 = distinct !{!69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!71 = distinct !{!71, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!72 = distinct !{!72, !71, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!73 = distinct !{!73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!74 = distinct !{!74, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!75 = distinct !{!75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!77 = distinct !{!77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!78 = distinct !{!78, !77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!79 = distinct !{!79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECsvMXERwWlfq_12chat_example"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core10connection14ConnectedPointECsvMXERwWlfq_12chat_example: argument 0"}
!81 = distinct !{!81, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!82 = distinct !{!82, !81, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!83 = distinct !{!83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!84 = distinct !{!84, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!85 = distinct !{!85, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!86 = distinct !{!86, !85, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!87 = distinct !{!87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!89 = distinct !{!89, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!90 = distinct !{!90, !89, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!91 = distinct !{!91, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!92 = distinct !{!92, !91, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!93 = distinct !{!93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!94 = distinct !{!94, !93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!95 = distinct !{!95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!96 = distinct !{!96, !95, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!97 = distinct !{!97, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!98 = distinct !{!98, !97, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!99 = distinct !{!99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!100 = distinct !{!100, !99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!101 = distinct !{!101, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!102 = distinct !{!102, !101, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!103 = distinct !{!103, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!104 = distinct !{!104, !103, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!105 = distinct !{!105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!106 = distinct !{!106, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!107 = distinct !{!107, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!108 = distinct !{!108, !107, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!109 = distinct !{!109, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!110 = distinct !{!110, !109, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!111 = distinct !{!111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!112 = distinct !{!112, !111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!113 = distinct !{!113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!114 = distinct !{!114, !113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!115 = distinct !{!115, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!116 = distinct !{!116, !115, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!117 = distinct !{!117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example"}
!118 = distinct !{!118, !117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example: argument 0"}
!119 = distinct !{!119, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsvMXERwWlfq_12chat_example"}
!120 = distinct !{!120, !119, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsvMXERwWlfq_12chat_example: argument 0"}
!121 = distinct !{!121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!123 = distinct !{!123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!124 = distinct !{!124, !123, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!125 = distinct !{!125, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!126 = distinct !{!126, !125, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!127 = distinct !{!127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!128 = distinct !{!128, !127, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!129 = distinct !{!129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!130 = distinct !{!130, !129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!131 = distinct !{!131, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!132 = distinct !{!132, !131, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!133 = distinct !{!133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!134 = distinct !{!134, !133, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
!135 = distinct !{!135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example"}
!136 = distinct !{!136, !135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsvMXERwWlfq_12chat_example: argument 0"}
!137 = distinct !{!137, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!138 = distinct !{!138, !137, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!139 = distinct !{!139, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECsvMXERwWlfq_12chat_example"}
!140 = distinct !{!140, !139, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtB4_2io5error5ErrorEEEEECsvMXERwWlfq_12chat_example: argument 0"}
!141 = distinct !{!141, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example"}
!142 = distinct !{!142, !141, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsvMXERwWlfq_12chat_example: argument 0"}
!143 = distinct !{!143, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsvMXERwWlfq_12chat_example"}
!144 = distinct !{!144, !143, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsvMXERwWlfq_12chat_example: argument 0"}
!145 = distinct !{!145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example"}
!146 = distinct !{!146, !145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsvMXERwWlfq_12chat_example: argument 0"}
end_hunk_1
