Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.03?download=true
inline.NumInlined: 1966
inline.NumDeleted: 989
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6b9j1MKPRPC_12libp2p_swarm5SwarmNtNCNvCshke30g4Hb4g_20ipfs_private_example4main011MyBehaviourEEB1i_:bb.a

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsbli3iz7XG76_9multiaddr9MultiaddrEECshke30g4Hb4g_20ipfs_private_example.exit14
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit15: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsbli3iz7XG76_9multiaddr9MultiaddrEECshke30g4Hb4g_20ipfs_private_example.exit14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !29, !alias.scope !285, !noundef !9
  switch i64 %i.ad, label %bb.p [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerECshke30g4Hb4g_20ipfs_private_example.exit.i.i
  ]

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit15
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerECshke30g4Hb4g_20ipfs_private_example.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ag = load i8, ptr %i.af, align 8, !range !16, !alias.scope !286, !noundef !9
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %.body16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !287, !noundef !9
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %.body16, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %.body16 unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.al = load i8, ptr %i.ak, align 8, !range !16, !alias.scope !288, !noundef !9
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerECshke30g4Hb4g_20ipfs_private_example.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !289, !noundef !9
  %.not.i.i.i2.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i2.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

.body16:                                          ; preds = %bb.w, %bb.s, %bb.r, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit
  %.pn10 = phi { ptr, i32 } [ %.pn8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.ar, %bb.w ], [ %i.ae, %bb.s ], [ %i.ae, %bb.r ], [ %i.ae, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3368
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq) #37
          to label %common.resume unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit15, %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEEEB2l_.exit unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.body16, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.x ], [ %.pn10, %.body16 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEEEB2l_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtCs6b9j1MKPRPC_12libp2p_swarm20PendingNotifyHandlerINtCscu2bAJ62uie_6either6EitherIB2D_NtNtCs1pSuea8KFR7_16libp2p_gossipsub7handler9HandlerInNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEzEEEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNCNvCshke30g4Hb4g_20ipfs_private_example4main016MyBehaviourEventEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
  ret void

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsbli3iz7XG76_9multiaddr9MultiaddrEECshke30g4Hb4g_20ipfs_private_example.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_EECshke30g4Hb4g_20ipfs_private_example.exit, %bb.j, %.body16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.g, %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1b_IB1b_IB1b_IB1b_B1F_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1F_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3b_B1F_EEEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = load i8, ptr %0, align 8, !range !30, !noundef !9 ; 5 uses
  %i.i = tail call i8 @llvm.smax.i8(i8 %i.h, i8 9)
  switch i8 %i.i, label %bb.b [
    i8 9, label %bb.e
    i8 10, label %bb.ai
    i8 11, label %bb.bf
    i8 12, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1f_IB1f_IB1f_IB1f_B1J_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1J_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3v_B1J_EEEEENtNtNtB1P_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1I_IB1I_IB1I_IB1I_B2c_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2c_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3I_B2c_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1m_IB1m_IB1m_IB1m_B1Q_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1Q_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3C_B1Q_EEEEENtNtNtB1W_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataEEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %bb.at, %bb.au, %bb.ba, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn2.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataEEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i ], [ %.pn2.i.i.i, %bb.au ], [ %.pn2.i.i.i, %bb.at ], [ %i.cz, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1I_IB1I_IB1I_IB1I_B2c_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2c_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3I_B2c_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1m_IB1m_IB1m_IB1m_B1Q_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1Q_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3C_B1Q_EEEEENtNtNtB1W_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.m = icmp eq i8 %i.h, -4
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !376, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !376
  %i.o = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 1, label %bb.h
  ], !prof !31

default.unreachable:                              ; preds = %bb.af, %bb.ac, %bb.x, %bb.r, %bb.o, %bb.l, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.val.i.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !377, !noalias !376
  store i8 3, ptr %i.g, align 8, !alias.scope !377, !noalias !376
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !376
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !376
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %.not.i.i = icmp eq i8 %i.h, -3
  br i1 %.not.i.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.v = icmp eq i8 %i.h, -2
  br i1 %i.v, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load i64, ptr %i.w, align 8, !range !29, !alias.scope !380, !noundef !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !380 ; 9 uses
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i, -1
  %i.y = ptrtoint ptr %.val1.i.i.i to i64         ; 4 uses
  %i.z = and i64 %i.y, 3                          ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.r, label %1

1:                                                ; preds = %bb.k
  %2 = icmp eq i64 %.val.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  br i1 %2, label %bb.l, label %bb.o

bb.l:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !381
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 3, label %bb.m
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 1, label %bb.n
  ], !prof !31

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp ult ptr %.val1.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ab = and i64 %i.y, 1095216660480
  %i.ac = icmp ne i64 %i.ab, 1095216660480
  tail call void @llvm.assume(i1 %i.aa)
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val1.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !382, !noalias !381
  store i8 3, ptr %i.f, align 8, !alias.scope !382, !noalias !381
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae), !noalias !381
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !381
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.o:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !383
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i
    i64 1, label %bb.q
  ], !prof !31

bb.p:                                             ; preds = %bb.o
  %i.af = icmp ult ptr %.val1.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.y, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr i8, ptr %.val1.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !384, !noalias !383
  store i8 3, ptr %i.e, align 8, !alias.scope !384, !noalias !383
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj), !noalias !383
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !383
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.r:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !385
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
    i64 1, label %bb.t
  ], !prof !31

bb.s:                                             ; preds = %bb.r
  %i.ak = icmp ult ptr %.val1.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.y, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.am)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.an = getelementptr i8, ptr %.val1.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !alias.scope !386, !noalias !385
  store i8 3, ptr %i.d, align 8, !alias.scope !386, !noalias !385
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !385
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !385
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.u:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.ap = icmp eq i8 %i.h, -1
  br i1 %i.ap, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.ar = load i64, ptr %i.aq, align 8, !range !32, !alias.scope !389, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.x:                                             ; preds = %bb.w
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !392, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !392
  %i.au = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.av = and i64 %i.au, 3
  switch i64 %i.av, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i.i
    i64 1, label %bb.z
  ], !prof !31

bb.y:                                             ; preds = %bb.x
  %i.aw = icmp ult ptr %.val.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ax = and i64 %i.au, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.az = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !alias.scope !393, !noalias !392
  store i8 3, ptr %i.c, align 8, !alias.scope !393, !noalias !392
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba), !noalias !392
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !392
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.aa:                                            ; preds = %bb.u
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshuexzQAPOo_12libp2p_noise5ErrorECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.ab:                                            ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i2.i = load i64, ptr %i.bb, align 8, !range !33, !alias.scope !394, !noundef !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !394 ; 8 uses
  switch i64 %.val.i2.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit [
    i64 -2, label %bb.af
    i64 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  %i.bd = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.be = and i64 %i.bd, 3
  switch i64 %i.be, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i.i
    i64 3, label %bb.ad
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i.i
    i64 1, label %bb.ae
  ], !prof !31

bb.ad:                                            ; preds = %bb.ac
  %i.bf = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bg = and i64 %i.bd, 1095216660480
  %i.bh = icmp ne i64 %i.bg, 1095216660480
  tail call void @llvm.assume(i1 %i.bf)
  tail call void @llvm.assume(i1 %i.bh)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bi = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !396, !noalias !395
  store i8 3, ptr %i.b, align 8, !alias.scope !396, !noalias !395
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj), !noalias !395
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i2.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.af:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  %i.bk = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.bl = and i64 %i.bk, 3
  switch i64 %i.bl, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 3, label %bb.ag
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 1, label %bb.ah
  ], !prof !31

bb.ag:                                            ; preds = %bb.af
  %i.bm = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bn = and i64 %i.bk, 1095216660480
  %i.bo = icmp ne i64 %i.bn, 1095216660480
  tail call void @llvm.assume(i1 %i.bm)
  tail call void @llvm.assume(i1 %i.bo)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.bp = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !398, !noalias !397
  store i8 3, ptr %i.a, align 8, !alias.scope !398, !noalias !397
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bq), !noalias !397
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.ai:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.bs = load i32, ptr %i.br, align 8, !range !400, !alias.scope !399, !noundef !9 ; 4 uses
  %i.bt = icmp ne i32 %i.bs, 4
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i32 %i.bs, -3
  %i.bv = icmp samesign ugt i32 %i.bs, 2
  %narrow.i = select i1 %i.bv, i32 %i.bu, i32 1
  switch i32 %narrow.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit [
    i32 1, label %bb.aj
    i32 3, label %bb.az
    i32 6, label %bb.bc
    i32 7, label %bb.bd
  ]

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.bw = icmp eq i32 %i.bs, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i1 = load ptr, ptr %i.bx, align 8, !alias.scope !403, !nonnull !9, !noundef !9 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val.i.i.i1)
          to label %bb.al unwind label %.body.i.i.i, !noalias !403

.body.i.i.i:                                      ; preds = %bb.ak
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i1, i64 noundef 96, i64 noundef 8) #41, !noalias !403
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !403, !align !11, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtB1B_5rdata3soa3SOAEEEECshke30g4Hb4g_20ipfs_private_example(ptr %.val5.i.i.i) #37
          to label %bb.am unwind label %bb.ay, !noalias !403

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i1, i64 noundef 96, i64 noundef 8) #41, !noalias !403
end_hunk_0
