Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonat_client.autonat_client.f4eef3970af912d2-cgu.00?download=true
inline.NumInlined: 933
inline.NumDeleted: 492
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXNtCskFgHTArva8k_13netlink_proto6codecsNtB3_12NetlinkCodecNtB3_19NetlinkMessageCodec6encodeNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageECsl1M2c05oz72_14autonat_client:bb.a
  %i.s = phi i64 [ %i.o, %bb.f ], [ %i.g, %bb.g ]
  %i.t = phi i64 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.u = phi ptr [ @21, %bb.f ], [ @20, %bb.g ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #36
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.j
  invoke void @_RNvXs2_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtB7_6traits8Emitable4emitCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull %i.w, i64 noundef %i.g)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.x = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 6
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ugt i64 %i.x, 4
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsl1M2c05oz72_14autonat_client, ptr %.sroa.413.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @9, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @9, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 21, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @19, ptr %i.ad, align 8
  invoke void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECsl1M2c05oz72_14autonat_client(ptr noundef nonnull @18, ptr noundef nonnull %i.b, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl1M2c05oz72_14autonat_client.exit
  %.sroa.0.0 = phi ptr [ %i.ae, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl1M2c05oz72_14autonat_client.exit ], [ null, %bb.i ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEECsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  ret ptr %.sroa.0.0

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl1M2c05oz72_14autonat_client.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ae = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsbVDXp34Q3tF_18multistream_select(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.b

bb.m:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCscu2bAJ62uie_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionIBD_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEEINtNtNtBW_7sources5empty5EmptyB2A_EENtNtNtBW_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB2A_ja_EECsl1M2c05oz72_14autonat_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 11 uses
  %i.e = load ptr, ptr %1, align 8, !noundef !7
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !765
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !765
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !766
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 6 uses
  store i64 0, ptr %i.g, align 8, !noalias !766
  store i64 0, ptr %i.d, align 8, !noalias !766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !769, !noalias !770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !768
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766

.noexc.i.i:                                       ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !noalias !768, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !768
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 9 uses
  %.not.i.i.i.i = icmp ugt i64 %i.h, 10
  br i1 %.not.i.i.i.i, label %bb.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i.i
  %i.j = add i64 %i.h, -1
  %i.k = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true) ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.thread.i.i.i, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.i.i.i, !prof !27

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.i.i.i: ; preds = %bb.d
  %i.m = lshr i64 -1, %i.k
  %i.n = add nuw i64 %i.m, 1
  %i.o = invoke fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E8try_growCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d, i64 noundef %i.n)
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766 ; 2 uses

.noexc4.i.i:                                      ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.i.i.i
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.e [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i
    i64 0, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.thread.i.i.i
  ], !prof !28

bb.e:                                             ; preds = %.noexc4.i.i
  %i.q = extractvalue { i64, i64 } %i.o, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.p, i64 noundef %i.q) #36
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766

.noexc5.i.i:                                      ; preds = %bb.e
  unreachable

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.thread.i.i.i: ; preds = %.noexc4.i.i, %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766

.noexc6.i.i:                                      ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.thread.i.i.i
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i: ; preds = %.noexc4.i.i
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !771, !noalias !766 ; 3 uses
  %i.r = icmp ugt i64 %.pre.i.i.i, 10
  br i1 %i.r, label %bb.f, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !771, !noalias !766, !nonnull !7, !noundef !7
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !767, !noalias !766
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i: ; preds = %.noexc.i.i, %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i, %bb.f
  %i.u = phi i64 [ %.pre.i.i, %bb.f ], [ %.pre.i.i.i, %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %.sink12.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.i, %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i ], [ %i.i, %.noexc.i.i ]
  %.sink11.i.i.i.i = phi ptr [ %i.i, %bb.f ], [ %i.g, %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i ], [ %i.g, %.noexc.i.i ] ; 3 uses
  %.sink.i12.i.i.i = phi i64 [ %.pre.i.i.i, %bb.f ], [ 10, %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit.i.i.i ], [ 10, %.noexc.i.i ] ; 3 uses
  %i.v = icmp ult i64 %i.u, %.sink.i12.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.k, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i
  %storemerge.lcssa.i.i.i = phi i64 [ %i.u, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i ], [ %.sink.i12.i.i.i, %bb.k ]
  store i64 %storemerge.lcssa.i.i.i, ptr %.sink11.i.i.i.i, align 8, !alias.scope !767, !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !768
  %i.w = invoke { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766 ; 2 uses

.noexc7.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %.lr.ph29.i.i.i, label %._crit_edge30.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %.noexc7.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %bb.g

.lr.ph.i.i.i:                                     ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i, %bb.k
  %storemerge27.i.i.i = phi i64 [ %i.au, %bb.k ], [ %i.u, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i ] ; 4 uses
  %i.aa = invoke { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.j unwind label %bb.m, !noalias !772 ; 2 uses

bb.g:                                             ; preds = %.noexc9.i.i, %.lr.ph29.i.i.i
  %i.ab = phi { i64, i64 } [ %i.w, %.lr.ph29.i.i.i ], [ %i.an, %.noexc9.i.i ]
  %i.ac = extractvalue { i64, i64 } %i.ab, 1
  %i.ad = load i64, ptr %i.g, align 8, !alias.scope !773, !noalias !766, !noundef !7 ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.z, align 8, !alias.scope !773, !noalias !766, !nonnull !7, !noundef !7
  %.pre34.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !774, !noalias !766
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i: ; preds = %bb.g, %bb.h
  %i.ag = phi i64 [ %.pre34.i.i.i, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.sink12.i.i.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.i, %bb.g ]
  %.sink11.i.i.i.i.i = phi ptr [ %i.i, %bb.h ], [ %i.g, %bb.g ]
  %.sink.i.i13.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 10, %bb.g ]
  %i.ah = icmp eq i64 %i.ag, %.sink.i.i13.i.i.i
  br i1 %i.ah, label %bb.i, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCsl1M2c05oz72_14autonat_client.exit.i.i.i, !prof !27

bb.i:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i
  invoke void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E21reserve_one_uncheckedCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766

.noexc8.i.i:                                      ; preds = %bb.i
  %i.ai = load ptr, ptr %i.z, align 8, !alias.scope !774, !noalias !766, !nonnull !7, !noundef !7
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !774, !noalias !766
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCsl1M2c05oz72_14autonat_client.exit.i.i.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCsl1M2c05oz72_14autonat_client.exit.i.i.i: ; preds = %.noexc8.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i
  %i.aj = phi i64 [ %.pre.i.i.i.i, %.noexc8.i.i ], [ %i.ag, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i ]
  %.sroa.04.0.i.i.i.i = phi ptr [ %i.ai, %.noexc8.i.i ], [ %.sink12.i.i.i.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i ]
  %.sroa.0.0.i14.i.i.i = phi ptr [ %i.i, %.noexc8.i.i ], [ %.sink11.i.i.i.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCsl1M2c05oz72_14autonat_client.exit.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i.i.i.i, i64 %i.aj
  store i64 %i.ac, ptr %i.ak, align 8, !noalias !772
  %i.al = load i64, ptr %.sroa.0.0.i14.i.i.i, align 8, !alias.scope !774, !noalias !766, !noundef !7
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %.sroa.0.0.i14.i.i.i, align 8, !alias.scope !774, !noalias !766
  %i.an = invoke { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.i.i, !noalias !766 ; 2 uses

.noexc9.i.i:                                      ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCsl1M2c05oz72_14autonat_client.exit.i.i.i
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %._crit_edge30.i.i.i

._crit_edge30.i.i.i:                              ; preds = %.noexc9.i.i, %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !768
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECsl1M2c05oz72_14autonat_client.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = extractvalue { i64, i64 } %i.aa, 0
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = extractvalue { i64, i64 } %i.aa, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i.i.i.i, i64 %storemerge27.i.i.i
  store i64 %i.as, ptr %i.at, align 8, !noalias !772
  %i.au = add i64 %storemerge27.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %.sink.i12.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %bb.j
  store i64 %storemerge27.i.i.i, ptr %.sink11.i.i.i.i, align 8, !alias.scope !767, !noalias !766
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECsl1M2c05oz72_14autonat_client.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge27.i.i.i, ptr %.sink11.i.i.i.i, align 8, !alias.scope !767, !noalias !766
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E4pushCsl1M2c05oz72_14autonat_client.exit.i.i.i, %bb.i, %._crit_edge.i.i.i, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.thread.i.i.i, %bb.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E11try_reserveCsl1M2c05oz72_14autonat_client.exit.i.i.i, %bb.c
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.m ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_EECsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #35
          to label %bb.o unwind label %bb.n, !noalias !766

bb.n:                                             ; preds = %.body.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !766
  unreachable

bb.o:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECsl1M2c05oz72_14autonat_client.exit: ; preds = %._crit_edge30.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !766
  br label %bb.p

bb.p:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1Q_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEENtNtNtBa_6traits8iterator8Iterator7collectINtCsczYENlYh6wI_8smallvec8SmallVecAB1O_ja_EECsl1M2c05oz72_14autonat_client.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCscu2bAJ62uie_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB2C_4pool21EstablishedConnectionIBD_NtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEEINtNtNtBW_7sources5empty5EmptyB2A_EENtNtNtBW_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB2A_EECsl1M2c05oz72_14autonat_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !7
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyBU_EE9from_iterCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !786, !noalias !787
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBU_INtNtBW_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEEE9from_iterCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !785
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_CsczYENlYh6wI_8smallvecINtB6_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1u_8adapters3map3MapINtNtB2w_5chain5ChainIB2s_IB2U_IB2s_INtNtNtB1u_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB3W_EINtCscu2bAJ62uie_6either6EitherB3W_B3W_EEB3o_EFB56_EIB57_B56_B3W_EEIB2s_INtB6_8IntoIterAB3W_j2_EFB3W_EB5W_EENCNvMs0_B40_INtB40_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0EEB7h_(ptr noalias nofree noundef align 8 dereferenceable(400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [160 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [160 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(160) %1, i64 160, i1 false), !alias.scope !807
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i64, ptr %i.f, align 8, !range !17, !alias.scope !808, !noundef !7 ; 4 uses
  %.not.i.i = icmp eq i64 %i.g, -2
  %i.h = load i64, ptr %i.e, align 8, !range !9, !alias.scope !808, !noundef !7
  %.not7.i.i = icmp eq i64 %i.h, 2                ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.val14.i.i = load i64, ptr %i.i, align 8, !alias.scope !808 ; 5 uses
  %.not.i.i17.i.i = icmp eq i64 %i.g, -1          ; 2 uses
  %.not7.i.i18.i.i = icmp eq i64 %.val14.i.i, -1  ; 4 uses
  br i1 %.not7.i.i, label %bb.j, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val11.i.i = load i64, ptr %i.j, align 8, !alias.scope !808, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.val12.i.i = load i64, ptr %i.k, align 8, !alias.scope !808, !noundef !7
  %i.l = sub i64 %.val12.i.i, %.val11.i.i
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ne i64 %i.g, 2
  %i.n = zext i1 %i.m to i64                      ; 2 uses
  br i1 %.not7.i.i18.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i.i18.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ne i64 %.val14.i.i, 2
  %i.p = zext i1 %i.o to i64
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.q = icmp ne i64 %.val14.i.i, 2
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, %i.n
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sink6.i.i.i.i = phi i64 [ %i.s, %bb.i ], [ %i.p, %bb.h ], [ %i.n, %bb.f ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !808, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.val10.i.i = load i64, ptr %i.u, align 8, !alias.scope !808, !noundef !7
  %i.v = sub i64 %.val10.i.i, %.val.i.i
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %.sink6.i.i.i.i, i64 %i.v)
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit

bb.j:                                             ; preds = %bb.b
  br i1 %.not.i.i17.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ne i64 %i.g, 2
  %i.y = zext i1 %i.x to i64                      ; 2 uses
  br i1 %.not7.i.i18.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %.not7.i.i18.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = icmp ne i64 %.val14.i.i, 2
  %i.aa = zext i1 %i.z to i64
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = icmp ne i64 %.val14.i.i, 2
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit

.thread34:                                        ; preds = %.thread38, %bb.q, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i, %bb.d, %bb.c
  %.sink26.i.i = phi i64 [ %i.w, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1M_EINtCscu2bAJ62uie_6either6EitherB1M_B1M_EEB1g_EFB2W_EIB2X_B2W_B1M_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl1M2c05oz72_14autonat_client.exit.i.i ], [ %i.l, %bb.d ], [ 0, %bb.l ], [ %i.ad, %bb.n ], [ %i.aa, %bb.m ], [ %i.y, %bb.k ], [ 0, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !809, !noundef !7 ; 4 uses
  %i.ag = icmp ugt i64 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %.sink.i.i9 = tail call i64 @llvm.umax.i64(i64 %i.af, i64 16)
  %.val.i = load i64, ptr %i.ah, align 8, !alias.scope !810
  %i.ai = select i1 %i.ag, i64 %.val.i, i64 %i.af ; 3 uses
  %i.aj = sub i64 %.sink.i.i9, %i.ai
  %.not.i = icmp ult i64 %i.aj, %.sink26.i.i
  br i1 %.not.i, label %bb.o, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit
  %i.ak = add i64 %i.ai, %.sink26.i.i             ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %.thread38, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.am = icmp ult i64 %i.ak, 2
  %i.an = add i64 %i.ak, -1
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = lshr i64 -1, %i.ao
  %.sroa.010.0.i = select i1 %i.am, i64 0, i64 %i.ap ; 2 uses
  %i.aq = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.aq, label %.thread38, label %bb.q, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.ar = add nuw i64 %.sroa.010.0.i, 1
  %i.as = invoke fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E8try_growCsl1M2c05oz72_14autonat_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %i.ar)
          to label %bb.r unwind label %.thread34  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  switch i64 %i.at, label %bb.s [
    i64 -1, label %._RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit_crit_edge
    i64 0, label %.thread38
  ], !prof !28

._RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit_crit_edge: ; preds = %bb.r
  %.pre = load i64, ptr %i.ae, align 8, !alias.scope !811
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit

bb.s:                                             ; preds = %bb.r
  %i.au = extractvalue { i64, i64 } %i.as, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.at, i64 noundef %i.au) #36
          to label %.noexc10 unwind label %.thread34

.noexc10:                                         ; preds = %bb.s
  unreachable

.thread38:                                        ; preds = %bb.o, %bb.p, %bb.r
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31
          to label %.noexc11 unwind label %.thread34

.noexc11:                                         ; preds = %.thread38
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit: ; preds = %._RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit_crit_edge, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit
  %i.av = phi i64 [ %.pre, %._RINvCsczYENlYh6wI_8smallvec10infallibleuECsl1M2c05oz72_14autonat_client.exit_crit_edge ], [ %i.af, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_IBX_IBN_INtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1U_EINtCscu2bAJ62uie_6either6EitherB1U_B1U_EEB1o_EFB34_EIB35_B34_B1U_EEIBN_INtCsczYENlYh6wI_8smallvec8IntoIterAB1U_j2_EFB1U_EB3U_EENCNvMs0_B1Y_INtB1Y_5SwarmNtCsl1M2c05oz72_14autonat_client9BehaviourE17handle_pool_event0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5y_.exit ] ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 16
end_hunk_0
