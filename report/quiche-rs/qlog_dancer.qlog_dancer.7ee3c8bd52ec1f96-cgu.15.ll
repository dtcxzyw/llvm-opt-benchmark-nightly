Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvMsz_NtCs9uoxEJIHcZN_10wirefilter6schemeNtB1B_6Scheme5lists0ENCINvMNtB1D_17execution_contextNtB2B_16ExecutionContext8new_withNvYuNtNtBc_7default7Default7defaultE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1D_12list_matcher11ListMatcherEL_ENCINvMsk_NtB5h_3vecINtB6y_3VecB5c_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23651
  %i.d = load i64, ptr %i.c, align 8, !dbg !23651, !alias.scope !23451, !noundef !3744 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !23652, !alias.scope !23451, !nonnull !3744, !align !4908, !noundef !3744
    #dbg_value(ptr %i.e, !23474, !DIExpression(), !23309)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !23653, !alias.scope !23452 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !23479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23314)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23653
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !23653, !alias.scope !23452 ; 2 uses
    #dbg_value(i64 %.sroa.5.0.copyload.i, !23479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23314)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23653
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !23653, !alias.scope !23452
    #dbg_value(ptr %.sroa.7.0.copyload.i, !23479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23314)
    #dbg_value(ptr %i.e, !23479, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !23314)
    #dbg_value(i64 %i.b, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23315)
    #dbg_value(i64 %i.d, !23482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23315)
    #dbg_declare(ptr poison, !23483, !DIExpression(), !23316)
    #dbg_declare(ptr poison, !23484, !DIExpression(), !23317)
    #dbg_value(ptr undef, !23490, !DIExpression(), !23320)
    #dbg_value(ptr undef, !23492, !DIExpression(), !23324)
    #dbg_value(ptr undef, !23495, !DIExpression(), !23327)
    #dbg_value(ptr undef, !23496, !DIExpression(), !23327)
  %i.f = icmp ult i64 %i.b, %i.d, !dbg !23654
  br i1 %i.f, label %.lr.ph.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMsz_NtCs9uoxEJIHcZN_10wirefilter6schemeNtB1x_6Scheme5lists0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1x_7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1z_12list_matcher11ListMatcherEL_EuNCINvMNtB1z_17execution_contextNtB4U_16ExecutionContext8new_withNvYuNtNtBc_7default7Default7defaultE0NCINvNvB2r_8for_each4callB3A_NCINvMsk_NtB3F_3vecINtB73_3VecB3A_E14extend_trustedIBO_BN_B4O_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23655

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %.val5.i.i = phi i64 [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.a ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %i.g, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
    #dbg_value(i64 %.sroa.0.015.i.i, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23315)
    #dbg_value(i64 %.sroa.0.015.i.i, !23493, !DIExpression(), !23328)
    #dbg_value(i64 %.sroa.0.015.i.i, !23498, !DIExpression(), !23331)
    #dbg_value(i64 %.sroa.0.015.i.i, !23501, !DIExpression(), !23334)
    #dbg_value(i64 1, !23499, !DIExpression(), !23331)
    #dbg_value(i64 1, !23502, !DIExpression(), !23334)
  %i.g = add nuw i64 %.sroa.0.015.i.i, 1, !dbg !23656 ; 2 uses
    #dbg_value(i64 %i.g, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23315)
    #dbg_value(i64 %.sroa.0.015.i.i, !23485, !DIExpression(), !23335)
    #dbg_value(ptr poison, !23504, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23338)
    #dbg_value(ptr poison, !23510, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !23338)
    #dbg_declare(ptr poison, !23508, !DIExpression(), !23339)
    #dbg_value(i64 %.sroa.0.015.i.i, !23509, !DIExpression(), !23338)
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !23657, !noalias !23512, !nonnull !3744, !noundef !3744 ; 2 uses
    #dbg_value(ptr poison, !23513, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23346)
    #dbg_declare(ptr poison, !23517, !DIExpression(), !23347)
    #dbg_value(ptr poison, !23518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23346)
    #dbg_value(i64 %.sroa.0.015.i.i, !23518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23346)
    #dbg_value(ptr poison, !23527, !DIExpression(), !23350)
    #dbg_value(ptr poison, !23530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23350)
    #dbg_value(i64 %.sroa.0.015.i.i, !23530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23350)
    #dbg_value(ptr poison, !23539, !DIExpression(), !23354)
    #dbg_value(ptr %.val3.i.i.i, !23549, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !23357)
    #dbg_value(ptr %.val3.i.i.i, !23556, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !23361)
    #dbg_value(ptr %.val3.i.i.i, !23564, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !23364)
    #dbg_value(ptr %.val3.i.i.i, !23567, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !23367)
    #dbg_value(i64 %.sroa.0.015.i.i, !23553, !DIExpression(), !23368)
    #dbg_value(i64 %.sroa.0.015.i.i, !23573, !DIExpression(), !23372)
    #dbg_value(i64 %.sroa.0.015.i.i, !23582, !DIExpression(), !23375)
  %i.h = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 80, !dbg !23658
  %i.i = load i64, ptr %i.h, align 8, !dbg !23658, !noalias !23587, !noundef !3744 ; 2 uses
    #dbg_value(ptr poison, !23576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23372)
    #dbg_value(ptr poison, !23585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23375)
    #dbg_value(i64 %i.i, !23576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23372)
    #dbg_value(i64 %i.i, !23585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23375)
  %i.j = icmp ult i64 %.sroa.0.015.i.i, %i.i, !dbg !23659
  br i1 %i.j, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBY_12list_matcher11ListMatcherEL_EuNCINvMNtBY_17execution_contextNtB2W_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1I_3vecINtB5y_3VecB1D_E14extend_trustedINtB4_3MapIB6f_INtNtNtBa_3ops5range5RangejENCNvMsz_BW_NtBW_6Scheme5lists0EB2Q_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, label %bb.b, !dbg !23659

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.015.i.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #30
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !23659, !noalias !23588

.noexc.i.i:                                       ; preds = %bb.b
  unreachable, !dbg !23659

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBY_12list_matcher11ListMatcherEL_EuNCINvMNtBY_17execution_contextNtB2W_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1I_3vecINtB5y_3VecB1D_E14extend_trustedINtB4_3MapIB6f_INtNtNtBa_3ops5range5RangejENCNvMsz_BW_NtBW_6Scheme5lists0EB2Q_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 72, !dbg !23660
  %i.l = load ptr, ptr %i.k, align 8, !dbg !23660, !noalias !23587, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %i.l, !23576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23372)
    #dbg_value(ptr %i.l, !23585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23375)
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.0.015.i.i, !dbg !23661 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !23662
  %i.o = load ptr, ptr %i.n, align 8, !dbg !23662, !noalias !23587, !nonnull !3744, !noundef !3744
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !23662
  %i.q = load ptr, ptr %i.p, align 8, !dbg !23662, !noalias !23587, !nonnull !3744, !align !4908, !noundef !3744
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !23663
  %i.s = load ptr, ptr %i.r, align 8, !dbg !23663, !invariant.load !3744, !noalias !23587, !nonnull !3744
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %i.o) #36
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !23664, !noalias !23588, !inline_history !23385 ; 2 uses

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBY_12list_matcher11ListMatcherEL_EuNCINvMNtBY_17execution_contextNtB2W_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1I_3vecINtB5y_3VecB1D_E14extend_trustedINtB4_3MapIB6f_INtNtNtBa_3ops5range5RangejENCNvMsz_BW_NtBW_6Scheme5lists0EB2Q_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %i.u = extractvalue { ptr, ptr } %i.t, 0, !dbg !23665
  %i.v = extractvalue { ptr, ptr } %i.t, 1, !dbg !23665
    #dbg_value(ptr poison, !23603, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23388)
    #dbg_declare(ptr poison, !23608, !DIExpression(), !23389)
    #dbg_value(ptr %i.u, !23607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23388)
    #dbg_value(ptr %i.v, !23607, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23388)
    #dbg_value(ptr poison, !23612, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !23392)
    #dbg_value(ptr poison, !23617, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23392)
    #dbg_value(ptr %i.u, !23616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23392)
    #dbg_value(ptr %i.v, !23616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23392)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload.i, i64 %.val5.i.i, !dbg !23666 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !dbg !23667, !noalias !23623
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !23667
  store ptr %i.v, ptr %i.x, align 8, !dbg !23667, !noalias !23623
  %i.y = add i64 %.val5.i.i, 1, !dbg !23668       ; 2 uses
    #dbg_value(i64 %i.g, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23315)
    #dbg_value(ptr undef, !23490, !DIExpression(), !23320)
    #dbg_value(ptr undef, !23492, !DIExpression(), !23324)
    #dbg_value(ptr undef, !23495, !DIExpression(), !23327)
    #dbg_value(ptr undef, !23496, !DIExpression(), !23327)
  %exitcond.not.i.i = icmp eq i64 %i.g, %i.d, !dbg !23654
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMsz_NtCs9uoxEJIHcZN_10wirefilter6schemeNtB1x_6Scheme5lists0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1x_7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1z_12list_matcher11ListMatcherEL_EuNCINvMNtB1z_17execution_contextNtB4U_16ExecutionContext8new_withNvYuNtNtBc_7default7Default7defaultE0NCINvNvB2r_8for_each4callB3A_NCINvMsk_NtB3F_3vecINtB73_3VecB3A_E14extend_trustedIBO_BN_B4O_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !23655

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBY_12list_matcher11ListMatcherEL_EuNCINvMNtBY_17execution_contextNtB2W_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1I_3vecINtB5y_3VecB1D_E14extend_trustedINtB4_3MapIB6f_INtNtNtBa_3ops5range5RangejENCNvMsz_BW_NtBW_6Scheme5lists0EB2Q_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %bb.b
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !23626, !DIExpression(), !23407)
    #dbg_value(ptr poison, !23632, !DIExpression(), !23410)
    #dbg_value(ptr poison, !23638, !DIExpression(), !23413)
    #dbg_value(ptr poison, !23644, !DIExpression(), !23416)
    #dbg_value(ptr poison, !10710, !DIExpression(), !23418)
    #dbg_value(ptr poison, !10716, !DIExpression(), !23420)
  store i64 %.val5.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !23669, !noalias !23588
  resume { ptr, i32 } %lpad.loopexit.split-lp36, !dbg !23670

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMsz_NtCs9uoxEJIHcZN_10wirefilter6schemeNtB1x_6Scheme5lists0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB1x_7ListRefINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1z_12list_matcher11ListMatcherEL_EuNCINvMNtB1z_17execution_contextNtB4U_16ExecutionContext8new_withNvYuNtNtBc_7default7Default7defaultE0NCINvNvB2r_8for_each4callB3A_NCINvMsk_NtB3F_3vecINtB73_3VecB3A_E14extend_trustedIBO_BN_B4O_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %bb.a
  %.val7.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.a ], [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs9uoxEJIHcZN_10wirefilter6scheme7ListRefuNCNvMsz_BX_NtBX_6Scheme5lists0NCIB2_BV_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBZ_12list_matcher11ListMatcherEL_EuNCINvMNtBZ_17execution_contextNtB3B_16ExecutionContext8new_withNvYuNtNtBa_7default7Default7defaultE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2i_NCINvMsk_NtB2n_3vecINtB6d_3VecB2i_E14extend_trustedINtB4_3MapIB6U_INtNtNtBa_3ops5range5RangejEB1F_EB3v_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i ], !dbg !23671
    #dbg_value(i64 poison, !23482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23315)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !23626, !DIExpression(), !23422)
    #dbg_value(ptr poison, !23632, !DIExpression(), !23424)
    #dbg_value(ptr poison, !23638, !DIExpression(), !23426)
    #dbg_value(ptr poison, !23644, !DIExpression(), !23428)
    #dbg_value(ptr poison, !10710, !DIExpression(), !23430)
    #dbg_value(ptr poison, !10716, !DIExpression(), !23432)
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !23672, !noalias !23588
  ret void, !dbg !23673
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1x_9AppConfig9from_clap0ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2I_7HashSetNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3r_E6extendBX_E0ENtNtB4V_8iterator8Iterator4folduNCINvNvB5E_8for_each4callTB3r_uENCINvXs1i_NtB2K_3mapINtB6Q_7HashMapB3r_uB43_EIB4R_B6z_E6extendBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23687 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
    #dbg_declare(ptr %0, !23970, !DIExpression(), !23977)
    #dbg_declare(ptr poison, !23971, !DIExpression(), !23978)
    #dbg_value(ptr %1, !23972, !DIExpression(), !23979)
    #dbg_declare(ptr %0, !23980, !DIExpression(), !23691)
    #dbg_declare(ptr poison, !23986, !DIExpression(), !23692)
    #dbg_value(ptr %1, !23987, !DIExpression(), !23693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24251, !noalias !23991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !dbg !24251, !noalias !23992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23993), !dbg !24252
    #dbg_value(ptr %1, !23994, !DIExpression(), !23704)
    #dbg_declare(ptr %i.c, !24000, !DIExpression(), !23705)
    #dbg_declare(ptr poison, !24001, !DIExpression(), !23706)
    #dbg_declare(ptr poison, !24002, !DIExpression(), !23707)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.d, align 1, !alias.scope !24008, !noalias !23991
  %.promoted14.i.i = load i64, ptr %i.c, align 8, !alias.scope !23993, !noalias !23991 ; 4 uses
  %i.e = trunc nuw i8 %.promoted.i.i to i1, !dbg !24253
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit, label %.lr.ph.i.i, !dbg !24253

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24008, !noalias !23991, !nonnull !3744, !noundef !3744 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val13.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !24008, !noalias !23991, !noundef !3744 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !24025, !noalias !23991, !noundef !3744 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.i, %.val13.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !23993, !noalias !23991 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !6767, !alias.scope !23993, !noalias !23991
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre13.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !23993, !noalias !23991 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.promoted18.i.i = load i64, ptr %i.v, align 8, !alias.scope !24025, !noalias !23991
  br label %.lr.ph.split.i.i, !dbg !24254

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i15.i.i.us.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.promoted14.i.i
  %.not.i15.i.i.us.fr.i.i = freeze i1 %.not.i15.i.i.us.i.i ; 2 uses
  %or.cond.not.i.i.i.us.i.i = or i1 %.not.i15.i.i.us.fr.i.i, %i.s
  %i.w = sub nuw i64 %.pre13.i.i.i.i.i, %.promoted14.i.i ; 5 uses
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted14.i.i
  br i1 %or.cond.not.i.i.i.us.i.i, label %.lr.ph.split.us.split.us.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit, !dbg !24255

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24077), !dbg !24256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24078), !dbg !24257
    #dbg_value(ptr poison, !24014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23744)
    #dbg_value(i64 poison, !24014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24079), !dbg !24258
    #dbg_value(ptr %i.f, !24068, !DIExpression(), !23745)
    #dbg_value(i64 0, !24030, !DIExpression(), !23753)
    #dbg_value(i64 0, !24099, !DIExpression(), !23756)
    #dbg_value(ptr %.val.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(ptr %.val.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(ptr %.val.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23760)
    #dbg_value(i64 poison, !24050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 poison, !24045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 poison, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23760)
    #dbg_value(i64 poison, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(i64 poison, !24044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(i64 poison, !24029, !DIExpression(), !23761)
    #dbg_value(i64 poison, !24103, !DIExpression(), !23760)
    #dbg_value(i64 %i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 %i.i, !24044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 %i.i, !24028, !DIExpression(), !23761)
    #dbg_value(ptr %i.c, !24106, !DIExpression(), !23765)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23766)
    #dbg_value(i64 poison, !24003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23766)
    #dbg_value(ptr poison, !24110, !DIExpression(DW_OP_deref), !23769)
    #dbg_declare(ptr poison, !24114, !DIExpression(), !23770)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23769)
    #dbg_value(i64 poison, !24115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23769)
    #dbg_value(ptr poison, !24123, !DIExpression(), !23773)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23773)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23776)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23780)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23781)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23784)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23787)
    #dbg_value(i64 poison, !24126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23773)
    #dbg_value(i64 poison, !24128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23776)
    #dbg_value(i64 poison, !24130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23780)
    #dbg_value(i64 poison, !24131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23781)
    #dbg_value(i64 poison, !24133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23784)
    #dbg_value(i64 poison, !24135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23787)
    #dbg_declare(ptr poison, !24137, !DIExpression(), !23794)
    #dbg_declare(ptr poison, !24144, !DIExpression(), !23799)
    #dbg_declare(ptr poison, !24149, !DIExpression(), !23802)
    #dbg_declare(ptr poison, !24152, !DIExpression(), !23805)
    #dbg_declare(ptr poison, !24155, !DIExpression(), !23810)
    #dbg_value(i64 0, !24161, !DIExpression(), !23813)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23814)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23816)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(i64 poison, !24142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23814)
    #dbg_value(i64 poison, !24140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23815)
    #dbg_value(i64 poison, !24138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23816)
    #dbg_value(i64 poison, !24145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 poison, !24146, !DIExpression(), !23818)
    #dbg_value(i64 poison, !24150, !DIExpression(), !23819)
    #dbg_value(i64 poison, !24153, !DIExpression(), !23820)
    #dbg_value(i64 poison, !24166, !DIExpression(), !23823)
    #dbg_value(i64 poison, !24170, !DIExpression(), !23826)
    #dbg_value(i64 poison, !24156, !DIExpression(), !23827)
    #dbg_value(i64 poison, !24163, !DIExpression(), !23813)
    #dbg_value(i64 1, !24157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23827)
    #dbg_value(i64 1, !24164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23813)
    #dbg_value(i64 1, !24157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23827)
    #dbg_value(i64 1, !24164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24259, !noalias !24174
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !24259, !noalias !24174
  %i.x = load i64, ptr %i.b, align 8, !dbg !24259, !range !4870, !noalias !24174, !noundef !3744
  %i.y = trunc nuw i64 %i.x to i1, !dbg !24260    ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !dbg !24261, !range !4871, !noalias !24174, !noundef !3744 ; 5 uses
  br i1 %.not.i15.i.i.us.fr.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.us.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %i.y, label %.split.us.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.us.i.i, !dbg !24260, !prof !4872

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.us.i.i: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.us.i.i
  %i.aa = load ptr, ptr %i.u, align 8, !dbg !24262, !noalias !24174, !nonnull !3744, !noundef !3744
    #dbg_value(i64 %i.z, !24158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23834)
    #dbg_value(ptr %i.aa, !24158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23834)
    #dbg_value(ptr poison, !24162, !DIExpression(), !23835)
  %i.ab = icmp ule i64 %i.w, %i.z, !dbg !24263
    #dbg_value(i1 true, !24175, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23838)
  tail call void @llvm.assume(i1 %i.ab), !dbg !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24265, !noalias !24174
    #dbg_value(i64 %i.z, !24147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23839)
    #dbg_value(ptr %i.aa, !24147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23839)
    #dbg_value(i64 poison, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
    #dbg_value(i64 %i.z, !24177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23842)
    #dbg_value(i64 %i.z, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(i64 %i.z, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(ptr %i.aa, !24177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23842)
    #dbg_value(ptr %i.aa, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(ptr %i.aa, !24198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(i64 poison, !24177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23842)
    #dbg_value(i64 poison, !24188, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23845)
    #dbg_value(i64 poison, !24198, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23849)
    #dbg_value(ptr poison, !24182, !DIExpression(DW_OP_deref), !23850)
    #dbg_declare(ptr poison, !24181, !DIExpression(), !23851)
    #dbg_value(ptr poison, !24192, !DIExpression(DW_OP_deref), !23852)
    #dbg_declare(ptr poison, !24193, !DIExpression(), !23853)
    #dbg_value(ptr poison, !24202, !DIExpression(DW_OP_deref), !23854)
    #dbg_declare(ptr %i.a, !24203, !DIExpression(), !23855)
    #dbg_declare(ptr poison, !24204, !DIExpression(), !23856)
    #dbg_value(ptr %i.c, !24023, !DIExpression(), !23857)
    #dbg_value(ptr %i.c, !24013, !DIExpression(), !23858)
  br label %._crit_edge.sink.split.i.i, !dbg !24253

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.i.i: ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %i.y, label %.split.us.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.i.i, !dbg !24260, !prof !4872

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.i.i: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.i.i
  %i.ac = load ptr, ptr %i.u, align 8, !dbg !24262, !noalias !24174, !nonnull !3744, !noundef !3744 ; 2 uses
    #dbg_value(i64 %i.z, !24158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23834)
    #dbg_value(ptr %i.ac, !24158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23834)
    #dbg_value(ptr poison, !24162, !DIExpression(), !23835)
  %i.ad = icmp ule i64 %i.w, %i.z, !dbg !24263
    #dbg_value(i1 true, !24175, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23838)
  tail call void @llvm.assume(i1 %i.ad), !dbg !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24265, !noalias !24174
    #dbg_value(i64 %i.z, !24147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23839)
    #dbg_value(ptr %i.ac, !24147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23839)
    #dbg_value(i64 0, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24167, !DIExpression(), !23823)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !24171, !DIExpression(), !23826)
    #dbg_value(ptr %i.ac, !24168, !DIExpression(), !23823)
    #dbg_value(ptr %i.ac, !24172, !DIExpression(), !23826)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %.sroa.0.1.i.i.us.i.i, i64 %i.w, i1 false), !dbg !24266, !noalias !24208
    #dbg_value(i64 poison, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
    #dbg_value(i64 %i.z, !24177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23842)
    #dbg_value(i64 %i.z, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(i64 %i.z, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(ptr %i.ac, !24177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23842)
    #dbg_value(ptr %i.ac, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(ptr %i.ac, !24198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(i64 poison, !24177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23842)
    #dbg_value(i64 poison, !24188, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23845)
    #dbg_value(i64 poison, !24198, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23849)
    #dbg_value(ptr poison, !24182, !DIExpression(DW_OP_deref), !23850)
    #dbg_declare(ptr poison, !24181, !DIExpression(), !23851)
    #dbg_value(ptr poison, !24192, !DIExpression(DW_OP_deref), !23852)
    #dbg_declare(ptr poison, !24193, !DIExpression(), !23853)
    #dbg_value(ptr poison, !24202, !DIExpression(DW_OP_deref), !23854)
    #dbg_declare(ptr %i.a, !24203, !DIExpression(), !23855)
    #dbg_declare(ptr poison, !24204, !DIExpression(), !23856)
    #dbg_value(ptr %i.c, !24023, !DIExpression(), !23857)
    #dbg_value(ptr %i.c, !24013, !DIExpression(), !23858)
  br label %._crit_edge.sink.split.i.i, !dbg !24253

.lr.ph.split.i.i:                                 ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i, %.lr.ph.split.preheader.i.i
  %i.ae = phi i64 [ %i.ba, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i ], [ %.promoted18.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa101617.i.i = phi i64 [ %.lcssa1015.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i ], [ %.promoted14.i.i, %.lr.ph.split.preheader.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24077), !dbg !24256
  call void @llvm.experimental.noalias.scope.decl(metadata !24078), !dbg !24257
    #dbg_value(ptr poison, !24014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23744)
    #dbg_value(i64 poison, !24014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23744)
  call void @llvm.experimental.noalias.scope.decl(metadata !24079), !dbg !24258
    #dbg_value(ptr %i.f, !24068, !DIExpression(), !23745)
    #dbg_value(i64 0, !24030, !DIExpression(), !23753)
    #dbg_value(i64 0, !24099, !DIExpression(), !23756)
    #dbg_value(ptr %.val.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(ptr %.val.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(ptr %.val.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23760)
    #dbg_value(i64 poison, !24050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 poison, !24045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 poison, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23760)
    #dbg_value(i64 %i.ae, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(i64 %i.ae, !24044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(i64 %i.ae, !24029, !DIExpression(), !23761)
    #dbg_value(i64 %i.ae, !24103, !DIExpression(), !23760)
    #dbg_value(i64 %i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 %i.i, !24044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 %i.i, !24028, !DIExpression(), !23761)
  %i.af = icmp ult i64 %i.i, %i.ae, !dbg !24254
  br i1 %i.af, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i, !dbg !24254

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i.i = load i8, ptr %i.p, align 1, !dbg !24267, !alias.scope !24025, !noalias !23991 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i, !dbg !24268

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i
  %i.ag = phi i64 [ %i.au, %bb.d ], [ %i.ae, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
    #dbg_value(i64 %i.ag, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
  %i.ah = sub nuw i64 %i.i, %i.ag, !dbg !24269    ; 4 uses
    #dbg_value(i64 %i.ah, !24046, !DIExpression(), !23758)
    #dbg_value(i64 %i.ah, !24104, !DIExpression(), !23760)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ag, !dbg !24270 ; 2 uses
    #dbg_value(ptr %i.ai, !24069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23863)
    #dbg_value(i64 %i.ah, !24069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23863)
    #dbg_value(i8 %.pre.i.i.i.i.i, !24072, !DIExpression(), !23864)
    #dbg_value(i8 %.pre.i.i.i.i.i, !24213, !DIExpression(), !23865)
    #dbg_value(i8 %.pre.i.i.i.i.i, !24218, !DIExpression(), !23869)
    #dbg_value(ptr %i.ai, !24214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23865)
    #dbg_value(ptr %i.ai, !24219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23869)
    #dbg_value(i64 %i.ah, !24214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23865)
    #dbg_value(i64 %i.ah, !24219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23869)
  %i.aj = icmp samesign ult i64 %i.ah, 16, !dbg !24268
  br i1 %i.aj, label %.preheader.i.i.i.i.i.i, label %bb.b, !dbg !24268

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
    #dbg_value(i64 0, !24220, !DIExpression(), !23870)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.ag, !dbg !24271
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !24271

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ak = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %i.ah), !dbg !24272, !noalias !24222 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0, !dbg !24272
  %i.am = extractvalue { i64, i64 } %i.ak, 1, !dbg !24272
    #dbg_value(i64 %i.al, !24215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23872)
    #dbg_value(i64 %i.am, !24215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23872)
  %i.an = trunc nuw i64 %i.al to i1, !dbg !24273
  br i1 %i.an, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, !dbg !24273

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.04.015.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i.i.i, !24220, !DIExpression(), !23870)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.04.015.i.i.i.i.i.i, !dbg !24274
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !24274, !alias.scope !24223, !noalias !24222, !noundef !3744
  %i.aq = icmp eq i8 %i.ap, %.pre.i.i.i.i.i, !dbg !24274
  br i1 %i.aq, label %.loopexit.i.i.i.i.i, label %bb.c, !dbg !24274

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ar = add nuw nsw i64 %.sroa.04.015.i.i.i.i.i.i, 1, !dbg !24275 ; 2 uses
    #dbg_value(i64 %i.ar, !24220, !DIExpression(), !23870)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ar, %i.ah, !dbg !24271
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !24271

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.am, %bb.b ], [ %.sroa.04.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], !dbg !24276 ; 2 uses
    #dbg_value(i64 1, !24215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23872)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !24215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23872)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !24216, !DIExpression(), !23875)
  %i.as = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.ah, !dbg !24277
    #dbg_value(i1 true, !24224, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23878)
  call void @llvm.assume(i1 %i.as), !dbg !24278
    #dbg_value(i64 1, !24215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23872)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !24215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23872)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !24073, !DIExpression(), !23879)
  %i.at = add i64 %i.ag, 1, !dbg !24279
  %i.au = add i64 %i.at, %.sroa.5.0.i.i.i.i.i.i, !dbg !24280 ; 8 uses
  %.not50.i.i.i.i.i = icmp ult i64 %i.au, %i.m, !dbg !24281
    #dbg_value(!DIArgList(i64 %i.au, i64 %i.m), !24074, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23880)
    #dbg_value(!DIArgList(i64 %i.au, i64 %i.m), !24051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23882)
    #dbg_value(!DIArgList(i64 %i.au, i64 %i.m), !24044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23884)
    #dbg_value(!DIArgList(i64 %i.au, i64 %i.m), !24029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23886)
    #dbg_value(!DIArgList(i64 %i.au, i64 %i.m), !24103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23888)
    #dbg_value(ptr %.val.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23882)
    #dbg_value(ptr %.val.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23884)
    #dbg_value(ptr %.val.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23888)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !24051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23882)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !24044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23884)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !24028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !23886)
    #dbg_value(i64 %.val13.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23882)
    #dbg_value(i64 %.val13.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23884)
    #dbg_value(i64 %.val13.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23888)
    #dbg_value(i64 %i.m, !24046, !DIExpression(), !23884)
    #dbg_value(i64 %i.m, !24104, !DIExpression(), !23888)
  %.not51.i.i.i.i.i = icmp ugt i64 %i.au, %.val13.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not50.i.i.i.i.i, %.not51.i.i.i.i.i, !dbg !24281
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.e, !dbg !24281

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i
    #dbg_value(ptr %.val.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(ptr %.val.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(ptr %.val.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23760)
    #dbg_value(i64 poison, !24050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 poison, !24045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 poison, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23760)
    #dbg_value(i64 %i.au, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23757)
    #dbg_value(i64 %i.au, !24044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23758)
    #dbg_value(i64 %i.au, !24029, !DIExpression(), !23761)
    #dbg_value(i64 %i.au, !24103, !DIExpression(), !23760)
    #dbg_value(i64 %i.i, !24051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 %i.i, !24044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 %i.i, !24028, !DIExpression(), !23761)
  %i.av = icmp ult i64 %i.i, %i.au, !dbg !24254
    #dbg_value(i64 %.val13.i.i.i.i, !24050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23757)
    #dbg_value(i64 %.val13.i.i.i.i, !24045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23758)
    #dbg_value(i64 %.val13.i.i.i.i, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23760)
    #dbg_value(!DIArgList(i64 %i.i, i64 %i.au), !24046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23758)
    #dbg_value(!DIArgList(i64 %i.i, i64 %i.au), !24104, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !23760)
  br i1 %i.av, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !24254

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.aw = sub nuw i64 %i.au, %i.m, !dbg !24282    ; 2 uses
    #dbg_value(i64 %i.aw, !24074, !DIExpression(), !23880)
    #dbg_value(i64 %i.aw, !24051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23882)
    #dbg_value(i64 %i.aw, !24044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23884)
    #dbg_value(i64 %i.aw, !24029, !DIExpression(), !23886)
    #dbg_value(i64 %i.aw, !24103, !DIExpression(), !23888)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.aw), !24075, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23889)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.aw), !24232, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23895)
    #dbg_value(i64 %i.m, !24075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23889)
    #dbg_value(i64 %i.m, !24232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23895)
    #dbg_value(ptr poison, !24236, !DIExpression(), !23896)
    #dbg_value(i64 %i.m, !24028, !DIExpression(), !23753)
    #dbg_value(i64 %i.m, !24104, !DIExpression(), !23756)
    #dbg_value(ptr %i.j, !24102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23756)
    #dbg_value(i64 4, !24102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23756)
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.aw, !dbg !24283
    #dbg_value(ptr %i.ax, !24075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23889)
    #dbg_value(ptr %i.ax, !24232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23895)
    #dbg_value(ptr %i.j, !24233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23895)
    #dbg_value(i64 %i.m, !24233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23895)
    #dbg_value(ptr poison, !24237, !DIExpression(), !23897)
    #dbg_value(i64 %i.m, !24234, !DIExpression(), !23898)
    #dbg_value(i64 %i.m, !24239, !DIExpression(), !23902)
    #dbg_value(i64 %i.m, !24242, !DIExpression(), !23903)
    #dbg_value(ptr %i.ax, !24240, !DIExpression(), !23902)
    #dbg_value(ptr %i.j, !24241, !DIExpression(), !23902)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ax, ptr nonnull %i.j, i64 %i.m), !dbg !24284, !noalias !24244
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !24284
  br i1 %i.ay, label %select.unfold.i.i, label %bb.d, !dbg !24285

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i: ; preds = %bb.d, %bb.b, %.preheader.i.i.i.i.i.i, %bb.c, %.lr.ph.split.i.i
  %i.az = phi i64 [ %i.ae, %.lr.ph.split.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %.preheader.i.i.i.i.i.i ], [ %i.au, %bb.d ]
    #dbg_value(ptr %i.c, !24106, !DIExpression(), !23765)
  store i8 1, ptr %i.d, align 1, !dbg !24286, !alias.scope !24245, !noalias !23991
  %.not.i15.i.i.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.lcssa101617.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i15.i.i.i.i, !dbg !24287
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit, !dbg !24255

select.unfold.i.i:                                ; preds = %bb.e, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i
  %i.ba = phi i64 [ %i.az, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.au, %bb.e ]
  %.lcssa1015.i.i = phi i64 [ %.lcssa101617.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.au, %bb.e ]
  %i.bb = phi i1 [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ false, %bb.e ]
  %.pn.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.aw, %bb.e ] ; 2 uses
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa101617.i.i, !dbg !24288 ; 4 uses
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa101617.i.i, !dbg !24288
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23766)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23766)
    #dbg_value(ptr poison, !24110, !DIExpression(DW_OP_deref), !23769)
    #dbg_declare(ptr poison, !24114, !DIExpression(), !23770)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23769)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23769)
    #dbg_value(ptr poison, !24123, !DIExpression(), !23773)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23773)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23776)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23780)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23781)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23784)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23787)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23773)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23776)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23780)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23781)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23784)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23787)
    #dbg_declare(ptr poison, !24137, !DIExpression(), !23794)
    #dbg_declare(ptr poison, !24144, !DIExpression(), !23799)
    #dbg_declare(ptr poison, !24149, !DIExpression(), !23802)
    #dbg_declare(ptr poison, !24152, !DIExpression(), !23805)
    #dbg_declare(ptr poison, !24155, !DIExpression(), !23810)
    #dbg_value(i64 0, !24161, !DIExpression(), !23813)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23814)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24138, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23816)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23814)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23815)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24138, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23816)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24146, !DIExpression(), !23818)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24150, !DIExpression(), !23819)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24153, !DIExpression(), !23820)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24166, !DIExpression(), !23823)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24170, !DIExpression(), !23826)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24156, !DIExpression(), !23827)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24163, !DIExpression(), !23813)
    #dbg_value(i64 1, !24157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23827)
    #dbg_value(i64 1, !24164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23813)
    #dbg_value(i64 1, !24157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23827)
    #dbg_value(i64 1, !24164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24259, !noalias !24174
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.1.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !24259, !noalias !24246
  %i.bc = load i64, ptr %i.b, align 8, !dbg !24259, !range !4870, !noalias !24174, !noundef !3744
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !24260
  %i.be = load i64, ptr %i.t, align 8, !dbg !24261, !range !4871, !noalias !24174, !noundef !3744 ; 3 uses
  br i1 %i.bd, label %.split.us.i.i, label %bb.f, !dbg !24260, !prof !4872

.split.us.i.i:                                    ; preds = %select.unfold.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.us.i.i
  %.us-phi.i.i = phi i64 [ %i.z, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.i.i ], [ %i.z, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.us.us.us.i.i ], [ %i.be, %select.unfold.i.i ], !dbg !24289
  %i.bf = load i64, ptr %i.u, align 8, !dbg !24289, !noalias !24174
    #dbg_value(i64 %.us-phi.i.i, !24159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23906)
    #dbg_value(i64 %i.bf, !24159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23906)
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi.i.i, i64 %i.bf) #31, !dbg !24290, !noalias !24246
  unreachable, !dbg !24290

bb.f:                                             ; preds = %select.unfold.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !dbg !24262, !noalias !24174, !nonnull !3744, !noundef !3744 ; 2 uses
    #dbg_value(i64 %i.be, !24158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23834)
    #dbg_value(ptr %i.bg, !24158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23834)
    #dbg_value(ptr poison, !24162, !DIExpression(), !23835)
  %i.bh = icmp ule i64 %.sroa.4.1.i.i.i.i, %i.be, !dbg !24263
    #dbg_value(i1 true, !24175, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23838)
  call void @llvm.assume(i1 %i.bh), !dbg !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24265, !noalias !24174
    #dbg_value(i64 %i.be, !24147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23839)
    #dbg_value(ptr %i.bg, !24147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23839)
    #dbg_value(i64 0, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i, %.lcssa101617.i.i, !dbg !24291
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i, label %bb.g, !dbg !24291

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24167, !DIExpression(), !23823)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !24171, !DIExpression(), !23826)
    #dbg_value(ptr %i.bg, !24168, !DIExpression(), !23823)
    #dbg_value(ptr %i.bg, !24172, !DIExpression(), !23826)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %.sroa.0.1.i.i.i.i, i64 %.sroa.4.1.i.i.i.i, i1 false), !dbg !24266, !noalias !24247
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i, !dbg !24292

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i: ; preds = %bb.g, %bb.f
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23839)
    #dbg_value(i64 %i.be, !24177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23842)
    #dbg_value(i64 %i.be, !24188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(i64 %i.be, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(ptr %i.bg, !24177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23842)
    #dbg_value(ptr %i.bg, !24188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(ptr %i.bg, !24198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24177, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23842)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24188, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23845)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !24198, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23849)
    #dbg_value(ptr poison, !24182, !DIExpression(DW_OP_deref), !23850)
    #dbg_declare(ptr poison, !24181, !DIExpression(), !23851)
    #dbg_value(ptr poison, !24192, !DIExpression(DW_OP_deref), !23852)
    #dbg_declare(ptr poison, !24193, !DIExpression(), !23853)
    #dbg_value(ptr poison, !24202, !DIExpression(DW_OP_deref), !23854)
    #dbg_declare(ptr %i.a, !24203, !DIExpression(), !23855)
    #dbg_declare(ptr poison, !24204, !DIExpression(), !23856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24293, !noalias !24248
  store i64 %i.be, ptr %i.a, align 8, !dbg !24293, !noalias !24249
  store ptr %i.bg, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !24293, !noalias !24249
  store i64 %.sroa.4.1.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !dbg !24293, !noalias !24249
  %i.bi = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !24294, !noalias !24250 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24295, !noalias !24248
    #dbg_value(ptr %i.c, !24023, !DIExpression(), !23857)
    #dbg_value(ptr %i.c, !24013, !DIExpression(), !23858)
  br i1 %i.bb, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit, label %.lr.ph.split.i.i, !dbg !24253

._crit_edge.sink.split.i.i:                       ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.us.i.i
  %.sink.i.i = phi ptr [ %i.aa, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.us.i.i ], [ %i.ac, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.us.us.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24293, !noalias !24248
  store i64 %i.z, ptr %i.a, align 8, !dbg !24293, !noalias !24249
  store ptr %.sink.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !dbg !24293, !noalias !24249
  store i64 %i.w, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !dbg !24293, !noalias !24249
  %i.bj = call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !24294, !noalias !24250 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24295, !noalias !24248
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit, !dbg !24296

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1t_9AppConfig9from_clap0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCsexYYUdYSQU6_5alloc6string6StringTB3q_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB4j_7HashSetB3q_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2z_7collect6ExtendB3q_E6extendBN_E0NCINvNvB2v_8for_each4callB42_NCINvXs1i_NtB4l_3mapINtB7b_7HashMapB3q_uB56_EIB5U_B42_E6extendIBO_BN_B4a_EE0E0E0EB1v_.exit: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldReNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMNtCsaTqK2fWTXJW_11qlog_dancer6configNtB1E_9AppConfig9from_clap0NCIB2_BW_TBW_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB34_7HashSetBW_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter5SplitcEB1z_EE0NCINvNvNtNtB4I_8iterator8Iterator8for_each4callB2O_NCINvXs1i_NtB36_3mapINtB71_7HashMapBW_uB3Q_EIB4E_B2O_E6extendIB5l_B5k_B2V_EE0E0E0E0B1G_.exit.i.i, %bb.a, %.lr.ph.split.us.i.i, %._crit_edge.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24297, !noalias !23991
  ret void, !dbg !24298
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_E0ENCINvMB1C_NtB1C_4Rect10split_gridBX_IBO_B11_NCB1v_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5j_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !24303 {
bb.a:
    #dbg_declare(ptr %0, !24411, !DIExpression(), !24417)
    #dbg_declare(ptr poison, !24412, !DIExpression(), !24418)
    #dbg_declare(ptr %1, !24413, !DIExpression(), !24419)
    #dbg_declare(ptr %1, !24420, !DIExpression(), !24432)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24551
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24551, !nonnull !3744, !align !4908, !noundef !3744 ; 3 uses
    #dbg_value(ptr %i.b, !24426, !DIExpression(), !24433)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !24552 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !24434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24442)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24552
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24552 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !24434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24442)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24552
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !24552 ; 3 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !24434, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24442)
    #dbg_value(ptr %i.b, !24434, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24443), !dbg !24553
    #dbg_declare(ptr %0, !24437, !DIExpression(), !24310)
    #dbg_declare(ptr poison, !24438, !DIExpression(), !24311)
  %i.c = load ptr, ptr %0, align 8, !dbg !24554, !alias.scope !24443, !nonnull !3744, !noundef !3744 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24554
  %i.e = load ptr, ptr %i.d, align 8, !dbg !24554, !alias.scope !24443, !nonnull !3744, !noundef !3744 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !24444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24322)
    #dbg_value(i64 %.sroa.4.0.copyload, !24444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24322)
    #dbg_value(ptr %.sroa.5.0.copyload, !24444, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24322)
    #dbg_value(ptr %i.b, !24444, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24322)
    #dbg_value(ptr poison, !24444, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24322)
    #dbg_value(ptr %i.c, !24450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24323)
    #dbg_value(ptr %i.e, !24450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24323)
    #dbg_declare(ptr poison, !24451, !DIExpression(), !24324)
    #dbg_declare(ptr poison, !24454, !DIExpression(), !24325)
    #dbg_value(i64 4, !24462, !DIExpression(), !24333)
    #dbg_value(i64 1, !24472, !DIExpression(), !24336)
    #dbg_value(ptr %i.e, !24453, !DIExpression(), !24337)
    #dbg_value(ptr poison, !24475, !DIExpression(), !24340)
    #dbg_value(ptr poison, !24476, !DIExpression(), !24341)
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !24555
  br i1 %i.f, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !24556

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !24455, !DIExpression(), !24342)
    #dbg_value(i64 0, !24473, !DIExpression(), !24336)
    #dbg_value(ptr %i.e, !24458, !DIExpression(), !24343)
    #dbg_value(ptr %i.e, !24469, !DIExpression(), !24344)
    #dbg_value(ptr %i.c, !24470, !DIExpression(), !24344)
    #dbg_value(ptr %i.e, !24466, !DIExpression(), !24345)
    #dbg_value(ptr %i.c, !24467, !DIExpression(), !24345)
    #dbg_value(ptr %i.c, !24464, !DIExpression(), !24346)
    #dbg_value(ptr %i.e, !24463, !DIExpression(), !24346)
  %i.g = ptrtoint ptr %i.e to i64, !dbg !24557
  %i.h = ptrtoint ptr %i.c to i64, !dbg !24557
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !24557      ; 3 uses
  %i.j = lshr exact i64 %i.i, 2, !dbg !24557      ; 2 uses
    #dbg_value(i64 %i.j, !24456, !DIExpression(), !24347)
  %i.k = icmp eq i64 %i.i, 4, !dbg !24558
  br i1 %i.k, label %.epil.preheader, label %.new, !dbg !24558

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.j, 4611686018427387902, !dbg !24558
  br label %bb.c, !dbg !24558

bb.c:                                             ; preds = %bb.c, %.new
  %i.l = phi i64 [ %.sroa.4.0.copyload, %.new ], [ %i.y, %bb.c ], !dbg !24559 ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %.new ], [ %i.z, %bb.c ], !dbg !24560 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
    #dbg_value(i64 %.sroa.01.0.i.i, !24473, !DIExpression(), !24336)
    #dbg_value(i64 %.sroa.01.0.i.i, !24455, !DIExpression(), !24342)
    #dbg_value(ptr %i.c, !24478, !DIExpression(), !24350)
    #dbg_value(i64 %.sroa.01.0.i.i, !24479, !DIExpression(), !24350)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !24559
  %.val27.i.i = load i32, ptr %i.m, align 4, !dbg !24561, !noalias !24481, !noundef !3744
    #dbg_value(ptr poison, !24482, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24356)
    #dbg_value(ptr poison, !24488, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24356)
    #dbg_declare(ptr poison, !24486, !DIExpression(), !24357)
    #dbg_value(ptr poison, !24487, !DIExpression(), !24356)
    #dbg_value(ptr poison, !24493, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24360)
    #dbg_value(ptr poison, !24499, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24360)
    #dbg_declare(ptr poison, !24497, !DIExpression(), !24361)
    #dbg_value(i32 %.val27.i.i, !24498, !DIExpression(), !24360)
    #dbg_value(ptr poison, !24501, !DIExpression(DW_OP_deref, DW_OP_deref), !24364)
    #dbg_value(i32 %.val27.i.i, !24505, !DIExpression(), !24364)
  %i.n = load ptr, ptr %i.b, align 8, !dbg !24562, !noalias !24507, !nonnull !3744, !align !10455, !noundef !3744
  %i.o = load i32, ptr %i.n, align 4, !dbg !24562, !noalias !24507, !noundef !3744
  %i.p = add i32 %i.o, %.val27.i.i, !dbg !24563
    #dbg_value(ptr poison, !24508, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24371)
    #dbg_declare(ptr poison, !24513, !DIExpression(), !24372)
    #dbg_value(i32 %i.p, !24512, !DIExpression(), !24371)
    #dbg_value(ptr poison, !24517, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24375)
    #dbg_value(ptr poison, !24522, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24375)
    #dbg_value(i32 %i.p, !24521, !DIExpression(), !24375)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24564
  store i32 %i.p, ptr %i.q, align 4, !dbg !24565, !noalias !24526
    #dbg_value(i64 %.sroa.01.0.i.i, !24455, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24342)
    #dbg_value(i64 %.sroa.01.0.i.i, !24473, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24336)
    #dbg_value(i64 %.sroa.01.0.i.i, !24479, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24350)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !24559
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !24559
  %.val27.i.i.1 = load i32, ptr %i.s, align 4, !dbg !24561, !noalias !24481, !noundef !3744
    #dbg_declare(ptr poison, !24486, !DIExpression(), !24357)
    #dbg_declare(ptr poison, !24497, !DIExpression(), !24361)
    #dbg_value(i32 %.val27.i.i.1, !24498, !DIExpression(), !24360)
    #dbg_value(i32 %.val27.i.i.1, !24505, !DIExpression(), !24364)
  %i.t = load ptr, ptr %i.b, align 8, !dbg !24562, !noalias !24507, !nonnull !3744, !align !10455, !noundef !3744
  %i.u = load i32, ptr %i.t, align 4, !dbg !24562, !noalias !24507, !noundef !3744
  %i.v = add i32 %i.u, %.val27.i.i.1, !dbg !24563
    #dbg_declare(ptr poison, !24513, !DIExpression(), !24372)
    #dbg_value(i32 %i.v, !24512, !DIExpression(), !24371)
    #dbg_value(i32 %i.v, !24521, !DIExpression(), !24375)
  %i.w = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24564
  %i.x = getelementptr i8, ptr %i.w, i64 4, !dbg !24564
  store i32 %i.v, ptr %i.x, align 4, !dbg !24565, !noalias !24526
  %i.y = add i64 %i.l, 2, !dbg !24566             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.i, 2, !dbg !24567 ; 2 uses
    #dbg_value(i64 %i.z, !24455, !DIExpression(), !24342)
    #dbg_value(i64 %i.z, !24473, !DIExpression(), !24336)
  %niter.next.1 = add i64 %niter, 2, !dbg !24568  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !24568
  br i1 %niter.ncmp.1, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.c, !dbg !24568

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.aa = and i64 %i.i, 4, !dbg !24568
  %lcmp.mod.not = icmp eq i64 %i.aa, 0, !dbg !24568
  br i1 %lcmp.mod.not, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !24568

.epil.preheader:                                  ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.y, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.z, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !24568
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !24568
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24473, !DIExpression(), !24336)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24455, !DIExpression(), !24342)
    #dbg_value(ptr %i.c, !24478, !DIExpression(), !24350)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24479, !DIExpression(), !24350)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.epil.init, !dbg !24559
  %.val27.i.i.epil = load i32, ptr %i.ab, align 4, !dbg !24561, !noalias !24481, !noundef !3744
    #dbg_value(ptr poison, !24482, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24356)
    #dbg_value(ptr poison, !24488, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24356)
    #dbg_declare(ptr poison, !24486, !DIExpression(), !24357)
    #dbg_value(ptr poison, !24487, !DIExpression(), !24356)
    #dbg_value(ptr poison, !24493, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24360)
    #dbg_value(ptr poison, !24499, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24360)
    #dbg_declare(ptr poison, !24497, !DIExpression(), !24361)
    #dbg_value(i32 %.val27.i.i.epil, !24498, !DIExpression(), !24360)
    #dbg_value(ptr poison, !24501, !DIExpression(DW_OP_deref, DW_OP_deref), !24364)
    #dbg_value(i32 %.val27.i.i.epil, !24505, !DIExpression(), !24364)
  %i.ac = load ptr, ptr %i.b, align 8, !dbg !24562, !noalias !24507, !nonnull !3744, !align !10455, !noundef !3744
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !24562, !noalias !24507, !noundef !3744
  %i.ae = add i32 %i.ad, %.val27.i.i.epil, !dbg !24563
    #dbg_value(ptr poison, !24508, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24371)
    #dbg_declare(ptr poison, !24513, !DIExpression(), !24372)
    #dbg_value(i32 %i.ae, !24512, !DIExpression(), !24371)
    #dbg_value(ptr poison, !24517, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24375)
    #dbg_value(ptr poison, !24522, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24375)
    #dbg_value(i32 %i.ae, !24521, !DIExpression(), !24375)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.epil.init, !dbg !24564
  store i32 %i.ae, ptr %i.af, align 4, !dbg !24565, !noalias !24526
  %i.ag = add i64 %.epil.init, 1, !dbg !24566
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24455, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24342)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24473, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24336)
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.y, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.ag, %.epil.preheader ], !dbg !24569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !24569, !noalias !24481
  ret void, !dbg !24570
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_Es_0ENCINvMB1C_NtB1C_4Rect10split_gridIBO_B11_NCB1v_0EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5l_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6y_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !24575 {
bb.a:
    #dbg_declare(ptr %0, !24683, !DIExpression(), !24689)
    #dbg_declare(ptr poison, !24684, !DIExpression(), !24690)
    #dbg_declare(ptr %1, !24685, !DIExpression(), !24691)
    #dbg_declare(ptr %1, !24692, !DIExpression(), !24704)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24823
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24823, !nonnull !3744, !align !4908, !noundef !3744 ; 3 uses
    #dbg_value(ptr %i.b, !24698, !DIExpression(), !24705)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !24824 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !24706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24714)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24824
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24824 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !24706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24714)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24824
end_hunk_0
begin_hunk_1_@llvm.ceil.v4f64
!24051 = !DILocalVariable(name: "index", scope: !23727, file: !10271, line: 572, type: !2027, align: 64)
!24052 = !{!24050, !24051}
!24053 = !{!3745, !10890}
!24054 = !DIFile(filename: "library/core/src/str/pattern.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "632653a389978f6c4fa6825de87add57")
!24055 = !DINamespace(name: "{impl#1}", scope: !10919)
!24056 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::CharSearcher", baseType: !23682, size: 64, align: 64, dwarfAddressSpace: 0)
!24057 = !{!23731, !24056}
!24058 = !DISubroutineType(types: !24057)
!24059 = !{!23730}
!24060 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !23730, file: !3148, baseType: !23729, size: 192, align: 64, extraData: i64 0)
!24061 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !23730, file: !3148, baseType: !23728, size: 192, align: 64, extraData: i64 1)
!24062 = !{!24060, !24061}
!24063 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !23728, file: !3148, baseType: !2030, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!24064 = !{!24063}
!24065 = !DITemplateTypeParameter(name: "T", type: !2030)
!24066 = !{!24065}
!24067 = !DIDerivedType(tag: DW_TAG_member, scope: !23731, file: !3148, baseType: !3339, size: 64, align: 64, flags: DIFlagArtificial)
!24068 = !DILocalVariable(name: "self", arg: 1, scope: !23739, file: !24054, line: 434, type: !24056)
!24069 = !DILocalVariable(name: "bytes", scope: !23738, file: !24054, line: 437, type: !390, align: 64)
!24070 = !DILocalVariable(name: "residual", scope: !23737, file: !24054, line: 437, type: !2034, align: 8)
!24071 = !DILocalVariable(name: "val", scope: !23736, file: !24054, line: 437, type: !390, align: 64)
!24072 = !DILocalVariable(name: "last_byte", scope: !23735, file: !24054, line: 440, type: !3152, align: 8)
!24073 = !DILocalVariable(name: "index", scope: !23734, file: !24054, line: 441, type: !3717, align: 64)
!24074 = !DILocalVariable(name: "found_char", scope: !23733, file: !24054, line: 461, type: !3717, align: 64)
!24075 = !DILocalVariable(name: "slice", scope: !23732, file: !24054, line: 462, type: !390, align: 64)
!24076 = !{!24068, !24069, !24070, !24071, !24072, !24073, !24074, !24075}
!24077 = !{!23709}
!24078 = !{!23711}
!24079 = !{!23720}
!24080 = !{!390, !2027, !390, !4631}
!24081 = !DISubroutineType(types: !24080)
!24082 = !DILocalVariable(name: "self", scope: !23746, file: !10278, line: 405, type: !2027, align: 64)
!24083 = !DILocalVariable(name: "slice", arg: 2, scope: !23746, file: !10278, line: 405, type: !390)
!24084 = !DILocalVariable(name: "new_len", scope: !23746, file: !10278, line: 407, type: !3717, align: 64)
!24085 = !{!24082, !24083, !24084}
!24086 = !{!390, !390, !2027, !4631}
!24087 = !DISubroutineType(types: !24086)
!24088 = !DILocalVariable(name: "self", arg: 1, scope: !23747, file: !10278, line: 18, type: !390)
!24089 = !DILocalVariable(name: "index", scope: !23747, file: !10278, line: 18, type: !2027, align: 64)
!24090 = !{!24088, !24089}
!24091 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "17c3352141fad635318d0774997499cb")
!24092 = !DINamespace(name: "{impl#15}", scope: !10624)
!24093 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 4]", baseType: !10921, size: 64, align: 64, dwarfAddressSpace: 0)
!24094 = !{!390, !24093, !2027, !4631}
!24095 = !DISubroutineType(types: !24094)
!24096 = !DILocalVariable(name: "self", arg: 1, scope: !23748, file: !24091, line: 390, type: !24093)
!24097 = !DILocalVariable(name: "index", scope: !23748, file: !24091, line: 390, type: !2027, align: 64)
!24098 = !{!24096, !24097}
!24099 = !DILocalVariable(name: "offset", scope: !23754, file: !10278, line: 85, type: !3717, align: 64)
!24100 = !{!1894, !1894, !3717, !3717}
!24101 = !DISubroutineType(types: !24100)
!24102 = !DILocalVariable(name: "ptr", arg: 1, scope: !23754, file: !10278, line: 84, type: !390)
!24103 = !DILocalVariable(name: "offset", arg: 2, scope: !23754, file: !10278, line: 85, type: !3717)
!24104 = !DILocalVariable(name: "len", arg: 3, scope: !23754, file: !10278, line: 86, type: !3717)
!24105 = !{!24102, !24103, !24104, !24099}
!24106 = !DILocalVariable(name: "self", arg: 1, scope: !23763, file: !10923, line: 642, type: !24009)
!24107 = !DISubprogram(name: "get_end<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer", scope: !23683, file: !10923, line: 642, type: !24011, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !23963)
!24108 = !DILocalVariable(name: "string", scope: !23762, file: !10923, line: 648, type: !286, align: 64)
!24109 = !{!24106, !24108}
!24110 = !DILocalVariable(name: "g", scope: !23767, file: !10541, line: 86, type: !23688, align: 64)
!24111 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&str, alloc::string::String, (), qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}, core::iter::adapters::map::map_fold::{closure_env#0}<alloc::string::String, (alloc::string::String, ()), (), hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(alloc::string::String, ()), hashbrown::map::{impl#82}::extend::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>, hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>>>>>>", baseType: !23699, size: 64, align: 64, dwarfAddressSpace: 0)
!24112 = !{null, !24111, !3714, !29}
!24113 = !DISubroutineType(cc: DW_CC_nocall, types: !24112)
!24114 = !DILocalVariable(name: "acc", arg: 2, scope: !23767, file: !10541, line: 88, type: !3714)
!24115 = !DILocalVariable(name: "elt", arg: 3, scope: !23767, file: !10541, line: 88, type: !29)
!24116 = !DILocalVariable(name: "f", scope: !23767, file: !10541, line: 85, type: !23681, align: 8)
!24117 = !{!24114, !24115, !24110, !24116}
!24118 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !23681)
!24119 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !23688)
!24120 = !{!4641, !10922, !10670, !24118, !24119}
!24121 = !DIFile(filename: "qlog-dancer/src/config.rs", directory: "/opt-bench/work/quiche-rs/quiche", checksumkind: CSK_MD5, checksum: "c9640fc7008e8bdb0b882e230521a4db")
!24122 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}", baseType: !23681, size: 64, align: 64, dwarfAddressSpace: 0)
!24123 = !DILocalVariable(arg: 1, scope: !23771, file: !24121, line: 310, type: !24122)
!24124 = !{!8, !24122, !29}
!24125 = !DISubroutineType(cc: DW_CC_nocall, types: !24124)
!24126 = !DILocalVariable(name: "v", arg: 2, scope: !23771, file: !24121, line: 310, type: !29)
!24127 = !{!24126, !24123}
!24128 = !DILocalVariable(name: "self", arg: 1, scope: !23774, file: !10343, line: 2947, type: !29)
!24129 = !{!24128}
!24130 = !DILocalVariable(name: "self", arg: 1, scope: !23778, file: !10343, line: 3097, type: !29)
!24131 = !DILocalVariable(name: "s", scope: !23777, file: !10343, line: 3098, type: !29, align: 64)
!24132 = !{!24130, !24131}
!24133 = !DILocalVariable(name: "s", arg: 1, scope: !23782, file: !10343, line: 3167, type: !29)
!24134 = !{!24133}
!24135 = !DILocalVariable(name: "self", arg: 1, scope: !23785, file: !10354, line: 250, type: !29)
!24136 = !{!24135}
!24137 = !DILocalVariable(name: "alloc", scope: !23788, file: !4829, line: 396, type: !1, align: 8)
!24138 = !DILocalVariable(name: "self", arg: 1, scope: !23788, file: !4829, line: 396, type: !390)
!24139 = !{!24138, !24137}
!24140 = !DILocalVariable(name: "self", arg: 1, scope: !23789, file: !4829, line: 372, type: !390)
!24141 = !{!24140}
!24142 = !DILocalVariable(name: "self", arg: 1, scope: !23790, file: !4829, line: 838, type: !390)
!24143 = !{!24142}
!24144 = !DILocalVariable(name: "alloc", scope: !23797, file: !4829, line: 446, type: !1, align: 8)
!24145 = !DILocalVariable(name: "s", arg: 1, scope: !23797, file: !4829, line: 446, type: !390)
!24146 = !DILocalVariable(name: "len", scope: !23796, file: !4829, line: 447, type: !3717, align: 64)
!24147 = !DILocalVariable(name: "v", scope: !23795, file: !4829, line: 448, type: !7, align: 64)
!24148 = !{!24145, !24144, !24146, !24147}
!24149 = !DILocalVariable(name: "alloc", scope: !23800, file: !4841, line: 968, type: !1, align: 8)
!24150 = !DILocalVariable(name: "capacity", arg: 1, scope: !23800, file: !4841, line: 968, type: !3717)
!24151 = !{!24150, !24149}
!24152 = !DILocalVariable(name: "alloc", scope: !23803, file: !4842, line: 175, type: !1, align: 8)
!24153 = !DILocalVariable(name: "capacity", arg: 1, scope: !23803, file: !4842, line: 175, type: !3717)
!24154 = !{!24153, !24152}
!24155 = !DILocalVariable(name: "alloc", scope: !23808, file: !4842, line: 434, type: !1, align: 8)
!24156 = !DILocalVariable(name: "capacity", arg: 1, scope: !23808, file: !4842, line: 434, type: !3717)
!24157 = !DILocalVariable(name: "elem_layout", arg: 3, scope: !23808, file: !4842, line: 434, type: !344)
!24158 = !DILocalVariable(name: "this", scope: !23807, file: !4842, line: 436, type: !5, align: 64)
!24159 = !DILocalVariable(name: "err", scope: !23806, file: !4842, line: 443, type: !349, align: 64)
!24160 = !{!24156, !24155, !24157, !24158, !24159}
!24161 = !DILocalVariable(name: "len", scope: !23811, file: !4842, line: 763, type: !3717, align: 64)
!24162 = !DILocalVariable(name: "self", arg: 1, scope: !23811, file: !4842, line: 763, type: !4864)
!24163 = !DILocalVariable(name: "additional", arg: 3, scope: !23811, file: !4842, line: 763, type: !3717)
!24164 = !DILocalVariable(name: "elem_layout", arg: 4, scope: !23811, file: !4842, line: 763, type: !344)
!24165 = !{!24162, !24161, !24163, !24164}
!24166 = !DILocalVariable(name: "count", arg: 3, scope: !23821, file: !4690, line: 1231, type: !3717)
!24167 = !DILocalVariable(name: "self", arg: 1, scope: !23821, file: !4690, line: 1231, type: !3761)
!24168 = !DILocalVariable(name: "dest", arg: 2, scope: !23821, file: !4690, line: 1231, type: !6344)
!24169 = !{!24167, !24168, !24166}
!24170 = !DILocalVariable(name: "count", arg: 3, scope: !23824, file: !4869, line: 553, type: !3717)
!24171 = !DILocalVariable(name: "src", arg: 1, scope: !23824, file: !4869, line: 553, type: !3761)
!24172 = !DILocalVariable(name: "dst", arg: 2, scope: !23824, file: !4869, line: 553, type: !6344)
!24173 = !{!24171, !24172, !24170}
!24174 = !{!23833, !23832, !23830, !23698, !23828, !23696, !23695}
!24175 = !DILocalVariable(name: "cond", arg: 1, scope: !23836, file: !4874, line: 202, type: !4275)
!24176 = !{!24175}
!24177 = !DILocalVariable(name: "elt", arg: 3, scope: !23840, file: !10541, line: 88, type: !8)
!24178 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<alloc::string::String, (alloc::string::String, ()), (), hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(alloc::string::String, ()), hashbrown::map::{impl#82}::extend::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>, hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>>>>>", baseType: !23688, size: 64, align: 64, dwarfAddressSpace: 0)
!24179 = !{null, !24178, !3714, !8}
!24180 = !DISubroutineType(cc: DW_CC_nocall, types: !24179)
!24181 = !DILocalVariable(name: "acc", arg: 2, scope: !23840, file: !10541, line: 88, type: !3714)
!24182 = !DILocalVariable(name: "g", scope: !23840, file: !10541, line: 86, type: !23679, align: 64)
!24183 = !DILocalVariable(name: "f", scope: !23840, file: !10541, line: 85, type: !23680, align: 8)
!24184 = !{!24181, !24177, !24182, !24183}
!24185 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !23680)
!24186 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !23679)
!24187 = !{!4803, !23974, !10670, !24185, !24186}
!24188 = !DILocalVariable(name: "item", arg: 3, scope: !23843, file: !10604, line: 884, type: !23674)
!24189 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(alloc::string::String, ()), hashbrown::map::{impl#82}::extend::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>, hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>>>>", baseType: !23679, size: 64, align: 64, dwarfAddressSpace: 0)
!24190 = !{null, !24189, !3714, !23674}
!24191 = !DISubroutineType(cc: DW_CC_nocall, types: !24190)
!24192 = !DILocalVariable(name: "f", scope: !23843, file: !10604, line: 883, type: !23678, align: 64)
!24193 = !DILocalVariable(arg: 2, scope: !23843, file: !10604, line: 884, type: !3714)
!24194 = !{!24188, !24192, !24193}
!24195 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !23678)
!24196 = !{!23929, !24195}
!24197 = !DIFile(filename: "src/map.rs", directory: "/rust/deps/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "5f064d32fe496a8ef319526599241068")
!24198 = !DILocalVariable(arg: 2, scope: !23847, file: !24197, line: 4879, type: !23674)
!24199 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::map::{impl#82}::extend::{closure_env#0}<alloc::string::String, (), std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>, hashbrown::set::{impl#10}::extend::{closure_env#0}<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global, core::iter::adapters::map::Map<core::str::iter::Split<char>, qlog_dancer::config::{impl#0}::from_clap::{closure_env#0}>>>>", baseType: !23678, size: 64, align: 64, dwarfAddressSpace: 0)
!24200 = !{null, !24199, !23674}
!24201 = !DISubroutineType(cc: DW_CC_nocall, types: !24200)
!24202 = !DILocalVariable(name: "self", scope: !23847, file: !24197, line: 4867, type: !23919, align: 64)
!24203 = !DILocalVariable(name: "k", scope: !23846, file: !24197, line: 4879, type: !8, align: 64)
!24204 = !DILocalVariable(name: "v", scope: !23846, file: !24197, line: 4879, type: !3714, align: 8)
!24205 = !{!24202, !24203, !24204, !24198}
!24206 = !DITemplateTypeParameter(name: "T", type: !23686)
!24207 = !{!10914, !10915, !7832, !3764, !24206}
!24208 = !{!23833, !23698, !23828, !23696, !23695}
!24209 = !DIFile(filename: "library/core/src/slice/memchr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90719a3fdf4b8ba29bc25ba24da39686")
!24210 = !DINamespace(name: "memchr", scope: !4394)
!24211 = !{!302, !3152, !390}
!24212 = !DISubroutineType(types: !24211)
!24213 = !DILocalVariable(name: "x", arg: 1, scope: !23861, file: !24209, line: 25, type: !3152)
!24214 = !DILocalVariable(name: "text", arg: 2, scope: !23861, file: !24209, line: 25, type: !390)
!24215 = !DILocalVariable(name: "result", scope: !23860, file: !24209, line: 27, type: !302, align: 64)
!24216 = !DILocalVariable(name: "index", scope: !23859, file: !24209, line: 29, type: !3717, align: 64)
!24217 = !{!24213, !24214, !24215, !24216}
!24218 = !DILocalVariable(name: "x", arg: 1, scope: !23867, file: !24209, line: 37, type: !3152)
!24219 = !DILocalVariable(name: "text", arg: 2, scope: !23867, file: !24209, line: 37, type: !390)
!24220 = !DILocalVariable(name: "i", scope: !23866, file: !24209, line: 38, type: !3717, align: 64)
!24221 = !{!24218, !24219, !24220}
!24222 = !{!23871, !23720, !23711, !23709, !23698, !23696}
!24223 = !{!23874}
!24224 = !DILocalVariable(name: "cond", arg: 1, scope: !23876, file: !4874, line: 202, type: !4275)
!24225 = !{!24224}
!24227 = !DILexicalBlockFile(scope: !23727, file: !10271, discriminator: 2)
!24228 = !DILexicalBlockFile(scope: !23726, file: !10278, discriminator: 2)
!24232 = !DILocalVariable(name: "self", arg: 1, scope: !23891, file: !10938, line: 19, type: !390)
!24233 = !DILocalVariable(name: "other", arg: 2, scope: !23891, file: !10938, line: 19, type: !1894)
!24234 = !DILocalVariable(name: "len", scope: !23890, file: !10938, line: 20, type: !3717, align: 64)
!24235 = !{!24232, !24233, !24234}
!24236 = !DILocalVariable(name: "self", arg: 1, scope: !23892, file: !10410, line: 2398, type: !10946)
!24237 = !DILocalVariable(name: "other", arg: 2, scope: !23892, file: !10410, line: 2398, type: !10946)
!24238 = !{!24236, !24237}
!24239 = !DILocalVariable(name: "len", arg: 3, scope: !23900, file: !10938, line: 151, type: !3717)
!24240 = !DILocalVariable(name: "lhs", arg: 1, scope: !23900, file: !10938, line: 151, type: !3761)
!24241 = !DILocalVariable(name: "rhs", arg: 2, scope: !23900, file: !10938, line: 151, type: !3761)
!24242 = !DILocalVariable(name: "size", scope: !23899, file: !10938, line: 156, type: !3717, align: 64)
!24243 = !{!24240, !24241, !24239, !24242}
!24244 = !{!23871, !23696}
!24245 = !{!23905, !23711, !23709, !23698}
!24246 = !{!23833, !23832, !23830, !23698, !23696}
!24247 = !{!23833, !23698, !23696}
!24248 = !{!23912, !23910, !23908, !23830, !23698, !23828, !23696, !23695}
!24249 = !{!23830, !23698, !23828, !23696, !23695}
!24250 = !{!23912, !23910, !23908, !23830, !23698, !23696}
!24251 = !DILocation(line: 128, column: 9, scope: !23689, inlinedAt: !23690)
!24252 = !DILocation(line: 128, column: 19, scope: !23689, inlinedAt: !23690)
!24253 = !DILocation(line: 658, column: 12, scope: !23715, inlinedAt: !23718)
!24254 = !DILocation(line: 1122, column: 16, scope: !23721, inlinedAt: !23743)
!24255 = !DILocation(line: 670, column: 26, scope: !23714, inlinedAt: !23718)
!24256 = !DILocation(line: 2666, column: 34, scope: !23700, inlinedAt: !23703)
!24257 = !DILocation(line: 512, column: 24, scope: !23716, inlinedAt: !23717)
!24258 = !DILocation(line: 663, column: 28, scope: !23714, inlinedAt: !23718)
!24259 = !DILocation(line: 435, column: 15, scope: !23808, inlinedAt: !23809)
!24260 = !DILocation(line: 435, column: 9, scope: !23808, inlinedAt: !23809)
!24261 = !DILocation(line: 0, scope: !23808, inlinedAt: !23809)
!24262 = !DILocation(line: 436, column: 16, scope: !23808, inlinedAt: !23809)
!24263 = !DILocation(line: 764, column: 9, scope: !23811, inlinedAt: !23812)
!24264 = !DILocation(line: 210, column: 9, scope: !23836, inlinedAt: !23837)
!24265 = !DILocation(line: 444, column: 9, scope: !23808, inlinedAt: !23809)
!24266 = !DILocation(line: 574, column: 14, scope: !23824, inlinedAt: !23825)
!24267 = !DILocation(line: 440, column: 38, scope: !23738, inlinedAt: !23740)
!24268 = !DILocation(line: 28, column: 12, scope: !23861, inlinedAt: !23862)
!24269 = !DILocation(line: 1126, column: 31, scope: !23721, inlinedAt: !23743)
!24270 = !DILocation(line: 90, column: 24, scope: !23754, inlinedAt: !23759)
!24271 = !DILocation(line: 41, column: 11, scope: !23866, inlinedAt: !23868)
!24272 = !DILocation(line: 28, column: 74, scope: !23861, inlinedAt: !23862)
!24273 = !DILocation(line: 29, column: 12, scope: !23859, inlinedAt: !23862)
!24274 = !DILocation(line: 42, column: 12, scope: !23866, inlinedAt: !23868)
!24275 = !DILocation(line: 46, column: 9, scope: !23866, inlinedAt: !23868)
!24276 = !DILocation(line: 28, scope: !23861, inlinedAt: !23862)
!24277 = !DILocation(line: 31, column: 48, scope: !23859, inlinedAt: !23862)
!24278 = !DILocation(line: 210, column: 9, scope: !23876, inlinedAt: !23877)
!24279 = !DILocation(line: 459, column: 32, scope: !23734, inlinedAt: !23740)
!24280 = !DILocation(line: 459, column: 17, scope: !23734, inlinedAt: !23740)
!24281 = !DILocation(line: 460, column: 20, scope: !23734, inlinedAt: !23740)
!24282 = !DILocation(line: 461, column: 38, scope: !23734, inlinedAt: !23740)
!24283 = !DILocation(line: 90, column: 24, scope: !23754, inlinedAt: !23887)
!24284 = !DILocation(line: 157, column: 13, scope: !23899, inlinedAt: !23901)
!24285 = !DILocation(line: 463, column: 28, scope: !23732, inlinedAt: !23740)
!24286 = !DILocation(line: 644, column: 13, scope: !23763, inlinedAt: !23764)
!24287 = !DILocation(line: 646, column: 16, scope: !23763, inlinedAt: !23764)
!24288 = !DILocation(line: 0, scope: !23714, inlinedAt: !23718)
!24289 = !DILocation(line: 443, column: 17, scope: !23808, inlinedAt: !23809)
!24290 = !DILocation(line: 443, column: 25, scope: !23806, inlinedAt: !23809)
!24291 = !DILocation(line: 452, column: 20, scope: !23795, inlinedAt: !23798)
!24292 = !DILocation(line: 452, column: 17, scope: !23795, inlinedAt: !23798)
!24293 = !DILocation(line: 4879, column: 30, scope: !23847, inlinedAt: !23848)
!24294 = !DILocation(line: 4880, column: 18, scope: !23846, inlinedAt: !23848)
!24295 = !DILocation(line: 4881, column: 9, scope: !23847, inlinedAt: !23848)
!24296 = !DILocation(line: 2670, column: 6, scope: !23702, inlinedAt: !23703)
!24297 = !DILocation(line: 128, column: 49, scope: !23689, inlinedAt: !23690)
!24298 = !DILocation(line: 129, column: 6, scope: !23687)
!24299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>", scope: !10613, file: !3148, size: 192, align: 64, elements: !24402, templateParams: !3744, identifier: "54b21cb2459c349434478a260bdba6fb")
!24300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>", scope: !10611, file: !3148, size: 192, align: 64, elements: !24399, templateParams: !3744, identifier: "79f90c6e05a46ac9a02ba9f984846285")
!24301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>", scope: !10960, file: !3148, size: 64, align: 64, elements: !24407, templateParams: !3744, identifier: "f4087a582398633da7072421fb205a5")
!24302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>", scope: !4212, file: !3148, size: 256, align: 64, flags: DIFlagPublic, elements: !24405, templateParams: !24410, identifier: "38dffdda4b03b7edd156c69b1878d166")
!24303 = distinct !DISubprogram(name: "fold<i32, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_E0ENCINvMB1C_NtB1C_4Rect10split_gridBX_IBO_B11_NCB1v_s_0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5j_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !24397, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24416, retainedNodes: !24414)
!24304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", scope: !10896, file: !3148, size: 256, align: 64, elements: !24425, templateParams: !3744, identifier: "1d931b7eebedd0737d0e9f287da968a4")
!24305 = distinct !DISubprogram(name: "map_fold<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldlluNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB11_4Rect10split_gridINtB2_3MapINtNtNtB8_5slice4iter4IterlENCINvMs7_B11_INtB11_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB15_5coord5ShiftE20split_by_breakpointsllRSlB4P_E0EIB23_B2c_NCB2G_s_0EE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VeclE14extend_trustedIB23_B22_BV_EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !4212, file: !10541, line: 84, type: !24422, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24430, retainedNodes: !24427)
!24306 = distinct !DISubprogram(name: "fold<i32, core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, (), core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !24436, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24441, retainedNodes: !24439)
!24307 = distinct !DILocation(line: 128, column: 19, scope: !24303)
!24308 = distinct !{!24308, i1 true, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!24309 = distinct !{!24309, !24308, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24310 = distinct !DILocation(line: 124, column: 21, scope: !24306, inlinedAt: !24307)
!24311 = distinct !DILocation(line: 124, column: 27, scope: !24306, inlinedAt: !24307)
!24312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", scope: !10896, file: !3148, size: 320, align: 64, elements: !24447, templateParams: !3744, identifier: "d6fdf423b9e7cd64aa63266882b59b4")
!24313 = distinct !DILexicalBlock(scope: !24316, file: !10269, line: 33, column: 13)
!24314 = distinct !DILexicalBlock(scope: !24316, file: !10269, line: 29, column: 13)
!24315 = distinct !DILexicalBlock(scope: !24316, file: !10269, line: 270, column: 17)
!24316 = distinct !DILexicalBlock(scope: !24317, file: !10269, line: 269, column: 17)
!24317 = distinct !DILexicalBlock(scope: !24320, file: !10269, line: 268, column: 17)
!24318 = distinct !DILexicalBlock(scope: !24320, file: !10269, line: 33, column: 13)
!24319 = distinct !DILexicalBlock(scope: !24320, file: !10269, line: 29, column: 13)
!24320 = distinct !DISubprogram(name: "fold<i32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>>", linkageName: "_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2o_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2s_5coord5ShiftE20split_by_breakpointsllRSlB50_E0NCIB1G_lluNCINvMB2o_NtB2o_4Rect10split_gridINtB1I_3MapBF_B2f_EIB5R_BF_NCB2h_s_0EE0NCINvNvBS_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB71_3VeclE14extend_trustedIB5R_B5Q_B5j_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10983, file: !10269, line: 254, type: !24449, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24461, retainedNodes: !24459)
!24321 = distinct !DILocation(line: 128, column: 19, scope: !24306, inlinedAt: !24307)
!24322 = distinct !DILocation(line: 0, scope: !24320, inlinedAt: !24321)
!24323 = distinct !DILocation(line: 0, scope: !24320, inlinedAt: !24321)
!24324 = distinct !DILocation(line: 254, column: 33, scope: !24320, inlinedAt: !24321)
!24325 = distinct !DILocation(line: 268, column: 21, scope: !24317, inlinedAt: !24321)
!24326 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !4692, file: !4690, line: 706, type: !10985, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !24465)
!24327 = distinct !DILexicalBlock(scope: !24326, file: !4690, line: 731, column: 9)
!24328 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 888, type: !10987, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !24468)
!24329 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 893, type: !10989, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10990, retainedNodes: !24471)
!24330 = distinct !DILocation(line: 57, column: 30, scope: !24313, inlinedAt: !24321)
!24331 = distinct !DILocation(line: 898, column: 32, scope: !24329, inlinedAt: !24330)
!24332 = distinct !DILocation(line: 893, column: 37, scope: !24328, inlinedAt: !24331)
!24333 = distinct !DILocation(line: 0, scope: !24327, inlinedAt: !24332)
!24334 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !10908, file: !4698, line: 1031, type: !10910, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !24474)
!24335 = distinct !DILocation(line: 278, column: 36, scope: !24315, inlinedAt: !24321)
!24336 = distinct !DILocation(line: 0, scope: !24334, inlinedAt: !24335)
!24337 = distinct !DILocation(line: 0, scope: !24318, inlinedAt: !24321)
!24338 = distinct !DISubprogram(name: "eq<i32>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllENtNtB9_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !10268, file: !7085, line: 1662, type: !10993, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !24477)
!24339 = distinct !DILocation(line: 44, column: 20, scope: !24318, inlinedAt: !24321)
!24340 = distinct !DILocation(line: 1662, column: 11, scope: !24338, inlinedAt: !24339)
!24341 = distinct !DILocation(line: 1662, column: 18, scope: !24338, inlinedAt: !24339)
!24342 = distinct !DILocation(line: 0, scope: !24316, inlinedAt: !24321)
!24343 = distinct !DILocation(line: 0, scope: !24313, inlinedAt: !24321)
!24344 = distinct !DILocation(line: 0, scope: !24329, inlinedAt: !24330)
!24345 = distinct !DILocation(line: 0, scope: !24328, inlinedAt: !24331)
!24346 = distinct !DILocation(line: 0, scope: !24326, inlinedAt: !24332)
!24347 = distinct !DILocation(line: 0, scope: !24315, inlinedAt: !24321)
!24348 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 619, type: !10995, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10996, retainedNodes: !24480)
!24349 = distinct !DILocation(line: 274, column: 67, scope: !24315, inlinedAt: !24321)
!24350 = distinct !DILocation(line: 0, scope: !24348, inlinedAt: !24349)
!24351 = distinct !{!24351, !24308, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridBN_IBO_BX_NCB1r_s_0EE0NCINvNvB4k_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VeclE14extend_trustedIBO_BN_B5i_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 1"}
!24352 = distinct !{!24352, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2o_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2s_5coord5ShiftE20split_by_breakpointsllRSlB50_E0NCIB1G_lluNCINvMB2o_NtB2o_4Rect10split_gridINtB1I_3MapBF_B2f_EIB5R_BF_NCB2h_s_0EE0NCINvNvBS_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB71_3VeclE14extend_trustedIB5R_B5Q_B5j_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!24353 = distinct !{!24353, !24352, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2o_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2s_5coord5ShiftE20split_by_breakpointsllRSlB50_E0NCIB1G_lluNCINvMB2o_NtB2o_4Rect10split_gridINtB1I_3MapBF_B2f_EIB5R_BF_NCB2h_s_0EE0NCINvNvBS_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB71_3VeclE14extend_trustedIB5R_B5Q_B5j_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24354 = distinct !DISubprogram(name: "{closure#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB17_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1b_5coord5ShiftE20split_by_breakpointsllRSlB3J_E0NCIB2_lluNCINvMB17_NtB17_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EIB4z_B4I_NCB10_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6C_3VeclE14extend_trustedIB4z_B4y_B41_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !24485, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24492, retainedNodes: !24489)
!24355 = distinct !DILocation(line: 274, column: 27, scope: !24315, inlinedAt: !24321)
!24356 = distinct !DILocation(line: 0, scope: !24354, inlinedAt: !24355)
!24357 = distinct !DILocation(line: 88, column: 11, scope: !24354, inlinedAt: !24355)
!24358 = distinct !DISubprogram(name: "{closure#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldlluNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB13_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlENCINvMs7_B13_INtB13_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB17_5coord5ShiftE20split_by_breakpointsllRSlB4R_E0EIB25_B2e_NCB2I_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6p_3VeclE14extend_trustedIB25_B24_BX_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !24496, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24430, retainedNodes: !24500)
!24359 = distinct !DILocation(line: 88, column: 21, scope: !24354, inlinedAt: !24355)
!24360 = distinct !DILocation(line: 0, scope: !24358, inlinedAt: !24359)
!24361 = distinct !DILocation(line: 88, column: 11, scope: !24358, inlinedAt: !24359)
!24362 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>", linkageName: "_RNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB5_4Rect10split_gridINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1e_5slice4iter4IterlENCINvMs7_B5_INtB5_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB9_5coord5ShiftE20split_by_breakpointsllRSlB4u_E0EIB16_B1T_NCB2o_s_0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !10960, file: !10565, line: 78, type: !24504, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11000, retainedNodes: !24506)
!24363 = distinct !DILocation(line: 88, column: 28, scope: !24358, inlinedAt: !24359)
!24364 = distinct !DILocation(line: 0, scope: !24362, inlinedAt: !24363)
!24365 = distinct !{!24365, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB17_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1b_5coord5ShiftE20split_by_breakpointsllRSlB3J_E0NCIB2_lluNCINvMB17_NtB17_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EIB4z_B4I_NCB10_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6C_3VeclE14extend_trustedIB4z_B4y_B41_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24366 = distinct !{!24366, !24365, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB17_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1b_5coord5ShiftE20split_by_breakpointsllRSlB3J_E0NCIB2_lluNCINvMB17_NtB17_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlEBY_EIB4z_B4I_NCB10_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6C_3VeclE14extend_trustedIB4z_B4y_B41_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24367 = distinct !{!24367, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldlluNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB13_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlENCINvMs7_B13_INtB13_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB17_5coord5ShiftE20split_by_breakpointsllRSlB4R_E0EIB25_B2e_NCB2I_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6p_3VeclE14extend_trustedIB25_B24_BX_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24368 = distinct !{!24368, !24367, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldlluNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB13_4Rect10split_gridINtB4_3MapINtNtNtBa_5slice4iter4IterlENCINvMs7_B13_INtB13_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB17_5coord5ShiftE20split_by_breakpointsllRSlB4R_E0EIB25_B2e_NCB2I_s_0EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6p_3VeclE14extend_trustedIB25_B24_BX_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24369 = distinct !DISubprogram(name: "{closure#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapIB2j_INtNtNtBe_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB3p_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3t_5coord5ShiftE20split_by_breakpointsllRSlB61_E0ENCINvMB3p_NtB3p_4Rect10split_gridB2J_IB2j_B2O_NCB3i_s_0EE0EE0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10611, file: !10604, line: 884, type: !24511, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24516, retainedNodes: !24514)
!24370 = distinct !DILocation(line: 88, column: 21, scope: !24358, inlinedAt: !24359)
!24371 = distinct !DILocation(line: 0, scope: !24369, inlinedAt: !24370)
!24372 = distinct !DILocation(line: 884, column: 19, scope: !24369, inlinedAt: !24370)
!24373 = distinct !DISubprogram(name: "{closure#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>", linkageName: "_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB11_INtNtNtB19_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2v_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2z_5coord5ShiftE20split_by_breakpointsllRSlB57_E0ENCINvMB2v_NtB2v_4Rect10split_gridB1O_IB11_B1T_NCB2o_s_0EE0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !10613, file: !4841, line: 4134, type: !24520, scopeLine: 4134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24525, retainedNodes: !24523)
!24374 = distinct !DILocation(line: 884, column: 29, scope: !24369, inlinedAt: !24370)
!24375 = distinct !DILocation(line: 0, scope: !24373, inlinedAt: !24374)
!24376 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOl3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 937, type: !11009, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204)
!24377 = distinct !DILocation(line: 4135, column: 36, scope: !24373, inlinedAt: !24374)
!24378 = distinct !{!24378, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapIB2j_INtNtNtBe_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB3p_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3t_5coord5ShiftE20split_by_breakpointsllRSlB61_E0ENCINvMB3p_NtB3p_4Rect10split_gridB2J_IB2j_B2O_NCB3i_s_0EE0EE0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24379 = distinct !{!24379, !24378, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapIB2j_INtNtNtBe_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB3p_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3t_5coord5ShiftE20split_by_breakpointsllRSlB61_E0ENCINvMB3p_NtB3p_4Rect10split_gridB2J_IB2j_B2O_NCB3i_s_0EE0EE0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24380 = distinct !{!24380, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB11_INtNtNtB19_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2v_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2z_5coord5ShiftE20split_by_breakpointsllRSlB57_E0ENCINvMB2v_NtB2v_4Rect10split_gridB1O_IB11_B1T_NCB2o_s_0EE0EE0CsaTqK2fWTXJW_11qlog_dancer"}
!24381 = distinct !{!24381, !24380, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB11_INtNtNtB19_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2v_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2z_5coord5ShiftE20split_by_breakpointsllRSlB57_E0ENCINvMB2v_NtB2v_4Rect10split_gridB1O_IB11_B1T_NCB2o_s_0EE0EE0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24382 = distinct !DISubprogram(name: "write<i32>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writelECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 1941, type: !11011, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204)
!24383 = distinct !DILocation(line: 4135, column: 21, scope: !24373, inlinedAt: !24374)
!24384 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !1958, file: !10705, line: 18, type: !10708, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, declaration: !10709)
!24385 = distinct !DILocation(line: 4139, column: 31, scope: !24373, inlinedAt: !24374)
!24386 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBK_3VeclE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapIB1D_INtNtNtB4_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2Q_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2U_5coord5ShiftE20split_by_breakpointsllRSlB5s_E0ENCINvMB2Q_NtB2Q_4Rect10split_gridB2a_IB1D_B2f_NCB2J_s_0EE0EE0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !24528, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24532, retainedNodes: !24530)
!24387 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1L_3VeclE14extend_trustedINtNtNtBO_8adapters3map3MapIB2F_INtNtNtB4_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB3L_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3P_5coord5ShiftE20split_by_breakpointsllRSlB6n_E0ENCINvMB3L_NtB3L_4Rect10split_gridB35_IB2F_B3a_NCB3E_s_0EE0EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !24534, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24538, retainedNodes: !24536)
!24388 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldlluNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB1p_4Rect10split_gridINtBG_3MapINtNtNtB4_5slice4iter4IterlENCINvMs7_B1p_INtB1p_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1t_5coord5ShiftE20split_by_breakpointsllRSlB5d_E0EIB2r_B2A_NCB34_s_0EE0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6L_3VeclE14extend_trustedIB2r_B2q_B1j_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !24540, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24544, retainedNodes: !24542)
!24389 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRlluNCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1t_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1x_5coord5ShiftE20split_by_breakpointsllRSlB45_E0NCIBE_lluNCINvMB1t_NtB1t_4Rect10split_gridINtBG_3MapINtNtNtB4_5slice4iter4IterlEB1k_EIB4V_B54_NCB1m_s_0EE0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Z_3VeclE14extend_trustedIB4V_B4U_B4n_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !24546, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24550, retainedNodes: !24548)
!24390 = distinct !DILocation(line: 284, column: 13, scope: !24320, inlinedAt: !24321)
!24391 = distinct !DILocation(line: 848, column: 1, scope: !24389, inlinedAt: !24390)
!24392 = distinct !DILocation(line: 848, column: 1, scope: !24388, inlinedAt: !24391)
!24393 = distinct !DILocation(line: 848, column: 1, scope: !24387, inlinedAt: !24392)
!24394 = distinct !DILocation(line: 848, column: 1, scope: !24386, inlinedAt: !24393)
!24395 = distinct !DILocation(line: 848, column: 1, scope: !1973, inlinedAt: !24394)
!24396 = !{null, !24302, !3714, !24300}
!24397 = !DISubroutineType(types: !24396)
!24398 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24300, file: !3148, baseType: !24299, size: 192, align: 64)
!24399 = !{!24398}
!24400 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !24299, file: !3148, baseType: !10958, size: 64, align: 64, offset: 128)
!24401 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !24299, file: !3148, baseType: !1958, size: 128, align: 64)
!24402 = !{!24400, !24401}
!24403 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !24302, file: !3148, baseType: !2039, size: 192, align: 64, flags: DIFlagProtected)
!24404 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24302, file: !3148, baseType: !24301, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!24405 = !{!24403, !24404}
!24406 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self", scope: !24301, file: !3148, baseType: !10962, size: 64, align: 64)
!24407 = !{!24406}
!24408 = !DITemplateTypeParameter(name: "I", type: !2039)
!24409 = !DITemplateTypeParameter(name: "F", type: !24301)
!24410 = !{!24408, !24409}
!24411 = !DILocalVariable(name: "self", arg: 1, scope: !24303, file: !10541, line: 124, type: !24302)
!24412 = !DILocalVariable(name: "init", arg: 2, scope: !24303, file: !10541, line: 124, type: !3714)
!24413 = !DILocalVariable(name: "g", arg: 3, scope: !24303, file: !10541, line: 124, type: !24300)
!24414 = !{!24411, !24412, !24413}
!24415 = !DITemplateTypeParameter(name: "G", type: !24300)
!24416 = !{!10982, !24408, !24409, !10670, !24415}
!24417 = !DILocation(line: 124, column: 21, scope: !24303)
!24418 = !DILocation(line: 124, column: 27, scope: !24303)
!24419 = !DILocation(line: 124, column: 38, scope: !24303)
!24420 = !DILocalVariable(name: "g", arg: 2, scope: !24305, file: !10541, line: 86, type: !24300)
!24421 = !{!24304, !24301, !24300}
!24422 = !DISubroutineType(types: !24421)
!24423 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !24304, file: !3148, baseType: !24300, size: 192, align: 64)
!24424 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24304, file: !3148, baseType: !24301, size: 64, align: 64, offset: 192)
!24425 = !{!24423, !24424}
!24426 = !DILocalVariable(name: "f", arg: 1, scope: !24305, file: !10541, line: 85, type: !24301)
!24427 = !{!24426, !24420}
!24428 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !24301)
!24429 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !24300)
!24430 = !{!10203, !10982, !10670, !24428, !24429}
!24431 = !DILocation(line: 128, column: 30, scope: !24303)
!24432 = !DILocation(line: 86, column: 5, scope: !24305, inlinedAt: !24431)
!24433 = !DILocation(line: 0, scope: !24305, inlinedAt: !24431)
!24434 = !DILocalVariable(name: "g", arg: 3, scope: !24306, file: !10541, line: 124, type: !24304)
!24435 = !{null, !2039, !3714, !24304}
!24436 = !DISubroutineType(types: !24435)
!24437 = !DILocalVariable(name: "self", arg: 1, scope: !24306, file: !10541, line: 124, type: !2039)
!24438 = !DILocalVariable(name: "init", arg: 2, scope: !24306, file: !10541, line: 124, type: !3714)
!24439 = !{!24437, !24438, !24434}
!24440 = !DITemplateTypeParameter(name: "G", type: !24304)
!24441 = !{!10982, !10979, !10980, !10670, !24440}
!24442 = !DILocation(line: 0, scope: !24306, inlinedAt: !24307)
!24443 = !{!24309}
!24444 = !DILocalVariable(name: "f", arg: 3, scope: !24320, file: !10269, line: 254, type: !24312)
!24445 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !24312, file: !3148, baseType: !24304, size: 256, align: 64)
!24446 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24312, file: !3148, baseType: !2035, size: 64, align: 64, offset: 256)
!24447 = !{!24445, !24446}
!24448 = !{null, !2038, !3714, !24312}
!24449 = !DISubroutineType(types: !24448)
!24450 = !DILocalVariable(name: "self", arg: 1, scope: !24320, file: !10269, line: 254, type: !2038)
!24451 = !DILocalVariable(name: "init", arg: 2, scope: !24320, file: !10269, line: 254, type: !3714)
!24452 = !DILocalVariable(name: "len", scope: !24319, file: !10269, line: 29, type: !3717, align: 64)
!24453 = !DILocalVariable(name: "end", scope: !24318, file: !10269, line: 33, type: !2037, align: 64)
!24454 = !DILocalVariable(name: "acc", scope: !24317, file: !10269, line: 268, type: !3714, align: 8)
!24455 = !DILocalVariable(name: "i", scope: !24316, file: !10269, line: 269, type: !3717, align: 64)
!24456 = !DILocalVariable(name: "len", scope: !24315, file: !10269, line: 270, type: !3717, align: 64)
!24457 = !DILocalVariable(name: "len", scope: !24314, file: !10269, line: 29, type: !3717, align: 64)
!24458 = !DILocalVariable(name: "end", scope: !24313, file: !10269, line: 33, type: !2037, align: 64)
!24459 = !{!24450, !24451, !24444, !24452, !24453, !24454, !24455, !24456, !24457, !24458}
!24460 = !DITemplateTypeParameter(name: "F", type: !24312)
!24461 = !{!10203, !10662, !24460}
!24462 = !DILocalVariable(name: "pointee_size", scope: !24327, file: !4690, line: 731, type: !3717, align: 64)
!24463 = !DILocalVariable(name: "self", arg: 1, scope: !24326, file: !4690, line: 706, type: !10971)
!24464 = !DILocalVariable(name: "origin", arg: 2, scope: !24326, file: !4690, line: 706, type: !10971)
!24465 = !{!24463, !24464, !24462}
!24466 = !DILocalVariable(name: "self", arg: 1, scope: !24328, file: !6790, line: 888, type: !10958)
!24467 = !DILocalVariable(name: "origin", arg: 2, scope: !24328, file: !6790, line: 888, type: !10971)
!24468 = !{!24466, !24467}
!24469 = !DILocalVariable(name: "self", arg: 1, scope: !24329, file: !7085, line: 893, type: !2037)
!24470 = !DILocalVariable(name: "subtracted", arg: 2, scope: !24329, file: !7085, line: 893, type: !2037)
!24471 = !{!24469, !24470}
!24472 = !DILocalVariable(name: "rhs", scope: !24334, file: !4698, line: 1031, type: !3717, align: 64)
!24473 = !DILocalVariable(name: "self", arg: 1, scope: !24334, file: !4698, line: 1031, type: !3717)
!24474 = !{!24473, !24472}
!24475 = !DILocalVariable(name: "self", arg: 1, scope: !24338, file: !7085, line: 1662, type: !10991)
!24476 = !DILocalVariable(name: "other", arg: 2, scope: !24338, file: !7085, line: 1662, type: !10991)
!24477 = !{!24475, !24476}
!24478 = !DILocalVariable(name: "self", arg: 1, scope: !24348, file: !7085, line: 619, type: !2037)
!24479 = !DILocalVariable(name: "count", arg: 2, scope: !24348, file: !7085, line: 619, type: !3717)
!24480 = !{!24478, !24479}
!24481 = !{!24353, !24309, !24351}
!24482 = !DILocalVariable(name: "g", scope: !24354, file: !10541, line: 86, type: !24304, align: 64)
!24483 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", baseType: !24312, size: 64, align: 64, dwarfAddressSpace: 0)
!24484 = !{null, !24483, !3714, !10411}
!24485 = !DISubroutineType(cc: DW_CC_nocall, types: !24484)
!24486 = !DILocalVariable(name: "acc", arg: 2, scope: !24354, file: !10541, line: 88, type: !3714)
!24487 = !DILocalVariable(name: "elt", arg: 3, scope: !24354, file: !10541, line: 88, type: !10411)
end_hunk_1
