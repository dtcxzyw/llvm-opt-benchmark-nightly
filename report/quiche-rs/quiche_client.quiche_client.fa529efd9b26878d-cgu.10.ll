Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.10?download=true
inline.NumInlined: 224
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_EINtNtNtNtBP_4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtB2y_6filter6FilterIB2W_IB2W_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B3X_NtB3X_10Connection10paths_iter0ENCB4v_s_0ENCB4v_s0_0ENCB4v_s1_0EECslusEaBCZKLp_13quiche_client:_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !3894
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 2791
  %i.az = load i8, ptr %i.ay, align 1, !dbg !3895, !range !3768, !alias.scope !3823, !noalias !3821 ; 2 uses
    #dbg_value(ptr %i.aq, !3769, !DIExpression(), !2530)
    #dbg_value(ptr %i.aq, !3772, !DIExpression(), !2532)
  %.old.i.i.i.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2584
  %.old6.i.i.i.i.i.i.i.i24 = load i64, ptr %.old.i.i.i.i.i.i.i.i23, align 8, !alias.scope !3820, !noalias !3821
  %.old7.i.i.i.i.i.i.i.i25 = icmp eq i64 %.old6.i.i.i.i.i.i.i.i24, 0 ; 2 uses
  br i1 %i.ax, label %bb.e, label %._crit_edge.i.i.i.i.i.i.i.i.i26, !dbg !3894

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.aq, !3722, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2533)
    #dbg_value(i8 poison, !3758, !DIExpression(), !2534)
    #dbg_value(i8 poison, !3776, !DIExpression(), !2537)
    #dbg_value(i8 poison, !3757, !DIExpression(), !2538)
  %.not.i.i.i.i.i.i.i.i.i33 = icmp eq i8 %i.az, 0, !dbg !3896
  %or.cond.i.i.i.i.i.i.i34 = select i1 %.not.i.i.i.i.i.i.i.i.i33, i1 %.old7.i.i.i.i.i.i.i.i25, i1 false, !dbg !3897
  br i1 %or.cond.i.i.i.i.i.i.i34, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, !dbg !3897

._crit_edge.i.i.i.i.i.i.i.i.i26:                  ; preds = %bb.d
    #dbg_value(ptr %i.aq, !3762, !DIExpression(DW_OP_plus_uconst, 2791, DW_OP_stack_value), !2539)
    #dbg_value(i8 %i.az, !3763, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2540)
  %i.ba = icmp ne i8 %i.az, 4, !dbg !3898
  %or.cond8.i.i.i.i.i.i.i.i27 = select i1 %i.ba, i1 %.old7.i.i.i.i.i.i.i.i25, i1 false, !dbg !3899
  br i1 %or.cond8.i.i.i.i.i.i.i.i27, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, !dbg !3899

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i26, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 2787, !dbg !3900
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !3900, !range !3766, !alias.scope !3823, !noalias !3821, !noundef !453
  %i.bd = trunc nuw i8 %i.bc to i1, !dbg !3901
  br i1 %i.bd, label %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, !dbg !3902

_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, %._crit_edge.i.i.i.i.i.i.i.i.i26, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3824
  store i64 %i.as, ptr %i.a, align 8, !noalias !3825
  store ptr %i.aq, ptr %i.w, align 8, !noalias !3825
    #dbg_value(ptr %i.t, !3789, !DIExpression(DW_OP_deref), !2548)
    #dbg_declare(ptr poison, !3794, !DIExpression(), !2549)
    #dbg_declare(ptr %i.a, !3793, !DIExpression(), !2550)
  %i.be = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs1_Cs3f36owOmepS_6quicheNtBW_10Connection10paths_iters0_0INtB7_5FnMutTRTjRNtNtBW_4path4PathEEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !3903, !noalias !3821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3904, !noalias !3824
  br i1 %i.be, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, !dbg !3905

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28, %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i21
  %i.bf = call { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !3862, !noalias !3821 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 1, !dbg !3862 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.bg, null, !dbg !3863
  br i1 %.not.i.i.i.i.i.i30, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread, label %.lr.ph.i.i.i.i.i.i21.backedge, !dbg !3864

.lr.ph.i.i.i.i.i.i21.backedge:                    ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit
  %.be = phi ptr [ %i.bg, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29 ], [ %i.bt, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit ]
  %.be128 = phi { i64, ptr } [ %i.bf, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29 ], [ %i.bs, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit ]
  br label %.lr.ph.i.i.i.i.i.i21, !dbg !3862

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i29, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3906, !noalias !3541
    #dbg_value(i64 poison, !3798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2552)
    #dbg_value(ptr null, !3798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2552)
    #dbg_value(ptr %i.e, !3805, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2552)
    #dbg_value(ptr %i.e, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2554)
  br label %.loopexit, !dbg !3507

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35: ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3906, !noalias !3541
    #dbg_value(ptr %i.aq, !3798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2552)
    #dbg_value(ptr %i.e, !3805, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2552)
    #dbg_value(ptr %i.e, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2554)
    #dbg_value(i64 poison, !3798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2552)
    #dbg_value(i64 poison, !3806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2555)
    #dbg_value(ptr %i.aq, !3806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2555)
    #dbg_value(i64 poison, !3814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2554)
    #dbg_value(ptr %i.aq, !3814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2554)
    #dbg_value(ptr poison, !3826, !DIExpression(), !2559)
    #dbg_value(i64 poison, !3829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2559)
    #dbg_value(ptr %i.aq, !3829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2559)
    #dbg_value(ptr %i.aq, !3828, !DIExpression(), !2560)
    #dbg_value(ptr %i.aq, !3831, !DIExpression(), !2563)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 2640, !dbg !3907
  %.sroa.050.0.copyload51 = load i16, ptr %i.bh, align 8, !dbg !3907 ; 2 uses
  %.not = icmp eq i16 %.sroa.050.0.copyload51, 2, !dbg !3507
  br i1 %.not, label %.loopexit, label %bb.f, !dbg !3507

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35
  %.sroa.752.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2642, !dbg !3907
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.455), !dbg !3908
    #dbg_value(i16 %.sroa.050.0.copyload51, !3463, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3837)
    #dbg_value(i16 %.sroa.050.0.copyload51, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3838)
    #dbg_value(i16 %.sroa.050.0.copyload51, !3468, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3839)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.752.0..sroa_idx53, i64 30, i1 false), !dbg !3908
    #dbg_value(ptr %0, !3476, !DIExpression(), !2564)
    #dbg_value(ptr %0, !1202, !DIExpression(), !2566)
    #dbg_value(ptr %0, !1213, !DIExpression(), !2568)
  %i.bi = load i64, ptr %i.g, align 8, !dbg !3909, !alias.scope !3840, !noundef !453 ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 8, !dbg !3909       ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !dbg !3910, !alias.scope !3840, !nonnull !453
  %.sink17.i.i = select i1 %i.bj, ptr %i.bk, ptr %0, !dbg !3910
  %.sink16.i.i = select i1 %i.bj, ptr %i.j, ptr %i.g, !dbg !3910 ; 2 uses
  %.sink.i.i36 = call i64 @llvm.umax.i64(i64 %i.bi, i64 8), !dbg !3910
    #dbg_value(ptr %.sink17.i.i, !3478, !DIExpression(), !2573)
    #dbg_value(ptr %.sink16.i.i, !3479, !DIExpression(), !2573)
    #dbg_value(i64 %.sink.i.i36, !3480, !DIExpression(), !2573)
  %i.bl = load i64, ptr %.sink16.i.i, align 8, !dbg !3911, !alias.scope !3841, !noundef !453 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %.sink.i.i36, !dbg !3911
  br i1 %i.bm, label %bb.g, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !3911, !prof !1241

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0), !dbg !3912, !noalias !3842
    #dbg_value(ptr %0, !3843, !DIExpression(), !2578)
    #dbg_value(ptr %0, !3844, !DIExpression(), !2579)
  %i.bn = load ptr, ptr %0, align 8, !dbg !3913, !alias.scope !3841, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.bn, !3478, !DIExpression(), !2573)
    #dbg_value(ptr %i.j, !3479, !DIExpression(), !2573)
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !3914, !alias.scope !3841
  br label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !3915

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_E4pushCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.f, %bb.g
  %i.bo = phi i64 [ %.pre.i, %bb.g ], [ %i.bl, %bb.f ], !dbg !3914
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.g ], [ %.sink16.i.i, %bb.f ], !dbg !3838 ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.g ], [ %.sink17.i.i, %bb.f ], !dbg !3838
    #dbg_value(ptr %.sroa.0.0.i, !3478, !DIExpression(), !2573)
    #dbg_value(ptr %.sroa.01.0.i, !3479, !DIExpression(), !2573)
    #dbg_value(ptr %.sroa.0.0.i, !3846, !DIExpression(), !2582)
    #dbg_value(i64 %i.bo, !3847, !DIExpression(), !2582)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %i.bo, !dbg !3916 ; 2 uses
    #dbg_value(ptr %i.bp, !3471, !DIExpression(), !2583)
  store i16 %.sroa.050.0.copyload51, ptr %i.bp, align 4, !dbg !3917
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2, !dbg !3917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.455, i64 30, i1 false), !dbg !3917
  %i.bq = load i64, ptr %.sroa.01.0.i, align 8, !dbg !3918, !alias.scope !3841, !noundef !453
  %i.br = add i64 %i.bq, 1, !dbg !3918
  store i64 %i.br, ptr %.sroa.01.0.i, align 8, !dbg !3918, !alias.scope !3841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.455), !dbg !3919
    #dbg_value(ptr %i.e, !3626, !DIExpression(), !2584)
    #dbg_value(ptr %i.e, !3612, !DIExpression(), !2585)
    #dbg_value(ptr %i.e, !3603, !DIExpression(), !2586)
    #dbg_value(ptr %i.r, !3604, !DIExpression(), !2586)
    #dbg_value(ptr %i.e, !3586, !DIExpression(), !2587)
    #dbg_declare(ptr poison, !3587, !DIExpression(), !2588)
    #dbg_value(ptr %i.r, !3588, !DIExpression(), !2587)
    #dbg_value(ptr %i.e, !3575, !DIExpression(), !2589)
    #dbg_declare(ptr poison, !3576, !DIExpression(), !2590)
    #dbg_value(ptr %i.r, !3577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2589)
    #dbg_value(ptr %i.r, !3637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2591)
    #dbg_value(ptr %i.r, !3577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2589)
    #dbg_value(ptr %i.r, !3637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3860, !noalias !3541
    #dbg_value(ptr %i.r, !3636, !DIExpression(), !2591)
  store ptr %i.r, ptr %i.b, align 8, !dbg !3861, !noalias !3541
  store ptr %i.r, ptr %i.s, align 8, !dbg !3861, !noalias !3541
  store ptr %i.r, ptr %i.t, align 8, !dbg !3861, !noalias !3541
    #dbg_value(ptr %i.e, !3646, !DIExpression(), !2592)
    #dbg_declare(ptr poison, !3647, !DIExpression(), !2593)
    #dbg_declare(ptr %i.b, !3648, !DIExpression(), !2594)
    #dbg_declare(ptr poison, !3649, !DIExpression(), !2595)
  %i.bs = call { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !dbg !3862, !noalias !3642 ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 1, !dbg !3862 ; 2 uses
  %.not22.i.i.i.i.i.i20 = icmp eq ptr %i.bt, null, !dbg !3863
  br i1 %.not22.i.i.i.i.i.i20, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread, label %.lr.ph.i.i.i.i.i.i21.backedge, !dbg !3864

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit35.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3920
  br label %bb.h, !dbg !3921

bb.h:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3921
  ret void, !dbg !3922

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit: ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3887, !noalias !3668
    #dbg_value(ptr %i.z, !3798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2492)
    #dbg_value(ptr %i.f, !3805, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2492)
    #dbg_value(ptr %i.f, !3809, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !2496)
    #dbg_value(i64 poison, !3798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2492)
    #dbg_value(i64 poison, !3806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2596)
    #dbg_value(ptr %i.z, !3806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2596)
    #dbg_value(i64 poison, !3814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2496)
    #dbg_value(ptr %i.z, !3814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2496)
    #dbg_value(ptr poison, !3826, !DIExpression(), !2598)
    #dbg_value(i64 poison, !3829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2598)
    #dbg_value(ptr %i.z, !3829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2598)
    #dbg_value(ptr %i.z, !3828, !DIExpression(), !2599)
    #dbg_value(ptr %i.z, !3831, !DIExpression(), !2601)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 2640, !dbg !3923
  %.sroa.044.0.copyload45 = load i16, ptr %i.bu, align 8, !dbg !3923 ; 2 uses
  %.not11 = icmp eq i16 %.sroa.044.0.copyload45, 2, !dbg !3924
  br i1 %.not11, label %.loopexit63, label %bb.i, !dbg !3888

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit
  %.sroa.746.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.z, i64 2642, !dbg !3923
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.449), !dbg !3490
    #dbg_value(i16 %.sroa.044.0.copyload45, !3461, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3849)
    #dbg_value(i16 %.sroa.044.0.copyload45, !3485, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3850)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.746.0..sroa_idx47, i64 30, i1 false), !dbg !3490
    #dbg_value(i64 %.sroa.7.076, !3536, !DIExpression(), !3539)
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %.sink17.i, i64 %.sroa.7.076, !dbg !3925 ; 2 uses
    #dbg_value(ptr %i.bv, !3486, !DIExpression(), !3850)
  store i16 %.sroa.044.0.copyload45, ptr %i.bv, align 4, !dbg !3926
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2, !dbg !3926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.449, i64 30, i1 false), !dbg !3926
    #dbg_value(ptr undef, !3491, !DIExpression(), !3495)
  %i.bw = add nuw i64 %.sroa.7.076, 1, !dbg !3927 ; 2 uses
    #dbg_value(i64 %i.bw, !3460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3540)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.449), !dbg !3928
  %exitcond.not = icmp eq i64 %i.bw, %.sink.i.i, !dbg !3857
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !dbg !3857

.loopexit63:                                      ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterIBX_IBX_INtCs9Srk37lQfcB_4slab4IterNtNtCs3f36owOmepS_6quiche4path4PathENCNvMs1_B1V_NtB1V_10Connection10paths_iter0ENCB2t_s_0ENCB2t_s0_0ENCB2t_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client.exit.thread
    #dbg_value(ptr poison, !1222, !DIExpression(), !2603)
    #dbg_value(ptr poison, !1228, !DIExpression(), !2605)
  store i64 %.sroa.7.076, ptr %.sink16.i, align 8, !dbg !3929
  br label %bb.h, !dbg !3921

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RNCNvMs1_Cs3f36owOmepS_6quicheNtB7_10Connection10paths_iters_0CslusEaBCZKLp_13quiche_client.exit.thread.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldTjRNtNtCs3f36owOmepS_6quiche4path4PathEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs1_B1c_NtB1c_10Connection10paths_iter0NCIB2_B15_uB1J_NCB2v_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB2v_s0_0E0E0E0CslusEaBCZKLp_13quiche_client.exit.i.i.i.i.i.i, %bb.a
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !1222, !DIExpression(), !2607)
    #dbg_value(ptr poison, !1228, !DIExpression(), !2609)
  store i64 %.sroa.7.076, ptr %.sink16.i, align 8, !dbg !3930
  resume { ptr, i32 } %lpad.loopexit.split-lp129, !dbg !3931
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecATyyEj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtBY_8adapters6cloned6ClonedINtNtNtB10_5slice4iter4IterBJ_EEECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3941 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !4037, !DIExpression(), !4041)
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 7 uses
    #dbg_value(ptr %0, !4022, !DIExpression(), !4042)
    #dbg_value(ptr %0, !4043, !DIExpression(), !4047)
    #dbg_value(ptr %1, !4023, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4042)
    #dbg_value(ptr %2, !4023, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4042)
    #dbg_declare(ptr %i.e, !4024, !DIExpression(), !4048)
    #dbg_declare(ptr %i.b, !4032, !DIExpression(), !4049)
    #dbg_value(i64 1, !4038, !DIExpression(), !4050)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4076
  store ptr %1, ptr %i.e, align 16, !dbg !4077
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4077
  store ptr %2, ptr %i.f, align 8, !dbg !4077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4078
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator9size_hintCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !dbg !4079
  %i.g = load i64, ptr %i.d, align 8, !dbg !4080, !noundef !453 ; 2 uses
    #dbg_value(i64 %i.g, !4025, !DIExpression(), !4051)
    #dbg_value(i64 %i.g, !4044, !DIExpression(), !4047)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4081
    #dbg_value(ptr %0, !1260, !DIExpression(), !3945)
    #dbg_value(i64 %i.g, !1264, !DIExpression(), !3945)
    #dbg_value(i64 %i.g, !1271, !DIExpression(), !3947)
    #dbg_declare(ptr poison, !1280, !DIExpression(), !3949)
    #dbg_value(i64 1, !1275, !DIExpression(), !3953)
    #dbg_value(ptr %0, !1298, !DIExpression(), !3955)
    #dbg_value(ptr %0, !1309, !DIExpression(), !3957)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4082 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !4082, !alias.scope !4052, !noundef !453 ; 4 uses
  %i.j = icmp ugt i64 %i.i, 4, !dbg !4082
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4083 ; 5 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.i, i64 4), !dbg !4083 ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !dbg !4084, !alias.scope !4053
  %i.l = select i1 %i.j, i64 %.val.i, i64 %i.i, !dbg !4083 ; 3 uses
    #dbg_value(i64 %i.l, !1265, !DIExpression(), !3962)
    #dbg_value(i64 %i.l, !1274, !DIExpression(), !3947)
    #dbg_value(i64 %.sink.i.i, !1266, !DIExpression(), !3962)
  %i.m = sub i64 %.sink.i.i, %i.l, !dbg !4085
  %.not.i = icmp ult i64 %i.m, %i.g, !dbg !4085
  br i1 %.not.i, label %bb.b, label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, !dbg !4085

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.l, %i.g, !dbg !4086           ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l, !dbg !4086
    #dbg_value(i1 %i.o, !1313, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3964)
  br i1 %i.o, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit.thread, label %bb.c, !dbg !4087, !prof !1241

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.n, !1286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3965)
    #dbg_value(i64 1, !1286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3965)
    #dbg_value(i64 %i.n, !1287, !DIExpression(), !3966)
    #dbg_value(i64 %i.n, !1289, !DIExpression(), !3967)
    #dbg_value(i64 %i.n, !1318, !DIExpression(), !3969)
  %i.p = icmp ult i64 %i.n, 2, !dbg !4088
  %i.q = add i64 %i.n, -1, !dbg !4088
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true), !dbg !4088
  %i.s = lshr i64 -1, %i.r, !dbg !4088
  %.sroa.09.0.i = select i1 %i.p, i64 0, i64 %i.s, !dbg !4088 ; 2 uses
    #dbg_value(i64 %.sroa.09.0.i, !1274, !DIExpression(), !3953)
  %i.t = icmp eq i64 %.sroa.09.0.i, -1, !dbg !4089
    #dbg_value(i1 %i.t, !1313, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3971)
  br i1 %i.t, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit.thread, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit, !dbg !4090, !prof !1241

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
  %i.u = add nuw i64 %.sroa.09.0.i, 1, !dbg !4089
    #dbg_value(i64 %i.u, !1267, !DIExpression(), !3972)
  %i.v = call fastcc { i64, i64 } @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E8try_growCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.u), !dbg !4091 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0, !dbg !4091 ; 2 uses
    #dbg_value(i64 %i.w, !1325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3974)
    #dbg_value(i64 poison, !1325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3974)
  switch i64 %i.w, label %bb.d [
    i64 -1, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit._RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit_crit_edge
    i64 0, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit.thread
  ], !dbg !4092, !prof !1331

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit._RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit_crit_edge: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit
  %.pre = load i64, ptr %i.h, align 8, !dbg !4093, !alias.scope !4054 ; 2 uses
  %.pre44 = call i64 @llvm.umax.i64(i64 %.pre, i64 4), !dbg !4094
  br label %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit, !dbg !4092

bb.d:                                             ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit
  %i.x = extractvalue { i64, i64 } %i.v, 1, !dbg !4091
    #dbg_value(i64 %i.x, !1325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3974)
    #dbg_value(i64 %i.w, !1329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3979)
    #dbg_value(i64 %i.x, !1329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3979)
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.w, i64 noundef %i.x) #23, !dbg !4095
  unreachable, !dbg !4095

_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !dbg !4096
  unreachable, !dbg !4096

_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit: ; preds = %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit._RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre44, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit._RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit_crit_edge ], [ %.sink.i.i, %bb.a ], !dbg !4094 ; 3 uses
  %i.y = phi i64 [ %.pre, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E11try_reserveCslusEaBCZKLp_13quiche_client.exit._RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit_crit_edge ], [ %i.i, %bb.a ], !dbg !4093
    #dbg_value(ptr %0, !1298, !DIExpression(), !3980)
    #dbg_value(ptr %0, !1309, !DIExpression(), !3981)
  %i.z = icmp ugt i64 %i.y, 4, !dbg !4093         ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !dbg !4094, !alias.scope !4054, !nonnull !453
  %.sink17.i = select i1 %i.z, ptr %i.aa, ptr %0, !dbg !4094
  %.sink16.i = select i1 %i.z, ptr %i.k, ptr %i.h, !dbg !4094 ; 4 uses
    #dbg_value(ptr %.sink17.i, !4026, !DIExpression(), !4055)
    #dbg_value(ptr %.sink16.i, !4027, !DIExpression(), !4055)
    #dbg_value(ptr %.sink16.i, !4056, !DIExpression(), !4059)
    #dbg_value(i64 %.sink.i.pre-phi, !4028, !DIExpression(), !4055)
    #dbg_value(ptr %.sink17.i, !4029, !DIExpression(), !4060)
    #dbg_value(ptr %.sink17.i, !4061, !DIExpression(), !4065)
  %i.ab = load i64, ptr %.sink16.i, align 8, !dbg !4097, !noundef !453 ; 3 uses
    #dbg_value(ptr %.sink16.i, !4030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4066)
    #dbg_value(i64 %i.ab, !4030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4066)
  %i.ac = icmp ult i64 %i.ab, %.sink.i.pre-phi, !dbg !4098
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !dbg !4098

.lr.ph:                                           ; preds = %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e, !dbg !4098

._crit_edge:                                      ; preds = %bb.j, %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.ab, %_RINvCs5kGgRUzsVpH_8smallvec10infallibleuECslusEaBCZKLp_13quiche_client.exit ], [ %.sink.i.pre-phi, %bb.j ], !dbg !4060
    #dbg_value(ptr poison, !1222, !DIExpression(), !3985)
    #dbg_value(ptr poison, !1228, !DIExpression(), !3987)
  store i64 %.sroa.7.0.lcssa, ptr %.sink16.i, align 8, !dbg !4099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4100
  %i.ae = load <2 x ptr>, ptr %i.e, align 16, !dbg !4100
  store <2 x ptr> %i.ae, ptr %i.b, align 16, !dbg !4100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4049
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !4049
  %i.af = load i64, ptr %i.a, align 8, !dbg !4049, !range !1235, !noundef !453
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !4049
  br i1 %i.ag, label %.lr.ph40, label %._crit_edge41, !dbg !4049

.lr.ph40:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f, !dbg !4049

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.7.038 = phi i64 [ %i.ab, %.lr.ph ], [ %i.az, %bb.j ] ; 4 uses
    #dbg_value(i64 %.sroa.7.038, !4030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4101
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.i unwind label %bb.l, !dbg !4102

bb.f:                                             ; preds = %.lr.ph40, %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCslusEaBCZKLp_13quiche_client.exit
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !dbg !4103
    #dbg_value(i64 poison, !4033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4067)
    #dbg_value(i64 poison, !4033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4067)
    #dbg_value(ptr %0, !1334, !DIExpression(), !3989)
    #dbg_value(i64 poison, !1338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3989)
    #dbg_value(i64 poison, !1338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3989)
    #dbg_value(ptr %0, !1298, !DIExpression(), !3991)
    #dbg_value(ptr %0, !1309, !DIExpression(), !3993)
  %i.aj = load i64, ptr %i.h, align 8, !dbg !4104, !alias.scope !4068, !noundef !453 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 4, !dbg !4104       ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !dbg !4105, !alias.scope !4068, !nonnull !453
  %.sink17.i.i = select i1 %i.ak, ptr %i.al, ptr %0, !dbg !4105
  %.sink16.i.i = select i1 %i.ak, ptr %i.k, ptr %i.h, !dbg !4105 ; 2 uses
  %.sink.i.i23 = call i64 @llvm.umax.i64(i64 %i.aj, i64 4), !dbg !4105
    #dbg_value(ptr %.sink17.i.i, !1339, !DIExpression(), !3998)
    #dbg_value(ptr %.sink16.i.i, !1340, !DIExpression(), !3998)
    #dbg_value(i64 %.sink.i.i23, !1341, !DIExpression(), !3998)
  %i.am = load i64, ptr %.sink16.i.i, align 8, !dbg !4106, !alias.scope !4069, !noundef !453 ; 2 uses
  %i.an = icmp eq i64 %i.am, %.sink.i.i23, !dbg !4106
  br i1 %i.an, label %bb.g, label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !4106, !prof !1241

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E21reserve_one_uncheckedCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0), !dbg !4107
    #dbg_value(ptr %0, !1345, !DIExpression(), !4000)
    #dbg_value(ptr %0, !1346, !DIExpression(), !4001)
  %i.ao = load ptr, ptr %0, align 8, !dbg !4108, !alias.scope !4069, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.ao, !1339, !DIExpression(), !3998)
    #dbg_value(ptr %i.k, !1340, !DIExpression(), !3998)
  %.pre.i = load i64, ptr %i.k, align 8, !dbg !4109, !alias.scope !4069
  br label %_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E4pushCslusEaBCZKLp_13quiche_client.exit, !dbg !4110

end_hunk_0
begin_hunk_1_@_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt:bb.a
  %.not = icmp eq i32 %i.c, 0, !dbg !6890
  br i1 %.not, label %bb.b, label %bb.c, !dbg !6891

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !6892
  %.not3 = icmp eq i32 %i.d, 0, !dbg !6892
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !6893

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !6894
  br label %bb.f, !dbg !6894

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !6895
  br label %bb.f, !dbg !6895

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !6896
  br label %bb.f, !dbg !6896

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !6897
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6900 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !6925, !DIExpression(), !6930)
    #dbg_value(ptr poison, !6932, !DIExpression(), !6903)
    #dbg_value(ptr poison, !6938, !DIExpression(), !6906)
    #dbg_declare(ptr poison, !6940, !DIExpression(), !6910)
    #dbg_declare(ptr poison, !6944, !DIExpression(), !6915)
    #dbg_value(ptr %0, !6942, !DIExpression(), !6916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6953
  %i.b = load ptr, ptr %0, align 8, !dbg !6954, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.b, !6948, !DIExpression(), !6917)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6955
  %i.d = load i64, ptr %i.c, align 8, !dbg !6955, !noundef !453
    #dbg_value(i64 %i.d, !6949, !DIExpression(), !6917)
    #dbg_value(ptr %i.b, !6950, !DIExpression(), !6918)
    #dbg_value(i64 %i.d, !6951, !DIExpression(), !6919)
  store i64 %i.d, ptr %i.a, align 8, !dbg !6956
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6956
  store ptr %i.b, ptr %i.e, align 8, !dbg !6956
    #dbg_value(ptr %i.a, !1618, !DIExpression(), !6921)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !6957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6958
  ret void, !dbg !6959
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6974 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !7053, !DIExpression(), !7058)
    #dbg_value(ptr poison, !7060, !DIExpression(), !6977)
    #dbg_value(ptr poison, !7066, !DIExpression(), !6980)
    #dbg_declare(ptr poison, !7068, !DIExpression(), !6984)
    #dbg_declare(ptr poison, !7072, !DIExpression(), !6990)
    #dbg_value(ptr %0, !7070, !DIExpression(), !6991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7091
  %i.b = load ptr, ptr %0, align 8, !dbg !7092, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.b, !7079, !DIExpression(), !6992)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7093
  %i.d = load i64, ptr %i.c, align 8, !dbg !7093, !noundef !453
    #dbg_value(i64 %i.d, !7080, !DIExpression(), !6992)
    #dbg_value(ptr %i.b, !7081, !DIExpression(), !6993)
    #dbg_value(i64 %i.d, !7082, !DIExpression(), !6994)
  store i64 %i.d, ptr %i.a, align 8, !dbg !7094
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7094
  store ptr %i.b, ptr %i.e, align 8, !dbg !7094
    #dbg_value(ptr %i.a, !7085, !DIExpression(), !6997)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !7095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7096
  ret void, !dbg !7097
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7104 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !7147, !DIExpression(), !7152)
    #dbg_value(ptr poison, !7154, !DIExpression(), !7107)
    #dbg_value(ptr poison, !7160, !DIExpression(), !7110)
    #dbg_declare(ptr poison, !7162, !DIExpression(), !7114)
    #dbg_declare(ptr poison, !7166, !DIExpression(), !7120)
    #dbg_value(ptr %0, !7164, !DIExpression(), !7121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7185
  %i.b = load ptr, ptr %0, align 8, !dbg !7186, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.b, !7173, !DIExpression(), !7122)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7187
  %i.d = load i64, ptr %i.c, align 8, !dbg !7187, !noundef !453
    #dbg_value(i64 %i.d, !7174, !DIExpression(), !7122)
    #dbg_value(ptr %i.b, !7175, !DIExpression(), !7123)
    #dbg_value(i64 %i.d, !7176, !DIExpression(), !7124)
  store i64 %i.d, ptr %i.a, align 8, !dbg !7188
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7188
  store ptr %i.b, ptr %i.e, align 8, !dbg !7188
    #dbg_value(ptr %i.a, !7179, !DIExpression(), !7127)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !7189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7190
  ret void, !dbg !7191
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7195 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !7227, !DIExpression(), !7232)
    #dbg_value(ptr poison, !7234, !DIExpression(), !7198)
    #dbg_value(ptr poison, !7240, !DIExpression(), !7201)
    #dbg_declare(ptr poison, !7242, !DIExpression(), !7205)
    #dbg_declare(ptr poison, !7246, !DIExpression(), !7210)
    #dbg_value(ptr %0, !7244, !DIExpression(), !7211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7255
  %i.b = load ptr, ptr %0, align 8, !dbg !7256, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.b, !7250, !DIExpression(), !7212)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7257
  %i.d = load i64, ptr %i.c, align 8, !dbg !7257, !noundef !453
    #dbg_value(i64 %i.d, !7251, !DIExpression(), !7212)
    #dbg_value(ptr %i.b, !7252, !DIExpression(), !7213)
    #dbg_value(i64 %i.d, !7253, !DIExpression(), !7214)
  store i64 %i.d, ptr %i.a, align 8, !dbg !7258
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7258
  store ptr %i.b, ptr %i.e, align 8, !dbg !7258
    #dbg_value(ptr %i.a, !984, !DIExpression(), !7216)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !7259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7260
  ret void, !dbg !7261
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtB5_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !7263 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !7280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7283)
    #dbg_value(ptr %0, !7284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7297)
    #dbg_value(ptr %0, !7298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7305)
    #dbg_value(i64 %1, !7280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7283)
    #dbg_value(i64 %1, !7284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7297)
    #dbg_value(i64 %1, !7298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7305)
    #dbg_value(ptr %2, !7281, !DIExpression(), !7283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7316
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !7317
    #dbg_value(i64 %1, !7300, !DIExpression(), !7306)
    #dbg_value(i64 %1, !7307, !DIExpression(), !7314)
    #dbg_value(ptr %0, !7301, !DIExpression(), !7315)
    #dbg_value(ptr %0, !7311, !DIExpression(), !7314)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !7318
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtNtBa_5slice4iter4IterB14_EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !7319
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !7320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7321
  ret i1 %i.d, !dbg !7322
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsu_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !7323 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !7343, !DIExpression(), !7346)
    #dbg_value(ptr %0, !7347, !DIExpression(), !7359)
    #dbg_value(ptr %1, !7344, !DIExpression(), !7346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7385
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !7386
    #dbg_value(ptr %0, !1525, !DIExpression(), !7328)
    #dbg_value(ptr %0, !1538, !DIExpression(), !7330)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7387
  %i.c = load i64, ptr %i.b, align 8, !dbg !7387, !alias.scope !7360, !noundef !453 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !7387         ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !7388, !alias.scope !7360, !nonnull !453
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7388
  %i.g = load i64, ptr %i.f, align 8, !dbg !7388, !alias.scope !7360
  %.sink22.i = select i1 %i.d, ptr %i.e, ptr %0, !dbg !7388 ; 2 uses
  %.sink21.i = select i1 %i.d, i64 %i.g, i64 %i.c, !dbg !7388
    #dbg_value(i64 %.sink21.i, !7361, !DIExpression(), !7374)
    #dbg_value(i64 %.sink21.i, !7377, !DIExpression(), !7381)
    #dbg_value(ptr %.sink22.i, !7375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7382)
    #dbg_value(ptr %.sink22.i, !7365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7383)
    #dbg_value(i64 %.sink21.i, !7375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7382)
    #dbg_value(i64 %.sink21.i, !7365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7383)
    #dbg_value(ptr %.sink22.i, !7366, !DIExpression(), !7384)
    #dbg_value(ptr %.sink22.i, !7378, !DIExpression(), !7381)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink22.i, i64 %.sink21.i, !dbg !7389
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink22.i, ptr noundef nonnull %i.h), !dbg !7390
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !7391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7392
  ret i1 %i.j, !dbg !7393
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtCs3f36owOmepS_6quiche5frame5Framej1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7395 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7415, !DIExpression(), !7419)
    #dbg_value(ptr %0, !7420, !DIExpression(), !7423)
    #dbg_declare(ptr %i.a, !7424, !DIExpression(), !7431)
    #dbg_declare(ptr poison, !7432, !DIExpression(), !7442)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7494
  %i.c = load i64, ptr %i.b, align 8, !dbg !7494, !noundef !453 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !7494
  br i1 %i.d, label %bb.c, label %.preheader.preheader, !dbg !7495

.preheader.preheader:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.c, 0, !dbg !7496
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit, label %.lr.ph, !dbg !7496

.lr.ph:                                           ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit unwind label %bb.b, !dbg !7496

2:                                                ; preds = %.lr.ph11
  %3 = add nuw nsw i64 %.sroa.0.1.i10, 1, !dbg !7496 ; 2 uses
  %4 = icmp eq i64 %3, %i.c, !dbg !7496
  br i1 %4, label %common.resume, label %.lr.ph11, !dbg !7496

bb.b:                                             ; preds = %.lr.ph
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %i.c, 1, !dbg !7496
  br i1 %i.e, label %common.resume, label %.lr.ph11, !dbg !7496

.lr.ph11:                                         ; preds = %bb.b, %2
  %.sroa.0.1.i10 = phi i64 [ %3, %2 ], [ 1, %bb.b ] ; 2 uses
  %6 = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.1.i10, !dbg !7496
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(128) %6) #26
          to label %2 unwind label %7, !dbg !7496

common.resume:                                    ; preds = %2, %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %5, %bb.b ], [ %5, %2 ]
  resume { ptr, i32 } %common.resume.op, !dbg !7419

7:                                                ; preds = %.lr.ph11
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7496
  unreachable, !dbg !7496

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7466, !DIExpression(), !7477)
    #dbg_value(ptr %0, !7474, !DIExpression(), !7478)
  %i.f = load ptr, ptr %0, align 8, !dbg !7497, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.f, !7416, !DIExpression(), !7479)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7498
  %i.h = load i64, ptr %i.g, align 8, !dbg !7499, !noundef !453
    #dbg_value(i64 %i.h, !7417, !DIExpression(), !7479)
    #dbg_value(i64 %i.h, !7447, !DIExpression(), !7480)
    #dbg_value(i64 %i.h, !7437, !DIExpression(), !7481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7440
    #dbg_value(ptr %i.f, !7446, !DIExpression(), !7480)
    #dbg_value(ptr %i.f, !7436, !DIExpression(), !7481)
    #dbg_value(i64 %i.c, !7448, !DIExpression(), !7480)
    #dbg_value(i64 %i.c, !7438, !DIExpression(), !7481)
  store i64 %i.c, ptr %i.a, align 8, !dbg !7500
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7500
  store ptr %i.f, ptr %i.i, align 8, !dbg !7500
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7500
  store i64 %i.h, ptr %i.j, align 8, !dbg !7500
    #dbg_value(ptr %i.a, !7483, !DIExpression(), !7409)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.d, !dbg !7501

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !7488, !DIExpression(), !7412)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.e, !dbg !7502

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7501
  unreachable, !dbg !7501

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c
    #dbg_value(ptr %i.a, !7488, !DIExpression(), !7414)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !7503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7504
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit, !dbg !7505

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs3f36owOmepS_6quiche5frame5FrameECslusEaBCZKLp_13quiche_client.exit: ; preds = %.preheader.preheader, %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs3f36owOmepS_6quiche5frame5FrameEECslusEaBCZKLp_13quiche_client.exit
  ret void, !dbg !7506
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecANtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrj8_ENtNtNtBO_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7508 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7523, !DIExpression(), !7527)
    #dbg_value(ptr %0, !7528, !DIExpression(), !7531)
    #dbg_declare(ptr %i.a, !7532, !DIExpression(), !7542)
    #dbg_declare(ptr poison, !7543, !DIExpression(), !7553)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !7575
  %i.c = load i64, ptr %i.b, align 8, !dbg !7575, !noundef !453 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8, !dbg !7575
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !7576

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7561, !DIExpression(), !7565)
    #dbg_value(ptr %0, !7562, !DIExpression(), !7566)
  %i.e = load ptr, ptr %0, align 8, !dbg !7577, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.e, !7524, !DIExpression(), !7567)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7578
  %i.g = load i64, ptr %i.f, align 8, !dbg !7579, !noundef !453
    #dbg_value(i64 %i.g, !7525, !DIExpression(), !7567)
    #dbg_value(i64 %i.g, !7558, !DIExpression(), !7568)
    #dbg_value(i64 %i.g, !7548, !DIExpression(), !7569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7551
    #dbg_value(ptr %i.e, !7557, !DIExpression(), !7568)
    #dbg_value(ptr %i.e, !7547, !DIExpression(), !7569)
    #dbg_value(i64 %i.c, !7559, !DIExpression(), !7568)
    #dbg_value(i64 %i.c, !7549, !DIExpression(), !7569)
  store i64 %i.c, ptr %i.a, align 8, !dbg !7580
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7580
  store ptr %i.e, ptr %i.h, align 8, !dbg !7580
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7580
  store i64 %i.g, ptr %i.i, align 8, !dbg !7580
    #dbg_value(ptr %i.a, !7571, !DIExpression(), !7518)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.c, !dbg !7581

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1618, !DIExpression(), !7520)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit.i unwind label %bb.d, !dbg !7582

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7581
  unreachable, !dbg !7581

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !7581

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !1618, !DIExpression(), !7522)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !7583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7584
  br label %bb.e, !dbg !7585

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECslusEaBCZKLp_13quiche_client.exit
  ret void, !dbg !7586
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyjEj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7588 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7609, !DIExpression(), !7613)
    #dbg_value(ptr %0, !7614, !DIExpression(), !7617)
    #dbg_declare(ptr %i.a, !7618, !DIExpression(), !7632)
    #dbg_declare(ptr poison, !7633, !DIExpression(), !7644)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7681
  %i.c = load i64, ptr %i.b, align 8, !dbg !7681, !noundef !453 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1, !dbg !7681
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !7682

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !7653, !DIExpression(), !7664)
    #dbg_value(ptr %0, !7661, !DIExpression(), !7665)
  %i.e = load ptr, ptr %0, align 8, !dbg !7683, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.e, !7610, !DIExpression(), !7666)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7684
  %i.g = load i64, ptr %i.f, align 8, !dbg !7685, !noundef !453
    #dbg_value(i64 %i.g, !7611, !DIExpression(), !7666)
    #dbg_value(i64 %i.g, !7649, !DIExpression(), !7667)
    #dbg_value(i64 %i.g, !7639, !DIExpression(), !7668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7642
    #dbg_value(ptr %i.e, !7648, !DIExpression(), !7667)
    #dbg_value(ptr %i.e, !7638, !DIExpression(), !7668)
    #dbg_value(i64 %i.c, !7650, !DIExpression(), !7667)
    #dbg_value(i64 %i.c, !7640, !DIExpression(), !7668)
  store i64 %i.c, ptr %i.a, align 8, !dbg !7686
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7686
  store ptr %i.e, ptr %i.h, align 8, !dbg !7686
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7686
  store i64 %i.g, ptr %i.i, align 8, !dbg !7686
    #dbg_value(ptr %i.a, !7670, !DIExpression(), !7601)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.c, !dbg !7687

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !7675, !DIExpression(), !7604)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyjEEECslusEaBCZKLp_13quiche_client.exit.i unwind label %bb.d, !dbg !7688

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7687
  unreachable, !dbg !7687

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyjEEECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !7687

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !7675, !DIExpression(), !7606)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !7689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7690
  br label %bb.e, !dbg !7691

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyjEEECslusEaBCZKLp_13quiche_client.exit
  ret void, !dbg !7692
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !135 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !924, !DIExpression(), !7699)
    #dbg_value(ptr %0, !929, !DIExpression(), !7701)
    #dbg_declare(ptr %i.a, !936, !DIExpression(), !7703)
    #dbg_declare(ptr poison, !950, !DIExpression(), !7706)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7713
  %i.c = load i64, ptr %i.b, align 8, !dbg !7713, !noundef !453 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4, !dbg !7713
  br i1 %i.d, label %bb.b, label %bb.e, !dbg !7714

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !967, !DIExpression(), !7708)
    #dbg_value(ptr %0, !976, !DIExpression(), !7709)
  %i.e = load ptr, ptr %0, align 8, !dbg !7715, !nonnull !453, !noundef !453
    #dbg_value(ptr %i.e, !926, !DIExpression(), !7710)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7716
  %i.g = load i64, ptr %i.f, align 8, !dbg !7717, !noundef !453
    #dbg_value(i64 %i.g, !927, !DIExpression(), !7710)
    #dbg_value(i64 %i.g, !963, !DIExpression(), !7711)
    #dbg_value(i64 %i.g, !956, !DIExpression(), !7712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7704
    #dbg_value(ptr %i.e, !962, !DIExpression(), !7711)
    #dbg_value(ptr %i.e, !955, !DIExpression(), !7712)
    #dbg_value(i64 %i.c, !964, !DIExpression(), !7711)
    #dbg_value(i64 %i.c, !957, !DIExpression(), !7712)
  store i64 %i.c, ptr %i.a, align 8, !dbg !7718
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7718
  store ptr %i.e, ptr %i.h, align 8, !dbg !7718
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7718
  store i64 %i.g, ptr %i.i, align 8, !dbg !7718
    #dbg_value(ptr %i.a, !979, !DIExpression(), !7694)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.c, !dbg !7719

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !984, !DIExpression(), !7696)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECslusEaBCZKLp_13quiche_client.exit.i unwind label %bb.d, !dbg !7720

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !7719
  unreachable, !dbg !7719

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !7719

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.b
    #dbg_value(ptr %i.a, !984, !DIExpression(), !7698)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !7721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7722
  br label %bb.e, !dbg !7723

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client.exit
  ret void, !dbg !7724
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7726 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !7744, !DIExpression(), !7748)
    #dbg_value(ptr %0, !7749, !DIExpression(), !7752)
    #dbg_declare(ptr %i.a, !7753, !DIExpression(), !7767)
    #dbg_declare(ptr poison, !7768, !DIExpression(), !7778)
end_hunk_1
begin_hunk_2_@llvm.lifetime.end.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBL_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche5frame5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs3EyXvii9LsX_3mio3net3udp9UdpSocketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTyyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator9size_hintCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTyyEEENtNtNtB8_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsA_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEENtNtNtB8_6traits8iterator8Iterator9size_hintCslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXsk_Cs9Srk37lQfcB_4slabINtB5_4IterNtNtCs3f36owOmepS_6quiche4path4PathENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECslusEaBCZKLp_13quiche_client(ptr noundef nonnull) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs1_Cs3f36owOmepS_6quicheNtBW_10Connection10paths_iters0_0INtB7_5FnMutTRTjRNtNtBW_4path4PathEEE8call_mutCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterIBx_hEEENtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs3f36owOmepS_6quiche16transport_params25UnknownTransportParameterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEINtNtNtBa_5slice4iter4IterB14_EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTyyEINtNtNtBa_5slice4iter4IterB14_EECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { noinline }
attributes #23 = { noreturn }
attributes #24 = { noinline noreturn }
attributes #25 = { nounwind }
attributes #26 = { cold }

!llvm.module.flags = !{!289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}
!llvm.dbg.cu = !{!35}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<u8>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !467, identifier: "146b3aeda1c45f24e2166b366592181")
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Global", scope: !470, file: !297, align: 8, flags: DIFlagPublic, elements: !453, identifier: "8460d4266e4993ec9914e3baad45ea18")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<u8, alloc::alloc::Global>", scope: !448, file: !297, size: 128, align: 64, flags: DIFlagProtected, elements: !465, templateParams: !469, identifier: "812d0db64fea1b7464457f30f154f4")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<u8, alloc::alloc::Global>", scope: !444, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !462, templateParams: !469, identifier: "1bd6b564d1f00359fe3d0a71aed88d28")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>", scope: !456, file: !297, size: 256, align: 64, flags: DIFlagPublic, elements: !459, templateParams: !472, identifier: "fd1dc73bf77bb57b61f71bd911aa5318")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !455, identifier: "a3a00ccac98dc0b267da15581715e0ff")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UsizeNoHighBit", scope: !478, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !480, templateParams: !453, identifier: "de2a7f83086bb66b1d84717ca15ed153")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<u8>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !489, templateParams: !467, identifier: "c31d4ef568cfbefd99aa13b8883a7b70")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Unique<u8>", scope: !482, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !485, templateParams: !467, identifier: "29b6b6df28c88bc2c540a8e9e6174ec0")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVecInner<alloc::alloc::Global>", scope: !448, file: !297, size: 128, align: 64, flags: DIFlagPrivate, elements: !476, templateParams: !490, identifier: "df99d7c016703de7881c5c4f5cc3291d")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !448, file: !297, size: 128, align: 64, flags: DIFlagProtected, elements: !451, templateParams: !491, identifier: "9d8b409386c7f6fcd8954e6a913d2910")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global>", scope: !444, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !447, templateParams: !491, identifier: "c81595d7f78dba4d8858977b991f986f")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&alloc::vec::Vec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global> as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !441, vtableHolder: !442, templateParams: !453, identifier: "c4857c911ba94e1bfe925aae9e050cc3")
!13 = distinct !DIGlobalVariable(name: "<&alloc::vec::Vec<quiche::transport_params::UnknownTransportParameter<alloc::vec::Vec<u8, alloc::alloc::Global>>, alloc::alloc::Global> as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !12, isLocal: true, isDefinition: true)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Alignment", scope: !300, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !504, templateParams: !453, identifier: "c67b16fbb8da1285801bfe1dbac65451")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Layout", scope: !499, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !502, templateParams: !453, identifier: "7d252506a3dbecdaea7f587cbcba1706")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::alloc::layout::Layout as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !496, vtableHolder: !497, templateParams: !453, identifier: "dfbbe8e06d38aed4ce192fd9528a8abc")
!17 = distinct !DIGlobalVariable(name: "<&core::alloc::layout::Layout as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !16, isLocal: true, isDefinition: true)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&alloc::vec::Vec<u8, alloc::alloc::Global> as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !509, vtableHolder: !510, templateParams: !453, identifier: "d7f68a4173f02356c4f74c9b6db76e60")
!19 = distinct !DIGlobalVariable(name: "<&alloc::vec::Vec<u8, alloc::alloc::Global> as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !18, isLocal: true, isDefinition: true)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<u64 as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !515, vtableHolder: !301, templateParams: !453, identifier: "d85a21256bb3d2b08afbce67e671eff7")
!21 = distinct !DIGlobalVariable(name: "<u64 as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !20, isLocal: true, isDefinition: true)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<&core::mem::alignment::Alignment as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !520, vtableHolder: !521, templateParams: !453, identifier: "922834bdbbc3a3a6e2e4720e8a1425e5")
!23 = distinct !DIGlobalVariable(name: "<&core::mem::alignment::Alignment as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !22, isLocal: true, isDefinition: true)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<usize as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !526, vtableHolder: !437, templateParams: !453, identifier: "9686fa5a12a9e5321ecf9e0ff3e08a8e")
!25 = distinct !DIGlobalVariable(name: "<usize as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !24, isLocal: true, isDefinition: true)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AllocErr", scope: !29, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !538, templateParams: !453, identifier: "245bdfa587eab6f959bd595b6044530e")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CapacityOverflow", scope: !29, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !453, identifier: "c85624f65c22d6a64d8f5a22d9e172c1")
!28 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !29, file: !297, size: 128, align: 64, elements: !536, templateParams: !453, identifier: "84b38ef1cdcc740c35acf2782ca5b1fd", discriminator: !539)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CollectionAllocErr", scope: !532, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !533, templateParams: !453, identifier: "74cbe6840bd95acf1655c96914c8fda7")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<smallvec::CollectionAllocErr as core::fmt::Debug>::{vtable_type}", file: !297, size: 256, align: 64, flags: DIFlagArtificial, elements: !531, vtableHolder: !29, templateParams: !453, identifier: "c6422036ced627396628adaeb190712")
!31 = distinct !DIGlobalVariable(name: "<smallvec::CollectionAllocErr as core::fmt::Debug>::{vtable}", scope: null, file: !297, type: !30, isLocal: true, isDefinition: true)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !549, file: !297, size: 64, align: 64, elements: !554, templateParams: !453, identifier: "a2947e930a506181cfab1f2c86d2a5ee")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !297, size: 384, align: 64, flags: DIFlagArtificial, elements: !546, vtableHolder: !32, templateParams: !453, identifier: "113c40d49f4ae53b55a4c5ae71cbfad4")
!34 = distinct !DIGlobalVariable(name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}", scope: null, file: !297, type: !33, isLocal: true, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !296, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !423, globals: !433, splitDebugInlining: false, nameTableKind: None)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DatagramHeader", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !592, templateParams: !453, identifier: "f03dc03cd703277ac6ff5ae75b24fb69")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Datagram", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !594, templateParams: !453, identifier: "a84a018ee17c95d25b98e594f1df427a")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HandshakeDone", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !453, identifier: "969738fe11e21cb9cf9fd8cc79127bfe")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ApplicationClose", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !597, templateParams: !453, identifier: "e8652ca17549ea874f8ef6cd0a212331")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionClose", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !601, templateParams: !453, identifier: "7511be95842fb24160481d1191367207")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PathResponse", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !606, templateParams: !453, identifier: "f98bd313a58006ec605c5f191f3e06a1")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PathChallenge", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !608, templateParams: !453, identifier: "f104253dc3afd6a8fd9d35c438f27bd3")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RetireConnectionId", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !610, templateParams: !453, identifier: "8660b06baf2e83a5ab4a0964426a4443")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NewConnectionId", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !618, templateParams: !453, identifier: "e300db7a7b077bd0392f4d33d8f381fe")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamsBlockedUni", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !620, templateParams: !453, identifier: "8bc7101f9a14dc1496e1b04afc0c2257")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamsBlockedBidi", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !622, templateParams: !453, identifier: "a602f362cd8308e4fb0eb2a79414b9a7")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamDataBlocked", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !625, templateParams: !453, identifier: "1982c9ea83d4c92ba3404fe29172b12")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DataBlocked", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !627, templateParams: !453, identifier: "18f0ea0c4d875ad6a951373d55807e7c")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamsUni", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !629, templateParams: !453, identifier: "3179e22a2d9d53bac86221b91de959ed")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamsBidi", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !631, templateParams: !453, identifier: "d700b787a639a340ec0b94ffc8b61190")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxStreamData", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !634, templateParams: !453, identifier: "874119afbf9d4d65ddc541642fc49c4a")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaxData", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !636, templateParams: !453, identifier: "24405ead32ad82de9bd40724a54a7941")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StreamHeader", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !642, templateParams: !453, identifier: "707229b558276bf2f279ead0af83d7bb")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DefaultBufFactory", scope: !657, file: !297, align: 8, flags: DIFlagPublic, elements: !453, identifier: "7a38d4827b2441e55d5b4195eeacb41a")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::buffers::DefaultBufFactory>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !656, identifier: "a887996125acdf95fed0c7543f3f55fe")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Align8<usize>", scope: !679, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !681, templateParams: !683, identifier: "28736be91cf5ef198418713dba1ba10")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UnsafeCell<core::sync::atomic::private::Align8<usize>>", scope: !676, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !678, templateParams: !685, identifier: "745865dbc2608c21dab2fae63a29842b")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic<usize>", scope: !415, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !675, templateParams: !683, identifier: "ab6d44a665e759882233ba7d40d0d615")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArcInner<[u8]>", scope: !660, file: !297, size: 128, align: 64, flags: DIFlagPrivate, elements: !673, templateParams: !687, identifier: "ea49aa8e8541aa77541b0ced74d44928")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::sync::ArcInner<[u8]>>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !666, identifier: "aa69136b9d1a44ff8098afdc125a592f")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const alloc::sync::ArcInner<[u8]>", file: !297, size: 128, align: 64, elements: !693, templateParams: !453, identifier: "d6cc1ba07d90906d95a85048dd87f45")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::sync::ArcInner<[u8]>>", scope: !486, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !689, templateParams: !666, identifier: "4238ec4cf2f671dcf5b1c22c68b73588")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Arc<[u8], alloc::alloc::Global>", scope: !660, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !664, templateParams: !694, identifier: "a2ac5a0f3d7be3e8d936307f2edbbbaf")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DefaultBuf", scope: !657, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !659, templateParams: !453, identifier: "61f12b359a5e38df53b6b641a3704e8e")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeBuf<quiche::buffers::DefaultBufFactory>", scope: !646, file: !297, size: 448, align: 64, flags: DIFlagPublic, elements: !654, templateParams: !696, identifier: "6f489288918f1a30885f679fd1172148")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Stream", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !645, templateParams: !453, identifier: "7f4841a3210baa9a719b9f6fd943de4a")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NewToken", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !698, templateParams: !453, identifier: "8e96336ac044a9f560856bc31e67862e")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CryptoHeader", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !701, templateParams: !453, identifier: "7da03bcbe7867caacb9b990e0231bd3b")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Crypto", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !703, templateParams: !453, identifier: "5a64b63ba4cacc94139b4418f9c27b42")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "StopSending", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !706, templateParams: !453, identifier: "7686c198437378882973c2be11ccf645")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ResetStream", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !710, templateParams: !453, identifier: "df62acefeb223e38c57f27b26edd7982")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EcnCounts", scope: !561, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !725, templateParams: !453, identifier: "5b0d7506a7232fc873b895046c90222")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !76, file: !297, size: 256, align: 64, flags: DIFlagPublic, elements: !721, templateParams: !727, identifier: "2db267f0356338bd97a51d4570857c28")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !76, file: !297, size: 256, align: 64, flags: DIFlagPublic, elements: !453, templateParams: !727, identifier: "48e7ffb048d5e03f94adf21443c6d530")
!75 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !76, file: !297, size: 256, align: 64, elements: !719, templateParams: !453, identifier: "840c08323a0e60c1a519736c96eaa30a", discriminator: !728)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<quiche::frame::EcnCounts>", scope: !715, file: !297, size: 256, align: 64, flags: DIFlagPublic, elements: !716, templateParams: !453, identifier: "ef0f7030099ee3c111f4b866fbe947cb")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u64, u64)", file: !297, size: 128, align: 64, elements: !752, templateParams: !453, identifier: "7891b4bdc2158a166fd4174a50224f9b")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<alloc::boxed::Box<(u64, u64), alloc::alloc::Global>>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !749, identifier: "b50811a61800d865b56299147f17ad0b")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<alloc::alloc::Global>", scope: !756, file: !297, align: 8, flags: DIFlagPublic, elements: !758, templateParams: !760, identifier: "aeb998b9044113d213d68e2b5f2151f2")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<alloc::alloc::Global>", scope: !753, file: !297, align: 8, flags: DIFlagPublic, elements: !755, templateParams: !762, identifier: "63f4be1962d2711891047ed193000090")
!81 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !82, file: !297, align: 8, elements: !453, identifier: "ad11c9ac5c3931acf6732117829cb9e8")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LeafOrInternal", scope: !779, file: !297, align: 8, flags: DIFlagProtected, elements: !780, templateParams: !453, identifier: "d462502a0bb968bca6215a2517f1bea3")
!83 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !297, align: 8, elements: !453, identifier: "5ae67affbaaf5eeb6a0fd25b7ea247a9")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Owned", scope: !779, file: !297, align: 8, flags: DIFlagProtected, elements: !781, templateParams: !453, identifier: "8b166052339404444934578d76de4c")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(alloc::collections::btree::node::marker::Owned, alloc::collections::btree::node::marker::LeafOrInternal)", file: !297, align: 8, elements: !778, templateParams: !453, identifier: "685595690ad0133d972ab9b693d3f31d")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(alloc::collections::btree::node::marker::Owned, alloc::collections::btree::node::marker::LeafOrInternal)>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !775, identifier: "8191e563ef443da4dca111e1dbf6609")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<u64>", scope: !756, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !802, templateParams: !804, identifier: "30d6166dcab86cc430085188eac88e3e")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<u64>", scope: !753, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !800, templateParams: !806, identifier: "86b0ff64b0fb9f424b550fe443a6cfa9")
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<u64>", scope: !795, file: !297, size: 64, align: 64, elements: !798, templateParams: !806, identifier: "792680abb7bfec551250e577606fd40c")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<u16>", scope: !756, file: !297, size: 16, align: 16, flags: DIFlagPublic, elements: !813, templateParams: !815, identifier: "e6094661a801bf11f90a2796f2ed8bdc")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<u16>", scope: !753, file: !297, size: 16, align: 16, flags: DIFlagPublic, elements: !811, templateParams: !817, identifier: "a1c6077f7518dde0568e74b5cd1b0aba")
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<u16>", scope: !795, file: !297, size: 16, align: 16, elements: !809, templateParams: !817, identifier: "501f35735ac3eaf4774b56ef76b12be")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>>", scope: !756, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !839, templateParams: !841, identifier: "bb50636250af4953c5a189e79318f6aa")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>>", scope: !753, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !837, templateParams: !843, identifier: "7f679898e1596809dbbebd63e4730a48")
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<core::ptr::non_null::NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>>", scope: !795, file: !297, size: 64, align: 64, elements: !835, templateParams: !843, identifier: "d3b6e6ad19514abcc8e255149d1d0e43")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InternalNode<u64, u64>", scope: !769, file: !297, size: 2304, align: 64, flags: DIFlagPrivate, elements: !832, templateParams: !846, identifier: "c1c94ab3444a27f27b252d2d78f1f591")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::collections::btree::node::InternalNode<u64, u64>>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !826, templateParams: !848, identifier: "7b7d9133948347a2b591b31ba8b1b900")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !101, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !823, templateParams: !850, identifier: "2e4d2e378cd6fbc6cea81d3069c2f0d3")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !101, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !453, templateParams: !850, identifier: "94d8692c48950317804640782bf8989d")
!100 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !101, file: !297, size: 64, align: 64, elements: !821, templateParams: !453, identifier: "8c50ad856b0bc52ee8cdba3840801078", discriminator: !851)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::ptr::non_null::NonNull<alloc::collections::btree::node::InternalNode<u64, u64>>>", scope: !715, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !818, templateParams: !453, identifier: "78ed1297d8fedf53c2f6e3f93ba64ece")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LeafNode<u64, u64>", scope: !769, file: !297, size: 1536, align: 64, flags: DIFlagPrivate, elements: !794, templateParams: !846, identifier: "c755e957b4c097e43925d8363b76157e")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::collections::btree::node::LeafNode<u64, u64>>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !784, templateParams: !853, identifier: "3854418b3c3cad369a8c3a8fc74baaa2")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NodeRef<alloc::collections::btree::node::marker::Owned, u64, u64, alloc::collections::btree::node::marker::LeafOrInternal>", scope: !769, file: !297, size: 128, align: 64, flags: DIFlagProtected, elements: !773, templateParams: !856, identifier: "7114231f2692fe5c706e797a61683822")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !108, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !768, templateParams: !858, identifier: "b68a39d54444c522244481239cc2ef66")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !108, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !453, templateParams: !858, identifier: "6a5c440fd1b89b478427a01b1808b957")
!107 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !108, file: !297, size: 128, align: 64, elements: !766, templateParams: !453, identifier: "f770c6f5871fbbed32680ec07588b3a2", discriminator: !859)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned, u64, u64, alloc::collections::btree::node::marker::LeafOrInternal>>", scope: !715, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !763, templateParams: !453, identifier: "ad91a804ceae8e7ec2c2b3eeb0743980")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BTreeMap<u64, u64, alloc::alloc::Global>", scope: !741, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !746, templateParams: !860, identifier: "2dcb4e7be85d171c6e89db0e61cf0c2f")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BTreeRangeSet", scope: !729, file: !297, size: 256, align: 64, flags: DIFlagPublic, elements: !738, templateParams: !453, identifier: "bca72638002f585334b156b7087e03a8")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BTree", scope: !124, file: !297, size: 704, align: 64, flags: DIFlagPublic, elements: !735, templateParams: !453, identifier: "1b46f50a7914d4da7130ab0096ee6bbb")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(u64, u64)>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !877, templateParams: !879, identifier: "9c924c1940085d6673923ee5664246f5")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ptr::non_null::NonNull<(u64, u64)>, usize)", file: !297, size: 128, align: 64, elements: !874, templateParams: !453, identifier: "c496c8073ed77ba4c2271a6965152359")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<[(u64, u64); 4]>", scope: !756, file: !297, size: 512, align: 64, flags: DIFlagPublic, elements: !893, templateParams: !895, identifier: "c2ae762306fb8648fa31653f194f49c3")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<[(u64, u64); 4]>", scope: !753, file: !297, size: 512, align: 64, flags: DIFlagPublic, elements: !888, templateParams: !897, identifier: "124bc87fbd62862ee98ac072b8a71c57")
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<[(u64, u64); 4]>", scope: !795, file: !297, size: 512, align: 64, elements: !886, templateParams: !897, identifier: "db8992521a3c0b133524aff4e763a8e8")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::mem::maybe_uninit::MaybeUninit<[(u64, u64); 4]>>", scope: !756, file: !297, size: 512, align: 64, flags: DIFlagPublic, elements: !883, templateParams: !899, identifier: "dae8d48ae6b53a51cc3e639d7331e5f1")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::mem::maybe_uninit::MaybeUninit<[(u64, u64); 4]>>", scope: !753, file: !297, size: 512, align: 64, flags: DIFlagPublic, elements: !881, templateParams: !901, identifier: "be084990d4775d7fa1a0d5d9366ca5e")
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SmallVecData<[(u64, u64); 4]>", scope: !532, file: !297, size: 512, align: 64, elements: !871, templateParams: !903, identifier: "789e04560e44d63516844158c2411a07")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallVec<[(u64, u64); 4]>", scope: !532, file: !297, size: 576, align: 64, flags: DIFlagPublic, elements: !868, templateParams: !903, identifier: "b60f10f030e8700bb3c155291638514d")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InlineRangeSet", scope: !729, file: !297, size: 640, align: 64, flags: DIFlagPublic, elements: !865, templateParams: !453, identifier: "4f2197646d4b13403f656a034aaf6fd5")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Inline", scope: !124, file: !297, size: 704, align: 64, flags: DIFlagPublic, elements: !862, templateParams: !453, identifier: "350d478d52f1b029202bb31d7e9e9c8")
!123 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !124, file: !297, size: 704, align: 64, elements: !733, templateParams: !453, identifier: "be548731aaf6f66a1aed5874cb32dd9b", discriminator: !904)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeSet", scope: !729, file: !297, size: 704, align: 64, flags: DIFlagPublic, elements: !730, templateParams: !453, identifier: "8d1154d796aa00862f63e98abb157e3a")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ACK", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !714, templateParams: !453, identifier: "411089c014724670191c673d9051c3e6")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !129, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !912, templateParams: !683, identifier: "907bfc07165e8d2d532021e71490c00")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !129, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !453, templateParams: !683, identifier: "58388a3cc09aba51619a08a5bcdf3c60")
!128 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !129, file: !297, size: 128, align: 64, elements: !910, templateParams: !453, identifier: "c83f0f17ca7acef11e768772796c4f06", discriminator: !913)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !715, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !907, templateParams: !453, identifier: "4c7bbebe318ff5197d2eba51c77368a3")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ping", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !906, templateParams: !453, identifier: "c9a82fd84d1156165d2753d30e42dec2")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Padding", scope: !133, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !915, templateParams: !453, identifier: "39f2a281afa35b45f9bcd4f6d123b109")
!132 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !133, file: !297, size: 1024, align: 64, elements: !590, templateParams: !453, identifier: "8f6357a6d011e641eab4bb7bafa4fb7", discriminator: !916)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Frame", scope: !561, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !562, templateParams: !453, identifier: "1a023c02ce2f4ab9a0b06a67d0da58af")
!134 = distinct !DILexicalBlock(scope: !135, file: !923, line: 2171, column: 17)
!135 = distinct !DISubprogram(name: "drop<[(u64, u64); 4]>", linkageName: "_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client", scope: !925, file: !923, line: 2168, type: !922, scopeLine: 2168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !903, retainedNodes: !928)
!136 = distinct !DISubprogram(name: "spilled<[(u64, u64); 4]>", linkageName: "_RNvMsd_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_E7spilledCslusEaBCZKLp_13quiche_client", scope: !120, file: !923, line: 1025, type: !932, scopeLine: 1025, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !903, declaration: !933, retainedNodes: !934)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<(u64, u64)>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !879, identifier: "eda86c61fffa2971d01dcdbc464c7d87")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<(u64, u64), alloc::alloc::Global>", scope: !448, file: !297, size: 128, align: 64, flags: DIFlagProtected, elements: !942, templateParams: !943, identifier: "f8474a5d953404ec1ac461b8ee43a07")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<(u64, u64), alloc::alloc::Global>", scope: !444, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !939, templateParams: !943, identifier: "20adeff919fbf18f1bf387062b445d79")
!140 = distinct !DISubprogram(name: "drop<alloc::vec::Vec<(u64, u64), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem4dropINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client", scope: !299, file: !935, line: 1045, type: !945, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !948, retainedNodes: !946)
!141 = distinct !DISubprogram(name: "from_raw_parts_in<(u64, u64), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTyyEE17from_raw_parts_inCslusEaBCZKLp_13quiche_client", scope: !139, file: !949, line: 1185, type: !953, scopeLine: 1185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !943, declaration: !954, retainedNodes: !958)
!142 = distinct !DISubprogram(name: "from_raw_parts<(u64, u64)>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecTyyEE14from_raw_partsCslusEaBCZKLp_13quiche_client", scope: !139, file: !949, line: 642, type: !960, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !879, declaration: !961, retainedNodes: !965)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ptr::non_null::NonNull<(u64, u64)>, &mut usize)", file: !297, size: 128, align: 64, elements: !973, templateParams: !453, identifier: "ad6f73e2a1d77f413fd86d758591a80b")
!144 = distinct !DILexicalBlock(scope: !145, file: !923, line: 677, column: 9)
!145 = distinct !DISubprogram(name: "heap_mut<[(u64, u64); 4]>", linkageName: "_RNvMsa_Cs5kGgRUzsVpH_8smallvecINtB5_12SmallVecDataATyyEj4_E8heap_mutCslusEaBCZKLp_13quiche_client", scope: !119, file: !923, line: 676, type: !969, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !903, declaration: !974, retainedNodes: !977)
!146 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<(u64, u64), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECslusEaBCZKLp_13quiche_client", scope: !481, file: !559, line: 848, type: !981, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !948, retainedNodes: !982)
!147 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<(u64, u64), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECslusEaBCZKLp_13quiche_client", scope: !481, file: !559, line: 848, type: !986, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, templateParams: !989, retainedNodes: !987)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !297, size: 128, align: 64, elements: !1017, templateParams: !453, identifier: "6fc9dd7daffb1f73292744aea0793200")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&str>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !1013, identifier: "a2812c956fedd39a46a9a3ccb2254a49")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const str", file: !297, size: 128, align: 64, elements: !1022, templateParams: !453, identifier: "9b6c4209945857e804225489e1f89f1")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<str>", scope: !486, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !1019, templateParams: !687, identifier: "33121bb16d12e1722181cb67e2a732a9")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !1005, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !1011, templateParams: !453, identifier: "3dd96368c1df6996e16508d69506b46e")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ipv6Addr", scope: !1043, file: !297, size: 128, align: 8, flags: DIFlagPublic, elements: !1045, templateParams: !453, identifier: "d6b8438b69a1c32d21983201f26dd51d")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddrV6", scope: !1031, file: !297, size: 224, align: 32, flags: DIFlagPublic, elements: !1042, templateParams: !453, identifier: "671f0c808c3a1411d4517d14e4dc0aef")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "V6", scope: !160, file: !297, size: 256, align: 32, flags: DIFlagPublic, elements: !1037, templateParams: !453, identifier: "9b0d36e4fce208a0a87f79d6df5f8bc")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ipv4Addr", scope: !1043, file: !297, size: 32, align: 8, flags: DIFlagPublic, elements: !1053, templateParams: !453, identifier: "dcc1b7875d6fe740c6a20926ca9ee2dd")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddrV4", scope: !1031, file: !297, size: 48, align: 16, flags: DIFlagPublic, elements: !1050, templateParams: !453, identifier: "3bb243f51b7cbbbf63253e31fd80b96")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "V4", scope: !160, file: !297, size: 256, align: 32, flags: DIFlagPublic, elements: !1047, templateParams: !453, identifier: "42550d2dac0b0058a951e4af051c2208")
!159 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !160, file: !297, size: 256, align: 32, elements: !1035, templateParams: !453, identifier: "688faeba2e1ed741a0262a8d9cb12ee4", discriminator: !1054)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SocketAddr", scope: !1031, file: !297, size: 256, align: 32, flags: DIFlagPublic, elements: !1032, templateParams: !453, identifier: "6fee437e1d298f126ad92bccb905354f")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<quiche::frame::Frame>", scope: !452, file: !297, align: 8, flags: DIFlagPublic, elements: !453, templateParams: !918, identifier: "15af98d11f758a377bc47336ffb76300")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RawVec<quiche::frame::Frame, alloc::alloc::Global>", scope: !448, file: !297, size: 128, align: 64, flags: DIFlagProtected, elements: !1060, templateParams: !1061, identifier: "dae65e0336af98f5a7720edee27a1612")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<quiche::frame::Frame>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !1073, templateParams: !918, identifier: "c3b838b14fd964958465e3410388c1ed")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ptr::non_null::NonNull<quiche::frame::Frame>, usize)", file: !297, size: 128, align: 64, elements: !1070, templateParams: !453, identifier: "d3e2d87d112db48f34486d296465d3cd")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<[quiche::frame::Frame; 1]>", scope: !756, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !1087, templateParams: !1089, identifier: "1c8e967180ed5d9de70fb84995d61941")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<[quiche::frame::Frame; 1]>", scope: !753, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !1082, templateParams: !1091, identifier: "a9796fcb5a48de93c1d308fdabea69c7")
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<[quiche::frame::Frame; 1]>", scope: !795, file: !297, size: 1024, align: 64, elements: !1080, templateParams: !1091, identifier: "ada73835a13121067f2c3090282fcefb")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::mem::maybe_uninit::MaybeUninit<[quiche::frame::Frame; 1]>>", scope: !756, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !1077, templateParams: !1093, identifier: "429fb38face4d65ca288b5430d9a5a91")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::mem::maybe_uninit::MaybeUninit<[quiche::frame::Frame; 1]>>", scope: !753, file: !297, size: 1024, align: 64, flags: DIFlagPublic, elements: !1075, templateParams: !1095, identifier: "ed1f886dcd1e060995a36ae09b3d6afa")
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SmallVecData<[quiche::frame::Frame; 1]>", scope: !532, file: !297, size: 1024, align: 64, elements: !1067, templateParams: !1097, identifier: "e37f86f5ca6c8af58cbd1ba60c8aeced")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallVec<[quiche::frame::Frame; 1]>", scope: !532, file: !297, size: 1088, align: 64, flags: DIFlagPublic, elements: !1064, templateParams: !1097, identifier: "2e4b012aa667d12b81818841dff0bd07")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dyn core::fmt::Write", file: !297, align: 8, elements: !453, identifier: "7522c7300abed790cb78364eb689deba")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut dyn core::fmt::Write", file: !297, size: 128, align: 64, elements: !1110, templateParams: !453, identifier: "8bf9c5b4af2f4eb5d538f580c8dd320c")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FormattingOptions", scope: !1099, file: !297, size: 64, align: 32, flags: DIFlagPublic, elements: !1114, templateParams: !453, identifier: "72ecd823616a2aeb1c2529557e1ca21b")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !1099, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !1102, templateParams: !453, identifier: "2b167547650a33fb39fa5583cd111ae")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Error", scope: !1099, file: !297, align: 8, flags: DIFlagPublic, elements: !453, identifier: "24df7d89e71f74cc6f0b410796226394")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !180, file: !297, size: 8, align: 8, flags: DIFlagPublic, elements: !1121, templateParams: !1123, identifier: "f13361a86bb426615625b353d17a4da4")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !180, file: !297, size: 8, align: 8, flags: DIFlagPublic, elements: !1125, templateParams: !1123, identifier: "4e4fb4a69ae9de1d694252f2b620264a")
!179 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !180, file: !297, size: 8, align: 8, elements: !1119, templateParams: !453, identifier: "ba711c6f3b55bb8e3b33c32c68cebe72", discriminator: !1126)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<(), core::fmt::Error>", scope: !1115, file: !297, size: 8, align: 8, flags: DIFlagPublic, elements: !1116, templateParams: !453, identifier: "c8f65f3dc88215367650f7204ea92d0a")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec<quiche::frame::Frame, alloc::alloc::Global>", scope: !444, file: !297, size: 192, align: 64, flags: DIFlagPublic, elements: !1129, templateParams: !1061, identifier: "1dcb2f423749286d58951a164cc05e")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<core::net::socket_addr::SocketAddr>", scope: !486, file: !297, size: 64, align: 64, flags: DIFlagPublic, elements: !1141, templateParams: !1143, identifier: "864aac9c3dd9194083eb37bac1b29dd5")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(core::ptr::non_null::NonNull<core::net::socket_addr::SocketAddr>, usize)", file: !297, size: 128, align: 64, elements: !1138, templateParams: !453, identifier: "5b87ebb0c7e363a3e1fa3d6e1824cdac")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<[core::net::socket_addr::SocketAddr; 8]>", scope: !756, file: !297, size: 2048, align: 32, flags: DIFlagPublic, elements: !1155, templateParams: !1157, identifier: "2336da0eab2f93f418af51794f1d0237")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<[core::net::socket_addr::SocketAddr; 8]>", scope: !753, file: !297, size: 2048, align: 32, flags: DIFlagPublic, elements: !1152, templateParams: !1159, identifier: "1fd80343177888167a82ce14804f982")
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<[core::net::socket_addr::SocketAddr; 8]>", scope: !795, file: !297, size: 2048, align: 32, elements: !1150, templateParams: !1159, identifier: "263f5dffd84488963df5b110d37e333a")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<core::mem::maybe_uninit::MaybeUninit<[core::net::socket_addr::SocketAddr; 8]>>", scope: !756, file: !297, size: 2048, align: 32, flags: DIFlagPublic, elements: !1147, templateParams: !1161, identifier: "156120d7373f67bc6a05eb0c16837b85")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<core::mem::maybe_uninit::MaybeUninit<[core::net::socket_addr::SocketAddr; 8]>>", scope: !753, file: !297, size: 2048, align: 32, flags: DIFlagPublic, elements: !1145, templateParams: !1163, identifier: "fa92676ab13c4e57bb5f2a2c04365211")
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SmallVecData<[core::net::socket_addr::SocketAddr; 8]>", scope: !532, file: !297, size: 2048, align: 64, elements: !1135, templateParams: !1165, identifier: "2d65f5afe7c8c82df125a734044d720")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SmallVec<[core::net::socket_addr::SocketAddr; 8]>", scope: !532, file: !297, size: 2112, align: 64, flags: DIFlagPublic, elements: !1132, templateParams: !1165, identifier: "dee2612e1059e1aec5d6b051464a665")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SetLenOnDrop", scope: !532, file: !297, size: 128, align: 64, flags: DIFlagPrivate, elements: !1169, templateParams: !453, identifier: "99b59a13dd3f0a3d4a397529bec6683")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !195, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !1185, templateParams: !1187, identifier: "93581babf3c9eb912a7977b2870e2bda")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !195, file: !297, size: 128, align: 64, flags: DIFlagPublic, elements: !1189, templateParams: !1187, identifier: "a82ccdc122eb73bbaed77f8bab463045")
!194 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !195, file: !297, size: 128, align: 64, elements: !1183, templateParams: !453, identifier: "c71108f3f77527f58dc15466f5df4896", discriminator: !1190)
end_hunk_2
