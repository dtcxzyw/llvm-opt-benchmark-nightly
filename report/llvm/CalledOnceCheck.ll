Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CalledOnceCheck?download=true
inline.NumInlined: 2778
inline.NumDeleted: 1609
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_117CalledOnceChecker5checkEv:bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %bb.am ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !190, !noalias !323
  %.not.i38.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i38.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i, label %_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit580: ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit582: ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit580, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit582, %bb.an, %bb.al, %bb.aj
  %.028.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.et, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit582 ], [ %i.es, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit580 ], [ %i.er, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %.02949.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.eu = icmp eq ptr %i.ef, %.028.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.eu, label %_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i.i.i: ; preds = %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i23
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.ev, %i.dy
  br i1 %.not.i.i.i.i.i.i38, label %_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i, label %.lr.ph.i.i.i.i.i.i23, !llvm.loop !269

_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i: ; preds = %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i, %bb.an, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad
  %.sroa.01.1.i.i.i = phi ptr [ %i.dw, %bb.ad ], [ %i.ev, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i, %bb.an ] ; 2 uses
  %i.ew = load ptr, ptr %.sroa.01.1.i.i.i, align 8, !tbaa !179
  %i.ex = getelementptr i8, ptr %i.ew, i64 48
  %.val12.i.i = load i32, ptr %i.ex, align 8, !tbaa !188
  %i.ey = zext i32 %.val12.i.i to i64
  %i.ez = getelementptr inbounds nuw [48 x i8], ptr %.val11.pre.i.i, i64 %i.ey ; 3 uses
  store ptr %i.cp, ptr %7, align 8, !tbaa !41, !alias.scope !322
  store i32 0, ptr %i.cq, align 8, !tbaa !43, !alias.scope !322
  store i32 2, ptr %i.cr, align 4, !tbaa !42, !alias.scope !322
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !43 ; 5 uses
  %.not.i.i.i.i.i25 = icmp eq i32 %i.fb, 0
  %i.fc = icmp eq ptr %7, %i.ez
  %or.cond.i.i.i.i = or i1 %i.fc, %.not.i.i.i.i.i25
  br i1 %or.cond.i.i.i.i, label %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i
  %i.fd = icmp ugt i32 %i.fb, 2
  br i1 %i.fd, label %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i.i.i.i, label %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i.i.i.i

_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i.i.i.i: ; preds = %bb.ao
  %i.fe = zext i32 %i.fb to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.cp, i64 noundef %i.fe, i64 noundef 16) #16
  %.val41.i.pre.i.i.i.i = load i32, ptr %i.fa, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i19.i.i = icmp eq i32 %.val41.i.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i._ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i._ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i.i.i.i
  %.val.i.i.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !41, !alias.scope !322
  br label %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i.i.i.i

_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i._ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i_crit_edge.i.i.i, %bb.ao
  %.val.i.i.i.i.i = phi ptr [ %.val.i.i.pre.i.i.i, %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i._ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i_crit_edge.i.i.i ], [ %i.cp, %bb.ao ]
  %.val41.i9.i.i.i.i = phi i32 [ %.val41.i.pre.i.i.i.i, %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i._ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i_crit_edge.i.i.i ], [ %i.fb, %bb.ao ]
  %i.ff = zext i32 %.val41.i9.i.i.i.i to i64
  %.val35.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !tbaa !41
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.ff, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i.i.i.i, ptr align 8 %.val35.i.i.i.i.i, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.thread.i.i.i.i, %_ZSt4copyIPKN12_GLOBAL__N_115ParameterStatusEPS1_ET0_T_S6_S5_.exit42.i.i.i.i.i
  store i32 %i.fb, ptr %i.cq, align 8, !tbaa !43, !alias.scope !322
  br label %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i

_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i:         ; preds = %.sink.split.i.i.i.i.i, %_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKN5clang8CFGBlock13AdjacentBlockEEEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS3_EUlSB_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISG_E17iterator_categoryEEESJ_St20forward_iterator_tagE4typeEEEEEOSE_SH_.exit.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i.i.i, i64 16 ; 3 uses
  %.not11.i.i.i.i20.i.i = icmp eq ptr %i.fg, %i.dy
  br i1 %.not11.i.i.i.i20.i.i, label %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i, label %.lr.ph.i.i.i.i21.i.i

.lr.ph.i.i.i.i21.i.i:                             ; preds = %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i
  %.sroa.04.0.i.i.i = phi ptr [ %i.gd, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i ], [ %i.fg, %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i ] ; 5 uses
  %i.fh = load ptr, ptr %.sroa.04.0.i.i.i, align 8, !tbaa !179, !noalias !324 ; 2 uses
  %.not.i.i.i.i.i22.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i22.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i21.i.i
  %.val.i.i.i.i.i23.i.i = load ptr, ptr %i.br, align 8, !tbaa !41, !noalias !325
  %i.fi = getelementptr i8, ptr %i.fh, i64 48
  %.val3.i.i.i.i.i24.i.i = load i32, ptr %i.fi, align 8, !tbaa !188, !noalias !324
  %i.fj = zext i32 %.val3.i.i.i.i.i24.i.i to i64
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i.i.i23.i.i, i64 %i.fj ; 2 uses
  %.val4.i.i.i.i.i25.i.i = load ptr, ptr %i.fk, align 8, !tbaa !41, !noalias !324 ; 4 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %.val5.i.i.i.i.i26.i.i = load i32, ptr %i.fl, align 8, !tbaa !43, !noalias !324 ; 3 uses
  %i.fm = zext i32 %.val5.i.i.i.i.i26.i.i to i64  ; 2 uses
  %.idx1.i.i.i.i.i.i.i27.i.i = shl nuw nsw i64 %i.fm, 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i25.i.i, i64 %.idx1.i.i.i.i.i.i.i27.i.i
  %i.fo = lshr i64 %i.fm, 2                       ; 2 uses
  %.not.i.i.i.i.i.i.i28.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i28.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i29.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i29.i.i:     ; preds = %bb.ap
  %i.fp = and i64 %.idx1.i.i.i.i.i.i.i27.i.i, 68719476672
  %scevgep.i.i.i.i.i.i.i.i.i.i.i30.i.i = getelementptr i8, ptr %.val4.i.i.i.i.i25.i.i, i64 %i.fp
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i:               ; preds = %bb.at, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i29.i.i
  %.050.i.i.i.i.i.i.i.i.i.i.i32.i.i = phi i64 [ %i.fu, %bb.at ], [ %i.fo, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i29.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i = phi ptr [ %i.ft, %bb.at ], [ %.val4.i.i.i.i.i25.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i29.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i.i34.i.i = load i32, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, align 8, !tbaa !190, !noalias !324
  %.not.i.i.i.i.i.i.i.i.i.i.i.i35.i.i = icmp eq i32 %.029.val32.i.i.i.i.i.i.i.i.i.i.i34.i.i, 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i35.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 16
  %.val31.i.i.i.i.i.i.i.i.i.i.i36.i.i = load i32, ptr %i.fq, align 8, !tbaa !190, !noalias !324
  %.not.i33.i.i.i.i.i.i.i.i.i.i.i37.i.i = icmp eq i32 %.val31.i.i.i.i.i.i.i.i.i.i.i36.i.i, 8
  br i1 %.not.i33.i.i.i.i.i.i.i.i.i.i.i37.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit590, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 32
  %.val30.i.i.i.i.i.i.i.i.i.i.i38.i.i = load i32, ptr %i.fr, align 8, !tbaa !190, !noalias !324
  %.not.i34.i.i.i.i.i.i.i.i.i.i.i39.i.i = icmp eq i32 %.val30.i.i.i.i.i.i.i.i.i.i.i38.i.i, 8
  br i1 %.not.i34.i.i.i.i.i.i.i.i.i.i.i39.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit588, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i40.i.i = load i32, ptr %i.fs, align 8, !tbaa !190, !noalias !324
  %.not.i35.i.i.i.i.i.i.i.i.i.i.i41.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i.i40.i.i, 8
  br i1 %.not.i35.i.i.i.i.i.i.i.i.i.i.i41.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 64
  %i.fu = add nsw i64 %.050.i.i.i.i.i.i.i.i.i.i.i32.i.i, -1
  %i.fv = icmp sgt i64 %.050.i.i.i.i.i.i.i.i.i.i.i32.i.i, 1
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i42.i.i, !llvm.loop !268

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i42.i.i: ; preds = %bb.at
  %i.fw = and i32 %.val5.i.i.i.i.i26.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i:          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i42.i.i, %bb.ap
  %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i44.i.i = phi i32 [ %i.fw, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i42.i.i ], [ %.val5.i.i.i.i.i26.i.i, %bb.ap ]
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i30.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i42.i.i ], [ %.val4.i.i.i.i.i25.i.i, %bb.ap ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i44.i.i, label %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i [
    i32 3, label %bb.au
    i32 2, label %bb.aw
    i32 1, label %bb.ay
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i.i57.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i, align 8, !tbaa !190, !noalias !324
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i58.i.i = icmp eq i32 %.029.val.i.i.i.i.i.i.i.i.i.i.i57.i.i, 8
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i58.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i54.i.i = phi ptr [ %i.fx, %bb.av ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i.i55.i.i = load i32, ptr %.1.i.i.i.i.i.i.i.i.i.i.i54.i.i, align 8, !tbaa !190, !noalias !324
  %.not.i37.i.i.i.i.i.i.i.i.i.i.i56.i.i = icmp eq i32 %.1.val.i.i.i.i.i.i.i.i.i.i.i55.i.i, 8
  br i1 %.not.i37.i.i.i.i.i.i.i.i.i.i.i56.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i54.i.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i46.i.i = phi ptr [ %i.fy, %bb.ax ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i47.i.i = load i32, ptr %.2.i.i.i.i.i.i.i.i.i.i.i46.i.i, align 8, !tbaa !190, !noalias !324
  %.not.i38.i.i.i.i.i.i.i.i.i.i.i48.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i.i.i.i.i.i47.i.i, 8
  br i1 %.not.i38.i.i.i.i.i.i.i.i.i.i.i48.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, label %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit: ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 48
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit588: ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 32
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit590: ; preds = %bb.aq
  %i.gb = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, i64 16
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit588, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit590, %bb.ay, %bb.aw, %bb.au
  %.028.i.i.i.i.i.i.i.i.i.i.i51.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i54.i.i, %bb.aw ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i45.i.i, %bb.au ], [ %.2.i.i.i.i.i.i.i.i.i.i.i46.i.i, %bb.ay ], [ %i.gb, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit590 ], [ %i.ga, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit588 ], [ %i.fz, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i.loopexit.split.loop.exit ], [ %.02949.i.i.i.i.i.i.i.i.i.i.i33.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i31.i.i ]
  %i.gc = icmp eq ptr %i.fn, %.028.i.i.i.i.i.i.i.i.i.i.i51.i.i
  br i1 %i.gc, label %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i: ; preds = %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, %.lr.ph.i.i.i.i21.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i53.i.i = icmp eq ptr %i.gd, %i.dy
  br i1 %.not.i.i.i.i53.i.i, label %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i, label %.lr.ph.i.i.i.i21.i.i, !llvm.loop !269

_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i: ; preds = %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i, %bb.ay, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i
  %.sroa.04.1.i.i.i = phi ptr [ %i.fg, %_ZN12_GLOBAL__N_15StateC2ERKS0_.exit.i.i ], [ %i.gd, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i52.i.i ], [ %.sroa.04.0.i.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i50.i.i ], [ %.sroa.04.0.i.i.i, %bb.ay ], [ %.sroa.04.0.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i43.i.i ] ; 2 uses
  %.not97123.i.i = icmp eq ptr %.sroa.04.1.i.i.i, %i.dy
  br i1 %.not97123.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i, %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ge, align 8, !noalias !322
  %i.gf = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr               ; 3 uses
  %.not.i.i.i27 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i27, label %_ZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockE.exit.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.gh = load i16, ptr %i.gg, align 8            ; 4 uses
  %i.gi = and i16 %i.gh, 511                      ; 2 uses
  %i.gj = icmp eq i16 %i.gi, 250
  br i1 %i.gj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gl = lshr i16 %i.gh, 14
  %.lobit.i.i.i.i.i = and i16 %i.gl, 1
  %i.gm = lshr i16 %i.gh, 13
  %.lobit1.i.i.i.i.i = and i16 %i.gm, 1
  %narrow.i.i.i.i.i = add nuw nsw i16 %.lobit.i.i.i.i.i, %.lobit1.i.i.i.i.i
  %i.gn = zext nneg i16 %narrow.i.i.i.i.i to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gn
  br label %_ZN12_GLOBAL__N_112getConditionEPKN5clang4StmtE.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gp = and i16 %i.gh, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i16 %i.gp, 132
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %bb.bc, label %_ZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockE.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.gq = icmp eq i16 %i.gi, 132
  %.1.in.v.i.i.i.i = select i1 %i.gq, i64 24, i64 32
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.1.in.v.i.i.i.i
  br label %_ZN12_GLOBAL__N_112getConditionEPKN5clang4StmtE.exit.i.i

_ZN12_GLOBAL__N_112getConditionEPKN5clang4StmtE.exit.i.i: ; preds = %bb.bc, %bb.ba
  %.2.i.in.i.i = phi ptr [ %.1.in.i.i.i.i, %bb.bc ], [ %i.go, %bb.ba ]
  %.2.i.i.i = load ptr, ptr %.2.i.in.i.i, align 8, !tbaa !193 ; 3 uses
  %.not.i.i34 = icmp eq ptr %.2.i.i.i, null
  br i1 %.not.i.i34, label %_ZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockE.exit.i, label %bb.bo

.lr.ph.i.i:                                       ; preds = %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i, %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i
  %.sroa.084.0124.i.i = phi ptr [ %.sroa.084.2.i.i, %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i ], [ %.sroa.04.1.i.i.i, %_ZN4llvm10drop_beginIRNS_14iterator_rangeINS_20filter_iterator_implIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS4_EUlSB_E_St26bidirectional_iterator_tagEEEEEEDaOT_m.exit.i.i ] ; 2 uses
  %i.gr = load ptr, ptr %.sroa.084.0124.i.i, align 8, !tbaa !179
  %.val.i.i = load ptr, ptr %i.br, align 8, !tbaa !41, !noalias !322
  %i.gs = getelementptr i8, ptr %i.gr, i64 48
  %.val10.i.i = load i32, ptr %i.gs, align 8, !tbaa !188
  %i.gt = zext i32 %.val10.i.i to i64
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i, i64 %i.gt ; 2 uses
  %.val.val.i.i.i = load ptr, ptr %i.gu, align 8, !tbaa !41 ; 2 uses
  %.val4.val.i.i.i = load ptr, ptr %7, align 8, !tbaa !41, !alias.scope !322 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.val5.val7.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !43 ; 2 uses
  %.val6.val8.i.i.i = load i32, ptr %i.cq, align 8, !tbaa !43, !alias.scope !322 ; 2 uses
  %i.gw = zext i32 %.val6.val8.i.i.i to i64
  %.idx.i.i.i26 = shl nuw nsw i64 %i.gw, 4
  %i.gx = getelementptr inbounds nuw i8, ptr %.val4.val.i.i.i, i64 %.idx.i.i.i26
  %i.gy = zext i32 %.val5.val7.i.i.i to i64
  %.idx26.i.i.i = shl nuw nsw i64 %i.gy, 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 %.idx26.i.i.i
  %i.ha = icmp ne i32 %.val6.val8.i.i.i, 0
  %i.hb = icmp ne i32 %.val5.val7.i.i.i, 0
  %spec.select.i.i.not.i23.i.i.i = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %spec.select.i.i.not.i23.i.i.i, label %.lr.ph.i.i.i, label %_ZN12_GLOBAL__N_15State4joinERKS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i
  %.sroa.021.025.i.i.i = phi ptr [ %i.hi, %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i ], [ %.val.val.i.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.7.024.i.i.i = phi ptr [ %i.hh, %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i ], [ %.val4.val.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.val17.i.i.i = load i32, ptr %.sroa.021.025.i.i.i, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.7.024.i.i.i, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !194
  %.not.i.i.i.i37 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i37, label %bb.bd, label %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.he = getelementptr i8, ptr %.sroa.021.025.i.i.i, i64 8
  %.val18.i.i.i = load ptr, ptr %i.he, align 8
  store ptr %.val18.i.i.i, ptr %i.hc, align 8, !tbaa !194
  br label %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i

_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i: ; preds = %bb.bd, %.lr.ph.i.i.i
  %i.hf = load i32, ptr %.sroa.7.024.i.i.i, align 8, !tbaa !164
  %i.hg = or i32 %i.hf, %.val17.i.i.i
  store i32 %i.hg, ptr %.sroa.7.024.i.i.i, align 8, !tbaa !164
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.7.024.i.i.i, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i.i.i, i64 16 ; 2 uses
  %i.hj = icmp ne ptr %i.hh, %i.gx
  %i.hk = icmp ne ptr %i.hi, %i.gz
  %spec.select.i.i.not.i.i.i.i = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i, label %.lr.ph.i.i.i, label %_ZN12_GLOBAL__N_15State4joinERKS0_.exit.i.i

_ZN12_GLOBAL__N_15State4joinERKS0_.exit.i.i:      ; preds = %_ZN12_GLOBAL__N_115ParameterStatus4joinERKS0_.exit.i.i.i, %.lr.ph.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.084.0124.i.i, i64 16 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.hl, %i.dy
  br i1 %.not11.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_15State4joinERKS0_.exit.i.i, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i
  %.sroa.084.1.i.i = phi ptr [ %i.ii, %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i ], [ %i.hl, %_ZN12_GLOBAL__N_15State4joinERKS0_.exit.i.i ] ; 5 uses
  %i.hm = load ptr, ptr %.sroa.084.1.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i60.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i60.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.thread.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i61.i.i = load ptr, ptr %i.br, align 8, !tbaa !41, !noalias !322
  %i.hn = getelementptr i8, ptr %i.hm, i64 48
  %.val3.i.i.i.i.i = load i32, ptr %i.hn, align 8, !tbaa !188
  %i.ho = zext i32 %.val3.i.i.i.i.i to i64
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i61.i.i, i64 %i.ho ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !41 ; 4 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  %.val5.i.i.i.i.i = load i32, ptr %i.hq, align 8, !tbaa !43 ; 3 uses
  %i.hr = zext i32 %.val5.i.i.i.i.i to i64        ; 2 uses
  %.idx1.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hr, 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 %.idx1.i.i.i.i.i.i.i
  %i.ht = lshr i64 %i.hr, 2                       ; 2 uses
  %.not.i.i.i.i.i62.i.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i.i.i62.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.be
  %i.hu = and i64 %.idx1.i.i.i.i.i.i.i, 68719476672
  %scevgep.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val4.i.i.i.i.i, i64 %i.hu
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.050.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hz, %bb.bi ], [ %i.ht, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hy, %bb.bi ], [ %.val4.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.029.val32.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val31.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hv, align 8, !tbaa !190
  %.not.i33.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val31.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i33.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.loopexit.split.loop.exit598, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.val30.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hw, align 8, !tbaa !190
  %.not.i34.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val30.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i34.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.loopexit.split.loop.exit596, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.hx, align 8, !tbaa !190
  %.not.i35.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i35.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.loopexit.split.loop.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hy = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.hz = add nsw i64 %.050.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ia = icmp sgt i64 %.050.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !268

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bi
  %i.ib = and i32 %.val5.i.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.be
  %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ib, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.val5.i.i.i.i.i, %bb.be ]
  %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.val4.i.i.i.i.i, %bb.be ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i [
    i32 3, label %bb.bj
    i32 2, label %bb.bl
    i32 1, label %bb.bn
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !190
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.029.val.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ic = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ic, %bb.bk ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !190
  %.not.i37.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.1.val.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i37.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.id = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.id, %bb.bm ], [ %.029.lcssa.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !190
  %.not.i38.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %.not.i38.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i, label %_ZN4llvm20filter_iterator_baseIPKN5clang8CFGBlock13AdjacentBlockEZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKS2_EUlS9_E_St26bidirectional_iterator_tagEppEv.exit.i.i

_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.bh
  %i.ie = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i.i.i.i, i64 48
  br label %_ZZNK12_GLOBAL__N_117CalledOnceChecker14joinSuccessorsEPKN5clang8CFGBlockEENKUlS4_E_clES4_.exit.i.i.i.i

end_hunk_0
