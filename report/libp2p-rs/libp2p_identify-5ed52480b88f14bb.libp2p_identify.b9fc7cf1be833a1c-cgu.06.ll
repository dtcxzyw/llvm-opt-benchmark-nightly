Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identify-5ed52480b88f14bb.libp2p_identify.b9fc7cf1be833a1c-cgu.06?download=true
inline.NumInlined: 218
inline.NumDeleted: 139
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtB1r_6stream6StreamE0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB52_3vecINtB5J_3VecB4Y_E14extend_trustedBN_E0E0EB2A_:bb.a
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBU_6stream6StreamE0s_0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtB3m_3vecINtB5Z_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3V_EE0E0E0EB44_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !238
  store i64 0, ptr %i.c, align 8, !noalias !238
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !238
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !238
  store i64 1610612768, ptr %i.j, align 8, !noalias !238
  store ptr %i.c, ptr %i.b, align 8, !noalias !238
  store ptr @15, ptr %i.k, align 8, !noalias !238
  %i.m = invoke noundef zeroext i1 @_RNvXs1_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !250

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.i unwind label %bb.g, !noalias !250

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.f, label %bb.h, !prof !179

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !250

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !250
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !238
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !252
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBU_6stream6StreamE0s_0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtB3m_3vecINtB5Z_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3V_EE0E0E0EB44_.exit, label %bb.c

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !257
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBU_6stream6StreamE0s_0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtB3m_3vecINtB5Z_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3V_EE0E0E0EB44_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !257
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2Y_7HashSetB1L_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB4D_8iterator8Iterator4folduNCINvNvB5z_8for_each4callTB1L_uENCINvXs1i_NtB30_3mapINtB6L_7HashMapB1L_uB3L_EIB4z_B6u_E6extendBN_E0E0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldBX_TBX_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3U_7HashSetBX_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB25_7collect6ExtendBX_E6extendINtB8_3VecBX_EE0NCINvNvB21_8for_each4callB3E_NCINvXs1i_NtB3W_3mapINtB6V_7HashMapBX_uB4G_EIB5u_B3E_E6extendINtB37_3MapBI_B3L_EE0E0E0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2i_8adapters6cloned6ClonedINtNtNtB2k_5slice4iter4IterBO_EEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2k_8adapters3map3MapINtNtB3p_6cloned6ClonedINtNtNtB2m_5slice4iter4IterBP_EENCINvXs8_NtB9_3setINtB4O_7HashSetBP_B1q_EIB2e_BP_E6extendB3M_E0EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtCsbli3iz7XG76_9multiaddr9MultiaddrNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2i_8adapters6cloned6ClonedINtNtNtNtB1u_11collections4hash3set4IterBO_EEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !258
  call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtCsbli3iz7XG76_9multiaddr9MultiaddruNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2k_8adapters3map3MapINtNtB3p_6cloned6ClonedINtNtNtNtB1w_11collections4hash3set4IterBP_EENCINvXs8_NtB9_3setINtB51_7HashSetBP_B1q_EIB2e_BP_E6extendB3M_E0EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecBO_EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !262, !noalias !265
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !262, !noalias !265, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !262, !noalias !265 ; 2 uses
  %i.b = icmp ult i64 %.sroa.55.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !alias.scope !267
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !267
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !267
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !267
  call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2N_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterBP_ENCINvXs8_NtB9_3setINtB5g_7HashSetBP_B1T_EIB2H_BP_E6extendINtB4k_3VecBP_EE0EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2L_8adapters6cloned6ClonedINtNtNtNtB1X_11collections4hash3set10DifferenceBO_B1R_EEECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !271
  call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2N_8adapters3map3MapINtNtB3S_6cloned6ClonedINtNtNtNtB1Z_11collections4hash3set10DifferenceBP_B1T_EENCINvXs8_NtB9_3setINtB5F_7HashSetBP_B1T_EIB2H_BP_E6extendB4f_E0EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE3lenCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher5StateE16get_or_init_slowCsfY02lUNHLPc_15libp2p_identify(ptr noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !275, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher5StateECsfY02lUNHLPc_15libp2p_identify)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E21reserve_one_uncheckedB45_(ptr noalias nofree noundef align 8 dereferenceable(2448) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !276, !noundef !5 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 4                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !276, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit.thread, !prof !279

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E10triple_mutB45_.exit.i, !prof !179

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E10triple_mutB45_.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.m = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !179

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E10triple_mutB45_.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #26, !noalias !280
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E10triple_mutB45_.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 608                ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 15170019797458512
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit.i, label %bb.n, !prof !283

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 15170019797458513
  br i1 %or.cond67.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit48.i, label %bb.n, !prof !283

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !280
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #21, !noalias !280 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 608
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #21 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !280
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !280
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !280
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !280
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsfY02lUNHLPc_15libp2p_identify.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !280
  %i.z = mul nuw nsw i64 %i.q, 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !280
  %or.cond.i.i = icmp ult i64 %i.c, 15170019797458513
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB29_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB3Y_.exit.i, label %bb.l, !prof !283

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  store i64 0, ptr %i.a, align 8, !noalias !284
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26, !noalias !284
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB29_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB3Y_.exit.i: ; preds = %bb.k
  %1 = mul nuw nsw i64 %.sink.i.i, 608
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %1, i64 noundef 8) #21
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsfY02lUNHLPc_15libp2p_identify.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBI_15stream_protocol14StreamProtocolEB2b_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB40_.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #24
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB29_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEEB3Y_.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() unnamed_addr #5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfY02lUNHLPc_15libp2p_identify(ptr %i.b)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i
    i64 1, label %bb.e
  ], !prof !9

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !287
  store i8 3, ptr %i.a, align 8, !alias.scope !287
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfY02lUNHLPc_15libp2p_identify.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfY02lUNHLPc_15libp2p_identify.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfY02lUNHLPc_15libp2p_identify.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsS_NtNtCsl9hx9jpF0W9_12futures_util6future10try_futureINtB5_5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13recv_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1d_7handler7Success16ReceivedIdentify0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13recv_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0EINtNtB9_3fns7MapOkFnNcNtNtNtB1R_7handler7Success16ReceivedIdentify0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1R_(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsS_NtNtCsl9hx9jpF0W9_12futures_util6future10try_futureINtB5_5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NCNvMNtB1d_7handlerNtB2X_7Handler27on_fully_negotiated_inbound0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0EINtNtB9_3fns7MapOkFnNCNvMNtB1R_7handlerNtB3W_7Handler27on_fully_negotiated_inbound0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1R_(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsS_NtNtCsl9hx9jpF0W9_12futures_util6future10try_futureINtB5_5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1d_7handler7Success16SentIdentifyPush0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0EINtNtB9_3fns7MapOkFnNcNtNtNtB1R_7handler7Success16SentIdentifyPush0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1R_(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsS_NtNtCsl9hx9jpF0W9_12futures_util6future10try_futureINtB5_5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol9recv_pushNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1d_7handler7Success20ReceivedIdentifyPush0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1d_(ptr dead_on_unwind noalias nofree noundef writable sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol9recv_pushNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0EINtNtB9_3fns7MapOkFnNcNtNtNtB1R_7handler7Success20ReceivedIdentifyPush0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1R_(ptr noalias nofree noundef nonnull sret([608 x i8]) align 8 captures(address) dereferenceable(608) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_CsczYENlYh6wI_8smallvecNtB5_18CollectionAllocErrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !290, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !291, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !291, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !291, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!83 = distinct !{!83, !84, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify"}
!85 = !{!83, !80, !76, !73, !70, !48, !45}
!86 = !{i8 0, i8 4}
!87 = !{i8 0, i8 5}
!88 = !{!89, !91, !93}
!89 = distinct !{!89, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB13_: argument 0"}
!90 = distinct !{!90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB13_"}
!91 = distinct !{!91, !92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsjYje7j88m19_18asynchronous_codec12framed_write11FramedWriteNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB3N_EEB3T_: argument 0"}
!92 = distinct !{!92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4feed4FeedINtNtCsjYje7j88m19_18asynchronous_codec12framed_write11FramedWriteNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB3N_EEB3T_"}
!93 = distinct !{!93, !94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4send4SendINtNtCsjYje7j88m19_18asynchronous_codec12framed_write11FramedWriteNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB3N_EEB3T_: argument 0"}
!94 = distinct !{!94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4sink4send4SendINtNtCsjYje7j88m19_18asynchronous_codec12framed_write11FramedWriteNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamINtCsh4z5MoDg5zc_11prost_codec5CodecNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEEB3N_EEB3T_"}
!95 = !{!96, !98, !89, !91, !93}
!96 = distinct !{!96, !97, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!97 = distinct !{!97, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfY02lUNHLPc_15libp2p_identify"}
!98 = distinct !{!98, !99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEBH_: argument 0"}
!99 = distinct !{!99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfY02lUNHLPc_15libp2p_identify5proto7structs8IdentifyEBH_"}
!100 = !{!101, !98, !89, !91, !93}
!101 = distinct !{!101, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfY02lUNHLPc_15libp2p_identify"}
!103 = !{!104, !98, !89, !91, !93}
!104 = distinct !{!104, !105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!105 = distinct !{!105, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify"}
!106 = !{!107, !98, !89, !91, !93}
!107 = distinct !{!107, !108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!108 = distinct !{!108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify"}
!109 = !{!110, !98, !89, !91, !93}
!110 = distinct !{!110, !111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!111 = distinct !{!111, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsfY02lUNHLPc_15libp2p_identify"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!114 = distinct !{!114, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!117 = distinct !{!117, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!120 = distinct !{!120, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select10negotiated5StateNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify"}
!121 = !{i64 0, i64 -9223372036854775806}
!122 = !{!119, !116}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!125 = distinct !{!125, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select8protocol13MessageReaderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited21LengthDelimitedReaderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!128 = distinct !{!128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited21LengthDelimitedReaderNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!131 = distinct !{!131, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbVDXp34Q3tF_18multistream_select16length_delimited15LengthDelimitedNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxEECsfY02lUNHLPc_15libp2p_identify"}
!132 = !{!130, !127, !124, !119, !116}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!135 = distinct !{!135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterEECsfY02lUNHLPc_15libp2p_identify"}
!136 = !{!137, !139, !141, !134}
!137 = distinct !{!137, !138, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!138 = distinct !{!138, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify"}
!139 = distinct !{!139, !140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcuEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!140 = distinct !{!140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcuEECsfY02lUNHLPc_15libp2p_identify"}
!141 = distinct !{!141, !142, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!142 = distinct !{!142, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterECsfY02lUNHLPc_15libp2p_identify"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!145 = distinct !{!145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterEECsfY02lUNHLPc_15libp2p_identify"}
!146 = !{!147, !149, !151, !144}
!147 = distinct !{!147, !148, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!148 = distinct !{!148, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify"}
!149 = distinct !{!149, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcuEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!150 = distinct !{!150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcuEECsfY02lUNHLPc_15libp2p_identify"}
!151 = distinct !{!151, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!152 = distinct !{!152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream19ActiveStreamCounterECsfY02lUNHLPc_15libp2p_identify"}
!153 = !{!154, !156}
!154 = distinct !{!154, !155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!155 = distinct !{!155, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair14PublicKeyInnerECsfY02lUNHLPc_15libp2p_identify"}
!156 = distinct !{!156, !157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!157 = distinct !{!157, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfY02lUNHLPc_15libp2p_identify"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!160 = distinct !{!160, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!163 = distinct !{!163, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfY02lUNHLPc_15libp2p_identify"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!166 = distinct !{!166, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!167 = !{!165, !162, !159}
!168 = distinct !{null}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!171 = distinct !{!171, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsfY02lUNHLPc_15libp2p_identify"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!174 = distinct !{!174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfY02lUNHLPc_15libp2p_identify"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!177 = distinct !{!177, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!178 = !{!176, !173, !170}
!179 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!182 = distinct !{!182, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher5StateECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!185 = distinct !{!185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher5StateECsfY02lUNHLPc_15libp2p_identify"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!188 = distinct !{!188, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEEECsfY02lUNHLPc_15libp2p_identify"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!191 = distinct !{!191, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEEECsfY02lUNHLPc_15libp2p_identify"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!194 = distinct !{!194, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchEECsfY02lUNHLPc_15libp2p_identify"}
!195 = !{!193, !190, !187, !184}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!198 = distinct !{!198, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchECsfY02lUNHLPc_15libp2p_identify"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!201 = distinct !{!201, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsfY02lUNHLPc_15libp2p_identify"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!204 = distinct !{!204, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsfY02lUNHLPc_15libp2p_identify"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!207 = distinct !{!207, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsfY02lUNHLPc_15libp2p_identify"}
!208 = !{!206, !203, !200, !197, !193, !190, !187, !184}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!211 = distinct !{!211, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsfY02lUNHLPc_15libp2p_identify"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsfY02lUNHLPc_15libp2p_identify: argument 1"}
!214 = !{!210, !215}
!215 = distinct !{!215, !216}
!216 = distinct !{!216, !"LVerDomain"}
!217 = !{!213, !218}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !220, !221}
!220 = !{!"llvm.loop.isvectorized", i32 1}
!221 = !{!"llvm.loop.unroll.runtime.disable"}
!222 = !{!223}
!223 = distinct !{!223, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsfY02lUNHLPc_15libp2p_identify: argument 0:It1"}
!224 = !{!225}
!225 = distinct !{!225, !211, !"_RINvNtCskKLDkoKarTP_4core3ptr10swap_chunkKj8_ECsfY02lUNHLPc_15libp2p_identify: argument 1:It1"}
!226 = distinct !{!226, !220}
!227 = !{!228, !230}
!228 = distinct !{!228, !229, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1v_NCINvMsk_B1y_IB1w_B1v_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB25_EE0E0E0B2e_: argument 0"}
!229 = distinct !{!229, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1v_NCINvMsk_B1y_IB1w_B1v_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB25_EE0E0E0B2e_"}
!230 = distinct !{!230, !231, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00NCINvNvB1r_8for_each4callB2P_NCINvMsk_B2S_IB2Q_B2P_E14extend_trustedINtB2h_3MapBF_B3p_EE0E0E0EB3y_: argument 0"}
!231 = distinct !{!231, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc3vec3VechEuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00NCINvNvB1r_8for_each4callB2P_NCINvMsk_B2S_IB2Q_B2P_E14extend_trustedINtB2h_3MapBF_B3p_EE0E0E0EB3y_"}
!232 = !{!230}
!233 = !{!234, !236, !228, !230}
!234 = distinct !{!234, !235, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_hEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00EE0B34_: argument 0"}
!235 = distinct !{!235, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecIBz_hEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00EE0B34_"}
!236 = distinct !{!236, !237, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VechENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00EE0E0B42_: argument 0"}
!237 = distinct !{!237, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VechENCINvMsk_B1i_IB1g_B1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE00EE0E0B42_"}
!238 = !{!239, !241, !242, !244, !245, !247, !248}
!239 = distinct !{!239, !240, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB5_12SpecToString14spec_to_stringCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!240 = distinct !{!240, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB5_12SpecToString14spec_to_stringCsfY02lUNHLPc_15libp2p_identify"}
!241 = distinct !{!241, !240, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB5_12SpecToString14spec_to_stringCsfY02lUNHLPc_15libp2p_identify: argument 1"}
!242 = distinct !{!242, !243, !"_RNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0s_0B8_: argument 0"}
!243 = distinct !{!243, !"_RNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0s_0B8_"}
!244 = distinct !{!244, !243, !"_RNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0s_0B8_: argument 1"}
!245 = distinct !{!245, !246, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBZ_6stream6StreamE0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvMsk_NtB22_3vecINtB59_3VecB1Y_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0E0B2K_: argument 0"}
!246 = distinct !{!246, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBZ_6stream6StreamE0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvMsk_NtB22_3vecINtB59_3VecB1Y_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0E0B2K_"}
!247 = distinct !{!247, !246, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBZ_6stream6StreamE0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvMsk_NtB22_3vecINtB59_3VecB1Y_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2B_EE0E0E0B2K_: argument 1"}
!248 = distinct !{!248, !249, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBU_6stream6StreamE0s_0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtB3m_3vecINtB5Z_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3V_EE0E0E0EB44_: argument 0"}
!249 = distinct !{!249, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtBU_6stream6StreamE0s_0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtB3m_3vecINtB5Z_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3V_EE0E0E0EB44_"}
!250 = !{!239, !242, !245, !248}
!251 = !{!245, !247, !248}
!252 = !{!253, !255, !245, !248}
!253 = distinct !{!253, !254, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtB2D_6stream6StreamE0s_0EE0B3M_: argument 0"}
!254 = distinct !{!254, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtB2D_6stream6StreamE0s_0EE0B3M_"}
!255 = distinct !{!255, !256, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtB3B_6stream6StreamE0s_0EE0E0B4K_: argument 0"}
!256 = distinct !{!256, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENCNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtB3B_6stream6StreamE0s_0EE0E0B4K_"}
!257 = !{!248}
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtBa_6traits8iterator8Iterator3mapTB1O_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3i_7HashSetB1O_NtNtNtB16_4hash6random11RandomStateEINtNtB2u_7collect6ExtendB1O_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!260 = distinct !{!260, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtBa_6traits8iterator8Iterator3mapTB1O_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3i_7HashSetB1O_NtNtNtB16_4hash6random11RandomStateEINtNtB2u_7collect6ExtendB1O_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify"}
!261 = distinct !{!261, !260, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtBa_6traits8iterator8Iterator3mapTB1O_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3i_7HashSetB1O_NtNtNtB16_4hash6random11RandomStateEINtNtB2u_7collect6ExtendB1O_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify: argument 1"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfY02lUNHLPc_15libp2p_identify: argument 1"}
!264 = distinct !{!264, !"_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfY02lUNHLPc_15libp2p_identify"}
!265 = !{!266}
!266 = distinct !{!266, !264, !"_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapTBR_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB39_7HashSetBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1Z_7collect6ExtendBR_E6extendINtB8_3VecBR_EE0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!269 = distinct !{!269, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapTBR_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB39_7HashSetBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1Z_7collect6ExtendBR_E6extendINtB8_3VecBR_EE0ECsfY02lUNHLPc_15libp2p_identify"}
!270 = distinct !{!270, !269, !"_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3mapTBR_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB39_7HashSetBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1Z_7collect6ExtendBR_E6extendINtB8_3VecBR_EE0ECsfY02lUNHLPc_15libp2p_identify: argument 1"}
!271 = !{!272, !274}
!272 = distinct !{!272, !273, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set10DifferenceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtB16_4hash6random11RandomStateEENtNtNtBa_6traits8iterator8Iterator3mapTB1V_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4r_7HashSetB1V_B2Y_EINtNtB3D_7collect6ExtendB1V_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!273 = distinct !{!273, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set10DifferenceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtB16_4hash6random11RandomStateEENtNtNtBa_6traits8iterator8Iterator3mapTB1V_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4r_7HashSetB1V_B2Y_EINtNtB3D_7collect6ExtendB1V_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify"}
!274 = distinct !{!274, !273, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set10DifferenceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtNtNtB16_4hash6random11RandomStateEENtNtNtBa_6traits8iterator8Iterator3mapTB1V_uENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4r_7HashSetB1V_B2Y_EINtNtB3D_7collect6ExtendB1V_E6extendB3_E0ECsfY02lUNHLPc_15libp2p_identify: argument 1"}
!275 = !{i8 0, i8 3}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_: argument 0"}
!278 = distinct !{!278, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E6tripleB45_"}
!279 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E8try_growB45_: argument 0"}
!282 = distinct !{!282, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler22ConnectionHandlerEventINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBN_15stream_protocol14StreamProtocolEB2g_EuNtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventEj4_E8try_growB45_"}
!283 = !{!"branch_weights", i32 2000, i32 2002}
!284 = !{!285, !281}
!285 = distinct !{!285, !286, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!286 = distinct !{!286, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsfY02lUNHLPc_15libp2p_identify"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!289 = distinct !{!289, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify"}
!290 = !{i64 0, i64 -9223372036854775807}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!293 = distinct !{!293, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!294 = !{!295}
!295 = distinct !{!295, !296, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!296 = distinct !{!296, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!297 = !{!298, !300}
!298 = distinct !{!298, !299, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!299 = distinct !{!299, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsfY02lUNHLPc_15libp2p_identify"}
!300 = distinct !{!300, !296, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13recv_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success16ReceivedIdentify0EE3newB1J_: argument 0"}
!303 = distinct !{!303, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13recv_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success16ReceivedIdentify0EE3newB1J_"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NCNvMNtB1J_7handlerNtB3t_7Handler27on_fully_negotiated_inbound0EE3newB1J_: argument 0"}
!306 = distinct !{!306, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NCNvMNtB1J_7handlerNtB3t_7Handler27on_fully_negotiated_inbound0EE3newB1J_"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success16SentIdentifyPush0EE3newB1J_: argument 0"}
!309 = distinct !{!309, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol13send_identifyNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success16SentIdentifyPush0EE3newB1J_"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol9recv_pushNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success20ReceivedIdentifyPush0EE3newB1J_: argument 0"}
!312 = distinct !{!312, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future10try_future5MapOkNCINvNtCsfY02lUNHLPc_15libp2p_identify8protocol9recv_pushNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE0NcNtNtNtB1J_7handler7Success20ReceivedIdentifyPush0EE3newB1J_"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw: argument 0"}
!315 = distinct !{!315, !"_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsfY02lUNHLPc_15libp2p_identify: argument 0"}
!318 = distinct !{!318, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsfY02lUNHLPc_15libp2p_identify"}
!319 = !{!320}
!320 = distinct !{!320, !318, !"_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsfY02lUNHLPc_15libp2p_identify: argument 1"}
!321 = !{!317, !320}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify: argument 0"}
!324 = distinct !{!324, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsfY02lUNHLPc_15libp2p_identify"}
!325 = distinct !{null}
end_hunk_1
