Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/distributed_key_value_store_example.distributed_key_value_store_example.32415d2ae8513850-cgu.05?download=true
inline.NumInlined: 1011
inline.NumDeleted: 477
begin_hunk_0_@_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange14from_full_setsINtCscu2bAJ62uie_6either6EitherIB1l_NtNtB8_15stream_protocol14StreamProtocolReEB2y_EINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB2L_3map3MapIB1l_IB3z_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB1U_EFB1U_EB1P_EIB3z_INtNtNtB2N_7sources5empty5EmptyB2y_EFB2y_EB1P_EEFB1P_EB1k_EIB3z_B58_FB2y_EB1k_EEECs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !162
  %i.dc = load ptr, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtCscu2bAJ62uie_6either6EitherIB15_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2I_EIB1l_B2I_ReEEIB15_INtNtNtB6_7sources5empty5EmptyB41_EFB41_EB3S_EEFB3S_EIB1l_B3S_B41_EEB51_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i, label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtCscu2bAJ62uie_6either6EitherIB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2R_EIB1u_B2R_ReEEIB1e_INtNtNtBI_7sources5empty5EmptyB4a_EFB4a_EB41_EEFB41_EIB1u_B41_B4a_EEIB1e_B4j_FB4a_EB5a_EEECs4jvuubEK18G_35distributed_key_value_store_example.exit42: ; preds = %.body16, %bb.r, %bb.al, %.thread79, %bb.am
  %.pn77 = phi { ptr, i32 } [ %eh.lpad-body82, %bb.al ], [ %eh.lpad-body17, %.body16 ], [ %eh.lpad-body82, %bb.am ], [ %eh.lpad-body82, %.thread79 ], [ %eh.lpad-body17, %bb.r ]
  resume { ptr, i32 } %.pn77

.thread79:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, %.loopexit97, %.loopexit.split-lp98, %bb.d
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.loopexit.split-lp100, %.loopexit.split-lp98 ], [ %i.ae, %bb.d ], [ %lpad.loopexit99, %.loopexit97 ], [ %i.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i ] ; 3 uses
  %i.dd = load ptr, ptr %2, align 8, !alias.scope !165, !noundef !5
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtCscu2bAJ62uie_6either6EitherIB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2R_EIB1u_B2R_ReEEIB1e_INtNtNtBI_7sources5empty5EmptyB4a_EFB4a_EB41_EEFB41_EIB1u_B41_B4a_EEIB1e_B4j_FB4a_EB5a_EEECs4jvuubEK18G_35distributed_key_value_store_example.exit42, label %bb.al

bb.al:                                            ; preds = %.thread79
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !170, !noundef !5
  %.not.i.i.i.i40 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i40, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtCscu2bAJ62uie_6either6EitherIB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2R_EIB1u_B2R_ReEEIB1e_INtNtNtBI_7sources5empty5EmptyB4a_EFB4a_EB41_EEFB41_EIB1u_B41_B4a_EEIB1e_B4j_FB4a_EB5a_EEECs4jvuubEK18G_35distributed_key_value_store_example.exit42, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.df)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtCscu2bAJ62uie_6either6EitherIB1e_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB2R_EIB1u_B2R_ReEEIB1e_INtNtNtBI_7sources5empty5EmptyB4a_EFB4a_EB41_EEFB41_EIB1u_B41_B4a_EEIB1e_B4j_FB4a_EB5a_EEECs4jvuubEK18G_35distributed_key_value_store_example.exit42 unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerNtB6_15ProtocolsChange22from_initial_protocolsINtCscu2bAJ62uie_6either6EitherIB1t_NtNtB8_15stream_protocol14StreamProtocolReEB2G_EINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtB8_10connection11AsStrHashEqB1s_EbENCNvMs2_B4w_INtB4w_10ConnectionINtNtB6_6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtB8_5dummy17ConnectionHandlerEE3new0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  store i64 0, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %.sroa.0.09.i = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.09.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.i = load i64, ptr %i.g, align 8, !range !51, !alias.scope !181, !noundef !5
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !190, !nonnull !5, !noundef !5
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !191
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.h, %i.e
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.h, %i.e
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.110.i ; 2 uses
  %i.s = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.t = load i64, ptr %i.r, align 8, !range !51, !alias.scope !198, !noundef !5
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !205, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !206
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.z = icmp eq i64 %i.s, %i.e
  br i1 %i.z, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, %bb.d
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !207
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB2l_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysINtNtBV_10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB4Y_BR_ReEB5A_EEbENCNvMs2_B4t_INtB4t_10ConnectionINtNtNtBV_7handler6select23ConnectionHandlerSelectNtNtCskC4O4hr3vz7_10libp2p_kad7handler7HandlerNtNtBV_5dummy17ConnectionHandlerEE3new0ENCINvMs0_B6l_NtB6l_15ProtocolsChange22from_initial_protocolsB4X_B3i_E0EE11spec_extendCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs3_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerINtB6_17SubstreamProtocolINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14ProtocolConfigEIB1D_NtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEEE8map_infoIB18_uuENcNtB4h_4Left0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 60), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !range !211, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.d, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs3_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerINtB6_17SubstreamProtocolINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14ProtocolConfigEIB1D_NtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEEE8map_infoIB18_uuENcNtB4h_5Right0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 60), (64, 65)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !range !211, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.d, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs3_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerINtB6_17SubstreamProtocolNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14ProtocolConfigE11map_upgradeINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperB17_EIB2K_NtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEENCNvXs3_NtB6_6selectINtB4x_23ConnectionHandlerSelectNtNtB1b_7handler7HandlerNtNtB8_5dummy17ConnectionHandlerENtB6_17ConnectionHandler4poll0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 60)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !range !211, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs3_NtCs6b9j1MKPRPC_12libp2p_swarm7handlerINtB6_17SubstreamProtocolNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeE11map_upgradeINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperNtNtCskC4O4hr3vz7_10libp2p_kad8protocol14ProtocolConfigEIB2S_B17_EENCNvXs3_NtB6_6selectINtB4x_23ConnectionHandlerSelectNtNtB3o_7handler7HandlerNtNtB8_5dummy17ConnectionHandlerENtB6_17ConnectionHandler4polls_0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 8), (48, 60)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  store i64 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [112 x i8], align 8               ; 5 uses
  %i.s = load i64, ptr %0, align 8, !range !160, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq i64 %i.s, 2
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
          to label %bb.f unwind label %bb.am

bb.c:                                             ; preds = %bb.a, %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.am, %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bx, %bb.w ], [ %lpad.thr_comm, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.p, align 8, !noundef !5
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  store ptr %i.ad, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.af, ptr %i.ae, align 8
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.am

bb.j:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !range !212, !noundef !5 ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 1000000001
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %i.aj, -1000000000
  %i.am = icmp samesign ugt i32 %i.aj, 999999999
  %narrow = select i1 %i.am, i32 %i.al, i32 1
  switch i32 %narrow, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %.invoke
    i32 3, label %bb.m
    i32 4, label %bb.m
  ]

default.unreachable82:                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit
  unreachable

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.j

bb.n:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.n
  %i.aq = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.am

bb.o:                                             ; preds = %.invoke
  %i.ar = extractvalue { ptr, ptr } %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 1000000004, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !12, !noundef !5 ; 2 uses
  %i.aw = add i64 %i.av, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ax = load ptr, ptr %i.y, align 8, !noundef !5 ; 3 uses
  %.not = icmp ne ptr %i.ax, null                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.az, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.bb, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.m, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ax, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ax, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bd = invoke noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef range(i64 0, -1) %i.aw)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.o
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.q

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %.noexc
  %i.be = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc53 unwind label %bb.am  ; 2 uses

.noexc53:                                         ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc53
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load i64, ptr %i.bc, align 8, !alias.scope !216, !noalias !213, !noundef !5
  %i.bi = add i64 %i.bh, %i.av
  store i64 %i.bi, ptr %i.bc, align 8, !alias.scope !216, !noalias !213
  %3 = ptrtoint ptr %i.bf to i64
  store i64 %3, ptr %.sroa.3, align 8, !alias.scope !213, !noalias !216
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc53, %.noexc
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.p ], [ %.sroa.3, %.noexc ], [ %.sroa.3, %.noexc53 ]
  %.sink.i = phi ptr [ %i.bg, %bb.p ], [ null, %.noexc ], [ null, %.noexc53 ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !213, !noalias !216
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !5 ; 2 uses
  %.not46 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %4 = inttoptr i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. to ptr
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !224
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !226, !noalias !227, !noundef !5 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i55, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr %i.ay, align 8, !alias.scope !226, !noalias !227, !noundef !5 ; 2 uses
  %i.bl = load i64, ptr %i.ba, align 8, !alias.scope !226, !noalias !227, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !224
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !224
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bk, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !224
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !224
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bj, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !224
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bk, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !224
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.t, %bb.s
  %.sink19.i.i = phi i64 [ 1, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bl, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !224
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bm, align 8, !noalias !224
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bn, align 8, !noalias !224
  %i.bo = invoke { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc56 unwind label %bb.am

.noexc56:                                         ; preds = %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !224
  %5 = extractvalue { ptr, ptr } %i.bo, 0
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %.noexc56, %bb.r
  %.merged.i = phi ptr [ %4, %bb.r ], [ %5, %.noexc56 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not47 = icmp eq ptr %.merged.i, null
  br i1 %.not47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit, %bb.u
  %i.bp = load i64, ptr %i.ba, align 8, !noundef !5
  %i.bq = load i64, ptr %i.au, align 8, !range !12, !noundef !5
  %.sroa.065.0.copyload = load i64, ptr %2, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  %i.br = icmp ult i64 %.sroa.567.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.br)
  %.idx = mul nuw nsw i64 %.sroa.567.0.copyload, 80
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 %.idx
  %i.bt = icmp ult i64 %i.bp, %i.bq
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.466.0.copyload, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.466.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.065.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bv = icmp eq i64 %.sroa.567.0.copyload, 0
  br i1 %i.bv, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.x

bb.w:                                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.al

bb.x:                                             ; preds = %.lr.ph, %bb.ak
  %i.by = phi ptr [ %.sroa.466.0.copyload, %.lr.ph ], [ %i.cm, %bb.ak ] ; 2 uses
  %.sroa.07.079 = phi i8 [ %i.bu, %.lr.ph ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !228, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.by, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
          to label %bb.ac unwind label %bb.w

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.ak, %bb.v
  %.sroa.07.0.lcssa = phi i8 [ %i.bu, %bb.v ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ca = load i64, ptr %0, align 8, !range !160, !noundef !5 ; 2 uses
  switch i64 %i.ca, label %default.unreachable82 [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.cb = trunc nuw i8 %.sroa.07.0.lcssa to i1
  %i.cc = load i64, ptr %i.t, align 8
  %i.cd = add i64 %i.cc, 1
  %.sroa.011.0 = select i1 %i.cb, i64 0, i64 %i.cd ; 2 uses
  %i.ce = load i64, ptr %i.at, align 8, !range !12, !noundef !5
  %.not48 = icmp uge i64 %.sroa.011.0, %i.ce
  %spec.select52 = zext i1 %.not48 to i64
  br label %bb.aa

bb.z:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.cf = xor i8 %.sroa.07.0.lcssa, 1
  %.50 = zext nneg i8 %i.cf to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit, %bb.z
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.y ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ 0, %bb.z ]
  %.sroa.010.0 = phi i64 [ %spec.select52, %bb.y ], [ %i.ca, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ %.50, %bb.z ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %.sroa.0.2 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ true, %bb.aa ]
  ret i1 %.sroa.0.2

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
          to label %bb.ad unwind label %bb.w

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ae unwind label %bb.w

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = load ptr, ptr %i.g, align 8, !noundef !5
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %bb.ag
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.w      ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cj = invoke noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aj unwind label %bb.w

bb.aj:                                            ; preds = %bb.ai
  %i.ck = icmp slt i8 %i.cj, 0
  %spec.select = select i1 %i.ck, i8 1, i8 %.sroa.07.079
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.sroa.07.1 = phi i8 [ %.sroa.07.079, %bb.af ], [ %spec.select, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !233, !noalias !231, !nonnull !5, !noundef !5
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !233, !noalias !231, !nonnull !5, !noundef !5 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.x

bb.al:                                            ; preds = %bb.w, %bb.am
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.am:                                            ; preds = %.invoke, %bb.o, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i, %bb.g, %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #33
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !160, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %i.f, align 8, !noundef !5
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  store ptr %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load <2 x i64>, ptr %i.p, align 8
  store <2 x i64> %i.s, ptr %i.r, align 8
  %i.t = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load i32, ptr %i.v, align 8, !range !212, !noundef !5 ; 3 uses
  %i.x = icmp ne i32 %i.w, 1000000001
  call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i32 %i.w, -1000000000
  %i.z = icmp samesign ugt i32 %i.w, 999999999
  %narrow = select i1 %i.z, i32 %i.y, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

default.unreachable56:                            ; preds = %.critedge
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.ad = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 1000000004, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !12, !noundef !5 ; 2 uses
  %i.aj = add i64 %i.ai, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load ptr, ptr %i.l, align 8, !noundef !5 ; 3 uses
  %.not = icmp ne ptr %i.ak, null                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.am, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ao, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.d, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ak, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ak, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.aq = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef range(i64 0, -1) %i.aj), !noalias !235
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.h
  %i.ar = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !235 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !238, !noalias !235, !noundef !5
  %i.av = add i64 %i.au, %i.ai
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !238, !noalias !235
  %2 = ptrtoint ptr %i.as to i64
  store i64 %2, ptr %.sroa.3, align 8, !alias.scope !235, !noalias !238
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sink.i = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !235, !noalias !238
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !5
  %.not44 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  br i1 %.not44, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !248, !noalias !249, !noundef !5 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.al, align 8, !alias.scope !248, !noalias !249, !noundef !5 ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !alias.scope !248, !noalias !249, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !246
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !246
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ax, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !246
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !246
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.aw, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !246
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ax, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !246
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.k, %bb.j
  %.sink19.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !246
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.az, align 8, !noalias !246
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.ba, align 8, !noalias !246
  %i.bb = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !246 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  br label %.critedge

.critedge:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = load i64, ptr %i.an, align 8, !noundef !5
  %i.bd = load i64, ptr %i.ah, align 8, !range !12, !noundef !5
  %i.be = icmp uge i64 %i.bc, %i.bd               ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !range !160, !noundef !5 ; 2 uses
  switch i64 %i.bf, label %default.unreachable56 [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %.critedge
  %i.bg = load i64, ptr %i.i, align 8
  %i.bh = add i64 %i.bg, 1
  %.sroa.011.0 = select i1 %i.be, i64 %i.bh, i64 0 ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !range !12, !noundef !5
  %.not46 = icmp uge i64 %.sroa.011.0, %i.bi
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %.47 = zext i1 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.l ], [ undef, %.critedge ], [ 0, %bb.m ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.l ], [ %i.bf, %.critedge ], [ %.47, %bb.m ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_5chain5ChainINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerEB30_ENCINvMs0_NtBb_9behaviourINtB44_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3X_s_0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [128 x i8], align 8               ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [112 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [80 x i8], align 8            ; 2 uses
  %i.p = alloca [40 x i8], align 8                ; 10 uses
  %i.q = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [64 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [112 x i8], align 8               ; 4 uses
  %i.w = load i64, ptr %0, align 8, !range !160, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = icmp eq i64 %i.w, 2
  br i1 %i.y, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ab = load ptr, ptr %i.t, align 8, !noundef !5
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  store ptr %i.af, ptr %i.j, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = load <2 x i64>, ptr %i.ae, align 8
  store <2 x i64> %i.ah, ptr %i.ag, align 8
  %i.ai = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
  %i.aj = extractvalue { ptr, ptr } %i.ai, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load i32, ptr %i.ak, align 8, !range !212, !noundef !5 ; 3 uses
  %i.am = icmp ne i32 %i.al, 1000000001
  call void @llvm.assume(i1 %i.am)
  %i.an = add nsw i32 %i.al, -1000000000
  %i.ao = icmp samesign ugt i32 %i.al, 999999999
  %narrow = select i1 %i.ao, i32 %i.an, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.sink.split

default.unreachable89:                            ; preds = %.loopexit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.as = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  %i.at = extractvalue { ptr, ptr } %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  store i32 1000000004, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !12, !noundef !5 ; 2 uses
  %i.ay = add i64 %i.ax, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.az = load ptr, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  %.not = icmp ne ptr %i.az, null                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.bb, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.bd, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.q, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.az, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.az, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store i64 0, ptr %i.be, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.bf = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.q, i64 noundef range(i64 0, -1) %i.ay), !noalias !250
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.h
  %i.bg = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.q), !noalias !250 ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bj = load i64, ptr %i.be, align 8, !alias.scope !253, !noalias !250, !noundef !5
  %i.bk = add i64 %i.bj, %i.ax
  store i64 %i.bk, ptr %i.be, align 8, !alias.scope !253, !noalias !250
  %3 = ptrtoint ptr %i.bh to i64
  store i64 %3, ptr %.sroa.3, align 8, !alias.scope !250, !noalias !253
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sink.i = phi ptr [ %i.bi, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !250, !noalias !253
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !5 ; 2 uses
  %.not44 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %4 = inttoptr i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. to ptr
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !261
  %i.bl = load ptr, ptr %i.aa, align 8, !alias.scope !263, !noalias !264, !noundef !5 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i64, ptr %i.ba, align 8, !alias.scope !263, !noalias !264, !noundef !5 ; 2 uses
  %i.bn = load i64, ptr %i.bc, align 8, !alias.scope !263, !noalias !264, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !261
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bl, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !261
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.bm, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !261
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !261
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.bl, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !261
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.bm, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !261
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.l, %bb.k
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bn, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.f, align 8, !noalias !261
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sink19.i.i, ptr %i.bo, align 8, !noalias !261
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sink.i.i, ptr %i.bp, align 8, !noalias !261
  %i.bq = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !261
  %i.br = extractvalue { ptr, ptr } %i.bq, 0
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %.merged.i = phi ptr [ %4, %bb.j ], [ %i.br, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not45 = icmp eq ptr %.merged.i, null
  br i1 %.not45, label %bb.m, label %5

5:                                                ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %5, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.bs = load i64, ptr %i.bc, align 8, !noundef !5
  %i.bt = load i64, ptr %i.aw, align 8, !range !12, !noundef !5
  %i.bu = icmp ult i64 %i.bs, %i.bt
  %i.bv = zext i1 %i.bu to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  br label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.sroa.07.0 = phi i8 [ %i.bv, %bb.m ], [ %.sroa.07.1, %bb.aa ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !274
  store ptr %i.p, ptr %i.e, align 8, !noalias !276
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.cb = load ptr, ptr %i.bw, align 8, !alias.scope !281, !noalias !282, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !290
  store ptr %i.e, ptr %i.d, align 8, !noalias !292
  %i.cc = load ptr, ptr %i.bx, align 8, !alias.scope !294, !noalias !295, !nonnull !5, !noundef !5 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %i.ce = phi ptr [ %i.cf, %bb.p ], [ %i.cb, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !292
  store ptr %i.ce, ptr %i.c, align 8, !noalias !292, !captures !296
  %i.cg = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBY_9BehaviourNtNtNtNtB10_6record5store6memory11MemoryStoreE10discoveredINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtB10_8protocol7KadPeerEB3o_EE0INtB7_5FnMutTRRB3O_EE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !297
  br i1 %i.cg, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread4.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  %i.ch = icmp eq ptr %i.cf, %i.cc
  br i1 %i.ch, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.loopexit.i.i.i:                       ; preds = %bb.p
  %.pre.pre.i.i.i = load ptr, ptr %i.e, align 8, !noalias !276
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.loopexit.i.i.i, %bb.o
  %.pre.i.i.i = phi ptr [ %.pre.pre.i.i.i, %.loopexit.i.loopexit.i.i.i ], [ %i.p, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !290
  store ptr null, ptr %i.bw, align 8, !alias.scope !281, !noalias !282
  br label %bb.q

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread4.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.cf, ptr %i.bw, align 8, !alias.scope !294, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  br label %bb.t

bb.q:                                             ; preds = %.loopexit.i.i.i.i, %bb.n
  %i.ci = phi ptr [ %i.p, %bb.n ], [ %.pre.i.i.i, %.loopexit.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.cj = load ptr, ptr %i.by, align 8, !alias.scope !304, !noalias !305, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  store ptr %i.ci, ptr %i.b, align 8, !noalias !313
  %i.ck = load ptr, ptr %i.bz, align 8, !alias.scope !315, !noalias !316, !nonnull !5, !noundef !5 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread8.i, label %.lr.ph.i.i.i3.i.i.i

.lr.ph.i.i.i3.i.i.i:                              ; preds = %bb.r, %bb.s
  %i.cm = phi ptr [ %i.cn, %bb.s ], [ %i.cj, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.cm, ptr %i.a, align 8, !noalias !313, !captures !296
  %i.co = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtNtBb_4iter8adapters5chain5ChainINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEB3m_EE0INtB7_5FnMutTRRB3M_EE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !317
  br i1 %i.co, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  %i.cp = icmp eq ptr %i.cn, %i.ck
  br i1 %i.cp, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread8.i, label %.lr.ph.i.i.i3.i.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread8.i: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %.loopexit

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %.lr.ph.i.i.i3.i.i.i
  store ptr %i.cn, ptr %i.by, align 8, !alias.scope !315, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread4.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %.sroa.0.0.i2.i.i7.i = phi ptr [ %i.ce, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread4.i ], [ %i.cm, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !274
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.i7.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  store i32 1000000000, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cr = load ptr, ptr %i.l, align 8, !noundef !5
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %bb.q, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1m_ENCINvMs0_NtB1Q_9behaviourINtB2M_9BehaviourNtNtNtNtB1Q_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ct = load i64, ptr %0, align 8, !range !160, !noundef !5 ; 2 uses
  switch i64 %i.ct, label %default.unreachable89 [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %.loopexit
  %i.cu = trunc nuw i8 %.sroa.07.0 to i1
  %i.cv = load i64, ptr %i.x, align 8
  %i.cw = add i64 %i.cv, 1
  %.sroa.011.0 = select i1 %i.cu, i64 0, i64 %i.cw ; 2 uses
  %i.cx = load i64, ptr %i.av, align 8, !range !12, !noundef !5
  %.not46 = icmp uge i64 %.sroa.011.0, %i.cx
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cy = xor i8 %.sroa.07.0, 1
  %.47 = zext nneg i8 %i.cy to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.loopexit, %bb.v
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.u ], [ undef, %.loopexit ], [ 0, %bb.v ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.u ], [ %i.ct, %.loopexit ], [ %.47, %bb.v ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.w ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.m)
  %i.cz = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
  %i.db = icmp slt i8 %i.da, 0
  %spec.select = select i1 %i.db, i8 1, i8 %.sroa.07.0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.07.1 = phi i8 [ %.sroa.07.0, %bb.y ], [ %spec.select, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerENCINvMs0_NtBb_9behaviourINtB3E_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3x_s_0EECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [128 x i8], align 8               ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [112 x i8], align 8               ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [112 x i8], align 8               ; 4 uses
  %i.u = load i64, ptr %0, align 8, !range !160, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq i64 %i.u, 2
  br i1 %i.w, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.z = load ptr, ptr %i.r, align 8, !noundef !5
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.af, ptr %i.ae, align 8
  %i.ag = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  %i.ah = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !range !212, !noundef !5 ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 1000000001
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %i.aj, -1000000000
  %i.am = icmp samesign ugt i32 %i.aj, 999999999
  %narrow = select i1 %i.am, i32 %i.al, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.sink.split

default.unreachable79:                            ; preds = %.loopexit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.aq = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.ar = extractvalue { ptr, ptr } %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 1000000004, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !12, !noundef !5 ; 2 uses
  %i.aw = add i64 %i.av, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ax = load ptr, ptr %i.y, align 8, !noundef !5 ; 3 uses
  %.not = icmp ne ptr %i.ax, null                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.az, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.bb, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.o, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ax, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.ax, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.bd = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef range(i64 0, -1) %i.aw), !noalias !318
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.h
  %i.be = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !318 ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load i64, ptr %i.bc, align 8, !alias.scope !321, !noalias !318, !noundef !5
  %i.bi = add i64 %i.bh, %i.av
  store i64 %i.bi, ptr %i.bc, align 8, !alias.scope !321, !noalias !318
  %3 = ptrtoint ptr %i.bf to i64
  store i64 %3, ptr %.sroa.3, align 8, !alias.scope !318, !noalias !321
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sink.i = phi ptr [ %i.bg, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !318, !noalias !321
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !5 ; 2 uses
  %.not44 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %4 = inttoptr i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. to ptr
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !329
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !331, !noalias !332, !noundef !5 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load i64, ptr %i.ay, align 8, !alias.scope !331, !noalias !332, !noundef !5 ; 2 uses
  %i.bl = load i64, ptr %i.ba, align 8, !alias.scope !331, !noalias !332, !noundef !5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !329
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.bj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !329
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.bk, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !329
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !329
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.bj, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !329
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.bk, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !329
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.l, %bb.k
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.c, align 8, !noalias !329
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink19.i.i, ptr %i.bm, align 8, !noalias !329
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sink.i.i, ptr %i.bn, align 8, !noalias !329
  %i.bo = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !329
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %.merged.i = phi ptr [ %4, %bb.j ], [ %i.bp, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not45 = icmp eq ptr %.merged.i, null
  br i1 %.not45, label %bb.m, label %5

5:                                                ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %5, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.bq = load i64, ptr %i.ba, align 8, !noundef !5
  %i.br = load i64, ptr %i.au, align 8, !range !12, !noundef !5
  %i.bs = icmp ult i64 %i.bq, %i.br
  %i.bt = zext i1 %i.bs to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !342
  store ptr %i.bu, ptr %i.b, align 8, !noalias !344
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !346, !noalias !347, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i65 = load ptr, ptr %i.n, align 8, !alias.scope !346, !noalias !347 ; 2 uses
  %i.bx = icmp eq ptr %.promoted.i.i.i65, %i.bw
  br i1 %i.bx, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i, label %.lr.ph.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.preheader.lr.ph:                     ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.preheader.lr.ph, %bb.v
  %.promoted.i.i.i67 = phi ptr [ %.promoted.i.i.i65, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.promoted.i.i.i, %bb.v ]
  %i.bz = phi ptr [ %i.bw, %.lr.ph.i.i.i.preheader.lr.ph ], [ %i.cq, %bb.v ]
  %.sroa.07.066 = phi i8 [ %i.bt, %.lr.ph.i.i.i.preheader.lr.ph ], [ %.sroa.07.1, %bb.v ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.n
  %i.ca = phi ptr [ %i.cb, %bb.n ], [ %.promoted.i.i.i67, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  store ptr %i.ca, ptr %i.a, align 8, !noalias !354, !captures !296
  %i.cc = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !355
  br i1 %i.cc, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  %i.cd = icmp eq ptr %i.cb, %i.bz
  br i1 %i.cd, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i, label %.lr.ph.i.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i: ; preds = %bb.v, %bb.n, %bb.m
  %.sroa.07.062 = phi i8 [ %.sroa.07.066, %bb.n ], [ %i.bt, %bb.m ], [ %.sroa.07.1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !356
  br label %.loopexit

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.cb, ptr %i.n, align 8, !alias.scope !357, !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !356
  %.not.i52 = icmp eq ptr %i.ca, null
  br i1 %.not.i52, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  store i32 1000000000, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cf = load ptr, ptr %i.i, align 8, !noundef !5
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.t, label %bb.u

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i
  %.sroa.07.061 = phi i8 [ %.sroa.07.062, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i ], [ %.sroa.07.066, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ch = load i64, ptr %0, align 8, !range !160, !noundef !5 ; 2 uses
  switch i64 %i.ch, label %default.unreachable79 [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.p:                                             ; preds = %.loopexit
  %i.ci = trunc nuw i8 %.sroa.07.061 to i1
  %i.cj = load i64, ptr %i.v, align 8
  %i.ck = add i64 %i.cj, 1
  %.sroa.011.0 = select i1 %i.ci, i64 0, i64 %i.ck ; 2 uses
  %i.cl = load i64, ptr %i.at, align 8, !range !12, !noundef !5
  %.not46 = icmp uge i64 %.sroa.011.0, %i.cl
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.cm = xor i8 %.sroa.07.061, 1
  %.47 = zext nneg i8 %i.cm to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %.loopexit, %bb.q
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.p ], [ undef, %.loopexit ], [ 0, %bb.q ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.p ], [ %i.ch, %.loopexit ], [ %.47, %bb.q ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.r ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.j)
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.co = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  %i.cp = icmp slt i8 %i.co, 0
  %spec.select = select i1 %i.cp, i8 1, i8 %.sroa.07.066
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.07.1 = phi i8 [ %.sroa.07.066, %bb.t ], [ %spec.select, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !364
  store ptr %i.bu, ptr %i.b, align 8, !noalias !365
  %i.cq = load ptr, ptr %i.bv, align 8, !alias.scope !366, !noalias !347, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !366, !noalias !347 ; 2 uses
  %i.cr = icmp eq ptr %.promoted.i.i.i, %i.cq
  br i1 %i.cr, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1w_9behaviourINtB2n_9BehaviourNtNtNtNtB1w_6record5store6memory11MemoryStoreE10discoveredB12_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs4jvuubEK18G_35distributed_key_value_store_example.exit.thread.i, label %.lr.ph.i.i.i.preheader
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter11with_configINtNtBb_7kbucket11ClosestIterINtNtB1y_3key3KeyNtNtBb_6record3KeyEIB1Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBb_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB2y_B3s_E12closest_keysB1Y_E0B2y_EB1Y_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2496) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2512 x i8], align 8              ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB4_8KeyBytesINtNtCskKLDkoKarTP_4core7convert4FromINtB4_3KeyNtNtB8_6record3KeyEE4fromCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2496) %i.a, ptr noundef nonnull align 8 dereferenceable(2496) %3, i64 2496, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2496
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2504
  store i64 20, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB19_B20_EE9from_iterINtNtNtB2J_8adapters4take4TakeINtNtB42_3map3MapINtB1d_11ClosestIterINtB1b_3KeyNtNtB1f_6record3KeyEIB53_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1f_9addresses9AddressesNCINvMs1_B1d_INtB1d_13KBucketsTableB5x_B6r_E12closest_keysB52_E0B5x_ENCINvMs_B22_NtB22_16ClosestPeersIter11with_configB4I_B52_E0EEECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2512) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %3, align 8, !range !160, !alias.scope !367, !noundef !5
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_ENtNtNtBN_3ops4drop4Drop4dropCs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(2496) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4jvuubEK18G_35distributed_key_value_store_example.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
