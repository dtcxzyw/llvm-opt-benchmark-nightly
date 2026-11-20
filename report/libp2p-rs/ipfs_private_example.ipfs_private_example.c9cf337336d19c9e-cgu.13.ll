Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.13?download=true
inline.NumInlined: 1944
inline.NumDeleted: 848
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs5_NtCs4LZN9PPmi2I_11hickory_net5errorNtB6_9NoRecords3newINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECshke30g4Hb4g_20ipfs_private_example:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCs4LZN9PPmi2I_11hickory_net5errorNtB6_9NoRecords3newNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryECshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 4), (8, 32), (40, 48), (56, 60)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, i16 noundef range(i16 0, 21) %2, i16 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEINtNtCskKLDkoKarTP_4core7convert4FromBO_E4fromCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i16 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %3, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1d_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4y_EEEEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1256) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4g_EEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4P_EEEEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %0) #29
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection15ConnectionStateINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1u_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4P_EEEEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(1208) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1p_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4K_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1208
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #29
          to label %.body5 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1p_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4K_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1p_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4K_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body5 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjouRnuJWSBB_5yamux10connection10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIB1p_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4K_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body5:                                           ; preds = %bb.j, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.j ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %.val3 = load ptr, ptr %i.h, align 8, !align !15, !noundef !11 ; 2 uses
  %i.i = icmp eq ptr %.val3, null
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.i

bb.i:                                             ; preds = %.body5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.val4 = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  invoke void %i.l(ptr noundef %.val4)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.l, !inline_history !0

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %.val = load ptr, ptr %i.n, align 8, !align !15, !noundef !11 ; 2 uses
  %i.o = icmp eq ptr %.val, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit7, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.val2 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  tail call void %i.r(ptr noundef %.val2), !inline_history !67
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.body5, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1b_IB1b_IB1b_IB1b_B1F_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1F_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3b_B1F_EEEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !16, !noundef !11
  %i.b = tail call i8 @llvm.smax.i8(i8 %i.a, i8 9)
  switch i8 %i.b, label %bb.b [
    i8 9, label %bb.e
    i8 10, label %bb.f
    i8 11, label %bb.g
    i8 12, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1f_IB1f_IB1f_IB1f_B1J_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1J_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3v_B1J_EEEEENtNtNtB1P_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1I_IB1I_IB1I_IB1I_B2c_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2c_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3I_B2c_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1m_IB1m_IB1m_IB1m_B1Q_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1Q_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3C_B1Q_EEEEENtNtNtB1W_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1P_IB1P_IB1P_IB1P_B2j_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2j_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3P_B2j_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1P_IB1P_IB1P_IB1P_B2j_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2j_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3P_B2j_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1I_IB1I_IB1I_IB1I_B2c_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2c_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3I_B2c_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtCskKLDkoKarTP_4core2io5error5ErrorIB1m_IB1m_IB1m_IB1m_B1Q_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1Q_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3C_B1Q_EEEEENtNtNtB1W_3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !77, !noundef !11
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !77, !nonnull !11, !align !15, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !77, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !77, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !77, !noundef !11
  tail call void %i.l(ptr noundef %i.i, ptr noundef %i.n, i64 noundef %i.p), !noalias !77, !inline_history !1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIB1I_IB1I_IB1I_IB1I_B2c_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB2c_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB3I_B2c_EEEEEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1e_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !112, !noundef !11 ; 3 uses
  %i.g = icmp eq i8 %i.f, -2
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.h, align 8, !range !17, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8            ; 9 uses
  %.not.i = icmp eq i64 %.val, -1
  %i.j = ptrtoint ptr %.val1 to i64               ; 4 uses
  %i.k = and i64 %i.j, 3                          ; 3 uses
  br i1 %.not.i, label %bb.i, label %1

1:                                                ; preds = %bb.b
  %2 = icmp eq i64 %.val, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  br i1 %2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.s, %bb.n, %bb.i, %bb.f, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !114, !noalias !113
  store i8 3, ptr %i.e, align 8, !alias.scope !114, !noalias !113
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !113
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.f:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !115
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 1, label %bb.h
  ], !prof !18

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.j, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !116, !noalias !115
  store i8 3, ptr %i.d, align 8, !alias.scope !116, !noalias !115
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !115
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !115
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !117
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 1, label %bb.k
  ], !prof !18

bb.j:                                             ; preds = %bb.i
  %i.v = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.j, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !118, !noalias !117
  store i8 3, ptr %i.c, align 8, !alias.scope !118, !noalias !117
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z), !noalias !117
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !117
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.aa = icmp eq i8 %i.f, -1
  br i1 %i.aa, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.ab, align 8, !range !19, !alias.scope !119, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !119 ; 4 uses
  %cond.i.i = icmp eq i64 %.val.i, 0
  br i1 %cond.i.i, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !120
  %i.ad = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.ae = and i64 %i.ad, 3
  switch i64 %i.ae, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 3, label %bb.o
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 1, label %bb.p
  ], !prof !18

bb.o:                                             ; preds = %bb.n
  %i.af = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.ad, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !121, !noalias !120
  store i8 3, ptr %i.b, align 8, !alias.scope !121, !noalias !120
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj), !noalias !120
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !120
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  switch i8 %i.f, label %bb.r [
    i8 0, label %bb.s
    i8 1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit
    i8 2, label %bb.v
    i8 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit
    i8 4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit
    i8 5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit
    i8 6, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit
    i8 7, label %bb.ag
    i8 8, label %bb.ay
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECshke30g4Hb4g_20ipfs_private_example.exit.i.i unwind label %bb.bj

bb.s:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !124, !nonnull !11, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  %i.am = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.an = and i64 %i.am, 3
  switch i64 %i.an, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i2
    i64 3, label %bb.t
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i2
    i64 1, label %bb.u
  ], !prof !18

bb.t:                                             ; preds = %bb.s
  %i.ao = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ap = and i64 %i.am, 1095216660480
  %i.aq = icmp ne i64 %i.ap, 1095216660480
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.aq)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i2

bb.u:                                             ; preds = %bb.s
  %i.ar = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !125, !noalias !124
  store i8 3, ptr %i.a, align 8, !alias.scope !125, !noalias !124
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !124
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i2: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.v:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %.body.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.au, %bb.w ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !126, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !126
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECshke30g4Hb4g_20ipfs_private_example(ptr %.val2.i.i.i, ptr %.val3.i.i.i) #29
          to label %common.resume.i.i unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i1.i.i = load ptr, ptr %i.az, align 8, !alias.scope !126, !noundef !11 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !126 ; 6 uses
  %i.bb = icmp eq ptr %.val.i1.i.i, null
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.bc = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.bc(ptr noundef nonnull %.val.i1.i.i)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !20, !invariant.load !11 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !21, !invariant.load !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !20, !invariant.load !11 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBE_8and_then13AndThenFutureIB1y_INtNtBG_6either12EitherFutureIB1y_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB6g_10PnetConfig9handshakeB3U_E0EB2G_ENCINvMNtBE_7upgradeINtB7r_7BuilderINtCscu2bAJ62uie_6either6EitherINtB1A_7AndThenINtB40_9TransportNtB3W_3TcpEB5f_EB8D_EE12authenticateINtNtB2L_6either6EitherINtB6g_10PnetOutputB3U_EB3U_EINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB9u_EENtBap_6ConfigNtBap_5ErrorE0INtB7r_12AuthenticateB9u_Bc7_EENCINvMs1_B7r_INtB7r_13AuthenticatedIB8p_B7T_B7l_EE9multiplexBak_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIBb1_Bak_EENtBe8_6ConfigB4P_E0INtB7r_9MultiplexBak_BeR_EEIB7U_IB7U_IB7U_IB7U_B4P_NtB6g_9PnetErrorEB4P_EINtNtNtBG_7upgrade5error12UpgradeErrorBck_EEIBgm_B4P_EEEEB5n_:bb.a
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !824, !nonnull !11, !noundef !11
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !824, !noundef !11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !824, !noundef !11
  tail call void %i.cy(ptr noundef %i.cv, ptr noundef %i.da, i64 noundef %i.dc), !noalias !824, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1i_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2q_B1i_EEECshke30g4Hb4g_20ipfs_private_example.exit

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit, %bb.x
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBE_8and_then13AndThenFutureINtNtBG_6either12EitherFutureIB1y_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB6b_10PnetConfig9handshakeB3P_E0EB2B_ENCINvMNtBE_7upgradeINtB7m_7BuilderINtCscu2bAJ62uie_6either6EitherINtB1A_7AndThenINtB3V_9TransportNtB3R_3TcpEB5a_EB8y_EE12authenticateINtNtB2G_6either6EitherINtB6b_10PnetOutputB3P_EB3P_EINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB9p_EENtBak_6ConfigNtBak_5ErrorE0INtB7m_12AuthenticateB9p_Bc2_EEIB7P_IB7P_IB7P_B4K_NtB6b_9PnetErrorEB4K_EINtNtNtBG_7upgrade5error12UpgradeErrorBcf_EEEEB5i_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1e_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(104) %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !866, !noundef !11
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !866, !nonnull !11, !align !15, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !866, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !866, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !866, !noundef !11
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !866, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !870, !noundef !11
  %i.s = load ptr, ptr %i.p, align 8, !alias.scope !870, !nonnull !11, !align !15, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !870, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !870, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !870, !noundef !11
  tail call void %i.u(ptr noundef %i.r, ptr noundef %i.w, i64 noundef %i.y), !noalias !870, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport8and_then13AndThenFutureINtNtBI_6either12EitherFutureIBC_INtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB5O_10PnetConfig9handshakeB3s_E0EB2e_ENCINvMNtBG_7upgradeINtB6Z_7BuilderINtCscu2bAJ62uie_6either6EitherINtBE_7AndThenINtB3y_9TransportNtB3u_3TcpEB4N_EB8a_EE12authenticateINtNtB2j_6either6EitherINtB5O_10PnetOutputB3s_EB3s_EINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedB91_EENtB9W_6ConfigNtB9W_5ErrorE0INtB6Z_12AuthenticateB91_BbE_EEEB4V_(ptr noundef nonnull align 8 %0)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !32, !alias.scope !871, !noundef !11
  %i.ab = icmp eq i8 %i.aa, -3
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1e_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit2, %bb.d, %bb.c, %bb.b
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !875, !noundef !11
  %i.ag = load ptr, ptr %i.ad, align 8, !alias.scope !875, !nonnull !11, !align !15, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !875, !nonnull !11, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !875, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !875, !noundef !11
  invoke void %i.ai(ptr noundef %i.af, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.k, !inline_history !2

bb.i:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !879, !noundef !11
  %i.aq = load ptr, ptr %i.an, align 8, !alias.scope !879, !nonnull !11, !align !15, !noundef !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !879, !nonnull !11, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !879, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !879, !noundef !11
  invoke void %i.as(ptr noundef %i.ap, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit2 unwind label %bb.j, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.ac, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !883, !noundef !11
  %i.ba = load ptr, ptr %i.ax, align 8, !alias.scope !883, !nonnull !11, !align !15, !noundef !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !883, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !883, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !883, !noundef !11
  invoke void %i.bc(ptr noundef %i.az, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit3 unwind label %bb.k, !inline_history !2

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit2: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !887, !noundef !11
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !887, !nonnull !11, !align !15, !noundef !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !887, !nonnull !11, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !887, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !887, !noundef !11
  tail call void %i.bn(ptr noundef %i.bk, ptr noundef %i.bp, i64 noundef %i.br), !noalias !887, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherIBZ_IBZ_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1B_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBG_6either12EitherFutureINtNtBE_8and_then13AndThenFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB66_10PnetConfig9handshakeB3K_E0EB2w_EINtCscu2bAJ62uie_6either6EitherIB7c_B4F_NtB66_9PnetErrorEB4F_EEEB5d_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !12, !noundef !11 ; 3 uses
  %i.h = icmp ne i64 %i.g, 5
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.g, -3
  %i.j = icmp samesign ugt i64 %i.g, 2
  %i.k = select i1 %i.j, i64 %i.i, i64 2
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
    i64 3, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.l, align 8, !range !17, !noundef !11 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.m, align 8            ; 9 uses
  %.not.i = icmp eq i64 %.val, -1
  %i.n = ptrtoint ptr %.val2 to i64               ; 4 uses
  %i.o = and i64 %i.n, 3                          ; 3 uses
  br i1 %.not.i, label %bb.i, label %1

1:                                                ; preds = %bb.b
  %2 = icmp eq i64 %.val, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  br i1 %2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !948
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 1, label %bb.e
  ], !prof !18

default.unreachable:                              ; preds = %bb.w, %bb.t, %bb.q, %bb.i, %bb.f, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.q = and i64 %i.n, 1095216660480
  %i.r = icmp ne i64 %i.q, 1095216660480
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.assume(i1 %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !949, !noalias !948
  store i8 3, ptr %i.f, align 8, !alias.scope !949, !noalias !948
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !948
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !948
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.f:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !950
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i
    i64 1, label %bb.h
  ], !prof !18

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.n, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !951, !noalias !950
  store i8 3, ptr %i.e, align 8, !alias.scope !951, !noalias !950
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y), !noalias !950
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !950
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !952
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i
    i64 1, label %bb.k
  ], !prof !18

bb.j:                                             ; preds = %bb.i
  %i.z = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.n, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.ab)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.val2, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !953, !noalias !952
  store i8 3, ptr %i.d, align 8, !alias.scope !953, !noalias !952
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad), !noalias !952
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !952
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !957, !noundef !11
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !957, !nonnull !11, !align !15, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !957, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !957, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !957, !noundef !11
  tail call void %i.aj(ptr noundef %i.ag, ptr noundef %i.al, i64 noundef %i.an), !noalias !957, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.m:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !961, !noundef !11
  %i.ar = load ptr, ptr %i.ao, align 8, !alias.scope !961, !nonnull !11, !align !15, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !961, !nonnull !11, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !961, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !961, !noundef !11
  tail call void %i.at(ptr noundef %i.aq, ptr noundef %i.av, i64 noundef %i.ax), !noalias !961, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core6either12EitherFutureINtNtNtBG_9transport8and_then13AndThenFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB5K_10PnetConfig9handshakeB3o_E0EB2a_EEB4R_(ptr noundef nonnull align 8 %0)
          to label %bb.aa unwind label %bb.z

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.ay, align 8, !range !33, !noundef !11 ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.az, align 8           ; 9 uses
  %i.ba = icmp eq i64 %.val3, -2
  br i1 %i.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i64 %.val3, -1
  %i.bb = ptrtoint ptr %.val4 to i64              ; 4 uses
  %i.bc = and i64 %i.bb, 3                        ; 3 uses
  br i1 %.not.i.i, label %bb.w, label %3

3:                                                ; preds = %bb.p
  %4 = icmp eq i64 %.val3, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  br i1 %4, label %bb.q, label %bb.t

bb.q:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !962
  switch i64 %i.bc, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 1, label %bb.s
  ], !prof !18

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.be = and i64 %i.bb, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !alias.scope !963, !noalias !962
  store i8 3, ptr %i.c, align 8, !alias.scope !963, !noalias !962
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh), !noalias !962
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !962
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.t:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !964
  switch i64 %i.bc, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 3, label %bb.u
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
    i64 1, label %bb.v
  ], !prof !18

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.bj = and i64 %i.bb, 1095216660480
  %i.bk = icmp ne i64 %i.bj, 1095216660480
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @llvm.assume(i1 %i.bk)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !965, !noalias !964
  store i8 3, ptr %i.b, align 8, !alias.scope !965, !noalias !964
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm), !noalias !964
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !964
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.w:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !966
  switch i64 %i.bc, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6
    i64 3, label %bb.x
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6
    i64 1, label %bb.y
  ], !prof !18

bb.x:                                             ; preds = %bb.w
  %i.bn = icmp ult ptr %.val4, inttoptr (i64 188978561024 to ptr)
  %i.bo = and i64 %i.bb, 1095216660480
  %i.bp = icmp ne i64 %i.bo, 1095216660480
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bp)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6

bb.y:                                             ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %.val4, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !alias.scope !967, !noalias !966
  store i8 3, ptr %i.a, align 8, !alias.scope !967, !noalias !966
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br), !noalias !966
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6: ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !966
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit7, %bb.m, %bb.l
  ret void

bb.z:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !971, !noundef !11
  %i.bw = load ptr, ptr %i.bt, align 8, !alias.scope !971, !nonnull !11, !align !15, !noundef !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !971, !nonnull !11, !noundef !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !971, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !971, !noundef !11
  invoke void %i.by(ptr noundef %i.bv, ptr noundef %i.ca, i64 noundef %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.ac, !inline_history !2

bb.aa:                                            ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !975, !noundef !11
  %i.cg = load ptr, ptr %i.cd, align 8, !alias.scope !975, !nonnull !11, !align !15, !noundef !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !975, !nonnull !11, !noundef !11
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !975, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !975, !noundef !11
  invoke void %i.ci(ptr noundef %i.cf, ptr noundef %i.ck, i64 noundef %i.cm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit7 unwind label %bb.ab, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.z, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.ab ], [ %i.bs, %bb.z ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !979, !noundef !11
  %i.cq = load ptr, ptr %i.cn, align 8, !alias.scope !979, !nonnull !11, !align !15, !noundef !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !979, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !979, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !979, !noundef !11
  invoke void %i.cs(ptr noundef %i.cp, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit8 unwind label %bb.ac, !inline_history !2

bb.ab:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit7: ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !983, !noundef !11
  %i.db = load ptr, ptr %i.cy, align 8, !alias.scope !983, !nonnull !11, !align !15, !noundef !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !983, !nonnull !11, !noundef !11
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !983, !noundef !11
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !983, !noundef !11
  tail call void %i.dd(ptr noundef %i.da, ptr noundef %i.df, i64 noundef %i.dh), !noalias !983, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorNtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1a_EECshke30g4Hb4g_20ipfs_private_example.exit

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit, %bb.z
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtBG_6either12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBG_6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorEEINtNtBE_3map9MapFutureINtNtBE_8and_then13AndThenFutureIB5x_IB1y_IB5x_INtNtB25_5ready5ReadyIB2X_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamB4K_EENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB8J_10PnetConfig9handshakeB6H_E0EB6h_ENCINvMNtBE_7upgradeINtB9U_7BuilderINtCscu2bAJ62uie_6either6EitherINtB5z_7AndThenINtB6N_9TransportNtB6J_3TcpEB7I_EBb6_EE12authenticateINtNtB25_6either6EitherINtB8J_10PnetOutputB6H_EB6H_EINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedBbX_EENtBcS_6ConfigNtBcS_5ErrorE0INtB9U_12AuthenticateBbX_BeA_EENCINvMs1_B9U_INtB9U_13AuthenticatedIBaS_Bam_B9O_EE9multiplexBcN_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIBdu_BcN_EENtBgB_6ConfigB4K_E0INtB9U_9MultiplexBcN_Bhk_EENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtBie_12SwarmBuilderNtNtBic_8provider5TokioINtBia_19OtherTransportPhaseINtNtBE_5dummy14DummyTransportB3i_EEE20with_other_transportBgy_INtB9U_11MultiplexedIBaS_Bg5_Bfw_EEBlh_NCB7M_s_0E0EEIBan_B4K_IBan_IBan_IBan_IBan_B4K_NtB8J_9PnetErrorEB4K_EINtNtNtBG_7upgrade5error12UpgradeErrorBeN_EEIBn1_B4K_EEEEEB7Q_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1025, !noundef !11
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !1025, !nonnull !11, !align !15, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1025, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1025, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1025, !noundef !11
  tail call void %i.l(ptr noundef %i.i, ptr noundef %i.n, i64 noundef %i.p), !noalias !1025, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1029, !noundef !11
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !1029, !nonnull !11, !align !15, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1029, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1029, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1029, !noundef !11
  tail call void %i.v(ptr noundef %i.s, ptr noundef %i.x, i64 noundef %i.z), !noalias !1029, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdTHTBGblh3Z_11libp2p_core6either12EitherFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future7pending7PendingINtNtB4_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtBG_6muxing5boxed14StreamMuxerBoxENtNtNtB4_2io5error5ErrorEEINtNtNtBG_9transport3map9MapFutureINtNtB4H_8and_then13AndThenFutureIB5b_IBC_IB5b_INtNtB1x_5ready5ReadyIB2p_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamB4c_EENCNCNCNvCshke30g4Hb4g_20ipfs_private_example4main0s_00NCINvMs5_CsinjenlOLFM6_11libp2p_pnetNtB8n_10PnetConfig9handshakeB6l_E0EB5V_ENCINvMNtB4H_7upgradeINtB9y_7BuilderINtCscu2bAJ62uie_6either6EitherINtB5d_7AndThenINtB6r_9TransportNtB6n_3TcpEB7m_EBaL_EE12authenticateINtNtB1x_6either6EitherINtB8n_10PnetOutputB6l_EB6l_EINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedBbC_EENtBcx_6ConfigNtBcx_5ErrorE0INtB9y_12AuthenticateBbC_Bef_EENCINvMs1_B9y_INtB9y_13AuthenticatedIBax_Ba1_B9s_EE9multiplexBcs_INtCs1dRmD0u5Uiv_12libp2p_yamux5MuxerIBd9_Bcs_EENtBgg_6ConfigB4c_E0INtB9y_9MultiplexBcs_BgZ_EENCINvMNtNtNtCsiw6lwv6qtEL_6libp2p7builder5phase15other_transportINtBhT_12SwarmBuilderNtNtBhR_8provider5TokioINtBhP_19OtherTransportPhaseINtNtB4H_5dummy14DummyTransportB2K_EEE20with_other_transportBgd_INtB9y_11MultiplexedIBax_BfK_Bfb_EEBkX_NCB7q_s_0E0EEEB7u_(ptr noundef nonnull align 8 %0)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !34, !alias.scope !1030, !noundef !11
  %i.ac = icmp eq i8 %i.ab, -5
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBC_IBC_IBC_IBC_B16_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB16_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2y_B16_EEEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCscu2bAJ62uie_6either6EitherNtNtNtB4_2io5error5ErrorIBZ_IBZ_IBZ_IBZ_B1t_NtCsinjenlOLFM6_11libp2p_pnet9PnetErrorEB1t_EINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB2V_B1t_EEEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit2, %bb.d, %bb.c, %bb.b
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1034, !noundef !11
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !1034, !nonnull !11, !align !15, !noundef !11
end_hunk_1
