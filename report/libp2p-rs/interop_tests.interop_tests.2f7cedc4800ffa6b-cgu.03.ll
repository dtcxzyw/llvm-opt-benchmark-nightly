Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.03?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1667
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtB9_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB1I_EINtCscu2bAJ62uie_6either6EitherB1I_IB2T_B1I_B1I_EEEIB11_IBP_IB11_B1g_FB1I_EB3r_EB3Q_EFB3r_EB2S_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4r_8find_map5checkB2S_TB2S_NtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEQNCINvNtB5M_15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxBO_E0E0INtNtNtBb_3ops12control_flow11ControlFlowB5D_EECs44McOc0n4RX_13interop_tests:bb.a
  call void %.val.i.us.i.i.i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3561, !inline_history !3491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3555
  %.val.i.i.us.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !3550, !noalias !3562, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !3555
  call void %.val.i.i.us.i.i.i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !3564, !inline_history !3496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !3563
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsbVDXp34Q3tF_18multistream_select15listener_select21listener_select_protoNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxINtNtNtNtBb_4iter8adapters5chain5ChainINtNtB3a_3map3MapINtNtNtB3c_7sources4once4OnceNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEFB4r_EINtCscu2bAJ62uie_6either6EitherB4r_IB5C_B4r_B4r_EEEIB3I_IB36_IB3I_B3Y_FB4r_EB6a_EB6A_EFB6a_EB5B_EEE0INtB7_5FnMutTB5B_EE8call_mutCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3565
  %i.aj = load i64, ptr %i.b, align 8, !range !20, !noalias !3565, !noundef !10 ; 2 uses
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i.i.us.i.i.i.i, label %._crit_edge.split.us.i.i15.i.i, label %bb.m

._crit_edge.split.us.i.i15.i.i:                   ; preds = %.lr.ph.split.us.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3557
  store i64 2, ptr %i.ad, align 8, !alias.scope !3553, !noalias !3567
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.us.i.i10.i.i
  %.sroa.6.0..sroa_idx.i.i13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.523, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i13.i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3551
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge.split.us.i.i15.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3551
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !3568
  br label %bb.f

bb.p:                                             ; preds = %bb.m, %bb.j
  %.sink.i = phi i64 [ %i.ac, %bb.j ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3526
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !3569
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.523, i64 48, i1 false)
  br label %bb.f

bb.q:                                             ; preds = %bb.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3526
  store i64 -1, ptr %0, align 8, !alias.scope !3570
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB27_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3n_3VecB1o_E14extend_trustedBO_E0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  %.not9.i = icmp eq i64 %i.a, -1
  br i1 %.not9.i, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11.i = load i64, ptr %i.b, align 8, !alias.scope !3590, !noalias !3591 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3590, !noalias !3591, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3593)
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.promoted11.i ; 2 uses
  store i64 %i.a, ptr %i.e, align 8, !noalias !3594
  %.sroa.47.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.us.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false)
  %i.f = add i64 %.promoted11.i, 1
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !3590, !noalias !3591
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.b, %.lr.ph.split.us.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !range !30, !noundef !10 ; 2 uses
  %.val7 = load ptr, ptr %1, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.i, align 8            ; 4 uses
  switch i64 %i.h, label %._crit_edge.i [
    i64 -2, label %bb.d
    i64 -1, label %bb.c
  ]

._crit_edge.i:                                    ; preds = %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %.sroa.5.0.copyload, i64 %.val8 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !noalias !3595
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, i64 32, i1 false)
  %i.k = add i64 %.val8, 1
  br label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit, %._crit_edge.i
  %.val5.i = phi i64 [ %i.k, %._crit_edge.i ], [ %.val8, %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  br label %bb.d

bb.d:                                             ; preds = %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit, %bb.c
  %.val8.sink = phi i64 [ %.val5.i, %bb.c ], [ %.val8, %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvB1l_8for_each4callBH_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2I_3VecBH_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainB3_B3_EE0E0ECs44McOc0n4RX_13interop_tests.exit ]
  store i64 %.val8.sink, ptr %.val7, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB6_4NameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !32, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3615
  store i8 %i.d, ptr %i.b, align 1, !noalias !3615
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3615
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i16, ptr %i.e, align 8, !range !28, !noundef !10
  %i.g = trunc nuw i16 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.l = load i16, ptr %i.k, align 2, !noundef !10
  %i.m = zext i16 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  %.sroa.4.8.insert.ext = shl i64 %.sroa.01.0, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3617
  store ptr %0, ptr %i.a, align 8, !noalias !3617
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.8.insert.shift, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !3617
  %i.n = call { ptr, i64 } @_RNvXs2_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3618 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %.not8.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i, label %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0ECs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.p, align 8, !alias.scope !3616, !noalias !3619
  %.promoted20.i = load i64, ptr %i.q, align 8, !alias.scope !3616, !noalias !3619
  %.promoted23.i = load i64, ptr %i.r, align 8, !alias.scope !3616, !noalias !3619
  %.promoted.i = load i64, ptr %i.s, align 8, !alias.scope !3616, !noalias !3619
  %.promoted32.i = load i64, ptr %1, align 8, !alias.scope !3616, !noalias !3619
  %.promoted39.i = load i64, ptr %i.t, align 8, !alias.scope !3616, !noalias !3619
  %.promoted46.i = load i64, ptr %i.u, align 8, !alias.scope !3616, !noalias !3619
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i, %.lr.ph.i.i
  %.promoted1852.i = phi i64 [ %.promoted46.i, %.lr.ph.i.i ], [ %.promoted1851.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 3 uses
  %.promoted1745.i = phi i64 [ %.promoted39.i, %.lr.ph.i.i ], [ %.promoted1744.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 3 uses
  %.promoted1638.i = phi i64 [ %.promoted32.i, %.lr.ph.i.i ], [ %.promoted1637.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 3 uses
  %.promoted1531.i = phi i64 [ %.promoted.i, %.lr.ph.i.i ], [ %.promoted1530.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 3 uses
  %.promoted25.i = phi i64 [ %.promoted23.i, %.lr.ph.i.i ], [ %.promoted24.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %storemerge.i.i.i.lcssa22.i = phi i64 [ %.promoted20.i, %.lr.ph.i.i ], [ %storemerge.i.i.i.lcssa21.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %i.v = phi i64 [ %.promoted19.i, %.lr.ph.i.i ], [ %i.bs, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.bu, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ]
  %i.x = phi { ptr, i64 } [ %i.n, %.lr.ph.i.i ], [ %i.bt, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i ]
  %i.y = extractvalue { ptr, i64 } %i.x, 1        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3620)
  %i.z = icmp samesign eq i64 %i.y, 0
  br i1 %i.z, label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i
  %.promoted1850.i = phi i64 [ %.promoted1847.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1852.i, %bb.e ] ; 2 uses
  %.promoted1743.i = phi i64 [ %.promoted1740.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1745.i, %bb.e ] ; 2 uses
  %.promoted1636.i = phi i64 [ %.promoted1633.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1638.i, %bb.e ] ; 2 uses
  %.promoted1529.i = phi i64 [ %.promoted1526.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1531.i, %bb.e ] ; 2 uses
  %i.aa = phi i64 [ %i.bl, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1852.i, %bb.e ] ; 3 uses
  %i.ab = phi i64 [ %i.bm, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1745.i, %bb.e ] ; 5 uses
  %i.ac = phi i64 [ %i.bn, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1638.i, %bb.e ] ; 3 uses
  %i.ad = phi i64 [ %i.bo, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1531.i, %bb.e ] ; 3 uses
  %.sroa.0.2.i14.i.i.i13.i = phi i64 [ %.sroa.0.2.i14.i.i.i14.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %.promoted25.i, %bb.e ]
  %storemerge.i.i7.i.i = phi i64 [ %storemerge.i.i.i.i, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ %storemerge.i.i.i.lcssa22.i, %bb.e ] ; 6 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.bp, %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i.i.i.i.i
  %.val8.i.i.i.i.i = load i8, ptr %i.ae, align 1, !alias.scope !3620, !noalias !3621, !noundef !10 ; 2 uses
  %i.af = add i8 %.val8.i.i.i.i.i, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i = or i8 %i.ah, %.val8.i.i.i.i.i ; 2 uses
  %i.ai = icmp eq i64 %storemerge.i.i7.i.i, 0
  br i1 %i.ai, label %..thread.i_crit_edge.i, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i.i.i

..thread.i_crit_edge.i:                           ; preds = %.preheader.i
  %.pre.i = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i64
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i.i.i: ; preds = %.preheader.i
  %.not4.i.i = icmp eq i64 %storemerge.i.i7.i.i, 8
  %i.aj = zext i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0.2.i.i.i.i.i = select i1 %.not4.i.i, i64 0, i64 %i.aj
  %i.ak = shl i64 %storemerge.i.i7.i.i, 3
  %i.al = and i64 %i.ak, 56
  %i.am = shl nuw i64 %.sroa.0.2.i.i.i.i.i, %i.al
  %i.an = or i64 %i.am, %.sroa.0.2.i14.i.i.i13.i  ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3622, !noalias !3623
  %notsub.i.i = add i64 %storemerge.i.i7.i.i, -9
  %i.ao = icmp ult i64 %notsub.i.i, -2
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i.i.i
  %i.ap = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.aq = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ar = add i64 %i.ap, %i.aa                    ; 2 uses
  %i.as = call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.av = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.ar, %i.at                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.ax, %i.az                    ; 3 uses
  store i64 %i.ba, ptr %i.t, align 8, !alias.scope !3624, !noalias !3623
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  store i64 %i.bc, ptr %i.s, align 8, !alias.scope !3624, !noalias !3623
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32) ; 3 uses
  store i64 %i.bd, ptr %i.u, align 8, !alias.scope !3624, !noalias !3623
  %i.be = xor i64 %i.ay, %i.an                    ; 3 uses
  store i64 %i.be, ptr %1, align 8, !alias.scope !3622, !noalias !3623
  %.not5.i.i = icmp ne i64 %storemerge.i.i7.i.i, 7 ; 2 uses
  %spec.select.i = zext i1 %.not5.i.i to i64
  %spec.select60.i = select i1 %.not5.i.i, i64 %i.aj, i64 0
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i

bb.g:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i.i.i.i
  %i.bf = add i64 %storemerge.i.i7.i.i, 1
  br label %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i: ; preds = %bb.f, %..thread.i_crit_edge.i
  %.promoted1848.i = phi i64 [ %i.bd, %bb.f ], [ %.promoted1850.i, %..thread.i_crit_edge.i ]
  %.promoted1741.i = phi i64 [ %i.ba, %bb.f ], [ %.promoted1743.i, %..thread.i_crit_edge.i ]
  %.promoted1634.i = phi i64 [ %i.be, %bb.f ], [ %.promoted1636.i, %..thread.i_crit_edge.i ]
  %.promoted1527.i = phi i64 [ %i.bc, %bb.f ], [ %.promoted1529.i, %..thread.i_crit_edge.i ]
  %i.bg = phi i64 [ %i.bd, %bb.f ], [ %i.aa, %..thread.i_crit_edge.i ]
  %i.bh = phi i64 [ %i.ba, %bb.f ], [ %i.ab, %..thread.i_crit_edge.i ]
  %i.bi = phi i64 [ %i.be, %bb.f ], [ %i.ac, %..thread.i_crit_edge.i ]
  %i.bj = phi i64 [ %i.bc, %bb.f ], [ %i.ad, %..thread.i_crit_edge.i ]
  %i.bk = phi i64 [ %spec.select.i, %bb.f ], [ 1, %..thread.i_crit_edge.i ]
  %.sroa.0.2.i14.i.i.i.i = phi i64 [ %spec.select60.i, %bb.f ], [ %.pre.i, %..thread.i_crit_edge.i ] ; 2 uses
  store i64 %.sroa.0.2.i14.i.i.i.i, ptr %i.r, align 8, !alias.scope !3622, !noalias !3623
  br label %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i

_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i, %bb.g
  %.promoted1847.i = phi i64 [ %.promoted1850.i, %bb.g ], [ %.promoted1848.i, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 2 uses
  %.promoted1740.i = phi i64 [ %.promoted1743.i, %bb.g ], [ %.promoted1741.i, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 2 uses
  %.promoted1633.i = phi i64 [ %.promoted1636.i, %bb.g ], [ %.promoted1634.i, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 2 uses
  %.promoted1526.i = phi i64 [ %.promoted1529.i, %bb.g ], [ %.promoted1527.i, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 2 uses
  %i.bl = phi i64 [ %i.aa, %bb.g ], [ %i.bg, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ]
  %i.bm = phi i64 [ %i.ab, %bb.g ], [ %i.bh, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ]
  %i.bn = phi i64 [ %i.ac, %bb.g ], [ %i.bi, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ]
  %i.bo = phi i64 [ %i.ad, %bb.g ], [ %i.bj, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ]
  %.sroa.0.2.i14.i.i.i14.i = phi i64 [ %i.an, %bb.g ], [ %.sroa.0.2.i14.i.i.i.i, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 2 uses
  %storemerge.i.i.i.i = phi i64 [ %i.bf, %bb.g ], [ %i.bk, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i.i.i.i ] ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, 1 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.y
  br i1 %i.bq, label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i, label %.preheader.i

_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i: ; preds = %_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit.i.i
  %i.br = add i64 %i.y, %i.v                      ; 2 uses
  store i64 %i.br, ptr %i.p, align 8, !alias.scope !3622, !noalias !3623
  store i64 %storemerge.i.i.i.i, ptr %i.q, align 8, !alias.scope !3622, !noalias !3623
  br label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i

_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i, %bb.e
  %.promoted1851.i = phi i64 [ %.promoted1847.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %.promoted1852.i, %bb.e ]
  %.promoted1744.i = phi i64 [ %.promoted1740.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %.promoted1745.i, %bb.e ]
  %.promoted1637.i = phi i64 [ %.promoted1633.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %.promoted1638.i, %bb.e ]
  %.promoted1530.i = phi i64 [ %.promoted1526.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %.promoted1531.i, %bb.e ]
  %.promoted24.i = phi i64 [ %.sroa.0.2.i14.i.i.i14.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %.promoted25.i, %bb.e ]
  %storemerge.i.i.i.lcssa21.i = phi i64 [ %storemerge.i.i.i.i, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %storemerge.i.i.i.lcssa22.i, %bb.e ]
  %i.bs = phi i64 [ %i.br, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.loopexit.i.i ], [ %i.v, %bb.e ]
  %i.bt = call { ptr, i64 } @_RNvXs2_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_9LabelIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3618 ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0ECs44McOc0n4RX_13interop_tests.exit, label %bb.e

_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name9LabelIterINtNtNtBc_5slice4iter4IterhEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB2c_uNCINvNvB3b_8for_each4callRhNCINvXsa_B1e_NtB1e_4NameNtNtBc_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenRShuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterhEuNCINvNvB1W_8for_each4callRhNCINvXsa_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB3K_4NameNtNtBg_4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherE0E0E0E0Cs44McOc0n4RX_13interop_tests.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3617
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCINvCs4wN8za6y8UK_7soketto4readINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherIBw_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1y_6server9TlsStreamB2j_EEB2j_EE0Cs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noundef !10
  switch i8 %i.f, label %default.unreachable37 [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.b
  ]

default.unreachable37:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !nonnull !10, !align !11, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !11, !noundef !10 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %.val = load i64, ptr %i.n, align 8, !noundef !10 ; 2 uses
  store i64 %.val, ptr %i.m, align 8
  %i.o = add i64 %.val, %i.l
  invoke void @_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut6resize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.o, i8 noundef 0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val21 = load i64, ptr %i.r, align 8, !noundef !10 ; 4 uses
  %i.s = load i64, ptr %i.m, align 8, !noundef !10 ; 4 uses
  %i.t = icmp ugt i64 %i.s, %.val21
  br i1 %i.t, label %bb.f, label %bb.h, !prof !24

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef range(i64 0, -9223372036854775808) %.val21, i64 noundef range(i64 0, -9223372036854775808) %.val21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %bb.e
  %.val20 = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.v = sub nuw nsw i64 %.val21, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %.val20, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.x, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.w, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.s, %bb.d
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %bb.s ], [ %i.p, %bb.d ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn16.pn.pn

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #37
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #37
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = invoke { i64, ptr } @_RNvXs0_NtNtCsl9hx9jpF0W9_12futures_util2io4readINtB5_4ReadINtNtNtB9_6future6either6EitherIBV_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB1y_6server9TlsStreamB2j_EEB2j_EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ab = extractvalue { i64, ptr } %i.z, 0       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.x, %bb.o
  %common.ret.op = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.o ], [ %i.ay, %bb.x ]
  ret { i64, ptr } %common.ret.op

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 3, ptr %i.e, align 8
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %i.ad = extractvalue { i64, ptr } %i.z, 1       ; 3 uses
  %i.ae = trunc nuw i64 %i.ab to i1
  br i1 %i.ae, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  store i64 %i.af, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !10, !align !11, !noundef !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !10
  %i.ak = add i64 %i.aj, %i.af                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3631, !noundef !10
  %.not.i = icmp ugt i64 %i.ak, %i.am
  br i1 %.not.i, label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8truncate.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !3631
  br label %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8truncate.exit

_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8truncate.exit: ; preds = %bb.r, %bb.q
  %i.an = icmp eq ptr %i.ad, null
  br i1 %i.an, label %bb.x, label %bb.t

bb.s:                                             ; preds = %bb.u, %bb.m, %bb.g
  %.pn16.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.aa, %bb.m ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.t:                                             ; preds = %_RNvMs_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB4_8BytesMut8truncate.exit
  %i.ao = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 6
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %i.ao, 4
  br i1 %i.aq, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.531.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3632
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.as, align 8, !noalias !3632
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @21, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3632
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 7, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !3632
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @20, ptr %i.at, align 8, !noalias !3632
end_hunk_0
